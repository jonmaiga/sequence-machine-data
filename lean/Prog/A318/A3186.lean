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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A318601: Triangle read by rows: T(n,k) is the number of hypertrees on n unlabeled nodes with k edges, (0 <= k < n).

The programs for A318601, there is no canonical definition to state claims against.
-/

/-! ## A318601.P6048316949861193591

`xor(A151755(A226874(n)), A214568(n+1))`
-/

namespace A318601.P6048316949861193591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A226874 n).toNat) (A214568 (n + 1))

end

end A318601.P6048316949861193591

/-! ## A318601.P2087906089569869744

`A178487(A318602(n+1)^3)`
-/

namespace A318601.P2087906089569869744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A318602 (n + 1) ^ 3).toNat

end

end A318601.P2087906089569869744

/-! ## A318601.P10062179712498977369

`A214568(n+1)+val(A250236(2*n+3), 10)`
-/

namespace A318601.P10062179712498977369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214568 (n + 1) + (SequenceMachineLib.valuation (A250236 (2 * n + 3)).toNat 10 : ℤ)

end

end A318601.P10062179712498977369

/-! ## A318601.P4119572206186652787

`A374748(n)+A373838(A374631(n+1))`
-/

namespace A318601.P4119572206186652787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374748 n + A373838 (A374631 (n + 1)).toNat

end

end A318601.P4119572206186652787

/-! ## A318601.P13969000997597604185

`A086342(A270882(n))`
-/

namespace A318601.P13969000997597604185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A270882 n).toNat

end

end A318601.P13969000997597604185

/-!
# A318602: Triangle read by rows: T(n,k) is the number of rooted hypertrees on n unlabeled nodes with k edges, (0 <= k < n).

The programs for A318602, there is no canonical definition to state claims against.
-/

/-! ## A318602.P12958875832835300167

`A048766(A211608(n)*A263752(n+1))`
-/

namespace A318602.P12958875832835300167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A211608 n * A263752 (n + 1)).toNat

end

end A318602.P12958875832835300167

/-! ## A318602.P16041060568593009339

`A159918(A270882(n))*A347045(n+1)`
-/

namespace A318602.P16041060568593009339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A270882 n).toNat * A347045 (n + 1)

end

end A318602.P16041060568593009339

/-! ## A318602.P4609374572193699210

`A108458(n+1)-A086016(A028771(2*(n+1)))`
-/

namespace A318602.P4609374572193699210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (n + 1) - A086016 (A028771 (2 * (n + 1))).toNat

end

end A318602.P4609374572193699210

/-! ## A318602.P15090156227696147355

`A000120(A278073(n))`
-/

namespace A318602.P15090156227696147355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A278073 n).toNat

end

end A318602.P15090156227696147355

/-! ## A318602.P15480916303783427798

`A177903(A256116(n))`
-/

namespace A318602.P15480916303783427798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A256116 n).toNat

end

end A318602.P15480916303783427798

/-!
# A318603: Numbers k such that 471*2^k+1 is prime.

The programs for A318603, there is no canonical definition to state claims against.
-/

/-! ## A318603.P652221750079263174

`A004684(A227360(n))+n+1`
-/

namespace A318603.P652221750079263174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004684 (A227360 n).toNat + (n + 1 : ℤ)

end

end A318603.P652221750079263174

/-! ## A318603.P10096841453639687489

`A329138(n+1)+A002636(A121653(3*n))`
-/

namespace A318603.P10096841453639687489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329138 (n + 1) + A002636 (A121653 (3 * n)).toNat

end

end A318603.P10096841453639687489

/-!
# A318606: Numbers of the form p^k-k for some prime, p, and integer k >= 0.

The programs for A318606, there is no canonical definition to state claims against.
-/

/-! ## A318606.P10612100330033399512

`∪[A006093(n+1), A269769(n+1)]`
-/

namespace A318606.P10612100330033399512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318606.P10612100330033399512

/-! ## A318606.P15320204292129918794

`∪[A165972(n+1), A269769(n+1)]`
-/

namespace A318606.P15320204292129918794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318606.P15320204292129918794

/-! ## A318606.P12043377179007329215

`∪[A040976(n+1)+1, A269769(n+1)]`
-/

namespace A318606.P12043377179007329215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318606.P12043377179007329215

/-! ## A318606.P7714753999447018873

`∪[A000010(A001748(n+1)/3), A269769(n+1)]`
-/

namespace A318606.P7714753999447018873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318606.P7714753999447018873

/-! ## A318606.P737072887947811394

`∪[A000010(A014692(n+1)+n), A269769(n+1)]`
-/

namespace A318606.P737072887947811394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014692 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318606.P737072887947811394

/-! ## A318606.P11011294114900285085

`∪[A000010(A014688(n+1)-(n+1)), A269769(n+1)]`
-/

namespace A318606.P11011294114900285085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318606.P11011294114900285085

/-!
# A318607: Triangle read by rows: T(n,k) is the number of sets of rooted hypertrees on a total of n unlabeled nodes with a total of k edges, (0 <= k < n).

The programs for A318607, there is no canonical definition to state claims against.
-/

/-! ## A318607.P3387319304418976239

`A091187(n+1)+A018843(A263752(n+1))`
-/

namespace A318607.P3387319304418976239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (n + 1) + A018843 (A263752 (n + 1)).toNat

end

end A318607.P3387319304418976239

/-! ## A318607.P10158154819053332692

`A091187(n+1)+A014083(A244172(n+9))`
-/

namespace A318607.P10158154819053332692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (n + 1) + A014083 (A244172 (n + 9)).toNat

end

end A318607.P10158154819053332692

/-!
# A318608: Moebius function mu(n) defined for the Gaussian integers.

The programs for A318608, the canonical program `A318608.P7923253369301000760` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318608 has offset 1).

The definition of A318608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318608.P7923253369301000760

`(1-and(2, n))*A323239(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318608

/-- `(1-and(2, n))*A323239(n+1)` -/
def P7923253369301000760.Spec : Prop :=
  ∀ n, P7923253369301000760.a n = A318608 (n + 1)

theorem P7923253369301000760.correct : P7923253369301000760.Spec := by
  intro n
  simp only [A318608, Nat.add_sub_cancel]

end A318608

/-! ## A318608.P17335211551131239006

`∑[(-1)^∑[n]]*A008966(n+1)`
-/

namespace A318608.P17335211551131239006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008966 (n + 1)

end

end A318608.P17335211551131239006

namespace A318608

/-- `∑[(-1)^∑[n]]*A008966(n+1)` -/
def P17335211551131239006.Spec : Prop :=
  ∀ n, P17335211551131239006.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P6117958896384356999

`A008966(2*(n+1))/∏[(-1)^n]`
-/

namespace A318608.P6117958896384356999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008966 (2 * (n + 1)) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A318608.P6117958896384356999

namespace A318608

/-- `A008966(2*(n+1))/∏[(-1)^n]` -/
def P6117958896384356999.Spec : Prop :=
  ∀ n, P6117958896384356999.a n = (A318608 (n + 1) : ℚ)

end A318608

/-! ## A318608.P7554748821947288199

`(A003968(n+1)%2-and(2, n))%2`
-/

namespace A318608.P7554748821947288199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A003968 (n + 1)) 2 - (Nat.land 2 n : ℤ)) 2

end

end A318608.P7554748821947288199

namespace A318608

/-- `(A003968(n+1)%2-and(2, n))%2` -/
def P7554748821947288199.Spec : Prop :=
  ∀ n, P7554748821947288199.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P8476456827060995318

`(1-and(2, n))*abs(A008683(2*(n+1)))`
-/

namespace A318608.P8476456827060995318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * |A008683 (2 * (n + 1))|

end

end A318608.P8476456827060995318

namespace A318608

/-- `(1-and(2, n))*abs(A008683(2*(n+1)))` -/
def P8476456827060995318.Spec : Prop :=
  ∀ n, P8476456827060995318.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P18181654694657607178

`A101455(A254503(n+1))`
-/

namespace A318608.P18181654694657607178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A254503 (n + 1)).toNat

end

end A318608.P18181654694657607178

namespace A318608

/-- `A101455(A254503(n+1))` -/
def P18181654694657607178.Spec : Prop :=
  ∀ n, P18181654694657607178.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P721046430869438584

`A101455(A293303(n+1))`
-/

namespace A318608.P721046430869438584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A293303 (n + 1)).toNat

end

end A318608.P721046430869438584

namespace A318608

/-- `A101455(A293303(n+1))` -/
def P721046430869438584.Spec : Prop :=
  ∀ n, P721046430869438584.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P773278323323014543

`A056594(A254503(n+1)-1)`
-/

namespace A318608.P773278323323014543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A254503 (n + 1) - 1).toNat

end

end A318608.P773278323323014543

namespace A318608

/-- `A056594(A254503(n+1)-1)` -/
def P773278323323014543.Spec : Prop :=
  ∀ n, P773278323323014543.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P10439502194622696186

`A008966(n+1)*A056594(n)`
-/

namespace A318608.P10439502194622696186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A056594 n

end

end A318608.P10439502194622696186

namespace A318608

/-- `A008966(n+1)*A056594(n)` -/
def P10439502194622696186.Spec : Prop :=
  ∀ n, P10439502194622696186.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P7910889376315680303

`A056594(n)*A078461(n+1)`
-/

namespace A318608.P7910889376315680303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A078461 (n + 1)

end

end A318608.P7910889376315680303

namespace A318608

/-- `A056594(n)*A078461(n+1)` -/
def P7910889376315680303.Spec : Prop :=
  ∀ n, P7910889376315680303.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P9761814321567814382

`A008966(n+1)*A131379(n)`
-/

namespace A318608.P9761814321567814382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A131379 n

end

end A318608.P9761814321567814382

namespace A318608

/-- `A008966(n+1)*A131379(n)` -/
def P9761814321567814382.Spec : Prop :=
  ∀ n, P9761814321567814382.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P4501250553229209766

`A056594(n)*A114643(n+1)`
-/

namespace A318608.P4501250553229209766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A114643 (n + 1)

end

end A318608.P4501250553229209766

namespace A318608

/-- `A056594(n)*A114643(n+1)` -/
def P4501250553229209766.Spec : Prop :=
  ∀ n, P4501250553229209766.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P16771863352863747648

`A091069(n+1)*A143431(n)`
-/

namespace A318608.P16771863352863747648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091069 (n + 1) * A143431 n

end

end A318608.P16771863352863747648

namespace A318608

/-- `A091069(n+1)*A143431(n)` -/
def P16771863352863747648.Spec : Prop :=
  ∀ n, P16771863352863747648.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P16816331367262110158

`A091069(n+1)*A143621(n)`
-/

namespace A318608.P16816331367262110158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091069 (n + 1) * A143621 n

end

end A318608.P16816331367262110158

namespace A318608

/-- `A091069(n+1)*A143621(n)` -/
def P16816331367262110158.Spec : Prop :=
  ∀ n, P16816331367262110158.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P18186078067923103635

`A056594(n)*A323154(n+1)`
-/

namespace A318608.P18186078067923103635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A323154 (n + 1)

end

end A318608.P18186078067923103635

namespace A318608

/-- `A056594(n)*A323154(n+1)` -/
def P18186078067923103635.Spec : Prop :=
  ∀ n, P18186078067923103635.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P11091285710371146647

`A056594(n)*A353559(n+1)`
-/

namespace A318608.P11091285710371146647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A353559 (n + 1)

end

end A318608.P11091285710371146647

namespace A318608

/-- `A056594(n)*A353559(n+1)` -/
def P11091285710371146647.Spec : Prop :=
  ∀ n, P11091285710371146647.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P17554264017579798558

`A056594(n)*A353627(n+1)`
-/

namespace A318608.P17554264017579798558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A353627 (n + 1)

end

end A318608.P17554264017579798558

namespace A318608

/-- `A056594(n)*A353627(n+1)` -/
def P17554264017579798558.Spec : Prop :=
  ∀ n, P17554264017579798558.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P13446089646507813426

`A056594(n)*A359155(n+1)`
-/

namespace A318608.P13446089646507813426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A359155 (n + 1)

end

end A318608.P13446089646507813426

namespace A318608

/-- `A056594(n)*A359155(n+1)` -/
def P13446089646507813426.Spec : Prop :=
  ∀ n, P13446089646507813426.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P10564733120534355712

`A056594(n)*A359590(n+1)`
-/

namespace A318608.P10564733120534355712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A359590 (n + 1)

end

end A318608.P10564733120534355712

namespace A318608

/-- `A056594(n)*A359590(n+1)` -/
def P10564733120534355712.Spec : Prop :=
  ∀ n, P10564733120534355712.a n = A318608 (n + 1)

end A318608

/-! ## A318608.P9121851386711372148

`A056594(n)*A359592(n+1)`
-/

namespace A318608.P9121851386711372148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A359592 (n + 1)

end

end A318608.P9121851386711372148

namespace A318608

/-- `A056594(n)*A359592(n+1)` -/
def P9121851386711372148.Spec : Prop :=
  ∀ n, P9121851386711372148.a n = A318608 (n + 1)

end A318608

/-!
# A318609: a(1) = 2, a(2) = 4, a(3) = 6; for n > 3, a(n) = 3*a(n-1) - 3*a(n-2) + 9*a(n-3).

The programs for A318609, the canonical program `A318609.P2125797112834406540` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318609 has offset 1).

The definition of A318609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+9*a(n-3)` (program `A318609.P2125797112834406540`, by `A318609.P2125797112834406540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318609.P2125797112834406540

`3*a(n-1)-3*a(n-2)+9*a(n-3)` with `a(0)=2, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318609

/-- `3*a(n-1)-3*a(n-2)+9*a(n-3)` -/
def P2125797112834406540.Spec : Prop :=
  ∀ n, P2125797112834406540.a n = A318609 (n + 1)

theorem P2125797112834406540.correct : P2125797112834406540.Spec := by
  intro n
  simp only [A318609, Nat.add_sub_cancel]

end A318609

/-! ## A318609.P17154154823465335005

`3^((n+1)/2-1)*(2*cos((n+1)*π/2-2*π/3)+3^((n+1)/2))`
-/

namespace A318609.P17154154823465335005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n + 1 : ℚ) / 2 - 1 : ℝ) * (2 * Real.cos ((n + 1 : ℝ) * Real.pi / 2 - 2 * Real.pi / 3) + (3 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ))

end

end A318609.P17154154823465335005

namespace A318609

/-- `3^((n+1)/2-1)*(2*cos((n+1)*π/2-2*π/3)+3^((n+1)/2))` -/
def P17154154823465335005.Spec : Prop :=
  ∀ n, P17154154823465335005.a n = (A318609 (n + 1) : ℝ)

end A318609

/-! ## A318609.P10222390064873490612

`a(n-1)+2*A101990(n)` with `a(0)=2`
-/

namespace A318609.P10222390064873490612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A101990 n

end

end A318609.P10222390064873490612

namespace A318609

/-- `a(n-1)+2*A101990(n)` -/
def P10222390064873490612.Spec : Prop :=
  ∀ n, P10222390064873490612.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P821750008810847803

`ogf((2-2x)/(1-3x+3x^2-9x^3))`
-/

namespace A318609.P821750008810847803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -3, 3, -9] n

end

end A318609.P821750008810847803

namespace A318609

/-- `ogf((2-2x)/(1-3x+3x^2-9x^3))` -/
def P821750008810847803.Spec : Prop :=
  ∀ n, P821750008810847803.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P11941415416821297805

`A287479(n+1)+3^n`
-/

namespace A318609.P11941415416821297805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 (n + 1) + (3 ^ n : ℤ)

end

end A318609.P11941415416821297805

namespace A318609

/-- `A287479(n+1)+3^n` -/
def P11941415416821297805.Spec : Prop :=
  ∀ n, P11941415416821297805.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P13472185176071258757

`3^n+(-3)^A004526(n)`
-/

namespace A318609.P13472185176071258757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) + (-3 : ℚ) ^ (A004526 n : ℤ)

end

end A318609.P13472185176071258757

namespace A318609

/-- `3^n+(-3)^A004526(n)` -/
def P13472185176071258757.Spec : Prop :=
  ∀ n, P13472185176071258757.a n = (A318609 (n + 1) : ℚ)

end A318609

/-! ## A318609.P8108924974238169018

`A003946(n)-3*a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A318609.P8108924974238169018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A003946 n - 3 * a (n - 2)

end

end A318609.P8108924974238169018

namespace A318609

/-- `A003946(n)-3*a(n-2)` -/
def P8108924974238169018.Spec : Prop :=
  ∀ n, P8108924974238169018.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P14233901639800033387

`A073948(n+1)+Δ[A073949(n+1)]`
-/

namespace A318609.P14233901639800033387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1) + (f1 (n + 1) - f1 n)

end

end A318609.P14233901639800033387

namespace A318609

/-- `A073948(n+1)+Δ[A073949(n+1)]` -/
def P14233901639800033387.Spec : Prop :=
  ∀ n, P14233901639800033387.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P8178809074573487106

`A073950(n+1)+Δ[A073951(n+1)]`
-/

namespace A318609.P8178809074573487106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1) + (f1 (n + 1) - f1 n)

end

end A318609.P8178809074573487106

namespace A318609

/-- `A073950(n+1)+Δ[A073951(n+1)]` -/
def P8178809074573487106.Spec : Prop :=
  ∀ n, P8178809074573487106.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P435219888727895083

`A073948(n+1)+2*A073950(n+1)`
-/

namespace A318609.P435219888727895083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1) + 2 * A073950 (n + 1)

end

end A318609.P435219888727895083

namespace A318609

/-- `A073948(n+1)+2*A073950(n+1)` -/
def P435219888727895083.Spec : Prop :=
  ∀ n, P435219888727895083.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P17307724193801379632

`2*Δ[A073951(n+1)]-A073948(n+1)`
-/

namespace A318609.P17307724193801379632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A073948 (n + 1)

end

end A318609.P17307724193801379632

namespace A318609

/-- `2*Δ[A073951(n+1)]-A073948(n+1)` -/
def P17307724193801379632.Spec : Prop :=
  ∀ n, P17307724193801379632.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P12901502667929813085

`A087211(n+1)+A287479(n+1)-A001045(n+1)`
-/

namespace A318609.P12901502667929813085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087211 (n + 1) + (A287479 (n + 1) - A001045 (n + 1))

end

end A318609.P12901502667929813085

namespace A318609

/-- `A087211(n+1)+A287479(n+1)-A001045(n+1)` -/
def P12901502667929813085.Spec : Prop :=
  ∀ n, P12901502667929813085.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P2141246797946371257

`A073948(n+1)+A073949(n+2)-A073949(n+1)`
-/

namespace A318609.P2141246797946371257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1) + (A073949 (n + 2) - A073949 (n + 1))

end

end A318609.P2141246797946371257

namespace A318609

/-- `A073948(n+1)+A073949(n+2)-A073949(n+1)` -/
def P2141246797946371257.Spec : Prop :=
  ∀ n, P2141246797946371257.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P9984006611354919874

`A073950(n+1)+A073951(n+2)-A073951(n+1)`
-/

namespace A318609.P9984006611354919874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1) + (A073951 (n + 2) - A073951 (n + 1))

end

end A318609.P9984006611354919874

namespace A318609

/-- `A073950(n+1)+A073951(n+2)-A073951(n+1)` -/
def P9984006611354919874.Spec : Prop :=
  ∀ n, P9984006611354919874.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P14433581078431888635

`A292491(n+2)/4`
-/

namespace A318609.P14433581078431888635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292491 (n + 2) : ℚ) / 4

end

end A318609.P14433581078431888635

namespace A318609

/-- `A292491(n+2)/4` -/
def P14433581078431888635.Spec : Prop :=
  ∀ n, P14433581078431888635.a n = (A318609 (n + 1) : ℚ)

end A318609

/-! ## A318609.P14659252778798123960

`Δ[A318610(n+1)/2]`
-/

namespace A318609.P14659252778798123960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318610 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318609.P14659252778798123960

namespace A318609

/-- `Δ[A318610(n+1)/2]` -/
def P14659252778798123960.Spec : Prop :=
  ∀ n, P14659252778798123960.a n = (A318609 (n + 1) : ℚ)

end A318609

/-! ## A318609.P17689339997588467774

`(A318610(n+2)-A318610(n+1))/2`
-/

namespace A318609.P17689339997588467774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318610 (n + 2) - A318610 (n + 1) : ℚ) / 2

end

end A318609.P17689339997588467774

namespace A318609

/-- `(A318610(n+2)-A318610(n+1))/2` -/
def P17689339997588467774.Spec : Prop :=
  ∀ n, P17689339997588467774.a n = (A318609 (n + 1) : ℚ)

end A318609

/-! ## A318609.P1516687221711722651

`Δ[Δ[A073947(n+1)]]-A073948(n+1)`
-/

namespace A318609.P1516687221711722651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073948 (n + 1)

end

end A318609.P1516687221711722651

namespace A318609

/-- `Δ[Δ[A073947(n+1)]]-A073948(n+1)` -/
def P1516687221711722651.Spec : Prop :=
  ∀ n, P1516687221711722651.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P1995514284836681094

`Δ[Δ[A073952(n+1)]]-A073950(n+1)`
-/

namespace A318609.P1995514284836681094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073950 (n + 1)

end

end A318609.P1995514284836681094

namespace A318609

/-- `Δ[Δ[A073952(n+1)]]-A073950(n+1)` -/
def P1995514284836681094.Spec : Prop :=
  ∀ n, P1995514284836681094.a n = A318609 (n + 1)

end A318609

/-! ## A318609.P10001314954258344237

`Δ[Δ[A101990(n+1)/2]]/2`
-/

namespace A318609.P10001314954258344237
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101990 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A318609.P10001314954258344237

namespace A318609

/-- `Δ[Δ[A101990(n+1)/2]]/2` -/
def P10001314954258344237.Spec : Prop :=
  ∀ n, P10001314954258344237.a n = (A318609 (n + 1) : ℚ)

end A318609

/-!
# A318610: a(1) = 0, a(2) = 4, a(3) = 12; for n > 3, a(n) = 3*a(n-1) - 3*a(n-2) + 9*a(n-3).

The programs for A318610, the canonical program `A318610.P8437556515789890748` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318610 has offset 1).

The definition of A318610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+9*a(n-3)` (program `A318610.P8437556515789890748`, by `A318610.P8437556515789890748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318610.P8437556515789890748

`3*a(n-1)-3*a(n-2)+9*a(n-3)` with `a(0)=0, a(1)=4, a(2)=12`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318610

/-- `3*a(n-1)-3*a(n-2)+9*a(n-3)` -/
def P8437556515789890748.Spec : Prop :=
  ∀ n, P8437556515789890748.a n = A318610 (n + 1)

theorem P8437556515789890748.correct : P8437556515789890748.Spec := by
  intro n
  simp only [A318610, Nat.add_sub_cancel]

end A318610

/-! ## A318610.P12969337291617789384

`3^((n+1)/2-1)*(2*cos((n+1)*π/2+2*π/3)+3^((n+1)/2))`
-/

namespace A318610.P12969337291617789384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n + 1 : ℚ) / 2 - 1 : ℝ) * (2 * Real.cos ((n + 1 : ℝ) * Real.pi / 2 + 2 * Real.pi / 3) + (3 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ))

end

end A318610.P12969337291617789384

namespace A318610

/-- `3^((n+1)/2-1)*(2*cos((n+1)*π/2+2*π/3)+3^((n+1)/2))` -/
def P12969337291617789384.Spec : Prop :=
  ∀ n, P12969337291617789384.a n = (A318610 (n + 1) : ℝ)

end A318610

/-! ## A318610.P14303201724122197178

`a(n-1)+2*A318609(n)` with `a(0)=0`
-/

namespace A318610.P14303201724122197178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A318609 n

end

end A318610.P14303201724122197178

namespace A318610

/-- `a(n-1)+2*A318609(n)` -/
def P14303201724122197178.Spec : Prop :=
  ∀ n, P14303201724122197178.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P3161643559445466866

`ogf(4x/(1-3x+3x^2-9x^3))`
-/

namespace A318610.P3161643559445466866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -3, 3, -9] n

end

end A318610.P3161643559445466866

namespace A318610

/-- `ogf(4x/(1-3x+3x^2-9x^3))` -/
def P3161643559445466866.Spec : Prop :=
  ∀ n, P3161643559445466866.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P18258454468050453615

`∑[A292491(n+1)/2]`
-/

namespace A318610.P18258454468050453615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292491 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318610.P18258454468050453615

namespace A318610

/-- `∑[A292491(n+1)/2]` -/
def P18258454468050453615.Spec : Prop :=
  ∀ n, P18258454468050453615.a n = (A318610 (n + 1) : ℚ)

end A318610

/-! ## A318610.P14517075752226425929

`A003946(n)-3*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A318610.P14517075752226425929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  A003946 n - 3 * a (n - 2)

end

end A318610.P14517075752226425929

namespace A318610

/-- `A003946(n)-3*a(n-2)` -/
def P14517075752226425929.Spec : Prop :=
  ∀ n, P14517075752226425929.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P10612492053742537715

`A101990(n+1)-A128019(n)`
-/

namespace A318610.P10612492053742537715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101990 (n + 1) - A128019 n

end

end A318610.P10612492053742537715

namespace A318610

/-- `A101990(n+1)-A128019(n)` -/
def P10612492053742537715.Spec : Prop :=
  ∀ n, P10612492053742537715.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P173410696816651043

`A073949(n+1)+Δ[A073947(n+1)]`
-/

namespace A318610.P173410696816651043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) + (f1 (n + 1) - f1 n)

end

end A318610.P173410696816651043

namespace A318610

/-- `A073949(n+1)+Δ[A073947(n+1)]` -/
def P173410696816651043.Spec : Prop :=
  ∀ n, P173410696816651043.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P8018196155641789616

`A073951(n+1)+Δ[A073952(n+1)]`
-/

namespace A318610.P8018196155641789616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) + (f1 (n + 1) - f1 n)

end

end A318610.P8018196155641789616

namespace A318610

/-- `A073951(n+1)+Δ[A073952(n+1)]` -/
def P8018196155641789616.Spec : Prop :=
  ∀ n, P8018196155641789616.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P10732830680704307647

`A073949(n+1)+2*A073951(n+1)`
-/

namespace A318610.P10732830680704307647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) + 2 * A073951 (n + 1)

end

end A318610.P10732830680704307647

namespace A318610

/-- `A073949(n+1)+2*A073951(n+1)` -/
def P10732830680704307647.Spec : Prop :=
  ∀ n, P10732830680704307647.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P7148717200979521412

`abs(A287479(2*n+1)-A287479(n+1))`
-/

namespace A318610.P7148717200979521412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287479 (2 * n + 1) - A287479 (n + 1)|

end

end A318610.P7148717200979521412

namespace A318610

/-- `abs(A287479(2*n+1)-A287479(n+1))` -/
def P7148717200979521412.Spec : Prop :=
  ∀ n, P7148717200979521412.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P11279106398406504401

`2*(∑[A318609(n+1)]-A318609(n+1))`
-/

namespace A318610.P11279106398406504401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A318609 (n + 1))

end

end A318610.P11279106398406504401

namespace A318610

/-- `2*(∑[A318609(n+1)]-A318609(n+1))` -/
def P11279106398406504401.Spec : Prop :=
  ∀ n, P11279106398406504401.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P11040231657743062220

`2*Δ[A073952(n+1)]-A073949(n+1)`
-/

namespace A318610.P11040231657743062220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A073949 (n + 1)

end

end A318610.P11040231657743062220

namespace A318610

/-- `2*Δ[A073952(n+1)]-A073949(n+1)` -/
def P11040231657743062220.Spec : Prop :=
  ∀ n, P11040231657743062220.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P16915816490761745100

`A000244(n)-A000244(n)/A128019(n)`
-/

namespace A318610.P16915816490761745100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) - (A000244 n : ℚ) / (A128019 n : ℚ)

end

end A318610.P16915816490761745100

namespace A318610

/-- `A000244(n)-A000244(n)/A128019(n)` -/
def P16915816490761745100.Spec : Prop :=
  ∀ n, P16915816490761745100.a n = (A318610 (n + 1) : ℚ)

end A318610

/-! ## A318610.P10397623212931135845

`A140429(n+1)-A140429(n+1)/A128019(n)`
-/

namespace A318610.P10397623212931135845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 (n + 1) : ℚ) - (A140429 (n + 1) : ℚ) / (A128019 n : ℚ)

end

end A318610.P10397623212931135845

namespace A318610

/-- `A140429(n+1)-A140429(n+1)/A128019(n)` -/
def P10397623212931135845.Spec : Prop :=
  ∀ n, P10397623212931135845.a n = (A318610 (n + 1) : ℚ)

end A318610

/-! ## A318610.P8544898432020155662

`A073949(n+1)+A073947(n+2)-A073947(n+1)`
-/

namespace A318610.P8544898432020155662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) + (A073947 (n + 2) - A073947 (n + 1))

end

end A318610.P8544898432020155662

namespace A318610

/-- `A073949(n+1)+A073947(n+2)-A073947(n+1)` -/
def P8544898432020155662.Spec : Prop :=
  ∀ n, P8544898432020155662.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P7319839850846971576

`A073951(n+1)+A073952(n+2)-A073952(n+1)`
-/

namespace A318610.P7319839850846971576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) + (A073952 (n + 2) - A073952 (n + 1))

end

end A318610.P7319839850846971576

namespace A318610

/-- `A073951(n+1)+A073952(n+2)-A073952(n+1)` -/
def P7319839850846971576.Spec : Prop :=
  ∀ n, P7319839850846971576.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P5440779407440114822

`(A101990(n+2)-A101990(n+1))/2`
-/

namespace A318610.P5440779407440114822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101990 (n + 2) - A101990 (n + 1) : ℚ) / 2

end

end A318610.P5440779407440114822

namespace A318610

/-- `(A101990(n+2)-A101990(n+1))/2` -/
def P5440779407440114822.Spec : Prop :=
  ∀ n, P5440779407440114822.a n = (A318610 (n + 1) : ℚ)

end A318610

/-! ## A318610.P10615522245786768707

`Δ[Δ[A073948(n+1)]]-A073949(n+1)`
-/

namespace A318610.P10615522245786768707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073949 (n + 1)

end

end A318610.P10615522245786768707

namespace A318610

/-- `Δ[Δ[A073948(n+1)]]-A073949(n+1)` -/
def P10615522245786768707.Spec : Prop :=
  ∀ n, P10615522245786768707.a n = A318610 (n + 1)

end A318610

/-! ## A318610.P14436314022949662163

`Δ[Δ[A073950(n+1)]]-A073951(n+1)`
-/

namespace A318610.P14436314022949662163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073951 (n + 1)

end

end A318610.P14436314022949662163

namespace A318610

/-- `Δ[Δ[A073950(n+1)]]-A073951(n+1)` -/
def P14436314022949662163.Spec : Prop :=
  ∀ n, P14436314022949662163.a n = A318610 (n + 1)

end A318610

/-!
# A318612: Matula-Goebel numbers of powerful rooted trees.

The programs for A318612, there is no canonical definition to state claims against.
-/

/-! ## A318612.P2477717051704810569

`A158366(A318690(n+1))`
-/

namespace A318612.P2477717051704810569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A318690 (n + 1)).toNat

end

end A318612.P2477717051704810569

/-! ## A318612.P9738129218318611005

`A318690(∑[∑[A111332(n)]])`
-/

namespace A318612.P9738129218318611005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318612.P9738129218318611005

/-! ## A318612.P10099962552768672733

`A318690(∑[∑[A151620(n)]])`
-/

namespace A318612.P10099962552768672733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318612.P10099962552768672733

/-! ## A318612.P1650736180243848886

`record[A318690(A353248(n+1))]`
-/

namespace A318612.P1650736180243848886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318690 (A353248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318612.P1650736180243848886

/-!
# A318613: Length of iterations of positive integers which do not appear in a Collatz sequence starting from a smaller positive integer.

The programs for A318613, there is no canonical definition to state claims against.
-/

/-! ## A318613.P553998022689982795

`A220263(n+1)-1`
-/

namespace A318613.P553998022689982795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220263 (n + 1) - 1

end

end A318613.P553998022689982795

/-! ## A318613.P11997240692605661921

`A127933(n+1)+char[1]`
-/

namespace A318613.P11997240692605661921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127933 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318613.P11997240692605661921

/-! ## A318613.P14115812430878848522

`A127933(ceil(sqrt(n²+4)))%(2*(∑[n]+2))`
-/

namespace A318613.P14115812430878848522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127933 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat) ((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℕ) : ℤ)

end

end A318613.P14115812430878848522

/-! ## A318613.P9430313897461630290

`A006577(A177729(n+1))`
-/

namespace A318613.P9430313897461630290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A177729 (n + 1)).toNat

end

end A318613.P9430313897461630290

/-! ## A318613.P5728121972981268120

`A023443(A220263(n+1))`
-/

namespace A318613.P5728121972981268120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A220263 (n + 1)).toNat

end

end A318613.P5728121972981268120

/-! ## A318613.P14681770134918407038

`A006577(record[A070167(n+1)])`
-/

namespace A318613.P14681770134918407038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318613.P14681770134918407038

/-! ## A318613.P16601201452984136297

`A139399(4*A177729(n+1))`
-/

namespace A318613.P16601201452984136297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * A177729 (n + 1)).toNat

end

end A318613.P16601201452984136297

/-! ## A318613.P6109839219049351560

`A178333(n)+A127933(n+1)`
-/

namespace A318613.P6109839219049351560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A127933 (n + 1)

end

end A318613.P6109839219049351560

/-! ## A318613.P4733499927837731019

`xor(A063524(n), A127933(n+1))`
-/

namespace A318613.P4733499927837731019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A127933 (n + 1))

end

end A318613.P4733499927837731019

/-! ## A318613.P10157085390376471864

`A008908(record[A070167(n+1)])-1`
-/

namespace A318613.P10157085390376471864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A318613.P10157085390376471864

/-!
# A318614: Scaled g.f. S(u) = Sum_{n>0} a(n)*16*(u/16)^n satisfies T(u) = d/du S(u), with T(u) as defined by A318417; sequence gives a(n).

The programs for A318614, there is no canonical definition to state claims against.
-/

/-! ## A318614.P14745564291110515896

`A000108(n)*A098410(n)`
-/

namespace A318614.P14745564291110515896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A098410 n

end

end A318614.P14745564291110515896

/-! ## A318614.P4255476535132115237

`sqrt(A001246(n))*A098410(n)`
-/

namespace A318614.P4255476535132115237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001246 n : ℝ) * (A098410 n : ℝ)

end

end A318614.P4255476535132115237

/-! ## A318614.P7242781467966672168

`A007004(n)/A005809(n)*A098410(n)`
-/

namespace A318614.P7242781467966672168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007004 n : ℚ) / (A005809 n : ℚ) * (A098410 n : ℚ)

end

end A318614.P7242781467966672168

/-! ## A318614.P17641495100173497444

`A063016(n)/A126646(n)*A098410(n)`
-/

namespace A318614.P17641495100173497444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063016 n : ℚ) / (A126646 n : ℚ) * (A098410 n : ℚ)

end

end A318614.P17641495100173497444

/-! ## A318614.P18208458098555863284

`gcd(A000984(n), A001700(n))*A098410(n)`
-/

namespace A318614.P18208458098555863284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000984 n) (A001700 n) : ℤ) * A098410 n

end

end A318614.P18208458098555863284

/-! ## A318614.P16781339721097232706

`A318417(n)/(n+1)`
-/

namespace A318614.P16781339721097232706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318417 n : ℚ) / (n + 1 : ℚ)

end

end A318614.P16781339721097232706

/-!
# A318615: a(n) = n! * [x^n] 1/(1 - x)^(n*x).

The programs for A318615, there is no canonical definition to state claims against.
-/

/-! ## A318615.P14480514882242124371

`A362834(∑[4*n])`
-/

namespace A318615.P14480514882242124371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318615.P14480514882242124371

/-! ## A318615.P9147523166692954513

`A001055(A273994(n))*A052830(n)`
-/

namespace A318615.P9147523166692954513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A273994 n).toNat * A052830 n

end

end A318615.P9147523166692954513

/-!
# A318616: a(n) = n! * [x^n] (1 - x)^(n*x).

The programs for A318616, there is no canonical definition to state claims against.
-/

/-! ## A318616.P9171782478615502526

`A189864(A189565(n))-n²`
-/

namespace A318616.P9171782478615502526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189864 (A189565 n).toNat - (n ^ 2 : ℤ)

end

end A318616.P9171782478615502526

/-!
# A318617: a(n) is the number of rooted labeled forests on n nodes that avoid the patterns 213, 231, and 312.

The programs for A318617, there is no canonical definition to state claims against.
-/

/-! ## A318617.P2882852495920249373

`A339166(A026665(n))+A000262(n)`
-/

namespace A318617.P2882852495920249373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (A026665 n).toNat + A000262 n

end

end A318617.P2882852495920249373

/-! ## A318617.P10326663062222110289

`or(1, A247983((n+1)*a(n-1))+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A318617.P10326663062222110289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 (A247983 ((n + 1 : ℤ) * a (n - 1)).toNat + a (n - 1))

end

end A318617.P10326663062222110289

/-!
# A318618: a(n) is the number of rooted forests on n nodes that avoid the patterns 321, 2143, and 3142.

The programs for A318618, the canonical program `A318618.P79050443274005482` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318618 has offset 0).

The definition of A318618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318618.P79050443274005482

`2*n*a(n-1)-n*(n-1)/2*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318618

/-- `2*n*a(n-1)-n*(n-1)/2*a(n-2)` -/
def P79050443274005482.Spec : Prop :=
  ∀ n, P79050443274005482.a n = (A318618 n : ℚ)

end A318618

/-! ## A318618.P16763277404121907918

`A052680(n)/A000079(n)`
-/

namespace A318618.P16763277404121907918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052680 n : ℚ) / (A000079 n : ℚ)

end

end A318618.P16763277404121907918

namespace A318618

/-- `A052680(n)/A000079(n)` -/
def P16763277404121907918.Spec : Prop :=
  ∀ n, P16763277404121907918.a n = (A318618 n : ℚ)

end A318618

/-! ## A318618.P16353965827489096087

`A052680(n)/∑[A011782(n)]`
-/

namespace A318618.P16353965827489096087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052680 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A318618.P16353965827489096087

namespace A318618

/-- `A052680(n)/∑[A011782(n)]` -/
def P16353965827489096087.Spec : Prop :=
  ∀ n, P16353965827489096087.a n = (A318618 n : ℚ)

end A318618

/-! ## A318618.P13781038849882680590

`A052680(n)/Δ[A000225(n)]`
-/

namespace A318618.P13781038849882680590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052680 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A318618.P13781038849882680590

namespace A318618

/-- `A052680(n)/Δ[A000225(n)]` -/
def P13781038849882680590.Spec : Prop :=
  ∀ n, P13781038849882680590.a n = (A318618 n : ℚ)

end A318618

/-! ## A318618.P11242779300147746879

`A052680(n)/A011782(n+1)`
-/

namespace A318618.P11242779300147746879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052680 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A318618.P11242779300147746879

namespace A318618

/-- `A052680(n)/A011782(n+1)` -/
def P11242779300147746879.Spec : Prop :=
  ∀ n, P11242779300147746879.a n = (A318618 n : ℚ)

end A318618

/-! ## A318618.P12540873218320576980

`A052680(n)/A131577(n+1)`
-/

namespace A318618.P12540873218320576980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052680 n : ℚ) / (A131577 (n + 1) : ℚ)

end

end A318618.P12540873218320576980

namespace A318618

/-- `A052680(n)/A131577(n+1)` -/
def P12540873218320576980.Spec : Prop :=
  ∀ n, P12540873218320576980.a n = (A318618 n : ℚ)

end A318618

/-!
# A318621: a(0) = a(1) = 1; for n > 1, a(n) = Sum_{k=0..n-2} a(k) OR a(n-k-2).

The programs for A318621, there is no canonical definition to state claims against.
-/

/-! ## A318621.P13874694992883031534

`A063886(n)-A332436(A000031(n))`
-/

namespace A318621.P13874694992883031534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n - A332436 (A000031 n).toNat

end

end A318621.P13874694992883031534

/-! ## A318621.P9422144380381377376

`A122320(A333313(n))`
-/

namespace A318621.P9422144380381377376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122320 (A333313 n).toNat

end

end A318621.P9422144380381377376

/-! ## A318621.P4861554079855848277

`A081707(2*A090932(n))`
-/

namespace A318621.P4861554079855848277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (2 * A090932 n).toNat

end

end A318621.P4861554079855848277

/-! ## A318621.P9341288735759158806

`A335235(A326490(n))-n`
-/

namespace A318621.P9341288735759158806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A326490 n).toNat - (n : ℤ)

end

end A318621.P9341288735759158806

/-!
# A318622: Number of irreducible factors in the factorization of the n-th cyclotomic polynomial over GF(2) (counted with multiplicity).

The programs for A318622, there is no canonical definition to state claims against.
-/

/-! ## A318622.P4454510607972620377

`A000010(n+1)/A002326((A000265(n+1)-1)/2)`
-/

namespace A318622.P4454510607972620377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A002326 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat : ℚ)

end

end A318622.P4454510607972620377

/-! ## A318622.P120413556221083617

`Δ[A002088(n)]/A007733(n+1)`
-/

namespace A318622.P120413556221083617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007733 (n + 1) : ℚ)

end

end A318622.P120413556221083617

/-! ## A318622.P11598702345637812401

`Δ[A005728(n)]/A007733(n+1)`
-/

namespace A318622.P11598702345637812401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A007733 (n + 1) : ℚ)

end

end A318622.P11598702345637812401

/-! ## A318622.P1813618761704739396

`A000010(n+1)/A007733(n+1)`
-/

namespace A318622.P1813618761704739396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A007733 (n + 1) : ℚ)

end

end A318622.P1813618761704739396

/-! ## A318622.P613122224655456746

`gcd(A327813(n+1), A327816(n+1))`
-/

namespace A318622.P613122224655456746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327813 (n + 1)) (A327816 (n + 1))

end

end A318622.P613122224655456746

/-! ## A318622.P8366403410000297019

`A349137(2*n+1)/A007733(n+1)`
-/

namespace A318622.P8366403410000297019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 (2 * n + 1) : ℚ) / (A007733 (n + 1) : ℚ)

end

end A318622.P8366403410000297019

/-! ## A318622.P14811152041796086807

`∑{d}[n+1, A008683(#)*A091248((n+1)/#)]`
-/

namespace A318622.P14811152041796086807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A091248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318622.P14811152041796086807

/-! ## A318622.P7843206152484648560

`∑{d}[n+1, A000374(#)*A361984((n+1)/#)]`
-/

namespace A318622.P7843206152484648560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000374 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318622.P7843206152484648560

/-! ## A318622.P15599315355769421623

`A000010(n+1)/(A054703(n+1)-A007814(n+1))`
-/

namespace A318622.P15599315355769421623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A054703 (n + 1) - A007814 (n + 1) : ℚ)

end

end A318622.P15599315355769421623

/-! ## A318622.P12249585950387342745

`A327818(∑[n+1])`
-/

namespace A318622.P12249585950387342745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318622.P12249585950387342745

/-! ## A318622.P12207142103107039179

`A054523(A000124(n))/A007733(n+1)`
-/

namespace A318622.P12207142103107039179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054523 (A000124 n).toNat : ℚ) / (A007733 (n + 1) : ℚ)

end

end A318622.P12207142103107039179

/-!
# A318623: a(n) = 2^phi(n) mod n.

The programs for A318623, the canonical program `A318623.P74548259302421611` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318623 has offset 1).

The definition of A318623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^A000010(n+1))%(n+1)` (program `A318623.P74548259302421611`, by `A318623.P74548259302421611.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318623.P74548259302421611

`(2^A000010(n+1))%(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318623

/-- `(2^A000010(n+1))%(n+1)` -/
def P74548259302421611.Spec : Prop :=
  ∀ n, P74548259302421611.a n = A318623 (n + 1)

theorem P74548259302421611.correct : P74548259302421611.Spec := by
  intro n
  simp only [A318623, Nat.add_sub_cancel]

end A318623

/-! ## A318623.P11439495231748723052

`A077815(n+1)%(n+1)`
-/

namespace A318623.P11439495231748723052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077815 (n + 1)) (n + 1 : ℤ)

end

end A318623.P11439495231748723052

namespace A318623

/-- `A077815(n+1)%(n+1)` -/
def P11439495231748723052.Spec : Prop :=
  ∀ n, P11439495231748723052.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P8445472304262394545

`((1-A000265(n+1))^26)%(n+1)`
-/

namespace A318623.P8445472304262394545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A000265 (n + 1)) ^ 26) (n + 1 : ℤ)

end

end A318623.P8445472304262394545

namespace A318623

/-- `((1-A000265(n+1))^26)%(n+1)` -/
def P8445472304262394545.Spec : Prop :=
  ∀ n, P8445472304262394545.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P8854486201344136155

`A066781(n+1)%(n+1)`
-/

namespace A318623.P8854486201344136155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066781 (n + 1)) (n + 1 : ℤ)

end

end A318623.P8854486201344136155

namespace A318623

/-- `A066781(n+1)%(n+1)` -/
def P8854486201344136155.Spec : Prop :=
  ∀ n, P8854486201344136155.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P14678296483056492667

`(A243305(n+1)-1)%(n+1)`
-/

namespace A318623.P14678296483056492667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243305 (n + 1) - 1) (n + 1 : ℤ)

end

end A318623.P14678296483056492667

namespace A318623

/-- `(A243305(n+1)-1)%(n+1)` -/
def P14678296483056492667.Spec : Prop :=
  ∀ n, P14678296483056492667.a n = A318623 (n + 1)

theorem P14678296483056492667.correct : P14678296483056492667.Spec := by
  intro n
  simp only [A318623, Nat.add_sub_cancel, A318623.P14678296483056492667.a, A318623.P74548259302421611.a, A000010, A000010.P4673923239450215316.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A066781, A066781.P13882244352398290553.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318623

/-! ## A318623.P10171480831639552429

`(2^(A109606(n+1)+1))%(n+1)`
-/

namespace A318623.P10171480831639552429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A109606 (n + 1) + 1 : ℤ))) (n + 1 : ℤ)

end

end A318623.P10171480831639552429

namespace A318623

/-- `(2^(A109606(n+1)+1))%(n+1)` -/
def P10171480831639552429.Spec : Prop :=
  ∀ n, P10171480831639552429.a n = A318623 (n + 1)

theorem P10171480831639552429.correct : P10171480831639552429.Spec := by
  intro n
  simp only [A318623, Nat.add_sub_cancel, A318623.P10171480831639552429.a, A318623.P74548259302421611.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318623

/-! ## A318623.P959842116793445064

`A011782((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)%(n+1)`
-/

namespace A318623.P959842116793445064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1)).toNat) (n + 1 : ℤ)

end

end A318623.P959842116793445064

namespace A318623

/-- `A011782((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1)%(n+1)` -/
def P959842116793445064.Spec : Prop :=
  ∀ n, P959842116793445064.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P3607954819646593909

`A000079(A000010(n+1))%(n+1)`
-/

namespace A318623.P3607954819646593909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A000010 (n + 1)).toNat) (n + 1 : ℤ)

end

end A318623.P3607954819646593909

namespace A318623

/-- `A000079(A000010(n+1))%(n+1)` -/
def P3607954819646593909.Spec : Prop :=
  ∀ n, P3607954819646593909.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P6761824227637789346

`A011782(A039649(n+1))%(n+1)`
-/

namespace A318623.P6761824227637789346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A039649 (n + 1)).toNat) (n + 1 : ℤ)

end

end A318623.P6761824227637789346

namespace A318623

/-- `A011782(A039649(n+1))%(n+1)` -/
def P6761824227637789346.Spec : Prop :=
  ∀ n, P6761824227637789346.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P13874454707446503532

`A131577(A000010(n+1)+1)%(n+1)`
-/

namespace A318623.P13874454707446503532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131577 (A000010 (n + 1) + 1).toNat) (n + 1 : ℤ)

end

end A318623.P13874454707446503532

namespace A318623

/-- `A131577(A000010(n+1)+1)%(n+1)` -/
def P13874454707446503532.Spec : Prop :=
  ∀ n, P13874454707446503532.a n = A318623 (n + 1)

end A318623

/-! ## A318623.P3313369172031283417

`(1-A000265((n+1)²))²%(n+1)`
-/

namespace A318623.P3313369172031283417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - A000265 ((n + 1) ^ 2)) ^ 2) (n + 1 : ℤ)

end

end A318623.P3313369172031283417

namespace A318623

/-- `(1-A000265((n+1)²))²%(n+1)` -/
def P3313369172031283417.Spec : Prop :=
  ∀ n, P3313369172031283417.a n = A318623 (n + 1)

end A318623

/-!
# A318624: Number of 3-member subsets of [3*n] whose elements sum to a multiple of n.

The programs for A318624, the canonical program `A318624.P8303805207409385929` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318624 has offset 0).

The definition of A318624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318624.P8303805207409385929

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=30, a(4)=55, a(5)=91`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318624

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P8303805207409385929.Spec : Prop :=
  ∀ n, P8303805207409385929.a n = A318624 n

theorem P8303805207409385929.correct : P8303805207409385929.Spec := by
  intro n
  simp only [A318624]

end A318624

/-! ## A318624.P148932170239996593

`(gcd(3, n)+A051682(n)-n)%A100166(n+1)`
-/

namespace A318624.P148932170239996593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.gcd 3 n : ℤ) + (A051682 n - (n : ℤ))) (A100166 (n + 1))

end

end A318624.P148932170239996593

namespace A318624

/-- `(gcd(3, n)+A051682(n)-n)%A100166(n+1)` -/
def P148932170239996593.Spec : Prop :=
  ∀ n, P148932170239996593.a n = A318624 n

end A318624

/-! ## A318624.P4553692135760378418

`A105770(A004273(n))-A080956(n)`
-/

namespace A318624.P4553692135760378418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105770 (A004273 n).toNat - A080956 n

end

end A318624.P4553692135760378418

namespace A318624

/-- `A105770(A004273(n))-A080956(n)` -/
def P4553692135760378418.Spec : Prop :=
  ∀ n, P4553692135760378418.a n = A318624 n

end A318624

/-! ## A318624.P9981932730684226861

`A105770(A004273(n))-∑[A024000(n)]`
-/

namespace A318624.P9981932730684226861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105770 (A004273 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318624.P9981932730684226861

namespace A318624

/-- `A105770(A004273(n))-∑[A024000(n)]` -/
def P9981932730684226861.Spec : Prop :=
  ∀ n, P9981932730684226861.a n = A318624 n

end A318624

/-! ## A318624.P12903228772447759909

`A022266(n)-A061800(A111284(n+1))`
-/

namespace A318624.P12903228772447759909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - A061800 (A111284 (n + 1)).toNat

end

end A318624.P12903228772447759909

namespace A318624

/-- `A022266(n)-A061800(A111284(n+1))` -/
def P12903228772447759909.Spec : Prop :=
  ∀ n, P12903228772447759909.a n = A318624 n

end A318624

/-! ## A318624.P9440194074822422556

`A318557(A167614(n+2))`
-/

namespace A318624.P9440194074822422556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A167614 (n + 2)).toNat

end

end A318624.P9440194074822422556

namespace A318624

/-- `A318557(A167614(n+2))` -/
def P9440194074822422556.Spec : Prop :=
  ∀ n, P9440194074822422556.a n = A318624 n

end A318624

/-! ## A318624.P12638441106278839508

`A318557(A052905(n)+8)`
-/

namespace A318624.P12638441106278839508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 n + 8).toNat

end

end A318624.P12638441106278839508

namespace A318624

/-- `A318557(A052905(n)+8)` -/
def P12638441106278839508.Spec : Prop :=
  ∀ n, P12638441106278839508.a n = A318624 n

end A318624

/-! ## A318624.P933046525605403658

`A318557(A055999(n)+9)`
-/

namespace A318624.P933046525605403658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A055999 n + 9).toNat

end

end A318624.P933046525605403658

namespace A318624

/-- `A318557(A055999(n)+9)` -/
def P933046525605403658.Spec : Prop :=
  ∀ n, P933046525605403658.a n = A318624 n

end A318624

/-! ## A318624.P17778441051372302858

`A318557(eq[3, A002262(n)])`
-/

namespace A318624.P17778441051372302858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318624.P17778441051372302858

namespace A318624

/-- `A318557(eq[3, A002262(n)])` -/
def P17778441051372302858.Spec : Prop :=
  ∀ n, P17778441051372302858.a n = A318624 n

end A318624

/-! ## A318624.P17340246471916754037

`A318557(Δ[A005286(n)]+4)`
-/

namespace A318624.P17340246471916754037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (f1 (n + 1) - f1 n + 4).toNat

end

end A318624.P17340246471916754037

namespace A318624

/-- `A318557(Δ[A005286(n)]+4)` -/
def P17340246471916754037.Spec : Prop :=
  ∀ n, P17340246471916754037.a n = A318624 n

end A318624

/-!
# A318625: Number of 4-member subsets of [4*n] whose elements sum to a multiple of n.

The programs for A318625, there is no canonical definition to state claims against.
-/

/-! ## A318625.P8444220446157249314

`A318557(A155212(n)+12)`
-/

namespace A318625.P8444220446157249314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A155212 n + 12).toNat

end

end A318625.P8444220446157249314

/-! ## A318625.P3096661043772135659

`A318557(eq[4, A002262(n)])`
-/

namespace A318625.P3096661043772135659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318625.P3096661043772135659

/-! ## A318625.P5279102173837047400

`A318557(A000124(n+4)+3)`
-/

namespace A318625.P5279102173837047400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 (n + 4) + 3).toNat

end

end A318625.P5279102173837047400

/-! ## A318625.P17956791152194867771

`A318557(eq[5, A002260(n+1)])`
-/

namespace A318625.P17956791152194867771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318625.P17956791152194867771

/-! ## A318625.P2001714633108939134

`A318557(eq[2, A144328(n+1)-2])`
-/

namespace A318625.P2001714633108939134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318625.P2001714633108939134

/-! ## A318625.P17531616424628848430

`A318557(eq[2, A144328(n+1)/2])`
-/

namespace A318625.P17531616424628848430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A318625.P17531616424628848430

/-! ## A318625.P16223813434174544771

`A318557(A055998(n+3)-(n-2))`
-/

namespace A318625.P16223813434174544771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A055998 (n + 3) - ((n : ℤ) - 2)).toNat

end

end A318625.P16223813434174544771

/-! ## A318625.P2217232082131852264

`A318557(n+8+A000217(n+3))`
-/

namespace A318625.P2217232082131852264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 ((n + 8 : ℤ) + A000217 (n + 3)).toNat

end

end A318625.P2217232082131852264

/-! ## A318625.P16583593803380528547

`A318557(Δ[A026054(n+3)-n²])`
-/

namespace A318625.P16583593803380528547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (f1 (n + 1) - f1 n).toNat

end

end A318625.P16583593803380528547

/-! ## A318625.P8591089742993049408

`A318557(A020705(A000217(n+4)))`
-/

namespace A318625.P8591089742993049408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A020705 (A000217 (n + 4)).toNat).toNat

end

end A318625.P8591089742993049408

/-!
# A318626: Number of 5-member subsets of [5*n] whose elements sum to a multiple of n.

The programs for A318626, there is no canonical definition to state claims against.
-/

/-! ## A318626.P11273251254927712784

`A318557(A167499(n+4))`
-/

namespace A318626.P11273251254927712784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A167499 (n + 4)).toNat

end

end A318626.P11273251254927712784

/-! ## A318626.P1593448520948216785

`record[A318557(A000124(n)+4)]`
-/

namespace A318626.P1593448520948216785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318626.P1593448520948216785

/-! ## A318626.P5041529744850895640

`record[A318557(A000217(n)+5)]`
-/

namespace A318626.P5041529744850895640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318626.P5041529744850895640

/-! ## A318626.P13415333666138091198

`A318557(A000217(n+5)+5)`
-/

namespace A318626.P13415333666138091198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 5) + 5).toNat

end

end A318626.P13415333666138091198

/-! ## A318626.P11749378068425427647

`A318557(A052905(n)+A004273(n+10))`
-/

namespace A318626.P11749378068425427647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 n + A004273 (n + 10)).toNat

end

end A318626.P11749378068425427647

/-!
# A318627: Number of 6-member subsets of [6*n] whose elements sum to a multiple of n.

The programs for A318627, there is no canonical definition to state claims against.
-/

/-! ## A318627.P4621241739620690506

`A318557(eq[6, A002262(n)])`
-/

namespace A318627.P4621241739620690506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318627.P4621241739620690506

/-! ## A318627.P4712006474394882741

`A318557(A167614(n+5)+3)`
-/

namespace A318627.P4712006474394882741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A167614 (n + 5) + 3).toNat

end

end A318627.P4712006474394882741

/-! ## A318627.P2270924186660502986

`A318557(A000124(n+6)+5)`
-/

namespace A318627.P2270924186660502986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 (n + 6) + 5).toNat

end

end A318627.P2270924186660502986

/-! ## A318627.P11953753685412935774

`A318557(A056115(n+1)+21)`
-/

namespace A318627.P11953753685412935774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A056115 (n + 1) + 21).toNat

end

end A318627.P11953753685412935774

/-! ## A318627.P6669140445330449054

`A318557(eq[7, A002260(n+1)])`
-/

namespace A318627.P6669140445330449054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318627.P6669140445330449054

/-! ## A318627.P13301493471911895018

`A318557(eq[17, A037126(n+1)])`
-/

namespace A318627.P13301493471911895018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318627.P13301493471911895018

/-! ## A318627.P4131544451486771501

`A318557(Δ[Δ[A119327(n+7)]])`
-/

namespace A318627.P4131544451486771501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119327 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (f1 (n + 1) - f1 n).toNat

end

end A318627.P4131544451486771501

/-! ## A318627.P17963448563273465779

`A318557(A002620(n+3)+A002620(n+10))`
-/

namespace A318627.P17963448563273465779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A002620 (n + 3) + A002620 (n + 10)).toNat

end

end A318627.P17963448563273465779

/-!
# A318628: Number of 7-member subsets of [7*n] whose elements sum to a multiple of n.

The programs for A318628, there is no canonical definition to state claims against.
-/

/-! ## A318628.P1721215738152790181

`A318557(eq[7, A002262(n)])`
-/

namespace A318628.P1721215738152790181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318628.P1721215738152790181

/-! ## A318628.P12808525914440250251

`A318557(A000124(n+7)+6)`
-/

namespace A318628.P12808525914440250251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 (n + 7) + 6).toNat

end

end A318628.P12808525914440250251

/-! ## A318628.P5169447009153462161

`A318557(A253145(n+7)-(n+1))`
-/

namespace A318628.P5169447009153462161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A253145 (n + 7) - (n + 1 : ℤ)).toNat

end

end A318628.P5169447009153462161

/-! ## A318628.P2181765397109886766

`A318557(A000217(n+8)-(n+1))`
-/

namespace A318628.P2181765397109886766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A318628.P2181765397109886766

/-! ## A318628.P16445306611412979347

`A318557(A055999(n+6)-A005843(n+2))`
-/

namespace A318628.P16445306611412979347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A055999 (n + 6) - A005843 (n + 2)).toNat

end

end A318628.P16445306611412979347

/-! ## A318628.P5594090838808673209

`A318557(A052905(n+6)-A004273(n+3))`
-/

namespace A318628.P5594090838808673209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A052905 (n + 6) - A004273 (n + 3)).toNat

end

end A318628.P5594090838808673209

/-! ## A318628.P5701128645064774109

`A318557(A046691(n+7)-A005843(n+3))`
-/

namespace A318628.P5701128645064774109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A046691 (n + 7) - A005843 (n + 3)).toNat

end

end A318628.P5701128645064774109

/-!
# A318629: Number of 8-member subsets of [8*n] whose elements sum to a multiple of n.

The programs for A318629, there is no canonical definition to state claims against.
-/

/-! ## A318629.P8449167479306230535

`A318557(A167499(n+7)+3)`
-/

namespace A318629.P8449167479306230535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A167499 (n + 7) + 3).toNat

end

end A318629.P8449167479306230535

/-! ## A318629.P10079388330368385531

`A318557(A000124(n+8)+7)`
-/

namespace A318629.P10079388330368385531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000124 (n + 8) + 7).toNat

end

end A318629.P10079388330368385531

/-! ## A318629.P15985713876669470923

`A318557(A253145(n+7)+8)`
-/

namespace A318629.P15985713876669470923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A253145 (n + 7) + 8).toNat

end

end A318629.P15985713876669470923

/-! ## A318629.P2665446933435462368

`A318557(A000217(n+8)+8)`
-/

namespace A318629.P2665446933435462368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 8) + 8).toNat

end

end A318629.P2665446933435462368

/-! ## A318629.P2889914454645939222

`A318557(A056000(n+6)-A004273(n+1))`
-/

namespace A318629.P2889914454645939222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A056000 (n + 6) - A004273 (n + 1)).toNat

end

end A318629.P2889914454645939222

/-!
# A318630: Number of 9-member subsets of [9*n] whose elements sum to a multiple of n.

The programs for A318630, there is no canonical definition to state claims against.
-/

/-! ## A318630.P12909335828535845583

`A318557(eq[9, A002262(n)])`
-/

namespace A318630.P12909335828535845583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318630.P12909335828535845583

/-! ## A318630.P15099969470115600309

`A318557(eq[9, A144328(n+1)])`
-/

namespace A318630.P15099969470115600309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318630.P15099969470115600309

/-! ## A318630.P2796497837631049722

`A318557(eq[10, A002260(n+1)])`
-/

namespace A318630.P2796497837631049722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318630.P2796497837631049722

/-! ## A318630.P10348770179642251744

`A318557(eq[10, A134868(n+1)])`
-/

namespace A318630.P10348770179642251744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318630.P10348770179642251744

/-! ## A318630.P13316685635789788613

`A318557(A000217(n+10)+n-(2*n+1))`
-/

namespace A318630.P13316685635789788613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (A000217 (n + 10) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A318630.P13316685635789788613

/-!
# A318631: Number of 10-member subsets of [10*n] whose elements sum to a multiple of n.

The programs for A318631, there is no canonical definition to state claims against.
-/

/-! ## A318631.P10012176279485441076

`A318557(eq[10, A002262(n)])`
-/

namespace A318631.P10012176279485441076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318631.P10012176279485441076

/-! ## A318631.P7283991122010191744

`A318557(eq[10, A144328(n+1)])`
-/

namespace A318631.P7283991122010191744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318631.P7283991122010191744

/-! ## A318631.P16911836036486551958

`A318557(eq[10, A327844(n+1)])`
-/

namespace A318631.P16911836036486551958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318631.P16911836036486551958

/-! ## A318631.P4941803149387943210

`A318557(eq[11, A002260(n+1)])`
-/

namespace A318631.P4941803149387943210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318631.P4941803149387943210

/-! ## A318631.P2342868207402959191

`A318557(eq[11, A134868(n+1)])`
-/

namespace A318631.P2342868207402959191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318631.P2342868207402959191

/-!
# A318632: Let a partition of n be written in binary. Join any two binary ones which are adjacent horizontally or vertically. If all the binary ones are connected count this partition in a(n).

The programs for A318632, there is no canonical definition to state claims against.
-/

/-! ## A318632.P15638793726207416518

`A090663(A167499(n))-A038568(n)`
-/

namespace A318632.P15638793726207416518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090663 (A167499 n).toNat - A038568 n

end

end A318632.P15638793726207416518

/-! ## A318632.P6724834150317461607

`A381438(A000217(n+1))+A007814(n+1)`
-/

namespace A318632.P6724834150317461607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381438 (A000217 (n + 1)).toNat + A007814 (n + 1)

end

end A318632.P6724834150317461607

/-! ## A318632.P14575380693886487933

`A287997(n+1)+A007814(A282852(2*(n+1)))`
-/

namespace A318632.P14575380693886487933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287997 (n + 1) + A007814 (A282852 (2 * (n + 1))).toNat

end

end A318632.P14575380693886487933

/-! ## A318632.P4048371821594572565

`A246348(A245701(A245701(A246347(n+1))))`
-/

namespace A318632.P4048371821594572565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246348 (A245701 (A245701 (A246347 (n + 1)).toNat).toNat).toNat

end

end A318632.P4048371821594572565

/-! ## A318632.P4642994148654580567

`A000009(n+1)+A025468(A319790(n))+A007814(n+1)`
-/

namespace A318632.P4642994148654580567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A025468 (A319790 n).toNat + A007814 (n + 1))

end

end A318632.P4642994148654580567

/-!
# A318633: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N^2 + n^2)^n * (x/N)^n/n! ]^(1/N).

The programs for A318633, there is no canonical definition to state claims against.
-/

/-! ## A318633.P13029283951985177611

`A141387(A053465(n))`
-/

namespace A318633.P13029283951985177611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 (A053465 n).toNat

end

end A318633.P13029283951985177611

/-! ## A318633.P14732271410904605070

`A116529(∑[A327057(n)])`
-/

namespace A318633.P14732271410904605070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116529 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318633.P14732271410904605070

/-!
# A318635: E.g.f. A(x) satisfies: A(A(x)) = sinh( arcsin(x) ).

The programs for A318635, there is no canonical definition to state claims against.
-/

/-! ## A318635.P9617829610680781047

`5*A001065(8*a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A318635.P9617829610680781047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 * A001065 (8 * a (n - 1) - a (n - 2)).toNat

end

end A318635.P9617829610680781047

/-!
# A318636: Expansion of Sum_{n>=1} ( (1 + x^n)^n - 1 ).

The programs for A318636, the canonical program `A318636.P12597740727901215963` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318636 has offset 1).

The definition of A318636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318636.P12597740727901215963

`∑{d}[n+1, C((n+1)/#, #)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318636

/-- `∑{d}[n+1, C((n+1)/#, #)]` -/
def P12597740727901215963.Spec : Prop :=
  ∀ n, (P12597740727901215963.a n : ℤ) = A318636 (n + 1)

theorem P12597740727901215963.correct : P12597740727901215963.Spec := by
  intro n
  simp only [A318636, Nat.add_sub_cancel]

end A318636

/-!
# A318637: Expansion of Sum_{n>=1} ( (2 + x^n)^n - 2^n ).

The programs for A318637, the canonical program `A318637.P1300423225028285674` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318637 has offset 1).

The definition of A318637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318637.P1300423225028285674

`∑{d}[n+1, 2^(#-(n+1)/#)*C(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318637

/-- `∑{d}[n+1, 2^(#-(n+1)/#)*C(#, (n+1)/#)]` -/
def P1300423225028285674.Spec : Prop :=
  ∀ n, P1300423225028285674.a n = (A318637 (n + 1) : ℝ)

end A318637

/-! ## A318637.P4798889413423867169

`A318537(A349271(2*n+5))+(n+1)*2^n`
-/

namespace A318637.P4798889413423867169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318537 (A349271 (2 * n + 5)).toNat + ((n + 1) * 2 ^ n : ℤ)

end

end A318637.P4798889413423867169

namespace A318637

/-- `A318537(A349271(2*n+5))+(n+1)*2^n` -/
def P4798889413423867169.Spec : Prop :=
  ∀ n, P4798889413423867169.a n = A318637 (n + 1)

end A318637

/-! ## A318637.P9529064679260532910

`A087323(n)+A034327(A034338(n+1))`
-/

namespace A318637.P9529064679260532910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A034327 (A034338 (n + 1)).toNat

end

end A318637.P9529064679260532910

namespace A318637

/-- `A087323(n)+A034327(A034338(n+1))` -/
def P9529064679260532910.Spec : Prop :=
  ∀ n, P9529064679260532910.a n = A318637 (n + 1)

end A318637

/-!
# A318638: Expansion of Sum_{n>=1} ( (3 + x^n)^n - 3^n ).

The programs for A318638, the canonical program `A318638.P15625617130715091839` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318638 has offset 1).

The definition of A318638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318638.P15625617130715091839

`∑{d}[n+1, 3^(#-(n+1)/#)*C(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A318638

/-- `∑{d}[n+1, 3^(#-(n+1)/#)*C(#, (n+1)/#)]` -/
def P15625617130715091839.Spec : Prop :=
  ∀ n, P15625617130715091839.a n = (A318638 (n + 1) : ℝ)

end A318638

/-! ## A318638.P17390295723280825618

`or(A027471(n+2), A123494(A019193(n+3)))`
-/

namespace A318638.P17390295723280825618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027471 (n + 2)) (A123494 (A019193 (n + 3)).toNat)

end

end A318638.P17390295723280825618

namespace A318638

/-- `or(A027471(n+2), A123494(A019193(n+3)))` -/
def P17390295723280825618.Spec : Prop :=
  ∀ n, P17390295723280825618.a n = A318638 (n + 1)

end A318638

/-!
# A318640: G.f. A(x) satisfies: Sum_{n>=0} n * (x + (-1)^n*A(x))^n = 0.

The programs for A318640, there is no canonical definition to state claims against.
-/

/-! ## A318640.P15422544959484229168

`A292264(floor(sqrt(A129162(3*n+1))))`
-/

namespace A318640.P15422544959484229168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292264 (Int.sqrt (A129162 (3 * n + 1))).toNat

end

end A318640.P15422544959484229168

/-!
# A318641: G.f. B(x) satisfies: Sum_{n>=0} (-1)^n * n * (B(x) - (-1)^n*B(-x))^n = 0.

The programs for A318641, there is no canonical definition to state claims against.
-/

/-! ## A318641.P16114604915296354855

`2^n*A185782(round(2/3*8^n))`
-/

namespace A318641.P16114604915296354855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A185782 (SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (8 ^ n : ℚ))).toNat

end

end A318641.P16114604915296354855

/-!
# A318642: G.f. C(x) satisfies: Sum_{n>=0} (-1)^n * n * ( C(C(x)) - (-1)^n*C(C(-x)) )^n = 0.

The programs for A318642, there is no canonical definition to state claims against.
-/

/-! ## A318642.P12174723673375061355

`A000079(n)*A284384(A330452(n))`
-/

namespace A318642.P12174723673375061355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A284384 (A330452 n).toNat

end

end A318642.P12174723673375061355

/-!
# A318643: G.f. D(x) satisfies: Sum_{n>=0} n * (x + (-1)^n*A(x))^n = 0, where A(x) = D^8(x), the 8th iteration of D(x), and A(x) is the g.f. of A318640.

The programs for A318643, there is no canonical definition to state claims against.
-/

/-! ## A318643.P12839431142575786017

`and(A211138(n+2)², A211121(2*n+1))`
-/

namespace A318643.P12839431142575786017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211138 (n + 2) ^ 2) (A211121 (2 * n + 1))

end

end A318643.P12839431142575786017

/-! ## A318643.P6890337124616430651

`and(A211131(n+3)², A211121(2*n+1))`
-/

namespace A318643.P6890337124616430651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211131 (n + 3) ^ 2) (A211121 (2 * n + 1))

end

end A318643.P6890337124616430651

/-!
# A318644: G.f. A(x) satisfies: A(x) = Sum_{n>=0} (1+x)^(n*(n+1)/2) * x^n / A(x)^n.

The programs for A318644, there is no canonical definition to state claims against.
-/

/-! ## A318644.P2113865691060803172

`A347656(A326525(2*n+3))-A308902(n)`
-/

namespace A318644.P2113865691060803172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (A326525 (2 * n + 3)).toNat - A308902 n

end

end A318644.P2113865691060803172

/-! ## A318644.P4834193131460306317

`ceil(A319787(n)/n^ceil(atan(n)))`
-/

namespace A318644.P4834193131460306317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319787 n : ℚ) / (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)⌉

end

end A318644.P4834193131460306317

/-! ## A318644.P10451335886319830037

`A333309(A287776(n))`
-/

namespace A318644.P10451335886319830037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333309 (A287776 n).toNat

end

end A318644.P10451335886319830037

/-! ## A318644.P15527370256226871749

`A333309(A371726(n))`
-/

namespace A318644.P15527370256226871749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333309 (A371726 n).toNat

end

end A318644.P15527370256226871749

/-! ## A318644.P11675445322059361662

`A194315(A273468(n+1))`
-/

namespace A318644.P11675445322059361662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194315 (A273468 (n + 1)).toNat

end

end A318644.P11675445322059361662

/-!
# A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

The programs for A318649, the canonical program `A318649.P4247351377528363883` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318649 has offset 1).

The definition of A318649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318649.P4247351377528363883

`(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318649

/-- `(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)` -/
def P4247351377528363883.Spec : Prop :=
  ∀ n, P4247351377528363883.a n = (A318649 (n + 1) : ℚ)

end A318649

/-! ## A318649.P16648194982215467480

`gcd(n+1, A318511(n+1))*A299149(n+1)`
-/

namespace A318649.P16648194982215467480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A318511 (n + 1)) : ℤ) * A299149 (n + 1)

end

end A318649.P16648194982215467480

namespace A318649

/-- `gcd(n+1, A318511(n+1))*A299149(n+1)` -/
def P16648194982215467480.Spec : Prop :=
  ∀ n, P16648194982215467480.a n = A318649 (n + 1)

end A318649

/-! ## A318649.P669056123934199038

`A299149(n+1)*A318511(n+1)/A318653(n+1)`
-/

namespace A318649.P669056123934199038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (n + 1) * A318511 (n + 1) : ℚ) / (A318653 (n + 1) : ℚ)

end

end A318649.P669056123934199038

namespace A318649

/-- `A299149(n+1)*A318511(n+1)/A318653(n+1)` -/
def P669056123934199038.Spec : Prop :=
  ∀ n, P669056123934199038.a n = (A318649 (n + 1) : ℚ)

end A318649

/-! ## A318649.P1514299675571665744

`A318512(n+1)/A299150(n+1)*A318681(n+1)`
-/

namespace A318649.P1514299675571665744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318512 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ)

end

end A318649.P1514299675571665744

namespace A318649

/-- `A318512(n+1)/A299150(n+1)*A318681(n+1)` -/
def P1514299675571665744.Spec : Prop :=
  ∀ n, P1514299675571665744.a n = (A318649 (n + 1) : ℚ)

end A318649

/-! ## A318649.P10951411597858134606

`A318511(n+1)/A318680(n+1)*A318681(n+1)`
-/

namespace A318649.P10951411597858134606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318511 (n + 1) : ℚ) / (A318680 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ)

end

end A318649.P10951411597858134606

namespace A318649

/-- `A318511(n+1)/A318680(n+1)*A318681(n+1)` -/
def P10951411597858134606.Spec : Prop :=
  ∀ n, P10951411597858134606.a n = (A318649 (n + 1) : ℚ)

end A318649

/-! ## A318649.P6598295031165113064

`A318681(n+1)/gcd(A299150(n+1), A318680(n+1))`
-/

namespace A318649.P6598295031165113064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318681 (n + 1) : ℚ) / (Int.gcd (A299150 (n + 1)) (A318680 (n + 1)) : ℚ)

end

end A318649.P6598295031165113064

namespace A318649

/-- `A318681(n+1)/gcd(A299150(n+1), A318680(n+1))` -/
def P6598295031165113064.Spec : Prop :=
  ∀ n, P6598295031165113064.a n = (A318649 (n + 1) : ℚ)

end A318649

/-!
# A318650: Numerators of the sequence whose Dirichlet convolution with itself yields A057521, the powerful part of n.

The programs for A318650, there is no canonical definition to state claims against.
-/

/-! ## A318650.P10496799959990858880

`A239003(A062879(2*n+5)²)+1`
-/

namespace A318650.P10496799959990858880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A062879 (2 * n + 5) ^ 2).toNat + 1

end

end A318650.P10496799959990858880

/-! ## A318650.P5452605898907785106

`A002260(A056119(n)^A275964(n))`
-/

namespace A318650.P5452605898907785106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A056119 n : ℚ) ^ (A275964 n : ℤ))).toNat

end

end A318650.P5452605898907785106

/-! ## A318650.P10788683401679456409

`A000265(A030688(n+1))%A251935(n+1)`
-/

namespace A318650.P10788683401679456409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A030688 (n + 1)).toNat) (A251935 (n + 1))

end

end A318650.P10788683401679456409

/-!
# A318651: a(n) = A046644(n)/A318512(n).

The programs for A318651, the canonical program `A318651.P14693122508814225811` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318651 has offset 1).

The definition of A318651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318651.P5486069872783348378

`2^A318652(n+1)`
-/

namespace A318651.P5486069872783348378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318652 (n + 1) : ℤ)

end

end A318651.P5486069872783348378

namespace A318651

/-- `2^A318652(n+1)` -/
def P5486069872783348378.Spec : Prop :=
  ∀ n, P5486069872783348378.a n = (A318651 (n + 1) : ℚ)

end A318651

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318651

/-- `A046644(n+1)/A318512(n+1)` -/
def P14693122508814225811.Spec : Prop :=
  ∀ n, P14693122508814225811.a n = (A318651 (n + 1) : ℚ)

end A318651

/-! ## A318651.P480440418377284756

`A000079(A318652(n+1))`
-/

namespace A318651.P480440418377284756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318652 (n + 1)).toNat

end

end A318651.P480440418377284756

namespace A318651

/-- `A000079(A318652(n+1))` -/
def P480440418377284756.Spec : Prop :=
  ∀ n, P480440418377284756.a n = A318651 (n + 1)

end A318651

/-! ## A318651.P13529774809462310938

`A011782(A318652(n+1)+1)`
-/

namespace A318651.P13529774809462310938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A318652 (n + 1) + 1).toNat

end

end A318651.P13529774809462310938

namespace A318651

/-- `A011782(A318652(n+1)+1)` -/
def P13529774809462310938.Spec : Prop :=
  ∀ n, P13529774809462310938.a n = A318651 (n + 1)

end A318651

/-! ## A318651.P17687832265962410825

`gcd(A046644(n+1), A130665(n))`
-/

namespace A318651.P17687832265962410825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046644 (n + 1)) (A130665 n)

end

end A318651.P17687832265962410825

namespace A318651

/-- `gcd(A046644(n+1), A130665(n))` -/
def P17687832265962410825.Spec : Prop :=
  ∀ n, (P17687832265962410825.a n : ℤ) = A318651 (n + 1)

end A318651

/-! ## A318651.P2470777740158313872

`(A000225(A318652(n+1)+1)+1)/2`
-/

namespace A318651.P2470777740158313872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A318652 (n + 1) + 1).toNat + 1 : ℚ) / 2

end

end A318651.P2470777740158313872

namespace A318651

/-- `(A000225(A318652(n+1)+1)+1)/2` -/
def P2470777740158313872.Spec : Prop :=
  ∀ n, P2470777740158313872.a n = (A318651 (n + 1) : ℚ)

end A318651

/-! ## A318651.P17259382764346557863

`gcd(n*A046644(n+1), A002594(n+1))`
-/

namespace A318651.P17259382764346557863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A046644 (n + 1)) (A002594 (n + 1))

end

end A318651.P17259382764346557863

namespace A318651

/-- `gcd(n*A046644(n+1), A002594(n+1))` -/
def P17259382764346557863.Spec : Prop :=
  ∀ n, (P17259382764346557863.a n : ℤ) = A318651 (n + 1)

end A318651

/-! ## A318651.P6334588385483259105

`(n+1)²*A046643(n+1)/A318649(n+1)`
-/

namespace A318651.P6334588385483259105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * A046643 (n + 1) : ℚ) / (A318649 (n + 1) : ℚ)

end

end A318651.P6334588385483259105

namespace A318651

/-- `(n+1)²*A046643(n+1)/A318649(n+1)` -/
def P6334588385483259105.Spec : Prop :=
  ∀ n, P6334588385483259105.a n = (A318651 (n + 1) : ℚ)

end A318651

/-! ## A318651.P606366309691916772

`A006519((n+1)²)/A006519(A318649(n+1))`
-/

namespace A318651.P606366309691916772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 ((n + 1) ^ 2) : ℚ) / (A006519 (A318649 (n + 1)).toNat : ℚ)

end

end A318651.P606366309691916772

namespace A318651

/-- `A006519((n+1)²)/A006519(A318649(n+1))` -/
def P606366309691916772.Spec : Prop :=
  ∀ n, P606366309691916772.a n = (A318651 (n + 1) : ℚ)

end A318651

/-!
# A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

The programs for A318652, the canonical program `A318652.P1218394255038798337` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318652 has offset 1).

The definition of A318652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A318652

/-- `A046645(n+1)-A318513(n+1)` -/
def P1218394255038798337.Spec : Prop :=
  ∀ n, P1218394255038798337.a n = A318652 (n + 1)

theorem P1218394255038798337.correct : P1218394255038798337.Spec := by
  intro n
  simp only [A318652, Nat.add_sub_cancel]

end A318652

/-! ## A318652.P942970967800983469

`val(A046644(n+1)/A318512(n+1), 2)`
-/

namespace A318652.P942970967800983469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ))).toNat 2

end

end A318652.P942970967800983469

namespace A318652

/-- `val(A046644(n+1)/A318512(n+1), 2)` -/
def P942970967800983469.Spec : Prop :=
  ∀ n, (P942970967800983469.a n : ℤ) = A318652 (n + 1)

end A318652

/-! ## A318652.P14751690733583790518

`A007814(A318651(n+1))`
-/

namespace A318652.P14751690733583790518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318651 (n + 1)).toNat

end

end A318652.P14751690733583790518

namespace A318652

/-- `A007814(A318651(n+1))` -/
def P14751690733583790518.Spec : Prop :=
  ∀ n, P14751690733583790518.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P15298063633436168295

`log2(gcd((n+1)², A046644(n+1)))`
-/

namespace A318652.P15298063633436168295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd ((n + 1) ^ 2 : ℤ) (A046644 (n + 1)) : ℝ)

end

end A318652.P15298063633436168295

namespace A318652

/-- `log2(gcd((n+1)², A046644(n+1)))` -/
def P15298063633436168295.Spec : Prop :=
  ∀ n, P15298063633436168295.a n = (A318652 (n + 1) : ℝ)

end A318652

/-! ## A318652.P9275009829127964739

`2*A007814(n+1)-A318655(n+1)`
-/

namespace A318652.P9275009829127964739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A318655 (n + 1)

end

end A318652.P9275009829127964739

namespace A318652

/-- `2*A007814(n+1)-A318655(n+1)` -/
def P9275009829127964739.Spec : Prop :=
  ∀ n, P9275009829127964739.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P11288368291615221008

`val(A318651(n+1), A085058(A020639(n+1)))`
-/

namespace A318652.P11288368291615221008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318651 (n + 1)).toNat (A085058 (A020639 (n + 1)).toNat).toNat

end

end A318652.P11288368291615221008

namespace A318652

/-- `val(A318651(n+1), A085058(A020639(n+1)))` -/
def P11288368291615221008.Spec : Prop :=
  ∀ n, (P11288368291615221008.a n : ℤ) = A318652 (n + 1)

end A318652

/-! ## A318652.P10962315523152440839

`val(A318651(n+1), A085058(A037445(n+1)))`
-/

namespace A318652.P10962315523152440839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318651 (n + 1)).toNat (A085058 (A037445 (n + 1)).toNat).toNat

end

end A318652.P10962315523152440839

namespace A318652

/-- `val(A318651(n+1), A085058(A037445(n+1)))` -/
def P10962315523152440839.Spec : Prop :=
  ∀ n, (P10962315523152440839.a n : ℤ) = A318652 (n + 1)

end A318652

/-! ## A318652.P4741857133877140142

`val(A318651(n+1), A293442(A020639(2*n+5)))`
-/

namespace A318652.P4741857133877140142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318651 (n + 1)).toNat (A293442 (A020639 (2 * n + 5)).toNat).toNat

end

end A318652.P4741857133877140142

namespace A318652

/-- `val(A318651(n+1), A293442(A020639(2*n+5)))` -/
def P4741857133877140142.Spec : Prop :=
  ∀ n, (P4741857133877140142.a n : ℤ) = A318652 (n + 1)

end A318652

/-! ## A318652.P10250426911477482927

`A046645(n+1)-A007814(A318512(n+1))`
-/

namespace A318652.P10250426911477482927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A007814 (A318512 (n + 1)).toNat

end

end A318652.P10250426911477482927

namespace A318652

/-- `A046645(n+1)-A007814(A318512(n+1))` -/
def P10250426911477482927.Spec : Prop :=
  ∀ n, P10250426911477482927.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P13621503424051253967

`val(A318651(n+1), A000040(A318658(n+1)))`
-/

namespace A318652.P13621503424051253967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318651 (n + 1)).toNat (A000040 (A318658 (n + 1)).toNat).toNat

end

end A318652.P13621503424051253967

namespace A318652

/-- `val(A318651(n+1), A000040(A318658(n+1)))` -/
def P13621503424051253967.Spec : Prop :=
  ∀ n, (P13621503424051253967.a n : ℤ) = A318652 (n + 1)

end A318652

/-! ## A318652.P15297682762886226687

`val(A318651(n+1), A014963(A318658(2*n+3)))`
-/

namespace A318652.P15297682762886226687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318651 (n + 1)).toNat (A014963 (A318658 (2 * n + 3)).toNat).toNat

end

end A318652.P15297682762886226687

namespace A318652

/-- `val(A318651(n+1), A014963(A318658(2*n+3)))` -/
def P15297682762886226687.Spec : Prop :=
  ∀ n, (P15297682762886226687.a n : ℤ) = A318652 (n + 1)

end A318652

/-! ## A318652.P13673916810297484840

`A000005(A318651(n+1))-A318666(A318666(n+1))`
-/

namespace A318652.P13673916810297484840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318651 (n + 1)).toNat - A318666 (A318666 (n + 1)).toNat

end

end A318652.P13673916810297484840

namespace A318652

/-- `A000005(A318651(n+1))-A318666(A318666(n+1))` -/
def P13673916810297484840.Spec : Prop :=
  ∀ n, P13673916810297484840.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P4778159282138294240

`A000005(2*A318651(n+1))-2`
-/

namespace A318652.P4778159282138294240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A318651 (n + 1)).toNat - 2

end

end A318652.P4778159282138294240

namespace A318652

/-- `A000005(2*A318651(n+1))-2` -/
def P4778159282138294240.Spec : Prop :=
  ∀ n, P4778159282138294240.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P6217525785112743609

`A007814(A046644(n+1))-A318513(n+1)`
-/

namespace A318652.P6217525785112743609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046644 (n + 1)).toNat - A318513 (n + 1)

end

end A318652.P6217525785112743609

namespace A318652

/-- `A007814(A046644(n+1))-A318513(n+1)` -/
def P6217525785112743609.Spec : Prop :=
  ∀ n, P6217525785112743609.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P5824568932426958548

`A007814(A046644(n+1)/A318512(n+1))`
-/

namespace A318652.P5824568932426958548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ))).toNat

end

end A318652.P5824568932426958548

namespace A318652

/-- `A007814(A046644(n+1)/A318512(n+1))` -/
def P5824568932426958548.Spec : Prop :=
  ∀ n, P5824568932426958548.a n = A318652 (n + 1)

end A318652

/-! ## A318652.P11740604625531949544

`A007814((n+1)²)-A318655(n+1)`
-/

namespace A318652.P11740604625531949544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1) ^ 2) - A318655 (n + 1)

end

end A318652.P11740604625531949544

namespace A318652

/-- `A007814((n+1)²)-A318655(n+1)` -/
def P11740604625531949544.Spec : Prop :=
  ∀ n, P11740604625531949544.a n = A318652 (n + 1)

end A318652

/-!
# A318653: Numerators of the sequence whose Dirichlet convolution with itself yields A007947, the squarefree kernel of n.

The programs for A318653, there is no canonical definition to state claims against.
-/

/-! ## A318653.P13000045660325922126

`A318680(n+1)/(n+1)`
-/

namespace A318653.P13000045660325922126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318680 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A318653.P13000045660325922126

/-! ## A318653.P11265325276066724939

`A318511(n+1)/gcd(n+1, A318511(n+1))`
-/

namespace A318653.P11265325276066724939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318511 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A318511 (n + 1)) : ℚ)

end

end A318653.P11265325276066724939

/-! ## A318653.P9066767643371429781

`A299149(n+1)*A318511(n+1)/A318649(n+1)`
-/

namespace A318653.P9066767643371429781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (n + 1) * A318511 (n + 1) : ℚ) / (A318649 (n + 1) : ℚ)

end

end A318653.P9066767643371429781

/-! ## A318653.P3851712610235629838

`A318511(n+1)/A318649(n+1)*A318681(n+1)/(n+1)`
-/

namespace A318653.P3851712610235629838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318511 (n + 1) : ℚ) / (A318649 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A318653.P3851712610235629838

/-! ## A318653.P5285591646809989680

`A204455((n+1)*∏{p}[n+1, #]*∏{p}[n+1, #^val(n+1, #²)]!)`
-/

namespace A318653.P5285591646809989680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) * Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

end

end A318653.P5285591646809989680

/-!
# A318654: Positions of even terms in A318649.

The programs for A318654, the canonical program `A318654.P4089455956200200647` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318654 has offset 1).

The definition of A318654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318654.P4089455956200200647

`lt[0, A318655(n+2)]+2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A318654

/-- `lt[0, A318655(n+2)]+2` -/
def P4089455956200200647.Spec : Prop :=
  ∀ n, (P4089455956200200647.a n : ℤ) = A318654 (n + 1)

theorem P4089455956200200647.correct : P4089455956200200647.Spec := by
  intro n
  simp only [A318654, Nat.add_sub_cancel]

end A318654

/-! ## A318654.P15184913809232349556

`lt[1, A318656(n+1)+1]+1`
-/

namespace A318654.P15184913809232349556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A318654.P15184913809232349556

namespace A318654

/-- `lt[1, A318656(n+1)+1]+1` -/
def P15184913809232349556.Spec : Prop :=
  ∀ n, (P15184913809232349556.a n : ℤ) = A318654 (n + 1)

end A318654

/-! ## A318654.P7323017259151956694

`lt[1, A318655(A028310(n))+1]`
-/

namespace A318654.P7323017259151956694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A318654.P7323017259151956694

namespace A318654

/-- `lt[1, A318655(A028310(n))+1]` -/
def P7323017259151956694.Spec : Prop :=
  ∀ n, (P7323017259151956694.a n : ℤ) = A318654 (n + 1)

end A318654

/-! ## A318654.P12071558891608403077

`lt[A000007(n), A318656(n+1)]+1`
-/

namespace A318654.P12071558891608403077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A318654.P12071558891608403077

namespace A318654

/-- `lt[A000007(n), A318656(n+1)]+1` -/
def P12071558891608403077.Spec : Prop :=
  ∀ n, (P12071558891608403077.a n : ℤ) = A318654 (n + 1)

end A318654

/-! ## A318654.P5500438782643538373

`eq[1, ceil(A318656(A020761(n)+n)/24)]`
-/

namespace A318654.P5500438782643538373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318656 (A020761 n + (n : ℤ)).toNat : ℚ) / 24⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318654.P5500438782643538373

namespace A318654

/-- `eq[1, ceil(A318656(A020761(n)+n)/24)]` -/
def P5500438782643538373.Spec : Prop :=
  ∀ n, (P5500438782643538373.a n : ℤ) = A318654 (n + 1)

end A318654

/-! ## A318654.P3641790628741826977

`lt[A299150(n+1), A006519(n+1)]+1`
-/

namespace A318654.P3641790628741826977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A318654.P3641790628741826977

namespace A318654

/-- `lt[A299150(n+1), A006519(n+1)]+1` -/
def P3641790628741826977.Spec : Prop :=
  ∀ n, (P3641790628741826977.a n : ℤ) = A318654 (n + 1)

end A318654

/-! ## A318654.P11982752610857226557

`lt[A000007(n), A318656(A000007(n)+n)]`
-/

namespace A318654.P11982752610857226557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A318654.P11982752610857226557

namespace A318654

/-- `lt[A000007(n), A318656(A000007(n)+n)]` -/
def P11982752610857226557.Spec : Prop :=
  ∀ n, (P11982752610857226557.a n : ℤ) = A318654 (n + 1)

end A318654

/-!
# A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

The programs for A318655, the canonical program `A318655.P1929699708280935336` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318655 has offset 1).

The definition of A318655 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318655.P15870475144563533263

`val(A318649(n+1), 2)`
-/

namespace A318655.P15870475144563533263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318649 (n + 1)).toNat 2

end

end A318655.P15870475144563533263

namespace A318655

/-- `val(A318649(n+1), 2)` -/
def P15870475144563533263.Spec : Prop :=
  ∀ n, (P15870475144563533263.a n : ℤ) = A318655 (n + 1)

end A318655

/-! ## A318655.P1929699708280935336

`A007814(A318649(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A318655

/-- `A007814(A318649(n+1))` -/
def P1929699708280935336.Spec : Prop :=
  ∀ n, P1929699708280935336.a n = A318655 (n + 1)

theorem P1929699708280935336.correct : P1929699708280935336.Spec := by
  intro n
  simp only [A318655, Nat.add_sub_cancel]

end A318655

/-! ## A318655.P12745287558469982643

`val(abs(A318511(n+1)), 2)`
-/

namespace A318655.P12745287558469982643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A318511 (n + 1)|.toNat 2

end

end A318655.P12745287558469982643

namespace A318655

/-- `val(abs(A318511(n+1)), 2)` -/
def P12745287558469982643.Spec : Prop :=
  ∀ n, (P12745287558469982643.a n : ℤ) = A318655 (n + 1)

end A318655

/-! ## A318655.P7268461182384988700

`A318656(n+1)+A318513(n+1)`
-/

namespace A318655.P7268461182384988700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (n + 1) + A318513 (n + 1)

end

end A318655.P7268461182384988700

namespace A318655

/-- `A318656(n+1)+A318513(n+1)` -/
def P7268461182384988700.Spec : Prop :=
  ∀ n, P7268461182384988700.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P4545362509730736130

`log2(gcd(A318649(n+1), A318651(n+1)))`
-/

namespace A318655.P4545362509730736130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A318649 (n + 1)) (A318651 (n + 1)) : ℝ)

end

end A318655.P4545362509730736130

namespace A318655

/-- `log2(gcd(A318649(n+1), A318651(n+1)))` -/
def P4545362509730736130.Spec : Prop :=
  ∀ n, P4545362509730736130.a n = (A318655 (n + 1) : ℝ)

end A318655

/-! ## A318655.P3824789726546253816

`2*A007814(n+1)-A318652(n+1)`
-/

namespace A318655.P3824789726546253816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A318652 (n + 1)

end

end A318655.P3824789726546253816

namespace A318655

/-- `2*A007814(n+1)-A318652(n+1)` -/
def P3824789726546253816.Spec : Prop :=
  ∀ n, P3824789726546253816.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P8356814828772702396

`A318656(n*ceil(A318656(n+1)/24)+1)`
-/

namespace A318655.P8356814828772702396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 ((n : ℤ) * ⌈(A318656 (n + 1) : ℚ) / 24⌉ + 1).toNat

end

end A318655.P8356814828772702396

namespace A318655

/-- `A318656(n*ceil(A318656(n+1)/24)+1)` -/
def P8356814828772702396.Spec : Prop :=
  ∀ n, P8356814828772702396.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P16808620029700191435

`val(gcd(n+1, A318511(n+1))*A299149(n+1), 2)`
-/

namespace A318655.P16808620029700191435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((Int.gcd (n + 1 : ℤ) (A318511 (n + 1)) : ℤ) * A299149 (n + 1)).toNat 2

end

end A318655.P16808620029700191435

namespace A318655

/-- `val(gcd(n+1, A318511(n+1))*A299149(n+1), 2)` -/
def P16808620029700191435.Spec : Prop :=
  ∀ n, (P16808620029700191435.a n : ℤ) = A318655 (n + 1)

end A318655

/-! ## A318655.P11536028235027962582

`val(A318512(n+1)/A299150(n+1)*A318681(n+1), 2)`
-/

namespace A318655.P11536028235027962582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A318512 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ))).toNat 2

end

end A318655.P11536028235027962582

namespace A318655

/-- `val(A318512(n+1)/A299150(n+1)*A318681(n+1), 2)` -/
def P11536028235027962582.Spec : Prop :=
  ∀ n, (P11536028235027962582.a n : ℤ) = A318655 (n + 1)

end A318655

/-! ## A318655.P15063805576004181174

`A318656(n+1)+A007814(A318512(n+1))`
-/

namespace A318655.P15063805576004181174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (n + 1) + A007814 (A318512 (n + 1)).toNat

end

end A318655.P15063805576004181174

namespace A318655

/-- `A318656(n+1)+A007814(A318512(n+1))` -/
def P15063805576004181174.Spec : Prop :=
  ∀ n, P15063805576004181174.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P13973694835298769549

`2*A007814(n+1)-A007814(A318651(n+1))`
-/

namespace A318655.P13973694835298769549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A007814 (A318651 (n + 1)).toNat

end

end A318655.P13973694835298769549

namespace A318655

/-- `2*A007814(n+1)-A007814(A318651(n+1))` -/
def P13973694835298769549.Spec : Prop :=
  ∀ n, P13973694835298769549.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P9972081913164323910

`A007814((n+1)²)-A318652(n+1)`
-/

namespace A318655.P9972081913164323910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1) ^ 2) - A318652 (n + 1)

end

end A318655.P9972081913164323910

namespace A318655

/-- `A007814((n+1)²)-A318652(n+1)` -/
def P9972081913164323910.Spec : Prop :=
  ∀ n, P9972081913164323910.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P12783046826657366317

`A007814((n+1)²/A318651(n+1))`
-/

namespace A318655.P12783046826657366317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A318651 (n + 1) : ℚ))).toNat

end

end A318655.P12783046826657366317

namespace A318655

/-- `A007814((n+1)²/A318651(n+1))` -/
def P12783046826657366317.Spec : Prop :=
  ∀ n, P12783046826657366317.a n = A318655 (n + 1)

end A318655

/-! ## A318655.P16666903394253009300

`A007814((n+1)²)-A007814(A318651(n+1))`
-/

namespace A318655.P16666903394253009300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1) ^ 2) - A007814 (A318651 (n + 1)).toNat

end

end A318655.P16666903394253009300

namespace A318655

/-- `A007814((n+1)²)-A007814(A318651(n+1))` -/
def P16666903394253009300.Spec : Prop :=
  ∀ n, P16666903394253009300.a n = A318655 (n + 1)

end A318655

/-!
# A318656: The 2-adic valuation of ratio A318649(n)/A318512(n); a(n) = 2*A007814(n) - A046645(n).

The programs for A318656, the canonical program `A318656.P13008805478963827236` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318656 has offset 1).

The definition of A318656 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318656.P8950679647571763717

`A007814(n+1)-A318440(n+1)`
-/

namespace A318656.P8950679647571763717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A318440 (n + 1)

end

end A318656.P8950679647571763717

namespace A318656

/-- `A007814(n+1)-A318440(n+1)` -/
def P8950679647571763717.Spec : Prop :=
  ∀ n, P8950679647571763717.a n = A318656 (n + 1)

theorem P8950679647571763717.correct : P8950679647571763717.Spec := by
  intro n
  simp only [A318656, Nat.add_sub_cancel, A318656.P8950679647571763717.a, A318656.P13008805478963827236.a, A007814, A007814.P13537437864234730737.a, A046645, A046645.P11243749111570164507.a, A318440, A318440.P5886094417818087707.a, A001511, A001511.P17146462531039486101.a, A046644, A046644.P16655248551205198622.f1, A046644.P16655248551205198622.a, A006519, A006519.P10435570611646570274.a, A046161, A046161.P11774724709527425901.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318656

/-! ## A318656.P13855881830676012996

`A318655(n+1)-A318513(n+1)`
-/

namespace A318656.P13855881830676012996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 1) - A318513 (n + 1)

end

end A318656.P13855881830676012996

namespace A318656

/-- `A318655(n+1)-A318513(n+1)` -/
def P13855881830676012996.Spec : Prop :=
  ∀ n, P13855881830676012996.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P13008805478963827236

`2*A007814(n+1)-A046645(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A318656

/-- `2*A007814(n+1)-A046645(n+1)` -/
def P13008805478963827236.Spec : Prop :=
  ∀ n, P13008805478963827236.a n = A318656 (n + 1)

theorem P13008805478963827236.correct : P13008805478963827236.Spec := by
  intro n
  simp only [A318656, Nat.add_sub_cancel]

end A318656

/-! ## A318656.P8073080289873682311

`2*A007814(n+1)-A007814(A046644(n+1))`
-/

namespace A318656.P8073080289873682311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) - A007814 (A046644 (n + 1)).toNat

end

end A318656.P8073080289873682311

namespace A318656

/-- `2*A007814(n+1)-A007814(A046644(n+1))` -/
def P8073080289873682311.Spec : Prop :=
  ∀ n, P8073080289873682311.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P1623963776927639028

`A007814((n+1)²)-A046645(n+1)`
-/

namespace A318656.P1623963776927639028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1) ^ 2) - A046645 (n + 1)

end

end A318656.P1623963776927639028

namespace A318656

/-- `A007814((n+1)²)-A046645(n+1)` -/
def P1623963776927639028.Spec : Prop :=
  ∀ n, P1623963776927639028.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P2422460210289750536

`val(n+1, 2)-log2(A299150(n+1))`
-/

namespace A318656.P2422460210289750536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℝ) - Real.logb 2 (A299150 (n + 1) : ℝ)

end

end A318656.P2422460210289750536

namespace A318656

/-- `val(n+1, 2)-log2(A299150(n+1))` -/
def P2422460210289750536.Spec : Prop :=
  ∀ n, P2422460210289750536.a n = (A318656 (n + 1) : ℝ)

end A318656

/-! ## A318656.P1081221560875963751

`log2(A006519(n+1)/A299150(n+1))`
-/

namespace A318656.P1081221560875963751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A006519 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ) : ℝ)

end

end A318656.P1081221560875963751

namespace A318656

/-- `log2(A006519(n+1)/A299150(n+1))` -/
def P1081221560875963751.Spec : Prop :=
  ∀ n, P1081221560875963751.a n = (A318656 (n + 1) : ℝ)

end A318656

/-! ## A318656.P4345901195343628821

`A046645(n+1)-2*A318440(n+1)`
-/

namespace A318656.P4345901195343628821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - 2 * A318440 (n + 1)

end

end A318656.P4345901195343628821

namespace A318656

/-- `A046645(n+1)-2*A318440(n+1)` -/
def P4345901195343628821.Spec : Prop :=
  ∀ n, P4345901195343628821.a n = A318656 (n + 1)

theorem P4345901195343628821.correct : P4345901195343628821.Spec := by
  intro n
  simp only [A318656, Nat.add_sub_cancel, A318656.P4345901195343628821.a, A318656.P13008805478963827236.a, A007814, A007814.P13537437864234730737.a, A046645, A046645.P11243749111570164507.a, A318440, A318440.P5886094417818087707.a, A001511, A001511.P17146462531039486101.a, A046644, A046644.P16655248551205198622.f1, A046644.P16655248551205198622.a, A006519, A006519.P10435570611646570274.a, A046161, A046161.P11774724709527425901.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318656

/-! ## A318656.P2478429092427279290

`A000120(val(n+1, 2))-A318451(n+1)`
-/

namespace A318656.P2478429092427279290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.valuation (n + 1) 2) - A318451 (n + 1)

end

end A318656.P2478429092427279290

namespace A318656

/-- `A000120(val(n+1, 2))-A318451(n+1)` -/
def P2478429092427279290.Spec : Prop :=
  ∀ n, P2478429092427279290.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P10226819640153630767

`A318652(n+1)+A318655(n+1)-A046645(n+1)`
-/

namespace A318656.P10226819640153630767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318652 (n + 1) + (A318655 (n + 1) - A046645 (n + 1))

end

end A318656.P10226819640153630767

namespace A318656

/-- `A318652(n+1)+A318655(n+1)-A046645(n+1)` -/
def P10226819640153630767.Spec : Prop :=
  ∀ n, P10226819640153630767.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P17805215549910735443

`A007814(n+1)-(A318451(n+1)+A011371(A007814(n+1)))`
-/

namespace A318656.P17805215549910735443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - (A318451 (n + 1) + A011371 (A007814 (n + 1)).toNat)

end

end A318656.P17805215549910735443

namespace A318656

/-- `A007814(n+1)-(A318451(n+1)+A011371(A007814(n+1)))` -/
def P17805215549910735443.Spec : Prop :=
  ∀ n, P17805215549910735443.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P13261400721110965026

`A007814(n+1)-A007814(A299150(n+1))`
-/

namespace A318656.P13261400721110965026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A007814 (A299150 (n + 1)).toNat

end

end A318656.P13261400721110965026

namespace A318656

/-- `A007814(n+1)-A007814(A299150(n+1))` -/
def P13261400721110965026.Spec : Prop :=
  ∀ n, P13261400721110965026.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P2957390593601316396

`A318655(n+1)-A007814(A318512(n+1))`
-/

namespace A318656.P2957390593601316396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 1) - A007814 (A318512 (n + 1)).toNat

end

end A318656.P2957390593601316396

namespace A318656

/-- `A318655(n+1)-A007814(A318512(n+1))` -/
def P2957390593601316396.Spec : Prop :=
  ∀ n, P2957390593601316396.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P9978687538170016510

`A085058(n)-A085058(A299150(n+1)-1)`
-/

namespace A318656.P9978687538170016510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - A085058 (A299150 (n + 1) - 1).toNat

end

end A318656.P9978687538170016510

namespace A318656

/-- `A085058(n)-A085058(A299150(n+1)-1)` -/
def P9978687538170016510.Spec : Prop :=
  ∀ n, P9978687538170016510.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P7164200192278327590

`A318440(A003961(n+1))-2*A318440(n+1)`
-/

namespace A318656.P7164200192278327590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A003961 (n + 1)).toNat - 2 * A318440 (n + 1)

end

end A318656.P7164200192278327590

namespace A318656

/-- `A318440(A003961(n+1))-2*A318440(n+1)` -/
def P7164200192278327590.Spec : Prop :=
  ∀ n, P7164200192278327590.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P9350340535835091464

`A318440(A045965(n+1))-2*A318440(n+1)`
-/

namespace A318656.P9350340535835091464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A045965 (n + 1)).toNat - 2 * A318440 (n + 1)

end

end A318656.P9350340535835091464

namespace A318656

/-- `A318440(A045965(n+1))-2*A318440(n+1)` -/
def P9350340535835091464.Spec : Prop :=
  ∀ n, P9350340535835091464.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P13895961619692452297

`A318440(A064988(n+1))-2*A318440(n+1)`
-/

namespace A318656.P13895961619692452297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A064988 (n + 1)).toNat - 2 * A318440 (n + 1)

end

end A318656.P13895961619692452297

namespace A318656

/-- `A318440(A064988(n+1))-2*A318440(n+1)` -/
def P13895961619692452297.Spec : Prop :=
  ∀ n, P13895961619692452297.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P11117267114255800950

`A001511(n+1)+A007814(n+1)-A001511(A046644(n+1))`
-/

namespace A318656.P11117267114255800950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A007814 (n + 1) - A001511 (A046644 (n + 1)).toNat)

end

end A318656.P11117267114255800950

namespace A318656

/-- `A001511(n+1)+A007814(n+1)-A001511(A046644(n+1))` -/
def P11117267114255800950.Spec : Prop :=
  ∀ n, P11117267114255800950.a n = A318656 (n + 1)

end A318656

/-! ## A318656.P16503612262713524168

`A007814((n+1)²)-A007814(A046644(n+1))`
-/

namespace A318656.P16503612262713524168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1) ^ 2) - A007814 (A046644 (n + 1)).toNat

end

end A318656.P16503612262713524168

namespace A318656

/-- `A007814((n+1)²)-A007814(A046644(n+1))` -/
def P16503612262713524168.Spec : Prop :=
  ∀ n, P16503612262713524168.a n = A318656 (n + 1)

end A318656

/-!
# A318657: Numerators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

The programs for A318657, there is no canonical definition to state claims against.
-/

/-! ## A318657.P6841589243638721844

`char[2*n]*A257098(n+1)`
-/

namespace A318657.P6841589243638721844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A257098 (n + 1)

end

end A318657.P6841589243638721844

/-! ## A318657.P6950784864825373618

`and(-A059841(n), A257098(n+1))`
-/

namespace A318657.P6950784864825373618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A059841 n) (A257098 (n + 1))

end

end A318657.P6950784864825373618

/-! ## A318657.P5302141466706765386

`round(A257098(n+1)/A075180(n))`
-/

namespace A318657.P5302141466706765386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257098 (n + 1) : ℚ) / (A075180 n : ℚ))

end

end A318657.P5302141466706765386

/-! ## A318657.P1386259454884859491

`A257098(n+1)-A000035(n)*A257098(n+1)`
-/

namespace A318657.P1386259454884859491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (n + 1) - A000035 n * A257098 (n + 1)

end

end A318657.P1386259454884859491

/-! ## A318657.P2446002724092764522

`and(A110514(2*n+1), A257098(n+1))`
-/

namespace A318657.P2446002724092764522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110514 (2 * n + 1)) (A257098 (n + 1))

end

end A318657.P2446002724092764522

/-! ## A318657.P13945846799092815371

`A257098(n+1)*A265722(A265722(n+1))`
-/

namespace A318657.P13945846799092815371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (n + 1) * A265722 (A265722 (n + 1)).toNat

end

end A318657.P13945846799092815371

/-! ## A318657.P6375319820121004680

`A257098(n+1)%A052552(n)`
-/

namespace A318657.P6375319820121004680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257098 (n + 1)) (A052552 n)

end

end A318657.P6375319820121004680

/-! ## A318657.P6605981253974150831

`A257098(n+1)*A266982(n²)`
-/

namespace A318657.P6605981253974150831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (n + 1) * A266982 (n ^ 2)

end

end A318657.P6605981253974150831

/-! ## A318657.P6194725224327051733

`A166698(A135875(n+1))`
-/

namespace A318657.P6194725224327051733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A135875 (n + 1)).toNat

end

end A318657.P6194725224327051733

/-! ## A318657.P14544252128384085748

`A276833(n+1)%A358275(n+2)`
-/

namespace A318657.P14544252128384085748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276833 (n + 1)) (A358275 (n + 2))

end

end A318657.P14544252128384085748

/-!
# A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

The programs for A318658, the canonical program `A318658.P11069036608746997709` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318658 has offset 1).

The definition of A318658 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318659, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318658.P11069036608746997709

`2^A318659(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318658

/-- `2^A318659(n+1)` -/
def P11069036608746997709.Spec : Prop :=
  ∀ n, P11069036608746997709.a n = (A318658 (n + 1) : ℚ)

end A318658

/-! ## A318658.P5559540085635569704

`A046644(C(or(1, n), n))`
-/

namespace A318658.P5559540085635569704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Nat.choose (Nat.lor 1 n) n)

end

end A318658.P5559540085635569704

namespace A318658

/-- `A046644(C(or(1, n), n))` -/
def P5559540085635569704.Spec : Prop :=
  ∀ n, P5559540085635569704.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P18218581003261327693

`gcd(2, n)^A046645(n+1)`
-/

namespace A318658.P18218581003261327693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) ^ (A046645 (n + 1) : ℤ)

end

end A318658.P18218581003261327693

namespace A318658

/-- `gcd(2, n)^A046645(n+1)` -/
def P18218581003261327693.Spec : Prop :=
  ∀ n, P18218581003261327693.a n = (A318658 (n + 1) : ℚ)

end A318658

/-! ## A318658.P11002960022288193805

`gcd(n%2, A046644(n+1))`
-/

namespace A318658.P11002960022288193805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A046644 (n + 1))

end

end A318658.P11002960022288193805

namespace A318658

/-- `gcd(n%2, A046644(n+1))` -/
def P11002960022288193805.Spec : Prop :=
  ∀ n, (P11002960022288193805.a n : ℤ) = A318658 (n + 1)

end A318658

/-! ## A318658.P12695316194715250078

`A046644(gcd(n+1, or(1, n)))`
-/

namespace A318658.P12695316194715250078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Nat.gcd (n + 1) (Nat.lor 1 n))

end

end A318658.P12695316194715250078

namespace A318658

/-- `A046644(gcd(n+1, or(1, n)))` -/
def P12695316194715250078.Spec : Prop :=
  ∀ n, P12695316194715250078.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P2991355572952071906

`(char[2*n]+1)^A318513(n+1)`
-/

namespace A318658.P2991355572952071906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) ^ (A318513 (n + 1) : ℤ)

end

end A318658.P2991355572952071906

namespace A318658

/-- `(char[2*n]+1)^A318513(n+1)` -/
def P2991355572952071906.Spec : Prop :=
  ∀ n, P2991355572952071906.a n = (A318658 (n + 1) : ℚ)

end A318658

/-! ## A318658.P16966498965475691423

`A318512(n+1)^C(n, 2*n*and(1, n))`
-/

namespace A318658.P16966498965475691423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318512 (n + 1) ^ Nat.choose n (2 * n * Nat.land 1 n)

end

end A318658.P16966498965475691423

namespace A318658

/-- `A318512(n+1)^C(n, 2*n*and(1, n))` -/
def P16966498965475691423.Spec : Prop :=
  ∀ n, P16966498965475691423.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P4576957066258850377

`A299150(A141310(n))`
-/

namespace A318658.P4576957066258850377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A141310 n).toNat

end

end A318658.P4576957066258850377

namespace A318658

/-- `A299150(A141310(n))` -/
def P4576957066258850377.Spec : Prop :=
  ∀ n, P4576957066258850377.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P17266666726263116199

`A046644(A093178(n+1))`
-/

namespace A318658.P17266666726263116199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A093178 (n + 1)).toNat

end

end A318658.P17266666726263116199

namespace A318658

/-- `A046644(A093178(n+1))` -/
def P17266666726263116199.Spec : Prop :=
  ∀ n, P17266666726263116199.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P12114817341835908223

`A000079(A318659(n+1))`
-/

namespace A318658.P12114817341835908223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318659 (n + 1)).toNat

end

end A318658.P12114817341835908223

namespace A318658

/-- `A000079(A318659(n+1))` -/
def P12114817341835908223.Spec : Prop :=
  ∀ n, P12114817341835908223.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P13109623606323395288

`A299150(A086112(n+1))`
-/

namespace A318658.P13109623606323395288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A086112 (n + 1)).toNat

end

end A318658.P13109623606323395288

namespace A318658

/-- `A299150(A086112(n+1))` -/
def P13109623606323395288.Spec : Prop :=
  ∀ n, P13109623606323395288.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P932148527640112069

`A318450(A230089(n+1))`
-/

namespace A318658.P932148527640112069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318450 (A230089 (n + 1)).toNat

end

end A318658.P932148527640112069

namespace A318658

/-- `A318450(A230089(n+1))` -/
def P932148527640112069.Spec : Prop :=
  ∀ n, P932148527640112069.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P383233933708422826

`A016116(2*A318659(n+1))`
-/

namespace A318658.P383233933708422826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A318659 (n + 1)).toNat

end

end A318658.P383233933708422826

namespace A318658

/-- `A016116(2*A318659(n+1))` -/
def P383233933708422826.Spec : Prop :=
  ∀ n, P383233933708422826.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P16164924610920434155

`A299150(2-A093178(n)+n)`
-/

namespace A318658.P16164924610920434155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (2 - A093178 n + (n : ℤ)).toNat

end

end A318658.P16164924610920434155

namespace A318658

/-- `A299150(2-A093178(n)+n)` -/
def P16164924610920434155.Spec : Prop :=
  ∀ n, P16164924610920434155.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P10859869950702747925

`A299150(2-(A093178(n)-n))`
-/

namespace A318658.P10859869950702747925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (2 - (A093178 n - (n : ℤ))).toNat

end

end A318658.P10859869950702747925

namespace A318658

/-- `A299150(2-(A093178(n)-n))` -/
def P10859869950702747925.Spec : Prop :=
  ∀ n, P10859869950702747925.a n = A318658 (n + 1)

end A318658

/-! ## A318658.P11404249550292417045

`gcd(A008455(n), A046644(n+1))`
-/

namespace A318658.P11404249550292417045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008455 n) (A046644 (n + 1))

end

end A318658.P11404249550292417045

namespace A318658

/-- `gcd(A008455(n), A046644(n+1))` -/
def P11404249550292417045.Spec : Prop :=
  ∀ n, (P11404249550292417045.a n : ℤ) = A318658 (n + 1)

end A318658

/-! ## A318658.P8393594180446349237

`gcd(A010674(n), A318450(n+1))`
-/

namespace A318658.P8393594180446349237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010674 n) (A318450 (n + 1))

end

end A318658.P8393594180446349237

namespace A318658

/-- `gcd(A010674(n), A318450(n+1))` -/
def P8393594180446349237.Spec : Prop :=
  ∀ n, (P8393594180446349237.a n : ℤ) = A318658 (n + 1)

end A318658

/-! ## A318658.P14460638091854890072

`gcd(A010676(n), A318662(n+1))`
-/

namespace A318658.P14460638091854890072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010676 n) (A318662 (n + 1))

end

end A318658.P14460638091854890072

namespace A318658

/-- `gcd(A010676(n), A318662(n+1))` -/
def P14460638091854890072.Spec : Prop :=
  ∀ n, (P14460638091854890072.a n : ℤ) = A318658 (n + 1)

end A318658

/-! ## A318658.P7360422720813640721

`gcd(A299150(n+1), A318315(∏{p}[n+1, #]))`
-/

namespace A318658.P7360422720813640721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299150 (n + 1)) (A318315 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A318658.P7360422720813640721

namespace A318658

/-- `gcd(A299150(n+1), A318315(∏{p}[n+1, #]))` -/
def P7360422720813640721.Spec : Prop :=
  ∀ n, (P7360422720813640721.a n : ℤ) = A318658 (n + 1)

end A318658

/-! ## A318658.P15451453428328927248

`A299150(A266303(n+1))`
-/

namespace A318658.P15451453428328927248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A266303 (n + 1)).toNat

end

end A318658.P15451453428328927248

namespace A318658

/-- `A299150(A266303(n+1))` -/
def P15451453428328927248.Spec : Prop :=
  ∀ n, P15451453428328927248.a n = A318658 (n + 1)

end A318658

/-!
# A318659: The 2-adic valuation of A318658.

The programs for A318659, the canonical program `A318659.P16805546807903193953` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318659 has offset 1).

The definition of A318659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318659.P7263319046953308454

`val(A318658(n+1), 2)`
-/

namespace A318659.P7263319046953308454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318658 (n + 1)).toNat 2

end

end A318659.P7263319046953308454

namespace A318659

/-- `val(A318658(n+1), 2)` -/
def P7263319046953308454.Spec : Prop :=
  ∀ n, (P7263319046953308454.a n : ℤ) = A318659 (n + 1)

end A318659

/-! ## A318659.P13526907410002898912

`A007814(A318658(n+1))`
-/

namespace A318659.P13526907410002898912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318658 (n + 1)).toNat

end

end A318659.P13526907410002898912

namespace A318659

/-- `A007814(A318658(n+1))` -/
def P13526907410002898912.Spec : Prop :=
  ∀ n, P13526907410002898912.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P11496283627536926794

`A046645(n%or(1, n)+1)`
-/

namespace A318659.P11496283627536926794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n % Nat.lor 1 n + 1)

end

end A318659.P11496283627536926794

namespace A318659

/-- `A046645(n%or(1, n)+1)` -/
def P11496283627536926794.Spec : Prop :=
  ∀ n, P11496283627536926794.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P18342775538126963865

`A046645(gcd(n+1, or(1, n)))`
-/

namespace A318659.P18342775538126963865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (Nat.gcd (n + 1) (Nat.lor 1 n))

end

end A318659.P18342775538126963865

namespace A318659

/-- `A046645(gcd(n+1, or(1, n)))` -/
def P18342775538126963865.Spec : Prop :=
  ∀ n, P18342775538126963865.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P7193536718020589779

`lcm(log2(gcd(2, n)), A046645(n+1))`
-/

namespace A318659.P7193536718020589779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))) (A046645 (n + 1))

end

end A318659.P7193536718020589779

namespace A318659

/-- `lcm(log2(gcd(2, n)), A046645(n+1))` -/
def P7193536718020589779.Spec : Prop :=
  ∀ n, (P7193536718020589779.a n : ℤ) = A318659 (n + 1)

end A318659

/-! ## A318659.P2843602876713082381

`char[2*n]*A318440(n+1)`
-/

namespace A318659.P2843602876713082381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A318440 (n + 1)

end

end A318659.P2843602876713082381

namespace A318659

/-- `char[2*n]*A318440(n+1)` -/
def P2843602876713082381.Spec : Prop :=
  ∀ n, P2843602876713082381.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P17477424466210126536

`char[2*n]*A318513(n+1)`
-/

namespace A318659.P17477424466210126536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A318513 (n + 1)

end

end A318659.P17477424466210126536

namespace A318659

/-- `char[2*n]*A318513(n+1)` -/
def P17477424466210126536.Spec : Prop :=
  ∀ n, P17477424466210126536.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P16805546807903193953

`C(A318451(n+1), C(n, a(n-1)))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318659

/-- `C(A318451(n+1), C(n, a(n-1)))` -/
def P16805546807903193953.Spec : Prop :=
  ∀ n, (P16805546807903193953.a n : ℤ) = A318659 (n + 1)

theorem P16805546807903193953.correct : P16805546807903193953.Spec := by
  intro n
  simp only [A318659, Nat.add_sub_cancel]

end A318659

/-! ## A318659.P3865043597450892357

`A318440(A141310(n))`
-/

namespace A318659.P3865043597450892357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A141310 n).toNat

end

end A318659.P3865043597450892357

namespace A318659

/-- `A318440(A141310(n))` -/
def P3865043597450892357.Spec : Prop :=
  ∀ n, P3865043597450892357.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P3729011748975125125

`A046645(A093178(n+1))`
-/

namespace A318659.P3729011748975125125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A093178 (n + 1)).toNat

end

end A318659.P3729011748975125125

namespace A318659

/-- `A046645(A093178(n+1))` -/
def P3729011748975125125.Spec : Prop :=
  ∀ n, P3729011748975125125.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P12142971568707269582

`A318440(A086112(n+1))`
-/

namespace A318659.P12142971568707269582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (A086112 (n + 1)).toNat

end

end A318659.P12142971568707269582

namespace A318659

/-- `A318440(A086112(n+1))` -/
def P12142971568707269582.Spec : Prop :=
  ∀ n, P12142971568707269582.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P14072085269918552141

`A318451(A230089(n+1))`
-/

namespace A318659.P14072085269918552141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A230089 (n + 1)).toNat

end

end A318659.P14072085269918552141

namespace A318659

/-- `A318451(A230089(n+1))` -/
def P14072085269918552141.Spec : Prop :=
  ∀ n, P14072085269918552141.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P12214117413467720899

`A046645(n+1)*A059841(n)`
-/

namespace A318659.P12214117413467720899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) * A059841 n

end

end A318659.P12214117413467720899

namespace A318659

/-- `A046645(n+1)*A059841(n)` -/
def P12214117413467720899.Spec : Prop :=
  ∀ n, P12214117413467720899.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P6228799441320845778

`A318440(n*A059841(n)+1)`
-/

namespace A318659.P6228799441320845778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 ((n : ℤ) * A059841 n + 1).toNat

end

end A318659.P6228799441320845778

namespace A318659

/-- `A318440(n*A059841(n)+1)` -/
def P6228799441320845778.Spec : Prop :=
  ∀ n, P6228799441320845778.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P6629206411595932031

`A318451(n*A059841(n)+1)`
-/

namespace A318659.P6629206411595932031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 ((n : ℤ) * A059841 n + 1).toNat

end

end A318659.P6629206411595932031

namespace A318659

/-- `A318451(n*A059841(n)+1)` -/
def P6629206411595932031.Spec : Prop :=
  ∀ n, P6629206411595932031.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P11740078735415707627

`A318513(n*A059841(n)+1)`
-/

namespace A318659.P11740078735415707627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318513 ((n : ℤ) * A059841 n + 1).toNat

end

end A318659.P11740078735415707627

namespace A318659

/-- `A318513(n*A059841(n)+1)` -/
def P11740078735415707627.Spec : Prop :=
  ∀ n, P11740078735415707627.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P973517892804282996

`A318663(n*A059841(n)+1)`
-/

namespace A318659.P973517892804282996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318663 ((n : ℤ) * A059841 n + 1).toNat

end

end A318659.P973517892804282996

namespace A318659

/-- `A318663(n*A059841(n)+1)` -/
def P973517892804282996.Spec : Prop :=
  ∀ n, P973517892804282996.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P2006058418335108696

`A318440(n*A266591(n)+1)`
-/

namespace A318659.P2006058418335108696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 ((n : ℤ) * A266591 n + 1).toNat

end

end A318659.P2006058418335108696

namespace A318659

/-- `A318440(n*A266591(n)+1)` -/
def P2006058418335108696.Spec : Prop :=
  ∀ n, P2006058418335108696.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P3251415657234989479

`A318451(n*A266591(n)+1)`
-/

namespace A318659.P3251415657234989479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 ((n : ℤ) * A266591 n + 1).toNat

end

end A318659.P3251415657234989479

namespace A318659

/-- `A318451(n*A266591(n)+1)` -/
def P3251415657234989479.Spec : Prop :=
  ∀ n, P3251415657234989479.a n = A318659 (n + 1)

end A318659

/-! ## A318659.P4503748941724655413

`A318513(n*A266591(n)+1)`
-/

namespace A318659.P4503748941724655413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318513 ((n : ℤ) * A266591 n + 1).toNat

end

end A318659.P4503748941724655413

namespace A318659

/-- `A318513(n*A266591(n)+1)` -/
def P4503748941724655413.Spec : Prop :=
  ∀ n, P4503748941724655413.a n = A318659 (n + 1)

end A318659

/-!
# A318660: Remainder when A064988(n) is divided by n.

The programs for A318660, the canonical program `A318660.P16082632763169505680` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318660 has offset 1).

The definition of A318660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064988, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318660.P16082632763169505680

`A064988(n+1)%(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318660

/-- `A064988(n+1)%(n+1)` -/
def P16082632763169505680.Spec : Prop :=
  ∀ n, P16082632763169505680.a n = A318660 (n + 1)

theorem P16082632763169505680.correct : P16082632763169505680.Spec := by
  intro n
  simp only [A318660, Nat.add_sub_cancel]

end A318660

/-! ## A318660.P1507828409693524321

`∏{p}[n+1, A000040(#)^val(n+1, #)]%(n+1)`
-/

namespace A318660.P1507828409693524321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation (n + 1) p) (n + 1 : ℤ)

end

end A318660.P1507828409693524321

namespace A318660

/-- `∏{p}[n+1, A000040(#)^val(n+1, #)]%(n+1)` -/
def P1507828409693524321.Spec : Prop :=
  ∀ n, P1507828409693524321.a n = A318660 (n + 1)

end A318660

/-! ## A318660.P17001946414240884453

`∑{d}[A290641(n+1), A003972(#)]%(n+1)`
-/

namespace A318660.P17001946414240884453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d) (n + 1 : ℤ)

end

end A318660.P17001946414240884453

namespace A318660

/-- `∑{d}[A290641(n+1), A003972(#)]%(n+1)` -/
def P17001946414240884453.Spec : Prop :=
  ∀ n, P17001946414240884453.a n = A318660 (n + 1)

end A318660

/-! ## A318660.P4033195801950921998

`(A336845(A290641(n+1))/A000005(n+1))%(n+1)`
-/

namespace A318660.P4033195801950921998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A336845 (A290641 (n + 1)).toNat : ℚ) / (A000005 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A318660.P4033195801950921998

namespace A318660

/-- `(A336845(A290641(n+1))/A000005(n+1))%(n+1)` -/
def P4033195801950921998.Spec : Prop :=
  ∀ n, P4033195801950921998.a n = A318660 (n + 1)

end A318660

/-! ## A318660.P2871282487596857505

`A003961(A290641(n+1))%(n+1)`
-/

namespace A318660.P2871282487596857505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A290641 (n + 1)).toNat) (n + 1 : ℤ)

end

end A318660.P2871282487596857505

namespace A318660

/-- `A003961(A290641(n+1))%(n+1)` -/
def P2871282487596857505.Spec : Prop :=
  ∀ n, P2871282487596857505.a n = A318660 (n + 1)

end A318660

/-! ## A318660.P17524244708280171385

`A003961(A064554(n+1)%A345809(n+1))%(n+1)`
-/

namespace A318660.P17524244708280171385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (Int.tmod (A064554 (n + 1)) (A345809 (n + 1))).toNat) (n + 1 : ℤ)

end

end A318660.P17524244708280171385

namespace A318660

/-- `A003961(A064554(n+1)%A345809(n+1))%(n+1)` -/
def P17524244708280171385.Spec : Prop :=
  ∀ n, P17524244708280171385.a n = A318660 (n + 1)

end A318660

/-! ## A318660.P5574716065644914752

`∏{e}[A181821(n+1), A000040(A000040(#))]%(n+1)`
-/

namespace A318660.P5574716065644914752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat) (n + 1 : ℤ)

end

end A318660.P5574716065644914752

namespace A318660

/-- `∏{e}[A181821(n+1), A000040(A000040(#))]%(n+1)` -/
def P5574716065644914752.Spec : Prop :=
  ∀ n, P5574716065644914752.a n = A318660 (n + 1)

end A318660

/-!
# A318661: Numerators of the sequence whose Dirichlet convolution with itself yields A055653, sum of phi(d) over all unitary divisors d of n.

The programs for A318661, there is no canonical definition to state claims against.
-/

/-! ## A318661.P1216373911862240726

`A278520(A001045(A017666(n+1)))+A000265(n+1)`
-/

namespace A318661.P1216373911862240726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278520 (A001045 (A017666 (n + 1)).toNat).toNat + A000265 (n + 1)

end

end A318661.P1216373911862240726

/-!
# A318662: Denominators of the sequence whose Dirichlet convolution with itself yields A055653, sum of phi(d) over all unitary divisors d of n.

The programs for A318662, there is no canonical definition to state claims against.
-/

/-! ## A318662.P4794841847413098036

`2^A318663(n+1)`
-/

namespace A318662.P4794841847413098036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318663 (n + 1) : ℤ)

end

end A318662.P4794841847413098036

/-! ## A318662.P5007946774726126308

`A000079(A318663(n+1))`
-/

namespace A318662.P5007946774726126308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318663 (n + 1)).toNat

end

end A318662.P5007946774726126308

/-! ## A318662.P17278509132559049014

`A011782(A318663(n+1)+1)`
-/

namespace A318662.P17278509132559049014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A318663 (n + 1) + 1).toNat

end

end A318662.P17278509132559049014

/-! ## A318662.P10502626272800135455

`A016116(2*A318663(n+1))`
-/

namespace A318662.P10502626272800135455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A318663 (n + 1)).toNat

end

end A318662.P10502626272800135455

/-! ## A318662.P1331075197140592739

`A016116(A318663(n+1)+A318663(n+1)+1)`
-/

namespace A318662.P1331075197140592739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A318663 (n + 1) + (A318663 (n + 1) + 1)).toNat

end

end A318662.P1331075197140592739

/-! ## A318662.P9638898967645150809

`A000225(A318663(n+1))-A008683(A031215(n+1))`
-/

namespace A318662.P9638898967645150809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A318663 (n + 1)).toNat - A008683 (A031215 (n + 1)).toNat

end

end A318662.P9638898967645150809

/-! ## A318662.P4116509071550909319

`A318685(A318663(n+1)²)`
-/

namespace A318662.P4116509071550909319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318685 (A318663 (n + 1) ^ 2).toNat

end

end A318662.P4116509071550909319

/-!
# A318663: The 2-adic valuation of A318662.

The programs for A318663, there is no canonical definition to state claims against.
-/

/-! ## A318663.P7850760219263495332

`A007814(A318662(n+1))`
-/

namespace A318663.P7850760219263495332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318662 (n + 1)).toNat

end

end A318663.P7850760219263495332

/-! ## A318663.P3833123459254618972

`∑{d}[A318662(n+1), A001221(#)]`
-/

namespace A318663.P3833123459254618972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318663.P3833123459254618972

/-! ## A318663.P17586861628088992291

`A001222(2*A318662(n+1))-1`
-/

namespace A318663.P17586861628088992291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A318662 (n + 1)).toNat - 1

end

end A318663.P17586861628088992291

/-! ## A318663.P17117121987316379543

`A000005(2*A318662(n+1))-2`
-/

namespace A318663.P17117121987316379543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A318662 (n + 1)).toNat - 2

end

end A318663.P17117121987316379543

/-! ## A318663.P816245192150663370

`A000005(A318662(Δ[n²]-n))-1`
-/

namespace A318663.P816245192150663370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318662 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A318663.P816245192150663370

/-! ## A318663.P12516139009719440713

`A001222(A318662(n+1))%A299257(n)`
-/

namespace A318663.P12516139009719440713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A318662 (n + 1)).toNat) (A299257 n)

end

end A318663.P12516139009719440713

/-! ## A318663.P1365471682801399138

`A001222(A318662(n+1)%A000040(n+1))`
-/

namespace A318663.P1365471682801399138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A318662 (n + 1)) (A000040 (n + 1))).toNat

end

end A318663.P1365471682801399138

/-! ## A318663.P8638705180160231645

`val(A318662(n+1), A020639(A299150(n+3)))`
-/

namespace A318663.P8638705180160231645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318662 (n + 1)).toNat (A020639 (A299150 (n + 3)).toNat).toNat

end

end A318663.P8638705180160231645

/-! ## A318663.P16023413456168063193

`A000005(A318662(n+1)+A318662(n+1))-2`
-/

namespace A318663.P16023413456168063193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318662 (n + 1) + A318662 (n + 1)).toNat - 2

end

end A318663.P16023413456168063193

/-! ## A318663.P8937445577124111595

`val(A318662(n+1), A020639(A318662(n+1)+2))`
-/

namespace A318663.P8937445577124111595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318662 (n + 1)).toNat (A020639 (A318662 (n + 1) + 2).toNat).toNat

end

end A318663.P8937445577124111595

/-! ## A318663.P18431452088879314851

`A000120(A318662(n+1)-1)`
-/

namespace A318663.P18431452088879314851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318662 (n + 1) - 1).toNat

end

end A318663.P18431452088879314851

/-! ## A318663.P7355097410454165044

`A347966(2*A318662(n+1))-1`
-/

namespace A318663.P7355097410454165044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347966 (2 * A318662 (n + 1)).toNat - 1

end

end A318663.P7355097410454165044

/-! ## A318663.P10078048989665677675

`A352784(2*A318662(n+1))-1`
-/

namespace A318663.P10078048989665677675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352784 (2 * A318662 (n + 1)).toNat - 1

end

end A318663.P10078048989665677675

/-! ## A318663.P15532551978377032887

`∑{d}[A318662(n+1), A109613(#)-#]`
-/

namespace A318663.P15532551978377032887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A109613 d - (d : ℤ))

end

end A318663.P15532551978377032887

/-! ## A318663.P17313332810877113927

`A001222(A318662(A028242(2*n)))`
-/

namespace A318663.P17313332810877113927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318662 (A028242 (2 * n)).toNat).toNat

end

end A318663.P17313332810877113927

/-! ## A318663.P11056365870750447173

`A000120(C(A318662(n+1), 2))`
-/

namespace A318663.P11056365870750447173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A318662 (n + 1)).toNat 2)

end

end A318663.P11056365870750447173

/-!
# A318665: Denominators of the sequence whose Dirichlet convolution with itself yields A064664, the inverse permutation of EKG-sequence.

The programs for A318665, there is no canonical definition to state claims against.
-/

/-! ## A318665.P8183626316101201016

`gcd(A080100(n), A334915(A001037(n)))`
-/

namespace A318665.P8183626316101201016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080100 n) (A334915 (A001037 n).toNat)

end

end A318665.P8183626316101201016

/-! ## A318665.P2116864074017063890

`gcd(A064861(n), A294317(A132045(n)))`
-/

namespace A318665.P2116864074017063890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064861 n) (A294317 (A132045 n).toNat)

end

end A318665.P2116864074017063890

/-! ## A318665.P10098065091375792448

`gcd(A056242(n+1), A337459(A337459(n+1)))`
-/

namespace A318665.P10098065091375792448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056242 (n + 1)) (A337459 (A337459 (n + 1)).toNat)

end

end A318665.P10098065091375792448

/-! ## A318665.P5247952667970109113

`gcd(A001935(n), A153968(n))`
-/

namespace A318665.P5247952667970109113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001935 n) (A153968 n)

end

end A318665.P5247952667970109113

/-! ## A318665.P447773196568325972

`A082907(eq[1, A169978(n+1)])`
-/

namespace A318665.P447773196568325972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318665.P447773196568325972

/-!
# A318666: a(n) = 2^{the 3-adic valuation of n}.

The programs for A318666, the canonical program `A318666.P16554539009773594118` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318666 has offset 1).

The definition of A318666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318666.P10636262310452932057

`2^val(n+1, 3)`
-/

namespace A318666.P10636262310452932057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 3

end

end A318666.P10636262310452932057

namespace A318666

/-- `2^val(n+1, 3)` -/
def P10636262310452932057.Spec : Prop :=
  ∀ n, (P10636262310452932057.a n : ℤ) = A318666 (n + 1)

end A318666

/-! ## A318666.P16554539009773594118

`2^A007949(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318666

/-- `2^A007949(n+1)` -/
def P16554539009773594118.Spec : Prop :=
  ∀ n, P16554539009773594118.a n = (A318666 (n + 1) : ℚ)

end A318666

/-! ## A318666.P3223269353600643390

`A046644(n+1)/A317932(n+1)`
-/

namespace A318666.P3223269353600643390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A317932 (n + 1) : ℚ)

end

end A318666.P3223269353600643390

namespace A318666

/-- `A046644(n+1)/A317932(n+1)` -/
def P3223269353600643390.Spec : Prop :=
  ∀ n, P3223269353600643390.a n = (A318666 (n + 1) : ℚ)

end A318666

/-! ## A318666.P13657923979981650385

`2^dr(val(record[(n-1)²], 9))`
-/

namespace A318666.P13657923979981650385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 9 : ℤ)

end

end A318666.P13657923979981650385

namespace A318666

/-- `2^dr(val(record[(n-1)²], 9))` -/
def P13657923979981650385.Spec : Prop :=
  ∀ n, (P13657923979981650385.a n : ℤ) = A318666 (n + 1)

end A318666

/-! ## A318666.P4789026887880139975

`2^Δ[A054861(n)]`
-/

namespace A318666.P4789026887880139975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A318666.P4789026887880139975

namespace A318666

/-- `2^Δ[A054861(n)]` -/
def P4789026887880139975.Spec : Prop :=
  ∀ n, P4789026887880139975.a n = (A318666 (n + 1) : ℚ)

end A318666

/-! ## A318666.P12984398214943719500

`A000079(val(n+1, 3))`
-/

namespace A318666.P12984398214943719500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (n + 1) 3)

end

end A318666.P12984398214943719500

namespace A318666

/-- `A000079(val(n+1, 3))` -/
def P12984398214943719500.Spec : Prop :=
  ∀ n, P12984398214943719500.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P3530847401827521100

`A008861(val(n+1, 3))`
-/

namespace A318666.P3530847401827521100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 (SequenceMachineLib.valuation (n + 1) 3)

end

end A318666.P3530847401827521100

namespace A318666

/-- `A008861(val(n+1, 3))` -/
def P3530847401827521100.Spec : Prop :=
  ∀ n, P3530847401827521100.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P17981353221390578577

`A059261(Δ[A023717(n)])`
-/

namespace A318666.P17981353221390578577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (f1 (n + 1) - f1 n).toNat

end

end A318666.P17981353221390578577

namespace A318666

/-- `A059261(Δ[A023717(n)])` -/
def P17981353221390578577.Spec : Prop :=
  ∀ n, P17981353221390578577.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P4435899495859027400

`A003958(A065331(n+1))`
-/

namespace A318666.P4435899495859027400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A065331 (n + 1)).toNat

end

end A318666.P4435899495859027400

namespace A318666

/-- `A003958(A065331(n+1))` -/
def P4435899495859027400.Spec : Prop :=
  ∀ n, P4435899495859027400.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P8278886923134426569

`A006519(A064989(n+1))`
-/

namespace A318666.P8278886923134426569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A064989 (n + 1)).toNat

end

end A318666.P8278886923134426569

namespace A318666

/-- `A006519(A064989(n+1))` -/
def P8278886923134426569.Spec : Prop :=
  ∀ n, P8278886923134426569.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P5971885943668751256

`A046523(A038500(n+1))`
-/

namespace A318666.P5971885943668751256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A038500 (n + 1)).toNat

end

end A318666.P5971885943668751256

namespace A318666

/-- `A046523(A038500(n+1))` -/
def P5971885943668751256.Spec : Prop :=
  ∀ n, P5971885943668751256.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P8643157923125326769

`A289813(A300222(n)+1)`
-/

namespace A318666.P8643157923125326769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A300222 n + 1).toNat

end

end A318666.P8643157923125326769

namespace A318666

/-- `A289813(A300222(n)+1)` -/
def P8643157923125326769.Spec : Prop :=
  ∀ n, P8643157923125326769.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P8401753423294825763

`A286363(A355582(n+1))`
-/

namespace A318666.P8401753423294825763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (A355582 (n + 1)).toNat

end

end A318666.P8401753423294825763

namespace A318666

/-- `A286363(A355582(n+1))` -/
def P8401753423294825763.Spec : Prop :=
  ∀ n, P8401753423294825763.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P5104514709846877573

`A094114(A038500(n+1)+1)`
-/

namespace A318666.P5104514709846877573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A038500 (n + 1) + 1).toNat

end

end A318666.P5104514709846877573

namespace A318666

/-- `A094114(A038500(n+1)+1)` -/
def P5104514709846877573.Spec : Prop :=
  ∀ n, P5104514709846877573.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P18210381855740305712

`A160467(2*A318509(n+1))`
-/

namespace A318666.P18210381855740305712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (2 * A318509 (n + 1)).toNat

end

end A318666.P18210381855740305712

namespace A318666

/-- `A160467(2*A318509(n+1))` -/
def P18210381855740305712.Spec : Prop :=
  ∀ n, P18210381855740305712.a n = A318666 (n + 1)

end A318666

/-! ## A318666.P11417039526877769536

`gcd(A017574(n), A064614(n+1))`
-/

namespace A318666.P11417039526877769536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017574 n) (A064614 (n + 1))

end

end A318666.P11417039526877769536

namespace A318666

/-- `gcd(A017574(n), A064614(n+1))` -/
def P11417039526877769536.Spec : Prop :=
  ∀ n, (P11417039526877769536.a n : ℤ) = A318666 (n + 1)

end A318666

/-! ## A318666.P7327890231180986827

`gcd(A029930(n), A061898(n+1))`
-/

namespace A318666.P7327890231180986827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n) (A061898 (n + 1))

end

end A318666.P7327890231180986827

namespace A318666

/-- `gcd(A029930(n), A061898(n+1))` -/
def P7327890231180986827.Spec : Prop :=
  ∀ n, (P7327890231180986827.a n : ℤ) = A318666 (n + 1)

end A318666

/-! ## A318666.P11752557546196954987

`gcd(A053644(n), A290099(n+1))`
-/

namespace A318666.P11752557546196954987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053644 n) (A290099 (n + 1))

end

end A318666.P11752557546196954987

namespace A318666

/-- `gcd(A053644(n), A290099(n+1))` -/
def P11752557546196954987.Spec : Prop :=
  ∀ n, (P11752557546196954987.a n : ℤ) = A318666 (n + 1)

end A318666

/-! ## A318666.P7523396507284805998

`gcd(A319862(n), A332819(n+1))`
-/

namespace A318666.P7523396507284805998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319862 n) (A332819 (n + 1))

end

end A318666.P7523396507284805998

namespace A318666

/-- `gcd(A319862(n), A332819(n+1))` -/
def P7523396507284805998.Spec : Prop :=
  ∀ n, (P7523396507284805998.a n : ℤ) = A318666 (n + 1)

end A318666

/-!
# A318668: a(n) = gcd(n, A064988(n)).

The programs for A318668, the canonical program `A318668.P14835673339868604603` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318668 has offset 1).

The definition of A318668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064988, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318668.P14835673339868604603

`gcd(n+1, A064988(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318668

/-- `gcd(n+1, A064988(n+1))` -/
def P14835673339868604603.Spec : Prop :=
  ∀ n, (P14835673339868604603.a n : ℤ) = A318668 (n + 1)

theorem P14835673339868604603.correct : P14835673339868604603.Spec := by
  intro n
  simp only [A318668, Nat.add_sub_cancel]

end A318668

/-! ## A318668.P17597629925563560593

`gcd(A030640(n), A318660(n+1))`
-/

namespace A318668.P17597629925563560593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030640 n) (A318660 (n + 1))

end

end A318668.P17597629925563560593

namespace A318668

/-- `gcd(A030640(n), A318660(n+1))` -/
def P17597629925563560593.Spec : Prop :=
  ∀ n, (P17597629925563560593.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P14478865793240511337

`gcd(n*A318660(n+1), A032742(n+1))`
-/

namespace A318668.P14478865793240511337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A318660 (n + 1)) (A032742 (n + 1))

end

end A318668.P14478865793240511337

namespace A318668

/-- `gcd(n*A318660(n+1), A032742(n+1))` -/
def P14478865793240511337.Spec : Prop :=
  ∀ n, (P14478865793240511337.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P5407502399307018945

`gcd(A003961(A290641(n+1)), A032742(n+1))`
-/

namespace A318668.P5407502399307018945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (A290641 (n + 1)).toNat) (A032742 (n + 1))

end

end A318668.P5407502399307018945

namespace A318668

/-- `gcd(A003961(A290641(n+1)), A032742(n+1))` -/
def P5407502399307018945.Spec : Prop :=
  ∀ n, (P5407502399307018945.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P17276034656258435088

`gcd(A064988(n+1), A176900(n))`
-/

namespace A318668.P17276034656258435088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064988 (n + 1)) (A176900 n)

end

end A318668.P17276034656258435088

namespace A318668

/-- `gcd(A064988(n+1), A176900(n))` -/
def P17276034656258435088.Spec : Prop :=
  ∀ n, (P17276034656258435088.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P16246045031312763988

`gcd(A143052(n), A301315(n+1))`
-/

namespace A318668.P16246045031312763988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143052 n) (A301315 (n + 1))

end

end A318668.P16246045031312763988

namespace A318668

/-- `gcd(A143052(n), A301315(n+1))` -/
def P16246045031312763988.Spec : Prop :=
  ∀ n, (P16246045031312763988.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P5757548162049036294

`gcd(A322360(A322388(n+1)), A322361(n+1))`
-/

namespace A318668.P5757548162049036294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322360 (A322388 (n + 1)).toNat) (A322361 (n + 1))

end

end A318668.P5757548162049036294

namespace A318668

/-- `gcd(A322360(A322388(n+1)), A322361(n+1))` -/
def P5757548162049036294.Spec : Prop :=
  ∀ n, (P5757548162049036294.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P16865503802154794965

`A322361(n-A135723(n+1)%A322361(n+2)+1)`
-/

namespace A318668.P16865503802154794965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 ((n : ℤ) - Int.tmod (A135723 (n + 1)) (A322361 (n + 2)) + 1).toNat

end

end A318668.P16865503802154794965

namespace A318668

/-- `A322361(n-A135723(n+1)%A322361(n+2)+1)` -/
def P16865503802154794965.Spec : Prop :=
  ∀ n, P16865503802154794965.a n = A318668 (n + 1)

end A318668

/-! ## A318668.P3587667518577310838

`gcd(A015906(n), A141566(n+1))`
-/

namespace A318668.P3587667518577310838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015906 n) (A141566 (n + 1))

end

end A318668.P3587667518577310838

namespace A318668

/-- `gcd(A015906(n), A141566(n+1))` -/
def P3587667518577310838.Spec : Prop :=
  ∀ n, (P3587667518577310838.a n : ℤ) = A318668 (n + 1)

end A318668

/-! ## A318668.P16987212721074438951

`A322361(n+1)^A322393(A322366(2*n+1))`
-/

namespace A318668.P16987212721074438951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322361 (n + 1) : ℚ) ^ (A322393 (A322366 (2 * n + 1)).toNat : ℤ)

end

end A318668.P16987212721074438951

namespace A318668

/-- `A322361(n+1)^A322393(A322366(2*n+1))` -/
def P16987212721074438951.Spec : Prop :=
  ∀ n, P16987212721074438951.a n = (A318668 (n + 1) : ℚ)

end A318668

/-!
# A318670: Number of subsets of divisors of n whose least common multiple is n and the sum does not exceed n. For n > 1, 1 is excluded from the set of divisors.

The programs for A318670, there is no canonical definition to state claims against.
-/

/-! ## A318670.P16779961084794180107

`A038548(∑{p}[n+1, gcd(n, #)]^A318326(n+1))`
-/

namespace A318670.P16779961084794180107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℚ) ^ (A318326 (n + 1) : ℤ))).toNat

end

end A318670.P16779961084794180107

/-! ## A318670.P14883922525720201329

`A043556((∑{e}[n+1, #]!/∏{e}[n+1, #!])^(A064097(n+2)+1))`
-/

namespace A318670.P14883922525720201329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (SequenceMachineLib.roundAway (((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ)) ^ (A064097 (n + 2) + 1 : ℤ))).toNat

end

end A318670.P14883922525720201329

/-! ## A318670.P8760780130274713729

`A001222(xor(2, A149140(A051709(n+1))))`
-/

namespace A318670.P8760780130274713729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 2 (A149140 (A051709 (n + 1)).toNat)).toNat

end

end A318670.P8760780130274713729

/-! ## A318670.P6109466390905272691

`A307298(A070939(n)^A089233(n+1))`
-/

namespace A318670.P6109466390905272691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307298 (SequenceMachineLib.roundAway ((A070939 n : ℚ) ^ (A089233 (n + 1) : ℤ))).toNat

end

end A318670.P6109466390905272691

/-! ## A318670.P7032485513320431755

`A001817(A001221(n+1)^A300252(n+1))`
-/

namespace A318670.P7032485513320431755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A300252 (n + 1) : ℤ))).toNat

end

end A318670.P7032485513320431755

/-!
# A318671: Numerators of the sequence whose Dirichlet convolution with itself yields A049599, number of (1+e)-divisors of n.

The programs for A318671, the canonical program `A318671.P7199009446582723832` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318671 has offset 1).

The definition of A318671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318671.P1223140437411742435

`A053994(C(val(n+1, 2), 5))`
-/

namespace A318671.P1223140437411742435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053994 (Nat.choose (SequenceMachineLib.valuation (n + 1) 2) 5)

end

end A318671.P1223140437411742435

namespace A318671

/-- `A053994(C(val(n+1, 2), 5))` -/
def P1223140437411742435.Spec : Prop :=
  ∀ n, P1223140437411742435.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P129709043098510020

`xor(1, A321936(2^val(n+1, 2)))`
-/

namespace A318671.P129709043098510020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A321936 (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A318671.P129709043098510020

namespace A318671

/-- `xor(1, A321936(2^val(n+1, 2)))` -/
def P129709043098510020.Spec : Prop :=
  ∀ n, P129709043098510020.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P7701538843083426273

`C(11, A028240((n+1)/∏{p}[n+1, #]))`
-/

namespace A318671.P7701538843083426273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 11 (A028240 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A318671.P7701538843083426273

namespace A318671

/-- `C(11, A028240((n+1)/∏{p}[n+1, #]))` -/
def P7701538843083426273.Spec : Prop :=
  ∀ n, (P7701538843083426273.a n : ℤ) = A318671 (n + 1)

end A318671

/-! ## A318671.P4157024529598054611

`A319394(C((n+1)/∏{p}[n+1, gcd(n+1, #²)], 8))`
-/

namespace A318671.P4157024529598054611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat 8)

end

end A318671.P4157024529598054611

namespace A318671

/-- `A319394(C((n+1)/∏{p}[n+1, gcd(n+1, #²)], 8))` -/
def P4157024529598054611.Spec : Prop :=
  ∀ n, P4157024529598054611.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P14125471566173144959

`xor(1, A321936(A006519(n+1)))`
-/

namespace A318671.P14125471566173144959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A321936 (A006519 (n + 1)).toNat)

end

end A318671.P14125471566173144959

namespace A318671

/-- `xor(1, A321936(A006519(n+1)))` -/
def P14125471566173144959.Spec : Prop :=
  ∀ n, P14125471566173144959.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P15579076707742281893

`A053994(C(A244417(n+1), 5))`
-/

namespace A318671.P15579076707742281893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053994 (Nat.choose (A244417 (n + 1)).toNat 5)

end

end A318671.P15579076707742281893

namespace A318671

/-- `A053994(C(A244417(n+1), 5))` -/
def P15579076707742281893.Spec : Prop :=
  ∀ n, P15579076707742281893.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P2070433548160809626

`A227345(A318472(n+1))%31`
-/

namespace A318671.P2070433548160809626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227345 (A318472 (n + 1)).toNat) 31

end

end A318671.P2070433548160809626

namespace A318671

/-- `A227345(A318472(n+1))%31` -/
def P2070433548160809626.Spec : Prop :=
  ∀ n, P2070433548160809626.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P7199009446582723832

`A010751(A105968(C(val(n+1, 2), 5)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318671

/-- `A010751(A105968(C(val(n+1, 2), 5)))` -/
def P7199009446582723832.Spec : Prop :=
  ∀ n, P7199009446582723832.a n = A318671 (n + 1)

theorem P7199009446582723832.correct : P7199009446582723832.Spec := by
  intro n
  simp only [A318671, Nat.add_sub_cancel]

end A318671

/-! ## A318671.P14639191476147121333

`A053252(A099038(val(n+1, 2)+1)²)`
-/

namespace A318671.P14639191476147121333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053252 (A099038 (SequenceMachineLib.valuation (n + 1) 2 + 1) ^ 2).toNat

end

end A318671.P14639191476147121333

namespace A318671

/-- `A053252(A099038(val(n+1, 2)+1)²)` -/
def P14639191476147121333.Spec : Prop :=
  ∀ n, P14639191476147121333.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P3522390870367436886

`A327187(A065661((val(n+1, 2)+1)²))`
-/

namespace A318671.P3522390870367436886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 (A065661 ((SequenceMachineLib.valuation (n + 1) 2 + 1) ^ 2)).toNat

end

end A318671.P3522390870367436886

namespace A318671

/-- `A327187(A065661((val(n+1, 2)+1)²))` -/
def P3522390870367436886.Spec : Prop :=
  ∀ n, P3522390870367436886.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P16466940906493524209

`A000700(A008676(2^val(n+1, 2))!)`
-/

namespace A318671.P16466940906493524209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Nat.factorial (A008676 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat)

end

end A318671.P16466940906493524209

namespace A318671

/-- `A000700(A008676(2^val(n+1, 2))!)` -/
def P16466940906493524209.Spec : Prop :=
  ∀ n, P16466940906493524209.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P360634700489099171

`A339110(A339110(ceil(xor(n, n+1)/4)))`
-/

namespace A318671.P360634700489099171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339110 (A339110 ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat).toNat

end

end A318671.P360634700489099171

namespace A318671

/-- `A339110(A339110(ceil(xor(n, n+1)/4)))` -/
def P360634700489099171.Spec : Prop :=
  ∀ n, P360634700489099171.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P7343838638509069752

`A345196(A352131(ceil(xor(n, n+1)/4)))`
-/

namespace A318671.P7343838638509069752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345196 (A352131 ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat).toNat

end

end A318671.P7343838638509069752

namespace A318671

/-- `A345196(A352131(ceil(xor(n, n+1)/4)))` -/
def P7343838638509069752.Spec : Prop :=
  ∀ n, P7343838638509069752.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P9048591884359061249

`A239473(A117563(ceil(xor(n, n+1)/4))²)`
-/

namespace A318671.P9048591884359061249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239473 (A117563 ⌈(Nat.xor n (n + 1) : ℚ) / 4⌉.toNat ^ 2).toNat

end

end A318671.P9048591884359061249

namespace A318671

/-- `A239473(A117563(ceil(xor(n, n+1)/4))²)` -/
def P9048591884359061249.Spec : Prop :=
  ∀ n, P9048591884359061249.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P17054199617021241893

`xor(1, A234809(A214956(xor(n, n+1)+1)+1))`
-/

namespace A318671.P17054199617021241893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A234809 (A214956 (Nat.xor n (n + 1) + 1) + 1).toNat)

end

end A318671.P17054199617021241893

namespace A318671

/-- `xor(1, A234809(A214956(xor(n, n+1)+1)+1))` -/
def P17054199617021241893.Spec : Prop :=
  ∀ n, P17054199617021241893.a n = A318671 (n + 1)

end A318671

/-! ## A318671.P5773230080290258476

`gcd(A053981(n+1), A053994(A054012(2*n+3)))`
-/

namespace A318671.P5773230080290258476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053981 (n + 1)) (A053994 (A054012 (2 * n + 3)).toNat)

end

end A318671.P5773230080290258476

namespace A318671

/-- `gcd(A053981(n+1), A053994(A054012(2*n+3)))` -/
def P5773230080290258476.Spec : Prop :=
  ∀ n, (P5773230080290258476.a n : ℤ) = A318671 (n + 1)

end A318671

/-!
# A318672: Denominators of the sequence whose Dirichlet convolution with itself yields A049599, number of (1+e)-divisors of n.

The programs for A318672, there is no canonical definition to state claims against.
-/

/-! ## A318672.P8702684102378721436

`2^A318673(n+1)`
-/

namespace A318672.P8702684102378721436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318673 (n + 1) : ℤ)

end

end A318672.P8702684102378721436

/-! ## A318672.P13083999397744386792

`A011782(A318673(n+1)+A080940(2*n+3))`
-/

namespace A318672.P13083999397744386792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A318673 (n + 1) + A080940 (2 * n + 3)).toNat

end

end A318672.P13083999397744386792

/-! ## A318672.P2345057558942179919

`A131577(A318673(n+1)+A080940(2*n+3))`
-/

namespace A318672.P2345057558942179919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A318673 (n + 1) + A080940 (2 * n + 3)).toNat

end

end A318672.P2345057558942179919

/-! ## A318672.P17171198727708722353

`A000079(A318673(n+1)+A049283(2*n+5))`
-/

namespace A318672.P17171198727708722353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A318673 (n + 1) + A049283 (2 * n + 5)).toNat

end

end A318672.P17171198727708722353

/-! ## A318672.P7400738716517868098

`A305717(A317941(n+1)²)`
-/

namespace A318672.P7400738716517868098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305717 (A317941 (n + 1) ^ 2).toNat

end

end A318672.P7400738716517868098

/-! ## A318672.P5241557939577786604

`gcd(A010888(A256692(n+1)), A256688(n+1))`
-/

namespace A318672.P5241557939577786604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010888 (A256692 (n + 1)).toNat) (A256688 (n + 1))

end

end A318672.P5241557939577786604

/-! ## A318672.P15187456450798105827

`gcd(A050361(A283980(n+1)), A355936(n+1))`
-/

namespace A318672.P15187456450798105827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050361 (A283980 (n + 1)).toNat) (A355936 (n + 1))

end

end A318672.P15187456450798105827

/-! ## A318672.P15816791631504498727

`A010125(A051903(n+1)^A065710(2*(n+2)))`
-/

namespace A318672.P15816791631504498727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (SequenceMachineLib.roundAway ((A051903 (n + 1) : ℚ) ^ (A065710 (2 * (n + 2)) : ℤ))).toNat

end

end A318672.P15816791631504498727

/-! ## A318672.P15756482913825792165

`gcd(32, A355936(n+1)%A303808(3*n+4))`
-/

namespace A318672.P15756482913825792165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 32 (Int.tmod (A355936 (n + 1)) (A303808 (3 * n + 4)))

end

end A318672.P15756482913825792165

/-! ## A318672.P2249982203788740060

`gcd(A000045(A051903(n+1)), A336182(n))`
-/

namespace A318672.P2249982203788740060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A051903 (n + 1)).toNat) (A336182 n)

end

end A318672.P2249982203788740060

/-! ## A318672.P11631646172584602418

`A173564(A000533(n)%A324912(n+1))`
-/

namespace A318672.P11631646172584602418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173564 (Int.tmod (A000533 n) (A324912 (n + 1))).toNat

end

end A318672.P11631646172584602418

/-!
# A318673: The 2-adic valuation of A318672.

The programs for A318673, there is no canonical definition to state claims against.
-/

/-! ## A318673.P17267159667774418721

`A007814(A318672(n+1))`
-/

namespace A318673.P17267159667774418721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318672 (n + 1)).toNat

end

end A318673.P17267159667774418721

/-! ## A318673.P3856085102025185339

`A000120(A318672(n+1)-1)`
-/

namespace A318673.P3856085102025185339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318672 (n + 1) - 1).toNat

end

end A318673.P3856085102025185339

/-! ## A318673.P11436656322123854874

`A002487(A318672(n+1)-1)`
-/

namespace A318673.P11436656322123854874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A318672 (n + 1) - 1).toNat

end

end A318673.P11436656322123854874

/-! ## A318673.P2523775864304496260

`A000523(or(1, A318672(n+1)))`
-/

namespace A318673.P2523775864304496260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor 1 (A318672 (n + 1))).toNat

end

end A318673.P2523775864304496260

/-! ## A318673.P10743690923109661109

`∑{d}[A318672(n+1), A001221(#)]`
-/

namespace A318673.P10743690923109661109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A318673.P10743690923109661109

/-! ## A318673.P15977591022691929153

`A001222(or(A000007(n), A318672(n+1)))`
-/

namespace A318673.P15977591022691929153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000007 n) (A318672 (n + 1))).toNat

end

end A318673.P15977591022691929153

/-! ## A318673.P2089805668181016179

`A001222(A318658(2*(n+2))*A318672(n+1))`
-/

namespace A318673.P2089805668181016179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A318658 (2 * (n + 2)) * A318672 (n + 1)).toNat

end

end A318673.P2089805668181016179

/-! ## A318673.P16330214136959057385

`(A318672((n+1)²+1)+2)%A318672(n+1)`
-/

namespace A318673.P16330214136959057385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318672 ((n + 1) ^ 2 + 1) + 2) (A318672 (n + 1))

end

end A318673.P16330214136959057385

/-! ## A318673.P5679619126909932202

`∑{e}[A263756(A069739(n+1)), #]`
-/

namespace A318673.P5679619126909932202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263756 (A069739 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A318673.P5679619126909932202

/-! ## A318673.P9595535109545906454

`A110399(A000005(((n+1)/∏{p}[n+1, #])^3))%A190867(n+1)`
-/

namespace A318673.P9595535109545906454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110399 (A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 3)).toNat).toNat) (A190867 (n + 1))

end

end A318673.P9595535109545906454

/-! ## A318673.P5795655393639137199

`∑{e}[n+1, A063691(#)%A004273(A065599(n))]`
-/

namespace A318673.P5795655393639137199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A063691 (Nat.factorization (f1 n) p)) (A004273 (A065599 n).toNat)

end

end A318673.P5795655393639137199

/-! ## A318673.P6453174718526571955

`A000040(A053784(n+1))%A318672(n+1)`
-/

namespace A318673.P6453174718526571955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A053784 (n + 1)).toNat) (A318672 (n + 1))

end

end A318673.P6453174718526571955

/-!
# A318674: Sum of squarefree divisors of n that have an even number of prime factors.

The programs for A318674, the canonical program `A318674.P1768733066523102613` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318674 has offset 1).

The definition of A318674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318674.P3887672936776692901

`A048250(n+1)-A318675(n+1)`
-/

namespace A318674.P3887672936776692901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A318675 (n + 1)

end

end A318674.P3887672936776692901

namespace A318674

/-- `A048250(n+1)-A318675(n+1)` -/
def P3887672936776692901.Spec : Prop :=
  ∀ n, P3887672936776692901.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P1768733066523102613

`(A048250(n+1)+A023900(n+1))/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318674

/-- `(A048250(n+1)+A023900(n+1))/2` -/
def P1768733066523102613.Spec : Prop :=
  ∀ n, P1768733066523102613.a n = (A318674 (n + 1) : ℚ)

end A318674

/-! ## A318674.P13972613716680997836

`A318676(∏{p}[n+1, #])`
-/

namespace A318674.P13972613716680997836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318674.P13972613716680997836

namespace A318674

/-- `A318676(∏{p}[n+1, #])` -/
def P13972613716680997836.Spec : Prop :=
  ∀ n, P13972613716680997836.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P11991912674082736940

`A327670(∏{p}[n+1, #])`
-/

namespace A318674.P11991912674082736940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318674.P11991912674082736940

namespace A318674

/-- `A327670(∏{p}[n+1, #])` -/
def P11991912674082736940.Spec : Prop :=
  ∀ n, P11991912674082736940.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P3662048709453405724

`∑{d}[n+1, #*A353629(#)]`
-/

namespace A318674.P3662048709453405724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353629 d

end

end A318674.P3662048709453405724

namespace A318674

/-- `∑{d}[n+1, #*A353629(#)]` -/
def P3662048709453405724.Spec : Prop :=
  ∀ n, P3662048709453405724.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P17857979804466107616

`A318676(A007947(n+1))`
-/

namespace A318674.P17857979804466107616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (A007947 (n + 1)).toNat

end

end A318674.P17857979804466107616

namespace A318674

/-- `A318676(A007947(n+1))` -/
def P17857979804466107616.Spec : Prop :=
  ∀ n, P17857979804466107616.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P880528326032620938

`A318676(A334085(n+1))`
-/

namespace A318674.P880528326032620938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (A334085 (n + 1)).toNat

end

end A318674.P880528326032620938

namespace A318674

/-- `A318676(A334085(n+1))` -/
def P880528326032620938.Spec : Prop :=
  ∀ n, P880528326032620938.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P3086218921251551332

`A318676(A340679(n+1))`
-/

namespace A318674.P3086218921251551332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (A340679 (n + 1)).toNat

end

end A318674.P3086218921251551332

namespace A318674

/-- `A318676(A340679(n+1))` -/
def P3086218921251551332.Spec : Prop :=
  ∀ n, P3086218921251551332.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P528415686956630177

`A318675(n+1)+A023900(n+1)`
-/

namespace A318674.P528415686956630177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (n + 1) + A023900 (n + 1)

end

end A318674.P528415686956630177

namespace A318674

/-- `A318675(n+1)+A023900(n+1)` -/
def P528415686956630177.Spec : Prop :=
  ∀ n, P528415686956630177.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P7697175685759300632

`A318676((n+1)/A003557(n+1))`
-/

namespace A318674.P7697175685759300632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A318674.P7697175685759300632

namespace A318674

/-- `A318676((n+1)/A003557(n+1))` -/
def P7697175685759300632.Spec : Prop :=
  ∀ n, P7697175685759300632.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P6460965744514604042

`A318675(n+1)+∏{p}[n+1, A024000(#)]`
-/

namespace A318674.P6460965744514604042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A024000 p

end

end A318674.P6460965744514604042

namespace A318674

/-- `A318675(n+1)+∏{p}[n+1, A024000(#)]` -/
def P6460965744514604042.Spec : Prop :=
  ∀ n, P6460965744514604042.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P9129596996838181716

`A318675(n+1)+∏{p}[n+1, A295127(#)]`
-/

namespace A318674.P9129596996838181716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A295127 p

end

end A318674.P9129596996838181716

namespace A318674

/-- `A318675(n+1)+∏{p}[n+1, A295127(#)]` -/
def P9129596996838181716.Spec : Prop :=
  ∀ n, P9129596996838181716.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P12768595019792590533

`A323407(∏{p}[n+1, #])+A318675(n+1)`
-/

namespace A318674.P12768595019792590533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323407 (∏ p ∈ Nat.primeFactors (f1 n), p) + A318675 (n + 1)

end

end A318674.P12768595019792590533

namespace A318674

/-- `A323407(∏{p}[n+1, #])+A318675(n+1)` -/
def P12768595019792590533.Spec : Prop :=
  ∀ n, P12768595019792590533.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P11885123444925328406

`A318675(n+1)+∏{p}[n+1, A001222(#)-#]`
-/

namespace A318674.P11885123444925328406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), (A001222 p - (p : ℤ))

end

end A318674.P11885123444925328406

namespace A318674

/-- `A318675(n+1)+∏{p}[n+1, A001222(#)-#]` -/
def P11885123444925328406.Spec : Prop :=
  ∀ n, P11885123444925328406.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P11090162366753705903

`∑{d}[n+1, A023900(#)*A229347((n+1)/#)]`
-/

namespace A318674.P11090162366753705903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A229347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318674.P11090162366753705903

namespace A318674

/-- `∑{d}[n+1, A023900(#)*A229347((n+1)/#)]` -/
def P11090162366753705903.Spec : Prop :=
  ∀ n, P11090162366753705903.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P5312868590983328247

`A318675(n+1)+A008683(∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A318674.P5312868590983328247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (n + 1) + A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A318674.P5312868590983328247

namespace A318674

/-- `A318675(n+1)+A008683(∏{p}[n+1, #])*∏{p}[n+1, #-1]` -/
def P5312868590983328247.Spec : Prop :=
  ∀ n, P5312868590983328247.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P6563145861090233172

`A327670(A053166(A053166(n+1)))`
-/

namespace A318674.P6563145861090233172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (A053166 (A053166 (n + 1)).toNat).toNat

end

end A318674.P6563145861090233172

namespace A318674

/-- `A327670(A053166(A053166(n+1)))` -/
def P6563145861090233172.Spec : Prop :=
  ∀ n, P6563145861090233172.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P2140181984836241940

`A000203(A007947(n+1))-A318675(n+1)`
-/

namespace A318674.P2140181984836241940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A318675 (n + 1)

end

end A318674.P2140181984836241940

namespace A318674

/-- `A000203(A007947(n+1))-A318675(n+1)` -/
def P2140181984836241940.Spec : Prop :=
  ∀ n, P2140181984836241940.a n = A318674 (n + 1)

end A318674

/-! ## A318674.P3302029041383712199

`(A023900(n+1)+A000203(A007947(n+1)))/2`
-/

namespace A318674.P3302029041383712199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) + A000203 (A007947 (n + 1)).toNat : ℚ) / 2

end

end A318674.P3302029041383712199

namespace A318674

/-- `(A023900(n+1)+A000203(A007947(n+1)))/2` -/
def P3302029041383712199.Spec : Prop :=
  ∀ n, P3302029041383712199.a n = (A318674 (n + 1) : ℚ)

end A318674

/-! ## A318674.P3269623270404999425

`A327670(2*A007947(n+1)-A007947(n+1))`
-/

namespace A318674.P3269623270404999425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327670 (2 * A007947 (n + 1) - A007947 (n + 1)).toNat

end

end A318674.P3269623270404999425

namespace A318674

/-- `A327670(2*A007947(n+1)-A007947(n+1))` -/
def P3269623270404999425.Spec : Prop :=
  ∀ n, P3269623270404999425.a n = A318674 (n + 1)

end A318674

/-!
# A318675: Sum of squarefree divisors of n that have an odd number of prime factors.

The programs for A318675, the canonical program `A318675.P6460778612345656945` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318675 has offset 1).

The definition of A318675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318675.P6460778612345656945

`A048250(n+1)-A318674(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318675

/-- `A048250(n+1)-A318674(n+1)` -/
def P6460778612345656945.Spec : Prop :=
  ∀ n, P6460778612345656945.a n = A318675 (n + 1)

theorem P6460778612345656945.correct : P6460778612345656945.Spec := by
  intro n
  simp only [A318675, Nat.add_sub_cancel]

end A318675

/-! ## A318675.P14453112580560950328

`(A048250(n+1)-A023900(n+1))/2`
-/

namespace A318675.P14453112580560950328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) - A023900 (n + 1) : ℚ) / 2

end

end A318675.P14453112580560950328

namespace A318675

/-- `(A048250(n+1)-A023900(n+1))/2` -/
def P14453112580560950328.Spec : Prop :=
  ∀ n, P14453112580560950328.a n = (A318675 (n + 1) : ℚ)

end A318675

/-! ## A318675.P7495166678498642466

`A318677(∏{p}[n+1, #])`
-/

namespace A318675.P7495166678498642466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318675.P7495166678498642466

namespace A318675

/-- `A318677(∏{p}[n+1, #])` -/
def P7495166678498642466.Spec : Prop :=
  ∀ n, P7495166678498642466.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P15143296440281444124

`A327669(∏{p}[n+1, #])`
-/

namespace A318675.P15143296440281444124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327669 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A318675.P15143296440281444124

namespace A318675

/-- `A327669(∏{p}[n+1, #])` -/
def P15143296440281444124.Spec : Prop :=
  ∀ n, P15143296440281444124.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P12877260069752687526

`∑{d}[n+1, #*A252233(#)]`
-/

namespace A318675.P12877260069752687526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A252233 d

end

end A318675.P12877260069752687526

namespace A318675

/-- `∑{d}[n+1, #*A252233(#)]` -/
def P12877260069752687526.Spec : Prop :=
  ∀ n, P12877260069752687526.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P5079158608928397

`A318677(A007947(n+1))`
-/

namespace A318675.P5079158608928397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (A007947 (n + 1)).toNat

end

end A318675.P5079158608928397

namespace A318675

/-- `A318677(A007947(n+1))` -/
def P5079158608928397.Spec : Prop :=
  ∀ n, P5079158608928397.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P4093425097788800976

`A318674(n+1)-A023900(n+1)`
-/

namespace A318675.P4093425097788800976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318674 (n + 1) - A023900 (n + 1)

end

end A318675.P4093425097788800976

namespace A318675

/-- `A318674(n+1)-A023900(n+1)` -/
def P4093425097788800976.Spec : Prop :=
  ∀ n, P4093425097788800976.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P4685949916265855029

`A327669((n+1)/A003557(n+1))`
-/

namespace A318675.P4685949916265855029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327669 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A318675.P4685949916265855029

namespace A318675

/-- `A327669((n+1)/A003557(n+1))` -/
def P4685949916265855029.Spec : Prop :=
  ∀ n, P4685949916265855029.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P17163607303807218729

`A327669(A007947(2*n+1-n))`
-/

namespace A318675.P17163607303807218729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327669 (A007947 (2 * n + 1 - n)).toNat

end

end A318675.P17163607303807218729

namespace A318675

/-- `A327669(A007947(2*n+1-n))` -/
def P17163607303807218729.Spec : Prop :=
  ∀ n, P17163607303807218729.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P14739704595432828485

`A318674(n+1)-∏{p}[∏{p}[n+1, -#], A024000(#)]`
-/

namespace A318675.P14739704595432828485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318674 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024000 p

end

end A318675.P14739704595432828485

namespace A318675

/-- `A318674(n+1)-∏{p}[∏{p}[n+1, -#], A024000(#)]` -/
def P14739704595432828485.Spec : Prop :=
  ∀ n, P14739704595432828485.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P9612747329776996614

`A000203(A007947(n+1))-A318674(n+1)`
-/

namespace A318675.P9612747329776996614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (n + 1)).toNat - A318674 (n + 1)

end

end A318675.P9612747329776996614

namespace A318675

/-- `A000203(A007947(n+1))-A318674(n+1)` -/
def P9612747329776996614.Spec : Prop :=
  ∀ n, P9612747329776996614.a n = A318675 (n + 1)

end A318675

/-! ## A318675.P2346384587112871355

`(A000203(A007947(n+1))-A023900(n+1))/2`
-/

namespace A318675.P2346384587112871355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A007947 (n + 1)).toNat - A023900 (n + 1) : ℚ) / 2

end

end A318675.P2346384587112871355

namespace A318675

/-- `(A000203(A007947(n+1))-A023900(n+1))/2` -/
def P2346384587112871355.Spec : Prop :=
  ∀ n, P2346384587112871355.a n = (A318675 (n + 1) : ℚ)

end A318675

/-! ## A318675.P3628201590085823856

`A318674(n+1)-∏{p}[A007947(n+1), A168036(#)]`
-/

namespace A318675.P3628201590085823856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318674 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A168036 p

end

end A318675.P3628201590085823856

namespace A318675

/-- `A318674(n+1)-∏{p}[A007947(n+1), A168036(#)]` -/
def P3628201590085823856.Spec : Prop :=
  ∀ n, P3628201590085823856.a n = A318675 (n + 1)

end A318675

/-!
# A318676: Sum of divisors of n that have an even number of prime factors (counted with multiplicity).

The programs for A318676, the canonical program `A318676.P13641687183144923031` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318676 has offset 1).

The definition of A318676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318677, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318676.P13641687183144923031

`A000203(n+1)-A318677(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A318676

/-- `A000203(n+1)-A318677(n+1)` -/
def P13641687183144923031.Spec : Prop :=
  ∀ n, P13641687183144923031.a n = A318676 (n + 1)

theorem P13641687183144923031.correct : P13641687183144923031.Spec := by
  intro n
  simp only [A318676, Nat.add_sub_cancel]

end A318676

/-! ## A318676.P12643618386170867806

`∑{d}[n+1, #*A065043(#)]`
-/

namespace A318676.P12643618386170867806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065043 d

end

end A318676.P12643618386170867806

namespace A318676

/-- `∑{d}[n+1, #*A065043(#)]` -/
def P12643618386170867806.Spec : Prop :=
  ∀ n, P12643618386170867806.a n = A318676 (n + 1)

end A318676

/-! ## A318676.P3832751038842008282

`A318677(n+1)+A061020(n+1)`
-/

namespace A318676.P3832751038842008282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (n + 1) + A061020 (n + 1)

end

end A318676.P3832751038842008282

namespace A318676

/-- `A318677(n+1)+A061020(n+1)` -/
def P3832751038842008282.Spec : Prop :=
  ∀ n, P3832751038842008282.a n = A318676 (n + 1)

end A318676

/-! ## A318676.P8069788501456697102

`sqrt(A072861(n+1))-A318677(n+1)`
-/

namespace A318676.P8069788501456697102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A318677 (n + 1) : ℝ)

end

end A318676.P8069788501456697102

namespace A318676

/-- `sqrt(A072861(n+1))-A318677(n+1)` -/
def P8069788501456697102.Spec : Prop :=
  ∀ n, P8069788501456697102.a n = (A318676 (n + 1) : ℝ)

end A318676

/-! ## A318676.P14972027715537872301

`∑[A340793(n+1)]-A318677(n+1)`
-/

namespace A318676.P14972027715537872301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A318677 (n + 1)

end

end A318676.P14972027715537872301

namespace A318676

/-- `∑[A340793(n+1)]-A318677(n+1)` -/
def P14972027715537872301.Spec : Prop :=
  ∀ n, P14972027715537872301.a n = A318676 (n + 1)

end A318676

/-! ## A318676.P9740190866305950290

`(A061020(n+1)+A000203(n+1))/2`
-/

namespace A318676.P9740190866305950290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061020 (n + 1) + A000203 (n + 1) : ℚ) / 2

end

end A318676.P9740190866305950290

namespace A318676

/-- `(A061020(n+1)+A000203(n+1))/2` -/
def P9740190866305950290.Spec : Prop :=
  ∀ n, P9740190866305950290.a n = (A318676 (n + 1) : ℚ)

end A318676

/-! ## A318676.P9020597650674872095

`∑{d}[n+1, A023900(#)*A060872((n+1)/#)]`
-/

namespace A318676.P9020597650674872095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A060872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318676.P9020597650674872095

namespace A318676

/-- `∑{d}[n+1, A023900(#)*A060872((n+1)/#)]` -/
def P9020597650674872095.Spec : Prop :=
  ∀ n, P9020597650674872095.a n = A318676 (n + 1)

end A318676

/-! ## A318676.P11586552914417149284

`∑{d}[n+1, A061020(#)*A229347((n+1)/#)]`
-/

namespace A318676.P11586552914417149284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A229347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318676.P11586552914417149284

namespace A318676

/-- `∑{d}[n+1, A061020(#)*A229347((n+1)/#)]` -/
def P11586552914417149284.Spec : Prop :=
  ∀ n, P11586552914417149284.a n = A318676 (n + 1)

end A318676

/-! ## A318676.P15869302651058342620

`A327669(n+1)+A327670(n+1)-A318677(n+1)`
-/

namespace A318676.P15869302651058342620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327669 (n + 1) + (A327670 (n + 1) - A318677 (n + 1))

end

end A318676.P15869302651058342620

namespace A318676

/-- `A327669(n+1)+A327670(n+1)-A318677(n+1)` -/
def P15869302651058342620.Spec : Prop :=
  ∀ n, P15869302651058342620.a n = A318676 (n + 1)

theorem P15869302651058342620.correct : P15869302651058342620.Spec := by
  intro n
  simp only [A318676, Nat.add_sub_cancel, A318676.P15869302651058342620.a, A318676.P13641687183144923031.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318677, A318677.P9620612550096439051.a, A327669, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A327670, A327670.P15983329548232447165.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A092248, A092248.P6012556233968533590.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A298473, A298473.P4129261461603736948.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318676

/-!
# A318677: Sum of divisors of n that have an odd number of prime factors (counted with multiplicity).

The programs for A318677, the canonical program `A318677.P9620612550096439051` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318677 has offset 1).

The definition of A318677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318677.P4790962434468295666

`∑{d}[n+1, #*A066829(#)]`
-/

namespace A318677.P4790962434468295666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A066829 d

end

end A318677.P4790962434468295666

namespace A318677

/-- `∑{d}[n+1, #*A066829(#)]` -/
def P4790962434468295666.Spec : Prop :=
  ∀ n, P4790962434468295666.a n = A318677 (n + 1)

end A318677

/-! ## A318677.P7387925970320302511

`∑{d}[n+1, #*and(1, A001222(#))]`
-/

namespace A318677.P7387925970320302511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A001222 d)

end

end A318677.P7387925970320302511

namespace A318677

/-- `∑{d}[n+1, #*and(1, A001222(#))]` -/
def P7387925970320302511.Spec : Prop :=
  ∀ n, P7387925970320302511.a n = A318677 (n + 1)

end A318677

/-! ## A318677.P428472042985115196

`A000203(n+1)-A318676(n+1)`
-/

namespace A318677.P428472042985115196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318676 (n + 1)

end

end A318677.P428472042985115196

namespace A318677

/-- `A000203(n+1)-A318676(n+1)` -/
def P428472042985115196.Spec : Prop :=
  ∀ n, P428472042985115196.a n = A318677 (n + 1)

end A318677

/-! ## A318677.P18239729964921200914

`A318676(n+1)-A061020(n+1)`
-/

namespace A318677.P18239729964921200914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (n + 1) - A061020 (n + 1)

end

end A318677.P18239729964921200914

namespace A318677

/-- `A318676(n+1)-A061020(n+1)` -/
def P18239729964921200914.Spec : Prop :=
  ∀ n, P18239729964921200914.a n = A318677 (n + 1)

end A318677

/-! ## A318677.P9620612550096439051

`(A000203(n+1)-A061020(n+1))/2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318677

/-- `(A000203(n+1)-A061020(n+1))/2` -/
def P9620612550096439051.Spec : Prop :=
  ∀ n, P9620612550096439051.a n = (A318677 (n + 1) : ℚ)

end A318677

/-! ## A318677.P7614651133647604104

`A327669(n+1)+A327670(n+1)-A318676(n+1)`
-/

namespace A318677.P7614651133647604104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327669 (n + 1) + (A327670 (n + 1) - A318676 (n + 1))

end

end A318677.P7614651133647604104

namespace A318677

/-- `A327669(n+1)+A327670(n+1)-A318676(n+1)` -/
def P7614651133647604104.Spec : Prop :=
  ∀ n, P7614651133647604104.a n = A318677 (n + 1)

end A318677

/-!
# A318678: Sum of deficiencies of deficient divisors of n.

The programs for A318678, there is no canonical definition to state claims against.
-/

/-! ## A318678.P2825078692741193023

`A296075(n+1)+A318679(n+1)`
-/

namespace A318678.P2825078692741193023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) + A318679 (n + 1)

end

end A318678.P2825078692741193023

/-! ## A318678.P9174283843141737328

`A318679(n+1)+∑{d}[n+1, 2*#-A000203(#)]`
-/

namespace A318678.P9174283843141737328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - A000203 d)

end

end A318678.P9174283843141737328

/-! ## A318678.P11818003829742895813

`A033879(n+1)+A318679(n+1)+A296074(n+1)`
-/

namespace A318678.P11818003829742895813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A318679 (n + 1) + A296074 (n + 1))

end

end A318678.P11818003829742895813

/-! ## A318678.P17406230064796435877

`A093653(n+1)+A318679(n+1)+A318448(n+1)`
-/

namespace A318678.P17406230064796435877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1) + (A318679 (n + 1) + A318448 (n + 1))

end

end A318678.P17406230064796435877

/-! ## A318678.P3892139800509779992

`A000203(n+1)+A318679(n+1)-A211779(n+1)`
-/

namespace A318678.P3892139800509779992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A318679 (n + 1) - A211779 (n + 1))

end

end A318678.P3892139800509779992

/-! ## A318678.P3363606288042544919

`A296074(n+1)+A318679(n+1)-A033880(n+1)`
-/

namespace A318678.P3363606288042544919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296074 (n + 1) + (A318679 (n + 1) - A033880 (n + 1))

end

end A318678.P3363606288042544919

/-! ## A318678.P11155739696866075099

`A318679(n+1)+2*A000203(n+1)-A007429(n+1)`
-/

namespace A318678.P11155739696866075099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1) + (2 * A000203 (n + 1) - A007429 (n + 1))

end

end A318678.P11155739696866075099

/-!
# A318679: Sum of abundancies of abundant divisors of n.

The programs for A318679, there is no canonical definition to state claims against.
-/

/-! ## A318679.P1215977312146706797

`A318678(n+1)-A296075(n+1)`
-/

namespace A318679.P1215977312146706797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - A296075 (n + 1)

end

end A318679.P1215977312146706797

/-! ## A318679.P13641962268857089256

`A318678(n+1)-(∑{d}[n+1, #]-A211779(n+1))`
-/

namespace A318679.P13641962268857089256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A211779 (n + 1))

end

end A318679.P13641962268857089256

/-! ## A318679.P15665339535863980489

`A318678(n+1)-∑{d}[n+1, 2*#-A000203(#)]`
-/

namespace A318679.P15665339535863980489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), ((2 * d : ℤ) - A000203 d)

end

end A318679.P15665339535863980489

/-! ## A318679.P4063879981314315709

`A007429(n+1)+A318678(n+1)-A074400(n+1)`
-/

namespace A318679.P4063879981314315709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A318678 (n + 1) - A074400 (n + 1))

end

end A318679.P4063879981314315709

/-! ## A318679.P18241168567916642801

`A211779(n+1)+A318678(n+1)-A000203(n+1)`
-/

namespace A318679.P18241168567916642801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + (A318678 (n + 1) - A000203 (n + 1))

end

end A318679.P18241168567916642801

/-! ## A318679.P12423214186839785750

`A033880(n+1)+A318678(n+1)-A296074(n+1)`
-/

namespace A318679.P12423214186839785750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (A318678 (n + 1) - A296074 (n + 1))

end

end A318679.P12423214186839785750

/-! ## A318679.P9292297002950614787

`A318678(n+1)-(A296074(n+1)+A033879(n+1))`
-/

namespace A318679.P9292297002950614787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - (A296074 (n + 1) + A033879 (n + 1))

end

end A318679.P9292297002950614787

/-! ## A318679.P11153841507044536297

`A318678(n+1)-(A318448(n+1)+A093653(n+1))`
-/

namespace A318679.P11153841507044536297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - (A318448 (n + 1) + A093653 (n + 1))

end

end A318679.P11153841507044536297

/-! ## A318679.P1087193807608478710

`A318678(n+1)-(2*A000203(n+1)-A007429(n+1))`
-/

namespace A318679.P1087193807608478710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - (2 * A000203 (n + 1) - A007429 (n + 1))

end

end A318679.P1087193807608478710

/-! ## A318679.P16766151486318753115

`A318678(n+1)-∑{d}[n+1, A000005(#)*A083254((n+1)/#)]`
-/

namespace A318679.P16766151486318753115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A000005 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318679.P16766151486318753115

/-! ## A318679.P2475102551485474133

`A318678(n+1)-∑{d}[n+1, A023900(#)*A245212((n+1)/#)]`
-/

namespace A318679.P2475102551485474133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A023900 d * A245212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318679.P2475102551485474133

/-! ## A318679.P13324939838334502796

`A318678(n+1)-∑{d}[n+1, A046970(#)*A245773((n+1)/#)]`
-/

namespace A318679.P13324939838334502796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A046970 d * A245773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318679.P13324939838334502796

/-!
# A318680: a(n) = n * A318653(n).

The programs for A318680, there is no canonical definition to state claims against.
-/

/-! ## A318680.P15931970859192010620

`(n+1)*A318653(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318680.P15931970859192010620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318653 (n + 1)

end

end A318680.P15931970859192010620

/-! ## A318680.P6804591375318642653

`gcd(n+1, A299150(n+1))*A318511(n+1)`
-/

namespace A318680.P6804591375318642653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A299150 (n + 1)) : ℤ) * A318511 (n + 1)

end

end A318680.P6804591375318642653

/-! ## A318680.P9149898509239442924

`A299150(n+1)*A318511(n+1)/A318512(n+1)`
-/

namespace A318680.P9149898509239442924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299150 (n + 1) * A318511 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318680.P9149898509239442924

/-! ## A318680.P16959619853192498062

`A318511(n+1)/A318649(n+1)*A318681(n+1)`
-/

namespace A318680.P16959619853192498062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318511 (n + 1) : ℚ) / (A318649 (n + 1) : ℚ) * (A318681 (n + 1) : ℚ)

end

end A318680.P16959619853192498062

/-! ## A318680.P14000348325980929280

`A299149(n+1)*A318511(n+1)/A318649(n+1)*(n+1)`
-/

namespace A318680.P14000348325980929280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299149 (n + 1) * A318511 (n + 1) : ℚ) / (A318649 (n + 1) : ℚ) * (n + 1 : ℚ)

end

end A318680.P14000348325980929280

/-!
# A318681: a(n) = n * A299149(n).

The programs for A318681, the canonical program `A318681.P12311283223604938976` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318681 has offset 1).

The definition of A318681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318681.P12311283223604938976

`(n+1)*A299149(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A318681

/-- `(n+1)*A299149(n+1)` -/
def P12311283223604938976.Spec : Prop :=
  ∀ n, P12311283223604938976.a n = A318681 (n + 1)

theorem P12311283223604938976.correct : P12311283223604938976.Spec := by
  intro n
  simp only [A318681, Nat.add_sub_cancel]

end A318681

/-! ## A318681.P16589905282844945817

`lcm(n+1, A318649(n+1))`
-/

namespace A318681.P16589905282844945817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A318649 (n + 1))

end

end A318681.P16589905282844945817

namespace A318681

/-- `lcm(n+1, A318649(n+1))` -/
def P16589905282844945817.Spec : Prop :=
  ∀ n, (P16589905282844945817.a n : ℤ) = A318681 (n + 1)

end A318681

/-! ## A318681.P15760823110635329106

`A299149(A328399(2*n))*A328399(2*n)`
-/

namespace A318681.P15760823110635329106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (A328399 (2 * n)).toNat * A328399 (2 * n)

end

end A318681.P15760823110635329106

namespace A318681

/-- `A299149(A328399(2*n))*A328399(2*n)` -/
def P15760823110635329106.Spec : Prop :=
  ∀ n, P15760823110635329106.a n = A318681 (n + 1)

end A318681

/-! ## A318681.P9437708477665853360

`A299150(n+1)/A318512(n+1)*A318649(n+1)`
-/

namespace A318681.P9437708477665853360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299150 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ) * (A318649 (n + 1) : ℚ)

end

end A318681.P9437708477665853360

namespace A318681

/-- `A299150(n+1)/A318512(n+1)*A318649(n+1)` -/
def P9437708477665853360.Spec : Prop :=
  ∀ n, P9437708477665853360.a n = (A318681 (n + 1) : ℚ)

end A318681

/-! ## A318681.P14555940842264236820

`A318649(n+1)/A318511(n+1)*A318680(n+1)`
-/

namespace A318681.P14555940842264236820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318649 (n + 1) : ℚ) / (A318511 (n + 1) : ℚ) * (A318680 (n + 1) : ℚ)

end

end A318681.P14555940842264236820

namespace A318681

/-- `A318649(n+1)/A318511(n+1)*A318680(n+1)` -/
def P14555940842264236820.Spec : Prop :=
  ∀ n, P14555940842264236820.a n = (A318681 (n + 1) : ℚ)

end A318681

/-! ## A318681.P14795614426247225470

`(n+1)*A317929(A235199(n+1))`
-/

namespace A318681.P14795614426247225470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A317929 (A235199 (n + 1)).toNat

end

end A318681.P14795614426247225470

namespace A318681

/-- `(n+1)*A317929(A235199(n+1))` -/
def P14795614426247225470.Spec : Prop :=
  ∀ n, P14795614426247225470.a n = A318681 (n + 1)

end A318681

/-! ## A318681.P8517913930715448057

`(n+1)*A318319(A003961(n+1))`
-/

namespace A318681.P8517913930715448057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318319 (A003961 (n + 1)).toNat

end

end A318681.P8517913930715448057

namespace A318681

/-- `(n+1)*A318319(A003961(n+1))` -/
def P8517913930715448057.Spec : Prop :=
  ∀ n, P8517913930715448057.a n = A318681 (n + 1)

end A318681

/-! ## A318681.P10579286174045117959

`(n+1)*A318319(A045965(n+1))`
-/

namespace A318681.P10579286174045117959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318319 (A045965 (n + 1)).toNat

end

end A318681.P10579286174045117959

namespace A318681

/-- `(n+1)*A318319(A045965(n+1))` -/
def P10579286174045117959.Spec : Prop :=
  ∀ n, P10579286174045117959.a n = A318681 (n + 1)

end A318681

/-! ## A318681.P13886020673700904330

`(n+1)*A317930(A234840(n+1))`
-/

namespace A318681.P13886020673700904330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A317930 (A234840 (n + 1)).toNat

end

end A318681.P13886020673700904330

namespace A318681

/-- `(n+1)*A317930(A234840(n+1))` -/
def P13886020673700904330.Spec : Prop :=
  ∀ n, P13886020673700904330.a n = A318681 (n + 1)

end A318681

/-! ## A318681.P3435362458893632480

`(n+1)*A317929(A234840(A234744(n+1)))`
-/

namespace A318681.P3435362458893632480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A317929 (A234840 (A234744 (n + 1)).toNat).toNat

end

end A318681.P3435362458893632480

namespace A318681

/-- `(n+1)*A317929(A234840(A234744(n+1)))` -/
def P3435362458893632480.Spec : Prop :=
  ∀ n, P3435362458893632480.a n = A318681 (n + 1)

end A318681

/-!
# A318682: a(n) is the number of odd values minus the number of even values of the integer log of all positive integers up to and including n.

The programs for A318682, the canonical program `A318682.P14797881239714963524` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318682 has offset 1).

The definition of A318682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318682.P14797881239714963524

`a(n-1)+(-1)^(A001414(n+1)+1)` with `a(0)=-1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A318682

/-- `a(n-1)+(-1)^(A001414(n+1)+1)` -/
def P14797881239714963524.Spec : Prop :=
  ∀ n, P14797881239714963524.a n = (A318682 (n + 1) : ℚ)

end A318682

/-! ## A318682.P18272625824702856181

`∑[-A359154(n+1)]`
-/

namespace A318682.P18272625824702856181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A359154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P18272625824702856181

namespace A318682

/-- `∑[-A359154(n+1)]` -/
def P18272625824702856181.Spec : Prop :=
  ∀ n, P18272625824702856181.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P10333711651617128168

`∑[A359154(3*(n+1))]`
-/

namespace A318682.P10333711651617128168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359154 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P10333711651617128168

namespace A318682

/-- `∑[A359154(3*(n+1))]` -/
def P10333711651617128168.Spec : Prop :=
  ∀ n, P10333711651617128168.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P12687317226909612214

`∑[(-1)^A023888(n+1)]`
-/

namespace A318682.P12687317226909612214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A023888 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P12687317226909612214

namespace A318682

/-- `∑[(-1)^A023888(n+1)]` -/
def P12687317226909612214.Spec : Prop :=
  ∀ n, P12687317226909612214.a n = (A318682 (n + 1) : ℚ)

end A318682

/-! ## A318682.P4391772131422346952

`∑[(-1)^A036288(n+1)]`
-/

namespace A318682.P4391772131422346952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A036288 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P4391772131422346952

namespace A318682

/-- `∑[(-1)^A036288(n+1)]` -/
def P4391772131422346952.Spec : Prop :=
  ∀ n, P4391772131422346952.a n = (A318682 (n + 1) : ℚ)

end A318682

/-! ## A318682.P6403104677296751099

`∑[(-1)^A332993(n+1)]`
-/

namespace A318682.P6403104677296751099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A332993 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P6403104677296751099

namespace A318682

/-- `∑[(-1)^A332993(n+1)]` -/
def P6403104677296751099.Spec : Prop :=
  ∀ n, P6403104677296751099.a n = (A318682 (n + 1) : ℚ)

end A318682

/-! ## A318682.P6773693363760101436

`∑[-(-1)^A087436(n+1)]`
-/

namespace A318682.P6773693363760101436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A087436 (n + 1) : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P6773693363760101436

namespace A318682

/-- `∑[-(-1)^A087436(n+1)]` -/
def P6773693363760101436.Spec : Prop :=
  ∀ n, P6773693363760101436.a n = (A318682 (n + 1) : ℚ)

end A318682

/-! ## A318682.P8760274890591242148

`∑[(-1)^(A001414(n+1)+3)]`
-/

namespace A318682.P8760274890591242148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001414 (n + 1) + 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P8760274890591242148

namespace A318682

/-- `∑[(-1)^(A001414(n+1)+3)]` -/
def P8760274890591242148.Spec : Prop :=
  ∀ n, P8760274890591242148.a n = (A318682 (n + 1) : ℚ)

end A318682

/-! ## A318682.P2309388008887576010

`∑[-A008836((n+1)/2^val(n+1, 2))]`
-/

namespace A318682.P2309388008887576010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P2309388008887576010

namespace A318682

/-- `∑[-A008836((n+1)/2^val(n+1, 2))]` -/
def P2309388008887576010.Spec : Prop :=
  ∀ n, P2309388008887576010.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P17457064881298487504

`∑[-A008836((n+1)/and(n+1, -(n+1)))]`
-/

namespace A318682.P17457064881298487504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P17457064881298487504

namespace A318682

/-- `∑[-A008836((n+1)/and(n+1, -(n+1)))]` -/
def P17457064881298487504.Spec : Prop :=
  ∀ n, P17457064881298487504.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P11155413477526312768

`∑[A166698(A166466(n+1))]`
-/

namespace A318682.P11155413477526312768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A166466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P11155413477526312768

namespace A318682

/-- `∑[A166698(A166466(n+1))]` -/
def P11155413477526312768.Spec : Prop :=
  ∀ n, P11155413477526312768.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P10488174599714863406

`∑[A009531(A275367(n+1)+2)]`
-/

namespace A318682.P10488174599714863406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A275367 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P10488174599714863406

namespace A318682

/-- `∑[A009531(A275367(n+1)+2)]` -/
def P10488174599714863406.Spec : Prop :=
  ∀ n, P10488174599714863406.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P9330428523119788482

`∑[A071321(n+1)-xor(1, A071321(n+1))]`
-/

namespace A318682.P9330428523119788482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1) - Int.xor 1 (A071321 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P9330428523119788482

namespace A318682

/-- `∑[A071321(n+1)-xor(1, A071321(n+1))]` -/
def P9330428523119788482.Spec : Prop :=
  ∀ n, P9330428523119788482.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P12001600005099582300

`∑[A359818(2*(n+1)²)]`
-/

namespace A318682.P12001600005099582300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359818 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P12001600005099582300

namespace A318682

/-- `∑[A359818(2*(n+1)²)]` -/
def P12001600005099582300.Spec : Prop :=
  ∀ n, P12001600005099582300.a n = A318682 (n + 1)

end A318682

/-! ## A318682.P14091221524370759992

`∑[-A309873((n+1)*2^∑{e}[n+1, #])]`
-/

namespace A318682.P14091221524370759992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A309873 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318682.P14091221524370759992

namespace A318682

/-- `∑[-A309873((n+1)*2^∑{e}[n+1, #])]` -/
def P14091221524370759992.Spec : Prop :=
  ∀ n, P14091221524370759992.a n = A318682 (n + 1)

end A318682

/-!
# A318683: Number of ways to split a strict integer partition of n into consecutive subsequences with equal sums.

The programs for A318683, there is no canonical definition to state claims against.
-/

/-! ## A318683.P13937462492798600659

`A118759(A111133(n))+A028310(A035457(n))`
-/

namespace A318683.P13937462492798600659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A111133 n).toNat + A028310 (A035457 n).toNat

end

end A318683.P13937462492798600659

/-! ## A318683.P12690664661522339192

`A325877(n)+A061955(n+1)%A038083(A289439(n+2))`
-/

namespace A318683.P12690664661522339192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325877 n + Int.tmod (A061955 (n + 1)) (A038083 (A289439 (n + 2)).toNat)

end

end A318683.P12690664661522339192

/-!
# A318684: Number of ways to split a strict integer partition of n into consecutive subsequences with strictly decreasing sums.

The programs for A318684, there is no canonical definition to state claims against.
-/

/-! ## A318684.P16019874415154091352

`A353494(A201630(n+1))+A323581(n)`
-/

namespace A318684.P16019874415154091352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A201630 (n + 1)).toNat + A323581 n

end

end A318684.P16019874415154091352

/-!
# A318687: Number of length-n circular binary words having exactly n distinct blocks of length floor(log_2(n)) + 1 (A070939).

The programs for A318687, there is no canonical definition to state claims against.
-/

/-! ## A318687.P5851219440712738252

`A344018(lt[n, 2*and(n, 2*n)]-2)`
-/

namespace A318687.P5851219440712738252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 2)

end

end A318687.P5851219440712738252

/-! ## A318687.P6452077811832490795

`A344018(eq[1, A079944(n)])`
-/

namespace A318687.P6452077811832490795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318687.P6452077811832490795

/-! ## A318687.P4960515052174245510

`A344018(lt[1, A079882(n)])`
-/

namespace A318687.P4960515052174245510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A318687.P4960515052174245510

/-! ## A318687.P8748282726402243894

`A344018(eq[2, A079882(n)])`
-/

namespace A318687.P8748282726402243894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318687.P8748282726402243894

/-! ## A318687.P15883764687890289094

`A344018(A206332(n+1)-1)`
-/

namespace A318687.P15883764687890289094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344018 (A206332 (n + 1) - 1).toNat

end

end A318687.P15883764687890289094

/-!
# A318688: Numbers k such that 2^(3^j) == 1 (mod k) for some j.

The programs for A318688, there is no canonical definition to state claims against.
-/

/-! ## A318688.P6784364913395340976

`filter[A036259(n+1), A122255(#)]`
-/

namespace A318688.P6784364913395340976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A318688.P6784364913395340976

/-!
# A318689: Number of powerful uniform rooted trees with n nodes.

The programs for A318689, there is no canonical definition to state claims against.
-/

/-! ## A318689.P14667893162907225474

`A356899(A003238(n+1)+1)%A099732(2*(n+2))`
-/

namespace A318689.P14667893162907225474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356899 (A003238 (n + 1) + 1).toNat) (A099732 (2 * (n + 2)))

end

end A318689.P14667893162907225474

/-! ## A318689.P6566417567450539156

`A081227(A057513(n))+A057546(n)`
-/

namespace A318689.P6566417567450539156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (A057513 n).toNat + A057546 n

end

end A318689.P6566417567450539156

/-! ## A318689.P266406681473570930

`A056556(A000124(n)*A056506(n))`
-/

namespace A318689.P266406681473570930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A000124 n * A056506 n).toNat

end

end A318689.P266406681473570930

/-! ## A318689.P15891682024126294

`A056556(A000124(n)*A056507(n))`
-/

namespace A318689.P15891682024126294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A000124 n * A056507 n).toNat

end

end A318689.P15891682024126294

/-! ## A318689.P10221392507612036542

`or(A029423(n), A287354(A319635(n)))`
-/

namespace A318689.P10221392507612036542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029423 n) (A287354 (A319635 n).toNat)

end

end A318689.P10221392507612036542

/-!
# A318690: Matula-Goebel numbers of powerful uniform rooted trees.

The programs for A318690, there is no canonical definition to state claims against.
-/

/-! ## A318690.P5956614968005909039

`∩[A318612(n+1), A360247(n+1)]`
-/

namespace A318690.P5956614968005909039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318690.P5956614968005909039

/-! ## A318690.P8585490828933357343

`∪[A001597(n+1), A243497(n)]%A212169(n+2)`
-/

namespace A318690.P8585490828933357343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A212169 (n + 2))

end

end A318690.P8585490828933357343

/-! ## A318690.P15976038206820096094

`∩[A317710(n+1), A318612(n+1)]`
-/

namespace A318690.P15976038206820096094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318690.P15976038206820096094

/-! ## A318690.P14615032029505257803

`∩[A318612(n+1), A338190(n+1)]`
-/

namespace A318690.P14615032029505257803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318690.P14615032029505257803

/-! ## A318690.P1877686179173200386

`∩[A317710(n+1), A366142(n+1)]`
-/

namespace A318690.P1877686179173200386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318690.P1877686179173200386

/-!
# A318691: Number of series-reduced powerful uniform rooted trees with n nodes.

The programs for A318691, there is no canonical definition to state claims against.
-/

/-! ## A318691.P2808195938073522977

`A130790(A331888(n)+1)`
-/

namespace A318691.P2808195938073522977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130790 (A331888 n + 1).toNat

end

end A318691.P2808195938073522977

/-! ## A318691.P4995959024477415560

`A091954(A078008(n)+gcd(2, A000032(n)))`
-/

namespace A318691.P4995959024477415560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (A078008 n + (Int.gcd 2 (A000032 n) : ℤ)).toNat

end

end A318691.P4995959024477415560

/-! ## A318691.P3011784792173004432

`A331887(n)+A156729(A331887(3*n))`
-/

namespace A318691.P3011784792173004432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331887 n + A156729 (A331887 (3 * n)).toNat

end

end A318691.P3011784792173004432

/-! ## A318691.P12187535386399667591

`A000120(and(A189563(n), A331945(n+1)))`
-/

namespace A318691.P12187535386399667591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A189563 n) (A331945 (n + 1))).toNat

end

end A318691.P12187535386399667591

/-! ## A318691.P11249947926193459193

`A297791(n+1)+A269243(A147445(n+1))`
-/

namespace A318691.P11249947926193459193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297791 (n + 1) + A269243 (A147445 (n + 1)).toNat

end

end A318691.P11249947926193459193

/-!
# A318692: Matula-Goebel numbers of series-reduced powerful uniform rooted trees.

The programs for A318692, there is no canonical definition to state claims against.
-/

/-! ## A318692.P1871287478185600154

`∩[A076292(n+1), A317705(n+1)]`
-/

namespace A318692.P1871287478185600154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318692.P1871287478185600154

/-! ## A318692.P5850947077275555085

`record[A062759(A317705(n+1))]`
-/

namespace A318692.P5850947077275555085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A317705 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318692.P5850947077275555085

/-! ## A318692.P223097713700551811

`filter[A317705(n+1), A384667(#)]`
-/

namespace A318692.P223097713700551811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A318692.P223097713700551811

/-! ## A318692.P14774919459659839611

`A317705(lt[A000010(3*n+1), A022995(n)+3]+1)`
-/

namespace A318692.P14774919459659839611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022995 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317705 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A318692.P14774919459659839611

/-! ## A318692.P10392143456557931424

`∩[A076292(n+1), A320269(n+1)]`
-/

namespace A318692.P10392143456557931424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318692.P10392143456557931424

/-!
# A318693: Expansion of e.g.f. Product_{i>=1, j>=1} 1/(1 - x^(i*j)/(i*j)).

The programs for A318693, there is no canonical definition to state claims against.
-/

/-! ## A318693.P5148429006903987073

`A289186((A088305(n)+1)²+1)`
-/

namespace A318693.P5148429006903987073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289186 ((A088305 n + 1) ^ 2 + 1).toNat

end

end A318693.P5148429006903987073

/-! ## A318693.P10208061973647991103

`A002265(A108666(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A318693.P10208061973647991103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (A108666 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A318693.P10208061973647991103

/-!
# A318694: Expansion of e.g.f. Product_{i>=1, j>=1} (1 + x^(i*j)/(i*j)).

The programs for A318694, there is no canonical definition to state claims against.
-/

/-! ## A318694.P11752306950706906289

`A046682(n)+A028242(A295104(n+1))`
-/

namespace A318694.P11752306950706906289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n + A028242 (A295104 (n + 1)).toNat

end

end A318694.P11752306950706906289

/-! ## A318694.P1256665485476259921

`A109598(A002524(n))`
-/

namespace A318694.P1256665485476259921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109598 (A002524 n).toNat

end

end A318694.P1256665485476259921

/-!
# A318695: Expansion of e.g.f. Product_{i>=1, j>=1} 1/(1 - x^(i*j))^(1/(i*j)).

The programs for A318695, there is no canonical definition to state claims against.
-/

/-! ## A318695.P8306783247010306342

`A080795(n)-A261673(A080635(n))`
-/

namespace A318695.P8306783247010306342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080795 n - A261673 (A080635 n).toNat

end

end A318695.P8306783247010306342

/-! ## A318695.P1640416465136265303

`A351756(n)-A002487(A357292(3*n))`
-/

namespace A318695.P1640416465136265303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351756 n - A002487 (A357292 (3 * n)).toNat

end

end A318695.P1640416465136265303

/-!
# A318696: Expansion of e.g.f. Product_{i>=1, j>=1} (1 + x^(i*j))^(1/(i*j)).

The programs for A318696, there is no canonical definition to state claims against.
-/

/-! ## A318696.P13080223624355032051

`A004275(lcm(A057977(n), A294159(n)))`
-/

namespace A318696.P13080223624355032051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.lcm (A057977 n) (A294159 n))

end

end A318696.P13080223624355032051

/-! ## A318696.P9814499553723346079

`A302600(A184884(n))`
-/

namespace A318696.P9814499553723346079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302600 (A184884 n).toNat

end

end A318696.P9814499553723346079

/-!
# A318697: Number of ways to partition a hypertree spanning n vertices into hypertrees.

The programs for A318697, there is no canonical definition to state claims against.
-/

/-! ## A318697.P3367280594340978515

`A088462(∏[a(n-1)+6])` with `a(0)=1, a(1)=2`
-/

namespace A318697.P3367280594340978515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A318697.P3367280594340978515

/-!
# A318699: a(n) is the smallest nonnegative integer of opposite parity to n, not yet in the sequence, that shares a digit with a(n-1); a(0) = 1.

The programs for A318699, there is no canonical definition to state claims against.
-/

/-! ## A318699.P7751000861976585150

`eq[A000030(n), A108104(A109038(n))]`
-/

namespace A318699.P7751000861976585150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (A109038 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318699.P7751000861976585150

/-! ## A318699.P12942949421039404871

`eq[A059995(n), A214949(A002126(n))]`
-/

namespace A318699.P12942949421039404871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318699.P12942949421039404871

/-! ## A318699.P12597855541212478519

`eq[A000030(n), A146694(A137734(n))]`
-/

namespace A318699.P12597855541212478519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146694 (A137734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318699.P12597855541212478519

/-! ## A318699.P8171805864220648613

`eq[A000030(n), A034327(A285797(n))]`
-/

namespace A318699.P8171805864220648613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034327 (A285797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318699.P8171805864220648613

