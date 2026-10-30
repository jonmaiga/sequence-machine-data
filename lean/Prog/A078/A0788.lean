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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A078800: Sum of end-to-end Manhattan distances over all self-avoiding walks on square lattice trapped after n steps.

The programs for A078800, there is no canonical definition to state claims against.
-/

/-! ## A078800.P2230311804530058172

`record[A326818(n+1)]`
-/

namespace A078800.P2230311804530058172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078800.P2230311804530058172

/-!
# A078802: Triangular array T given by T(n,k) = number of 01-words of length n containing k 1's, no three of which are consecutive.

The programs for A078802, the canonical program `A078802.P387368710752696104` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078802 has offset 0).

The definition of A078802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078802.P387368710752696104

`T(n-1,k)+T(n-2,k-1)+T(row(n)-3, col(n)-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078802

/-- `T(n-1,k)+T(n-2,k-1)+T(row(n)-3, col(n)-2)` -/
def P387368710752696104.Spec : Prop :=
  ∀ n, (P387368710752696104.a n : ℤ) = A078802 n

theorem P387368710752696104.correct : P387368710752696104.Spec := by
  intro n
  simp only [A078802]

end A078802

/-! ## A078802.P2470219875446047846

`T(row(n)-3, col(n)-2)+T(n-2,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A078802.P2470219875446047846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 3) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n

end

end A078802.P2470219875446047846

namespace A078802

/-- `T(row(n)-3, col(n)-2)+T(n-2,k-1)+T(n-1,k)` -/
def P2470219875446047846.Spec : Prop :=
  ∀ n, (P2470219875446047846.a n : ℤ) = A078802 n

end A078802

/-! ## A078802.P12418266253848929030

`A078803(A038722(n+1))`
-/

namespace A078802.P12418266253848929030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078803 (A038722 (n + 1)).toNat

end

end A078802.P12418266253848929030

namespace A078802

/-- `A078803(A038722(n+1))` -/
def P12418266253848929030.Spec : Prop :=
  ∀ n, P12418266253848929030.a n = A078802 n

end A078802

/-! ## A078802.P3959037657301719220

`A078803(A061579(n)+1)`
-/

namespace A078802.P3959037657301719220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078803 (A061579 n + 1).toNat

end

end A078802.P3959037657301719220

namespace A078802

/-- `A078803(A061579(n)+1)` -/
def P3959037657301719220.Spec : Prop :=
  ∀ n, P3959037657301719220.a n = A078802 n

end A078802

/-! ## A078802.P2783547438062698295

`A078803(A114327(n)+1+n)`
-/

namespace A078802.P2783547438062698295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078803 (A114327 n + 1 + (n : ℤ)).toNat

end

end A078802.P2783547438062698295

namespace A078802

/-- `A078803(A114327(n)+1+n)` -/
def P2783547438062698295.Spec : Prop :=
  ∀ n, P2783547438062698295.a n = A078802 n

end A078802

/-! ## A078802.P17759369530209272327

`A078803(A093995(n+1)-n)`
-/

namespace A078802.P17759369530209272327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078803 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A078802.P17759369530209272327

namespace A078802

/-- `A078803(A093995(n+1)-n)` -/
def P17759369530209272327.Spec : Prop :=
  ∀ n, P17759369530209272327.a n = A078802 n

end A078802

/-! ## A078802.P1457851676793587025

`A082601(∑[char[∑[n]]]+n)`
-/

namespace A078802.P1457851676793587025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A078802.P1457851676793587025

namespace A078802

/-- `A082601(∑[char[∑[n]]]+n)` -/
def P1457851676793587025.Spec : Prop :=
  ∀ n, P1457851676793587025.a n = A078802 n

end A078802

/-! ## A078802.P16867608193874090508

`A071675(A099375(n)+1+n)`
-/

namespace A078802.P16867608193874090508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A099375 n + 1 + (n : ℤ)).toNat

end

end A078802.P16867608193874090508

namespace A078802

/-- `A071675(A099375(n)+1+n)` -/
def P16867608193874090508.Spec : Prop :=
  ∀ n, P16867608193874090508.a n = A078802 n

end A078802

/-! ## A078802.P12630256989289895228

`A071675(2*A004736(n+1)+n)`
-/

namespace A078802.P12630256989289895228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A078802.P12630256989289895228

namespace A078802

/-- `A071675(2*A004736(n+1)+n)` -/
def P12630256989289895228.Spec : Prop :=
  ∀ n, P12630256989289895228.a n = A078802 n

end A078802

/-! ## A078802.P2539673023141882989

`A071675(2*A127739(n+1)-n)`
-/

namespace A078802.P2539673023141882989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A078802.P2539673023141882989

namespace A078802

/-- `A071675(2*A127739(n+1)-n)` -/
def P2539673023141882989.Spec : Prop :=
  ∀ n, P2539673023141882989.a n = A078802 n

end A078802

/-! ## A078802.P8600715012653364086

`A071675(A127739(n+1)+A004736(n+1))`
-/

namespace A078802.P8600715012653364086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A127739 (n + 1) + A004736 (n + 1)).toNat

end

end A078802.P8600715012653364086

namespace A078802

/-- `A071675(A127739(n+1)+A004736(n+1))` -/
def P8600715012653364086.Spec : Prop :=
  ∀ n, P8600715012653364086.a n = A078802 n

end A078802

/-! ## A078802.P444429201097787402

`A071675(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A078802.P444429201097787402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A078802.P444429201097787402

namespace A078802

/-- `A071675(A004736(n+1)+A004736(n+1)+n)` -/
def P444429201097787402.Spec : Prop :=
  ∀ n, P444429201097787402.a n = A078802 n

end A078802

/-! ## A078802.P7835876771731513013

`A071675(A127739(n+1)+A127739(n+1)-n)`
-/

namespace A078802.P7835876771731513013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A127739 (n + 1) + (A127739 (n + 1) - (n : ℤ))).toNat

end

end A078802.P7835876771731513013

namespace A078802

/-- `A071675(A127739(n+1)+A127739(n+1)-n)` -/
def P7835876771731513013.Spec : Prop :=
  ∀ n, P7835876771731513013.a n = A078802 n

end A078802

/-!
# A078803: Triangular array T given by T(n,k) = number of compositions of n into k parts, each in the set {1,2,3}.

The programs for A078803, the canonical program `A078803.P3872786207443296847` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078803 has offset 1).

The definition of A078803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078803.P3872786207443296847

`T(row(n)-3, col(n)-1)+T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078803

/-- `T(row(n)-3, col(n)-1)+T(n-2,k-1)+T(n-1,k-1)` -/
def P3872786207443296847.Spec : Prop :=
  ∀ n, (P3872786207443296847.a n : ℤ) = A078803 (n + 1)

theorem P3872786207443296847.correct : P3872786207443296847.Spec := by
  intro n
  simp only [A078803, Nat.add_sub_cancel]

end A078803

/-! ## A078803.P15112486860710587480

`A078802(A061579(n))`
-/

namespace A078803.P15112486860710587480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A061579 n).toNat

end

end A078803.P15112486860710587480

namespace A078803

/-- `A078802(A061579(n))` -/
def P15112486860710587480.Spec : Prop :=
  ∀ n, P15112486860710587480.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P1153524951058997622

`A078802(A038722(n+1)-1)`
-/

namespace A078803.P1153524951058997622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A038722 (n + 1) - 1).toNat

end

end A078803.P1153524951058997622

namespace A078803

/-- `A078802(A038722(n+1)-1)` -/
def P1153524951058997622.Spec : Prop :=
  ∀ n, P1153524951058997622.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P18441199018402563240

`A078802(A038722(n+2))`
-/

namespace A078803.P18441199018402563240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078802 (A038722 (n + 2)).toNat

end

end A078803.P18441199018402563240

namespace A078803

/-- `A078802(A038722(n+2))` -/
def P18441199018402563240.Spec : Prop :=
  ∀ n, P18441199018402563240.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P6904628891717321209

`A071675(comp[∑[n]])`
-/

namespace A078803.P6904628891717321209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A078803.P6904628891717321209

namespace A078803

/-- `A071675(comp[∑[n]])` -/
def P6904628891717321209.Spec : Prop :=
  ∀ n, P6904628891717321209.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P5553797978291782192

`gcd(A000038(n), A071675(A014132(n+1)))`
-/

namespace A078803.P5553797978291782192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A071675 (A014132 (n + 1)).toNat)

end

end A078803.P5553797978291782192

namespace A078803

/-- `gcd(A000038(n), A071675(A014132(n+1)))` -/
def P5553797978291782192.Spec : Prop :=
  ∀ n, (P5553797978291782192.a n : ℤ) = A078803 (n + 1)

end A078803

/-! ## A078803.P15429934495121515041

`A082601(A099375(n)+n)`
-/

namespace A078803.P15429934495121515041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A099375 n + (n : ℤ)).toNat

end

end A078803.P15429934495121515041

namespace A078803

/-- `A082601(A099375(n)+n)` -/
def P15429934495121515041.Spec : Prop :=
  ∀ n, P15429934495121515041.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P2163829369598772018

`A082601(A038722(n+1)+A003056(n))`
-/

namespace A078803.P2163829369598772018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A038722 (n + 1) + A003056 n).toNat

end

end A078803.P2163829369598772018

namespace A078803

/-- `A082601(A038722(n+1)+A003056(n))` -/
def P2163829369598772018.Spec : Prop :=
  ∀ n, P2163829369598772018.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P18337032445442905822

`A082601(A061579(n)+A002024(n+1))`
-/

namespace A078803.P18337032445442905822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A061579 n + A002024 (n + 1)).toNat

end

end A078803.P18337032445442905822

namespace A078803

/-- `A082601(A061579(n)+A002024(n+1))` -/
def P18337032445442905822.Spec : Prop :=
  ∀ n, P18337032445442905822.a n = A078803 (n + 1)

end A078803

/-! ## A078803.P9522606196835024751

`A071675(A014132(n+1))+A000038(A014132(n+1)²)`
-/

namespace A078803.P9522606196835024751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071675 (A014132 (n + 1)).toNat + A000038 (A014132 (n + 1) ^ 2).toNat

end

end A078803.P9522606196835024751

namespace A078803

/-- `A071675(A014132(n+1))+A000038(A014132(n+1)²)` -/
def P9522606196835024751.Spec : Prop :=
  ∀ n, P9522606196835024751.a n = A078803 (n + 1)

end A078803

/-!
# A078804: Triangular array T given by T(n,k)= number of 01-words of length n having exactly k 1's and every runlength of 1's odd.

The programs for A078804, there is no canonical definition to state claims against.
-/

/-! ## A078804.P11456192334236657269

`A078805(comp[∑[n]]+1)`
-/

namespace A078804.P11456192334236657269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A078804.P11456192334236657269

/-! ## A078804.P14682693738983476255

`and(-1, A078805(A080036(n+1)))`
-/

namespace A078804.P14682693738983476255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A078805 (A080036 (n + 1)).toNat)

end

end A078804.P14682693738983476255

/-! ## A078804.P3955169149180011610

`gcd(A000038(n), A078805(A080036(n+1)))`
-/

namespace A078804.P3955169149180011610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A078805 (A080036 (n + 1)).toNat)

end

end A078804.P3955169149180011610

/-! ## A078804.P4580789941112221984

`A078805(A080036(n+1))+A000007(n+1)`
-/

namespace A078804.P4580789941112221984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A080036 (n + 1)).toNat + A000007 (n + 1)

end

end A078804.P4580789941112221984

/-! ## A078804.P4207197607720273320

`A078805(A080036(n+1))+A000038(n+1)`
-/

namespace A078804.P4207197607720273320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A080036 (n + 1)).toNat + A000038 (n + 1)

end

end A078804.P4207197607720273320

/-! ## A078804.P14221804797873060275

`A078805(A080036(n+1))+C(A000010(n+1), n+2)`
-/

namespace A078804.P14221804797873060275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A080036 (n + 1)).toNat + (Nat.choose (A000010 (n + 1)).toNat (n + 2) : ℤ)

end

end A078804.P14221804797873060275

/-! ## A078804.P12966130729797561961

`A078805(A080036(n+1))+A000035(2*n)`
-/

namespace A078804.P12966130729797561961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078805 (A080036 (n + 1)).toNat + A000035 (2 * n)

end

end A078804.P12966130729797561961

/-!
# A078805: Triangular array T given by T(n,k) = number of 01-words of length n having exactly k 1's, every runlength of 1's odd and initial letter 0.

The programs for A078805, there is no canonical definition to state claims against.
-/

/-! ## A078805.P1386773794755584470

`A286180(comp[∑[n-1]]%A170808(n+1))`
-/

namespace A078805.P1386773794755584470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A170808 (n + 1))).toNat

end

end A078805.P1386773794755584470

/-! ## A078805.P11898322024000704453

`A286180(comp[∑[n-1]])%A269303(2*(n+2))`
-/

namespace A078805.P11898322024000704453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286180 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A269303 (2 * (n + 2)))

end

end A078805.P11898322024000704453

/-! ## A078805.P6891273513945682362

`A073266(A038722(n+1))%A180581(n)`
-/

namespace A078805.P6891273513945682362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073266 (A038722 (n + 1)).toNat) (A180581 n)

end

end A078805.P6891273513945682362

/-! ## A078805.P5482171075600947909

`A073266(A038722(n+1))+A000038(A000032(n))`
-/

namespace A078805.P5482171075600947909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A038722 (n + 1)).toNat + A000038 (A000032 n).toNat

end

end A078805.P5482171075600947909

/-! ## A078805.P13968640280135327462

`A073266(A038722(n+1)%A170808(n+2))`
-/

namespace A078805.P13968640280135327462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (Int.tmod (A038722 (n + 1)) (A170808 (n + 2))).toNat

end

end A078805.P13968640280135327462

/-!
# A078806: Triangular array T given by T(n,k)= number of 01-words of length n having exactly k 1's, every runlength of 1's odd and initial letter 1.

The programs for A078806, there is no canonical definition to state claims against.
-/

/-! ## A078806.P12756953910844481562

`∑{d}[A305466(n), A001221(A305477(#))]`
-/

namespace A078806.P12756953910844481562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A305477 d).toNat

end

end A078806.P12756953910844481562

/-! ## A078806.P2176228632302767102

`A193592(n)-A098158(A249027(n+1))`
-/

namespace A078806.P2176228632302767102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A098158 (A249027 (n + 1)).toNat

end

end A078806.P2176228632302767102

/-! ## A078806.P4830237838765098250

`A001222(A087956(A217874(n)))`
-/

namespace A078806.P4830237838765098250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087956 (A217874 n).toNat).toNat

end

end A078806.P4830237838765098250

/-! ## A078806.P15468091905923234186

`A000035(A355881(n))*A047040(n)`
-/

namespace A078806.P15468091905923234186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A355881 n).toNat * A047040 n

end

end A078806.P15468091905923234186

/-! ## A078806.P12835451264405374859

`C(A292622(n), A124010(A359879(n+2)))`
-/

namespace A078806.P12835451264405374859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A292622 n).toNat (A124010 (A359879 (n + 2)).toNat).toNat

end

end A078806.P12835451264405374859

/-!
# A078807: Triangular array T given by T(n,k) = number of 01-words of length n having exactly k 1's, all runlengths odd and first letter 0.

The programs for A078807, there is no canonical definition to state claims against.
-/

/-! ## A078807.P9622470559393503486

`A078808(A099375(n)+1+n)`
-/

namespace A078807.P9622470559393503486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A099375 n + 1 + (n : ℤ)).toNat

end

end A078807.P9622470559393503486

/-! ## A078807.P18097645061197618731

`A078808(A212012(n+1)+n)`
-/

namespace A078807.P18097645061197618731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A212012 (n + 1) + (n : ℤ)).toNat

end

end A078807.P18097645061197618731

/-! ## A078807.P11697954648553262233

`A078808(A038722(comp[∑[n]]+1))`
-/

namespace A078807.P11697954648553262233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A078807.P11697954648553262233

/-! ## A078807.P4134939698801307346

`A078808(A061579(comp[∑[n]])+1)`
-/

namespace A078807.P4134939698801307346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A078807.P4134939698801307346

/-! ## A078807.P16846780265888083705

`A078808(A038722(comp[∑[n]])-1)`
-/

namespace A078807.P16846780265888083705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1).toNat

end

end A078807.P16846780265888083705

/-! ## A078807.P13851651664460822603

`A078808(A061579(comp[∑[n-1]]))`
-/

namespace A078807.P13851651664460822603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A078807.P13851651664460822603

/-! ## A078807.P7887167218589519316

`A078808(A114327(n)+comp[∑[n]])`
-/

namespace A078807.P7887167218589519316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A114327 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A078807.P7887167218589519316

/-! ## A078807.P221799433184380827

`A078808(A003056(n)+2+A114327(n)+n)`
-/

namespace A078807.P221799433184380827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A003056 n + 2 + (A114327 n + (n : ℤ))).toNat

end

end A078807.P221799433184380827

/-!
# A078808: Triangular array T given by T(n,k) = number of 01-words of length n having exactly k 1's, all runlengths odd and first letter 1.

The programs for A078808, there is no canonical definition to state claims against.
-/

/-! ## A078808.P124772392069585933

`A343348(A200038(n+1)/2+1)`
-/

namespace A078808.P124772392069585933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343348 (SequenceMachineLib.roundAway ((A200038 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A078808.P124772392069585933

/-! ## A078808.P3894055118754106988

`A343348(A028242(A200038(n+1)))`
-/

namespace A078808.P3894055118754106988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343348 (A028242 (A200038 (n + 1)).toNat).toNat

end

end A078808.P3894055118754106988

/-! ## A078808.P14848230474178647329

`and(A028242(A103065(n+1)), A316101(n))`
-/

namespace A078808.P14848230474178647329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028242 (A103065 (n + 1)).toNat) (A316101 n)

end

end A078808.P14848230474178647329

/-! ## A078808.P4615348094195951806

`A359573(A136218(2*n+3))%A374439(n)`
-/

namespace A078808.P4615348094195951806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359573 (A136218 (2 * n + 3)).toNat) (A374439 n)

end

end A078808.P4615348094195951806

/-! ## A078808.P17819370522010108195

`A003382(n+5)%A001221(A003394(n+1))`
-/

namespace A078808.P17819370522010108195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003382 (n + 5)) (A001221 (A003394 (n + 1)).toNat)

end

end A078808.P17819370522010108195

/-!
# A078809: Number of divisors of the average of consecutive odd primes.

The programs for A078809, the canonical program `A078809.P1773859647289216222` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078809 has offset 1).

The definition of A078809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078809.P1773859647289216222

`∏{e}[A024675(n+1), #+1]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078809

/-- `∏{e}[A024675(n+1), #+1]` -/
def P1773859647289216222.Spec : Prop :=
  ∀ n, (P1773859647289216222.a n : ℤ) = A078809 (n + 1)

theorem P1773859647289216222.correct : P1773859647289216222.Spec := by
  intro n
  simp only [A078809, Nat.add_sub_cancel]

end A078809

/-! ## A078809.P13787252131684194557

`A000005(A024675(n+1))`
-/

namespace A078809.P13787252131684194557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A024675 (n + 1)).toNat

end

end A078809.P13787252131684194557

namespace A078809

/-- `A000005(A024675(n+1))` -/
def P13787252131684194557.Spec : Prop :=
  ∀ n, P13787252131684194557.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P7977689774069891914

`A000005(A162735(n+2))`
-/

namespace A078809.P7977689774069891914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162735 (n + 2)).toNat

end

end A078809.P7977689774069891914

namespace A078809

/-- `A000005(A162735(n+2))` -/
def P7977689774069891914.Spec : Prop :=
  ∀ n, P7977689774069891914.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P5938437627457660432

`A000005(A162800(n+2))`
-/

namespace A078809.P5938437627457660432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A162800 (n + 2)).toNat

end

end A078809.P5938437627457660432

namespace A078809

/-- `A000005(A162800(n+2))` -/
def P5938437627457660432.Spec : Prop :=
  ∀ n, P5938437627457660432.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P15815411985488904800

`A000005(A078444(n+2)+1)`
-/

namespace A078809.P15815411985488904800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A078444 (n + 2) + 1).toNat

end

end A078809.P15815411985488904800

namespace A078809

/-- `A000005(A078444(n+2)+1)` -/
def P15815411985488904800.Spec : Prop :=
  ∀ n, P15815411985488904800.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P5656882675792474793

`A000005(A001043(n+2)/2)`
-/

namespace A078809.P5656882675792474793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A078809.P5656882675792474793

namespace A078809

/-- `A000005(A001043(n+2)/2)` -/
def P5656882675792474793.Spec : Prop :=
  ∀ n, P5656882675792474793.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P8360060842714805378

`A000005(floor(sqrt(A075892(n+2))))`
-/

namespace A078809.P8360060842714805378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.sqrt (A075892 (n + 2))).toNat

end

end A078809.P8360060842714805378

namespace A078809

/-- `A000005(floor(sqrt(A075892(n+2))))` -/
def P8360060842714805378.Spec : Prop :=
  ∀ n, P8360060842714805378.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P11471840218886941822

`A000005(ceil(sqrt(A006094(n+2))))`
-/

namespace A078809.P11471840218886941822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉.toNat

end

end A078809.P11471840218886941822

namespace A078809

/-- `A000005(ceil(sqrt(A006094(n+2))))` -/
def P11471840218886941822.Spec : Prop :=
  ∀ n, P11471840218886941822.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P7832228460149573855

`A000005(round(sqrt(A006094(n+2))))`
-/

namespace A078809.P7832228460149573855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A006094 (n + 2) : ℝ))).toNat

end

end A078809.P7832228460149573855

namespace A078809

/-- `A000005(round(sqrt(A006094(n+2))))` -/
def P7832228460149573855.Spec : Prop :=
  ∀ n, P7832228460149573855.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P179014050504163319

`A000005(Δ[A061802(n+1)/2])`
-/

namespace A078809.P179014050504163319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A078809.P179014050504163319

namespace A078809

/-- `A000005(Δ[A061802(n+1)/2])` -/
def P179014050504163319.Spec : Prop :=
  ∀ n, P179014050504163319.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P7998233957761704401

`A000005(A024678(n+1)+2+n)`
-/

namespace A078809.P7998233957761704401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A024678 (n + 1) + 2 + (n : ℤ)).toNat

end

end A078809.P7998233957761704401

namespace A078809

/-- `A000005(A024678(n+1)+2+n)` -/
def P7998233957761704401.Spec : Prop :=
  ∀ n, P7998233957761704401.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P7294927959203944254

`A000005(floor(sqrt(A006094(n+2)))+1)`
-/

namespace A078809.P7294927959203944254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.sqrt (A006094 (n + 2)) + 1).toNat

end

end A078809.P7294927959203944254

namespace A078809

/-- `A000005(floor(sqrt(A006094(n+2)))+1)` -/
def P7294927959203944254.Spec : Prop :=
  ∀ n, P7294927959203944254.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P12140258536505446394

`A000005((A000040(n+2)+A000040(n+3))/2)`
-/

namespace A078809.P12140258536505446394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000040 (n + 2) + A000040 (n + 3) : ℚ) / 2)).toNat

end

end A078809.P12140258536505446394

namespace A078809

/-- `A000005((A000040(n+2)+A000040(n+3))/2)` -/
def P12140258536505446394.Spec : Prop :=
  ∀ n, P12140258536505446394.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P15125126549423975634

`A035004(A024678(n+1))`
-/

namespace A078809.P15125126549423975634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (A024678 (n + 1)).toNat

end

end A078809.P15125126549423975634

namespace A078809

/-- `A035004(A024678(n+1))` -/
def P15125126549423975634.Spec : Prop :=
  ∀ n, P15125126549423975634.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P1086839940554677321

`A320111(A076273(n+3)+1)`
-/

namespace A078809.P1086839940554677321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A076273 (n + 3) + 1).toNat

end

end A078809.P1086839940554677321

namespace A078809

/-- `A320111(A076273(n+3)+1)` -/
def P1086839940554677321.Spec : Prop :=
  ∀ n, P1086839940554677321.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P13850447673811226979

`A000005(A063932(A008864(n+2)))`
-/

namespace A078809.P13850447673811226979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063932 (A008864 (n + 2)).toNat).toNat

end

end A078809.P13850447673811226979

namespace A078809

/-- `A000005(A063932(A008864(n+2)))` -/
def P13850447673811226979.Spec : Prop :=
  ∀ n, P13850447673811226979.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P103690822947134714

`A000005(A063932(A055670(n+2)))`
-/

namespace A078809.P103690822947134714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063932 (A055670 (n + 2)).toNat).toNat

end

end A078809.P103690822947134714

namespace A078809

/-- `A000005(A063932(A055670(n+2)))` -/
def P103690822947134714.Spec : Prop :=
  ∀ n, P103690822947134714.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P13515372480857382692

`A000005(A063932(A076083(n+2)))`
-/

namespace A078809.P13515372480857382692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063932 (A076083 (n + 2)).toNat).toNat

end

end A078809.P13515372480857382692

namespace A078809

/-- `A000005(A063932(A076083(n+2)))` -/
def P13515372480857382692.Spec : Prop :=
  ∀ n, P13515372480857382692.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P4712091832180615044

`A000005(A061767(A078444(n+2)))`
-/

namespace A078809.P4712091832180615044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061767 (A078444 (n + 2)).toNat).toNat

end

end A078809.P4712091832180615044

namespace A078809

/-- `A000005(A061767(A078444(n+2)))` -/
def P4712091832180615044.Spec : Prop :=
  ∀ n, P4712091832180615044.a n = A078809 (n + 1)

end A078809

/-! ## A078809.P12764585418181360154

`A000005(A013634(A000040(n+2))/2)`
-/

namespace A078809.P12764585418181360154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A013634 (A000040 (n + 2)).toNat : ℚ) / 2)).toNat

end

end A078809.P12764585418181360154

namespace A078809

/-- `A000005(A013634(A000040(n+2))/2)` -/
def P12764585418181360154.Spec : Prop :=
  ∀ n, P12764585418181360154.a n = A078809 (n + 1)

end A078809

/-!
# A078810: a(n) = A078218(n)/n.

The programs for A078810, there is no canonical definition to state claims against.
-/

/-! ## A078810.P8112248063421454338

`A078218(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078810.P8112248063421454338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078218 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078810.P8112248063421454338

/-! ## A078810.P9743459540587467275

`round(A078218(A077168(n))/A077168(n))`
-/

namespace A078810.P9743459540587467275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078218 (A077168 n).toNat : ℚ) / (A077168 n : ℚ))

end

end A078810.P9743459540587467275

/-! ## A078810.P11626630109860435329

`A071203(A078218(n+1))`
-/

namespace A078810.P11626630109860435329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071203 (A078218 (n + 1)).toNat

end

end A078810.P11626630109860435329

/-! ## A078810.P591143608566917559

`A132378(A037278(n+1))/(n+1)`
-/

namespace A078810.P591143608566917559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132378 (A037278 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A078810.P591143608566917559

/-!
# A078811: a(n) = A078217(n)/n.

The programs for A078811, there is no canonical definition to state claims against.
-/

/-! ## A078811.P8800929256650502322

`A078217(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078811.P8800929256650502322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078217 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A078811.P8800929256650502322

/-!
# A078812: Triangle read by rows: T(n, k) = binomial(n+k-1, 2*k-1).

The programs for A078812, the canonical program `A078812.P9928716860580034230` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078812 has offset 0).

The definition of A078812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n)+1+col(n)+1-1, 2*(col(n)+1)-1)` (program `A078812.P9928716860580034230`, by `A078812.P9928716860580034230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078812.P2544114364386905441

`T(n-1,k-1)+2*T(n-1,k)-T(n-2,k)` with `a(0)=1`
-/

namespace A078812.P2544114364386905441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n

end

end A078812.P2544114364386905441

namespace A078812

/-- `T(n-1,k-1)+2*T(n-1,k)-T(n-2,k)` -/
def P2544114364386905441.Spec : Prop :=
  ∀ n, P2544114364386905441.a n = A078812 n

end A078812

/-! ## A078812.P9928716860580034230

`C(row(n)+1+col(n)+1-1, 2*(col(n)+1)-1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078812

/-- `C(row(n)+1+col(n)+1-1, 2*(col(n)+1)-1)` -/
def P9928716860580034230.Spec : Prop :=
  ∀ n, (P9928716860580034230.a n : ℤ) = A078812 n

theorem P9928716860580034230.correct : P9928716860580034230.Spec := by
  intro n
  simp only [A078812]

end A078812

/-! ## A078812.P15281488374187318868

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1`
-/

namespace A078812.P15281488374187318868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A078812.P15281488374187318868

namespace A078812

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` -/
def P15281488374187318868.Spec : Prop :=
  ∀ n, P15281488374187318868.a n = A078812 n

end A078812

/-! ## A078812.P11842194881476790974

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)-T(n-2,k)` with `a(0)=1`
-/

namespace A078812.P11842194881476790974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n)

end

end A078812.P11842194881476790974

namespace A078812

/-- `T(n-1,k)+T(n-1,k-1)+T(n-1,k)-T(n-2,k)` -/
def P11842194881476790974.Spec : Prop :=
  ∀ n, P11842194881476790974.a n = A078812 n

end A078812

/-! ## A078812.P17122352360446468149

`C(row(n)+col(n)+1, row(n)-col(n))`
-/

namespace A078812.P17122352360446468149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + (SequenceMachineLib.triCol n + 1)) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A078812.P17122352360446468149

namespace A078812

/-- `C(row(n)+col(n)+1, row(n)-col(n))` -/
def P17122352360446468149.Spec : Prop :=
  ∀ n, (P17122352360446468149.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P14744723683812601710

`C(col(n)+1+row(n), 1+2*col(n))`
-/

namespace A078812.P14744723683812601710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1 + SequenceMachineLib.triRow n) (1 + 2 * SequenceMachineLib.triCol n)

end

end A078812.P14744723683812601710

namespace A078812

/-- `C(col(n)+1+row(n), 1+2*col(n))` -/
def P14744723683812601710.Spec : Prop :=
  ∀ n, (P14744723683812601710.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P6836202523385092888

`T(n-1,k-1)+2*T(n-1,k)-T(row(n)-2, col(n))` with `a(0)=1`
-/

namespace A078812.P6836202523385092888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) (SequenceMachineLib.triCol n : ℤ)

end

end A078812.P6836202523385092888

namespace A078812

/-- `T(n-1,k-1)+2*T(n-1,k)-T(row(n)-2, col(n))` -/
def P6836202523385092888.Spec : Prop :=
  ∀ n, P6836202523385092888.a n = A078812 n

end A078812

/-! ## A078812.P5522162937891544852

`abs(A053122(n))`
-/

namespace A078812.P5522162937891544852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053122 n|

end

end A078812.P5522162937891544852

namespace A078812

/-- `abs(A053122(n))` -/
def P5522162937891544852.Spec : Prop :=
  ∀ n, P5522162937891544852.a n = A078812 n

end A078812

/-! ## A078812.P3710408288845090678

`A053122(n)*A097807(n)`
-/

namespace A078812.P3710408288845090678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 n * A097807 n

end

end A078812.P3710408288845090678

namespace A078812

/-- `A053122(n)*A097807(n)` -/
def P3710408288845090678.Spec : Prop :=
  ∀ n, P3710408288845090678.a n = A078812 n

end A078812

/-! ## A078812.P7606349249568744685

`gcd(A000038(n), A053122(n))`
-/

namespace A078812.P7606349249568744685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053122 n)

end

end A078812.P7606349249568744685

namespace A078812

/-- `gcd(A000038(n), A053122(n))` -/
def P7606349249568744685.Spec : Prop :=
  ∀ n, (P7606349249568744685.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P2310815922334472873

`lcm(A020985(n), A053122(n))`
-/

namespace A078812.P2310815922334472873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A053122 n)

end

end A078812.P2310815922334472873

namespace A078812

/-- `lcm(A020985(n), A053122(n))` -/
def P2310815922334472873.Spec : Prop :=
  ∀ n, (P2310815922334472873.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P12590531096769251877

`(A111125(n)+A085478(n))/2`
-/

namespace A078812.P12590531096769251877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111125 n + A085478 n : ℚ) / 2

end

end A078812.P12590531096769251877

namespace A078812

/-- `(A111125(n)+A085478(n))/2` -/
def P12590531096769251877.Spec : Prop :=
  ∀ n, P12590531096769251877.a n = (A078812 n : ℚ)

end A078812

/-! ## A078812.P8860937503474670981

`C(A051162(n)+1, A025581(n))`
-/

namespace A078812.P8860937503474670981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 n + 1).toNat (A025581 n).toNat

end

end A078812.P8860937503474670981

namespace A078812

/-- `C(A051162(n)+1, A025581(n))` -/
def P8860937503474670981.Spec : Prop :=
  ∀ n, (P8860937503474670981.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P17748884088891700062

`C(A094727(n+1), A025581(n))`
-/

namespace A078812.P17748884088891700062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A025581 n).toNat

end

end A078812.P17748884088891700062

namespace A078812

/-- `C(A094727(n+1), A025581(n))` -/
def P17748884088891700062.Spec : Prop :=
  ∀ n, (P17748884088891700062.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P1714971226945607204

`C(A134478(n)+1, A025581(n))`
-/

namespace A078812.P1714971226945607204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 n + 1).toNat (A025581 n).toNat

end

end A078812.P1714971226945607204

namespace A078812

/-- `C(A134478(n)+1, A025581(n))` -/
def P1714971226945607204.Spec : Prop :=
  ∀ n, (P1714971226945607204.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P15524300645100324133

`C(A094727(n+1), A004736(n+1)-1)`
-/

namespace A078812.P15524300645100324133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A094727 (n + 1)).toNat (A004736 (n + 1) - 1).toNat

end

end A078812.P15524300645100324133

namespace A078812

/-- `C(A094727(n+1), A004736(n+1)-1)` -/
def P15524300645100324133.Spec : Prop :=
  ∀ n, (P15524300645100324133.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P17526982976401617035

`A053122(n)/A125662(n)*A207815(n)`
-/

namespace A078812.P17526982976401617035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A125662 n : ℚ) * (A207815 n : ℚ)

end

end A078812.P17526982976401617035

namespace A078812

/-- `A053122(n)/A125662(n)*A207815(n)` -/
def P17526982976401617035.Spec : Prop :=
  ∀ n, P17526982976401617035.a n = (A078812 n : ℚ)

end A078812

/-! ## A078812.P13533898728895237954

`A053122(n)/A159764(n)*A207823(n)`
-/

namespace A078812.P13533898728895237954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A159764 n : ℚ) * (A207823 n : ℚ)

end

end A078812.P13533898728895237954

namespace A078812

/-- `A053122(n)/A159764(n)*A207823(n)` -/
def P13533898728895237954.Spec : Prop :=
  ∀ n, P13533898728895237954.a n = (A078812 n : ℚ)

end A078812

/-! ## A078812.P11618170657683623905

`C(A003056(n)+A002260(n+1), A025581(n))`
-/

namespace A078812.P11618170657683623905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n + A002260 (n + 1)).toNat (A025581 n).toNat

end

end A078812.P11618170657683623905

namespace A078812

/-- `C(A003056(n)+A002260(n+1), A025581(n))` -/
def P11618170657683623905.Spec : Prop :=
  ∀ n, (P11618170657683623905.a n : ℤ) = A078812 n

end A078812

/-! ## A078812.P9768850707267135695

`C(A158405(n+1)+A025581(n), A025581(n))`
-/

namespace A078812.P9768850707267135695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (n + 1) + A025581 n).toNat (A025581 n).toNat

end

end A078812.P9768850707267135695

namespace A078812

/-- `C(A158405(n+1)+A025581(n), A025581(n))` -/
def P9768850707267135695.Spec : Prop :=
  ∀ n, (P9768850707267135695.a n : ℤ) = A078812 n

end A078812

/-!
# A078815: a(n) = A078215(n+1)/A078215(n).

The programs for A078815, there is no canonical definition to state claims against.
-/

/-! ## A078815.P6660003832564566355

`(A078216(n+1)/A078216(A028310(n)))²`
-/

namespace A078815.P6660003832564566355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A078216 (n + 1) : ℚ) / (A078216 (A028310 n).toNat : ℚ)) ^ 2

end

end A078815.P6660003832564566355

/-! ## A078815.P14521080808052996454

`ratio[A078215(A028310(n))]`
-/

namespace A078815.P14521080808052996454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078215 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078815.P14521080808052996454

/-! ## A078815.P15450404788627927917

`ratio[A078215(A289207(n+1)+1)]`
-/

namespace A078815.P15450404788627927917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078215 (A289207 (n + 1) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078815.P15450404788627927917

/-! ## A078815.P599166589770771646

`A078215(n+1)/A078215(round(sqrt(n²+1)))`
-/

namespace A078815.P599166589770771646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078215 (n + 1) : ℚ) / (A078215 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A078815.P599166589770771646

/-!
# A078817: Table by antidiagonals giving variants on Catalan sequence: T(n,k)=C(2n,n)*C(2k,k)*(2k+1)/(n+k+1).

The programs for A078817, the canonical program `A078817.P13022866292399364478` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078817 has offset 0).

The definition of A078817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078817.P15281291023198794188

`A033820(A061579(n))`
-/

namespace A078817.P15281291023198794188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (A061579 n).toNat

end

end A078817.P15281291023198794188

namespace A078817

/-- `A033820(A061579(n))` -/
def P15281291023198794188.Spec : Prop :=
  ∀ n, P15281291023198794188.a n = A078817 n

end A078817

/-! ## A078817.P13022866292399364478

`A068555(A007401(n+1))/2*A007318(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078817

/-- `A068555(A007401(n+1))/2*A007318(n)` -/
def P13022866292399364478.Spec : Prop :=
  ∀ n, P13022866292399364478.a n = (A078817 n : ℚ)

end A078817

/-! ## A078817.P15938272472231575599

`A007318(n)*A135573(n)`
-/

namespace A078817.P15938272472231575599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135573 n

end

end A078817.P15938272472231575599

namespace A078817

/-- `A007318(n)*A135573(n)` -/
def P15938272472231575599.Spec : Prop :=
  ∀ n, P15938272472231575599.a n = A078817 n

end A078817

/-! ## A078817.P2380520834413353600

`abs(A117440(n)*A135573(n))`
-/

namespace A078817.P2380520834413353600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A135573 n|

end

end A078817.P2380520834413353600

namespace A078817

/-- `abs(A117440(n)*A135573(n))` -/
def P2380520834413353600.Spec : Prop :=
  ∀ n, P2380520834413353600.a n = A078817 n

end A078817

/-! ## A078817.P16184870178156279473

`abs(A130595(n)*A135573(n))`
-/

namespace A078817.P16184870178156279473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A135573 n|

end

end A078817.P16184870178156279473

namespace A078817

/-- `abs(A130595(n)*A135573(n))` -/
def P16184870178156279473.Spec : Prop :=
  ∀ n, P16184870178156279473.a n = A078817 n

end A078817

/-! ## A078817.P15866480089148043286

`sqrt(A008459(n))*A135573(n)`
-/

namespace A078817.P15866480089148043286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A135573 n : ℝ)

end

end A078817.P15866480089148043286

namespace A078817

/-- `sqrt(A008459(n))*A135573(n)` -/
def P15866480089148043286.Spec : Prop :=
  ∀ n, P15866480089148043286.a n = (A078817 n : ℝ)

end A078817

/-! ## A078817.P13026881129110067041

`Δ[A102363(n)]*A135573(n)`
-/

namespace A078817.P13026881129110067041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135573 n

end

end A078817.P13026881129110067041

namespace A078817

/-- `Δ[A102363(n)]*A135573(n)` -/
def P13026881129110067041.Spec : Prop :=
  ∀ n, P13026881129110067041.a n = A078817 n

end A078817

/-! ## A078817.P5138744901772604398

`A028326(n)/2*A135573(n)`
-/

namespace A078817.P5138744901772604398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A135573 n : ℚ)

end

end A078817.P5138744901772604398

namespace A078817

/-- `A028326(n)/2*A135573(n)` -/
def P5138744901772604398.Spec : Prop :=
  ∀ n, P5138744901772604398.a n = (A078817 n : ℚ)

end A078817

/-! ## A078817.P2811957685902556266

`A135573(n)*A246425(A109128(n))`
-/

namespace A078817.P2811957685902556266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135573 n * A246425 (A109128 n).toNat

end

end A078817.P2811957685902556266

namespace A078817

/-- `A135573(n)*A246425(A109128(n))` -/
def P2811957685902556266.Spec : Prop :=
  ∀ n, P2811957685902556266.a n = A078817 n

end A078817

/-! ## A078817.P7314552773020393644

`A004525(A028326(n))*A135573(n)`
-/

namespace A078817.P7314552773020393644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A135573 n

end

end A078817.P7314552773020393644

namespace A078817

/-- `A004525(A028326(n))*A135573(n)` -/
def P7314552773020393644.Spec : Prop :=
  ∀ n, P7314552773020393644.a n = A078817 n

end A078817

/-!
# A078818: a(n) = 30*binomial(2n,n)/(n+3).

The programs for A078818, the canonical program `A078818.P8047679729662426791` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078818 has offset 0).

The definition of A078818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078818.P8047679729662426791

`30*A000984(n)/(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078818

/-- `30*A000984(n)/(n+3)` -/
def P8047679729662426791.Spec : Prop :=
  ∀ n, P8047679729662426791.a n = (A078818 n : ℚ)

end A078818

/-! ## A078818.P8675527709382975956

`5*A007946(n)/(2*n+1)`
-/

namespace A078818.P8675527709382975956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A007946 n : ℚ) / (2 * n + 1 : ℚ)

end

end A078818.P8675527709382975956

namespace A078818

/-- `5*A007946(n)/(2*n+1)` -/
def P8675527709382975956.Spec : Prop :=
  ∀ n, P8675527709382975956.a n = (A078818 n : ℚ)

end A078818

/-! ## A078818.P11881042533649772593

`a(n-1)*(4*n²+6*n-4)/(n²+3*n)` with `a(0)=10`
-/

namespace A078818.P11881042533649772593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) * ((4 * n ^ 2 + 6 * n : ℤ) - 4 : ℚ) / (n ^ 2 + 3 * n : ℚ)

end

end A078818.P11881042533649772593

namespace A078818

/-- `a(n-1)*(4*n²+6*n-4)/(n²+3*n)` -/
def P11881042533649772593.Spec : Prop :=
  ∀ n, P11881042533649772593.a n = (A078818 n : ℚ)

end A078818

/-! ## A078818.P16044084815957432956

`30*C(2*n, n)/(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078818.P16044084815957432956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 * Nat.choose (2 * n) n : ℚ) / (n + 3 : ℚ)

end

end A078818.P16044084815957432956

namespace A078818

/-- `30*C(2*n, n)/(n+3)` -/
def P16044084815957432956.Spec : Prop :=
  ∀ n, P16044084815957432956.a n = (A078818 n : ℚ)

end A078818

/-! ## A078818.P7442533048089350422

`∑[n+1]*A007272(n)`
-/

namespace A078818.P7442533048089350422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007272 n

end

end A078818.P7442533048089350422

namespace A078818

/-- `∑[n+1]*A007272(n)` -/
def P7442533048089350422.Spec : Prop :=
  ∀ n, P7442533048089350422.a n = A078818 n

end A078818

/-! ## A078818.P16010809484791475358

`A007272(n)*A038722(A000124(n))`
-/

namespace A078818.P16010809484791475358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007272 n * A038722 (A000124 n).toNat

end

end A078818.P16010809484791475358

namespace A078818

/-- `A007272(n)*A038722(A000124(n))` -/
def P16010809484791475358.Spec : Prop :=
  ∀ n, P16010809484791475358.a n = A078818 n

end A078818

/-! ## A078818.P17107876813295421471

`A078817(∑[n+3])`
-/

namespace A078818.P17107876813295421471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078818.P17107876813295421471

namespace A078818

/-- `A078817(∑[n+3])` -/
def P17107876813295421471.Spec : Prop :=
  ∀ n, P17107876813295421471.a n = A078818 n

end A078818

/-! ## A078818.P4962463489943269438

`A033820(∑[n+2]+3)`
-/

namespace A078818.P4962463489943269438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078818.P4962463489943269438

namespace A078818

/-- `A033820(∑[n+2]+3)` -/
def P4962463489943269438.Spec : Prop :=
  ∀ n, P4962463489943269438.a n = A078818 n

end A078818

/-!
# A078819: a(n) = 140*C(2n,n)/(n+4).

The programs for A078819, the canonical program `A078819.P15327375035959524109` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078819 has offset 0).

The definition of A078819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078819.P15327375035959524109

`140*A000984(n)/(n+4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078819

/-- `140*A000984(n)/(n+4)` -/
def P15327375035959524109.Spec : Prop :=
  ∀ n, P15327375035959524109.a n = (A078819 n : ℚ)

end A078819

/-! ## A078819.P4388380864622772608

`7*A078820(n)/(2*n+1)`
-/

namespace A078819.P4388380864622772608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A078820 n : ℚ) / (2 * n + 1 : ℚ)

end

end A078819.P4388380864622772608

namespace A078819

/-- `7*A078820(n)/(2*n+1)` -/
def P4388380864622772608.Spec : Prop :=
  ∀ n, P4388380864622772608.a n = (A078819 n : ℚ)

end A078819

/-! ## A078819.P13084770094887983205

`a(n-1)*(4*n²+10*n-6)/(n²+4*n)` with `a(0)=35`
-/

namespace A078819.P13084770094887983205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [35] fun n a =>
  a (n - 1) * ((4 * n ^ 2 + 10 * n : ℤ) - 6 : ℚ) / (n ^ 2 + 4 * n : ℚ)

end

end A078819.P13084770094887983205

namespace A078819

/-- `a(n-1)*(4*n²+10*n-6)/(n²+4*n)` -/
def P13084770094887983205.Spec : Prop :=
  ∀ n, P13084770094887983205.a n = (A078819 n : ℚ)

end A078819

/-! ## A078819.P11026552184220504550

`140*C(2*n, n)/(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078819.P11026552184220504550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (140 * Nat.choose (2 * n) n : ℚ) / (n + 4 : ℚ)

end

end A078819.P11026552184220504550

namespace A078819

/-- `140*C(2*n, n)/(n+4)` -/
def P11026552184220504550.Spec : Prop :=
  ∀ n, P11026552184220504550.a n = (A078819 n : ℚ)

end A078819

/-! ## A078819.P13861089481343470156

`A078817(∑[n+3]+n+3)`
-/

namespace A078819.P13861089481343470156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A078819.P13861089481343470156

namespace A078819

/-- `A078817(∑[n+3]+n+3)` -/
def P13861089481343470156.Spec : Prop :=
  ∀ n, P13861089481343470156.a n = A078819 n

end A078819

/-! ## A078819.P11577750428926347646

`A033820(A167614(n+2))`
-/

namespace A078819.P11577750428926347646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (A167614 (n + 2)).toNat

end

end A078819.P11577750428926347646

namespace A078819

/-- `A033820(A167614(n+2))` -/
def P11577750428926347646.Spec : Prop :=
  ∀ n, P11577750428926347646.a n = A078819 n

end A078819

/-! ## A078819.P12373004151946118367

`A033820(A052905(n)+8)`
-/

namespace A078819.P12373004151946118367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (A052905 n + 8).toNat

end

end A078819.P12373004151946118367

namespace A078819

/-- `A033820(A052905(n)+8)` -/
def P12373004151946118367.Spec : Prop :=
  ∀ n, P12373004151946118367.a n = A078819 n

end A078819

/-! ## A078819.P932061876875018289

`A033820(A055999(n)+9)`
-/

namespace A078819.P932061876875018289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (A055999 n + 9).toNat

end

end A078819.P932061876875018289

namespace A078819

/-- `A033820(A055999(n)+9)` -/
def P932061876875018289.Spec : Prop :=
  ∀ n, P932061876875018289.a n = A078819 n

end A078819

/-! ## A078819.P14126569408021676630

`A033820(eq[8, A059268(n)])`
-/

namespace A078819.P14126569408021676630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078819.P14126569408021676630

namespace A078819

/-- `A033820(eq[8, A059268(n)])` -/
def P14126569408021676630.Spec : Prop :=
  ∀ n, P14126569408021676630.a n = A078819 n

end A078819

/-! ## A078819.P17777726254496760885

`A033820(eq[4, A002260(n+1)])`
-/

namespace A078819.P17777726254496760885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078819.P17777726254496760885

namespace A078819

/-- `A033820(eq[4, A002260(n+1)])` -/
def P17777726254496760885.Spec : Prop :=
  ∀ n, P17777726254496760885.a n = A078819 n

end A078819

/-!
# A078820: a(n) = 20*C(2n,n)*(2n+1)/(n+4).

The programs for A078820, the canonical program `A078820.P17796184437487941697` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078820 has offset 0).

The definition of A078820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078820.P17796184437487941697

`(2*n+1)*A078819(n)/7`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078820

/-- `(2*n+1)*A078819(n)/7` -/
def P17796184437487941697.Spec : Prop :=
  ∀ n, P17796184437487941697.a n = (A078820 n : ℚ)

end A078820

/-! ## A078820.P5843720044224821733

`20*A002457(n)/(n+4)`
-/

namespace A078820.P5843720044224821733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 * A002457 n : ℚ) / (n + 4 : ℚ)

end

end A078820.P5843720044224821733

namespace A078820

/-- `20*A002457(n)/(n+4)` -/
def P5843720044224821733.Spec : Prop :=
  ∀ n, P5843720044224821733.a n = (A078820 n : ℚ)

end A078820

/-! ## A078820.P8438035909839654203

`a(n-1)*(4*n²+14*n+6)/(n²+4*n)` with `a(0)=5`
-/

namespace A078820.P8438035909839654203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * (4 * n ^ 2 + 14 * n + 6 : ℚ) / (n ^ 2 + 4 * n : ℚ)

end

end A078820.P8438035909839654203

namespace A078820

/-- `a(n-1)*(4*n²+14*n+6)/(n²+4*n)` -/
def P8438035909839654203.Spec : Prop :=
  ∀ n, P8438035909839654203.a n = (A078820 n : ℚ)

end A078820

/-! ## A078820.P3819637755203899516

`20*C(2*n, n)*(2*n+1)/(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078820.P3819637755203899516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 * Nat.choose (2 * n) n * (2 * n + 1) : ℚ) / (n + 4 : ℚ)

end

end A078820.P3819637755203899516

namespace A078820

/-- `20*C(2*n, n)*(2*n+1)/(n+4)` -/
def P3819637755203899516.Spec : Prop :=
  ∀ n, P3819637755203899516.a n = (A078820 n : ℚ)

end A078820

/-! ## A078820.P12823506289536975080

`(n+1)/3*A078818(n+1)`
-/

namespace A078820.P12823506289536975080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A078818 (n + 1) : ℚ)

end

end A078820.P12823506289536975080

namespace A078820

/-- `(n+1)/3*A078818(n+1)` -/
def P12823506289536975080.Spec : Prop :=
  ∀ n, P12823506289536975080.a n = (A078820 n : ℚ)

end A078820

/-! ## A078820.P526519872506544516

`∑[∑[n+1]]*A007272(n+1)`
-/

namespace A078820.P526519872506544516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007272 (n + 1)

end

end A078820.P526519872506544516

namespace A078820

/-- `∑[∑[n+1]]*A007272(n+1)` -/
def P526519872506544516.Spec : Prop :=
  ∀ n, P526519872506544516.a n = A078820 n

end A078820

/-! ## A078820.P10429851839485540483

`∑[A002054(n+2)-A162551(n)]`
-/

namespace A078820.P10429851839485540483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 2) - A162551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078820.P10429851839485540483

namespace A078820

/-- `∑[A002054(n+2)-A162551(n)]` -/
def P10429851839485540483.Spec : Prop :=
  ∀ n, P10429851839485540483.a n = A078820 n

end A078820

/-! ## A078820.P15756490855075701609

`A007946(n+1)-A028329(n+1)`
-/

namespace A078820.P15756490855075701609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 (n + 1) - A028329 (n + 1)

end

end A078820.P15756490855075701609

namespace A078820

/-- `A007946(n+1)-A028329(n+1)` -/
def P15756490855075701609.Spec : Prop :=
  ∀ n, P15756490855075701609.a n = A078820 n

end A078820

/-! ## A078820.P4137684105395729851

`A262768(n+2)+A001791(n+1)`
-/

namespace A078820.P4137684105395729851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262768 (n + 2) + A001791 (n + 1)

end

end A078820.P4137684105395729851

namespace A078820

/-- `A262768(n+2)+A001791(n+1)` -/
def P4137684105395729851.Spec : Prop :=
  ∀ n, P4137684105395729851.a n = A078820 n

end A078820

/-! ## A078820.P5009194351378720674

`A002694(n+2)+2*A007946(n)`
-/

namespace A078820.P5009194351378720674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) + 2 * A007946 n

end

end A078820.P5009194351378720674

namespace A078820

/-- `A002694(n+2)+2*A007946(n)` -/
def P5009194351378720674.Spec : Prop :=
  ∀ n, P5009194351378720674.a n = A078820 n

end A078820

/-! ## A078820.P1267498265849925217

`A007946(n+1)-2*A000984(n+1)`
-/

namespace A078820.P1267498265849925217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 (n + 1) - 2 * A000984 (n + 1)

end

end A078820.P1267498265849925217

namespace A078820

/-- `A007946(n+1)-2*A000984(n+1)` -/
def P1267498265849925217.Spec : Prop :=
  ∀ n, P1267498265849925217.a n = A078820 n

end A078820

/-! ## A078820.P9520691132219476878

`A002054(n+1)+A002054(n+2)-A000108(n+1)`
-/

namespace A078820.P9520691132219476878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) + (A002054 (n + 2) - A000108 (n + 1))

end

end A078820.P9520691132219476878

namespace A078820

/-- `A002054(n+1)+A002054(n+2)-A000108(n+1)` -/
def P9520691132219476878.Spec : Prop :=
  ∀ n, P9520691132219476878.a n = A078820 n

end A078820

/-! ## A078820.P11092911612119493341

`A078817(A167614(n+2))`
-/

namespace A078820.P11092911612119493341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (A167614 (n + 2)).toNat

end

end A078820.P11092911612119493341

namespace A078820

/-- `A078817(A167614(n+2))` -/
def P11092911612119493341.Spec : Prop :=
  ∀ n, P11092911612119493341.a n = A078820 n

end A078820

/-! ## A078820.P6594957367071358038

`A078817(eq[3, A002262(n)])`
-/

namespace A078820.P6594957367071358038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078817 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078820.P6594957367071358038

namespace A078820

/-- `A078817(eq[3, A002262(n)])` -/
def P6594957367071358038.Spec : Prop :=
  ∀ n, P6594957367071358038.a n = A078820 n

end A078820

/-! ## A078820.P15266226362126464215

`A033820(∑[n+3]+n+3)`
-/

namespace A078820.P15266226362126464215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033820 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A078820.P15266226362126464215

namespace A078820

/-- `A033820(∑[n+3]+n+3)` -/
def P15266226362126464215.Spec : Prop :=
  ∀ n, P15266226362126464215.a n = A078820 n

end A078820

/-!
# A078821: Triangular array T given by T(n,k) = number of 01-words of length n having exactly k 1's and all runlengths odd.

The programs for A078821, there is no canonical definition to state claims against.
-/

/-! ## A078821.P4651241603872344501

`A078808(∑[2*n]%A080036(n))+A078808(n)`
-/

namespace A078821.P4651241603872344501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat + A078808 n

end

end A078821.P4651241603872344501

/-! ## A078821.P17523269813380977940

`A078808(A061579(n))+A078808(n)`
-/

namespace A078821.P17523269813380977940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A061579 n).toNat + A078808 n

end

end A078821.P17523269813380977940

/-! ## A078821.P1363177125876401083

`A078808(n)+A078808(A114327(n)+n)`
-/

namespace A078821.P1363177125876401083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 n + A078808 (A114327 n + (n : ℤ)).toNat

end

end A078821.P1363177125876401083

/-! ## A078821.P11028070807922941507

`A078808(A038722(n+1)-1)+A078808(n)`
-/

namespace A078821.P11028070807922941507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A038722 (n + 1) - 1).toNat + A078808 n

end

end A078821.P11028070807922941507

/-! ## A078821.P2518077813364718856

`A078808(A038722(n+2))+A078808(n)`
-/

namespace A078821.P2518077813364718856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078808 (A038722 (n + 2)).toNat + A078808 n

end

end A078821.P2518077813364718856

/-!
# A078822: Number of distinct binary numbers contained as substrings in the binary representation of n.

The programs for A078822, there is no canonical definition to state claims against.
-/

/-! ## A078822.P15520479944825784174

`A144623(n)+1`
-/

namespace A078822.P15520479944825784174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144623 n + 1

end

end A078822.P15520479944825784174

/-! ## A078822.P7181075689837720785

`A008619(2*A144623(n))`
-/

namespace A078822.P7181075689837720785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A144623 n).toNat

end

end A078822.P7181075689837720785

/-! ## A078822.P15411639669907012746

`A052938(2*A144623(n))`
-/

namespace A078822.P15411639669907012746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A144623 n).toNat

end

end A078822.P15411639669907012746

/-! ## A078822.P11873184692815072561

`A158416(2*A144623(n))`
-/

namespace A078822.P11873184692815072561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A144623 n).toNat

end

end A078822.P11873184692815072561

/-! ## A078822.P14185594458623407582

`A008620(3*A144623(n))`
-/

namespace A078822.P14185594458623407582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A144623 n).toNat

end

end A078822.P14185594458623407582

/-! ## A078822.P2305334738592185333

`A008621(4*A144623(n))`
-/

namespace A078822.P2305334738592185333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A144623 n).toNat

end

end A078822.P2305334738592185333

/-! ## A078822.P7036976859274570754

`A000005(2^A144623(n))`
-/

namespace A078822.P7036976859274570754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A144623 n : ℤ))).toNat

end

end A078822.P7036976859274570754

/-! ## A078822.P380070070639766918

`A070939(2^A144623(n))`
-/

namespace A078822.P380070070639766918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A144623 n : ℤ))).toNat

end

end A078822.P380070070639766918

/-! ## A078822.P655843784617777135

`A122953(2^A144623(n))`
-/

namespace A078822.P655843784617777135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122953 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A144623 n : ℤ))).toNat

end

end A078822.P655843784617777135

/-!
# A078823: Sum of distinct binary numbers contained as substrings in binary representation of n.

The programs for A078823, there is no canonical definition to state claims against.
-/

/-! ## A078823.P4210841849708114186

`A144624(n)+n`
-/

namespace A078823.P4210841849708114186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144624 n + (n : ℤ)

end

end A078823.P4210841849708114186

/-! ## A078823.P8712990419142148084

`A005843(n)-(n-A144624(n))`
-/

namespace A078823.P8712990419142148084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A144624 n)

end

end A078823.P8712990419142148084

/-! ## A078823.P12779166239408736996

`A052938(2*n)-(1-A144624(n))`
-/

namespace A078823.P12779166239408736996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - (1 - A144624 n)

end

end A078823.P12779166239408736996

/-! ## A078823.P810007613643808384

`A123108(2*n)-(A000007(n)-A144624(n))`
-/

namespace A078823.P810007613643808384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) - (A000007 n - A144624 n)

end

end A078823.P810007613643808384

/-! ## A078823.P6219016722624501773

`A004526(3*n)-(A004526(n)-A144624(n))`
-/

namespace A078823.P6219016722624501773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * n) - (A004526 n - A144624 n)

end

end A078823.P6219016722624501773

/-!
# A078826: Number of distinct primes contained as binary substrings in binary representation of n.

The programs for A078826, there is no canonical definition to state claims against.
-/

/-! ## A078826.P9672929276524139228

`∑{p}[A078828(n), A001221(#)]`
-/

namespace A078826.P9672929276524139228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A078826.P9672929276524139228

/-! ## A078826.P9039199609332116606

`∑{p}[A078828(n), A001222(#)]`
-/

namespace A078826.P9039199609332116606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A078826.P9039199609332116606

/-! ## A078826.P10343792084062837601

`∑{p}[A078828(n), A008480(#)]`
-/

namespace A078826.P10343792084062837601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008480 p

end

end A078826.P10343792084062837601

/-! ## A078826.P5237042537996309320

`∑{p}[A078828(n), A008481(#)]`
-/

namespace A078826.P5237042537996309320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008481 p

end

end A078826.P5237042537996309320

/-! ## A078826.P7923728476689787891

`∑{p}[A078828(n), A339353(#)]`
-/

namespace A078826.P7923728476689787891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A339353 p

end

end A078826.P7923728476689787891

/-!
# A078827: Number of primes contained as binary substrings in binary representation of n, counted with repetitions.

The programs for A078827, there is no canonical definition to state claims against.
-/

/-! ## A078827.P3650418477429495153

`∑{e}[A078828(n), #]`
-/

namespace A078827.P3650418477429495153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078827.P3650418477429495153

/-! ## A078827.P3993627257068398196

`A001222(A078828(n))`
-/

namespace A078827.P3993627257068398196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078828 n).toNat

end

end A078827.P3993627257068398196

/-! ## A078827.P12286104500097544214

`A252736(2*A078828(n))`
-/

namespace A078827.P12286104500097544214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A078828 n).toNat

end

end A078827.P12286104500097544214

/-! ## A078827.P10371140121224403934

`A008481(A078828(∏{p}[n, #]))`
-/

namespace A078827.P10371140121224403934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A078828 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A078827.P10371140121224403934

/-! ## A078827.P2179001983182810286

`∑{d}[A078828(n), A001221(A014963(#))]`
-/

namespace A078827.P2179001983182810286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A078827.P2179001983182810286

/-!
# A078829: Numbers having exactly one prime contained as binary substring in binary representation of n.

The programs for A078829, there is no canonical definition to state claims against.
-/

/-! ## A078829.P15378285633884425120

`eq[1, A078826(n)]`
-/

namespace A078829.P15378285633884425120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078829.P15378285633884425120

/-! ## A078829.P451498918296246468

`record[(n+2)/A078826(n+2)]`
-/

namespace A078829.P451498918296246468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A078826 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078829.P451498918296246468

/-! ## A078829.P3022004941330960468

`lt[A000032(A078826(n)), A078832(n+1)]`
-/

namespace A078829.P3022004941330960468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A078826 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078829.P3022004941330960468

/-! ## A078829.P5640295010306107736

`lt[A000007(n)+A000032(A078826(n)), 2]`
-/

namespace A078829.P5640295010306107736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A000032 (A078826 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078829.P5640295010306107736

/-! ## A078829.P7146483017122545711

`lt[A000032(A078826(n)²), 2]`
-/

namespace A078829.P7146483017122545711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A078826 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078829.P7146483017122545711

/-!
# A078830: Numbers having in binary representation exactly one binary substring representing a prime.

The programs for A078830, there is no canonical definition to state claims against.
-/

/-! ## A078830.P4563750227874213655

`record[and(1-a(n-2), A003401(n+1))]` with `a(0)=2, a(1)=2`
-/

namespace A078830.P4563750227874213655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  Int.land (1 - f1 (n - 2)) (A003401 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078830.P4563750227874213655

/-! ## A078830.P2270677726711645152

`∩[A078829(n+1), A099627(n)]`
-/

namespace A078830.P2270677726711645152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078830.P2270677726711645152

/-! ## A078830.P6993934564371813753

`∩[A078829(n+1), A107684(n)]`
-/

namespace A078830.P6993934564371813753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078830.P6993934564371813753

/-! ## A078830.P10503900222931671

`A097110(comp[A290235(n+2)])+1`
-/

namespace A078830.P10503900222931671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290235 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A078830.P10503900222931671

/-! ## A078830.P2338093117633304072

`∪[A000051(A138591(n+1)), A131577(n+2)]`
-/

namespace A078830.P2338093117633304072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A138591 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078830.P2338093117633304072

/-!
# A078831: Numbers n with unique occurrence of all binary substrings representing primes in binary representation of n.

The programs for A078831, there is no canonical definition to state claims against.
-/

/-! ## A078831.P8449666513782153937

`lt[A005940(A324345(n)), 8]`
-/

namespace A078831.P8449666513782153937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A324345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A078831.P8449666513782153937

/-! ## A078831.P14386912877645279833

`eq[A078826(n), A078827(n)]`
-/

namespace A078831.P14386912877645279833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078831.P14386912877645279833

/-! ## A078831.P10675775876952177923

`lt[A060632(n), A261461(n)+1]`
-/

namespace A078831.P10675775876952177923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P10675775876952177923

/-! ## A078831.P14737079980531839082

`lt[A060632(n), A105500(n)+2]`
-/

namespace A078831.P14737079980531839082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P14737079980531839082

/-! ## A078831.P1986765864708632652

`eq[A053644(A091460(n)), A060632(n)]`
-/

namespace A078831.P1986765864708632652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A091460 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078831.P1986765864708632652

/-! ## A078831.P6896604438515205478

`lt[A010848(A060632(n)), A105500(n)]`
-/

namespace A078831.P6896604438515205478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A060632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P6896604438515205478

/-! ## A078831.P4656257444863470364

`lt[A167167(A000120(n)), A105500(n)]`
-/

namespace A078831.P4656257444863470364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167167 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P4656257444863470364

/-! ## A078831.P6655595566789518838

`lt[A001065(A060632(n)), A261461(n)]`
-/

namespace A078831.P6655595566789518838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A060632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P6655595566789518838

/-! ## A078831.P7549817135523963706

`lt[A286622(n), A001316(A136004(n))]`
-/

namespace A078831.P7549817135523963706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P7549817135523963706

/-! ## A078831.P8684799382483351240

`lt[A001316(n), A324467(A136004(n))]`
-/

namespace A078831.P8684799382483351240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (A136004 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078831.P8684799382483351240

/-!
# A078832: Smallest prime contained as binary substring in binary representation of n>1, a(1)=1.

The programs for A078832, the canonical program `A078832.P3944865708959409883` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078832 has offset 1).

The definition of A078832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078832.P3944865708959409883

`a((n-2)/gcd(2, n))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078832

/-- `a((n-2)/gcd(2, n))` -/
def P3944865708959409883.Spec : Prop :=
  ∀ n, (P3944865708959409883.a n : ℤ) = A078832 (n + 1)

theorem P3944865708959409883.correct : P3944865708959409883.Spec := by
  intro n
  simp only [A078832, Nat.add_sub_cancel]

end A078832

/-! ## A078832.P1230837928687577135

`a(floor(n/a(n-1))-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A078832.P1230837928687577135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n a =>
  a (⌊(n : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat

end

end A078832.P1230837928687577135

namespace A078832

/-- `a(floor(n/a(n-1))-1)` -/
def P1230837928687577135.Spec : Prop :=
  ∀ n, (P1230837928687577135.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P16020055449898640932

`C(a(n-1), and(n+1, n+2))+2` with `a(0)=1`
-/

namespace A078832.P16020055449898640932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1)) (Nat.land (n + 1) (n + 2)) + 2

end

end A078832.P16020055449898640932

namespace A078832

/-- `C(a(n-1), and(n+1, n+2))+2` -/
def P16020055449898640932.Spec : Prop :=
  ∀ n, (P16020055449898640932.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P13525005702560314589

`a(C(and(n+2, 2*n), n+2))+1` with `a(0)=1`
-/

namespace A078832.P13525005702560314589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.choose (Nat.land (n + 2) (2 * n)) (n + 2)) + 1

end

end A078832.P13525005702560314589

namespace A078832

/-- `a(C(and(n+2, 2*n), n+2))+1` -/
def P13525005702560314589.Spec : Prop :=
  ∀ n, (P13525005702560314589.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P10042483616036216246

`3-ceil(and(n+2, n-2)/(2*n+1))`
-/

namespace A078832.P10042483616036216246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌈(Int.land (n + 2 : ℤ) ((n : ℤ) - 2) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A078832.P10042483616036216246

namespace A078832

/-- `3-ceil(and(n+2, n-2)/(2*n+1))` -/
def P10042483616036216246.Spec : Prop :=
  ∀ n, P10042483616036216246.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P1846918988326369038

`3-floor(or(n+2, 2*n)/(2*n+1))`
-/

namespace A078832.P1846918988326369038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊(Nat.lor (n + 2) (2 * n) : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A078832.P1846918988326369038

namespace A078832

/-- `3-floor(or(n+2, 2*n)/(2*n+1))` -/
def P1846918988326369038.Spec : Prop :=
  ∀ n, P1846918988326369038.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P899942262658447695

`ceil(2*(2*n+1)/or(n+2, 2*n))`
-/

namespace A078832.P899942262658447695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((2 * n + 1 : ℚ) / (Nat.lor (n + 2) (2 * n) : ℚ))⌉

end

end A078832.P899942262658447695

namespace A078832

/-- `ceil(2*(2*n+1)/or(n+2, 2*n))` -/
def P899942262658447695.Spec : Prop :=
  ∀ n, P899942262658447695.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P13085824118243225087

`a(A080677(n+1)-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A078832.P13085824118243225087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (A080677 (n + 1) - 2).toNat

end

end A078832.P13085824118243225087

namespace A078832

/-- `a(A080677(n+1)-2)` -/
def P13085824118243225087.Spec : Prop :=
  ∀ n, (P13085824118243225087.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P3722906711042442186

`a(n-A004001(n+1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A078832.P3722906711042442186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ((n : ℤ) - A004001 (n + 1)).toNat

end

end A078832.P3722906711042442186

namespace A078832

/-- `a(n-A004001(n+1))` -/
def P3722906711042442186.Spec : Prop :=
  ∀ n, (P3722906711042442186.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P17932261760939671307

`a(C(2, A006530(n+2)))+1` with `a(0)=1`
-/

namespace A078832.P17932261760939671307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.choose 2 (A006530 (n + 2)).toNat) + 1

end

end A078832.P17932261760939671307

namespace A078832

/-- `a(C(2, A006530(n+2)))+1` -/
def P17932261760939671307.Spec : Prop :=
  ∀ n, (P17932261760939671307.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P5491905298993689328

`a((n-2)/A020639(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A078832.P5491905298993689328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (A020639 (n - 2) : ℚ))).toNat

end

end A078832.P5491905298993689328

namespace A078832

/-- `a((n-2)/A020639(n-2))` -/
def P5491905298993689328.Spec : Prop :=
  ∀ n, (P5491905298993689328.a n : ℤ) = A078832 (n + 1)

end A078832

/-! ## A078832.P7343917468462494025

`A025422(A103697(n))`
-/

namespace A078832.P7343917468462494025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (A103697 n).toNat

end

end A078832.P7343917468462494025

namespace A078832

/-- `A025422(A103697(n))` -/
def P7343917468462494025.Spec : Prop :=
  ∀ n, P7343917468462494025.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P16821245797584831581

`A186181(A342126(n))`
-/

namespace A078832.P16821245797584831581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186181 (A342126 n).toNat

end

end A078832.P16821245797584831581

namespace A078832

/-- `A186181(A342126(n))` -/
def P16821245797584831581.Spec : Prop :=
  ∀ n, P16821245797584831581.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P14170646191702355220

`A104435(A091460(n+1))`
-/

namespace A078832.P14170646191702355220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (A091460 (n + 1)).toNat

end

end A078832.P14170646191702355220

namespace A078832

/-- `A104435(A091460(n+1))` -/
def P14170646191702355220.Spec : Prop :=
  ∀ n, P14170646191702355220.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P8953996157541102537

`A020639(A091732(n+2))`
-/

namespace A078832.P8953996157541102537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A091732 (n + 2)).toNat

end

end A078832.P8953996157541102537

namespace A078832

/-- `A020639(A091732(n+2))` -/
def P8953996157541102537.Spec : Prop :=
  ∀ n, P8953996157541102537.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P1806768504504018964

`A353497(A348929(n+2)+n)`
-/

namespace A078832.P1806768504504018964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353497 (A348929 (n + 2) + (n : ℤ)).toNat

end

end A078832.P1806768504504018964

namespace A078832

/-- `A353497(A348929(n+2)+n)` -/
def P1806768504504018964.Spec : Prop :=
  ∀ n, P1806768504504018964.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P4583289712293289426

`A043529(n)+Δ[A043529(n)]²`
-/

namespace A078832.P4583289712293289426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n + (f1 (n + 1) - f1 n) ^ 2

end

end A078832.P4583289712293289426

namespace A078832

/-- `A043529(n)+Δ[A043529(n)]²` -/
def P4583289712293289426.Spec : Prop :=
  ∀ n, P4583289712293289426.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P16228334284116227988

`2*A040000(n)-A043529(n+1)`
-/

namespace A078832.P16228334284116227988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040000 n - A043529 (n + 1)

end

end A078832.P16228334284116227988

namespace A078832

/-- `2*A040000(n)-A043529(n+1)` -/
def P16228334284116227988.Spec : Prop :=
  ∀ n, P16228334284116227988.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P6249294980624922639

`A036987(n+1)+2*A019433(2*n)`
-/

namespace A078832.P6249294980624922639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n + 1) + 2 * A019433 (2 * n)

end

end A078832.P6249294980624922639

namespace A078832

/-- `A036987(n+1)+2*A019433(2*n)` -/
def P6249294980624922639.Spec : Prop :=
  ∀ n, P6249294980624922639.a n = A078832 (n + 1)

end A078832

/-! ## A078832.P3699722398828002077

`A020639(A006530(n+2)%(n+1)+1)`
-/

namespace A078832.P3699722398828002077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A006530 (n + 2)) (n + 1 : ℤ) + 1).toNat

end

end A078832.P3699722398828002077

namespace A078832

/-- `A020639(A006530(n+2)%(n+1)+1)` -/
def P3699722398828002077.Spec : Prop :=
  ∀ n, P3699722398828002077.a n = A078832 (n + 1)

end A078832

/-!
# A078833: Greatest prime contained as binary substring in binary representation of n>1, a(1)=1.

The programs for A078833, there is no canonical definition to state claims against.
-/

/-! ## A078833.P7088810623759377016

`A225243(∑[A078826(n+1)]+1)`
-/

namespace A078833.P7088810623759377016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225243 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A078833.P7088810623759377016

/-! ## A078833.P1845263919404849325

`A006530(∏{p}[A078828(n+1), #])`
-/

namespace A078833.P1845263919404849325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A078833.P1845263919404849325

/-! ## A078833.P6304452877923842367

`A047814(A010894(n))+A039634(n+1)`
-/

namespace A078833.P6304452877923842367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A010894 (n + 21)).toNat + A039634 (n + 1)

end

end A078833.P6304452877923842367

/-! ## A078833.P8931135013666515415

`A039634(n+1)+A002324(A033014(n+1))`
-/

namespace A078833.P8931135013666515415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (n + 1) + A002324 (A033014 (n + 1)).toNat

end

end A078833.P8931135013666515415

/-! ## A078833.P5305628586090677957

`A039634(n+1)+and(A010894(n), A033437(n))`
-/

namespace A078833.P5305628586090677957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (n + 1) + Int.land (A010894 (n + 21)) (A033437 n)

end

end A078833.P5305628586090677957

/-!
# A078834: Greatest prime factor of n also contained as binary substring in binary representation of n; a(n)=1, if no such factor exists.

The programs for A078834, there is no canonical definition to state claims against.
-/

/-! ## A078834.P11070623966139245546

`A006530(gcd(n+1, A078828(n+1)))`
-/

namespace A078834.P11070623966139245546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (n + 1 : ℤ) (A078828 (n + 1)))

end

end A078834.P11070623966139245546

/-! ## A078834.P15906040841853117139

`A006530(gcd(A007955(n+1), A323913(n+1)))`
-/

namespace A078834.P15906040841853117139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A007955 (n + 1)) (A323913 (n + 1)))

end

end A078834.P15906040841853117139

/-! ## A078834.P15276225512676290437

`gcd(3*(n+1), A130233(A113175(n+1)))`
-/

namespace A078834.P15276225512676290437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * (n + 1) : ℤ) (A130233 (A113175 (n + 1)).toNat)

end

end A078834.P15276225512676290437

/-! ## A078834.P8459661860752800471

`gcd(A000027(n+1), A358137(A241916(n+1)))`
-/

namespace A078834.P8459661860752800471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A358137 (A241916 (n + 1)).toNat)

end

end A078834.P8459661860752800471

/-! ## A078834.P11557744631390449953

`A006530(n+1)-A000122(A305938(3*n))`
-/

namespace A078834.P11557744631390449953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - A000122 (A305938 (3 * n)).toNat

end

end A078834.P11557744631390449953

/-!
# A078835: Sum of the divisors of the average of consecutive odd primes.

The programs for A078835, the canonical program `A078835.P6736849639258305604` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078835 has offset 1).

The definition of A078835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078835.P6736849639258305604

`A000203(A024675(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078835

/-- `A000203(A024675(n+1))` -/
def P6736849639258305604.Spec : Prop :=
  ∀ n, P6736849639258305604.a n = A078835 (n + 1)

theorem P6736849639258305604.correct : P6736849639258305604.Spec := by
  intro n
  simp only [A078835, Nat.add_sub_cancel]

end A078835

/-! ## A078835.P6502726184382521084

`∑{d}[A024675(n+1), #]`
-/

namespace A078835.P6502726184382521084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078835.P6502726184382521084

namespace A078835

/-- `∑{d}[A024675(n+1), #]` -/
def P6502726184382521084.Spec : Prop :=
  ∀ n, (P6502726184382521084.a n : ℤ) = A078835 (n + 1)

end A078835

/-! ## A078835.P620785316822489338

`∑{d}[A162735(n+2), #]`
-/

namespace A078835.P620785316822489338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078835.P620785316822489338

namespace A078835

/-- `∑{d}[A162735(n+2), #]` -/
def P620785316822489338.Spec : Prop :=
  ∀ n, (P620785316822489338.a n : ℤ) = A078835 (n + 1)

end A078835

/-! ## A078835.P12322415240497849172

`∑{d}[A162800(n+2), #]`
-/

namespace A078835.P12322415240497849172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078835.P12322415240497849172

namespace A078835

/-- `∑{d}[A162800(n+2), #]` -/
def P12322415240497849172.Spec : Prop :=
  ∀ n, (P12322415240497849172.a n : ℤ) = A078835 (n + 1)

end A078835

/-! ## A078835.P8939872017730994703

`∑{d}[A111333(n+2)+A005097(n+2), #]`
-/

namespace A078835.P8939872017730994703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + A005097 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078835.P8939872017730994703

namespace A078835

/-- `∑{d}[A111333(n+2)+A005097(n+2), #]` -/
def P8939872017730994703.Spec : Prop :=
  ∀ n, (P8939872017730994703.a n : ℤ) = A078835 (n + 1)

end A078835

/-! ## A078835.P3264015955888551886

`A000203(A162735(n+2))`
-/

namespace A078835.P3264015955888551886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A162735 (n + 2)).toNat

end

end A078835.P3264015955888551886

namespace A078835

/-- `A000203(A162735(n+2))` -/
def P3264015955888551886.Spec : Prop :=
  ∀ n, P3264015955888551886.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P16081848145608514296

`A000203(A078444(n+2)+1)`
-/

namespace A078835.P16081848145608514296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A078444 (n + 2) + 1).toNat

end

end A078835.P16081848145608514296

namespace A078835

/-- `A000203(A078444(n+2)+1)` -/
def P16081848145608514296.Spec : Prop :=
  ∀ n, P16081848145608514296.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P9256900667769619462

`A000203(A001043(n+2)/2)`
-/

namespace A078835.P9256900667769619462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A001043 (n + 2) : ℚ) / 2)).toNat

end

end A078835.P9256900667769619462

namespace A078835

/-- `A000203(A001043(n+2)/2)` -/
def P9256900667769619462.Spec : Prop :=
  ∀ n, P9256900667769619462.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P8962622689247914479

`A000203(A011974(n+3)/2)`
-/

namespace A078835.P8962622689247914479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A011974 (n + 3) : ℚ) / 2)).toNat

end

end A078835.P8962622689247914479

namespace A078835

/-- `A000203(A011974(n+3)/2)` -/
def P8962622689247914479.Spec : Prop :=
  ∀ n, P8962622689247914479.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P3688976828557123825

`A000203(floor(sqrt(A075892(n+2))))`
-/

namespace A078835.P3688976828557123825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.sqrt (A075892 (n + 2))).toNat

end

end A078835.P3688976828557123825

namespace A078835

/-- `A000203(floor(sqrt(A075892(n+2))))` -/
def P3688976828557123825.Spec : Prop :=
  ∀ n, P3688976828557123825.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P13681344331337492127

`A000203(ceil(sqrt(A006094(n+2))))`
-/

namespace A078835.P13681344331337492127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈Real.sqrt (A006094 (n + 2) : ℝ)⌉.toNat

end

end A078835.P13681344331337492127

namespace A078835

/-- `A000203(ceil(sqrt(A006094(n+2))))` -/
def P13681344331337492127.Spec : Prop :=
  ∀ n, P13681344331337492127.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P8354732460652905599

`A000203(round(sqrt(A006094(n+2))))`
-/

namespace A078835.P8354732460652905599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A006094 (n + 2) : ℝ))).toNat

end

end A078835.P8354732460652905599

namespace A078835

/-- `A000203(round(sqrt(A006094(n+2))))` -/
def P8354732460652905599.Spec : Prop :=
  ∀ n, P8354732460652905599.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P10768235787906131214

`A000203(ceil(sqrt(A023515(n+3))))`
-/

namespace A078835.P10768235787906131214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈Real.sqrt (A023515 (n + 3) : ℝ)⌉.toNat

end

end A078835.P10768235787906131214

namespace A078835

/-- `A000203(ceil(sqrt(A023515(n+3))))` -/
def P10768235787906131214.Spec : Prop :=
  ∀ n, P10768235787906131214.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P2091041421787512336

`A000203(round(sqrt(A075892(n+2))))`
-/

namespace A078835.P2091041421787512336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A075892 (n + 2) : ℝ))).toNat

end

end A078835.P2091041421787512336

namespace A078835

/-- `A000203(round(sqrt(A075892(n+2))))` -/
def P2091041421787512336.Spec : Prop :=
  ∀ n, P2091041421787512336.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P13103157925279518072

`A000203(Δ[A061802(n+1)/2])`
-/

namespace A078835.P13103157925279518072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A078835.P13103157925279518072

namespace A078835

/-- `A000203(Δ[A061802(n+1)/2])` -/
def P13103157925279518072.Spec : Prop :=
  ∀ n, P13103157925279518072.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P14697166167655948132

`A000203(A024678(n+1)+2+n)`
-/

namespace A078835.P14697166167655948132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A024678 (n + 1) + 2 + (n : ℤ)).toNat

end

end A078835.P14697166167655948132

namespace A078835

/-- `A000203(A024678(n+1)+2+n)` -/
def P14697166167655948132.Spec : Prop :=
  ∀ n, P14697166167655948132.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P762094018731368704

`A000203((A000040(n+2)+A000040(n+3))/2)`
-/

namespace A078835.P762094018731368704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A000040 (n + 2) + A000040 (n + 3) : ℚ) / 2)).toNat

end

end A078835.P762094018731368704

namespace A078835

/-- `A000203((A000040(n+2)+A000040(n+3))/2)` -/
def P762094018731368704.Spec : Prop :=
  ∀ n, P762094018731368704.a n = A078835 (n + 1)

theorem P762094018731368704.correct : P762094018731368704.Spec := by
  intro n
  simp only [A078835, Nat.add_sub_cancel, A078835.P762094018731368704.a, A078835.P6736849639258305604.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A024675, A024675.P1773648843625354992.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078835

/-! ## A078835.P11238885304370493532

`A000203(A063934(2*n+3))`
-/

namespace A078835.P11238885304370493532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A063934 (2 * n + 3)).toNat

end

end A078835.P11238885304370493532

namespace A078835

/-- `A000203(A063934(2*n+3))` -/
def P11238885304370493532.Spec : Prop :=
  ∀ n, P11238885304370493532.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P4705509800487309658

`A000203(A018252(A024678(n+1)))`
-/

namespace A078835.P4705509800487309658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (A024678 (n + 1)).toNat).toNat

end

end A078835.P4705509800487309658

namespace A078835

/-- `A000203(A018252(A024678(n+1)))` -/
def P4705509800487309658.Spec : Prop :=
  ∀ n, P4705509800487309658.a n = A078835 (n + 1)

end A078835

/-! ## A078835.P16547279395826863669

`A162194(A024678(n+1))`
-/

namespace A078835.P16547279395826863669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162194 (A024678 (n + 1)).toNat

end

end A078835.P16547279395826863669

namespace A078835

/-- `A162194(A024678(n+1))` -/
def P16547279395826863669.Spec : Prop :=
  ∀ n, P16547279395826863669.a n = A078835 (n + 1)

end A078835

/-!
# A078836: a(n) = n*2^(n-6).

The programs for A078836, the canonical program `A078836.P11756148456415828429` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078836 has offset 6).

The definition of A078836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+6)*2^n` (program `A078836.P11756148456415828429`, by `A078836.P11756148456415828429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078836.P11756148456415828429

`(n+6)*2^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078836

/-- `(n+6)*2^n` -/
def P11756148456415828429.Spec : Prop :=
  ∀ n, (P11756148456415828429.a n : ℤ) = A078836 (n + 6)

theorem P11756148456415828429.correct : P11756148456415828429.Spec := by
  intro n
  simp only [A078836, Nat.add_sub_cancel]

end A078836

/-! ## A078836.P3599299090517717138

`ogf((6-10x)/(1-4x+4x^2))`
-/

namespace A078836.P3599299090517717138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10] [1, -4, 4] n

end

end A078836.P3599299090517717138

namespace A078836

/-- `ogf((6-10x)/(1-4x+4x^2))` -/
def P3599299090517717138.Spec : Prop :=
  ∀ n, P3599299090517717138.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P6628973265626592105

`4*a(n-1)-4*a(n-2)` with `a(0)=6, a(1)=14`
-/

namespace A078836.P6628973265626592105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 14] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A078836.P6628973265626592105

namespace A078836

/-- `4*a(n-1)-4*a(n-2)` -/
def P6628973265626592105.Spec : Prop :=
  ∀ n, P6628973265626592105.a n = A078836 (n + 6)

theorem P6628973265626592105.correct : P6628973265626592105.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078836, Nat.add_sub_cancel, A078836.P6628973265626592105.a, A078836.P11756148456415828429.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078836, Nat.add_sub_cancel, A078836.P6628973265626592105.a, A078836.P11756148456415828429.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A078836

/-! ## A078836.P11962628109106741716

`ceil(4*(a(n-1)-a(n-2)))` with `a(0)=6, a(1)=14`

`ceil` is left out, it is the identity on integers.
-/

namespace A078836.P11962628109106741716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 14] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A078836.P11962628109106741716

namespace A078836

/-- `ceil(4*(a(n-1)-a(n-2)))` -/
def P11962628109106741716.Spec : Prop :=
  ∀ n, P11962628109106741716.a n = A078836 (n + 6)

theorem P11962628109106741716.correct : P11962628109106741716.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078836, Nat.add_sub_cancel, A078836.P11962628109106741716.a, A078836.P11756148456415828429.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078836, Nat.add_sub_cancel, A078836.P11962628109106741716.a, A078836.P11756148456415828429.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A078836

/-! ## A078836.P11150111969822964809

`a(n-1)+a(n-1)+2^n` with `a(0)=6`
-/

namespace A078836.P11150111969822964809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A078836.P11150111969822964809

namespace A078836

/-- `a(n-1)+a(n-1)+2^n` -/
def P11150111969822964809.Spec : Prop :=
  ∀ n, (P11150111969822964809.a n : ℤ) = A078836 (n + 6)

theorem P11150111969822964809.correct : P11150111969822964809.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A078836, Nat.add_sub_cancel, A078836.P11150111969822964809.a, A078836.P11756148456415828429.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A078836, Nat.add_sub_cancel, A078836.P11150111969822964809.a, A078836.P11756148456415828429.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A078836

/-! ## A078836.P16866475159409879009

`A129954(2+n)`
-/

namespace A078836.P16866475159409879009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (2 + n)

end

end A078836.P16866475159409879009

namespace A078836

/-- `A129954(2+n)` -/
def P16866475159409879009.Spec : Prop :=
  ∀ n, P16866475159409879009.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P16402350837714083246

`A131352(n+2)`
-/

namespace A078836.P16402350837714083246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 (n + 2)

end

end A078836.P16402350837714083246

namespace A078836

/-- `A131352(n+2)` -/
def P16402350837714083246.Spec : Prop :=
  ∀ n, P16402350837714083246.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P8932084795066467034

`record[A129954(abs(2-n))]`
-/

namespace A078836.P8932084795066467034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078836.P8932084795066467034

namespace A078836

/-- `record[A129954(abs(2-n))]` -/
def P8932084795066467034.Spec : Prop :=
  ∀ n, P8932084795066467034.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P1470173449555299221

`record[A131352(abs(2-n))]`
-/

namespace A078836.P1470173449555299221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078836.P1470173449555299221

namespace A078836

/-- `record[A131352(abs(2-n))]` -/
def P1470173449555299221.Spec : Prop :=
  ∀ n, P1470173449555299221.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P6924298360543306839

`∑[A129955(n+1)]+3`
-/

namespace A078836.P6924298360543306839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A078836.P6924298360543306839

namespace A078836

/-- `∑[A129955(n+1)]+3` -/
def P6924298360543306839.Spec : Prop :=
  ∀ n, P6924298360543306839.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P11422045388930647272

`A045623(n+2)+2^n`
-/

namespace A078836.P11422045388930647272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 2) + (2 ^ n : ℤ)

end

end A078836.P11422045388930647272

namespace A078836

/-- `A045623(n+2)+2^n` -/
def P11422045388930647272.Spec : Prop :=
  ∀ n, P11422045388930647272.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P6731310878358253952

`A045891(n+3)-2^n`
-/

namespace A078836.P6731310878358253952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 3) - (2 ^ n : ℤ)

end

end A078836.P6731310878358253952

namespace A078836

/-- `A045891(n+3)-2^n` -/
def P6731310878358253952.Spec : Prop :=
  ∀ n, P6731310878358253952.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P13970780099279891661

`A087447(n+2)+2^(n+1)`
-/

namespace A078836.P13970780099279891661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A078836.P13970780099279891661

namespace A078836

/-- `A087447(n+2)+2^(n+1)` -/
def P13970780099279891661.Spec : Prop :=
  ∀ n, P13970780099279891661.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P337991290897378947

`A129953(n+2)+2^(n+1)`
-/

namespace A078836.P337991290897378947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A078836.P337991290897378947

namespace A078836

/-- `A129953(n+2)+2^(n+1)` -/
def P337991290897378947.Spec : Prop :=
  ∀ n, P337991290897378947.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P5880614950208281411

`A057711(n+2)+2^(n+2)`
-/

namespace A078836.P5880614950208281411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A078836.P5880614950208281411

namespace A078836

/-- `A057711(n+2)+2^(n+2)` -/
def P5880614950208281411.Spec : Prop :=
  ∀ n, P5880614950208281411.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P10953878415710683742

`A129952(n+2)+2^(n+2)`
-/

namespace A078836.P10953878415710683742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A078836.P10953878415710683742

namespace A078836

/-- `A129952(n+2)+2^(n+2)` -/
def P10953878415710683742.Spec : Prop :=
  ∀ n, P10953878415710683742.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P1275279000996658422

`A129955(n+2)-2^(n+1)`
-/

namespace A078836.P1275279000996658422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A078836.P1275279000996658422

namespace A078836

/-- `A129955(n+2)-2^(n+1)` -/
def P1275279000996658422.Spec : Prop :=
  ∀ n, P1275279000996658422.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P9222536715721968812

`A086224(n)+A000337(n)`
-/

namespace A078836.P9222536715721968812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 n + A000337 n

end

end A078836.P9222536715721968812

namespace A078836

/-- `A086224(n)+A000337(n)` -/
def P9222536715721968812.Spec : Prop :=
  ∀ n, P9222536715721968812.a n = A078836 (n + 6)

theorem P9222536715721968812.correct : P9222536715721968812.Spec := by
  intro n
  simp only [A078836, Nat.add_sub_cancel, A078836.P9222536715721968812.a, A078836.P11756148456415828429.a, A000337, A000337.P10298485350018343423.a, A086224, A086224.P17314597759689141407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078836

/-! ## A078836.P384157674039784542

`A159694(n)+A001787(n)`
-/

namespace A078836.P384157674039784542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n + A001787 n

end

end A078836.P384157674039784542

namespace A078836

/-- `A159694(n)+A001787(n)` -/
def P384157674039784542.Spec : Prop :=
  ∀ n, P384157674039784542.a n = A078836 (n + 6)

end A078836

/-! ## A078836.P16011718713033273679

`A087323(n)+A083575(n)`
-/

namespace A078836.P16011718713033273679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A083575 n

end

end A078836.P16011718713033273679

namespace A078836

/-- `A087323(n)+A083575(n)` -/
def P16011718713033273679.Spec : Prop :=
  ∀ n, P16011718713033273679.a n = A078836 (n + 6)

end A078836

/-!
# A078837: a(n) = Sum_{k=1..prime(n)-1} floor(k^3/prime(n)).

The programs for A078837, the canonical program `A078837.P7103362861218615882` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078837 has offset 1).

The definition of A078837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[A000040(n+1)-2, floor((#+1)^3/A000040(n+1))]` (program `A078837.P7103362861218615882`, by `A078837.P7103362861218615882.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078837.P1514443697056818351

`1/4*(A000040(n+1)-2)*(A000040(n+1)-1)*(A000040(n+1)+1)`
-/

namespace A078837.P1514443697056818351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000040 (n + 1) - 2 : ℚ) * (A000040 (n + 1) - 1 : ℚ) * (A000040 (n + 1) + 1 : ℚ)

end

end A078837.P1514443697056818351

namespace A078837

/-- `1/4*(A000040(n+1)-2)*(A000040(n+1)-1)*(A000040(n+1)+1)` -/
def P1514443697056818351.Spec : Prop :=
  ∀ n, P1514443697056818351.a n = (A078837 (n + 1) : ℚ)

end A078837

/-! ## A078837.P7103362861218615882

`∑{#}[A000040(n+1)-2, floor((#+1)^3/A000040(n+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078837

/-- `∑{#}[A000040(n+1)-2, floor((#+1)^3/A000040(n+1))]` -/
def P7103362861218615882.Spec : Prop :=
  ∀ n, P7103362861218615882.a n = A078837 (n + 1)

theorem P7103362861218615882.correct : P7103362861218615882.Spec := by
  intro n
  simp only [A078837, Nat.add_sub_cancel]

end A078837

/-! ## A078837.P9332840887286777788

`∑{#}[A000040(n+1)-1-1, floor((#+1)^3/A000040(n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078837.P9332840887286777788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊((k + 1) ^ 3 : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A078837.P9332840887286777788

namespace A078837

/-- `∑{#}[A000040(n+1)-1-1, floor((#+1)^3/A000040(n+1))]` -/
def P9332840887286777788.Spec : Prop :=
  ∀ n, P9332840887286777788.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P7342147509998310446

`A361559(n+1)%A127919(n+1)`
-/

namespace A078837.P7342147509998310446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361559 (n + 1)) (A127919 (n + 1))

end

end A078837.P7342147509998310446

namespace A078837

/-- `A361559(n+1)%A127919(n+1)` -/
def P7342147509998310446.Spec : Prop :=
  ∀ n, P7342147509998310446.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P5145990239234732204

`(A072205(n+1)-2)*A130290(n+1)`
-/

namespace A078837.P5145990239234732204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072205 (n + 1) - 2) * A130290 (n + 1)

end

end A078837.P5145990239234732204

namespace A078837

/-- `(A072205(n+1)-2)*A130290(n+1)` -/
def P5145990239234732204.Spec : Prop :=
  ∀ n, P5145990239234732204.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P17159830465438681955

`(A127918(n+1)-A084920(n+1))/2`
-/

namespace A078837.P17159830465438681955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) - A084920 (n + 1) : ℚ) / 2

end

end A078837.P17159830465438681955

namespace A078837

/-- `(A127918(n+1)-A084920(n+1))/2` -/
def P17159830465438681955.Spec : Prop :=
  ∀ n, P17159830465438681955.a n = (A078837 (n + 1) : ℚ)

end A078837

/-! ## A078837.P13975942335034362485

`(A130290(n+1)+A130290(n+1)²)*A040976(n+1)`
-/

namespace A078837.P13975942335034362485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130290 (n + 1) + A130290 (n + 1) ^ 2) * A040976 (n + 1)

end

end A078837.P13975942335034362485

namespace A078837

/-- `(A130290(n+1)+A130290(n+1)²)*A040976(n+1)` -/
def P13975942335034362485.Spec : Prop :=
  ∀ n, P13975942335034362485.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P1106410678429469712

`A102781(n+1)²*A000040(n+1)-A102781(n+1)`
-/

namespace A078837.P1106410678429469712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) ^ 2 * A000040 (n + 1) - A102781 (n + 1)

end

end A078837.P1106410678429469712

namespace A078837

/-- `A102781(n+1)²*A000040(n+1)-A102781(n+1)` -/
def P1106410678429469712.Spec : Prop :=
  ∀ n, P1106410678429469712.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P14179457089144733671

`A102781(n+1)²*A006005(n+1)-A102781(n+1)`
-/

namespace A078837.P14179457089144733671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) ^ 2 * A006005 (n + 1) - A102781 (n + 1)

end

end A078837.P14179457089144733671

namespace A078837

/-- `A102781(n+1)²*A006005(n+1)-A102781(n+1)` -/
def P14179457089144733671.Spec : Prop :=
  ∀ n, P14179457089144733671.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P337436827026180293

`(A111333(n+1)²-A111333(n+1))*A040976(n+1)`
-/

namespace A078837.P337436827026180293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111333 (n + 1) ^ 2 - A111333 (n + 1)) * A040976 (n + 1)

end

end A078837.P337436827026180293

namespace A078837

/-- `(A111333(n+1)²-A111333(n+1))*A040976(n+1)` -/
def P337436827026180293.Spec : Prop :=
  ∀ n, P337436827026180293.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P5529117568318271268

`(A008837(n+1)²-A008837(n+1))/A000040(n+1)`
-/

namespace A078837.P5529117568318271268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008837 (n + 1) ^ 2 - A008837 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A078837.P5529117568318271268

namespace A078837

/-- `(A008837(n+1)²-A008837(n+1))/A000040(n+1)` -/
def P5529117568318271268.Spec : Prop :=
  ∀ n, P5529117568318271268.a n = (A078837 (n + 1) : ℚ)

end A078837

/-! ## A078837.P4587825939759604520

`record[n*floor((A020639(n+2)/2)²)]`
-/

namespace A078837.P4587825939759604520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊((A020639 (n + 2) : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078837.P4587825939759604520

namespace A078837

/-- `record[n*floor((A020639(n+2)/2)²)]` -/
def P4587825939759604520.Spec : Prop :=
  ∀ n, P4587825939759604520.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P15196955322845754353

`record[n²*A006530(2*n+1)-n]`
-/

namespace A078837.P15196955322845754353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A006530 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078837.P15196955322845754353

namespace A078837

/-- `record[n²*A006530(2*n+1)-n]` -/
def P15196955322845754353.Spec : Prop :=
  ∀ n, P15196955322845754353.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P6710444944408849578

`record[n²*A020639(2*n+1)-n]`
-/

namespace A078837.P6710444944408849578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A020639 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078837.P6710444944408849578

namespace A078837

/-- `record[n²*A020639(2*n+1)-n]` -/
def P6710444944408849578.Spec : Prop :=
  ∀ n, P6710444944408849578.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P5146673850041101288

`A000384(A111333(n+1)-1)*A111333(n+1)`
-/

namespace A078837.P5146673850041101288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A111333 (n + 1) - 1).toNat * A111333 (n + 1)

end

end A078837.P5146673850041101288

namespace A078837

/-- `A000384(A111333(n+1)-1)*A111333(n+1)` -/
def P5146673850041101288.Spec : Prop :=
  ∀ n, P5146673850041101288.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P12532278204759048410

`record[n²*A014963(2*n+1)-n]`
-/

namespace A078837.P12532278204759048410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A014963 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078837.P12532278204759048410

namespace A078837

/-- `record[n²*A014963(2*n+1)-n]` -/
def P12532278204759048410.Spec : Prop :=
  ∀ n, P12532278204759048410.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P14306476460391822751

`2*A111384(A000040(n+1))`
-/

namespace A078837.P14306476460391822751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111384 (A000040 (n + 1)).toNat

end

end A078837.P14306476460391822751

namespace A078837

/-- `2*A111384(A000040(n+1))` -/
def P14306476460391822751.Spec : Prop :=
  ∀ n, P14306476460391822751.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P2341521123746314631

`record[n*A002620(A014963(n+2))]`
-/

namespace A078837.P2341521123746314631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002620 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078837.P2341521123746314631

namespace A078837

/-- `record[n*A002620(A014963(n+2))]` -/
def P2341521123746314631.Spec : Prop :=
  ∀ n, P2341521123746314631.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P10129637114961628931

`2*A178312(A000040(n+1)-2)`
-/

namespace A078837.P10129637114961628931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178312 (A000040 (n + 1) - 2).toNat

end

end A078837.P10129637114961628931

namespace A078837

/-- `2*A178312(A000040(n+1)-2)` -/
def P10129637114961628931.Spec : Prop :=
  ∀ n, P10129637114961628931.a n = A078837 (n + 1)

end A078837

/-! ## A078837.P14700265419954568354

`2*A111384(A100484(n+1)/2)`
-/

namespace A078837.P14700265419954568354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111384 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A078837.P14700265419954568354

namespace A078837

/-- `2*A111384(A100484(n+1)/2)` -/
def P14700265419954568354.Spec : Prop :=
  ∀ n, P14700265419954568354.a n = A078837 (n + 1)

end A078837

/-!
# A078838: a(n) = Sum_{k=1..(p-1)*(p-2)} floor((k*p)^(1/3)) where p is the n-th prime.

The programs for A078838, the canonical program `A078838.P952050066526175109` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078838 has offset 1).

The definition of A078838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078838.P952050066526175109

`2*A005945(A102781(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078838

/-- `2*A005945(A102781(n+1))` -/
def P952050066526175109.Spec : Prop :=
  ∀ n, P952050066526175109.a n = A078838 (n + 1)

theorem P952050066526175109.correct : P952050066526175109.Spec := by
  intro n
  simp only [A078838, Nat.add_sub_cancel]

end A078838

/-! ## A078838.P6060318971347975758

`A027903(A040976(n+1))/4`
-/

namespace A078838.P6060318971347975758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027903 (A040976 (n + 1)).toNat : ℚ) / 4

end

end A078838.P6060318971347975758

namespace A078838

/-- `A027903(A040976(n+1))/4` -/
def P6060318971347975758.Spec : Prop :=
  ∀ n, P6060318971347975758.a n = (A078838 (n + 1) : ℚ)

end A078838

/-! ## A078838.P5162371633386363364

`record[A007494(n)*A175567(n+1)]`
-/

namespace A078838.P5162371633386363364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n * A175567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078838.P5162371633386363364

namespace A078838

/-- `record[A007494(n)*A175567(n+1)]` -/
def P5162371633386363364.Spec : Prop :=
  ∀ n, P5162371633386363364.a n = A078838 (n + 1)

end A078838

/-! ## A078838.P13645080468680708166

`record[A014682(n)*A175567(n+1)]`
-/

namespace A078838.P13645080468680708166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n * A175567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078838.P13645080468680708166

namespace A078838

/-- `record[A014682(n)*A175567(n+1)]` -/
def P13645080468680708166.Spec : Prop :=
  ∀ n, P13645080468680708166.a n = A078838 (n + 1)

end A078838

/-! ## A078838.P3820739356916398255

`record[(C(n, 2)+n²)*A057033(3*n+1)]`
-/

namespace A078838.P3820739356916398255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2 : ℤ) * A057033 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078838.P3820739356916398255

namespace A078838

/-- `record[(C(n, 2)+n²)*A057033(3*n+1)]` -/
def P3820739356916398255.Spec : Prop :=
  ∀ n, P3820739356916398255.a n = A078838 (n + 1)

end A078838

/-!
# A078839: Numbers k such that the binary expansion of 3^k has the same number of 0's and 1's.

The programs for A078839, there is no canonical definition to state claims against.
-/

/-! ## A078839.P6751435542761410839

`eq[A011754(n), A118736(n)]`
-/

namespace A078839.P6751435542761410839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078839.P6751435542761410839

/-! ## A078839.P11739565710246339652

`eq[2*A011754(n), A020914(n)]`
-/

namespace A078839.P11739565710246339652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078839.P11739565710246339652

/-! ## A078839.P12510621901164744448

`eq[2*A011754(n), A204399(n)]`
-/

namespace A078839.P12510621901164744448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078839.P12510621901164744448

/-! ## A078839.P1663934821379738184

`eq[A005843(A011754(n)), A020914(n)]`
-/

namespace A078839.P1663934821379738184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A011754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078839.P1663934821379738184

/-! ## A078839.P12111306092893711680

`eq[A005843(A118736(n)), A020914(n)]`
-/

namespace A078839.P12111306092893711680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A118736 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078839.P12111306092893711680

/-! ## A078839.P15915221712534103761

`eq[A004277(A011754(n)), A204399(n)]`
-/

namespace A078839.P15915221712534103761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A011754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078839.P15915221712534103761

/-!
# A078840: Table of n-almost-primes T(n,k) (n >= 0, k > 0), read by antidiagonals, starting at T(0,1)=1 followed by T(1,1)=2.

The programs for A078840, there is no canonical definition to state claims against.
-/

/-! ## A078840.P1277968669631550090

`A091538(comp[∑[n+1]])`
-/

namespace A078840.P1277968669631550090
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A078840.P1277968669631550090

/-!
# A078841: Main diagonal of the table of k-almost primes (A078840): a(n) = (n+1)-st integer that is an n-almost prime.

The programs for A078841, there is no canonical definition to state claims against.
-/

/-! ## A078841.P10497468333782239226

`A101695(n+1)/2`
-/

namespace A078841.P10497468333782239226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101695 (n + 1) : ℚ) / 2

end

end A078841.P10497468333782239226

/-! ## A078841.P11619086894989337994

`A078840(2*n²)`
-/

namespace A078841.P11619086894989337994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (2 * n ^ 2)

end

end A078841.P11619086894989337994

/-! ## A078841.P9954433086224083680

`A091538(∑[4*n])`
-/

namespace A078841.P9954433086224083680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078841.P9954433086224083680

/-! ## A078841.P11419117518610116813

`A078840((n+1)²+n²)/2`
-/

namespace A078841.P11419117518610116813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078840 ((n + 1) ^ 2 + n ^ 2) : ℚ) / 2

end

end A078841.P11419117518610116813

/-! ## A078841.P16573649785951761922

`record[Δ[A078840(A030978(n))]]`
-/

namespace A078841.P16573649785951761922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A030978 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078841.P16573649785951761922

/-! ## A078841.P14819412766697095645

`or(char[1], A078840(A001105(n)))`
-/

namespace A078841.P14819412766697095645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A078840 (A001105 n).toNat)

end

end A078841.P14819412766697095645

/-! ## A078841.P18347960814474434029

`A078840(A001105(n))%A213256(n)`
-/

namespace A078841.P18347960814474434029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078840 (A001105 n).toNat) (A213256 n)

end

end A078841.P18347960814474434029

/-! ## A078841.P14244361007502727846

`ceil(A078840(A001105(n))/A014963(4*n+2))`
-/

namespace A078841.P14244361007502727846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078840 (A001105 n).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)⌉

end

end A078841.P14244361007502727846

/-!
# A078842: Sums of the antidiagonals of the table of k-almost primes (A078840).

The programs for A078842, there is no canonical definition to state claims against.
-/

/-! ## A078842.P1315498018887087104

`or(A241506(3*(n+1)), A296150(A014300(n+1)))`
-/

namespace A078842.P1315498018887087104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241506 (3 * (n + 1))) (A296150 (A014300 (n + 1)).toNat)

end

end A078842.P1315498018887087104

/-! ## A078842.P11883664162820576725

`record[A193924(n)-A318177(n+1)]`
-/

namespace A078842.P11883664162820576725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 n - A318177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078842.P11883664162820576725

/-! ## A078842.P9866375900890945207

`record[A121461(n+1)-A318177(n+1)]`
-/

namespace A078842.P9866375900890945207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121461 (n + 1) - A318177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078842.P9866375900890945207

/-!
# A078843: Where 3^n occurs in n-almost primes, starting at a(0)=1.

The programs for A078843, there is no canonical definition to state claims against.
-/

/-! ## A078843.P12868399047854234309

`A262689(A157725(2*n+3)-A212804(n))`
-/

namespace A078843.P12868399047854234309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A157725 (2 * n + 3) - A212804 n).toNat

end

end A078843.P12868399047854234309

/-! ## A078843.P13192794169252814787

`A058933(3^n)`
-/

namespace A078843.P13192794169252814787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (3 ^ n)

end

end A078843.P13192794169252814787

/-! ## A078843.P3442327484494680011

`A116433(∑[n+3])`
-/

namespace A078843.P3442327484494680011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078843.P3442327484494680011

/-! ## A078843.P6726293361239428972

`A247189(A110391(n))`
-/

namespace A078843.P6726293361239428972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247189 (A110391 n).toNat

end

end A078843.P6726293361239428972

/-! ## A078843.P3983204939911012446

`record[A058933(A000792(n))]`
-/

namespace A078843.P3983204939911012446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A000792 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078843.P3983204939911012446

/-!
# A078844: Where 5^n occurs in n-almost-primes, starting at a(0)=1.

The programs for A078844, there is no canonical definition to state claims against.
-/

/-! ## A078844.P15724083765008434207

`A376479(∑[n+1]+n)`
-/

namespace A078844.P15724083765008434207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376479 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A078844.P15724083765008434207

/-! ## A078844.P12539181079030733962

`record[A116433(A052905(n))]`
-/

namespace A078844.P12539181079030733962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078844.P12539181079030733962

/-! ## A078844.P3715316970285697268

`A116433(A052905(n+2))`
-/

namespace A078844.P3715316970285697268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (A052905 (n + 2)).toNat

end

end A078844.P3715316970285697268

/-! ## A078844.P2573610775029647088

`A116433(eq[4, A025581(n)])`
-/

namespace A078844.P2573610775029647088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078844.P2573610775029647088

/-!
# A078845: Where 7^n occurs in n-almost-primes, starting at a(0)=1.

The programs for A078845, there is no canonical definition to state claims against.
-/

/-! ## A078845.P2638952244843069601

`A376479(∑[n+3])`
-/

namespace A078845.P2638952244843069601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078845.P2638952244843069601

/-! ## A078845.P2320809615415351539

`A058933(7^n)`
-/

namespace A078845.P2320809615415351539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (7 ^ n)

end

end A078845.P2320809615415351539

/-!
# A078846: Where 11^n occurs in n-almost-primes, starting at a(0)=1.

The programs for A078846, there is no canonical definition to state claims against.
-/

/-! ## A078846.P502666384895252595

`A058933(11^n)`
-/

namespace A078846.P502666384895252595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (11 ^ n)

end

end A078846.P502666384895252595

/-!
# A078847: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <= 6 (i.e., when d = 2, 4 or 6) and forming pattern = [2, 4, 6]; short notation = [246] d-pattern.

The programs for A078847, there is no canonical definition to state claims against.
-/

/-! ## A078847.P3484451133326029420

`A290706(1+n)-12`
-/

namespace A078847.P3484451133326029420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290706 (1 + n) - 12

end

end A078847.P3484451133326029420

/-! ## A078847.P15249306794283416922

`∩[A172454(n+1), A190792(n+1)]`
-/

namespace A078847.P15249306794283416922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P15249306794283416922

/-! ## A078847.P11610484585195281097

`∩[A022004(n+1), A190792(n+1)]`
-/

namespace A078847.P11610484585195281097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P11610484585195281097

/-! ## A078847.P6661266993594679889

`∩[A078561(n+1)-2, A190792(n+1)]`
-/

namespace A078847.P6661266993594679889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P6661266993594679889

/-! ## A078847.P2454262442872898831

`∩[A046136(n+1)-2, A190792(n+1)]`
-/

namespace A078847.P2454262442872898831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P2454262442872898831

/-! ## A078847.P11967951019296164126

`∩[A190792(n+1), A341357(n+1)]`
-/

namespace A078847.P11967951019296164126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P11967951019296164126

/-! ## A078847.P247817086803860959

`∩[A023241(n+1), A286313(n+1)-2]`
-/

namespace A078847.P247817086803860959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P247817086803860959

/-! ## A078847.P4850577519153593918

`p?[A078561(n+1)-2]`
-/

namespace A078847.P4850577519153593918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078847.P4850577519153593918

/-! ## A078847.P8484276834108051500

`p?[p?[A098029(n+1)-4]-2]`
-/

namespace A078847.P8484276834108051500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078847.P8484276834108051500

/-! ## A078847.P16448727626037825039

`p?[p?[A117876(n+1)-4]-2]`
-/

namespace A078847.P16448727626037825039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117876 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078847.P16448727626037825039

/-! ## A078847.P4134944218829723437

`∩[A023241(n+1), A054819(n+1)]`
-/

namespace A078847.P4134944218829723437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P4134944218829723437

/-! ## A078847.P9872049497319695858

`∩[A054819(n+1), A172454(n+1)]`
-/

namespace A078847.P9872049497319695858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P9872049497319695858

/-! ## A078847.P14047581529693012033

`∩[A054819(n+1), A190792(n+1)]`
-/

namespace A078847.P14047581529693012033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P14047581529693012033

/-! ## A078847.P8967779498675313783

`∩[A015917(n+1), A078561(n+1)-2]`
-/

namespace A078847.P8967779498675313783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P8967779498675313783

/-! ## A078847.P16747793215521520308

`∩[A046133(n+1), A078561(n+1)-2]`
-/

namespace A078847.P16747793215521520308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P16747793215521520308

/-! ## A078847.P12276343216585708255

`∩[A023201(n+1), A286313(n+1)-2]`
-/

namespace A078847.P12276343216585708255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P12276343216585708255

/-! ## A078847.P5066206916979941171

`∩[A015914(n+1), A286313(n+1)-2]`
-/

namespace A078847.P5066206916979941171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P5066206916979941171

/-! ## A078847.P12025490966779763207

`∩[A262084(n+1), A286313(n+1)-2]`
-/

namespace A078847.P12025490966779763207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P12025490966779763207

/-! ## A078847.P15835924457929504556

`∩[A056775(n+1), A078561(n+1)-2]`
-/

namespace A078847.P15835924457929504556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078847.P15835924457929504556

/-!
# A078848: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[2,6,4]; short d-string notation of pattern = [264].

The programs for A078848, there is no canonical definition to state claims against.
-/

/-! ## A078848.P2705581647298446608

`∩[A190792(n+1), A233540(n+1)]`
-/

namespace A078848.P2705581647298446608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P2705581647298446608

/-! ## A078848.P6404213426638035512

`∩[A049437(n+1), A190792(n+1)]`
-/

namespace A078848.P6404213426638035512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P6404213426638035512

/-! ## A078848.P17831409483389307564

`∩[A049437(n+1), A233540(n+1)]`
-/

namespace A078848.P17831409483389307564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P17831409483389307564

/-! ## A078848.P17212794887767130627

`∩[A190792(n+1), A345213(n+1)]`
-/

namespace A078848.P17212794887767130627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P17212794887767130627

/-! ## A078848.P4044415970445278242

`∩[A046141(n+1), A049437(n+1)]`
-/

namespace A078848.P4044415970445278242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P4044415970445278242

/-! ## A078848.P4904139066864407680

`∩[A046134(n+1), A190792(n+1)]`
-/

namespace A078848.P4904139066864407680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P4904139066864407680

/-! ## A078848.P9748258637429550516

`∩[A078562(n+1)-2, A190792(n+1)]`
-/

namespace A078848.P9748258637429550516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P9748258637429550516

/-! ## A078848.P4658350409974075376

`∩[A078562(n+1)-2, A345213(n+1)]`
-/

namespace A078848.P4658350409974075376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P4658350409974075376

/-! ## A078848.P5409645397211325080

`∩[A046139(n+1)-2, A190792(n+1)]`
-/

namespace A078848.P5409645397211325080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P5409645397211325080

/-! ## A078848.P4843984059305950516

`∩[A046135(n+1), A049437(n+1)]`
-/

namespace A078848.P4843984059305950516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P4843984059305950516

/-! ## A078848.P11568794165255950420

`∩[A052158(n+1)-2, A190792(n+1)]`
-/

namespace A078848.P11568794165255950420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P11568794165255950420

/-! ## A078848.P9848949541498472426

`∩[A046141(n+1), A210360(n+1)]`
-/

namespace A078848.P9848949541498472426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P9848949541498472426

/-! ## A078848.P15713113407597726837

`∩[A190792(n+1), A210360(n+1)]`
-/

namespace A078848.P15713113407597726837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P15713113407597726837

/-! ## A078848.P13695398894200191561

`∩[A210360(n+1), A233540(n+1)]`
-/

namespace A078848.P13695398894200191561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P13695398894200191561

/-! ## A078848.P4610531493355585708

`∩[A049437(n+1), A086136(n+1)]`
-/

namespace A078848.P4610531493355585708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P4610531493355585708

/-! ## A078848.P15707507535411060349

`∩[A046141(n+1), A052160(n+1)-2]`
-/

namespace A078848.P15707507535411060349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052160 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P15707507535411060349

/-! ## A078848.P16654618111035637496

`p?[A078562(n+1)-2]`
-/

namespace A078848.P16654618111035637496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078848.P16654618111035637496

/-! ## A078848.P13788254214211117322

`∩[A015917(n+1), A049437(n+1)]`
-/

namespace A078848.P13788254214211117322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P13788254214211117322

/-! ## A078848.P10369212120976394596

`∩[A046133(n+1), A049437(n+1)]`
-/

namespace A078848.P10369212120976394596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P10369212120976394596

/-! ## A078848.P8221006744781192478

`∩[A015917(n+1), A078562(n+1)-2]`
-/

namespace A078848.P8221006744781192478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078848.P8221006744781192478

/-!
# A078849: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[2, 6,6]; short d-string notation of pattern = [266].

The programs for A078849, there is no canonical definition to state claims against.
-/

/-! ## A078849.P17468383380746875483

`p?[A047948(n+1)-2]`
-/

namespace A078849.P17468383380746875483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078849.P17468383380746875483

/-! ## A078849.P3504338650486741563

`p?[A006562(n+1)-8]`
-/

namespace A078849.P3504338650486741563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078849.P3504338650486741563

/-! ## A078849.P4443562419624690292

`p?[A053070(n+1)-8]`
-/

namespace A078849.P4443562419624690292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078849.P4443562419624690292

/-! ## A078849.P3304912989126397828

`p?[A181424(n+1)-14]`
-/

namespace A078849.P3304912989126397828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078849.P3304912989126397828

/-! ## A078849.P5063849586133307772

`p?[A122535(n+1)+A117217(n+1)-8]`
-/

namespace A078849.P5063849586133307772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A117217 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078849.P5063849586133307772

/-!
# A078850: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[4,2,6]; short d-string notation of pattern = [426].

The programs for A078850, the canonical program `A078850.P10823573622474618809` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078850 has offset 1).

The definition of A078850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078850.P4619177873305915193

`∩[A052164(n+1), A190792(n+1)]`
-/

namespace A078850.P4619177873305915193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078850.P4619177873305915193

namespace A078850

/-- `∩[A052164(n+1), A190792(n+1)]` -/
def P4619177873305915193.Spec : Prop :=
  ∀ n, (P4619177873305915193.a n : ℤ) = A078850 (n + 1)

end A078850

/-! ## A078850.P10823573622474618809

`∩[A046137(n+1), A052164(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078850

/-- `∩[A046137(n+1), A052164(n+1)]` -/
def P10823573622474618809.Spec : Prop :=
  ∀ n, (P10823573622474618809.a n : ℤ) = A078850 (n + 1)

theorem P10823573622474618809.correct : P10823573622474618809.Spec := by
  intro n
  simp only [A078850, Nat.add_sub_cancel]

end A078850

/-! ## A078850.P657746301990028538

`∩[A022005(n+1), A190792(n+1)]`
-/

namespace A078850.P657746301990028538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078850.P657746301990028538

namespace A078850

/-- `∩[A022005(n+1), A190792(n+1)]` -/
def P657746301990028538.Spec : Prop :=
  ∀ n, (P657746301990028538.a n : ℤ) = A078850 (n + 1)

end A078850

/-! ## A078850.P9305158064272636607

`∩[A046118(n+1), A052164(n+1)]`
-/

namespace A078850.P9305158064272636607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078850.P9305158064272636607

namespace A078850

/-- `∩[A046118(n+1), A052164(n+1)]` -/
def P9305158064272636607.Spec : Prop :=
  ∀ n, (P9305158064272636607.a n : ℤ) = A078850 (n + 1)

end A078850

/-! ## A078850.P16516899158654964934

`∩[A023241(n+1), A052164(n+1)]`
-/

namespace A078850.P16516899158654964934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078850.P16516899158654964934

namespace A078850

/-- `∩[A023241(n+1), A052164(n+1)]` -/
def P16516899158654964934.Spec : Prop :=
  ∀ n, (P16516899158654964934.a n : ℤ) = A078850 (n + 1)

end A078850

/-! ## A078850.P12331650166064610290

`∩[A052164(n+1), A086136(n+1)]`
-/

namespace A078850.P12331650166064610290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078850.P12331650166064610290

namespace A078850

/-- `∩[A052164(n+1), A086136(n+1)]` -/
def P12331650166064610290.Spec : Prop :=
  ∀ n, (P12331650166064610290.a n : ℤ) = A078850 (n + 1)

end A078850

/-! ## A078850.P14818320491558690778

`p?[A049437(n+1)-4]`
-/

namespace A078850.P14818320491558690778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078850.P14818320491558690778

namespace A078850

/-- `p?[A049437(n+1)-4]` -/
def P14818320491558690778.Spec : Prop :=
  ∀ n, P14818320491558690778.a n = A078850 (n + 1)

end A078850

/-! ## A078850.P1122455215500923484

`p?[A073650(n+1)-6]`
-/

namespace A078850.P1122455215500923484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073650 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078850.P1122455215500923484

namespace A078850

/-- `p?[A073650(n+1)-6]` -/
def P1122455215500923484.Spec : Prop :=
  ∀ n, P1122455215500923484.a n = A078850 (n + 1)

end A078850

/-! ## A078850.P3833831671161369445

`p?[p?[A052158(n+1)-2]-4]`
-/

namespace A078850.P3833831671161369445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078850.P3833831671161369445

namespace A078850

/-- `p?[p?[A052158(n+1)-2]-4]` -/
def P3833831671161369445.Spec : Prop :=
  ∀ n, P3833831671161369445.a n = A078850 (n + 1)

end A078850

/-! ## A078850.P9633170641558289815

`p?[p?[A095672(n+1)-2]-4]`
-/

namespace A078850.P9633170641558289815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078850.P9633170641558289815

namespace A078850

/-- `p?[p?[A095672(n+1)-2]-4]` -/
def P9633170641558289815.Spec : Prop :=
  ∀ n, P9633170641558289815.a n = A078850 (n + 1)

end A078850

/-! ## A078850.P2553612279275480135

`p?[p?[A117876(n+1)-2]-4]`
-/

namespace A078850.P2553612279275480135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117876 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078850.P2553612279275480135

namespace A078850

/-- `p?[p?[A117876(n+1)-2]-4]` -/
def P2553612279275480135.Spec : Prop :=
  ∀ n, P2553612279275480135.a n = A078850 (n + 1)

end A078850

/-!
# A078851: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[4, 6, 2]; short d-string notation of pattern = [462].

The programs for A078851, there is no canonical definition to state claims against.
-/

/-! ## A078851.P10415832865237861725

`∩[A046137(n+1), A078561(n+1)]`
-/

namespace A078851.P10415832865237861725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P10415832865237861725

/-! ## A078851.P6736091962952883678

`∩[A078561(n+1), A190792(n+1)]`
-/

namespace A078851.P6736091962952883678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P6736091962952883678

/-! ## A078851.P9968461478902751975

`∩[A046136(n+1), A190792(n+1)]`
-/

namespace A078851.P9968461478902751975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P9968461478902751975

/-! ## A078851.P7249876442612032858

`∩[A046137(n+1), A286313(n+1)]`
-/

namespace A078851.P7249876442612032858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P7249876442612032858

/-! ## A078851.P14619072670470155488

`∩[A078561(n+1), A086136(n+1)]`
-/

namespace A078851.P14619072670470155488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P14619072670470155488

/-! ## A078851.P16535177655480087893

`p?[A049438(n+1)-4]`
-/

namespace A078851.P16535177655480087893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078851.P16535177655480087893

/-! ## A078851.P13632789358247007769

`p?[A073651(n+1)-10]`
-/

namespace A078851.P13632789358247007769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073651 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078851.P13632789358247007769

/-! ## A078851.P5332463708981054985

`∩[A015917(n+1), A078561(n+1)]`
-/

namespace A078851.P5332463708981054985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P5332463708981054985

/-! ## A078851.P1193068658839621129

`∩[A046133(n+1), A078561(n+1)]`
-/

namespace A078851.P1193068658839621129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P1193068658839621129

/-! ## A078851.P7007867380840403621

`∩[A056775(n+1), A078561(n+1)]`
-/

namespace A078851.P7007867380840403621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078851.P7007867380840403621

/-!
# A078852: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[4, 6,6]; short d-string notation of pattern = [466].

The programs for A078852, there is no canonical definition to state claims against.
-/

/-! ## A078852.P4460655671210195356

`p?[A047948(n+1)-4]`
-/

namespace A078852.P4460655671210195356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P4460655671210195356

/-! ## A078852.P14290605514622706655

`p?[A006562(n+1)-10]`
-/

namespace A078852.P14290605514622706655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P14290605514622706655

/-! ## A078852.P9539109707844737543

`p?[A053070(n+1)-10]`
-/

namespace A078852.P9539109707844737543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053070 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P9539109707844737543

/-! ## A078852.P16951001548252645052

`p?[A181424(n+1)-16]`
-/

namespace A078852.P16951001548252645052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P16951001548252645052

/-! ## A078852.P1536300374505460434

`p?[A122535(n+1)+A117217(n+1)-10]`
-/

namespace A078852.P1536300374505460434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A117217 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P1536300374505460434

/-! ## A078852.P12431231613233272729

`p?[A128940(n)-4]`
-/

namespace A078852.P12431231613233272729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128940 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P12431231613233272729

/-! ## A078852.P6083983827084724811

`p?[A000040(A219096(n+1))-4]`
-/

namespace A078852.P6083983827084724811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A219096 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P6083983827084724811

/-! ## A078852.P3153978783567761780

`p?[A000040(A066875(n+1))-10]`
-/

namespace A078852.P3153978783567761780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066875 (n + 1)).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078852.P3153978783567761780

/-! ## A078852.P6707202665053824838

`record[A020639(A047948(n+1)-4)]`
-/

namespace A078852.P6707202665053824838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A047948 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078852.P6707202665053824838

/-!
# A078853: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d = 2, 4 or 6) and forming d-pattern=[6,2,4]; short d-string notation of pattern = [624].

The programs for A078853, there is no canonical definition to state claims against.
-/

/-! ## A078853.P524769554589488896

`∩[A049438(n+1), A190792(n+1)]`
-/

namespace A078853.P524769554589488896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P524769554589488896

/-! ## A078853.P3498514995573158686

`∩[A049438(n+1), A355727(n+1)]`
-/

namespace A078853.P3498514995573158686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P3498514995573158686

/-! ## A078853.P10887166928301266319

`∩[A190792(n+1), A355727(n+1)]`
-/

namespace A078853.P10887166928301266319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P10887166928301266319

/-! ## A078853.P18238180343906520960

`∩[A046138(n+1), A190792(n+1)]`
-/

namespace A078853.P18238180343906520960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P18238180343906520960

/-! ## A078853.P10808998985604762403

`∩[A046138(n+1), A355727(n+1)]`
-/

namespace A078853.P10808998985604762403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P10808998985604762403

/-! ## A078853.P18268334481905989281

`∩[A046141(n+1), A049438(n+1)]`
-/

namespace A078853.P18268334481905989281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P18268334481905989281

/-! ## A078853.P9587531399835695407

`∩[A046141(n+1), A355727(n+1)]`
-/

namespace A078853.P9587531399835695407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P9587531399835695407

/-! ## A078853.P11233450831737136044

`∩[A238713(n+1), A355727(n+1)]`
-/

namespace A078853.P11233450831737136044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P11233450831737136044

/-! ## A078853.P11687738463752804453

`∩[A049436(n+1), A355727(n+1)]`
-/

namespace A078853.P11687738463752804453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P11687738463752804453

/-! ## A078853.P9634617976914540647

`∩[A023241(n+1), A049438(n+1)]`
-/

namespace A078853.P9634617976914540647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P9634617976914540647

/-! ## A078853.P17797400925794821962

`∩[A046141(n+1), A052159(n+1)]`
-/

namespace A078853.P17797400925794821962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P17797400925794821962

/-! ## A078853.P10218999699067661148

`∩[A052159(n+1), A190792(n+1)]`
-/

namespace A078853.P10218999699067661148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P10218999699067661148

/-! ## A078853.P2651411436675452447

`∩[A046141(n+1), A088175(n+1)]`
-/

namespace A078853.P2651411436675452447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P2651411436675452447

/-! ## A078853.P11746729666809025331

`∩[A015915(n+1), A355727(n+1)]`
-/

namespace A078853.P11746729666809025331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P11746729666809025331

/-! ## A078853.P3388295169040014986

`∩[A046141(n+1), A052160(n+1)]`
-/

namespace A078853.P3388295169040014986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P3388295169040014986

/-! ## A078853.P476107581565187391

`∩[A052160(n+1), A355727(n+1)]`
-/

namespace A078853.P476107581565187391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078853.P476107581565187391

/-! ## A078853.P2213653874097386060

`p?[A052163(n+1)-6]`
-/

namespace A078853.P2213653874097386060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052163 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078853.P2213653874097386060

/-!
# A078854: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[6, 2,6]; short d-string notation of pattern = [626].

The programs for A078854, there is no canonical definition to state claims against.
-/

/-! ## A078854.P12020369261702047411

`A258879(n+1)-7`
-/

namespace A078854.P12020369261702047411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258879 (n + 1) - 7

end

end A078854.P12020369261702047411

/-! ## A078854.P17727237278963746073

`A317336(A008574(n))+A258879(n+1)`
-/

namespace A078854.P17727237278963746073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A008574 n).toNat + A258879 (n + 1)

end

end A078854.P17727237278963746073

/-! ## A078854.P14537521078503288838

`A317336(A000118(n))+A258879(n+1)`
-/

namespace A078854.P14537521078503288838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A000118 n).toNat + A258879 (n + 1)

end

end A078854.P14537521078503288838

/-! ## A078854.P17651586201730272038

`A317336(A001749(n+1))+A258879(n+1)`
-/

namespace A078854.P17651586201730272038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317336 (A001749 (n + 1)).toNat + A258879 (n + 1)

end

end A078854.P17651586201730272038

/-! ## A078854.P2886141354576971812

`∩[A022885(n+1), A049438(n+1)]`
-/

namespace A078854.P2886141354576971812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P2886141354576971812

/-! ## A078854.P10286892375772298823

`A140565(4*n+5)`
-/

namespace A078854.P10286892375772298823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (4 * n + 5)

end

end A078854.P10286892375772298823

/-! ## A078854.P13689642386612932662

`∩[A049438(n+1), A140565(n+1)]`
-/

namespace A078854.P13689642386612932662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P13689642386612932662

/-! ## A078854.P14501009682200164916

`∩[A052159(n+1), A140565(n+1)]`
-/

namespace A078854.P14501009682200164916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P14501009682200164916

/-! ## A078854.P11768929539494457474

`A140565(A004766(n+1))%A078849(n+1)`
-/

namespace A078854.P11768929539494457474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140565 (A004766 (n + 1)).toNat) (A078849 (n + 1))

end

end A078854.P11768929539494457474

/-! ## A078854.P11967319531460918614

`∩[A132235(n+1), A140565(n+1)]`
-/

namespace A078854.P11967319531460918614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P11967319531460918614

/-! ## A078854.P7964870128782907847

`∩[A049438(n+1), A153417(n+1)]`
-/

namespace A078854.P7964870128782907847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P7964870128782907847

/-! ## A078854.P9611223129578859646

`p?[A049437(n+1)-6]`
-/

namespace A078854.P9611223129578859646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078854.P9611223129578859646

/-! ## A078854.P1341836578180604032

`p?[A073650(n+1)-8]`
-/

namespace A078854.P1341836578180604032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073650 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078854.P1341836578180604032

/-! ## A078854.P7241305869840596773

`p?[A140565(A016813(n))-A000007(n)]`
-/

namespace A078854.P7241305869840596773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (A016813 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078854.P7241305869840596773

/-! ## A078854.P16446672927151559802

`∩[A140565(n+1), A343241(n+1)]`
-/

namespace A078854.P16446672927151559802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P16446672927151559802

/-! ## A078854.P1430747177624772384

`∩[A121762(n+1), A140565(n+1)]`
-/

namespace A078854.P1430747177624772384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P1430747177624772384

/-! ## A078854.P15321639383908970463

`∩[A128473(n+1), A140565(n+1)]`
-/

namespace A078854.P15321639383908970463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078854.P15321639383908970463

/-!
# A078855: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[6, 4,2]; short d-string notation of pattern = [642].

The programs for A078855, there is no canonical definition to state claims against.
-/

/-! ## A078855.P15297452537156459141

`A290635(1+n)-12`
-/

namespace A078855.P15297452537156459141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290635 (1 + n) - 12

end

end A078855.P15297452537156459141

/-! ## A078855.P15817927204351527085

`∩[A078562(n+1), A190792(n+1)]`
-/

namespace A078855.P15817927204351527085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P15817927204351527085

/-! ## A078855.P12482405619168454705

`∩[A046139(n+1), A190792(n+1)]`
-/

namespace A078855.P12482405619168454705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P12482405619168454705

/-! ## A078855.P11626865666940995358

`∩[A023241(n+1), A078562(n+1)]`
-/

namespace A078855.P11626865666940995358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P11626865666940995358

/-! ## A078855.P15291132536508813456

`∩[A023241(n+1), A286313(n+1)]`
-/

namespace A078855.P15291132536508813456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P15291132536508813456

/-! ## A078855.P10332846099338005881

`∩[A052158(n+1), A190792(n+1)]`
-/

namespace A078855.P10332846099338005881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P10332846099338005881

/-! ## A078855.P9663014992993858371

`∩[A078562(n+1), A086136(n+1)]`
-/

namespace A078855.P9663014992993858371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P9663014992993858371

/-! ## A078855.P9763004923183476919

`p?[A054805(n+1)-6]`
-/

namespace A078855.P9763004923183476919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078855.P9763004923183476919

/-! ## A078855.P6903114638864929964

`p?[A054804(n+1)+6]-6`
-/

namespace A078855.P6903114638864929964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A078855.P6903114638864929964

/-! ## A078855.P9115444750861195338

`∩[A023241(n+1), A054804(n+1)]`
-/

namespace A078855.P9115444750861195338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P9115444750861195338

/-! ## A078855.P1704081844205666565

`∩[A046139(n+1), A054804(n+1)]`
-/

namespace A078855.P1704081844205666565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P1704081844205666565

/-! ## A078855.P9729809728571382037

`∩[A052158(n+1), A054804(n+1)]`
-/

namespace A078855.P9729809728571382037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P9729809728571382037

/-! ## A078855.P3721912533929947848

`∩[A054804(n+1), A078562(n+1)]`
-/

namespace A078855.P3721912533929947848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P3721912533929947848

/-! ## A078855.P14566172754028603534

`∩[A054804(n+1), A086135(n+1)]`
-/

namespace A078855.P14566172754028603534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P14566172754028603534

/-! ## A078855.P6649469644411276130

`∩[A054804(n+1), A190792(n+1)]`
-/

namespace A078855.P6649469644411276130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P6649469644411276130

/-! ## A078855.P8187541756244084640

`∩[A054804(n+1), A286313(n+1)]`
-/

namespace A078855.P8187541756244084640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P8187541756244084640

/-! ## A078855.P4182438971885386325

`∩[A031924(n+1), A054804(n+1)]`
-/

namespace A078855.P4182438971885386325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P4182438971885386325

/-! ## A078855.P5877243807283925333

`∩[A046133(n+1), A078562(n+1)]`
-/

namespace A078855.P5877243807283925333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P5877243807283925333

/-! ## A078855.P6325874528744375318

`∩[A015914(n+1), A054804(n+1)]`
-/

namespace A078855.P6325874528744375318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P6325874528744375318

/-! ## A078855.P669138673900607220

`∩[A023201(n+1), A054804(n+1)]`
-/

namespace A078855.P669138673900607220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078855.P669138673900607220

/-!
# A078856: Initial term in sequence of four consecutive primes whose consecutive differences have d-pattern = [6, 4, 6]; short d-string notation for pattern = [646].

The programs for A078856, there is no canonical definition to state claims against.
-/

/-! ## A078856.P1031155853081253288

`∩[A022885(n+1), A078562(n+1)]`
-/

namespace A078856.P1031155853081253288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078856.P1031155853081253288

/-! ## A078856.P2233424881167054648

`∩[A022885(n+1), A286313(n+1)]`
-/

namespace A078856.P2233424881167054648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078856.P2233424881167054648

/-! ## A078856.P10437316692319440985

`∩[A022885(n+1), A151799(A078561(n+1))]`
-/

namespace A078856.P10437316692319440985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A078561 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078856.P10437316692319440985

/-! ## A078856.P16723863919065498140

`∩[A286313(n+2), A151799(A286313(n+2))]`
-/

namespace A078856.P16723863919065498140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286313 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A286313 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078856.P16723863919065498140

/-! ## A078856.P6919881787891843256

`∩[A064989(A078561(n+1)), A078562(n+1)]`
-/

namespace A078856.P6919881787891843256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A078561 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078856.P6919881787891843256

/-!
# A078857: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[6, 6,2]; short d-string notation of pattern = [662].

The programs for A078857, there is no canonical definition to state claims against.
-/

/-! ## A078857.P16757733682195191586

`∩[A047948(n+1), A355727(n+1)]`
-/

namespace A078857.P16757733682195191586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078857.P16757733682195191586

/-! ## A078857.P12882352059164970138

`∩[A288022(n+1), A355727(n+1)]`
-/

namespace A078857.P12882352059164970138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078857.P12882352059164970138

/-! ## A078857.P6356447729314174573

`∩[A047948(n+1), A153417(n+1)]`
-/

namespace A078857.P6356447729314174573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078857.P6356447729314174573

/-! ## A078857.P9144422974281561383

`∩[A153417(n+1), A185938(n+1)]`
-/

namespace A078857.P9144422974281561383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078857.P9144422974281561383

/-! ## A078857.P5462634103699756707

`∩[A153417(n+1), A355727(n+1)]`
-/

namespace A078857.P5462634103699756707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078857.P5462634103699756707

/-! ## A078857.P147458372699537681

`∩[A001359(n+1)-12, A031924(n+1)]`
-/

namespace A078857.P147458372699537681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078857.P147458372699537681

/-!
# A078858: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d = 2, 4 or 6) and forming d-pattern = [6, 6, 4]; short d-string notation of pattern = [664].

The programs for A078858, there is no canonical definition to state claims against.
-/

/-! ## A078858.P9899786336554715696

`∩[A047948(n+1), A078562(n+1)-6]`
-/

namespace A078858.P9899786336554715696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078858.P9899786336554715696

/-! ## A078858.P10214687937735088574

`∩[A006562(n+1), A078562(n+1)]-6`
-/

namespace A078858.P10214687937735088574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 6

end

end A078858.P10214687937735088574

/-! ## A078858.P11587245598105011791

`∩[A078562(n+1)-6, A122535(n+1)]`
-/

namespace A078858.P11587245598105011791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078858.P11587245598105011791

/-! ## A078858.P6668932136076672208

`∩[A047948(n+1), A049488(n+1)]`
-/

namespace A078858.P6668932136076672208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078858.P6668932136076672208

/-! ## A078858.P15344117910656202740

`∩[A049488(n+1), A185936(n+1)]`
-/

namespace A078858.P15344117910656202740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078858.P15344117910656202740

/-! ## A078858.P11410829065767684705

`∩[A054643(n+1), A078562(n+1)-6]`
-/

namespace A078858.P11410829065767684705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078562 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078858.P11410829065767684705

/-!
# A078859: Least positive residues (mod 210) representing those residue classes which can be the lesser of twin prime pairs (A001359).

The programs for A078859, there is no canonical definition to state claims against.
-/

/-! ## A078859.P17914593439011742891

`∩[A052424(n+1)-2, A055398(n+1)]`
-/

namespace A078859.P17914593439011742891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078859.P17914593439011742891

/-! ## A078859.P7081889495553928182

`∩[A052424(n+1)-2, A052424(n+2)]`
-/

namespace A078859.P7081889495553928182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078859.P7081889495553928182

/-! ## A078859.P9494373175326730199

`∩[A055398(n+2)-2, A055398(n+2)]`
-/

namespace A078859.P9494373175326730199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078859.P9494373175326730199

/-! ## A078859.P15018019607984640500

`∪[lt[9, A174453(n+5)], A177932(n+1)]`
-/

namespace A078859.P15018019607984640500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174453 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A078859.P15018019607984640500

/-! ## A078859.P6640027910406084342

`eq[A002260(A003643(n+1)), A200996(n+1)]`
-/

namespace A078859.P6640027910406084342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A003643 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078859.P6640027910406084342

/-!
# A078860: Least positive residues [mod 210] representing those residue classes which can be lesser of prime pairs from A029710.

The programs for A078860, there is no canonical definition to state claims against.
-/

/-! ## A078860.P8393266619338732789

`∩[A052424(n+1)-4, A055398(n+3)]`
-/

namespace A078860.P8393266619338732789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078860.P8393266619338732789

/-! ## A078860.P13923318311247154181

`∩[A055398(n+1)-4, A055398(n+3)]`
-/

namespace A078860.P13923318311247154181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078860.P13923318311247154181

/-! ## A078860.P1227964567106579159

`lt[A175126(n), A068307(A020639(n+4))]`
-/

namespace A078860.P1227964567106579159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (A020639 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078860.P1227964567106579159

/-! ## A078860.P13360689177996442555

`p?[A113626(n+1)-4]`
-/

namespace A078860.P13360689177996442555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113626 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078860.P13360689177996442555

/-! ## A078860.P1842766595766142832

`∩[A253969(n+1), A352274(n+1)]`
-/

namespace A078860.P1842766595766142832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078860.P1842766595766142832

/-!
# A078861: Least positive residues [mod 210] representing those residue classes which can be smaller prime of a difference 6 taken from A031924.

The programs for A078861, there is no canonical definition to state claims against.
-/

/-! ## A078861.P11338664012860161407

`lt[10, A020639((n+1)*(n+7))]+1`
-/

namespace A078861.P11338664012860161407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A078861.P11338664012860161407

/-! ## A078861.P9498538420469916458

`eq[A129476(n+6), A220134(n)]`
-/

namespace A078861.P9498538420469916458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129476 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078861.P9498538420469916458

/-! ## A078861.P4021018168998179084

`eq[A129476(n+6), A220135(n)]`
-/

namespace A078861.P4021018168998179084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129476 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078861.P4021018168998179084

/-! ## A078861.P8479059009015167597

`∩[A008364(n+1)-6, A008364(n+1)]`
-/

namespace A078861.P8479059009015167597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078861.P8479059009015167597

/-! ## A078861.P15491821163432982633

`A023201(A000005(2^n)+2)`
-/

namespace A078861.P15491821163432982633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (A000005 (2 ^ n) + 2).toNat

end

end A078861.P15491821163432982633

/-!
# A078864: Smallest primes from A001359, each belonging to those different residue class of mod 210 which are listed in A078859. Arranged according to possible least positive residues mod 210.

The programs for A078864, there is no canonical definition to state claims against.
-/

/-! ## A078864.P16799223360038879477

`record[A088328(A302026(A002377(n+1)))]`
-/

namespace A078864.P16799223360038879477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088328 (A302026 (A002377 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078864.P16799223360038879477

/-! ## A078864.P12817103511187260731

`A006530(A001359(n+1)*A058354(n+3))`
-/

namespace A078864.P12817103511187260731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001359 (n + 1) * A058354 (n + 3)).toNat

end

end A078864.P12817103511187260731

/-!
# A078865: Difference of consecutive primorial numbers divided by 4.

The programs for A078865, there is no canonical definition to state claims against.
-/

/-! ## A078865.P5869305430831120247

`Δ[A228698(n)/16]`
-/

namespace A078865.P5869305430831120247
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228698 n : ℚ) / 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P5869305430831120247

/-! ## A078865.P2010512176190796055

`A061720(n+1)/4`
-/

namespace A078865.P2010512176190796055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061720 (n + 1) : ℚ) / 4

end

end A078865.P2010512176190796055

/-! ## A078865.P15300443725417877525

`Δ[A070826(n+1)/2]`
-/

namespace A078865.P15300443725417877525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070826 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P15300443725417877525

/-! ## A078865.P10959110194078315121

`Δ[A002110(n+1)/4]`
-/

namespace A078865.P10959110194078315121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P10959110194078315121

/-! ## A078865.P8884266118363815436

`Δ[A006862(n+1)/4]`
-/

namespace A078865.P8884266118363815436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006862 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P8884266118363815436

/-! ## A078865.P10742113847867618914

`Δ[A057588(n+1)/4]`
-/

namespace A078865.P10742113847867618914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057588 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P10742113847867618914

/-! ## A078865.P1482926989862158837

`Δ[A088860(n+1)/8]`
-/

namespace A078865.P1482926989862158837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088860 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P1482926989862158837

/-! ## A078865.P9234905508379481553

`Δ[∏[A000040(n+1)]/4]`
-/

namespace A078865.P9234905508379481553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P9234905508379481553

/-! ## A078865.P8758843997907304866

`Δ[∏[A040976(n+1)+2]/4]`
-/

namespace A078865.P8758843997907304866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P8758843997907304866

/-! ## A078865.P12302326838644072769

`Δ[(∏[record[A014963(n+2)]]+1)/4]`
-/

namespace A078865.P12302326838644072769
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078865.P12302326838644072769

/-!
# A078866: The quadruples (d1,d2,d3,d4) with elements in {2,4,6} are listed in lexicographic order; for each quadruple, this sequence lists the smallest prime p >= 5 such that the differences between the 5 consecutive primes starting with p are (d1,d2,d3,d4), if such a prime exists.

The programs for A078866, there is no canonical definition to state claims against.
-/

/-! ## A078866.P4741885332537827064

`A163646(A116735(n+1)+A016789(n))`
-/

namespace A078866.P4741885332537827064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163646 (A116735 (n + 1) + A016789 n).toNat

end

end A078866.P4741885332537827064

/-! ## A078866.P7883560801069930737

`A000040(A317414(n+1)+A083318(n))`
-/

namespace A078866.P7883560801069930737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A317414 (n + 1) + A083318 n).toNat

end

end A078866.P7883560801069930737

/-!
# A078867: Sorted version of A078866.

The programs for A078867, there is no canonical definition to state claims against.
-/

/-! ## A078867.P4453737445126488254

`p?[A227763(record[A029287(n)])]`
-/

namespace A078867.P4453737445126488254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029287 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227763 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078867.P4453737445126488254

/-! ## A078867.P13140276363448106212

`∩[A227763(n+1), A333541(n+1)]`
-/

namespace A078867.P13140276363448106212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078867.P13140276363448106212

/-! ## A078867.P14555966669649037577

`∩[A231369(n+1), A333541(n+1)]`
-/

namespace A078867.P14555966669649037577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078867.P14555966669649037577

/-! ## A078867.P2820032179020253322

`A218123(A048203(n+4))`
-/

namespace A078867.P2820032179020253322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218123 (A048203 (n + 4)).toNat

end

end A078867.P2820032179020253322

/-!
# A078873: Sorted version of A078872.

The programs for A078873, there is no canonical definition to state claims against.
-/

/-! ## A078873.P6367264557449650657

`A020633(A043320(n+1))`
-/

namespace A078873.P6367264557449650657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (A043320 (n + 1)).toNat

end

end A078873.P6367264557449650657

/-! ## A078873.P11683318516425359014

`A020633(A044917(n+1))`
-/

namespace A078873.P11683318516425359014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (A044917 (n + 1)).toNat

end

end A078873.P11683318516425359014

/-! ## A078873.P12744338229395655572

`A094548(A020630(n+1))`
-/

namespace A078873.P12744338229395655572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A020630 (n + 1)).toNat

end

end A078873.P12744338229395655572

/-! ## A078873.P9306848847240324707

`A110340(A020633(n+1))`
-/

namespace A078873.P9306848847240324707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110340 (A020633 (n + 1)).toNat

end

end A078873.P9306848847240324707

/-! ## A078873.P1938381279842408925

`A020633(A161953(n+1))`
-/

namespace A078873.P1938381279842408925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (A161953 (n + 1)).toNat

end

end A078873.P1938381279842408925

/-!
# A078875: Sorted version of A078874.

The programs for A078875, there is no canonical definition to state claims against.
-/

/-! ## A078875.P15536771498597275424

`p?[A321741(A321744(n+1))+n+7]`
-/

namespace A078875.P15536771498597275424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321741 (A321744 (n + 1)).toNat + (n + 7 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078875.P15536771498597275424

/-! ## A078875.P4538834769963632515

`p?[A175088(n+5)-A287091(n+8)]`
-/

namespace A078875.P4538834769963632515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175088 (n + 5) - A287091 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078875.P4538834769963632515

/-! ## A078875.P12403337243429856268

`A120533(or(A130123(n), A187829(n+1)))`
-/

namespace A078875.P12403337243429856268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (Int.lor (A130123 n) (A187829 (n + 1))).toNat

end

end A078875.P12403337243429856268

/-! ## A078875.P8661346084615058337

`A002034(A000040(n+5)*A045794(n+1))`
-/

namespace A078875.P8661346084615058337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A000040 (n + 5) * A045794 (n + 1)).toNat

end

end A078875.P8661346084615058337

/-! ## A078875.P16223013187928534736

`A000040(or(A130123(n), A187829(n+1))+4)`
-/

namespace A078875.P16223013187928534736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor (A130123 n) (A187829 (n + 1)) + 4).toNat

end

end A078875.P16223013187928534736

/-!
# A078876: a(n) = n^4*(n^4-1)/240.

The programs for A078876, the canonical program `A078876.P1746976397778396075` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078876 has offset 0).

The definition of A078876 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A078876.anchor (n : ℕ) : (A078876 n : ℚ) = ((n ^ 4 : ℤ) * ((n ^ 4 : ℤ) - 1) : ℚ) / 240` in `Proof.A078.A078876`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078876.P1746976397778396075

`n^4*(n^4-1)/240`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A078876

/-- `n^4*(n^4-1)/240` -/
def P1746976397778396075.Spec : Prop :=
  ∀ n, P1746976397778396075.a n = (A078876 n : ℚ)

end A078876

/-! ## A078876.P5889457538767522463

`A088889(n)+a(n-1)` with `a(0)=0`
-/

namespace A078876.P5889457538767522463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A088889 n + a (n - 1)

end

end A078876.P5889457538767522463

namespace A078876

/-- `A088889(n)+a(n-1)` -/
def P5889457538767522463.Spec : Prop :=
  ∀ n, P5889457538767522463.a n = A078876 n

end A078876

/-! ## A078876.P4010026761029537848

`∑[A088889(C(2, n+2)+n)]`
-/

namespace A078876.P4010026761029537848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078876.P4010026761029537848

namespace A078876

/-- `∑[A088889(C(2, n+2)+n)]` -/
def P4010026761029537848.Spec : Prop :=
  ∀ n, P4010026761029537848.a n = A078876 n

end A078876

/-! ## A078876.P9648893368780450289

`∑[A088889(A028310(n))]`
-/

namespace A078876.P9648893368780450289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078876.P9648893368780450289

namespace A078876

/-- `∑[A088889(A028310(n))]` -/
def P9648893368780450289.Spec : Prop :=
  ∀ n, P9648893368780450289.a n = A078876 n

end A078876

/-! ## A078876.P4781570644269225508

`∑[A088889(A000007(n)+n)]`
-/

namespace A078876.P4781570644269225508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078876.P4781570644269225508

namespace A078876

/-- `∑[A088889(A000007(n)+n)]` -/
def P4781570644269225508.Spec : Prop :=
  ∀ n, P4781570644269225508.a n = A078876 n

end A078876

/-! ## A078876.P15942706269924192631

`∑[A088889(n+1)]-A088889(n+1)`
-/

namespace A078876.P15942706269924192631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088889 (n + 1)

end

end A078876.P15942706269924192631

namespace A078876

/-- `∑[A088889(n+1)]-A088889(n+1)` -/
def P15942706269924192631.Spec : Prop :=
  ∀ n, P15942706269924192631.a n = A078876 n

end A078876

/-! ## A078876.P12792743484423514895

`∑[A088889(A123108(n)+A110654(n))]`
-/

namespace A078876.P12792743484423514895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (A123108 n + A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078876.P12792743484423514895

namespace A078876

/-- `∑[A088889(A123108(n)+A110654(n))]` -/
def P12792743484423514895.Spec : Prop :=
  ∀ n, P12792743484423514895.a n = A078876 n

end A078876

/-! ## A078876.P1727650888589208238

`∑[A088889(A065033(2*n))]`
-/

namespace A078876.P1727650888589208238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078876.P1727650888589208238

namespace A078876

/-- `∑[A088889(A065033(2*n))]` -/
def P1727650888589208238.Spec : Prop :=
  ∀ n, P1727650888589208238.a n = A078876 n

end A078876

/-! ## A078876.P11465054146831373307

`∑[A088889(A123108(2*n))]`
-/

namespace A078876.P11465054146831373307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078876.P11465054146831373307

namespace A078876

/-- `∑[A088889(A123108(2*n))]` -/
def P11465054146831373307.Spec : Prop :=
  ∀ n, P11465054146831373307.a n = A078876 n

end A078876

/-!
# A078877: Nonprimes in A078447.

The programs for A078877, there is no canonical definition to state claims against.
-/

/-! ## A078877.P221683265771788288

`filter[A078447(n+1), A356163(#)]`
-/

namespace A078877.P221683265771788288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A078877.P221683265771788288

/-! ## A078877.P16759079095093218882

`filter[A078447(n+1), A358680(#)]`
-/

namespace A078877.P16759079095093218882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A078877.P16759079095093218882

/-! ## A078877.P12526605249822388719

`filter[A078447(n+1), A359170(#)]`
-/

namespace A078877.P12526605249822388719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359170 (f1 j).toNat = 1) n)

end

end A078877.P12526605249822388719

/-! ## A078877.P12898188057642999470

`filter[A078447(n+1), A359370(#)]`
-/

namespace A078877.P12898188057642999470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A078877.P12898188057642999470

/-! ## A078877.P8318432053980892032

`filter[A078447(n+1), A359595(#)]`
-/

namespace A078877.P8318432053980892032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A078877.P8318432053980892032

/-!
# A078878: Irreducible polynomial coefficient of singular value associated with sqrt(2n).

The programs for A078878, there is no canonical definition to state claims against.
-/

/-! ## A078878.P15443605765948844986

`∑[∑[∏{e}[A343259(n)+1, #+1]]]`
-/

namespace A078878.P15443605765948844986
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343259 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078878.P15443605765948844986

/-! ## A078878.P9930788288630034434

`∑[∑[A277561(A177479(n))]]`
-/

namespace A078878.P9930788288630034434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (A177479 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078878.P9930788288630034434

/-! ## A078878.P6789443980941309928

`∑[∑[A342835(A229194(n))]]`
-/

namespace A078878.P6789443980941309928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342835 (A229194 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078878.P6789443980941309928

/-!
# A078879: Triangle read by rows: T(n,k) = ceiling(k^2 / n), 0 < k < n and T(n,n) = 0.

The programs for A078879, the canonical program `A078879.P5478567798652461310` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078879 has offset 1).

The definition of A078879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078879.P5478567798652461310

`ceil(A048151(n+1)²/A002024(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078879

/-- `ceil(A048151(n+1)²/A002024(n+1))` -/
def P5478567798652461310.Spec : Prop :=
  ∀ n, P5478567798652461310.a n = A078879 (n + 1)

theorem P5478567798652461310.correct : P5478567798652461310.Spec := by
  intro n
  simp only [A078879, Nat.add_sub_cancel]

end A078879

/-! ## A078879.P17915655265303672407

`ceil(A143844(n+1)/(comp[C(n, 2)]-(n+1)))`
-/

namespace A078879.P17915655265303672407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143844 (n + 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℚ)⌉

end

end A078879.P17915655265303672407

namespace A078879

/-- `ceil(A143844(n+1)/(comp[C(n, 2)]-(n+1)))` -/
def P17915655265303672407.Spec : Prop :=
  ∀ n, P17915655265303672407.a n = A078879 (n + 1)

end A078879

/-! ## A078879.P5820615295765837848

`ceil(A143844(n+1)/A002024(n+1))`
-/

namespace A078879.P5820615295765837848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143844 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌉

end

end A078879.P5820615295765837848

namespace A078879

/-- `ceil(A143844(n+1)/A002024(n+1))` -/
def P5820615295765837848.Spec : Prop :=
  ∀ n, P5820615295765837848.a n = A078879 (n + 1)

end A078879

/-! ## A078879.P16311616219224782754

`ceil(A143844(n+1)/A123578(n+1))`
-/

namespace A078879.P16311616219224782754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143844 (n + 1) : ℚ) / (A123578 (n + 1) : ℚ)⌉

end

end A078879.P16311616219224782754

namespace A078879

/-- `ceil(A143844(n+1)/A123578(n+1))` -/
def P16311616219224782754.Spec : Prop :=
  ∀ n, P16311616219224782754.a n = A078879 (n + 1)

end A078879

/-! ## A078879.P2275738889902140246

`ceil(A002262(n+1)²/A002024(n+1))`
-/

namespace A078879.P2275738889902140246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002262 (n + 1) ^ 2 : ℚ) / (A002024 (n + 1) : ℚ)⌉

end

end A078879.P2275738889902140246

namespace A078879

/-- `ceil(A002262(n+1)²/A002024(n+1))` -/
def P2275738889902140246.Spec : Prop :=
  ∀ n, P2275738889902140246.a n = A078879 (n + 1)

end A078879

/-!
# A078880: The sequence starting with 2 that equals its own run length sequence.

The programs for A078880, the canonical program `A078880.P10962953249147653079` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078880 has offset 1).

The definition of A078880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078880.P4121929991386763346

`runs[a(n-(a(a(n-2))%2+1))+1]` with `a(0)=1, a(1)=1`
-/

namespace A078880.P4121929991386763346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - (f1 (f1 (n - 2)) % 2 + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A078880.P4121929991386763346

namespace A078880

/-- `runs[a(n-(a(a(n-2))%2+1))+1]` -/
def P4121929991386763346.Spec : Prop :=
  ∀ n, (P4121929991386763346.a n : ℤ) = A078880 (n + 1)

end A078880

/-! ## A078880.P13283065610076514315

`runs[a(n-2)+gcd(2, a(a(n-1)-1))]` with `a(0)=1, a(1)=1`
-/

namespace A078880.P13283065610076514315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.gcd 2 (f1 (f1 (n - 1) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A078880.P13283065610076514315

namespace A078880

/-- `runs[a(n-2)+gcd(2, a(a(n-1)-1))]` -/
def P13283065610076514315.Spec : Prop :=
  ∀ n, (P13283065610076514315.a n : ℤ) = A078880 (n + 1)

end A078880

/-! ## A078880.P8539025871949300671

`runs[a(n-2)-(a(a(n-1)-1)%2-2)]` with `a(0)=1, a(1)=1`
-/

namespace A078880.P8539025871949300671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - (Int.tmod (f1 (f1 (n - 1) - 1).toNat) 2 - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A078880.P8539025871949300671

namespace A078880

/-- `runs[a(n-2)-(a(a(n-1)-1)%2-2)]` -/
def P8539025871949300671.Spec : Prop :=
  ∀ n, (P8539025871949300671.a n : ℤ) = A078880 (n + 1)

end A078880

/-! ## A078880.P10962953249147653079

`A000002(2+n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078880

/-- `A000002(2+n)` -/
def P10962953249147653079.Spec : Prop :=
  ∀ n, P10962953249147653079.a n = A078880 (n + 1)

theorem P10962953249147653079.correct : P10962953249147653079.Spec := by
  intro n
  simp only [A078880, Nat.add_sub_cancel]

end A078880

/-! ## A078880.P16618284617223249122

`A157686(n+1)+1`
-/

namespace A078880.P16618284617223249122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1) + 1

end

end A078880.P16618284617223249122

namespace A078880

/-- `A157686(n+1)+1` -/
def P16618284617223249122.Spec : Prop :=
  ∀ n, P16618284617223249122.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P11518221793394126509

`3-A088569(n+1)`
-/

namespace A078880.P11518221793394126509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A088569 (n + 1)

end

end A078880.P11518221793394126509

namespace A078880

/-- `3-A088569(n+1)` -/
def P11518221793394126509.Spec : Prop :=
  ∀ n, P11518221793394126509.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P7186609079864786831

`∑[A054354(n+1)]+1`
-/

namespace A078880.P7186609079864786831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078880.P7186609079864786831

namespace A078880

/-- `∑[A054354(n+1)]+1` -/
def P7186609079864786831.Spec : Prop :=
  ∀ n, P7186609079864786831.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P7045311333020727770

`a(A049710(n+1))` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A078880.P7045311333020727770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n a =>
  a (A049710 (n + 1)).toNat

end

end A078880.P7045311333020727770

namespace A078880

/-- `a(A049710(n+1))` -/
def P7045311333020727770.Spec : Prop :=
  ∀ n, (P7045311333020727770.a n : ℤ) = A078880 (n + 1)

end A078880

/-! ## A078880.P519997100126727593

`floor(acot(A249093(n+2)))+1`
-/

namespace A078880.P519997100126727593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A249093 (n + 2) : ℝ)⌋ + 1

end

end A078880.P519997100126727593

namespace A078880

/-- `floor(acot(A249093(n+2)))+1` -/
def P519997100126727593.Spec : Prop :=
  ∀ n, P519997100126727593.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P2894663060323491722

`2/a(A006928(n+1))` with `a(0)=2, a(1)=2`
-/

namespace A078880.P2894663060323491722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 / a (A006928 (n + 1)).toNat

end

end A078880.P2894663060323491722

namespace A078880

/-- `2/a(A006928(n+1))` -/
def P2894663060323491722.Spec : Prop :=
  ∀ n, P2894663060323491722.a n = (A078880 (n + 1) : ℚ)

end A078880

/-! ## A078880.P11787049439871431374

`ceil(2/(A249094(n+2)+1))`
-/

namespace A078880.P11787049439871431374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A249094 (n + 2) + 1 : ℚ)⌉

end

end A078880.P11787049439871431374

namespace A078880

/-- `ceil(2/(A249094(n+2)+1))` -/
def P11787049439871431374.Spec : Prop :=
  ∀ n, P11787049439871431374.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P8681479380062717288

`(1-A156351(n+1))%2+2`
-/

namespace A078880.P8681479380062717288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A156351 (n + 1)) 2 + 2

end

end A078880.P8681479380062717288

namespace A078880

/-- `(1-A156351(n+1))%2+2` -/
def P8681479380062717288.Spec : Prop :=
  ∀ n, P8681479380062717288.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P15480102002620174648

`A333229(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A078880.P15480102002620174648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A333229 (n + 1) - a (n - 1)

end

end A078880.P15480102002620174648

namespace A078880

/-- `A333229(n+1)-a(n-1)` -/
def P15480102002620174648.Spec : Prop :=
  ∀ n, P15480102002620174648.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P5973076122706392648

`A006928(A028310(n)+1)`
-/

namespace A078880.P5973076122706392648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A028310 n + 1).toNat

end

end A078880.P5973076122706392648

namespace A078880

/-- `A006928(A028310(n)+1)` -/
def P5973076122706392648.Spec : Prop :=
  ∀ n, P5973076122706392648.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P9642271343231927256

`A000034(A156351(n+1))`
-/

namespace A078880.P9642271343231927256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A156351 (n + 1)).toNat

end

end A078880.P9642271343231927256

namespace A078880

/-- `A000034(A156351(n+1))` -/
def P9642271343231927256.Spec : Prop :=
  ∀ n, P9642271343231927256.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P16817924532935666979

`A054977(A249093(n+2))`
-/

namespace A078880.P16817924532935666979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249093 (n + 2)).toNat

end

end A078880.P16817924532935666979

namespace A078880

/-- `A054977(A249093(n+2))` -/
def P16817924532935666979.Spec : Prop :=
  ∀ n, P16817924532935666979.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P16389471526836807142

`A054977(A249094(n+2))`
-/

namespace A078880.P16389471526836807142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249094 (n + 2)).toNat

end

end A078880.P16389471526836807142

namespace A078880

/-- `A054977(A249094(n+2))` -/
def P16389471526836807142.Spec : Prop :=
  ∀ n, P16389471526836807142.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P16395299633121611723

`A006928(A054977(n)+n)`
-/

namespace A078880.P16395299633121611723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A054977 n + (n : ℤ)).toNat

end

end A078880.P16395299633121611723

namespace A078880

/-- `A006928(A054977(n)+n)` -/
def P16395299633121611723.Spec : Prop :=
  ∀ n, P16395299633121611723.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P1698443807719931064

`A054977(abs(A249507(n+2)))`
-/

namespace A078880.P1698443807719931064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 |A249507 (n + 2)|.toNat

end

end A078880.P1698443807719931064

namespace A078880

/-- `A054977(abs(A249507(n+2)))` -/
def P1698443807719931064.Spec : Prop :=
  ∀ n, P1698443807719931064.a n = A078880 (n + 1)

end A078880

/-! ## A078880.P12879571487251121476

`A054977(A249507(n+2)²)`
-/

namespace A078880.P12879571487251121476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249507 (n + 2) ^ 2).toNat

end

end A078880.P12879571487251121476

namespace A078880

/-- `A054977(A249507(n+2)²)` -/
def P12879571487251121476.Spec : Prop :=
  ∀ n, P12879571487251121476.a n = A078880 (n + 1)

end A078880

/-!
# A078881: Size of the largest subset S of {1,2,3,...,n} with the property that if i and j are distinct elements of S then i XOR j is not in S, where XOR is the bitwise exclusive-OR operator.

The programs for A078881, the canonical program `A078881.P16027770372899334795` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078881 has offset 1).

The definition of A078881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078881.P16027770372899334795

`A006165(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078881

/-- `A006165(n+2)` -/
def P16027770372899334795.Spec : Prop :=
  ∀ n, P16027770372899334795.a n = A078881 (n + 1)

theorem P16027770372899334795.correct : P16027770372899334795.Spec := by
  intro n
  simp only [A078881, Nat.add_sub_cancel]

end A078881

/-! ## A078881.P16882947044040066077

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078881.P16882947044040066077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P16882947044040066077

namespace A078881

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P16882947044040066077.Spec : Prop :=
  ∀ n, (P16882947044040066077.a n : ℤ) = A078881 (n + 1)

end A078881

/-! ## A078881.P16307760548869721247

`∑[a(floor((n-1)/2))²]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078881.P16307760548869721247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P16307760548869721247

namespace A078881

/-- `∑[a(floor((n-1)/2))²]` -/
def P16307760548869721247.Spec : Prop :=
  ∀ n, (P16307760548869721247.a n : ℤ) = A078881 (n + 1)

end A078881

/-! ## A078881.P8535262255281862998

`∑[char[2^floor(log2(n+1))+n]]+1`
-/

namespace A078881.P8535262255281862998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A078881.P8535262255281862998

namespace A078881

/-- `∑[char[2^floor(log2(n+1))+n]]+1` -/
def P8535262255281862998.Spec : Prop :=
  ∀ n, (P8535262255281862998.a n : ℤ) = A078881 (n + 1)

end A078881

/-! ## A078881.P9944214769654963907

`∑[A049773(n+1)%2]`
-/

namespace A078881.P9944214769654963907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049773 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P9944214769654963907

namespace A078881

/-- `∑[A049773(n+1)%2]` -/
def P9944214769654963907.Spec : Prop :=
  ∀ n, P9944214769654963907.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P11710508729075893656

`∑[char[comp[A206332(n+1)]]]`
-/

namespace A078881.P11710508729075893656
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P11710508729075893656

namespace A078881

/-- `∑[char[comp[A206332(n+1)]]]` -/
def P11710508729075893656.Spec : Prop :=
  ∀ n, (P11710508729075893656.a n : ℤ) = A078881 (n + 1)

end A078881

/-! ## A078881.P197413363518437566

`∑[gcd(2, A030109(n+1))-1]`
-/

namespace A078881.P197413363518437566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A030109 (n + 1)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P197413363518437566

namespace A078881

/-- `∑[gcd(2, A030109(n+1))-1]` -/
def P197413363518437566.Spec : Prop :=
  ∀ n, P197413363518437566.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P5371083350921117072

`∑[A059841(1-a(ceil(n/2)-1))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078881.P5371083350921117072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  A059841 (1 - f1 (⌈(n : ℚ) / 2⌉ - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P5371083350921117072

namespace A078881

/-- `∑[A059841(1-a(ceil(n/2)-1))]` -/
def P5371083350921117072.Spec : Prop :=
  ∀ n, P5371083350921117072.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P17339823206133078366

`∑[A106344(1-a(ceil(n/2)-1))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078881.P17339823206133078366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  A106344 (1 - f1 (⌈(n : ℚ) / 2⌉ - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P17339823206133078366

namespace A078881

/-- `∑[A106344(1-a(ceil(n/2)-1))]` -/
def P17339823206133078366.Spec : Prop :=
  ∀ n, P17339823206133078366.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P8670222152374689037

`∑[A196563(1-a(ceil(n/2)-1))]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A078881.P8670222152374689037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  A196563 (1 - f1 (⌈(n : ℚ) / 2⌉ - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078881.P8670222152374689037

namespace A078881

/-- `∑[A196563(1-a(ceil(n/2)-1))]` -/
def P8670222152374689037.Spec : Prop :=
  ∀ n, P8670222152374689037.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P17865972601931742901

`A144396(n+1)%A080637(n+1)`
-/

namespace A078881.P17865972601931742901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A080637 (n + 1))

end

end A078881.P17865972601931742901

namespace A078881

/-- `A144396(n+1)%A080637(n+1)` -/
def P17865972601931742901.Spec : Prop :=
  ∀ n, P17865972601931742901.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P14573077507786818206

`A023444(A275202(n+2)-n)`
-/

namespace A078881.P14573077507786818206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A275202 (n + 2) - (n : ℤ)).toNat

end

end A078881.P14573077507786818206

namespace A078881

/-- `A023444(A275202(n+2)-n)` -/
def P14573077507786818206.Spec : Prop :=
  ∀ n, P14573077507786818206.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P1924811340473849715

`A352227(n+3)/2`
-/

namespace A078881.P1924811340473849715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352227 (n + 3) : ℚ) / 2

end

end A078881.P1924811340473849715

namespace A078881

/-- `A352227(n+3)/2` -/
def P1924811340473849715.Spec : Prop :=
  ∀ n, P1924811340473849715.a n = (A078881 (n + 1) : ℚ)

end A078881

/-! ## A078881.P16980143750717520532

`A060973(A007378(n+2))`
-/

namespace A078881.P16980143750717520532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A007378 (n + 2)).toNat

end

end A078881.P16980143750717520532

namespace A078881

/-- `A060973(A007378(n+2))` -/
def P16980143750717520532.Spec : Prop :=
  ∀ n, P16980143750717520532.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P1738735421148680730

`A060973(A080645(n+2))`
-/

namespace A078881.P1738735421148680730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A080645 (n + 2)).toNat

end

end A078881.P1738735421148680730

namespace A078881

/-- `A060973(A080645(n+2))` -/
def P1738735421148680730.Spec : Prop :=
  ∀ n, P1738735421148680730.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P11384750665778984037

`A060973(A079905(n+1)+1)`
-/

namespace A078881.P11384750665778984037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079905 (n + 1) + 1).toNat

end

end A078881.P11384750665778984037

namespace A078881

/-- `A060973(A079905(n+1)+1)` -/
def P11384750665778984037.Spec : Prop :=
  ∀ n, P11384750665778984037.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P7245403499379141072

`A060973(A080637(n+1)+1)`
-/

namespace A078881.P7245403499379141072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A080637 (n + 1) + 1).toNat

end

end A078881.P7245403499379141072

namespace A078881

/-- `A060973(A080637(n+1)+1)` -/
def P7245403499379141072.Spec : Prop :=
  ∀ n, P7245403499379141072.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P7348664184577440308

`A060973(A115836(n+1)+2)`
-/

namespace A078881.P7348664184577440308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A115836 (n + 1) + 2).toNat

end

end A078881.P7348664184577440308

namespace A078881

/-- `A060973(A115836(n+1)+2)` -/
def P7348664184577440308.Spec : Prop :=
  ∀ n, P7348664184577440308.a n = A078881 (n + 1)

end A078881

/-! ## A078881.P4336018137455317685

`A060973(A060973(n+1)+n+2)`
-/

namespace A078881.P4336018137455317685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A060973 (n + 1) + (n + 2 : ℤ)).toNat

end

end A078881.P4336018137455317685

namespace A078881

/-- `A060973(A060973(n+1)+n+2)` -/
def P4336018137455317685.Spec : Prop :=
  ∀ n, P4336018137455317685.a n = A078881 (n + 1)

end A078881

/-!
# A078882: Number of subsets S of {1,2,3,...,n} with the largest possible cardinality consistent with the requirement that if i and j are distinct elements of S then i XOR j is not in S. XOR is the bitwise exclusive-OR operator.

The programs for A078882, there is no canonical definition to state claims against.
-/

/-! ## A078882.P5369580860145259794

`gcd(∑[n], A132197(A284516(n+1)))`
-/

namespace A078882.P5369580860145259794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A132197 (A284516 (n + 1)).toNat)

end

end A078882.P5369580860145259794

/-!
# A078883: Lesser member p of a twin prime pair such that p+1 is 3-smooth.

The programs for A078883, there is no canonical definition to state claims against.
-/

/-! ## A078883.P12028392207149293372

`A027856(n+1)-1`
-/

namespace A078883.P12028392207149293372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027856 (n + 1) - 1

end

end A078883.P12028392207149293372

/-! ## A078883.P4934181641377275135

`A078884(n+1)-2`
-/

namespace A078883.P4934181641377275135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (n + 1) - 2

end

end A078883.P4934181641377275135

/-! ## A078883.P8202550289149165685

`record[A078884(A141256(n))-2]`
-/

namespace A078883.P8202550289149165685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (A141256 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078883.P8202550289149165685

/-! ## A078883.P13553542329682932454

`A033999(2*n+1)+A027856(n+1)`
-/

namespace A078883.P13553542329682932454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A027856 (n + 1)

end

end A078883.P13553542329682932454

/-! ## A078883.P16722094013929378929

`A099837(3*n+1)+A027856(n+1)`
-/

namespace A078883.P16722094013929378929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 1) + A027856 (n + 1)

end

end A078883.P16722094013929378929

/-!
# A078884: Greater member p of a twin prime pair such that p-1 is 3-smooth.

The programs for A078884, there is no canonical definition to state claims against.
-/

/-! ## A078884.P4411715687441607770

`A027856(n+1)+1`
-/

namespace A078884.P4411715687441607770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027856 (n + 1) + 1

end

end A078884.P4411715687441607770

/-! ## A078884.P15650456012992263152

`A078883(n+1)+2`
-/

namespace A078884.P15650456012992263152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078883 (n + 1) + 2

end

end A078884.P15650456012992263152

/-! ## A078884.P6141405738289183388

`-xor(A027856(-xor(n, -1)), -1)`
-/

namespace A078884.P6141405738289183388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A027856 (-Int.xor (n : ℤ) (-1)).toNat) (-1)

end

end A078884.P6141405738289183388

/-! ## A078884.P7680349443553976554

`or(1, A027856(A008619(2*n)))`
-/

namespace A078884.P7680349443553976554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027856 (A008619 (2 * n)).toNat)

end

end A078884.P7680349443553976554

/-! ## A078884.P17589298281967027213

`A060211(A028310(n))-floor(acot(n)²)`
-/

namespace A078884.P17589298281967027213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060211 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A078884.P17589298281967027213

/-!
# A078892: Numbers n such that phi(n) - 1 is prime, where phi is Euler's totient function (A000010).

The programs for A078892, the canonical program `A078892.P5098149290762617717` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078892 has offset 1).

The definition of A078892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078892.P9817847591171139159

`∪[A006512(n+1), A078893(n+1)]`
-/

namespace A078892.P9817847591171139159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078892.P9817847591171139159

namespace A078892

/-- `∪[A006512(n+1), A078893(n+1)]` -/
def P9817847591171139159.Spec : Prop :=
  ∀ n, (P9817847591171139159.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P2638991908769405155

`∪[A072281(n+1), A078893(n+1)]`
-/

namespace A078892.P2638991908769405155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078892.P2638991908769405155

namespace A078892

/-- `∪[A072281(n+1), A078893(n+1)]` -/
def P2638991908769405155.Spec : Prop :=
  ∀ n, (P2638991908769405155.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P5098149290762617717

`eq[4, A323161(A000010(C(n, n²)+n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078892

/-- `eq[4, A323161(A000010(C(n, n²)+n))]` -/
def P5098149290762617717.Spec : Prop :=
  ∀ n, (P5098149290762617717.a n : ℤ) = A078892 (n + 1)

theorem P5098149290762617717.correct : P5098149290762617717.Spec := by
  intro n
  simp only [A078892, Nat.add_sub_cancel]

end A078892

/-! ## A078892.P13562543960809628998

`eq[1, A064722(A000010(n+1))]+1`
-/

namespace A078892.P13562543960809628998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078892.P13562543960809628998

namespace A078892

/-- `eq[1, A064722(A000010(n+1))]+1` -/
def P13562543960809628998.Spec : Prop :=
  ∀ n, (P13562543960809628998.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P8980407940038635567

`eq[1, A117929(A000010(n+1)+1)]+1`
-/

namespace A078892.P8980407940038635567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078892.P8980407940038635567

namespace A078892

/-- `eq[1, A117929(A000010(n+1)+1)]+1` -/
def P8980407940038635567.Spec : Prop :=
  ∀ n, (P8980407940038635567.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P4387196422971507704

`eq[1, A003415(A000010(n+1)-1)]+1`
-/

namespace A078892.P4387196422971507704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000010 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078892.P4387196422971507704

namespace A078892

/-- `eq[1, A003415(A000010(n+1)-1)]+1` -/
def P4387196422971507704.Spec : Prop :=
  ∀ n, (P4387196422971507704.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P2807122256727744671

`eq[1, A032741(A000010(n+1)-1)]+1`
-/

namespace A078892.P2807122256727744671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000010 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078892.P2807122256727744671

namespace A078892

/-- `eq[1, A032741(A000010(n+1)-1)]+1` -/
def P2807122256727744671.Spec : Prop :=
  ∀ n, (P2807122256727744671.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P12107430206923034592

`eq[2, A073610(A000010(n+1)+1)]+1`
-/

namespace A078892.P12107430206923034592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078892.P12107430206923034592

namespace A078892

/-- `eq[2, A073610(A000010(n+1)+1)]+1` -/
def P12107430206923034592.Spec : Prop :=
  ∀ n, (P12107430206923034592.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P567659873098329554

`eq[2, A319410(A000010(abs(1-n)+1)-1)]`
-/

namespace A078892.P567659873098329554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A000010 (|1 - (n : ℤ)| + 1).toNat - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078892.P567659873098329554

namespace A078892

/-- `eq[2, A319410(A000010(abs(1-n)+1)-1)]` -/
def P567659873098329554.Spec : Prop :=
  ∀ n, (P567659873098329554.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P18416791815449877353

`eq[1, ∑{e}[A109606(n+1), #]]+1`
-/

namespace A078892.P18416791815449877353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078892.P18416791815449877353

namespace A078892

/-- `eq[1, ∑{e}[A109606(n+1), #]]+1` -/
def P18416791815449877353.Spec : Prop :=
  ∀ n, (P18416791815449877353.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P1608357638816795180

`eq[1, A040081(A225530(n))+1]`
-/

namespace A078892.P1608357638816795180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A225530 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078892.P1608357638816795180

namespace A078892

/-- `eq[1, A040081(A225530(n))+1]` -/
def P1608357638816795180.Spec : Prop :=
  ∀ n, (P1608357638816795180.a n : ℤ) = A078892 (n + 1)

end A078892

/-! ## A078892.P1063130125658001349

`eq[1, A003415(A225530(n)-1)]`
-/

namespace A078892.P1063130125658001349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A225530 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078892.P1063130125658001349

namespace A078892

/-- `eq[1, A003415(A225530(n)-1)]` -/
def P1063130125658001349.Spec : Prop :=
  ∀ n, (P1063130125658001349.a n : ℤ) = A078892 (n + 1)

end A078892

/-!
# A078893: Composite numbers k such that phi(k) - 1 is prime, where phi is Euler's totient function (A000010).

The programs for A078893, the canonical program `A078893.P7358594044589059209` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078893 has offset 1).

The definition of A078893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078893.P7358594044589059209

`filter[A078892(n+1), A005171(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078893

/-- `filter[A078892(n+1), A005171(#)]` -/
def P7358594044589059209.Spec : Prop :=
  ∀ n, P7358594044589059209.a n = A078893 (n + 1)

theorem P7358594044589059209.correct : P7358594044589059209.Spec := by
  intro n
  simp only [A078893, Nat.add_sub_cancel]

end A078893

/-! ## A078893.P12627930454920043713

`filter[A078892(n+1), A066247(#)]`
-/

namespace A078893.P12627930454920043713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A078893.P12627930454920043713

namespace A078893

/-- `filter[A078892(n+1), A066247(#)]` -/
def P12627930454920043713.Spec : Prop :=
  ∀ n, P12627930454920043713.a n = A078893 (n + 1)

end A078893

/-! ## A078893.P13801012047204535899

`filter[A078892(1+n), A283265(#)]`
-/

namespace A078893.P13801012047204535899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A078893.P13801012047204535899

namespace A078893

/-- `filter[A078892(1+n), A283265(#)]` -/
def P13801012047204535899.Spec : Prop :=
  ∀ n, P13801012047204535899.a n = A078893 (n + 1)

end A078893

/-! ## A078893.P8912708950077006921

`∩[A002808(n+1), A078892(n+1)]`
-/

namespace A078893.P8912708950077006921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P8912708950077006921

namespace A078893

/-- `∩[A002808(n+1), A078892(n+1)]` -/
def P8912708950077006921.Spec : Prop :=
  ∀ n, (P8912708950077006921.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P3933918478495515527

`∩[A018252(n+1), A078892(n+1)]`
-/

namespace A078893.P3933918478495515527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P3933918478495515527

namespace A078893

/-- `∩[A018252(n+1), A078892(n+1)]` -/
def P3933918478495515527.Spec : Prop :=
  ∀ n, (P3933918478495515527.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P11921848343675212658

`∩[A078892(n+1), A141468(n+1)]`
-/

namespace A078893.P11921848343675212658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P11921848343675212658

namespace A078893

/-- `∩[A078892(n+1), A141468(n+1)]` -/
def P11921848343675212658.Spec : Prop :=
  ∀ n, (P11921848343675212658.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P4342925305695366211

`∩[A056653(n+1), A078892(n+1)]`
-/

namespace A078893.P4342925305695366211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P4342925305695366211

namespace A078893

/-- `∩[A056653(n+1), A078892(n+1)]` -/
def P4342925305695366211.Spec : Prop :=
  ∀ n, (P4342925305695366211.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P584890884106186468

`∩[A065090(n+1), A078892(n+1)]`
-/

namespace A078893.P584890884106186468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P584890884106186468

namespace A078893

/-- `∩[A065090(n+1), A078892(n+1)]` -/
def P584890884106186468.Spec : Prop :=
  ∀ n, (P584890884106186468.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P2099392721721538095

`∩[A078892(n+1), A171581(n+1)]`
-/

namespace A078893.P2099392721721538095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P2099392721721538095

namespace A078893

/-- `∩[A078892(n+1), A171581(n+1)]` -/
def P2099392721721538095.Spec : Prop :=
  ∀ n, (P2099392721721538095.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P3158842067772055722

`∩[A078892(n+1), A173905(n+1)]`
-/

namespace A078893.P3158842067772055722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078893.P3158842067772055722

namespace A078893

/-- `∩[A078892(n+1), A173905(n+1)]` -/
def P3158842067772055722.Spec : Prop :=
  ∀ n, (P3158842067772055722.a n : ℤ) = A078893 (n + 1)

end A078893

/-! ## A078893.P15552978378302428984

`eq[A040081(A225530(n)), A055671(n)]`
-/

namespace A078893.P15552978378302428984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078893.P15552978378302428984

namespace A078893

/-- `eq[A040081(A225530(n)), A055671(n)]` -/
def P15552978378302428984.Spec : Prop :=
  ∀ n, (P15552978378302428984.a n : ℤ) = A078893 (n + 1)

end A078893

/-!
# A078894: Start with a list of all the primes and repeatedly add the first element A of the list to the sequence and strike off every A-th element of the list.

The programs for A078894, there is no canonical definition to state claims against.
-/

/-! ## A078894.P3200135899053696566

`A000040(record[log2(A016020(2*n+1))])`
-/

namespace A078894.P3200135899053696566
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A016020 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A078894.P3200135899053696566

/-! ## A078894.P5678666294108565022

`A000040(lt[A349049(n+3), A348999(3*n+2)])`
-/

namespace A078894.P5678666294108565022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349049 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348999 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A078894.P5678666294108565022

/-! ## A078894.P11046131336667814405

`p?[A238015(n)*A350945(n+1)]`
-/

namespace A078894.P11046131336667814405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238015 n * A350945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078894.P11046131336667814405

/-! ## A078894.P335903216888040467

`A008578(eq[2, A333808(3*n+4)])`
-/

namespace A078894.P335903216888040467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333808 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078894.P335903216888040467

/-! ## A078894.P16626779239350379308

`A000040(lt[A328966(3*n+2), A108103(n+1)])`
-/

namespace A078894.P16626779239350379308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328966 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A078894.P16626779239350379308

/-!
# A078896: Number of times the smallest prime factor of n is a factor in all numbers <= n; a(1) = 1.

The programs for A078896, there is no canonical definition to state claims against.
-/

/-! ## A078896.P15357885852783738672

`val(A014682(A103517(n))!, A057237(n+1)+1)`
-/

namespace A078896.P15357885852783738672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A014682 (A103517 n).toNat).toNat) (A057237 (n + 1) + 1).toNat

end

end A078896.P15357885852783738672

/-! ## A078896.P8498041574711653356

`val(A348776(n+1)!, A020639(A348776(n+1)))`
-/

namespace A078896.P8498041574711653356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A348776 (n + 1)).toNat) (A020639 (A348776 (n + 1)).toNat).toNat

end

end A078896.P8498041574711653356

/-! ## A078896.P18113011051656324673

`val((n+2)!, A020639(A033286(n+1)))`
-/

namespace A078896.P18113011051656324673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (n + 2)) (A020639 (A033286 (n + 1)).toNat).toNat

end

end A078896.P18113011051656324673

/-! ## A078896.P3935769877024383595

`val((n+2)!, A020639(A348776(n+1)))`
-/

namespace A078896.P3935769877024383595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (n + 2)) (A020639 (A348776 (n + 1)).toNat).toNat

end

end A078896.P3935769877024383595

/-! ## A078896.P16309603841898173995

`val(∏[n+2], A020639(A129598(n+1)))`
-/

namespace A078896.P16309603841898173995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j) (A020639 (A129598 (n + 1)).toNat).toNat

end

end A078896.P16309603841898173995

/-! ## A078896.P11035572575703748490

`val(A000142(n+2), A020639(A348776(n+1)))`
-/

namespace A078896.P11035572575703748490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000142 (n + 2)).toNat (A020639 (A348776 (n + 1)).toNat).toNat

end

end A078896.P11035572575703748490

/-!
# A078897: Number of times the greatest prime factor of n is a factor in all numbers <=n; a(1)=1.

The programs for A078897, there is no canonical definition to state claims against.
-/

/-! ## A078897.P3479212110804822408

`A102048(n+1)+A046660(A053585(n+1))`
-/

namespace A078897.P3479212110804822408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102048 (n + 1) + A046660 (A053585 (n + 1)).toNat

end

end A078897.P3479212110804822408

/-! ## A078897.P17672377472937476382

`val(A006530(n+2)*A000142(n+1), A006530(2*(n+1)))`
-/

namespace A078897.P17672377472937476382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (n + 2) * A000142 (n + 1)).toNat (A006530 (2 * (n + 1))).toNat

end

end A078897.P17672377472937476382

/-! ## A078897.P10305536526273772607

`val((n+2)!, ∏{p}[2*(n+1), #])`
-/

namespace A078897.P10305536526273772607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (n + 2)) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078897.P10305536526273772607

/-! ## A078897.P6047589974934025411

`val(∏[n+2], A111089(n+1))`
-/

namespace A078897.P6047589974934025411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j) (A111089 (n + 1)).toNat

end

end A078897.P6047589974934025411

/-! ## A078897.P3117613057881743530

`val((n+2)!, A006530(2*(n+1)))`
-/

namespace A078897.P3117613057881743530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (n + 2)) (A006530 (2 * (n + 1))).toNat

end

end A078897.P3117613057881743530

/-! ## A078897.P9856010919754037822

`val((n+2)!, A006530(n+2+n)!)`
-/

namespace A078897.P9856010919754037822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (n + 2)) (Nat.factorial (A006530 (n + 2 + n)).toNat)

end

end A078897.P9856010919754037822

/-! ## A078897.P1558652282788148681

`val(A000142(n+2), A006530(2*(n+1)))`
-/

namespace A078897.P1558652282788148681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000142 (n + 2)).toNat (A006530 (2 * (n + 1))).toNat

end

end A078897.P1558652282788148681

/-! ## A078897.P3083308075716638291

`val(A000142(n+1)*A007947(n+2), A007947(2*(n+1)))`
-/

namespace A078897.P3083308075716638291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000142 (n + 1) * A007947 (n + 2)).toNat (A007947 (2 * (n + 1))).toNat

end

end A078897.P3083308075716638291

/-!
# A078898: Number of times the smallest prime factor of n is the smallest prime factor for numbers <= n; a(0)=0, a(1)=1.

The programs for A078898, there is no canonical definition to state claims against.
-/

/-! ## A078898.P681763019465969258

`1+a(A249744(n))` with `a(0)=0, a(1)=1`
-/

namespace A078898.P681763019465969258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A249744 n).toNat

end

end A078898.P681763019465969258

/-! ## A078898.P1782689396917282571

`∑{d}[n, A305804(#)]`
-/

namespace A078898.P1782689396917282571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305804 d

end

end A078898.P1782689396917282571

/-! ## A078898.P12838170580034762509

`a(A249744(n))+1` with `a(0)=0`
-/

namespace A078898.P12838170580034762509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A249744 n).toNat + 1

end

end A078898.P12838170580034762509

/-! ## A078898.P17295146546469269464

`A246277(A249818(C(2, n)+n))`
-/

namespace A078898.P17295146546469269464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A249818 (Nat.choose 2 n + n)).toNat

end

end A078898.P17295146546469269464

/-! ## A078898.P3329560868327792429

`val(A072486(n+1), A096014(A093178(n)))`
-/

namespace A078898.P3329560868327792429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072486 (n + 1)).toNat (A096014 (A093178 n).toNat).toNat

end

end A078898.P3329560868327792429

/-! ## A078898.P15344447226122693876

`val(A072486(n+1), A020639(A233583(n+1)))`
-/

namespace A078898.P15344447226122693876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072486 (n + 1)).toNat (A020639 (A233583 (n + 1)).toNat).toNat

end

end A078898.P15344447226122693876

/-!
# A078899: Number of times the greatest prime factor of n is the greatest prime factor for numbers <=n; a(1)=1.

The programs for A078899, there is no canonical definition to state claims against.
-/

/-! ## A078899.P6866225014921743765

`A377730(n+1)+1`
-/

namespace A078899.P6866225014921743765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377730 (n + 1) + 1

end

end A078899.P6866225014921743765

/-! ## A078899.P5952481846621676063

`log2(Δ[A339509(n)])+1`
-/

namespace A078899.P5952481846621676063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339509 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ) + 1

end

end A078899.P5952481846621676063

/-! ## A078899.P16480498127371912308

`log2(A339509(n+1)-A339509(n))+1`
-/

namespace A078899.P16480498127371912308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A339509 (n + 1) - A339509 n : ℝ) + 1

end

end A078899.P16480498127371912308

/-! ## A078899.P18074686097599220025

`∑{d}[n+1, A305797(#)*A305803((n+1)/#)]`
-/

namespace A078899.P18074686097599220025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305797 d * A305803 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078899.P18074686097599220025

/-! ## A078899.P18436114173383623025

`A319694(2*(n+1))/A319694(n+1)`
-/

namespace A078899.P18436114173383623025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319694 (2 * (n + 1)) : ℚ) / (A319694 (n + 1) : ℚ)

end

end A078899.P18436114173383623025

/-! ## A078899.P17819802285637107262

`∑{d}[A298268(n+1), A305804(#)]`
-/

namespace A078899.P17819802285637107262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A305804 d

end

end A078899.P17819802285637107262

/-! ## A078899.P10167878665784827111

`A078898(A298268(n+1))`
-/

namespace A078899.P10167878665784827111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A298268 (n + 1)).toNat

end

end A078899.P10167878665784827111

/-! ## A078899.P10488392960683245767

`A000005(Δ[A339509(n)])`
-/

namespace A078899.P10488392960683245767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A078899.P10488392960683245767

/-! ## A078899.P5263516159816535289

`A000005(A339509(n+1)-A339509(n))`
-/

namespace A078899.P5263516159816535289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A339509 (n + 1) - A339509 n).toNat

end

end A078899.P5263516159816535289

/-! ## A078899.P15663827175809775673

`val(∏[A111089(n+2)], A111089(n+1))`
-/

namespace A078899.P15663827175809775673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A111089 (n + 1)).toNat

end

end A078899.P15663827175809775673

