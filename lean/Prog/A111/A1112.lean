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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A111200: Solution of Diophantine equation (1/x^2 + 1/y^2 = 1/z^2); x values in increasing order.

The programs for A111200, there is no canonical definition to state claims against.
-/

/-! ## A111200.P618836193247443716

`∪[2*A344330(n+1), A344332(n+1)]`
-/

namespace A111200.P618836193247443716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111200.P618836193247443716

/-! ## A111200.P4925593153639617629

`∪[2*A344331(n+1), A344332(n+1)]`
-/

namespace A111200.P4925593153639617629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111200.P4925593153639617629

/-! ## A111200.P10344410121805514150

`∪[A004277(A344330(n+1)), A344332(n+1)]`
-/

namespace A111200.P10344410121805514150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A344330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111200.P10344410121805514150

/-! ## A111200.P2616346893085637461

`∪[A004277(A344331(n+1)), A344332(n+1)]`
-/

namespace A111200.P2616346893085637461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A344331 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111200.P2616346893085637461

/-! ## A111200.P8309764897563882559

`eq[A091577(n), A330714(n)]`
-/

namespace A111200.P8309764897563882559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111200.P8309764897563882559

/-!
# A111201: a(1)=1 then a(n)=a(n-1)+n if n is already in the sequence, a(n)=a(n-1)+n+1 otherwise.

The programs for A111201, there is no canonical definition to state claims against.
-/

/-! ## A111201.P11417889788000244879

`floor(A118026(n+2)-acot(n))`
-/

namespace A111201.P11417889788000244879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118026 (n + 2) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A111201.P11417889788000244879

/-! ## A111201.P1271269231168023796

`A118026(n+2)-A054977(n)`
-/

namespace A111201.P1271269231168023796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118026 (n + 2) - A054977 n

end

end A111201.P1271269231168023796

/-! ## A111201.P18228042483347585519

`A118026(n+2)-A000038(n)!`
-/

namespace A111201.P18228042483347585519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118026 (n + 2) - (Nat.factorial (A000038 n).toNat : ℤ)

end

end A111201.P18228042483347585519

/-! ## A111201.P10336670326672493444

`A118026(n+2)-(A000007(n)+1)`
-/

namespace A111201.P10336670326672493444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118026 (n + 2) - (A000007 n + 1)

end

end A111201.P10336670326672493444

/-! ## A111201.P17777502159538871737

`A118026(n+2)-gcd(2, A000040(n+1))`
-/

namespace A111201.P17777502159538871737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118026 (n + 2) - (Int.gcd 2 (A000040 (n + 1)) : ℤ)

end

end A111201.P17777502159538871737

/-! ## A111201.P9415887071353487455

`A118026(n+2)-2/A000032(C(2, n+2))`
-/

namespace A111201.P9415887071353487455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118026 (n + 2) : ℚ) - 2 / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A111201.P9415887071353487455

/-! ## A111201.P13181237847675367551

`A118026(n+2)-A014963(4*n+2)`
-/

namespace A111201.P13181237847675367551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118026 (n + 2) - A014963 (4 * n + 2)

end

end A111201.P13181237847675367551

/-!
# A111204: Difference between the closest squares surrounding a nonsquare composite number k and k have a common divisor greater than 1.

The programs for A111204, there is no canonical definition to state claims against.
-/

/-! ## A111204.P10070692494503636935

`A001650(A111205(n+1))`
-/

namespace A111204.P10070692494503636935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A111205 (n + 1)).toNat

end

end A111204.P10070692494503636935

/-!
# A111206: Semi-Sophie Germain semiprimes: semiprimes which are the product of Sophie Germain primes.

The programs for A111206, the canonical program `A111206.P11831384310067611551` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111206 has offset 1).

The definition of A111206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111206.P11831384310067611551

`∩[A001358(n+1), A156541(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A111206

/-- `∩[A001358(n+1), A156541(n+1)]` -/
def P11831384310067611551.Spec : Prop :=
  ∀ n, (P11831384310067611551.a n : ℤ) = A111206 (n + 1)

theorem P11831384310067611551.correct : P11831384310067611551.Spec := by
  intro n
  simp only [A111206, Nat.add_sub_cancel]

end A111206

/-! ## A111206.P6048317749814950264

`filter[A156541(n+1), A064911(#)]`
-/

namespace A111206.P6048317749814950264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A111206.P6048317749814950264

namespace A111206

/-- `filter[A156541(n+1), A064911(#)]` -/
def P6048317749814950264.Spec : Prop :=
  ∀ n, P6048317749814950264.a n = A111206 (n + 1)

end A111206

/-! ## A111206.P8979183317477007292

`∩[A156541(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A111206.P8979183317477007292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111206.P8979183317477007292

namespace A111206

/-- `∩[A156541(n+1), A118717(n)-a(n-1)]` -/
def P8979183317477007292.Spec : Prop :=
  ∀ n, (P8979183317477007292.a n : ℤ) = A111206 (n + 1)

end A111206

/-! ## A111206.P16041954454848183282

`∩[A133796(n+1)-A000040(n+1), A156541(n+1)]`
-/

namespace A111206.P16041954454848183282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111206.P16041954454848183282

namespace A111206

/-- `∩[A133796(n+1)-A000040(n+1), A156541(n+1)]` -/
def P16041954454848183282.Spec : Prop :=
  ∀ n, (P16041954454848183282.a n : ℤ) = A111206 (n + 1)

end A111206

/-! ## A111206.P9067657770950386796

`eq[A060508(n+2), A183152(n)]`
-/

namespace A111206.P9067657770950386796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060508 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111206.P9067657770950386796

namespace A111206

/-- `eq[A060508(n+2), A183152(n)]` -/
def P9067657770950386796.Spec : Prop :=
  ∀ n, (P9067657770950386796.a n : ℤ) = A111206 (n + 1)

end A111206

/-!
# A111207: Numbers that are both Sophie Germain semiprimes and semi-Sophie Germain semiprimes.

The programs for A111207, the canonical program `A111207.P4451646686703015083` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111207 has offset 1).

The definition of A111207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111207.P6899758118380458238

`∩[A111153(n+1), A111206(n+1)]`
-/

namespace A111207.P6899758118380458238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111207.P6899758118380458238

namespace A111207

/-- `∩[A111153(n+1), A111206(n+1)]` -/
def P6899758118380458238.Spec : Prop :=
  ∀ n, (P6899758118380458238.a n : ℤ) = A111207 (n + 1)

end A111207

/-! ## A111207.P4541496430656463464

`∩[A111153(n+1), A156541(n+1)]`
-/

namespace A111207.P4541496430656463464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111207.P4541496430656463464

namespace A111207

/-- `∩[A111153(n+1), A156541(n+1)]` -/
def P4541496430656463464.Spec : Prop :=
  ∀ n, (P4541496430656463464.a n : ℤ) = A111207 (n + 1)

end A111207

/-! ## A111207.P4451646686703015083

`∩[A111206(n+1), A117360(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A111207

/-- `∩[A111206(n+1), A117360(n+1)]` -/
def P4451646686703015083.Spec : Prop :=
  ∀ n, (P4451646686703015083.a n : ℤ) = A111207 (n + 1)

theorem P4451646686703015083.correct : P4451646686703015083.Spec := by
  intro n
  simp only [A111207, Nat.add_sub_cancel]

end A111207

/-! ## A111207.P14186020067658494689

`∩[A111206(n+1), floor(A176896(n+1)/2)]`
-/

namespace A111207.P14186020067658494689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176896 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111207.P14186020067658494689

namespace A111207

/-- `∩[A111206(n+1), floor(A176896(n+1)/2)]` -/
def P14186020067658494689.Spec : Prop :=
  ∀ n, (P14186020067658494689.a n : ℤ) = A111207 (n + 1)

end A111207

/-! ## A111207.P8623454150746263094

`∩[A156541(n+1), floor(A176896(n+1)/2)]`
-/

namespace A111207.P8623454150746263094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176896 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111207.P8623454150746263094

namespace A111207

/-- `∩[A156541(n+1), floor(A176896(n+1)/2)]` -/
def P8623454150746263094.Spec : Prop :=
  ∀ n, (P8623454150746263094.a n : ℤ) = A111207 (n + 1)

end A111207

/-! ## A111207.P7696598506213923135

`∩[A111206(n+1), A004524(A176896(n+1))]`
-/

namespace A111207.P7696598506213923135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A176896 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111207.P7696598506213923135

namespace A111207

/-- `∩[A111206(n+1), A004524(A176896(n+1))]` -/
def P7696598506213923135.Spec : Prop :=
  ∀ n, (P7696598506213923135.a n : ℤ) = A111207 (n + 1)

end A111207

/-!
# A111208: Number of primes <= n-th triangular number.

The programs for A111208, there is no canonical definition to state claims against.
-/

/-! ## A111208.P17234758207335152157

`A066888(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A111208.P17234758207335152157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A066888 (n - 1) + a (n - 1)

end

end A111208.P17234758207335152157

/-! ## A111208.P5997970288346195835

`∑[A066888(n)]-A066888(n)`
-/

namespace A111208.P5997970288346195835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066888 n

end

end A111208.P5997970288346195835

/-! ## A111208.P15669379544776591917

`A038107(n)-A194189(A028310(n))`
-/

namespace A111208.P15669379544776591917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n - A194189 (A028310 n).toNat

end

end A111208.P15669379544776591917

/-! ## A111208.P2557139505076209495

`A000720(∑[n]+floor(acot(n)))`
-/

namespace A111208.P2557139505076209495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A111208.P2557139505076209495

/-! ## A111208.P20831171807447551

`A000720(∑[n-char[1]]+1)`
-/

namespace A111208.P20831171807447551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A111208.P20831171807447551

/-! ## A111208.P3926551252009262736

`A000720(A151800(C(n+1, 2)))-1`
-/

namespace A111208.P3926551252009262736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (Nat.choose (n + 1) 2)).toNat - 1

end

end A111208.P3926551252009262736

/-! ## A111208.P2986668664344450221

`A000720(A179865(n+1))%∑[n+1]`
-/

namespace A111208.P2986668664344450221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A179865 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A111208.P2986668664344450221

/-! ## A111208.P2445561165180750375

`A000720(A179865(n+1))*A057427(n)`
-/

namespace A111208.P2445561165180750375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A179865 (n + 1)).toNat * A057427 n

end

end A111208.P2445561165180750375

/-! ## A111208.P12368537960456171665

`A079067(A151800(∑[n]))`
-/

namespace A111208.P12368537960456171665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A151800 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A111208.P12368537960456171665

/-! ## A111208.P3960992124792430866

`A230980(∑[n])`
-/

namespace A111208.P3960992124792430866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111208.P3960992124792430866

/-! ## A111208.P10668666457001143716

`A095117(∑[n])-∑[n]`
-/

namespace A111208.P10668666457001143716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A111208.P10668666457001143716

/-! ## A111208.P4222050528179363623

`A033270(A097050(n))`
-/

namespace A111208.P4222050528179363623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A097050 n).toNat

end

end A111208.P4222050528179363623

/-! ## A111208.P732726677785260142

`A047983(A007918(∑[n]+1))`
-/

namespace A111208.P732726677785260142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (A007918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A111208.P732726677785260142

/-! ## A111208.P1780886727011626528

`A056172(∑[2*n]+1)`
-/

namespace A111208.P1780886727011626528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111208.P1780886727011626528

/-! ## A111208.P8919470347426354194

`A242096(∑[2*n]+1)`
-/

namespace A111208.P8919470347426354194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111208.P8919470347426354194

/-!
# A111209: Difference between the powers of two and the primes.

The programs for A111209, the canonical program `A111209.P14608173800313505536` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111209 has offset 1).

The definition of A111209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111209.P14608173800313505536

`A000079(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111209

/-- `A000079(n+1)-A000040(n+1)` -/
def P14608173800313505536.Spec : Prop :=
  ∀ n, P14608173800313505536.a n = A111209 (n + 1)

theorem P14608173800313505536.correct : P14608173800313505536.Spec := by
  intro n
  simp only [A111209, Nat.add_sub_cancel]

end A111209

/-! ## A111209.P11282207300604296869

`2^(n+1)-p?[comp[n²]]`
-/

namespace A111209.P11282207300604296869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A111209.P11282207300604296869

namespace A111209

/-- `2^(n+1)-p?[comp[n²]]` -/
def P11282207300604296869.Spec : Prop :=
  ∀ n, P11282207300604296869.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P3588453279126939379

`2^(n+1)-record[∑{p}[n+2, #]]`
-/

namespace A111209.P3588453279126939379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A111209.P3588453279126939379

namespace A111209

/-- `2^(n+1)-record[∑{p}[n+2, #]]` -/
def P3588453279126939379.Spec : Prop :=
  ∀ n, P3588453279126939379.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P5316875817860956565

`record[A243071(n+1)-n]`
-/

namespace A111209.P5316875817860956565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P5316875817860956565

namespace A111209

/-- `record[A243071(n+1)-n]` -/
def P5316875817860956565.Spec : Prop :=
  ∀ n, P5316875817860956565.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P14947224422009309141

`record[A243354(n+1)-n]`
-/

namespace A111209.P14947224422009309141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P14947224422009309141

namespace A111209

/-- `record[A243354(n+1)-n]` -/
def P14947224422009309141.Spec : Prop :=
  ∀ n, P14947224422009309141.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P5636414968639228073

`record[A253564(n+1)-n]`
-/

namespace A111209.P5636414968639228073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253564 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P5636414968639228073

namespace A111209

/-- `record[A253564(n+1)-n]` -/
def P5636414968639228073.Spec : Prop :=
  ∀ n, P5636414968639228073.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P15609214040043552523

`record[A293447(n+1)-n]`
-/

namespace A111209.P15609214040043552523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P15609214040043552523

namespace A111209

/-- `record[A293447(n+1)-n]` -/
def P15609214040043552523.Spec : Prop :=
  ∀ n, P15609214040043552523.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P7332548692105217043

`record[A297156(n+1)-n]`
-/

namespace A111209.P7332548692105217043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297156 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P7332548692105217043

namespace A111209

/-- `record[A297156(n+1)-n]` -/
def P7332548692105217043.Spec : Prop :=
  ∀ n, P7332548692105217043.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P306406990737124241

`record[A297171(n+1)-n]`
-/

namespace A111209.P306406990737124241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297171 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P306406990737124241

namespace A111209

/-- `record[A297171(n+1)-n]` -/
def P306406990737124241.Spec : Prop :=
  ∀ n, P306406990737124241.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P9572246810346085543

`record[A323243(n+1)-n]`
-/

namespace A111209.P9572246810346085543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P9572246810346085543

namespace A111209

/-- `record[A323243(n+1)-n]` -/
def P9572246810346085543.Spec : Prop :=
  ∀ n, P9572246810346085543.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P6990109878757916750

`record[A323247(n+1)-n]`
-/

namespace A111209.P6990109878757916750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323247 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P6990109878757916750

namespace A111209

/-- `record[A323247(n+1)-n]` -/
def P6990109878757916750.Spec : Prop :=
  ∀ n, P6990109878757916750.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P13617803395376911545

`record[A324543(n+1)-n]`
-/

namespace A111209.P13617803395376911545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324543 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P13617803395376911545

namespace A111209

/-- `record[A324543(n+1)-n]` -/
def P13617803395376911545.Spec : Prop :=
  ∀ n, P13617803395376911545.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P8578973799614830017

`record[A324548(n+1)-n]`
-/

namespace A111209.P8578973799614830017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324548 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P8578973799614830017

namespace A111209

/-- `record[A324548(n+1)-n]` -/
def P8578973799614830017.Spec : Prop :=
  ∀ n, P8578973799614830017.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P10447469804911116502

`record[A324573(n+1)-n]`
-/

namespace A111209.P10447469804911116502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324573 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P10447469804911116502

namespace A111209

/-- `record[A324573(n+1)-n]` -/
def P10447469804911116502.Spec : Prop :=
  ∀ n, P10447469804911116502.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P11737346148007763167

`record[A324866(n+1)-n]`
-/

namespace A111209.P11737346148007763167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324866 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P11737346148007763167

namespace A111209

/-- `record[A324866(n+1)-n]` -/
def P11737346148007763167.Spec : Prop :=
  ∀ n, P11737346148007763167.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P8218015963293782647

`record[A324867(n+1)-n]`
-/

namespace A111209.P8218015963293782647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324867 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P8218015963293782647

namespace A111209

/-- `record[A324867(n+1)-n]` -/
def P8218015963293782647.Spec : Prop :=
  ∀ n, P8218015963293782647.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P14166181064914583952

`record[A324876(n+1)-n]`
-/

namespace A111209.P14166181064914583952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324876 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P14166181064914583952

namespace A111209

/-- `record[A324876(n+1)-n]` -/
def P14166181064914583952.Spec : Prop :=
  ∀ n, P14166181064914583952.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P13607050985524942029

`record[A324877(n+1)-n]`
-/

namespace A111209.P13607050985524942029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324877 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111209.P13607050985524942029

namespace A111209

/-- `record[A324877(n+1)-n]` -/
def P13607050985524942029.Spec : Prop :=
  ∀ n, P13607050985524942029.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P4614732883024425821

`A277801(n+1)+2^n`
-/

namespace A111209.P4614732883024425821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277801 (n + 1) + (2 ^ n : ℤ)

end

end A111209.P4614732883024425821

namespace A111209

/-- `A277801(n+1)+2^n` -/
def P4614732883024425821.Spec : Prop :=
  ∀ n, P4614732883024425821.a n = A111209 (n + 1)

end A111209

/-! ## A111209.P14798073761480434098

`∑[2^n]-record[A000010(n+1)]`
-/

namespace A111209.P14798073761480434098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A111209.P14798073761480434098

namespace A111209

/-- `∑[2^n]-record[A000010(n+1)]` -/
def P14798073761480434098.Spec : Prop :=
  ∀ n, P14798073761480434098.a n = A111209 (n + 1)

end A111209

/-!
# A111211: Divisors of 10^16 - 1.

The programs for A111211, there is no canonical definition to state claims against.
-/

/-! ## A111211.P13659204812504865278

`record[gcd(A007394(n+4), A173394(n+1))]`
-/

namespace A111211.P13659204812504865278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007394 (n + 4)) (A173394 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111211.P13659204812504865278

/-! ## A111211.P2816879007066951225

`A173394(A187829(n+1)+A025442(n))`
-/

namespace A111211.P2816879007066951225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (A187829 (n + 1) + A025442 n).toNat

end

end A111211.P2816879007066951225

/-! ## A111211.P10010079590014537232

`A173394(A187829(n+1)+A165878(n+4))`
-/

namespace A111211.P10010079590014537232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (A187829 (n + 1) + A165878 (n + 4)).toNat

end

end A111211.P10010079590014537232

/-! ## A111211.P10116326020089586546

`A173394(A179892(n+1)%A173356(n+1))`
-/

namespace A111211.P10116326020089586546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (Int.tmod (A179892 (n + 1)) (A173356 (n + 1))).toNat

end

end A111211.P10116326020089586546

/-! ## A111211.P16516897136729648012

`A173394(A077168(n))`
-/

namespace A111211.P16516897136729648012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173394 (A077168 n).toNat

end

end A111211.P16516897136729648012

/-!
# A111213: Difference between the closest squares surrounding prime p is prime.

The programs for A111213, the canonical program `A111213.P2402949892722593442` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111213 has offset 1).

The definition of A111213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111213.P16571781984248034887

`p?[A117767(n+1)]`
-/

namespace A111213.P16571781984248034887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P16571781984248034887

namespace A111213

/-- `p?[A117767(n+1)]` -/
def P16571781984248034887.Spec : Prop :=
  ∀ n, P16571781984248034887.a n = A111213 (n + 1)

theorem P16571781984248034887.correct : P16571781984248034887.Spec := by
  intro n
  simp only [A111213, Nat.add_sub_cancel, A111213.P16571781984248034887.f1, A111213.P16571781984248034887.a, A111213.P2402949892722593442.f1, A111213.P2402949892722593442.a, A104103, A104103.P17142170085833821437.a, A117767, A117767.P658102371895706340.a, A000006, A000006.P2817507747577515147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111213

/-! ## A111213.P17763667704738254959

`p?[A096494(n+1)+1]`
-/

namespace A111213.P17763667704738254959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096494 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P17763667704738254959

namespace A111213

/-- `p?[A096494(n+1)+1]` -/
def P17763667704738254959.Spec : Prop :=
  ∀ n, P17763667704738254959.a n = A111213 (n + 1)

theorem P17763667704738254959.correct : P17763667704738254959.Spec := by
  intro n
  simp only [A111213, Nat.add_sub_cancel, A111213.P17763667704738254959.f1, A111213.P17763667704738254959.a, A111213.P2402949892722593442.f1, A111213.P2402949892722593442.a, A096494, A096494.P552534159965664402.a, A104103, A104103.P17142170085833821437.a, A000006, A000006.P2817507747577515147.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111213

/-! ## A111213.P2841016078434064612

`p?[2*A000006(n+1)+1]`
-/

namespace A111213.P2841016078434064612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P2841016078434064612

namespace A111213

/-- `p?[2*A000006(n+1)+1]` -/
def P2841016078434064612.Spec : Prop :=
  ∀ n, P2841016078434064612.a n = A111213 (n + 1)

theorem P2841016078434064612.correct : P2841016078434064612.Spec := by
  intro n
  simp only [A111213, Nat.add_sub_cancel, A111213.P2841016078434064612.f1, A111213.P2841016078434064612.a, A111213.P2402949892722593442.f1, A111213.P2402949892722593442.a, A000006, A000006.P2817507747577515147.a, A104103, A104103.P17142170085833821437.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111213

/-! ## A111213.P2402949892722593442

`p?[2*A104103(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111213

/-- `p?[2*A104103(n+1)-1]` -/
def P2402949892722593442.Spec : Prop :=
  ∀ n, P2402949892722593442.a n = A111213 (n + 1)

theorem P2402949892722593442.correct : P2402949892722593442.Spec := by
  intro n
  simp only [A111213, Nat.add_sub_cancel]

end A111213

/-! ## A111213.P15323986215127037994

`p?[2*floor(sqrt(A000040(n+1)))+1]`
-/

namespace A111213.P15323986215127037994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A000040 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P15323986215127037994

namespace A111213

/-- `p?[2*floor(sqrt(A000040(n+1)))+1]` -/
def P15323986215127037994.Spec : Prop :=
  ∀ n, P15323986215127037994.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P4556572814348015774

`p?[2*floor(sqrt(A006093(n+1)))+1]`
-/

namespace A111213.P4556572814348015774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A006093 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P4556572814348015774

namespace A111213

/-- `p?[2*floor(sqrt(A006093(n+1)))+1]` -/
def P4556572814348015774.Spec : Prop :=
  ∀ n, P4556572814348015774.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P15351536949172676385

`p?[A004442(A096494(n+1))]`
-/

namespace A111213.P15351536949172676385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A096494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P15351536949172676385

namespace A111213

/-- `p?[A004442(A096494(n+1))]` -/
def P15351536949172676385.Spec : Prop :=
  ∀ n, P15351536949172676385.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P8327101398015031517

`filter[A117767(n+1), A010051(#)]`
-/

namespace A111213.P8327101398015031517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A111213.P8327101398015031517

namespace A111213

/-- `filter[A117767(n+1), A010051(#)]` -/
def P8327101398015031517.Spec : Prop :=
  ∀ n, P8327101398015031517.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P7311719640011567313

`filter[A117767(n+1), A080339(#)]`
-/

namespace A111213.P7311719640011567313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A111213.P7311719640011567313

namespace A111213

/-- `filter[A117767(n+1), A080339(#)]` -/
def P7311719640011567313.Spec : Prop :=
  ∀ n, P7311719640011567313.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P3828062118696706963

`filter[A117767(n+1), A080545(#)]`
-/

namespace A111213.P3828062118696706963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A111213.P3828062118696706963

namespace A111213

/-- `filter[A117767(n+1), A080545(#)]` -/
def P3828062118696706963.Spec : Prop :=
  ∀ n, P3828062118696706963.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P5497306506426098841

`filter[A117767(n+1), A323152(#)]`
-/

namespace A111213.P5497306506426098841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A111213.P5497306506426098841

namespace A111213

/-- `filter[A117767(n+1), A323152(#)]` -/
def P5497306506426098841.Spec : Prop :=
  ∀ n, P5497306506426098841.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P7540951564066731241

`filter[A117767(n+1), A323153(#)]`
-/

namespace A111213.P7540951564066731241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A111213.P7540951564066731241

namespace A111213

/-- `filter[A117767(n+1), A323153(#)]` -/
def P7540951564066731241.Spec : Prop :=
  ∀ n, P7540951564066731241.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P3646845686492807830

`filter[A117767(n+1), A327861(#)]`
-/

namespace A111213.P3646845686492807830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A111213.P3646845686492807830

namespace A111213

/-- `filter[A117767(n+1), A327861(#)]` -/
def P3646845686492807830.Spec : Prop :=
  ∀ n, P3646845686492807830.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P7815256533495965580

`filter[A117767(n+1), A340371(#)]`
-/

namespace A111213.P7815256533495965580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A111213.P7815256533495965580

namespace A111213

/-- `filter[A117767(n+1), A340371(#)]` -/
def P7815256533495965580.Spec : Prop :=
  ∀ n, P7815256533495965580.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P2864191548138088466

`filter[A117767(n+1), A353670(#)]`
-/

namespace A111213.P2864191548138088466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A111213.P2864191548138088466

namespace A111213

/-- `filter[A117767(n+1), A353670(#)]` -/
def P2864191548138088466.Spec : Prop :=
  ∀ n, P2864191548138088466.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P17449826671310393603

`p?[A104103(n+1)+A000006(n+1)]`
-/

namespace A111213.P17449826671310393603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) + A000006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P17449826671310393603

namespace A111213

/-- `p?[A104103(n+1)+A000006(n+1)]` -/
def P17449826671310393603.Spec : Prop :=
  ∀ n, P17449826671310393603.a n = A111213 (n + 1)

theorem P17449826671310393603.correct : P17449826671310393603.Spec := by
  intro n
  simp only [A111213, Nat.add_sub_cancel, A111213.P17449826671310393603.f1, A111213.P17449826671310393603.a, A111213.P2402949892722593442.f1, A111213.P2402949892722593442.a, A000006, A000006.P2817507747577515147.a, A104103, A104103.P17142170085833821437.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111213

/-! ## A111213.P13308393077532793347

`p?[A001650(A000040(n+1))]`
-/

namespace A111213.P13308393077532793347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P13308393077532793347

namespace A111213

/-- `p?[A001650(A000040(n+1))]` -/
def P13308393077532793347.Spec : Prop :=
  ∀ n, P13308393077532793347.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P15212040096405126761

`p?[A001650(A008578(n+1))]`
-/

namespace A111213.P15212040096405126761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P15212040096405126761

namespace A111213

/-- `p?[A001650(A008578(n+1))]` -/
def P15212040096405126761.Spec : Prop :=
  ∀ n, P15212040096405126761.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P6112545476340624949

`p?[A001650(A008864(n+1))]`
-/

namespace A111213.P6112545476340624949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P6112545476340624949

namespace A111213

/-- `p?[A001650(A008864(n+1))]` -/
def P6112545476340624949.Spec : Prop :=
  ∀ n, P6112545476340624949.a n = A111213 (n + 1)

end A111213

/-! ## A111213.P294692482879780054

`p?[A001650(A082542(n+1))]`
-/

namespace A111213.P294692482879780054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A082542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111213.P294692482879780054

namespace A111213

/-- `p?[A001650(A082542(n+1))]` -/
def P294692482879780054.Spec : Prop :=
  ∀ n, P294692482879780054.a n = A111213 (n + 1)

end A111213

/-!
# A111215: Numbers k such that 4k + 5 is prime.

The programs for A111215, the canonical program `A111215.P14583532471026945765` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111215 has offset 1).

The definition of A111215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005098, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111215.P14583532471026945765

`A005098(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111215

/-- `A005098(n+1)-1` -/
def P14583532471026945765.Spec : Prop :=
  ∀ n, P14583532471026945765.a n = A111215 (n + 1)

theorem P14583532471026945765.correct : P14583532471026945765.Spec := by
  intro n
  simp only [A111215, Nat.add_sub_cancel]

end A111215

/-! ## A111215.P2437262647985343844

`(p?[4*n+1]-5)/4`
-/

namespace A111215.P2437262647985343844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 5 : ℚ) / 4

end

end A111215.P2437262647985343844

namespace A111215

/-- `(p?[4*n+1]-5)/4` -/
def P2437262647985343844.Spec : Prop :=
  ∀ n, P2437262647985343844.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P5960287873050195948

`(p?[4*n-7]-1)/4-1`
-/

namespace A111215.P5960287873050195948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 4 - 1

end

end A111215.P5960287873050195948

namespace A111215

/-- `(p?[4*n-7]-1)/4-1` -/
def P5960287873050195948.Spec : Prop :=
  ∀ n, P5960287873050195948.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P11687400213478017011

`(A119681(n+1)-3)/2`
-/

namespace A111215.P11687400213478017011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119681 (n + 1) - 3 : ℚ) / 2

end

end A111215.P11687400213478017011

namespace A111215

/-- `(A119681(n+1)-3)/2` -/
def P11687400213478017011.Spec : Prop :=
  ∀ n, P11687400213478017011.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P127656484462924151

`A152680(n+1)/4-1`
-/

namespace A111215.P127656484462924151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 4 - 1

end

end A111215.P127656484462924151

namespace A111215

/-- `A152680(n+1)/4-1` -/
def P127656484462924151.Spec : Prop :=
  ∀ n, P127656484462924151.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P4066408787050613865

`(A089255(n+1)-5)/2`
-/

namespace A111215.P4066408787050613865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089255 (n + 1) - 5 : ℚ) / 2

end

end A111215.P4066408787050613865

namespace A111215

/-- `(A089255(n+1)-5)/2` -/
def P4066408787050613865.Spec : Prop :=
  ∀ n, P4066408787050613865.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P16804854661516417561

`(A002144(n+1)-5)/4`
-/

namespace A111215.P16804854661516417561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) - 5 : ℚ) / 4

end

end A111215.P16804854661516417561

namespace A111215

/-- `(A002144(n+1)-5)/4` -/
def P16804854661516417561.Spec : Prop :=
  ∀ n, P16804854661516417561.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P11029374640329247444

`A118480(n+1)+A095278(n+1)`
-/

namespace A111215.P11029374640329247444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118480 (n + 1) + A095278 (n + 1)

end

end A111215.P11029374640329247444

namespace A111215

/-- `A118480(n+1)+A095278(n+1)` -/
def P11029374640329247444.Spec : Prop :=
  ∀ n, P11029374640329247444.a n = A111215 (n + 1)

end A111215

/-! ## A111215.P2629559911387450970

`A022758(n+1)-A156287(n+1)`
-/

namespace A111215.P2629559911387450970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) - A156287 (n + 1)

end

end A111215.P2629559911387450970

namespace A111215

/-- `A022758(n+1)-A156287(n+1)` -/
def P2629559911387450970.Spec : Prop :=
  ∀ n, P2629559911387450970.a n = A111215 (n + 1)

end A111215

/-! ## A111215.P18169233782548988695

`∑[A082074(n+1)]-A082074(n+1)`
-/

namespace A111215.P18169233782548988695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A082074 (n + 1)

end

end A111215.P18169233782548988695

namespace A111215

/-- `∑[A082074(n+1)]-A082074(n+1)` -/
def P18169233782548988695.Spec : Prop :=
  ∀ n, P18169233782548988695.a n = A111215 (n + 1)

end A111215

/-! ## A111215.P9011913167902751054

`A075518(A080147(n+1))-1`
-/

namespace A111215.P9011913167902751054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080147 (n + 1)).toNat - 1

end

end A111215.P9011913167902751054

namespace A111215

/-- `A075518(A080147(n+1))-1` -/
def P9011913167902751054.Spec : Prop :=
  ∀ n, P9011913167902751054.a n = A111215 (n + 1)

end A111215

/-! ## A111215.P10967125290152458731

`eq[1, A156707(2*(n+1))]`
-/

namespace A111215.P10967125290152458731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111215.P10967125290152458731

namespace A111215

/-- `eq[1, A156707(2*(n+1))]` -/
def P10967125290152458731.Spec : Prop :=
  ∀ n, (P10967125290152458731.a n : ℤ) = A111215 (n + 1)

end A111215

/-! ## A111215.P2531985576897116206

`eq[1, A101264(2*n)]-1`
-/

namespace A111215.P2531985576897116206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A111215.P2531985576897116206

namespace A111215

/-- `eq[1, A101264(2*n)]-1` -/
def P2531985576897116206.Spec : Prop :=
  ∀ n, P2531985576897116206.a n = A111215 (n + 1)

end A111215

/-! ## A111215.P6106530986249191273

`eq[1, A156707(n+2)]/2`
-/

namespace A111215.P6106530986249191273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A111215.P6106530986249191273

namespace A111215

/-- `eq[1, A156707(n+2)]/2` -/
def P6106530986249191273.Spec : Prop :=
  ∀ n, P6106530986249191273.a n = (A111215 (n + 1) : ℚ)

end A111215

/-! ## A111215.P397245094589854102

`eq[1, A001222(4*n+5)]`
-/

namespace A111215.P397245094589854102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111215.P397245094589854102

namespace A111215

/-- `eq[1, A001222(4*n+5)]` -/
def P397245094589854102.Spec : Prop :=
  ∀ n, (P397245094589854102.a n : ℤ) = A111215 (n + 1)

end A111215

/-! ## A111215.P8029529556799955521

`eq[2, A000005(4*n+5)]`
-/

namespace A111215.P8029529556799955521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111215.P8029529556799955521

namespace A111215

/-- `eq[2, A000005(4*n+5)]` -/
def P8029529556799955521.Spec : Prop :=
  ∀ n, (P8029529556799955521.a n : ℤ) = A111215 (n + 1)

end A111215

/-! ## A111215.P11371617973669183753

`lt[A001222(4*(n+1)+1), 2]`
-/

namespace A111215.P11371617973669183753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111215.P11371617973669183753

namespace A111215

/-- `lt[A001222(4*(n+1)+1), 2]` -/
def P11371617973669183753.Spec : Prop :=
  ∀ n, (P11371617973669183753.a n : ℤ) = A111215 (n + 1)

end A111215

/-! ## A111215.P14126928337111244065

`lt[A000005(4*(n+1)+1), 3]`
-/

namespace A111215.P14126928337111244065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111215.P14126928337111244065

namespace A111215

/-- `lt[A000005(4*(n+1)+1), 3]` -/
def P14126928337111244065.Spec : Prop :=
  ∀ n, (P14126928337111244065.a n : ℤ) = A111215 (n + 1)

end A111215

/-! ## A111215.P16772490619022941254

`lt[n+2, A020639(4*n+5)]`
-/

namespace A111215.P16772490619022941254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111215.P16772490619022941254

namespace A111215

/-- `lt[n+2, A020639(4*n+5)]` -/
def P16772490619022941254.Spec : Prop :=
  ∀ n, (P16772490619022941254.a n : ℤ) = A111215 (n + 1)

end A111215

/-! ## A111215.P3120192404682470503

`lt[2*n+1, A006530(4*n+5)]`
-/

namespace A111215.P3120192404682470503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111215.P3120192404682470503

namespace A111215

/-- `lt[2*n+1, A006530(4*n+5)]` -/
def P3120192404682470503.Spec : Prop :=
  ∀ n, (P3120192404682470503.a n : ℤ) = A111215 (n + 1)

end A111215

/-!
# A111216: a(n) = 31*a(n-1)-a(n-2).

The programs for A111216, the canonical program `A111216.P8661070160235105966` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111216 has offset 0).

The definition of A111216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31*a(n-1)-a(n-2)` (program `A111216.P8661070160235105966`, by `A111216.P8661070160235105966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111216.P8661070160235105966

`31*a(n-1)-a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111216

/-- `31*a(n-1)-a(n-2)` -/
def P8661070160235105966.Spec : Prop :=
  ∀ n, P8661070160235105966.a n = A111216 n

theorem P8661070160235105966.correct : P8661070160235105966.Spec := by
  intro n
  simp only [A111216]

end A111216

/-! ## A111216.P11466624152931849210

`lcm(31, a(n-1))-a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A111216.P11466624152931849210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  (Int.lcm 31 (a (n - 1)) : ℤ) - a (n - 2)

end

end A111216.P11466624152931849210

namespace A111216

/-- `lcm(31, a(n-1))-a(n-2)` -/
def P11466624152931849210.Spec : Prop :=
  ∀ n, P11466624152931849210.a n = A111216 n

end A111216

/-! ## A111216.P4927379318767243504

`Δ[A200442(n+2)]%A200442(n+1)`
-/

namespace A111216.P4927379318767243504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200442 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A200442 (n + 1))

end

end A111216.P4927379318767243504

namespace A111216

/-- `Δ[A200442(n+2)]%A200442(n+1)` -/
def P4927379318767243504.Spec : Prop :=
  ∀ n, P4927379318767243504.a n = A111216 n

end A111216

/-! ## A111216.P12902556681934810495

`Δ[(a(n-1)²-1)/a(n-2)]` with `a(0)=0, a(1)=1, a(2)=31`
-/

namespace A111216.P12902556681934810495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 31] fun n f1 =>
  (f1 (n - 1) ^ 2 - 1) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111216.P12902556681934810495

namespace A111216

/-- `Δ[(a(n-1)²-1)/a(n-2)]` -/
def P12902556681934810495.Spec : Prop :=
  ∀ n, P12902556681934810495.a n = (A111216 n : ℚ)

end A111216

/-!
# A111217: d_7(n), tau_7(n), number of ordered factorizations of n as n = rstuvwx (7-factorizations).

The programs for A111217, the canonical program `A111217.P7169302486463584487` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111217 has offset 1).

The definition of A111217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111217.P7169302486463584487

`∏{e}[n+1, C(#+6, 6)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111217

/-- `∏{e}[n+1, C(#+6, 6)]` -/
def P7169302486463584487.Spec : Prop :=
  ∀ n, (P7169302486463584487.a n : ℤ) = A111217 (n + 1)

theorem P7169302486463584487.correct : P7169302486463584487.Spec := by
  intro n
  simp only [A111217, Nat.add_sub_cancel]

end A111217

/-! ## A111217.P11791810118718855192

`∑{d}[n+1, A034695(#)]`
-/

namespace A111217.P11791810118718855192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034695 d

end

end A111217.P11791810118718855192

namespace A111217

/-- `∑{d}[n+1, A034695(#)]` -/
def P11791810118718855192.Spec : Prop :=
  ∀ n, P11791810118718855192.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P915933257474761023

`∑{d}[n+1, A007425(#)*A007426((n+1)/#)]`
-/

namespace A111217.P915933257474761023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P915933257474761023

namespace A111217

/-- `∑{d}[n+1, A007425(#)*A007426((n+1)/#)]` -/
def P915933257474761023.Spec : Prop :=
  ∀ n, P915933257474761023.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P14583999259188211804

`∑{d}[n+1, A000005(#)*A061200((n+1)/#)]`
-/

namespace A111217.P14583999259188211804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P14583999259188211804

namespace A111217

/-- `∑{d}[n+1, A000005(#)*A061200((n+1)/#)]` -/
def P14583999259188211804.Spec : Prop :=
  ∀ n, P14583999259188211804.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P2667852119612472171

`∑{d}[n+1, A007427(#)*A111219((n+1)/#)]`
-/

namespace A111217.P2667852119612472171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A111219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P2667852119612472171

namespace A111217

/-- `∑{d}[n+1, A007427(#)*A111219((n+1)/#)]` -/
def P2667852119612472171.Spec : Prop :=
  ∀ n, P2667852119612472171.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P11157975078756850057

`∑{d}[n+1, A007428(#)*A111220((n+1)/#)]`
-/

namespace A111217.P11157975078756850057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A111220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P11157975078756850057

namespace A111217

/-- `∑{d}[n+1, A007428(#)*A111220((n+1)/#)]` -/
def P11157975078756850057.Spec : Prop :=
  ∀ n, P11157975078756850057.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P6471751582921504273

`∑{d}[n+1, A008683(#)*A111218((n+1)/#)]`
-/

namespace A111217.P6471751582921504273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P6471751582921504273

namespace A111217

/-- `∑{d}[n+1, A008683(#)*A111218((n+1)/#)]` -/
def P6471751582921504273.Spec : Prop :=
  ∀ n, P6471751582921504273.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P2052266919394606464

`∑{d}[n+1, A062367(#)*A124315((n+1)/#)]`
-/

namespace A111217.P2052266919394606464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P2052266919394606464

namespace A111217

/-- `∑{d}[n+1, A062367(#)*A124315((n+1)/#)]` -/
def P2052266919394606464.Spec : Prop :=
  ∀ n, P2052266919394606464.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P13750040998644633651

`∑{d}[n+1, A111221(#)*A247343((n+1)/#)]`
-/

namespace A111217.P13750040998644633651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111221 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P13750040998644633651

namespace A111217

/-- `∑{d}[n+1, A111221(#)*A247343((n+1)/#)]` -/
def P13750040998644633651.Spec : Prop :=
  ∀ n, P13750040998644633651.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P189831929397460742

`∑{d}[n+1, A111306(#)*A341831((n+1)/#)]`
-/

namespace A111217.P189831929397460742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111306 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111217.P189831929397460742

namespace A111217

/-- `∑{d}[n+1, A111306(#)*A341831((n+1)/#)]` -/
def P189831929397460742.Spec : Prop :=
  ∀ n, P189831929397460742.a n = A111217 (n + 1)

end A111217

/-! ## A111217.P17098518807401915924

`∏{e}[(n+1)², A299338(#)]`
-/

namespace A111217.P17098518807401915924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A299338 (Nat.factorization (f1 n) p)

end

end A111217.P17098518807401915924

namespace A111217

/-- `∏{e}[(n+1)², A299338(#)]` -/
def P17098518807401915924.Spec : Prop :=
  ∀ n, P17098518807401915924.a n = A111217 (n + 1)

end A111217

/-!
# A111218: d_8(n), tau_8(n), number of ordered factorizations of n as n = rstuvwxy (8-factorizations).

The programs for A111218, the canonical program `A111218.P10004390241868070455` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111218 has offset 1).

The definition of A111218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111218.P10004390241868070455

`∏{e}[n+1, C(#+7, 7)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111218

/-- `∏{e}[n+1, C(#+7, 7)]` -/
def P10004390241868070455.Spec : Prop :=
  ∀ n, (P10004390241868070455.a n : ℤ) = A111218 (n + 1)

theorem P10004390241868070455.correct : P10004390241868070455.Spec := by
  intro n
  simp only [A111218, Nat.add_sub_cancel]

end A111218

/-! ## A111218.P15477941949537656724

`∑{d}[n+1, A111217(#)]`
-/

namespace A111218.P15477941949537656724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111217 d

end

end A111218.P15477941949537656724

namespace A111218

/-- `∑{d}[n+1, A111217(#)]` -/
def P15477941949537656724.Spec : Prop :=
  ∀ n, P15477941949537656724.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P1872572723880275264

`∏{e}[n+1, A000580(#+7)]`
-/

namespace A111218.P1872572723880275264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000580 (Nat.factorization (f1 n) p + 7)

end

end A111218.P1872572723880275264

namespace A111218

/-- `∏{e}[n+1, A000580(#+7)]` -/
def P1872572723880275264.Spec : Prop :=
  ∀ n, P1872572723880275264.a n = A111218 (n + 1)

theorem P1872572723880275264.correct : P1872572723880275264.Spec := by
  intro n
  simp only [A111218, Nat.add_sub_cancel, A111218.P1872572723880275264.f1, A111218.P1872572723880275264.a, A111218.P10004390241868070455.f1, A111218.P10004390241868070455.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111218

/-! ## A111218.P13701473057148565493

`∑{d}[n+1, A007426(#)*A007426((n+1)/#)]`
-/

namespace A111218.P13701473057148565493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A007426 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P13701473057148565493

namespace A111218

/-- `∑{d}[n+1, A007426(#)*A007426((n+1)/#)]` -/
def P13701473057148565493.Spec : Prop :=
  ∀ n, P13701473057148565493.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P13447317741355670729

`∑{d}[n+1, A000005(#)*A034695((n+1)/#)]`
-/

namespace A111218.P13447317741355670729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P13447317741355670729

namespace A111218

/-- `∑{d}[n+1, A000005(#)*A034695((n+1)/#)]` -/
def P13447317741355670729.Spec : Prop :=
  ∀ n, P13447317741355670729.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P1432161553809475848

`∑{d}[n+1, A007425(#)*A061200((n+1)/#)]`
-/

namespace A111218.P1432161553809475848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P1432161553809475848

namespace A111218

/-- `∑{d}[n+1, A007425(#)*A061200((n+1)/#)]` -/
def P1432161553809475848.Spec : Prop :=
  ∀ n, P1432161553809475848.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P15487521796138261772

`∑{d}[n+1, A007427(#)*A111220((n+1)/#)]`
-/

namespace A111218.P15487521796138261772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A111220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P15487521796138261772

namespace A111218

/-- `∑{d}[n+1, A007427(#)*A111220((n+1)/#)]` -/
def P15487521796138261772.Spec : Prop :=
  ∀ n, P15487521796138261772.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P8742230194307885489

`∑{d}[n+1, A007428(#)*A111221((n+1)/#)]`
-/

namespace A111218.P8742230194307885489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A111221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P8742230194307885489

namespace A111218

/-- `∑{d}[n+1, A007428(#)*A111221((n+1)/#)]` -/
def P8742230194307885489.Spec : Prop :=
  ∀ n, P8742230194307885489.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P4825625419307420084

`∑{d}[n+1, A008683(#)*A111219((n+1)/#)]`
-/

namespace A111218.P4825625419307420084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A111219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P4825625419307420084

namespace A111218

/-- `∑{d}[n+1, A008683(#)*A111219((n+1)/#)]` -/
def P4825625419307420084.Spec : Prop :=
  ∀ n, P4825625419307420084.a n = A111218 (n + 1)

end A111218

/-! ## A111218.P16262025836579856824

`∑{d}[n+1, A111306(#)*A247343((n+1)/#)]`
-/

namespace A111218.P16262025836579856824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111306 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111218.P16262025836579856824

namespace A111218

/-- `∑{d}[n+1, A111306(#)*A247343((n+1)/#)]` -/
def P16262025836579856824.Spec : Prop :=
  ∀ n, P16262025836579856824.a n = A111218 (n + 1)

end A111218

/-!
# A111219: d_9(n), tau_9(n), number of ordered factorizations of n as n = rstuvwxyz (9-factorizations).

The programs for A111219, the canonical program `A111219.P17723679090952265809` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111219 has offset 1).

The definition of A111219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111219.P17723679090952265809

`∏{e}[n+1, C(#+8, 8)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111219

/-- `∏{e}[n+1, C(#+8, 8)]` -/
def P17723679090952265809.Spec : Prop :=
  ∀ n, (P17723679090952265809.a n : ℤ) = A111219 (n + 1)

theorem P17723679090952265809.correct : P17723679090952265809.Spec := by
  intro n
  simp only [A111219, Nat.add_sub_cancel]

end A111219

/-! ## A111219.P1177579647844279261

`∑{d}[n+1, A111218(#)]`
-/

namespace A111219.P1177579647844279261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111218 d

end

end A111219.P1177579647844279261

namespace A111219

/-- `∑{d}[n+1, A111218(#)]` -/
def P1177579647844279261.Spec : Prop :=
  ∀ n, P1177579647844279261.a n = A111219 (n + 1)

end A111219

/-! ## A111219.P15054722350281942758

`∏{e}[n+1, A000581(#+8)]`
-/

namespace A111219.P15054722350281942758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000581 (Nat.factorization (f1 n) p + 8)

end

end A111219.P15054722350281942758

namespace A111219

/-- `∏{e}[n+1, A000581(#+8)]` -/
def P15054722350281942758.Spec : Prop :=
  ∀ n, P15054722350281942758.a n = A111219 (n + 1)

theorem P15054722350281942758.correct : P15054722350281942758.Spec := by
  intro n
  simp only [A111219, Nat.add_sub_cancel, A111219.P15054722350281942758.f1, A111219.P15054722350281942758.a, A111219.P17723679090952265809.f1, A111219.P17723679090952265809.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111219

/-! ## A111219.P13732844116390201471

`∑{d}[n+1, A007425(#)*A034695((n+1)/#)]`
-/

namespace A111219.P13732844116390201471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111219.P13732844116390201471

namespace A111219

/-- `∑{d}[n+1, A007425(#)*A034695((n+1)/#)]` -/
def P13732844116390201471.Spec : Prop :=
  ∀ n, P13732844116390201471.a n = A111219 (n + 1)

end A111219

/-! ## A111219.P14145082834904897001

`∑{d}[n+1, A007426(#)*A061200((n+1)/#)]`
-/

namespace A111219.P14145082834904897001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111219.P14145082834904897001

namespace A111219

/-- `∑{d}[n+1, A007426(#)*A061200((n+1)/#)]` -/
def P14145082834904897001.Spec : Prop :=
  ∀ n, P14145082834904897001.a n = A111219 (n + 1)

end A111219

/-! ## A111219.P13539790285934739420

`∑{d}[n+1, A000005(#)*A111217((n+1)/#)]`
-/

namespace A111219.P13539790285934739420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111219.P13539790285934739420

namespace A111219

/-- `∑{d}[n+1, A000005(#)*A111217((n+1)/#)]` -/
def P13539790285934739420.Spec : Prop :=
  ∀ n, P13539790285934739420.a n = A111219 (n + 1)

end A111219

/-! ## A111219.P9532307694282600271

`∑{d}[n+1, A007427(#)*A111221((n+1)/#)]`
-/

namespace A111219.P9532307694282600271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A111221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111219.P9532307694282600271

namespace A111219

/-- `∑{d}[n+1, A007427(#)*A111221((n+1)/#)]` -/
def P9532307694282600271.Spec : Prop :=
  ∀ n, P9532307694282600271.a n = A111219 (n + 1)

end A111219

/-! ## A111219.P270808419812391295

`∑{d}[n+1, A007428(#)*A111306((n+1)/#)]`
-/

namespace A111219.P270808419812391295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A111306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111219.P270808419812391295

namespace A111219

/-- `∑{d}[n+1, A007428(#)*A111306((n+1)/#)]` -/
def P270808419812391295.Spec : Prop :=
  ∀ n, P270808419812391295.a n = A111219 (n + 1)

end A111219

/-! ## A111219.P3596790178601164798

`∑{d}[n+1, A008683(#)*A111220((n+1)/#)]`
-/

namespace A111219.P3596790178601164798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A111220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111219.P3596790178601164798

namespace A111219

/-- `∑{d}[n+1, A008683(#)*A111220((n+1)/#)]` -/
def P3596790178601164798.Spec : Prop :=
  ∀ n, P3596790178601164798.a n = A111219 (n + 1)

end A111219

/-!
# A111220: d_10(n), tau_10(n), number of ordered factorizations of n as n = rstuvwxyza (10-factorizations).

The programs for A111220, the canonical program `A111220.P18300405236529112523` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111220 has offset 1).

The definition of A111220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111220.P18300405236529112523

`∏{e}[n+1, C(#+9, 9)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111220

/-- `∏{e}[n+1, C(#+9, 9)]` -/
def P18300405236529112523.Spec : Prop :=
  ∀ n, (P18300405236529112523.a n : ℤ) = A111220 (n + 1)

theorem P18300405236529112523.correct : P18300405236529112523.Spec := by
  intro n
  simp only [A111220, Nat.add_sub_cancel]

end A111220

/-! ## A111220.P4470804187450428712

`∑{d}[n+1, A111219(#)]`
-/

namespace A111220.P4470804187450428712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111219 d

end

end A111220.P4470804187450428712

namespace A111220

/-- `∑{d}[n+1, A111219(#)]` -/
def P4470804187450428712.Spec : Prop :=
  ∀ n, P4470804187450428712.a n = A111220 (n + 1)

end A111220

/-! ## A111220.P11094333107798512780

`∏{e}[n+1, A000582(#+9)]`
-/

namespace A111220.P11094333107798512780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000582 (Nat.factorization (f1 n) p + 9)

end

end A111220.P11094333107798512780

namespace A111220

/-- `∏{e}[n+1, A000582(#+9)]` -/
def P11094333107798512780.Spec : Prop :=
  ∀ n, P11094333107798512780.a n = A111220 (n + 1)

theorem P11094333107798512780.correct : P11094333107798512780.Spec := by
  intro n
  simp only [A111220, Nat.add_sub_cancel, A111220.P11094333107798512780.f1, A111220.P11094333107798512780.a, A111220.P18300405236529112523.f1, A111220.P18300405236529112523.a, A000582, A000582.P5339973766427948568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111220

/-! ## A111220.P8426473710212833904

`∑{d}[n+1, A007426(#)*A034695((n+1)/#)]`
-/

namespace A111220.P8426473710212833904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A034695 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111220.P8426473710212833904

namespace A111220

/-- `∑{d}[n+1, A007426(#)*A034695((n+1)/#)]` -/
def P8426473710212833904.Spec : Prop :=
  ∀ n, P8426473710212833904.a n = A111220 (n + 1)

end A111220

/-! ## A111220.P88114772917609676

`∑{d}[n+1, A000005(#)*A111218((n+1)/#)]`
-/

namespace A111220.P88114772917609676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111220.P88114772917609676

namespace A111220

/-- `∑{d}[n+1, A000005(#)*A111218((n+1)/#)]` -/
def P88114772917609676.Spec : Prop :=
  ∀ n, P88114772917609676.a n = A111220 (n + 1)

end A111220

/-! ## A111220.P9451675566431485558

`∑{d}[n+1, A007425(#)*A111217((n+1)/#)]`
-/

namespace A111220.P9451675566431485558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111220.P9451675566431485558

namespace A111220

/-- `∑{d}[n+1, A007425(#)*A111217((n+1)/#)]` -/
def P9451675566431485558.Spec : Prop :=
  ∀ n, P9451675566431485558.a n = A111220 (n + 1)

end A111220

/-! ## A111220.P8513350966165727140

`∑{d}[n+1, A007427(#)*A111306((n+1)/#)]`
-/

namespace A111220.P8513350966165727140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A111306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111220.P8513350966165727140

namespace A111220

/-- `∑{d}[n+1, A007427(#)*A111306((n+1)/#)]` -/
def P8513350966165727140.Spec : Prop :=
  ∀ n, P8513350966165727140.a n = A111220 (n + 1)

end A111220

/-! ## A111220.P13799873333760090798

`∑{d}[n+1, A008683(#)*A111221((n+1)/#)]`
-/

namespace A111220.P13799873333760090798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A111221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111220.P13799873333760090798

namespace A111220

/-- `∑{d}[n+1, A008683(#)*A111221((n+1)/#)]` -/
def P13799873333760090798.Spec : Prop :=
  ∀ n, P13799873333760090798.a n = A111220 (n + 1)

end A111220

/-! ## A111220.P11073252335058916697

`∑{d}[n+1, A061200(#)*A061200((n+1)/#)]`
-/

namespace A111220.P11073252335058916697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111220.P11073252335058916697

namespace A111220

/-- `∑{d}[n+1, A061200(#)*A061200((n+1)/#)]` -/
def P11073252335058916697.Spec : Prop :=
  ∀ n, P11073252335058916697.a n = A111220 (n + 1)

end A111220

/-!
# A111221: d_11(n), tau_11(n), number of ordered factorizations of n as n = rstuvwxyzab (11-factorizations).

The programs for A111221, the canonical program `A111221.P6485180023910253439` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111221 has offset 1).

The definition of A111221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111221.P6485180023910253439

`∏{e}[n+1, C(#+10, 10)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111221

/-- `∏{e}[n+1, C(#+10, 10)]` -/
def P6485180023910253439.Spec : Prop :=
  ∀ n, (P6485180023910253439.a n : ℤ) = A111221 (n + 1)

theorem P6485180023910253439.correct : P6485180023910253439.Spec := by
  intro n
  simp only [A111221, Nat.add_sub_cancel]

end A111221

/-! ## A111221.P15245731202474492587

`∑{d}[n+1, A111220(#)]`
-/

namespace A111221.P15245731202474492587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111220 d

end

end A111221.P15245731202474492587

namespace A111221

/-- `∑{d}[n+1, A111220(#)]` -/
def P15245731202474492587.Spec : Prop :=
  ∀ n, P15245731202474492587.a n = A111221 (n + 1)

end A111221

/-! ## A111221.P3332193313829516397

`∏{e}[n+1, A001287(#)]`
-/

namespace A111221.P3332193313829516397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001287 (Nat.factorization (f1 n) p + 10)

end

end A111221.P3332193313829516397

namespace A111221

/-- `∏{e}[n+1, A001287(#)]` -/
def P3332193313829516397.Spec : Prop :=
  ∀ n, P3332193313829516397.a n = A111221 (n + 1)

theorem P3332193313829516397.correct : P3332193313829516397.Spec := by
  intro n
  simp only [A111221, Nat.add_sub_cancel, A111221.P3332193313829516397.f1, A111221.P3332193313829516397.a, A111221.P6485180023910253439.f1, A111221.P6485180023910253439.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111221

/-! ## A111221.P4381045126165413024

`∑{d}[n+1, A034695(#)*A061200((n+1)/#)]`
-/

namespace A111221.P4381045126165413024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034695 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111221.P4381045126165413024

namespace A111221

/-- `∑{d}[n+1, A034695(#)*A061200((n+1)/#)]` -/
def P4381045126165413024.Spec : Prop :=
  ∀ n, P4381045126165413024.a n = A111221 (n + 1)

end A111221

/-! ## A111221.P15349890468753580606

`∑{d}[n+1, A000005(#)*A111219((n+1)/#)]`
-/

namespace A111221.P15349890468753580606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A111219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111221.P15349890468753580606

namespace A111221

/-- `∑{d}[n+1, A000005(#)*A111219((n+1)/#)]` -/
def P15349890468753580606.Spec : Prop :=
  ∀ n, P15349890468753580606.a n = A111221 (n + 1)

end A111221

/-! ## A111221.P4409988864085274747

`∑{d}[n+1, A007425(#)*A111218((n+1)/#)]`
-/

namespace A111221.P4409988864085274747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A111218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111221.P4409988864085274747

namespace A111221

/-- `∑{d}[n+1, A007425(#)*A111218((n+1)/#)]` -/
def P4409988864085274747.Spec : Prop :=
  ∀ n, P4409988864085274747.a n = A111221 (n + 1)

end A111221

/-! ## A111221.P7073751460385062521

`∑{d}[n+1, A007426(#)*A111217((n+1)/#)]`
-/

namespace A111221.P7073751460385062521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A111217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111221.P7073751460385062521

namespace A111221

/-- `∑{d}[n+1, A007426(#)*A111217((n+1)/#)]` -/
def P7073751460385062521.Spec : Prop :=
  ∀ n, P7073751460385062521.a n = A111221 (n + 1)

end A111221

/-! ## A111221.P119732895048459087

`∑{d}[n+1, A008683(#)*A111306((n+1)/#)]`
-/

namespace A111221.P119732895048459087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A111306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111221.P119732895048459087

namespace A111221

/-- `∑{d}[n+1, A008683(#)*A111306((n+1)/#)]` -/
def P119732895048459087.Spec : Prop :=
  ∀ n, P119732895048459087.a n = A111221 (n + 1)

end A111221

/-!
# A111222: Integers that can be expressed as the sum of 4 factorials.

The programs for A111222, there is no canonical definition to state claims against.
-/

/-! ## A111222.P17784971429143050467

`A277011(eq[7, a(and(n, n-1))+1])` with `a(0)=3`
-/

namespace A111222.P17784971429143050467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111222.P17784971429143050467

/-! ## A111222.P4846103473177458078

`A277011(A014312(n+1))`
-/

namespace A111222.P4846103473177458078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A014312 (n + 1)).toNat

end

end A111222.P4846103473177458078

/-! ## A111222.P7842907528511747752

`A277011(eq[4, A000120(n)])`
-/

namespace A111222.P7842907528511747752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111222.P7842907528511747752

/-! ## A111222.P5596320273722068770

`A277011(eq[7, A088512(n)])`
-/

namespace A111222.P5596320273722068770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111222.P5596320273722068770

/-! ## A111222.P10454972478419080223

`A277011(eq[16, A001316(n)])`
-/

namespace A111222.P10454972478419080223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111222.P10454972478419080223

/-!
# A111223: Numbers n such that 5*n + 2 is prime.

The programs for A111223, the canonical program `A111223.P4485146468064268820` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111223 has offset 1).

The definition of A111223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111223.P3472573832472236165

`(p?[5*n+2]-2)/5`
-/

namespace A111223.P3472573832472236165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2 : ℚ) / 5

end

end A111223.P3472573832472236165

namespace A111223

/-- `(p?[5*n+2]-2)/5` -/
def P3472573832472236165.Spec : Prop :=
  ∀ n, P3472573832472236165.a n = (A111223 (n + 1) : ℚ)

end A111223

/-! ## A111223.P3653055991057632019

`A024895(n+1)-1`
-/

namespace A111223.P3653055991057632019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

end

end A111223.P3653055991057632019

namespace A111223

/-- `A024895(n+1)-1` -/
def P3653055991057632019.Spec : Prop :=
  ∀ n, P3653055991057632019.a n = A111223 (n + 1)

theorem P3653055991057632019.correct : P3653055991057632019.Spec := by
  intro n
  simp only [A111223, Nat.add_sub_cancel, A111223.P3653055991057632019.a, A111223.P4485146468064268820.a, A024895, A024895.P17027813078874753076.a, A045380, A045380.P13557672855318644692.f1, A045380.P13557672855318644692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111223

/-! ## A111223.P4485146468064268820

`floor(A045380(n+1)/5)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111223

/-- `floor(A045380(n+1)/5)` -/
def P4485146468064268820.Spec : Prop :=
  ∀ n, P4485146468064268820.a n = A111223 (n + 1)

theorem P4485146468064268820.correct : P4485146468064268820.Spec := by
  intro n
  simp only [A111223, Nat.add_sub_cancel]

end A111223

/-! ## A111223.P10871581406602288933

`eq[1, A001222(5*n+2)]`
-/

namespace A111223.P10871581406602288933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111223.P10871581406602288933

namespace A111223

/-- `eq[1, A001222(5*n+2)]` -/
def P10871581406602288933.Spec : Prop :=
  ∀ n, (P10871581406602288933.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P14535436561477789267

`eq[2, A000005(5*n+2)]`
-/

namespace A111223.P14535436561477789267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111223.P14535436561477789267

namespace A111223

/-- `eq[2, A000005(5*n+2)]` -/
def P14535436561477789267.Spec : Prop :=
  ∀ n, (P14535436561477789267.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P2604390779142348700

`lt[n, A020639(5*n+2)]`
-/

namespace A111223.P2604390779142348700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111223.P2604390779142348700

namespace A111223

/-- `lt[n, A020639(5*n+2)]` -/
def P2604390779142348700.Spec : Prop :=
  ∀ n, (P2604390779142348700.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P2820257412477440483

`lt[A001222(5*(n+1)-3), 2]`
-/

namespace A111223.P2820257412477440483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 1) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111223.P2820257412477440483

namespace A111223

/-- `lt[A001222(5*(n+1)-3), 2]` -/
def P2820257412477440483.Spec : Prop :=
  ∀ n, (P2820257412477440483.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P1219975440671475279

`lt[A000005(5*(n+1)-3), 3]`
-/

namespace A111223.P1219975440671475279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111223.P1219975440671475279

namespace A111223

/-- `lt[A000005(5*(n+1)-3), 3]` -/
def P1219975440671475279.Spec : Prop :=
  ∀ n, (P1219975440671475279.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P9074522369815006088

`A004483(A024895(n+1))`
-/

namespace A111223.P9074522369815006088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A024895 (n + 1)).toNat

end

end A111223.P9074522369815006088

namespace A111223

/-- `A004483(A024895(n+1))` -/
def P9074522369815006088.Spec : Prop :=
  ∀ n, P9074522369815006088.a n = A111223 (n + 1)

end A111223

/-! ## A111223.P5815821462162294307

`A023444(A024895(n+1)+1)`
-/

namespace A111223.P5815821462162294307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A024895 (n + 1) + 1).toNat

end

end A111223.P5815821462162294307

namespace A111223

/-- `A023444(A024895(n+1)+1)` -/
def P5815821462162294307.Spec : Prop :=
  ∀ n, P5815821462162294307.a n = A111223 (n + 1)

end A111223

/-! ## A111223.P16704636755518434176

`eq[A340453(n), A364094(n+1)]`
-/

namespace A111223.P16704636755518434176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111223.P16704636755518434176

namespace A111223

/-- `eq[A340453(n), A364094(n+1)]` -/
def P16704636755518434176.Spec : Prop :=
  ∀ n, (P16704636755518434176.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P17509982481553940795

`eq[A340453(n), A364098(n+1)]`
-/

namespace A111223.P17509982481553940795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111223.P17509982481553940795

namespace A111223

/-- `eq[A340453(n), A364098(n+1)]` -/
def P17509982481553940795.Spec : Prop :=
  ∀ n, (P17509982481553940795.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P184086449241075954

`lt[A180964(n), A006530(A016873(n))]`
-/

namespace A111223.P184086449241075954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016873 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111223.P184086449241075954

namespace A111223

/-- `lt[A180964(n), A006530(A016873(n))]` -/
def P184086449241075954.Spec : Prop :=
  ∀ n, (P184086449241075954.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P12778243485822450632

`eq[1, A359233(2*n+1)]`
-/

namespace A111223.P12778243485822450632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359233 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111223.P12778243485822450632

namespace A111223

/-- `eq[1, A359233(2*n+1)]` -/
def P12778243485822450632.Spec : Prop :=
  ∀ n, (P12778243485822450632.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P17908516506668367858

`eq[1, A364092(2*n+1)]`
-/

namespace A111223.P17908516506668367858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364092 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111223.P17908516506668367858

namespace A111223

/-- `eq[1, A364092(2*n+1)]` -/
def P17908516506668367858.Spec : Prop :=
  ∀ n, (P17908516506668367858.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P17297130946635487127

`eq[1, A364096(2*n+1)]`
-/

namespace A111223.P17297130946635487127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364096 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111223.P17297130946635487127

namespace A111223

/-- `eq[1, A364096(2*n+1)]` -/
def P17297130946635487127.Spec : Prop :=
  ∀ n, (P17297130946635487127.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P14687930642223870650

`eq[2*n+1, A364104(2*n+1)]`
-/

namespace A111223.P14687930642223870650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364104 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111223.P14687930642223870650

namespace A111223

/-- `eq[2*n+1, A364104(2*n+1)]` -/
def P14687930642223870650.Spec : Prop :=
  ∀ n, (P14687930642223870650.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P2147986147370160942

`A046667(2*A024895(n+1))`
-/

namespace A111223.P2147986147370160942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A024895 (n + 1)).toNat

end

end A111223.P2147986147370160942

namespace A111223

/-- `A046667(2*A024895(n+1))` -/
def P2147986147370160942.Spec : Prop :=
  ∀ n, P2147986147370160942.a n = A111223 (n + 1)

end A111223

/-! ## A111223.P9763874555916376396

`eq[A239614(n+1), A276680(n+1)]`
-/

namespace A111223.P9763874555916376396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111223.P9763874555916376396

namespace A111223

/-- `eq[A239614(n+1), A276680(n+1)]` -/
def P9763874555916376396.Spec : Prop :=
  ∀ n, (P9763874555916376396.a n : ℤ) = A111223 (n + 1)

end A111223

/-! ## A111223.P9278505458717162655

`lt[n, A014963(5*n+2)]`
-/

namespace A111223.P9278505458717162655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111223.P9278505458717162655

namespace A111223

/-- `lt[n, A014963(5*n+2)]` -/
def P9278505458717162655.Spec : Prop :=
  ∀ n, (P9278505458717162655.a n : ℤ) = A111223 (n + 1)

end A111223

/-!
# A111224: Numbers n such that 5*n + 7 is prime.

The programs for A111224, the canonical program `A111224.P3130398945095072566` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111224 has offset 1).

The definition of A111224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111224.P5772466060800204958

`(p?[5*n+7]-7)/5`
-/

namespace A111224.P5772466060800204958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 7 : ℚ) / 5

end

end A111224.P5772466060800204958

namespace A111224

/-- `(p?[5*n+7]-7)/5` -/
def P5772466060800204958.Spec : Prop :=
  ∀ n, P5772466060800204958.a n = (A111224 (n + 1) : ℚ)

end A111224

/-! ## A111224.P3130398945095072566

`2*A102342(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111224

/-- `2*A102342(n+1)` -/
def P3130398945095072566.Spec : Prop :=
  ∀ n, P3130398945095072566.a n = A111224 (n + 1)

theorem P3130398945095072566.correct : P3130398945095072566.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel]

end A111224

/-! ## A111224.P13946320478318013729

`2*(A024914(n+1)-1)`
-/

namespace A111224.P13946320478318013729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024914 (n + 1) - 1)

end

end A111224.P13946320478318013729

namespace A111224

/-- `2*(A024914(n+1)-1)` -/
def P13946320478318013729.Spec : Prop :=
  ∀ n, P13946320478318013729.a n = A111224 (n + 1)

theorem P13946320478318013729.correct : P13946320478318013729.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel, A111224.P13946320478318013729.a, A111224.P3130398945095072566.a, A024914, A024914.P2903943263207869472.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111224

/-! ## A111224.P9678475866173237849

`(A030432(n+1)-7)/5`
-/

namespace A111224.P9678475866173237849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030432 (n + 1) - 7 : ℚ) / 5

end

end A111224.P9678475866173237849

namespace A111224

/-- `(A030432(n+1)-7)/5` -/
def P9678475866173237849.Spec : Prop :=
  ∀ n, P9678475866173237849.a n = (A111224 (n + 1) : ℚ)

theorem P9678475866173237849.correct : P9678475866173237849.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel, A111224.P9678475866173237849.a, A111224.P3130398945095072566.a, A030432, A030432.P3543089398304254842.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111224

/-! ## A111224.P15478430302075723805

`2*(A024912(n+1)-A139368(n+1))`
-/

namespace A111224.P15478430302075723805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024912 (n + 1) - A139368 (n + 1))

end

end A111224.P15478430302075723805

namespace A111224

/-- `2*(A024912(n+1)-A139368(n+1))` -/
def P15478430302075723805.Spec : Prop :=
  ∀ n, P15478430302075723805.a n = A111224 (n + 1)

theorem P15478430302075723805.correct : P15478430302075723805.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel, A111224.P15478430302075723805.a, A111224.P3130398945095072566.a, A024912, A024912.P17686755528931629700.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A139368, A139368.P4863807749277017642.a, A081759, A081759.P335554766721588986.a, A024894, A024894.P2872051670384874786.f1, A024894.P2872051670384874786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111224

/-! ## A111224.P7312539157697576897

`2*(A102700(n+1)-A139367(n+1))`
-/

namespace A111224.P7312539157697576897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102700 (n + 1) - A139367 (n + 1))

end

end A111224.P7312539157697576897

namespace A111224

/-- `2*(A102700(n+1)-A139367(n+1))` -/
def P7312539157697576897.Spec : Prop :=
  ∀ n, P7312539157697576897.a n = A111224 (n + 1)

theorem P7312539157697576897.correct : P7312539157697576897.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel, A111224.P7312539157697576897.a, A111224.P3130398945095072566.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A102700, A102700.P10486691176846618732.a, A139367, A139367.P12848330086499471846.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111224

/-! ## A111224.P15185964080946828707

`A024912(n+1)+A102342(n+1)-A139368(n+1)`
-/

namespace A111224.P15185964080946828707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) + (A102342 (n + 1) - A139368 (n + 1))

end

end A111224.P15185964080946828707

namespace A111224

/-- `A024912(n+1)+A102342(n+1)-A139368(n+1)` -/
def P15185964080946828707.Spec : Prop :=
  ∀ n, P15185964080946828707.a n = A111224 (n + 1)

theorem P15185964080946828707.correct : P15185964080946828707.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel, A111224.P15185964080946828707.a, A111224.P3130398945095072566.a, A024912, A024912.P17686755528931629700.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A139368, A139368.P4863807749277017642.a, A081759, A081759.P335554766721588986.a, A024894, A024894.P2872051670384874786.f1, A024894.P2872051670384874786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111224

/-! ## A111224.P10314842805821418759

`A102342(n+1)+A102700(n+1)-A139367(n+1)`
-/

namespace A111224.P10314842805821418759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1) + (A102700 (n + 1) - A139367 (n + 1))

end

end A111224.P10314842805821418759

namespace A111224

/-- `A102342(n+1)+A102700(n+1)-A139367(n+1)` -/
def P10314842805821418759.Spec : Prop :=
  ∀ n, P10314842805821418759.a n = A111224 (n + 1)

theorem P10314842805821418759.correct : P10314842805821418759.Spec := by
  intro n
  simp only [A111224, Nat.add_sub_cancel, A111224.P10314842805821418759.a, A111224.P3130398945095072566.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A102700, A102700.P10486691176846618732.a, A139367, A139367.P12848330086499471846.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111224

/-! ## A111224.P9913447429632200932

`A111223(n+2)-1`
-/

namespace A111224.P9913447429632200932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 2) - 1

end

end A111224.P9913447429632200932

namespace A111224

/-- `A111223(n+2)-1` -/
def P9913447429632200932.Spec : Prop :=
  ∀ n, P9913447429632200932.a n = A111224 (n + 1)

end A111224

/-! ## A111224.P17798768983643268686

`A024895(n+2)-2`
-/

namespace A111224.P17798768983643268686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 2) - 2

end

end A111224.P17798768983643268686

namespace A111224

/-- `A024895(n+2)-2` -/
def P17798768983643268686.Spec : Prop :=
  ∀ n, P17798768983643268686.a n = A111224 (n + 1)

end A111224

/-! ## A111224.P6355820486726986303

`2*(A185322(A049509(n+1))-1)`
-/

namespace A111224.P6355820486726986303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A185322 (A049509 (n + 1)).toNat - 1)

end

end A111224.P6355820486726986303

namespace A111224

/-- `2*(A185322(A049509(n+1))-1)` -/
def P6355820486726986303.Spec : Prop :=
  ∀ n, P6355820486726986303.a n = A111224 (n + 1)

end A111224

/-! ## A111224.P10895411578282532430

`eq[1, A001222(5*n+7)]`
-/

namespace A111224.P10895411578282532430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111224.P10895411578282532430

namespace A111224

/-- `eq[1, A001222(5*n+7)]` -/
def P10895411578282532430.Spec : Prop :=
  ∀ n, (P10895411578282532430.a n : ℤ) = A111224 (n + 1)

end A111224

/-! ## A111224.P14327921379913778583

`eq[2, A000005(5*n+7)]`
-/

namespace A111224.P14327921379913778583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111224.P14327921379913778583

namespace A111224

/-- `eq[2, A000005(5*n+7)]` -/
def P14327921379913778583.Spec : Prop :=
  ∀ n, (P14327921379913778583.a n : ℤ) = A111224 (n + 1)

end A111224

/-! ## A111224.P16327758527990773276

`lt[A001222(5*(n+2)-3), 2]`
-/

namespace A111224.P16327758527990773276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 2) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111224.P16327758527990773276

namespace A111224

/-- `lt[A001222(5*(n+2)-3), 2]` -/
def P16327758527990773276.Spec : Prop :=
  ∀ n, (P16327758527990773276.a n : ℤ) = A111224 (n + 1)

end A111224

/-! ## A111224.P4640522593922907692

`lt[A000005(5*(n+2)-3), 3]`
-/

namespace A111224.P4640522593922907692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 2) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111224.P4640522593922907692

namespace A111224

/-- `lt[A000005(5*(n+2)-3), 3]` -/
def P4640522593922907692.Spec : Prop :=
  ∀ n, (P4640522593922907692.a n : ℤ) = A111224 (n + 1)

end A111224

/-! ## A111224.P13773892632137589204

`lt[n+1, A020639(5*n+7)]`
-/

namespace A111224.P13773892632137589204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111224.P13773892632137589204

namespace A111224

/-- `lt[n+1, A020639(5*n+7)]` -/
def P13773892632137589204.Spec : Prop :=
  ∀ n, (P13773892632137589204.a n : ℤ) = A111224 (n + 1)

end A111224

/-! ## A111224.P9403578284758212997

`lt[4*n, A006530(5*n+7)]`
-/

namespace A111224.P9403578284758212997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111224.P9403578284758212997

namespace A111224

/-- `lt[4*n, A006530(5*n+7)]` -/
def P9403578284758212997.Spec : Prop :=
  ∀ n, (P9403578284758212997.a n : ℤ) = A111224 (n + 1)

end A111224

/-! ## A111224.P8033724952004035149

`A047244(A024914(n+1))`
-/

namespace A111224.P8033724952004035149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (A024914 (n + 1)).toNat

end

end A111224.P8033724952004035149

namespace A111224

/-- `A047244(A024914(n+1))` -/
def P8033724952004035149.Spec : Prop :=
  ∀ n, P8033724952004035149.a n = A111224 (n + 1)

end A111224

/-! ## A111224.P6188559894711821017

`A005843(A102342(n+1))`
-/

namespace A111224.P6188559894711821017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A102342 (n + 1)).toNat

end

end A111224.P6188559894711821017

namespace A111224

/-- `A005843(A102342(n+1))` -/
def P6188559894711821017.Spec : Prop :=
  ∀ n, P6188559894711821017.a n = A111224 (n + 1)

end A111224

/-! ## A111224.P15469890807835640828

`2*eq[2, A000005(A017353(n))]`
-/

namespace A111224.P15469890807835640828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111224.P15469890807835640828

namespace A111224

/-- `2*eq[2, A000005(A017353(n))]` -/
def P15469890807835640828.Spec : Prop :=
  ∀ n, (P15469890807835640828.a n : ℤ) = A111224 (n + 1)

end A111224

/-!
# A111225: Numbers n such that 5*n + 8 is prime.

The programs for A111225, the canonical program `A111225.P11920097496532907882` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111225 has offset 1).

The definition of A111225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111225.P2170720836290522548

`2*A126332(n+1)+1`
-/

namespace A111225.P2170720836290522548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126332 (n + 1) + 1

end

end A111225.P2170720836290522548

namespace A111225

/-- `2*A126332(n+1)+1` -/
def P2170720836290522548.Spec : Prop :=
  ∀ n, P2170720836290522548.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P11920097496532907882

`A087505(n+2)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111225

/-- `A087505(n+2)-1` -/
def P11920097496532907882.Spec : Prop :=
  ∀ n, P11920097496532907882.a n = A111225 (n + 1)

theorem P11920097496532907882.correct : P11920097496532907882.Spec := by
  intro n
  simp only [A111225, Nat.add_sub_cancel]

end A111225

/-! ## A111225.P9706955281050669346

`A024896(n+2)-2`
-/

namespace A111225.P9706955281050669346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 2) - 2

end

end A111225.P9706955281050669346

namespace A111225

/-- `A024896(n+2)-2` -/
def P9706955281050669346.Spec : Prop :=
  ∀ n, P9706955281050669346.a n = A111225 (n + 1)

theorem P9706955281050669346.correct : P9706955281050669346.Spec := by
  intro n
  simp only [A111225, Nat.add_sub_cancel, A111225.P9706955281050669346.a, A111225.P11920097496532907882.a, A024896, A024896.P16795519031503293182.f1, A024896.P16795519031503293182.a, A087505, A087505.P2303323204147198729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111225

/-! ## A111225.P8360542044279928484

`A107304(n+2)-3`
-/

namespace A111225.P8360542044279928484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107304 (n + 2) - 3

end

end A111225.P8360542044279928484

namespace A111225

/-- `A107304(n+2)-3` -/
def P8360542044279928484.Spec : Prop :=
  ∀ n, P8360542044279928484.a n = A111225 (n + 1)

theorem P8360542044279928484.correct : P8360542044279928484.Spec := by
  intro n
  simp only [A111225, Nat.add_sub_cancel, A111225.P8360542044279928484.a, A111225.P11920097496532907882.a, A087505, A087505.P2303323204147198729.a, A107304, A107304.P8298507591522945342.a, A024896, A024896.P16795519031503293182.f1, A024896.P16795519031503293182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111225

/-! ## A111225.P10938224507050402225

`2*A102338(n+2)-1`
-/

namespace A111225.P10938224507050402225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102338 (n + 2) - 1

end

end A111225.P10938224507050402225

namespace A111225

/-- `2*A102338(n+2)-1` -/
def P10938224507050402225.Spec : Prop :=
  ∀ n, P10938224507050402225.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P4137971829509598862

`2*A024913(n+2)-3`
-/

namespace A111225.P4137971829509598862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024913 (n + 2) - 3

end

end A111225.P4137971829509598862

namespace A111225

/-- `2*A024913(n+2)-3` -/
def P4137971829509598862.Spec : Prop :=
  ∀ n, P4137971829509598862.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P8017891173009001288

`A126332(n+1)+A102338(n+2)`
-/

namespace A111225.P8017891173009001288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126332 (n + 1) + A102338 (n + 2)

end

end A111225.P8017891173009001288

namespace A111225

/-- `A126332(n+1)+A102338(n+2)` -/
def P8017891173009001288.Spec : Prop :=
  ∀ n, P8017891173009001288.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P14190991281848338310

`A024913(n+2)+A102338(n+2)-2`
-/

namespace A111225.P14190991281848338310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 2) + (A102338 (n + 2) - 2)

end

end A111225.P14190991281848338310

namespace A111225

/-- `A024913(n+2)+A102338(n+2)-2` -/
def P14190991281848338310.Spec : Prop :=
  ∀ n, P14190991281848338310.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P4816482121402868844

`A004273(A102338(n+2))`
-/

namespace A111225.P4816482121402868844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102338 (n + 2)).toNat

end

end A111225.P4816482121402868844

namespace A111225

/-- `A004273(A102338(n+2))` -/
def P4816482121402868844.Spec : Prop :=
  ∀ n, P4816482121402868844.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P4417672287525880204

`A004273(A024913(n+2)-1)`
-/

namespace A111225.P4417672287525880204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024913 (n + 2) - 1).toNat

end

end A111225.P4417672287525880204

namespace A111225

/-- `A004273(A024913(n+2)-1)` -/
def P4417672287525880204.Spec : Prop :=
  ∀ n, P4417672287525880204.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P13886078475967316202

`eq[1, A001222(5*n+8)]`
-/

namespace A111225.P13886078475967316202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111225.P13886078475967316202

namespace A111225

/-- `eq[1, A001222(5*n+8)]` -/
def P13886078475967316202.Spec : Prop :=
  ∀ n, (P13886078475967316202.a n : ℤ) = A111225 (n + 1)

end A111225

/-! ## A111225.P18074134678970625675

`eq[2, A000005(5*n+8)]`
-/

namespace A111225.P18074134678970625675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111225.P18074134678970625675

namespace A111225

/-- `eq[2, A000005(5*n+8)]` -/
def P18074134678970625675.Spec : Prop :=
  ∀ n, (P18074134678970625675.a n : ℤ) = A111225 (n + 1)

end A111225

/-! ## A111225.P12018801429922924869

`lt[A001222(5*(n+2)-2), 2]`
-/

namespace A111225.P12018801429922924869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 2) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111225.P12018801429922924869

namespace A111225

/-- `lt[A001222(5*(n+2)-2), 2]` -/
def P12018801429922924869.Spec : Prop :=
  ∀ n, (P12018801429922924869.a n : ℤ) = A111225 (n + 1)

end A111225

/-! ## A111225.P10944952119625090686

`lt[A000005(5*(n+2)-2), 3]`
-/

namespace A111225.P10944952119625090686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 2) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111225.P10944952119625090686

namespace A111225

/-- `lt[A000005(5*(n+2)-2), 3]` -/
def P10944952119625090686.Spec : Prop :=
  ∀ n, (P10944952119625090686.a n : ℤ) = A111225 (n + 1)

end A111225

/-! ## A111225.P411603629816757857

`lt[n+2, A020639(5*n+8)]`
-/

namespace A111225.P411603629816757857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111225.P411603629816757857

namespace A111225

/-- `lt[n+2, A020639(5*n+8)]` -/
def P411603629816757857.Spec : Prop :=
  ∀ n, (P411603629816757857.a n : ℤ) = A111225 (n + 1)

end A111225

/-! ## A111225.P2254400185099186703

`A047242(A024913(n+2))`
-/

namespace A111225.P2254400185099186703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A024913 (n + 2)).toNat

end

end A111225.P2254400185099186703

namespace A111225

/-- `A047242(A024913(n+2))` -/
def P2254400185099186703.Spec : Prop :=
  ∀ n, P2254400185099186703.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P18011799996895242216

`lt[A033676(A000005(2*(n+1)+3*(n+2))), 2]`
-/

namespace A111225.P18011799996895242216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A000005 (2 * (n + 1) + 3 * (n + 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111225.P18011799996895242216

namespace A111225

/-- `lt[A033676(A000005(2*(n+1)+3*(n+2))), 2]` -/
def P18011799996895242216.Spec : Prop :=
  ∀ n, (P18011799996895242216.a n : ℤ) = A111225 (n + 1)

end A111225

/-! ## A111225.P7371982038243661846

`A023444(A024896(n+2))`
-/

namespace A111225.P7371982038243661846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A024896 (n + 2)).toNat

end

end A111225.P7371982038243661846

namespace A111225

/-- `A023444(A024896(n+2))` -/
def P7371982038243661846.Spec : Prop :=
  ∀ n, P7371982038243661846.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P4849787584772947810

`A004483(A087505(n+2))`
-/

namespace A111225.P4849787584772947810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A087505 (n + 2)).toNat

end

end A111225.P4849787584772947810

namespace A111225

/-- `A004483(A087505(n+2))` -/
def P4849787584772947810.Spec : Prop :=
  ∀ n, P4849787584772947810.a n = A111225 (n + 1)

end A111225

/-! ## A111225.P10628094336600938023

`A004483(2*A102338(n+2))`
-/

namespace A111225.P10628094336600938023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (2 * A102338 (n + 2)).toNat

end

end A111225.P10628094336600938023

namespace A111225

/-- `A004483(2*A102338(n+2))` -/
def P10628094336600938023.Spec : Prop :=
  ∀ n, P10628094336600938023.a n = A111225 (n + 1)

end A111225

/-!
# A111226: Numbers n such that 5*n + 12 is prime.

The programs for A111226, the canonical program `A111226.P11734792993096453730` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111226 has offset 1).

The definition of A111226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111226.P11734792993096453730

`A111224(n+2)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111226

/-- `A111224(n+2)-1` -/
def P11734792993096453730.Spec : Prop :=
  ∀ n, P11734792993096453730.a n = A111226 (n + 1)

theorem P11734792993096453730.correct : P11734792993096453730.Spec := by
  intro n
  simp only [A111226, Nat.add_sub_cancel]

end A111226

/-! ## A111226.P11025824473274368601

`2*A102342(n+2)-1`
-/

namespace A111226.P11025824473274368601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102342 (n + 2) - 1

end

end A111226.P11025824473274368601

namespace A111226

/-- `2*A102342(n+2)-1` -/
def P11025824473274368601.Spec : Prop :=
  ∀ n, P11025824473274368601.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P13449104615373122745

`2*A024914(n+2)-3`
-/

namespace A111226.P13449104615373122745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024914 (n + 2) - 3

end

end A111226.P13449104615373122745

namespace A111226

/-- `2*A024914(n+2)-3` -/
def P13449104615373122745.Spec : Prop :=
  ∀ n, P13449104615373122745.a n = A111226 (n + 1)

theorem P13449104615373122745.correct : P13449104615373122745.Spec := by
  intro n
  simp only [A111226, Nat.add_sub_cancel, A111226.P13449104615373122745.a, A111226.P11734792993096453730.a, A024914, A024914.P2903943263207869472.a, A111224, A111224.P3130398945095072566.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111226

/-! ## A111226.P3152489234564868840

`A081759(n+2)-2*A139368(n+2)`
-/

namespace A111226.P3152489234564868840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 2) - 2 * A139368 (n + 2)

end

end A111226.P3152489234564868840

namespace A111226

/-- `A081759(n+2)-2*A139368(n+2)` -/
def P3152489234564868840.Spec : Prop :=
  ∀ n, P3152489234564868840.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P16062908507385786468

`A111223(n+3)-2`
-/

namespace A111226.P16062908507385786468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 3) - 2

end

end A111226.P16062908507385786468

namespace A111226

/-- `A111223(n+3)-2` -/
def P16062908507385786468.Spec : Prop :=
  ∀ n, P16062908507385786468.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P12610705900556352327

`A024895(n+3)-3`
-/

namespace A111226.P12610705900556352327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 3) - 3

end

end A111226.P12610705900556352327

namespace A111226

/-- `A024895(n+3)-3` -/
def P12610705900556352327.Spec : Prop :=
  ∀ n, P12610705900556352327.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P14658094070152260560

`eq[1, A001222(5*n+12)]`
-/

namespace A111226.P14658094070152260560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111226.P14658094070152260560

namespace A111226

/-- `eq[1, A001222(5*n+12)]` -/
def P14658094070152260560.Spec : Prop :=
  ∀ n, (P14658094070152260560.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P779525862064552424

`eq[2, A000005(5*n+12)]`
-/

namespace A111226.P779525862064552424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111226.P779525862064552424

namespace A111226

/-- `eq[2, A000005(5*n+12)]` -/
def P779525862064552424.Spec : Prop :=
  ∀ n, (P779525862064552424.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P6070307795132575375

`lt[A001222(5*(n+3)-3), 2]`
-/

namespace A111226.P6070307795132575375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 3) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111226.P6070307795132575375

namespace A111226

/-- `lt[A001222(5*(n+3)-3), 2]` -/
def P6070307795132575375.Spec : Prop :=
  ∀ n, (P6070307795132575375.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P16116525067700129612

`lt[A000005(5*(n+3)-3), 3]`
-/

namespace A111226.P16116525067700129612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 3) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111226.P16116525067700129612

namespace A111226

/-- `lt[A000005(5*(n+3)-3), 3]` -/
def P16116525067700129612.Spec : Prop :=
  ∀ n, (P16116525067700129612.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P8324958687145889110

`lt[n+2, A020639(5*n+12)]`
-/

namespace A111226.P8324958687145889110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111226.P8324958687145889110

namespace A111226

/-- `lt[n+2, A020639(5*n+12)]` -/
def P8324958687145889110.Spec : Prop :=
  ∀ n, (P8324958687145889110.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P466287269245661805

`eq[5*n+12, A006530(5*n+12)]`
-/

namespace A111226.P466287269245661805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111226.P466287269245661805

namespace A111226

/-- `eq[5*n+12, A006530(5*n+12)]` -/
def P466287269245661805.Spec : Prop :=
  ∀ n, (P466287269245661805.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P15404424277940697819

`A004273(A102342(n+2))`
-/

namespace A111226.P15404424277940697819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102342 (n + 2)).toNat

end

end A111226.P15404424277940697819

namespace A111226

/-- `A004273(A102342(n+2))` -/
def P15404424277940697819.Spec : Prop :=
  ∀ n, P15404424277940697819.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P13612358494322058075

`A004273(A024914(n+2)-1)`
-/

namespace A111226.P13612358494322058075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024914 (n + 2) - 1).toNat

end

end A111226.P13612358494322058075

namespace A111226

/-- `A004273(A024914(n+2)-1)` -/
def P13612358494322058075.Spec : Prop :=
  ∀ n, P13612358494322058075.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P8223981310275439780

`eq[2, ∏{e}[2*A016777(n+1)+4-n, #+1]]`
-/

namespace A111226.P8223981310275439780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016777 (n + 1) + 4 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111226.P8223981310275439780

namespace A111226

/-- `eq[2, ∏{e}[2*A016777(n+1)+4-n, #+1]]` -/
def P8223981310275439780.Spec : Prop :=
  ∀ n, (P8223981310275439780.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P4872668045223391485

`A014681(A111224(n+2))`
-/

namespace A111226.P4872668045223391485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A111224 (n + 2)).toNat

end

end A111226.P4872668045223391485

namespace A111226

/-- `A014681(A111224(n+2))` -/
def P4872668045223391485.Spec : Prop :=
  ∀ n, P4872668045223391485.a n = A111226 (n + 1)

end A111226

/-! ## A111226.P15786917154546998396

`lt[A180964(n+2), A006530(A016873(n+2))]`
-/

namespace A111226.P15786917154546998396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016873 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111226.P15786917154546998396

namespace A111226

/-- `lt[A180964(n+2), A006530(A016873(n+2))]` -/
def P15786917154546998396.Spec : Prop :=
  ∀ n, (P15786917154546998396.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P2165701684673105144

`eq[3, A088212(A016885(n))]`
-/

namespace A111226.P2165701684673105144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088212 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111226.P2165701684673105144

namespace A111226

/-- `eq[3, A088212(A016885(n))]` -/
def P2165701684673105144.Spec : Prop :=
  ∀ n, (P2165701684673105144.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P11153677564225068418

`lt[3*n, Δ[A014963(5*n+7)]]`
-/

namespace A111226.P11153677564225068418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111226.P11153677564225068418

namespace A111226

/-- `lt[3*n, Δ[A014963(5*n+7)]]` -/
def P11153677564225068418.Spec : Prop :=
  ∀ n, (P11153677564225068418.a n : ℤ) = A111226 (n + 1)

end A111226

/-! ## A111226.P15656604208266488329

`lt[3*A093074(n+1), A014963(5*n+2)]-2`
-/

namespace A111226.P15656604208266488329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A093074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 2

end

end A111226.P15656604208266488329

namespace A111226

/-- `lt[3*A093074(n+1), A014963(5*n+2)]-2` -/
def P15656604208266488329.Spec : Prop :=
  ∀ n, P15656604208266488329.a n = A111226 (n + 1)

end A111226

/-!
# A111227: Numbers n where A019294(n) > n.

The programs for A111227, there is no canonical definition to state claims against.
-/

/-! ## A111227.P11803736109430756007

`record[(n+3)%A019294(n+3)]`
-/

namespace A111227.P11803736109430756007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A019294 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111227.P11803736109430756007

/-! ## A111227.P18089515853226048668

`A020725(lt[n+1, A019294(n+1)])`
-/

namespace A111227.P18089515853226048668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111227.P18089515853226048668

/-! ## A111227.P5080291315698920401

`lt[A028310(n), A019294(A028310(n))]`
-/

namespace A111227.P5080291315698920401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111227.P5080291315698920401

/-! ## A111227.P1256831321730797967

`lt[A001358(n+1), A001358(A019294(n+1))]+1`
-/

namespace A111227.P1256831321730797967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A019294 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111227.P1256831321730797967

/-! ## A111227.P10815889751492521949

`lt[A005101(n+1), A005101(A019294(n+1))]+1`
-/

namespace A111227.P10815889751492521949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (A019294 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A111227.P10815889751492521949

/-!
# A111228: Numbers where the digits are alternatively even and odd and no digit is 0.

The programs for A111228, there is no canonical definition to state claims against.
-/

/-! ## A111228.P9540598426677579713

`lt[A055641(n), A228710(n)]`
-/

namespace A111228.P9540598426677579713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111228.P9540598426677579713

/-! ## A111228.P7715870512602776681

`lt[A067898(n), A228710(n)]`
-/

namespace A111228.P7715870512602776681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111228.P7715870512602776681

/-! ## A111228.P2742605749831255442

`record[A004719(A228722(n+1))]`
-/

namespace A111228.P2742605749831255442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A228722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111228.P2742605749831255442

/-! ## A111228.P16470193844102410874

`record[A004719(A228723(n+1))]`
-/

namespace A111228.P16470193844102410874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A228723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111228.P16470193844102410874

/-! ## A111228.P14777901680013915785

`record[A004719(A030141(n+2))]`
-/

namespace A111228.P14777901680013915785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A030141 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111228.P14777901680013915785

/-! ## A111228.P10838693823840970091

`filter[A030141(n+1), A168046(#)]`
-/

namespace A111228.P10838693823840970091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A111228.P10838693823840970091

/-! ## A111228.P8926003784640478883

`filter[A052382(n+1), A228710(#)]`
-/

namespace A111228.P8926003784640478883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A111228.P8926003784640478883

/-! ## A111228.P10695468193400001842

`filter[A030141(n+2), A209929(#)]`
-/

namespace A111228.P10695468193400001842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A111228.P10695468193400001842

/-! ## A111228.P8204476831902806799

`eq[n, A228723(n)+A055641(n)]`
-/

namespace A111228.P8204476831902806799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228723 n + A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111228.P8204476831902806799

/-!
# A111230: Numbers k such that 5*k + 14 is prime.

The programs for A111230, the canonical program `A111230.P12790612550037976015` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111230 has offset 1).

The definition of A111230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111230.P14133780704774569620

`A024897(n+1)-2`
-/

namespace A111230.P14133780704774569620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1) - 2

end

end A111230.P14133780704774569620

namespace A111230

/-- `A024897(n+1)-2` -/
def P14133780704774569620.Spec : Prop :=
  ∀ n, P14133780704774569620.a n = A111230 (n + 1)

theorem P14133780704774569620.correct : P14133780704774569620.Spec := by
  intro n
  simp only [A111230, Nat.add_sub_cancel, A111230.P14133780704774569620.a, A111230.P12790612550037976015.a, A024897, A024897.P4072693481099583505.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111230

/-! ## A111230.P4435376856232882219

`A153355(n+1)-3`
-/

namespace A111230.P4435376856232882219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1) - 3

end

end A111230.P4435376856232882219

namespace A111230

/-- `A153355(n+1)-3` -/
def P4435376856232882219.Spec : Prop :=
  ∀ n, P4435376856232882219.a n = A111230 (n + 1)

theorem P4435376856232882219.correct : P4435376856232882219.Spec := by
  intro n
  simp only [A111230, Nat.add_sub_cancel, A111230.P4435376856232882219.a, A111230.P12790612550037976015.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A153355, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111230

/-! ## A111230.P2869143913182087794

`2*A102700(n+1)-1`
-/

namespace A111230.P2869143913182087794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102700 (n + 1) - 1

end

end A111230.P2869143913182087794

namespace A111230

/-- `2*A102700(n+1)-1` -/
def P2869143913182087794.Spec : Prop :=
  ∀ n, P2869143913182087794.a n = A111230 (n + 1)

theorem P2869143913182087794.correct : P2869143913182087794.Spec := by
  intro n
  simp only [A111230, Nat.add_sub_cancel, A111230.P2869143913182087794.a, A111230.P12790612550037976015.a, A102700, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111230

/-! ## A111230.P12790612550037976015

`2*A105042(n+1)-3`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111230

/-- `2*A105042(n+1)-3` -/
def P12790612550037976015.Spec : Prop :=
  ∀ n, P12790612550037976015.a n = A111230 (n + 1)

theorem P12790612550037976015.correct : P12790612550037976015.Spec := by
  intro n
  simp only [A111230, Nat.add_sub_cancel]

end A111230

/-! ## A111230.P5236577727518495795

`(A030433(n+1)-4)/5-2`
-/

namespace A111230.P5236577727518495795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030433 (n + 1) - 4 : ℚ) / 5 - 2

end

end A111230.P5236577727518495795

namespace A111230

/-- `(A030433(n+1)-4)/5-2` -/
def P5236577727518495795.Spec : Prop :=
  ∀ n, P5236577727518495795.a n = (A111230 (n + 1) : ℚ)

theorem P5236577727518495795.correct : P5236577727518495795.Spec := by
  intro n
  simp only [A111230, Nat.add_sub_cancel, A111230.P5236577727518495795.a, A111230.P12790612550037976015.a, A030433, A030433.P5160408850318071491.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A102700, A102700.P10486691176846618732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111230

/-! ## A111230.P2698611981474383001

`A102700(n+1)+A105042(n+1)-2`
-/

namespace A111230.P2698611981474383001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) + (A105042 (n + 1) - 2)

end

end A111230.P2698611981474383001

namespace A111230

/-- `A102700(n+1)+A105042(n+1)-2` -/
def P2698611981474383001.Spec : Prop :=
  ∀ n, P2698611981474383001.a n = A111230 (n + 1)

theorem P2698611981474383001.correct : P2698611981474383001.Spec := by
  intro n
  simp only [A111230, Nat.add_sub_cancel, A111230.P2698611981474383001.a, A111230.P12790612550037976015.a, A102700, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111230

/-! ## A111230.P16411774635846068384

`A116572(A049510(n+1))-2`
-/

namespace A111230.P16411774635846068384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116572 (A049510 (n + 1)).toNat - 2

end

end A111230.P16411774635846068384

namespace A111230

/-- `A116572(A049510(n+1))-2` -/
def P16411774635846068384.Spec : Prop :=
  ∀ n, P16411774635846068384.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P6282959072569037830

`A005408(A102700(n+1)-1)`
-/

namespace A111230.P6282959072569037830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A102700 (n + 1) - 1).toNat

end

end A111230.P6282959072569037830

namespace A111230

/-- `A005408(A102700(n+1)-1)` -/
def P6282959072569037830.Spec : Prop :=
  ∀ n, P6282959072569037830.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P2487122372087580707

`A005408(A105042(n+1)-2)`
-/

namespace A111230.P2487122372087580707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A105042 (n + 1) - 2).toNat

end

end A111230.P2487122372087580707

namespace A111230

/-- `A005408(A105042(n+1)-2)` -/
def P2487122372087580707.Spec : Prop :=
  ∀ n, P2487122372087580707.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P8727448469365193199

`eq[1, A001222(5*n+14)]`
-/

namespace A111230.P8727448469365193199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 14)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111230.P8727448469365193199

namespace A111230

/-- `eq[1, A001222(5*n+14)]` -/
def P8727448469365193199.Spec : Prop :=
  ∀ n, (P8727448469365193199.a n : ℤ) = A111230 (n + 1)

end A111230

/-! ## A111230.P6541299147705523446

`eq[2, A000005(5*n+14)]`
-/

namespace A111230.P6541299147705523446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 14)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111230.P6541299147705523446

namespace A111230

/-- `eq[2, A000005(5*n+14)]` -/
def P6541299147705523446.Spec : Prop :=
  ∀ n, (P6541299147705523446.a n : ℤ) = A111230 (n + 1)

end A111230

/-! ## A111230.P12894494906410517551

`lt[A001222(5*(n+2)+4), 2]`
-/

namespace A111230.P12894494906410517551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 2) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111230.P12894494906410517551

namespace A111230

/-- `lt[A001222(5*(n+2)+4), 2]` -/
def P12894494906410517551.Spec : Prop :=
  ∀ n, (P12894494906410517551.a n : ℤ) = A111230 (n + 1)

end A111230

/-! ## A111230.P9001546779035532207

`lt[A000005(5*(n+2)+4), 3]`
-/

namespace A111230.P9001546779035532207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 2) + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111230.P9001546779035532207

namespace A111230

/-- `lt[A000005(5*(n+2)+4), 3]` -/
def P9001546779035532207.Spec : Prop :=
  ∀ n, (P9001546779035532207.a n : ℤ) = A111230 (n + 1)

end A111230

/-! ## A111230.P9972446197742568321

`lt[n+2, A020639(5*(n+3)-1)]`
-/

namespace A111230.P9972446197742568321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n + 3) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111230.P9972446197742568321

namespace A111230

/-- `lt[n+2, A020639(5*(n+3)-1)]` -/
def P9972446197742568321.Spec : Prop :=
  ∀ n, (P9972446197742568321.a n : ℤ) = A111230 (n + 1)

end A111230

/-! ## A111230.P1239706384417855042

`A004273(A102700(n+1))`
-/

namespace A111230.P1239706384417855042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102700 (n + 1)).toNat

end

end A111230.P1239706384417855042

namespace A111230

/-- `A004273(A102700(n+1))` -/
def P1239706384417855042.Spec : Prop :=
  ∀ n, P1239706384417855042.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P410980739644395334

`A047242(A105042(n+1))`
-/

namespace A111230.P410980739644395334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A105042 (n + 1)).toNat

end

end A111230.P410980739644395334

namespace A111230

/-- `A047242(A105042(n+1))` -/
def P410980739644395334.Spec : Prop :=
  ∀ n, P410980739644395334.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P9515907393533114574

`A004273(A105042(n+1)-1)`
-/

namespace A111230.P9515907393533114574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A105042 (n + 1) - 1).toNat

end

end A111230.P9515907393533114574

namespace A111230

/-- `A004273(A105042(n+1)-1)` -/
def P9515907393533114574.Spec : Prop :=
  ∀ n, P9515907393533114574.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P536969002492297131

`A004277(A105042(n+1)-1)-1`
-/

namespace A111230.P536969002492297131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A105042 (n + 1) - 1).toNat - 1

end

end A111230.P536969002492297131

namespace A111230

/-- `A004277(A105042(n+1)-1)-1` -/
def P536969002492297131.Spec : Prop :=
  ∀ n, P536969002492297131.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P3185730833327077274

`2*A023456(A108856(n+1))-1`
-/

namespace A111230.P3185730833327077274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023456 (A108856 (n + 1)).toNat - 1

end

end A111230.P3185730833327077274

namespace A111230

/-- `2*A023456(A108856(n+1))-1` -/
def P3185730833327077274.Spec : Prop :=
  ∀ n, P3185730833327077274.a n = A111230 (n + 1)

end A111230

/-! ## A111230.P2638154330564972965

`A023444(A024897(n+1))`
-/

namespace A111230.P2638154330564972965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A024897 (n + 1)).toNat

end

end A111230.P2638154330564972965

namespace A111230

/-- `A023444(A024897(n+1))` -/
def P2638154330564972965.Spec : Prop :=
  ∀ n, P2638154330564972965.a n = A111230 (n + 1)

end A111230

/-!
# A111231: Numbers which are perfect powers m^k equal to the sum of m distinct primes.

The programs for A111231, there is no canonical definition to state claims against.
-/

/-! ## A111231.P11946892453434338963

`A076467(n+1)-floor(acot(n))`
-/

namespace A111231.P11946892453434338963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A111231.P11946892453434338963

/-! ## A111231.P3471297835435959791

`A105570(A076467(n+1))`
-/

namespace A111231.P3471297835435959791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A076467 (n + 1)).toNat

end

end A111231.P3471297835435959791

/-! ## A111231.P6411054821958707919

`∪[A016743(n), A111307(n)]`
-/

namespace A111231.P6411054821958707919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111231.P6411054821958707919

/-! ## A111231.P16226411298849832318

`∪[A016749(n), A111307(n)]`
-/

namespace A111231.P16226411298849832318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111231.P16226411298849832318

/-! ## A111231.P14008740971796451751

`∪[A016803(n), A111307(n)]`
-/

namespace A111231.P14008740971796451751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016803 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111231.P14008740971796451751

/-!
# A111233: Number of nonempty subsets of {1, 1/2, 1/3, ..., 1/n} that sum to an integer.

The programs for A111233, there is no canonical definition to state claims against.
-/

/-! ## A111233.P13589181685279269629

`2*∑[A113219(A092669(n+1))]-1`
-/

namespace A111233.P13589181685279269629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A092669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A111233.P13589181685279269629

/-! ## A111233.P17596211096487808027

`A004273(∑[A113219(A092669(n+1))])`
-/

namespace A111233.P17596211096487808027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113219 (A092669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111233.P17596211096487808027

/-!
# A111234: a(1)=2; thereafter a(n) = (largest proper divisor of n) + (smallest prime divisor of n).

The programs for A111234, there is no canonical definition to state claims against.
-/

/-! ## A111234.P13762035325390243088

`A020639(n+1)+(n+1)/A020639(n+1)`
-/

namespace A111234.P13762035325390243088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) + (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

end

end A111234.P13762035325390243088

/-! ## A111234.P15795473407073796530

`A020639(n+1)+A032742(n+1)`
-/

namespace A111234.P15795473407073796530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + A032742 (n + 1)

end

end A111234.P15795473407073796530

/-! ## A111234.P1573336229794233347

`A061228(n+1)-A060681(n+1)`
-/

namespace A111234.P1573336229794233347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A060681 (n + 1)

end

end A111234.P1573336229794233347

/-! ## A111234.P17663669250543038903

`gcd(A089389(n+1), A169901(n+1))`
-/

namespace A111234.P17663669250543038903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089389 (n + 1)) (A169901 (n + 1))

end

end A111234.P17663669250543038903

/-! ## A111234.P3654676744991270376

`A032742(n+1)+sqrt(A088377(n+1))`
-/

namespace A111234.P3654676744991270376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℝ) + Real.sqrt (A088377 (n + 1) : ℝ)

end

end A111234.P3654676744991270376

/-! ## A111234.P1519714953701447915

`lcm(2, A159475(n+1))-A060681(n+1)`
-/

namespace A111234.P1519714953701447915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A159475 (n + 1)) : ℤ) - A060681 (n + 1)

end

end A111234.P1519714953701447915

/-! ## A111234.P11658857917514367193

`A032742(n+1)+A028233(∏{p}[n+1, #])`
-/

namespace A111234.P11658857917514367193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A028233 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A111234.P11658857917514367193

/-! ## A111234.P5543449343832849315

`A020639(n+1)+n+1-A060681(n+1)`
-/

namespace A111234.P5543449343832849315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (n + 1 : ℤ) - A060681 (n + 1)

end

end A111234.P5543449343832849315

/-! ## A111234.P958615198061352244

`A032742(n+1)+A006530(A028233(n+1))`
-/

namespace A111234.P958615198061352244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A006530 (A028233 (n + 1)).toNat

end

end A111234.P958615198061352244

/-! ## A111234.P4799994403202147671

`A032742(n+1)+A008578(A055396(n+1)+1)`
-/

namespace A111234.P4799994403202147671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A008578 (A055396 (n + 1) + 1).toNat

end

end A111234.P4799994403202147671

/-! ## A111234.P5420806158691277167

`A032742(n+1)+A074320(n+1)-A006530(n+1)`
-/

namespace A111234.P5420806158691277167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (A074320 (n + 1) - A006530 (n + 1))

end

end A111234.P5420806158691277167

/-! ## A111234.P5626967326087211404

`A032742(n+1)+A000027(n+1)/A032742(n+1)`
-/

namespace A111234.P5626967326087211404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A000027 (n + 1) : ℚ) / (A032742 (n + 1) : ℚ)

end

end A111234.P5626967326087211404

/-! ## A111234.P5914576371335634415

`A032742(n+1)+A066048(n+1)/A006530(n+1)`
-/

namespace A111234.P5914576371335634415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A066048 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A111234.P5914576371335634415

/-! ## A111234.P16283856506239138897

`(A130064(n+1)+A066048(n+1))/A006530(n+1)`
-/

namespace A111234.P16283856506239138897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130064 (n + 1) + A066048 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)

end

end A111234.P16283856506239138897

/-! ## A111234.P16503039176389235784

`A032742(n+1)+A088379(n+1)/A088378(n+1)`
-/

namespace A111234.P16503039176389235784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A088379 (n + 1) : ℚ) / (A088378 (n + 1) : ℚ)

end

end A111234.P16503039176389235784

/-! ## A111234.P16180871212603711629

`A032742(n+1)+A130065(n+1)/A052126(n+1)`
-/

namespace A111234.P16180871212603711629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A130065 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)

end

end A111234.P16180871212603711629

/-! ## A111234.P17261478668724623878

`A032742(n+1)+A266645(n+1)/A283463(n+1)`
-/

namespace A111234.P17261478668724623878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A266645 (n + 1) : ℚ) / (A283463 (n + 1) : ℚ)

end

end A111234.P17261478668724623878

/-! ## A111234.P14315583527987836723

`A032742(n+1)+A126287(n+2)/A032742(n+2)`
-/

namespace A111234.P14315583527987836723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A126287 (n + 2) : ℚ) / (A032742 (n + 2) : ℚ)

end

end A111234.P14315583527987836723

/-! ## A111234.P2739513168554677225

`A032742(n+1)+A250245(n+1)/A280495(n+1)`
-/

namespace A111234.P2739513168554677225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) + (A250245 (n + 1) : ℚ) / (A280495 (n + 1) : ℚ)

end

end A111234.P2739513168554677225

/-! ## A111234.P6565457465735293505

`A032742(n+1)+A014673(2*(n+1))`
-/

namespace A111234.P6565457465735293505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + A014673 (2 * (n + 1))

end

end A111234.P6565457465735293505

/-!
# A111235: a(1)=a(2)=a(3)=a(4)=1. For n >= 5, a(n)= a(n-1)*a(n-2) + a(n-3)*a(n-4).

The programs for A111235, the canonical program `A111235.P7459240322527812921` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111235 has offset 1).

The definition of A111235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-3)*a(n-4)` (program `A111235.P7459240322527812921`, by `A111235.P7459240322527812921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111235.P7459240322527812921

`a(n-1)*a(n-2)+a(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111235

/-- `a(n-1)*a(n-2)+a(n-3)*a(n-4)` -/
def P7459240322527812921.Spec : Prop :=
  ∀ n, (P7459240322527812921.a n : ℤ) = A111235 (n + 1)

theorem P7459240322527812921.correct : P7459240322527812921.Spec := by
  intro n
  simp only [A111235, Nat.add_sub_cancel]

end A111235

/-! ## A111235.P4783898397135256546

`xor(4, A003173(3*a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`
-/

namespace A111235.P4783898397135256546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n a =>
  Int.xor 4 (A003173 (3 * a (n - 3)).toNat)

end

end A111235.P4783898397135256546

namespace A111235

/-- `xor(4, A003173(3*a(n-3)))` -/
def P4783898397135256546.Spec : Prop :=
  ∀ n, P4783898397135256546.a n = A111235 (n + 1)

end A111235

/-! ## A111235.P8460801217092587846

`A002034(A064184(n))`
-/

namespace A111235.P8460801217092587846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A064184 n).toNat

end

end A111235.P8460801217092587846

namespace A111235

/-- `A002034(A064184(n))` -/
def P8460801217092587846.Spec : Prop :=
  ∀ n, P8460801217092587846.a n = A111235 (n + 1)

end A111235

/-! ## A111235.P9176321994733444391

`A365543(∑[A237575(n)])`
-/

namespace A111235.P9176321994733444391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111235.P9176321994733444391

namespace A111235

/-- `A365543(∑[A237575(n)])` -/
def P9176321994733444391.Spec : Prop :=
  ∀ n, P9176321994733444391.a n = A111235 (n + 1)

end A111235

/-!
# A111236: a(1)=a(2)=a(3)=a(4)=1. For n >= 5, a(n)= (a(n-1)+a(n-2)) * (a(n-3)+a(n-4)).

The programs for A111236, the canonical program `A111236.P5426903550837846712` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111236 has offset 1).

The definition of A111236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+a(n-2))*(a(n-3)+a(n-4))` (program `A111236.P5426903550837846712`, by `A111236.P5426903550837846712.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111236.P5426903550837846712

`(a(n-1)+a(n-2))*(a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111236

/-- `(a(n-1)+a(n-2))*(a(n-3)+a(n-4))` -/
def P5426903550837846712.Spec : Prop :=
  ∀ n, (P5426903550837846712.a n : ℤ) = A111236 (n + 1)

theorem P5426903550837846712.correct : P5426903550837846712.Spec := by
  intro n
  simp only [A111236, Nat.add_sub_cancel]

end A111236

/-! ## A111236.P14682282426021328051

`A379818(A088812(n))`
-/

namespace A111236.P14682282426021328051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379818 (A088812 n).toNat

end

end A111236.P14682282426021328051

namespace A111236

/-- `A379818(A088812(n))` -/
def P14682282426021328051.Spec : Prop :=
  ∀ n, P14682282426021328051.a n = A111236 (n + 1)

end A111236

/-! ## A111236.P10227403136684293372

`A205552(A001462(n!))`
-/

namespace A111236.P10227403136684293372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (A001462 (Nat.factorial n)).toNat

end

end A111236.P10227403136684293372

namespace A111236

/-- `A205552(A001462(n!))` -/
def P10227403136684293372.Spec : Prop :=
  ∀ n, P10227403136684293372.a n = A111236 (n + 1)

end A111236

/-! ## A111236.P15203636083476054788

`A379818(A037951(n+1))`
-/

namespace A111236.P15203636083476054788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379818 (A037951 (n + 1)).toNat

end

end A111236.P15203636083476054788

namespace A111236

/-- `A379818(A037951(n+1))` -/
def P15203636083476054788.Spec : Prop :=
  ∀ n, P15203636083476054788.a n = A111236 (n + 1)

end A111236

/-!
# A111238: Indices k where A109890(k) is prime.

The programs for A111238, there is no canonical definition to state claims against.
-/

/-! ## A111238.P14574606499034222078

`A109736(A111239(n+1))`
-/

namespace A111238.P14574606499034222078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A111239 (n + 1)).toNat

end

end A111238.P14574606499034222078

/-! ## A111238.P2760594118421395485

`A109736(p?[A094339(n+1)])`
-/

namespace A111238.P2760594118421395485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111238.P2760594118421395485

/-! ## A111238.P1584990627787754200

`A109736(p?[A109890(n+1)])`
-/

namespace A111238.P1584990627787754200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111238.P1584990627787754200

/-! ## A111238.P11301655860862157130

`record[A109736(A020639(A094339(n+4)))]`
-/

namespace A111238.P11301655860862157130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A020639 (A094339 (n + 4)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111238.P11301655860862157130

/-! ## A111238.P46214316030111391

`eq[A006530(A109890(n+2)), A109890(n+2)]+2`
-/

namespace A111238.P46214316030111391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109890 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A111238.P46214316030111391

/-!
# A111239: Primes in the order in which they appear in A109890.

The programs for A111239, there is no canonical definition to state claims against.
-/

/-! ## A111239.P1705425949654227186

`A109890(A111238(n+1))`
-/

namespace A111239.P1705425949654227186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (A111238 (n + 1)).toNat

end

end A111239.P1705425949654227186

/-! ## A111239.P10024363885800382694

`A094339(A111238(n+1)-floor(acot(n)))`
-/

namespace A111239.P10024363885800382694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A111238 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A111239.P10024363885800382694

/-! ## A111239.P16164952903920340020

`A094339(A111238(n+1))+A000007(n)`
-/

namespace A111239.P16164952903920340020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A111238 (n + 1)).toNat + A000007 n

end

end A111239.P16164952903920340020

/-! ## A111239.P16844173332454450616

`A094339(A111238(n+1))+A026836(∑[n]+1)`
-/

namespace A111239.P16844173332454450616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A111238 (n + 1)).toNat + A026836 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111239.P16844173332454450616

/-! ## A111239.P6774811754791912960

`A001511(A131136(n)+1)*A094339(A111238(n+1))`
-/

namespace A111239.P6774811754791912960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A131136 n + 1).toNat * A094339 (A111238 (n + 1)).toNat

end

end A111239.P6774811754791912960

/-! ## A111239.P18331209823918084870

`p?[A094339(n+1)]`
-/

namespace A111239.P18331209823918084870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111239.P18331209823918084870

/-! ## A111239.P13376201897367289993

`p?[A109890(n+1)]`
-/

namespace A111239.P13376201897367289993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111239.P13376201897367289993

/-! ## A111239.P4513154869836628190

`p?[Δ[A109735(n+1)]]`
-/

namespace A111239.P4513154869836628190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109735 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111239.P4513154869836628190

/-! ## A111239.P5807201410876694182

`∑{p}[p?[A109890(A028310(n))], #]`
-/

namespace A111239.P5807201410876694182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A111239.P5807201410876694182

/-! ## A111239.P11466299896861664281

`p?[A109735(n+2)-A109735(n+1)]`
-/

namespace A111239.P11466299896861664281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109735 (n + 2) - A109735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111239.P11466299896861664281

/-!
# A111240: Index at which n-th prime appears in A109890.

The programs for A111240, there is no canonical definition to state claims against.
-/

/-! ## A111240.P3929234004967623149

`A109736(p?[gcd(1-n, floor(n/2))])`
-/

namespace A111240.P3929234004967623149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A111240.P3929234004967623149

/-! ## A111240.P8725370253315256916

`A109736(Δ[A007504(n)])`
-/

namespace A111240.P8725370253315256916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (n + 1) - f1 n).toNat

end

end A111240.P8725370253315256916

/-! ## A111240.P14467039018237355773

`A109736(A000040(n+1))`
-/

namespace A111240.P14467039018237355773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A000040 (n + 1)).toNat

end

end A111240.P14467039018237355773

/-! ## A111240.P2254039510207405679

`A109736(A008578(n+2))`
-/

namespace A111240.P2254039510207405679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A008578 (n + 2)).toNat

end

end A111240.P2254039510207405679

/-! ## A111240.P7068699296444670953

`A109736(A182986(n+2))`
-/

namespace A111240.P7068699296444670953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A182986 (n + 2)).toNat

end

end A111240.P7068699296444670953

/-! ## A111240.P7718103651342952155

`A109736(record[A020639(n+2)])`
-/

namespace A111240.P7718103651342952155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111240.P7718103651342952155

/-!
# A111241: a(n) = A109735(n)/A109890(n+1).

The programs for A111241, there is no canonical definition to state claims against.
-/

/-! ## A111241.P4435113162373887901

`A109735(n+2)/A109890(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111241.P4435113162373887901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109735 (n + 2) : ℚ) / (A109890 (n + 3) : ℚ)

end

end A111241.P4435113162373887901

/-! ## A111241.P3707052122178180185

`A094340(n+2)`
-/

namespace A111241.P3707052122178180185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094340 (n + 2)

end

end A111241.P3707052122178180185

/-! ## A111241.P4332193890211564969

`A109735(n+2)/A094339(n+3)`
-/

namespace A111241.P4332193890211564969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109735 (n + 2) : ℚ) / (A094339 (n + 3) : ℚ)

end

end A111241.P4332193890211564969

/-!
# A111242: Records in A109890.

The programs for A111242, there is no canonical definition to state claims against.
-/

/-! ## A111242.P12809637972713762597

`record[A109890(n+1)]`
-/

namespace A111242.P12809637972713762597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111242.P12809637972713762597

/-! ## A111242.P17405688345205613700

`A109890(A111243(n+1))`
-/

namespace A111242.P17405688345205613700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (A111243 (n + 1)).toNat

end

end A111242.P17405688345205613700

/-! ## A111242.P1138683903433390925

`record[A094339(A344180(n+3))]`
-/

namespace A111242.P1138683903433390925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A344180 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111242.P1138683903433390925

/-! ## A111242.P14675647352486337855

`record[A094339(n+1)-A240354(n)]`
-/

namespace A111242.P14675647352486337855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A240354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111242.P14675647352486337855

/-! ## A111242.P16586654938044121327

`record[A094339(n+1)-A154955(n+1)]`
-/

namespace A111242.P16586654938044121327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A154955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111242.P16586654938044121327

/-!
# A111243: Where records appear in A109890.

The programs for A111243, there is no canonical definition to state claims against.
-/

/-! ## A111243.P15793094511431251231

`A109736(A111242(n+1))`
-/

namespace A111243.P15793094511431251231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (A111242 (n + 1)).toNat

end

end A111243.P15793094511431251231

/-! ## A111243.P1257412192408726727

`A109736(record[A109890(n+1)])`
-/

namespace A111243.P1257412192408726727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111243.P1257412192408726727

/-! ## A111243.P3539451139047990684

`A109736(record[A094339(A027750(n+3))])`
-/

namespace A111243.P3539451139047990684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (A027750 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111243.P3539451139047990684

/-! ## A111243.P2175592067630051277

`A109736(record[A094339(n+1)-A240354(n)])`
-/

namespace A111243.P2175592067630051277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A240354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111243.P2175592067630051277

/-! ## A111243.P3478618554492785561

`A109736(record[A094339(n+1)-A154955(n+1)])`
-/

namespace A111243.P3478618554492785561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (n + 1) - A154955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111243.P3478618554492785561

/-!
# A111244: Partial sums of A084385.

The programs for A111244, there is no canonical definition to state claims against.
-/

/-! ## A111244.P9842724328366337628

`∑[A084385(n+1)]`
-/

namespace A111244.P9842724328366337628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111244.P9842724328366337628

/-! ## A111244.P2522927768330612458

`A084385(round(sqrt(n²+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A111244.P2522927768330612458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084385 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + a (n - 1)

end

end A111244.P2522927768330612458

/-! ## A111244.P16144102897363717617

`a(n-1)+A084385(n+1)%A008486(n)` with `a(0)=1`
-/

namespace A111244.P16144102897363717617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A084385 (n + 1)) (A008486 n)

end

end A111244.P16144102897363717617

/-! ## A111244.P15825928423452054778

`∑[A055265(A327143(n+1))]`
-/

namespace A111244.P15825928423452054778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A327143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111244.P15825928423452054778

/-! ## A111244.P5186219904959678783

`A336551(record[∑[(-2)^n]])+A307612(n+1)`
-/

namespace A111244.P5186219904959678783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A307612 (n + 1)

end

end A111244.P5186219904959678783

/-!
# A111245: Perfect powers m^k, where m is an integer, which are not equal to the sum of m distinct primes.

The programs for A111245, there is no canonical definition to state claims against.
-/

/-! ## A111245.P8841804495384366128

`record[A073843(A160547(n+1))]`
-/

namespace A111245.P8841804495384366128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073843 (A160547 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111245.P8841804495384366128

/-! ## A111245.P726123195762347612

`record[A073843(A247064(n+1))]`
-/

namespace A111245.P726123195762347612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073843 (A247064 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111245.P726123195762347612

/-! ## A111245.P8509561701320923003

`record[A025478(A110303(n+1))²]`
-/

namespace A111245.P8509561701320923003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (A110303 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111245.P8509561701320923003

/-! ## A111245.P8215131860233800329

`record[A025478(A183294(n+1))²]`
-/

namespace A111245.P8215131860233800329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (A183294 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111245.P8215131860233800329

/-! ## A111245.P4925717813393496665

`(eq[A297243(A028310(n))^(n+1), A175070(n+1)]+1)²`
-/

namespace A111245.P4925717813393496665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A028310 n).toNat ^ (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 2

end

end A111245.P4925717813393496665

/-!
# A111246: Triangle read by rows: a(n,k) = number of partitions of an n-set into exactly k nonempty subsets, each of size <= 3.

The programs for A111246, there is no canonical definition to state claims against.
-/

/-! ## A111246.P5513463711057014200

`A144402(comp[∑[n]])`
-/

namespace A111246.P5513463711057014200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111246.P5513463711057014200

/-! ## A111246.P11567997815414793009

`or(char[1], A144402(A014132(n+1)))`
-/

namespace A111246.P11567997815414793009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144402 (A014132 (n + 1)).toNat)

end

end A111246.P11567997815414793009

/-! ## A111246.P12516605817292647253

`A144402(A014132(n+1))%A063262(n)`
-/

namespace A111246.P12516605817292647253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144402 (A014132 (n + 1)).toNat) (A063262 n)

end

end A111246.P12516605817292647253

/-! ## A111246.P1412428587351270150

`gcd(A000038(n), A144402(A014132(n+1)))`
-/

namespace A111246.P1412428587351270150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A144402 (A014132 (n + 1)).toNat)

end

end A111246.P1412428587351270150

/-! ## A111246.P9595199818582518926

`∑{d}[A144402(A014132(n+1)), A000010(#)]`
-/

namespace A111246.P9595199818582518926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A111246.P9595199818582518926

/-! ## A111246.P18373004383987739211

`char[A061579(n)]*A144402(A014132(n+1))`
-/

namespace A111246.P18373004383987739211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144402 (A014132 (n + 1)).toNat

end

end A111246.P18373004383987739211

/-! ## A111246.P7184797910997754227

`A007318(C(2, n))*A144402(A014132(n+1))`
-/

namespace A111246.P7184797910997754227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A144402 (A014132 (n + 1)).toNat

end

end A111246.P7184797910997754227

/-! ## A111246.P4922594727850238328

`A144402(A014132(n+1))^A000108(C(2, n))`
-/

namespace A111246.P4922594727850238328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144402 (A014132 (n + 1)).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A111246.P4922594727850238328

/-! ## A111246.P16070009100086654639

`A144402(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A111246.P16070009100086654639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A111246.P16070009100086654639

/-! ## A111246.P8859817164524781477

`A000045(A020639(2*(n+1)))*A144402(A014132(n+1))`
-/

namespace A111246.P8859817164524781477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A144402 (A014132 (n + 1)).toNat

end

end A111246.P8859817164524781477

/-!
# A111248: Dimension of the space of weight 2 modular forms for Gamma_0(n).

The programs for A111248, the canonical program `A111248.P8740398258723781091` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111248 has offset 1).

The definition of A111248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001616, A001617, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111248.P8740398258723781091

`A001617(n+1)+A001616(n+1)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A111248

/-- `A001617(n+1)+A001616(n+1)-1` -/
def P8740398258723781091.Spec : Prop :=
  ∀ n, P8740398258723781091.a n = A111248 (n + 1)

theorem P8740398258723781091.correct : P8740398258723781091.Spec := by
  intro n
  simp only [A111248, Nat.add_sub_cancel]

end A111248

/-! ## A111248.P3557506705473905154

`A023443(A001616(n+1))+A001617(n+1)`
-/

namespace A111248.P3557506705473905154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001616 (n + 1)).toNat + A001617 (n + 1)

end

end A111248.P3557506705473905154

namespace A111248

/-- `A023443(A001616(n+1))+A001617(n+1)` -/
def P3557506705473905154.Spec : Prop :=
  ∀ n, P3557506705473905154.a n = A111248 (n + 1)

end A111248

/-! ## A111248.P7458740582677453110

`-A024000(A001617(n+1)+A001616(n+1))`
-/

namespace A111248.P7458740582677453110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (A001617 (n + 1) + A001616 (n + 1)).toNat

end

end A111248.P7458740582677453110

namespace A111248

/-- `-A024000(A001617(n+1)+A001616(n+1))` -/
def P7458740582677453110.Spec : Prop :=
  ∀ n, P7458740582677453110.a n = A111248 (n + 1)

end A111248

/-! ## A111248.P16778816239765945829

`A289207(A001616(n+1)+1)+A001617(n+1)`
-/

namespace A111248.P16778816239765945829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001616 (n + 1) + 1).toNat + A001617 (n + 1)

end

end A111248.P16778816239765945829

namespace A111248

/-- `A289207(A001616(n+1)+1)+A001617(n+1)` -/
def P16778816239765945829.Spec : Prop :=
  ∀ n, P16778816239765945829.a n = A111248 (n + 1)

end A111248

/-! ## A111248.P2359068602508848197

`A057428(n+1)+A001617(n+1)+A001616(n+1)`
-/

namespace A111248.P2359068602508848197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (A001617 (n + 1) + A001616 (n + 1))

end

end A111248.P2359068602508848197

namespace A111248

/-- `A057428(n+1)+A001617(n+1)+A001616(n+1)` -/
def P2359068602508848197.Spec : Prop :=
  ∀ n, P2359068602508848197.a n = A111248 (n + 1)

theorem P2359068602508848197.correct : P2359068602508848197.Spec := by
  intro n
  simp only [A111248, Nat.add_sub_cancel, A111248.P2359068602508848197.a, A111248.P8740398258723781091.a, A001616, A001616.P911781339430000004.f1, A001616.P911781339430000004.a, A001617, A001617.P10653443517118313610.a, A057428, A057428.P2999489532230392221.a, A000086, A000086.P3359847833353072450.a, A000089, A000089.P6732950680245443794.a, A001615, A001615.P12078511981713404634.a, A055155, A055155.P11997759877346480704.f1, A055155.P11997759877346480704.a, A057427, A057427.P3058147525557661423.a, A271102, A271102.P1341188632352803855.f1, A271102.P1341188632352803855.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A026741, A026741.P7397200255647832146.a, A065959, A065959.P2409166480310075694.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, A059376, A059376.P12656735072516275082.f1, A059376.P12656735072516275082.a, A069091, A069091.P1979038829960387113.f1, A069091.P1979038829960387113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A111248

/-!
# A111249: Numbers k such that 7*k + 8 is prime.

The programs for A111249, the canonical program `A111249.P7340019097524648828` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111249 has offset 1).

The definition of A111249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024905, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A111249.P7340019097524648828

`A024905(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111249

/-- `A024905(n+1)-1` -/
def P7340019097524648828.Spec : Prop :=
  ∀ n, P7340019097524648828.a n = A111249 (n + 1)

theorem P7340019097524648828.correct : P7340019097524648828.Spec := by
  intro n
  simp only [A111249, Nat.add_sub_cancel]

end A111249

/-! ## A111249.P12214110368290363755

`floor(A140444(n+1)/7)-1`
-/

namespace A111249.P12214110368290363755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140444 (n + 1) : ℚ) / 7⌋ - 1

end

end A111249.P12214110368290363755

namespace A111249

/-- `floor(A140444(n+1)/7)-1` -/
def P12214110368290363755.Spec : Prop :=
  ∀ n, P12214110368290363755.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P3171385536473475106

`A004273(A024905(n+1)/2)`
-/

namespace A111249.P3171385536473475106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A024905 (n + 1) : ℚ) / 2)).toNat

end

end A111249.P3171385536473475106

namespace A111249

/-- `A004273(A024905(n+1)/2)` -/
def P3171385536473475106.Spec : Prop :=
  ∀ n, P3171385536473475106.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P5604386012387291714

`eq[1, A001222(7*n+8)]`
-/

namespace A111249.P5604386012387291714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111249.P5604386012387291714

namespace A111249

/-- `eq[1, A001222(7*n+8)]` -/
def P5604386012387291714.Spec : Prop :=
  ∀ n, (P5604386012387291714.a n : ℤ) = A111249 (n + 1)

end A111249

/-! ## A111249.P6649813455179652449

`eq[2, A000005(7*n+8)]`
-/

namespace A111249.P6649813455179652449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111249.P6649813455179652449

namespace A111249

/-- `eq[2, A000005(7*n+8)]` -/
def P6649813455179652449.Spec : Prop :=
  ∀ n, (P6649813455179652449.a n : ℤ) = A111249 (n + 1)

end A111249

/-! ## A111249.P2346368333327641532

`eq[1, A368203(n+1)]`
-/

namespace A111249.P2346368333327641532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111249.P2346368333327641532

namespace A111249

/-- `eq[1, A368203(n+1)]` -/
def P2346368333327641532.Spec : Prop :=
  ∀ n, (P2346368333327641532.a n : ℤ) = A111249 (n + 1)

end A111249

/-! ## A111249.P2332666851634385650

`A014681(A024905(n+1))`
-/

namespace A111249.P2332666851634385650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A024905 (n + 1)).toNat

end

end A111249.P2332666851634385650

namespace A111249

/-- `A014681(A024905(n+1))` -/
def P2332666851634385650.Spec : Prop :=
  ∀ n, P2332666851634385650.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P17131123531750587076

`eq[2, A000005(A016993(n))]-1`
-/

namespace A111249.P17131123531750587076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A111249.P17131123531750587076

namespace A111249

/-- `eq[2, A000005(A016993(n))]-1` -/
def P17131123531750587076.Spec : Prop :=
  ∀ n, P17131123531750587076.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P1801222862326989101

`lt[A000005(A016921(n+1)+n+1), 3]`
-/

namespace A111249.P1801222862326989101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016921 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111249.P1801222862326989101

namespace A111249

/-- `lt[A000005(A016921(n+1)+n+1), 3]` -/
def P1801222862326989101.Spec : Prop :=
  ∀ n, (P1801222862326989101.a n : ℤ) = A111249 (n + 1)

end A111249

/-! ## A111249.P8078355939909451475

`lt[A016873(n), A006530(7*n+1)]-1`
-/

namespace A111249.P8078355939909451475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A111249.P8078355939909451475

namespace A111249

/-- `lt[A016873(n), A006530(7*n+1)]-1` -/
def P8078355939909451475.Spec : Prop :=
  ∀ n, P8078355939909451475.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P1709769185034855596

`lt[A016897(n), A006530(7*n+1)]-1`
-/

namespace A111249.P1709769185034855596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A111249.P1709769185034855596

namespace A111249

/-- `lt[A016897(n), A006530(7*n+1)]-1` -/
def P1709769185034855596.Spec : Prop :=
  ∀ n, P1709769185034855596.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P10843155577243066713

`A293484(A140444(n+1))-1`
-/

namespace A111249.P10843155577243066713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (A140444 (n + 1)).toNat - 1

end

end A111249.P10843155577243066713

namespace A111249

/-- `A293484(A140444(n+1))-1` -/
def P10843155577243066713.Spec : Prop :=
  ∀ n, P10843155577243066713.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P18287127952678999312

`A293484(A045465(n+2))-1`
-/

namespace A111249.P18287127952678999312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293484 (A045465 (n + 2)).toNat - 1

end

end A111249.P18287127952678999312

namespace A111249

/-- `A293484(A045465(n+2))-1` -/
def P18287127952678999312.Spec : Prop :=
  ∀ n, P18287127952678999312.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P10248015234807863634

`lt[n+1, A014963(7*n+1)]-1`
-/

namespace A111249.P10248015234807863634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A111249.P10248015234807863634

namespace A111249

/-- `lt[n+1, A014963(7*n+1)]-1` -/
def P10248015234807863634.Spec : Prop :=
  ∀ n, P10248015234807863634.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P2945285610594308124

`A194511(A140444(n+1))`
-/

namespace A111249.P2945285610594308124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A140444 (n + 1)).toNat

end

end A111249.P2945285610594308124

namespace A111249

/-- `A194511(A140444(n+1))` -/
def P2945285610594308124.Spec : Prop :=
  ∀ n, P2945285610594308124.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P18382628852989882522

`A194511(A045465(n+2))`
-/

namespace A111249.P18382628852989882522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A045465 (n + 2)).toNat

end

end A111249.P18382628852989882522

namespace A111249

/-- `A194511(A045465(n+2))` -/
def P18382628852989882522.Spec : Prop :=
  ∀ n, P18382628852989882522.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P17658163335614606655

`A132270(A140444(n+1)-1)`
-/

namespace A111249.P17658163335614606655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A140444 (n + 1) - 1).toNat

end

end A111249.P17658163335614606655

namespace A111249

/-- `A132270(A140444(n+1)-1)` -/
def P17658163335614606655.Spec : Prop :=
  ∀ n, P17658163335614606655.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P12215785140995898906

`A132270(A045465(n+2)-1)`
-/

namespace A111249.P12215785140995898906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045465 (n + 2) - 1).toNat

end

end A111249.P12215785140995898906

namespace A111249

/-- `A132270(A045465(n+2)-1)` -/
def P12215785140995898906.Spec : Prop :=
  ∀ n, P12215785140995898906.a n = A111249 (n + 1)

end A111249

/-! ## A111249.P15881857964267204646

`eq[1, A001055(A016993(n+1))]`
-/

namespace A111249.P15881857964267204646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A016993 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111249.P15881857964267204646

namespace A111249

/-- `eq[1, A001055(A016993(n+1))]` -/
def P15881857964267204646.Spec : Prop :=
  ∀ n, (P15881857964267204646.a n : ℤ) = A111249 (n + 1)

end A111249

/-!
# A111250: Numbers n such that 7*n + 10 is prime.

The programs for A111250, the canonical program `A111250.P4066307919200103457` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111250 has offset 1).

The definition of A111250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111250.P4066307919200103457

`A089033(n+2)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111250

/-- `A089033(n+2)-1` -/
def P4066307919200103457.Spec : Prop :=
  ∀ n, P4066307919200103457.a n = A111250 (n + 1)

theorem P4066307919200103457.correct : P4066307919200103457.Spec := by
  intro n
  simp only [A111250, Nat.add_sub_cancel]

end A111250

/-! ## A111250.P3616061697325945545

`A024903(n+2)-2`
-/

namespace A111250.P3616061697325945545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 2) - 2

end

end A111250.P3616061697325945545

namespace A111250

/-- `A024903(n+2)-2` -/
def P3616061697325945545.Spec : Prop :=
  ∀ n, P3616061697325945545.a n = A111250 (n + 1)

theorem P3616061697325945545.correct : P3616061697325945545.Spec := by
  intro n
  simp only [A111250, Nat.add_sub_cancel, A111250.P3616061697325945545.a, A111250.P4066307919200103457.a, A024903, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, A089033, A089033.P1967463785301948197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111250

/-! ## A111250.P10491419027744515370

`A033868(n+2)-3`
-/

namespace A111250.P10491419027744515370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033868 (n + 2) - 3

end

end A111250.P10491419027744515370

namespace A111250

/-- `A033868(n+2)-3` -/
def P10491419027744515370.Spec : Prop :=
  ∀ n, P10491419027744515370.a n = A111250 (n + 1)

theorem P10491419027744515370.correct : P10491419027744515370.Spec := by
  intro n
  simp only [A111250, Nat.add_sub_cancel, A111250.P10491419027744515370.a, A111250.P4066307919200103457.a, A033868, A033868.P9616034218409755744.a, A089033, A089033.P1967463785301948197.a, A024903, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111250

/-! ## A111250.P7539515333856273564

`2*A090614(n+2)-1`
-/

namespace A111250.P7539515333856273564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090614 (n + 2) - 1

end

end A111250.P7539515333856273564

namespace A111250

/-- `2*A090614(n+2)-1` -/
def P7539515333856273564.Spec : Prop :=
  ∀ n, P7539515333856273564.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P3591119977950998894

`A004273(A090614(n+2))`
-/

namespace A111250.P3591119977950998894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A090614 (n + 2)).toNat

end

end A111250.P3591119977950998894

namespace A111250

/-- `A004273(A090614(n+2))` -/
def P3591119977950998894.Spec : Prop :=
  ∀ n, P3591119977950998894.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P7631946133671392034

`A004273(A089033(n+2)/2)`
-/

namespace A111250.P7631946133671392034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A089033 (n + 2) : ℚ) / 2)).toNat

end

end A111250.P7631946133671392034

namespace A111250

/-- `A004273(A089033(n+2)/2)` -/
def P7631946133671392034.Spec : Prop :=
  ∀ n, P7631946133671392034.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P10205829414872435066

`eq[2, A000005(7*n+10)]`
-/

namespace A111250.P10205829414872435066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111250.P10205829414872435066

namespace A111250

/-- `eq[2, A000005(7*n+10)]` -/
def P10205829414872435066.Spec : Prop :=
  ∀ n, (P10205829414872435066.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P9248564087275575453

`eq[1, A001222(7*(n+1)+3)]`
-/

namespace A111250.P9248564087275575453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * (n + 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111250.P9248564087275575453

namespace A111250

/-- `eq[1, A001222(7*(n+1)+3)]` -/
def P9248564087275575453.Spec : Prop :=
  ∀ n, (P9248564087275575453.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P3997501384927337808

`lt[A001222(5*(n+2)+2*n), 2]`
-/

namespace A111250.P3997501384927337808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 2) + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111250.P3997501384927337808

namespace A111250

/-- `lt[A001222(5*(n+2)+2*n), 2]` -/
def P3997501384927337808.Spec : Prop :=
  ∀ n, (P3997501384927337808.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P2447331668521065979

`lt[A000005(5*(n+2)+2*n), 3]`
-/

namespace A111250.P2447331668521065979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 2) + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111250.P2447331668521065979

namespace A111250

/-- `lt[A000005(5*(n+2)+2*n), 3]` -/
def P2447331668521065979.Spec : Prop :=
  ∀ n, (P2447331668521065979.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P10333629813817884513

`lt[n+2, A020639(2*n+5*(n+2))]`
-/

namespace A111250.P10333629813817884513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 5 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111250.P10333629813817884513

namespace A111250

/-- `lt[n+2, A020639(2*n+5*(n+2))]` -/
def P10333629813817884513.Spec : Prop :=
  ∀ n, (P10333629813817884513.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P6797617346526279397

`A004483(A089033(n+2))`
-/

namespace A111250.P6797617346526279397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A089033 (n + 2)).toNat

end

end A111250.P6797617346526279397

namespace A111250

/-- `A004483(A089033(n+2))` -/
def P6797617346526279397.Spec : Prop :=
  ∀ n, P6797617346526279397.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P895137187015507655

`A023444(A024903(n+2))`
-/

namespace A111250.P895137187015507655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A024903 (n + 2)).toNat

end

end A111250.P895137187015507655

namespace A111250

/-- `A023444(A024903(n+2))` -/
def P895137187015507655.Spec : Prop :=
  ∀ n, P895137187015507655.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P2669520862257497277

`A023445(A033868(n+2))`
-/

namespace A111250.P2669520862257497277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A033868 (n + 2)).toNat

end

end A111250.P2669520862257497277

namespace A111250

/-- `A023445(A033868(n+2))` -/
def P2669520862257497277.Spec : Prop :=
  ∀ n, P2669520862257497277.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P6322471918561093482

`A194510(A045437(n+2))`
-/

namespace A111250.P6322471918561093482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194510 (A045437 (n + 2)).toNat

end

end A111250.P6322471918561093482

namespace A111250

/-- `A194510(A045437(n+2))` -/
def P6322471918561093482.Spec : Prop :=
  ∀ n, P6322471918561093482.a n = A111250 (n + 1)

end A111250

/-! ## A111250.P13973158177663266832

`lt[A016777(n), A014963(7*n+10)]`
-/

namespace A111250.P13973158177663266832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111250.P13973158177663266832

namespace A111250

/-- `lt[A016777(n), A014963(7*n+10)]` -/
def P13973158177663266832.Spec : Prop :=
  ∀ n, (P13973158177663266832.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P12005618579372868386

`lt[A016945(n), A014963(7*n+10)]`
-/

namespace A111250.P12005618579372868386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111250.P12005618579372868386

namespace A111250

/-- `lt[A016945(n), A014963(7*n+10)]` -/
def P12005618579372868386.Spec : Prop :=
  ∀ n, (P12005618579372868386.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P7812951052244339609

`lt[A047366(n+1), A014963(7*n+10)]`
-/

namespace A111250.P7812951052244339609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111250.P7812951052244339609

namespace A111250

/-- `lt[A047366(n+1), A014963(7*n+10)]` -/
def P7812951052244339609.Spec : Prop :=
  ∀ n, (P7812951052244339609.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P4527432624077600970

`lt[A258588(n+1), A014963(7*n+10)]`
-/

namespace A111250.P4527432624077600970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111250.P4527432624077600970

namespace A111250

/-- `lt[A258588(n+1), A014963(7*n+10)]` -/
def P4527432624077600970.Spec : Prop :=
  ∀ n, (P4527432624077600970.a n : ℤ) = A111250 (n + 1)

end A111250

/-! ## A111250.P5769499818728031096

`lt[A258589(n+1), A014963(7*n+10)]`
-/

namespace A111250.P5769499818728031096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A111250.P5769499818728031096

namespace A111250

/-- `lt[A258589(n+1), A014963(7*n+10)]` -/
def P5769499818728031096.Spec : Prop :=
  ∀ n, (P5769499818728031096.a n : ℤ) = A111250 (n + 1)

end A111250

/-!
# A111251: Numbers k such that 3*k^2 + 3*k + 1 is prime.

The programs for A111251, there is no canonical definition to state claims against.
-/

/-! ## A111251.P2399961303708220801

`A002504(n+1)-1`
-/

namespace A111251.P2399961303708220801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002504 (n + 1) - 1

end

end A111251.P2399961303708220801

/-! ## A111251.P15649327091781822074

`(A121259(n+1)-1)/2`
-/

namespace A111251.P15649327091781822074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121259 (n + 1) - 1 : ℚ) / 2

end

end A111251.P15649327091781822074

/-! ## A111251.P2704013044991606722

`floor(sqrt(A002407(n+1)/3))`
-/

namespace A111251.P2704013044991606722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A002407 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A111251.P2704013044991606722

/-! ## A111251.P7833029550136297729

`floor(A002640(n+1)/3)`
-/

namespace A111251.P7833029550136297729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002640 (n + 1) : ℚ) / 3⌋

end

end A111251.P7833029550136297729

/-! ## A111251.P1909621122590263828

`A002640(n+1)-A121259(n+1)`
-/

namespace A111251.P1909621122590263828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) - A121259 (n + 1)

end

end A111251.P1909621122590263828

/-! ## A111251.P2589967688746227252

`A121259(n+1)%A002504(n+1)`
-/

namespace A111251.P2589967688746227252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121259 (n + 1)) (A002504 (n + 1))

end

end A111251.P2589967688746227252

/-! ## A111251.P12814719770535370545

`A344617(A006881(n+1))+A002504(n+1)`
-/

namespace A111251.P12814719770535370545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (A006881 (n + 1)).toNat + A002504 (n + 1)

end

end A111251.P12814719770535370545

/-! ## A111251.P6250586442280365105

`comp[A257772(n+1)]`
-/

namespace A111251.P6250586442280365105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A111251.P6250586442280365105

/-! ## A111251.P8566052506562174038

`eq[1, A350090(n)]`
-/

namespace A111251.P8566052506562174038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111251.P8566052506562174038

/-! ## A111251.P10110811761482628408

`A023443(A002504(n+1))`
-/

namespace A111251.P10110811761482628408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A002504 (n + 1)).toNat

end

end A111251.P10110811761482628408

/-! ## A111251.P14937470022778566832

`lt[A350090(n), atan(A046691(n))]`
-/

namespace A111251.P14937470022778566832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A046691 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A111251.P14937470022778566832

/-! ## A111251.P3426125629790030673

`lt[A350090(n), atan(A350116(n))]`
-/

namespace A111251.P3426125629790030673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A350116 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A111251.P3426125629790030673

/-! ## A111251.P2290910964384840449

`A004524(A121259(n+1))`
-/

namespace A111251.P2290910964384840449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A121259 (n + 1)).toNat

end

end A111251.P2290910964384840449

/-! ## A111251.P2750374881673170688

`A002264(A002640(n+1))`
-/

namespace A111251.P2750374881673170688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002640 (n + 1)).toNat

end

end A111251.P2750374881673170688

/-! ## A111251.P18425912607743491448

`A008620(A002640(n+1)-2)`
-/

namespace A111251.P18425912607743491448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A002640 (n + 1) - 2).toNat

end

end A111251.P18425912607743491448

/-! ## A111251.P8535288684283459330

`A004396(A002640(n+1)-1)/2`
-/

namespace A111251.P8535288684283459330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004396 (A002640 (n + 1) - 1).toNat : ℚ) / 2

end

end A111251.P8535288684283459330

/-! ## A111251.P14588995100155280881

`A002640(n+1)-A004396(A002640(n+1)+1)`
-/

namespace A111251.P14588995100155280881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) - A004396 (A002640 (n + 1) + 1).toNat

end

end A111251.P14588995100155280881

/-! ## A111251.P9420411491842328925

`A002640(n+1)-A004523(A002640(n+1)+1)`
-/

namespace A111251.P9420411491842328925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) - A004523 (A002640 (n + 1) + 1).toNat

end

end A111251.P9420411491842328925

/-! ## A111251.P3738442520277650909

`A008615(2*A002640(n+1)+1)`
-/

namespace A111251.P3738442520277650909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A002640 (n + 1) + 1).toNat

end

end A111251.P3738442520277650909

/-! ## A111251.P9205506553134957178

`A008615(A002640(n+1)+A002640(n+1)+1)`
-/

namespace A111251.P9205506553134957178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002640 (n + 1) + (A002640 (n + 1) + 1)).toNat

end

end A111251.P9205506553134957178

/-!
# A111252: Primes p such that the difference between the closest squares surrounding p is prime.

The programs for A111252, there is no canonical definition to state claims against.
-/

/-! ## A111252.P11334405803804235328

`p?[n*A101264(floor(sqrt(n)))]`
-/

namespace A111252.P11334405803804235328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101264 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P11334405803804235328

/-! ## A111252.P11357396276309367442

`p?[n*A101808(floor(sqrt(n+1)))]`
-/

namespace A111252.P11357396276309367442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101808 (Nat.sqrt (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P11357396276309367442

/-! ## A111252.P1749608564454889410

`p?[n*A050412(A137735(n))]`
-/

namespace A111252.P1749608564454889410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050412 (A137735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P1749608564454889410

/-! ## A111252.P15809556409940501705

`p?[n*A278907(A293137(n))]`
-/

namespace A111252.P15809556409940501705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A278907 (A293137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P15809556409940501705

/-! ## A111252.P11475296385621953592

`p?[n*A001222(A001650(n+1))]`
-/

namespace A111252.P11475296385621953592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A001650 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P11475296385621953592

/-! ## A111252.P13595921786366464355

`p?[n*A050412(A000196(n+1))]`
-/

namespace A111252.P13595921786366464355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050412 (A000196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P13595921786366464355

/-! ## A111252.P10256953520623325754

`p?[n*A322865(A001650(n+2))]`
-/

namespace A111252.P10256953520623325754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322865 (A001650 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P10256953520623325754

/-! ## A111252.P3239997042285811024

`p?[n*A001222(A100795(2*n+1))]`
-/

namespace A111252.P3239997042285811024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A100795 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111252.P3239997042285811024

/-!
# A111253: a(n) is the number of ways the set {1^4, 2^4, ..., n^4} can be partitioned into two sets of equal sums.

The programs for A111253, there is no canonical definition to state claims against.
-/

/-! ## A111253.P2353704050449533774

`A158465(n+1)/2`
-/

namespace A111253.P2353704050449533774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158465 (n + 1) : ℚ) / 2

end

end A111253.P2353704050449533774

/-! ## A111253.P5740482051880951885

`A021913(n)*A369629(n+1)/2`
-/

namespace A111253.P5740482051880951885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021913 n * A369629 (n + 1) : ℚ) / 2

end

end A111253.P5740482051880951885

/-! ## A111253.P13023109933910955540

`A014682(A158465(n+1))`
-/

namespace A111253.P13023109933910955540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A158465 (n + 1)).toNat

end

end A111253.P13023109933910955540

/-! ## A111253.P4330066306737911961

`A273943(lcm(2, A158465(n+1)))`
-/

namespace A111253.P4330066306737911961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A158465 (n + 1)))

end

end A111253.P4330066306737911961

/-! ## A111253.P12745787539980106562

`A273943(A158465(n+1)%ceil(and(1, n+1)+2^(n-1)))`
-/

namespace A111253.P12745787539980106562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A158465 (n + 1)) ⌈(Nat.land 1 (n + 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A111253.P12745787539980106562

/-!
# A111254: a(n) = Prime[n+2]+Prime[n]+1.

The programs for A111254, there is no canonical definition to state claims against.
-/

/-! ## A111254.P4413981628866495173

`p?[xor(1, n)+1]+p?[2*n+5]+1`
-/

namespace A111254.P4413981628866495173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1)

end

end A111254.P4413981628866495173

/-! ## A111254.P6197041713412486480

`p?[2*n+5]+p?[round(8*n/7)]+1`
-/

namespace A111254.P6197041713412486480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)

end

end A111254.P6197041713412486480

/-! ## A111254.P15800936690756582405

`A048448(n+2)+1`
-/

namespace A111254.P15800936690756582405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) + 1

end

end A111254.P15800936690756582405

/-! ## A111254.P17676598563170973292

`A176099(n+3)+1`
-/

namespace A111254.P17676598563170973292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 3) + 1

end

end A111254.P17676598563170973292

/-! ## A111254.P13449557267713503767

`∑{p}[A090076(n+1), #]+1`
-/

namespace A111254.P13449557267713503767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1

end

end A111254.P13449557267713503767

/-! ## A111254.P12287467307290263129

`A008864(n+3)+p?[abs(xor(n, -2))]`
-/

namespace A111254.P12287467307290263129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 3) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111254.P12287467307290263129

/-! ## A111254.P17732593593705634135

`A008864(n+1)+p?[2*n+5]`
-/

namespace A111254.P17732593593705634135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A111254.P17732593593705634135

/-! ## A111254.P3310887118822646307

`p?[2*n+5]+Δ[A007504(n)]+1`
-/

namespace A111254.P3310887118822646307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (f2 (n + 1) - f2 n + 1)

end

end A111254.P3310887118822646307

/-! ## A111254.P8501599047244350919

`p?[2*n+5]+A000040(n+1)+1`
-/

namespace A111254.P8501599047244350919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (A000040 (n + 1) + 1)

end

end A111254.P8501599047244350919

/-! ## A111254.P90604276875100248

`A308602(A062839(n+2))`
-/

namespace A111254.P90604276875100248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308602 (A062839 (n + 2)).toNat

end

end A111254.P90604276875100248

/-!
# A111255: Primes in A111254.

The programs for A111255, the canonical program `A111255.P9134755311441869798` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111255 has offset 1).

The definition of A111255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111255.P14717891415779884300

`p?[A048448(n+1)+1]`
-/

namespace A111255.P14717891415779884300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P14717891415779884300

namespace A111255

/-- `p?[A048448(n+1)+1]` -/
def P14717891415779884300.Spec : Prop :=
  ∀ n, P14717891415779884300.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P2655614687262921345

`p?[2*A073273(n+1)+3]`
-/

namespace A111255.P2655614687262921345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073273 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P2655614687262921345

namespace A111255

/-- `p?[2*A073273(n+1)+3]` -/
def P2655614687262921345.Spec : Prop :=
  ∀ n, P2655614687262921345.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P10890360602138875968

`p?[A065091(n+2)+A028815(n+1)]`
-/

namespace A111255.P10890360602138875968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + A028815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P10890360602138875968

namespace A111255

/-- `p?[A065091(n+2)+A028815(n+1)]` -/
def P10890360602138875968.Spec : Prop :=
  ∀ n, P10890360602138875968.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P9134755311441869798

`p?[A008864(n+3)+A000040(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111255

/-- `p?[A008864(n+3)+A000040(n+1)]` -/
def P9134755311441869798.Spec : Prop :=
  ∀ n, P9134755311441869798.a n = A111255 (n + 1)

theorem P9134755311441869798.correct : P9134755311441869798.Spec := by
  intro n
  simp only [A111255, Nat.add_sub_cancel]

end A111255

/-! ## A111255.P5129440026386749077

`p?[A028815(n+3)+A000040(n+1)]`
-/

namespace A111255.P5129440026386749077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 3) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P5129440026386749077

namespace A111255

/-- `p?[A028815(n+3)+A000040(n+1)]` -/
def P5129440026386749077.Spec : Prop :=
  ∀ n, P5129440026386749077.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P10520491692344690111

`p?[A182986(n+4)+A008864(n+1)]`
-/

namespace A111255.P10520491692344690111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 4) + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P10520491692344690111

namespace A111255

/-- `p?[A182986(n+4)+A008864(n+1)]` -/
def P10520491692344690111.Spec : Prop :=
  ∀ n, P10520491692344690111.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P8077351195615902970

`p?[A001043(n+1)+A031165(n+1)+1]`
-/

namespace A111255.P8077351195615902970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A031165 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P8077351195615902970

namespace A111255

/-- `p?[A001043(n+1)+A031165(n+1)+1]` -/
def P8077351195615902970.Spec : Prop :=
  ∀ n, P8077351195615902970.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P2119276727575183505

`p?[A000040(n+1)+A000040(n+3)+1]`
-/

namespace A111255.P2119276727575183505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P2119276727575183505

namespace A111255

/-- `p?[A000040(n+1)+A000040(n+3)+1]` -/
def P2119276727575183505.Spec : Prop :=
  ∀ n, P2119276727575183505.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P1207233201432696171

`p?[A006093(n+3)+A008864(n+1)+1]`
-/

namespace A111255.P1207233201432696171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 3) + (A008864 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P1207233201432696171

namespace A111255

/-- `p?[A006093(n+3)+A008864(n+1)+1]` -/
def P1207233201432696171.Spec : Prop :=
  ∀ n, P1207233201432696171.a n = A111255 (n + 1)

theorem P1207233201432696171.correct : P1207233201432696171.Spec := by
  intro n
  simp only [A111255, Nat.add_sub_cancel, A111255.P1207233201432696171.f1, A111255.P1207233201432696171.a, A111255.P9134755311441869798.f1, A111255.P9134755311441869798.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111255

/-! ## A111255.P11766894039915328287

`p?[A001043(n+1)+2-A076368(n+1)]`
-/

namespace A111255.P11766894039915328287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (2 - A076368 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P11766894039915328287

namespace A111255

/-- `p?[A001043(n+1)+2-A076368(n+1)]` -/
def P11766894039915328287.Spec : Prop :=
  ∀ n, P11766894039915328287.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P61289869409091893

`p?[A028815(n+3)+A040976(n+1)+2]`
-/

namespace A111255.P61289869409091893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 3) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P61289869409091893

namespace A111255

/-- `p?[A028815(n+3)+A040976(n+1)+2]` -/
def P61289869409091893.Spec : Prop :=
  ∀ n, P61289869409091893.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P5477231059648046473

`∩[A048448(n+1)+1, A000040(n+2)]`
-/

namespace A111255.P5477231059648046473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111255.P5477231059648046473

namespace A111255

/-- `∩[A048448(n+1)+1, A000040(n+2)]` -/
def P5477231059648046473.Spec : Prop :=
  ∀ n, (P5477231059648046473.a n : ℤ) = A111255 (n + 1)

end A111255

/-! ## A111255.P17085547540000309838

`p?[A008864(n+1)+p?[A079696(n+1)]]`
-/

namespace A111255.P17085547540000309838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P17085547540000309838

namespace A111255

/-- `p?[A008864(n+1)+p?[A079696(n+1)]]` -/
def P17085547540000309838.Spec : Prop :=
  ∀ n, P17085547540000309838.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P18302085148660046701

`p?[A005408(A073273(n+1)+1)]`
-/

namespace A111255.P18302085148660046701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A073273 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P18302085148660046701

namespace A111255

/-- `p?[A005408(A073273(n+1)+1)]` -/
def P18302085148660046701.Spec : Prop :=
  ∀ n, P18302085148660046701.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P1991262888295318954

`p?[A151800(A151800(2*n+1))+A014683(2*n+1)]`
-/

namespace A111255.P1991262888295318954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (2 * n + 1)).toNat + A014683 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P1991262888295318954

namespace A111255

/-- `p?[A151800(A151800(2*n+1))+A014683(2*n+1)]` -/
def P1991262888295318954.Spec : Prop :=
  ∀ n, P1991262888295318954.a n = A111255 (n + 1)

end A111255

/-! ## A111255.P13558335847769323820

`p?[A008864(n+2)+p?[A154958(2*n)]]`
-/

namespace A111255.P13558335847769323820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 2) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111255.P13558335847769323820

namespace A111255

/-- `p?[A008864(n+2)+p?[A154958(2*n)]]` -/
def P13558335847769323820.Spec : Prop :=
  ∀ n, P13558335847769323820.a n = A111255 (n + 1)

end A111255

/-!
# A111256: a(n) = If Prime[n+2]+Prime[n]+1 is prime then Prime[n+2]+Prime[n]+1 else Prime[n+1]+Prime[n]+1.

The programs for A111256, there is no canonical definition to state claims against.
-/

/-! ## A111256.P13327916340382967255

`A184796(n+2)+A097945(A321539(n))`
-/

namespace A111256.P13327916340382967255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184796 (n + 2) + A097945 (A321539 n).toNat

end

end A111256.P13327916340382967255

/-! ## A111256.P8263795470600526756

`A099894(A303684(n+1))+A003630(n+1)`
-/

namespace A111256.P8263795470600526756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A303684 (n + 1)).toNat + A003630 (n + 1)

end

end A111256.P8263795470600526756

/-! ## A111256.P7537251909320165861

`A285976(2*(n+1))+A031298(A084745(n+2))`
-/

namespace A111256.P7537251909320165861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285976 (2 * (n + 1)) + A031298 (A084745 (n + 2)).toNat

end

end A111256.P7537251909320165861

/-! ## A111256.P13426844671094116926

`or(A092860(3*n+4), A385886(A062324(n+1)))`
-/

namespace A111256.P13426844671094116926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092860 (3 * n + 4)) (A385886 (A062324 (n + 1)).toNat)

end

end A111256.P13426844671094116926

/-!
# A111257: Primes in A111256.

The programs for A111257, there is no canonical definition to state claims against.
-/

/-! ## A111257.P9717761021323820292

`p?[A111256(n+1)]`
-/

namespace A111257.P9717761021323820292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111257.P9717761021323820292

/-! ## A111257.P16955177985358055720

`p?[record[A111256(A028920(n))]]`
-/

namespace A111257.P16955177985358055720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111257.P16955177985358055720

/-! ## A111257.P10789035611660779990

`p?[record[A111256(A100727(n))]]`
-/

namespace A111257.P10789035611660779990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111257.P10789035611660779990

/-! ## A111257.P5910147227064632404

`p?[record[A111256(A117910(n))]]`
-/

namespace A111257.P5910147227064632404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111257.P5910147227064632404

/-! ## A111257.P11153769097435588896

`record[A006530(A111256(n+2))]`
-/

namespace A111257.P11153769097435588896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111256 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111257.P11153769097435588896

/-! ## A111257.P9665722473519079089

`filter[A111256(n+1), A010051(#)]`
-/

namespace A111257.P9665722473519079089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A111257.P9665722473519079089

/-! ## A111257.P14537164618340751155

`filter[A111256(n+1), A080339(#)]`
-/

namespace A111257.P14537164618340751155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A111257.P14537164618340751155

/-! ## A111257.P4707444393210060998

`filter[A111256(n+1), A080545(#)]`
-/

namespace A111257.P4707444393210060998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A111257.P4707444393210060998

/-! ## A111257.P16761022322883640715

`filter[A111256(n+1), A171387(#)]`
-/

namespace A111257.P16761022322883640715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A111257.P16761022322883640715

/-! ## A111257.P6044342231118074331

`filter[A111256(n+1), A174897(#)]`
-/

namespace A111257.P6044342231118074331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A111257.P6044342231118074331

/-!
# A111259: Number of inequivalent codes with the minimal distance given in A066016.

The programs for A111259, there is no canonical definition to state claims against.
-/

/-! ## A111259.P13252784259348579278

`A066017(n+1)+char[7]`
-/

namespace A111259.P13252784259348579278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066017 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111259.P13252784259348579278

/-! ## A111259.P10406569609082253199

`A186747(n)+A066017(n+1)`
-/

namespace A111259.P10406569609082253199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 n + A066017 (n + 1)

end

end A111259.P10406569609082253199

/-! ## A111259.P6296978999800568710

`A316868(n)+A066017(n+1)`
-/

namespace A111259.P6296978999800568710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n + A066017 (n + 1)

end

end A111259.P6296978999800568710

/-! ## A111259.P6925809853832038612

`A339170(n)+A066017(n+1)`
-/

namespace A111259.P6925809853832038612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 n + A066017 (n + 1)

end

end A111259.P6925809853832038612

/-! ## A111259.P2534699458936377715

`A254379(∑[n])+A066017(n+1)`
-/

namespace A111259.P2534699458936377715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (∑ j ∈ Finset.range (n + 1), f1 j) + A066017 (n + 1)

end

end A111259.P2534699458936377715

/-!
# A111260: Numbers of the form (m^n)/(n^m) with m > 0 and n>1.

The programs for A111260, there is no canonical definition to state claims against.
-/

/-! ## A111260.P17950910180062945075

`record[A327939(A219964(n))]`
-/

namespace A111260.P17950910180062945075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A219964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111260.P17950910180062945075

/-! ## A111260.P4067026479122308630

`record[A327939(A329049(n))]`
-/

namespace A111260.P4067026479122308630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A329049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111260.P4067026479122308630

/-!
# A111261: Numbers of the form (m/n)^(m-n) with m >=n.

The programs for A111261, there is no canonical definition to state claims against.
-/

/-! ## A111261.P754552292456778661

`∩[A113570(n+1), A320137(n+1)]`
-/

namespace A111261.P754552292456778661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111261.P754552292456778661

/-! ## A111261.P17270758979429856212

`∩[A241010(n+1), A342009(n+1)]`
-/

namespace A111261.P17270758979429856212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111261.P17270758979429856212

/-! ## A111261.P4575611679359370337

`∩[A023898(n+1), A302602(n+1)]`
-/

namespace A111261.P4575611679359370337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111261.P4575611679359370337

/-! ## A111261.P2384893778875832144

`∩[A069167(n+1), A302602(n+1)]`
-/

namespace A111261.P2384893778875832144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111261.P2384893778875832144

/-! ## A111261.P15770197826583825885

`∩[A302602(n+1), A342009(n+1)]`
-/

namespace A111261.P15770197826583825885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111261.P15770197826583825885

/-!
# A111262: a(n) = (1/n)*Sum_{k=1..n} F(4*k)*B(2*n-2*k)*binomial(2*n,2*k), where F are Fibonacci numbers and B are Bernoulli numbers.

The programs for A111262, the canonical program `A111262.P9049594273966052254` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111262 has offset 1).

The definition of A111262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111262.P9049594273966052254

`10*a(n-1)-23*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=3, a(1)=12, a(2)=65, a(3)=403`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111262

/-- `10*a(n-1)-23*a(n-2)+10*a(n-3)-a(n-4)` -/
def P9049594273966052254.Spec : Prop :=
  ∀ n, P9049594273966052254.a n = A111262 (n + 1)

theorem P9049594273966052254.correct : P9049594273966052254.Spec := by
  intro n
  simp only [A111262, Nat.add_sub_cancel]

end A111262

/-! ## A111262.P14207656528289596933

`A162483(n)*A001519(n+1)`
-/

namespace A111262.P14207656528289596933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n * A001519 (n + 1)

end

end A111262.P14207656528289596933

namespace A111262

/-- `A162483(n)*A001519(n+1)` -/
def P14207656528289596933.Spec : Prop :=
  ∀ n, P14207656528289596933.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P2159682936803965419

`Δ[A055588(n)²]`
-/

namespace A111262.P2159682936803965419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P2159682936803965419

namespace A111262

/-- `Δ[A055588(n)²]` -/
def P2159682936803965419.Spec : Prop :=
  ∀ n, P2159682936803965419.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P6482537482412151047

`Δ[∑[A001519(n)]²]`
-/

namespace A111262.P6482537482412151047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P6482537482412151047

namespace A111262

/-- `Δ[∑[A001519(n)]²]` -/
def P6482537482412151047.Spec : Prop :=
  ∀ n, P6482537482412151047.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P799377370678492184

`Δ[(A001906(n)+1)²]`
-/

namespace A111262.P799377370678492184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001906 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P799377370678492184

namespace A111262

/-- `Δ[(A001906(n)+1)²]` -/
def P799377370678492184.Spec : Prop :=
  ∀ n, P799377370678492184.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P4729747235679545435

`Δ[(A249450(n)+3)²]`
-/

namespace A111262.P4729747235679545435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249450 n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P4729747235679545435

namespace A111262

/-- `Δ[(A249450(n)+3)²]` -/
def P4729747235679545435.Spec : Prop :=
  ∀ n, P4729747235679545435.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P15039074908061427628

`Δ[A001611(2*n)²]`
-/

namespace A111262.P15039074908061427628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P15039074908061427628

namespace A111262

/-- `Δ[A001611(2*n)²]` -/
def P15039074908061427628.Spec : Prop :=
  ∀ n, P15039074908061427628.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P1924157046703456593

`Δ[A008346(2*n)²]`
-/

namespace A111262.P1924157046703456593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P1924157046703456593

namespace A111262

/-- `Δ[A008346(2*n)²]` -/
def P1924157046703456593.Spec : Prop :=
  ∀ n, P1924157046703456593.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P3897712217233758044

`Δ[A355020(2*n)²]`
-/

namespace A111262.P3897712217233758044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P3897712217233758044

namespace A111262

/-- `Δ[A355020(2*n)²]` -/
def P3897712217233758044.Spec : Prop :=
  ∀ n, P3897712217233758044.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P2755551082165405093

`Δ[A119282(Δ[n²])²]`
-/

namespace A111262.P2755551082165405093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P2755551082165405093

namespace A111262

/-- `Δ[A119282(Δ[n²])²]` -/
def P2755551082165405093.Spec : Prop :=
  ∀ n, P2755551082165405093.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P6416589251190502576

`Δ[∑[1-A032908(n)]²]`
-/

namespace A111262.P6416589251190502576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P6416589251190502576

namespace A111262

/-- `Δ[∑[1-A032908(n)]²]` -/
def P6416589251190502576.Spec : Prop :=
  ∀ n, P6416589251190502576.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P6966710453435406635

`Δ[(1-Δ[A293066(n)])²]`
-/

namespace A111262.P6966710453435406635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293066 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f2 (n + 1) - f2 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P6966710453435406635

namespace A111262

/-- `Δ[(1-Δ[A293066(n)])²]` -/
def P6966710453435406635.Spec : Prop :=
  ∀ n, P6966710453435406635.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P5888963379390626160

`Δ[∑[A212804(2*n)]²]`
-/

namespace A111262.P5888963379390626160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P5888963379390626160

namespace A111262

/-- `Δ[∑[A212804(2*n)]²]` -/
def P5888963379390626160.Spec : Prop :=
  ∀ n, P5888963379390626160.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P14737856825219297151

`Δ[(A000045(2*n)+1)²]`
-/

namespace A111262.P14737856825219297151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P14737856825219297151

namespace A111262

/-- `Δ[(A000045(2*n)+1)²]` -/
def P14737856825219297151.Spec : Prop :=
  ∀ n, P14737856825219297151.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P3837838186141129548

`Δ[(A005013(2*n)+1)²]`
-/

namespace A111262.P3837838186141129548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005013 (2 * n) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P3837838186141129548

namespace A111262

/-- `Δ[(A005013(2*n)+1)²]` -/
def P3837838186141129548.Spec : Prop :=
  ∀ n, P3837838186141129548.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P9083087484375302760

`Δ[(A094966(2*n)+1)²]`
-/

namespace A111262.P9083087484375302760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094966 (2 * n) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P9083087484375302760

namespace A111262

/-- `Δ[(A094966(2*n)+1)²]` -/
def P9083087484375302760.Spec : Prop :=
  ∀ n, P9083087484375302760.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P5582675942764346539

`Δ[(A054452(n)+1+n)²]`
-/

namespace A111262.P5582675942764346539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054452 n + 1 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P5582675942764346539

namespace A111262

/-- `Δ[(A054452(n)+1+n)²]` -/
def P5582675942764346539.Spec : Prop :=
  ∀ n, P5582675942764346539.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P17606698032292110772

`Δ[∑[A000045(abs(1-2*n))]²]`
-/

namespace A111262.P17606698032292110772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (2 * n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111262.P17606698032292110772

namespace A111262

/-- `Δ[∑[A000045(abs(1-2*n))]²]` -/
def P17606698032292110772.Spec : Prop :=
  ∀ n, P17606698032292110772.a n = A111262 (n + 1)

end A111262

/-! ## A111262.P1655386228174912687

`A122367(n)*A162483(n)`
-/

namespace A111262.P1655386228174912687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n * A162483 n

end

end A111262.P1655386228174912687

namespace A111262

/-- `A122367(n)*A162483(n)` -/
def P1655386228174912687.Spec : Prop :=
  ∀ n, P1655386228174912687.a n = A111262 (n + 1)

end A111262

/-!
# A111263: Number of inequivalent codes with the minimal norm given in A105682.

The programs for A111263, there is no canonical definition to state claims against.
-/

/-! ## A111263.P10095675623776593906

`A066015(∏{e}[n+1, round(1/#)]+n)`
-/

namespace A111263.P10095675623776593906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066015 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)) + (n : ℤ)).toNat

end

end A111263.P10095675623776593906

/-! ## A111263.P6803633346695780600

`A105689(∏{e}[n+1, round(1/#)]+n)`
-/

namespace A111263.P6803633346695780600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105689 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ)) + (n : ℤ)).toNat

end

end A111263.P6803633346695780600

/-! ## A111263.P18285783447559731899

`A066015(A008676(n)+n)`
-/

namespace A111263.P18285783447559731899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066015 (A008676 n + (n : ℤ)).toNat

end

end A111263.P18285783447559731899

/-! ## A111263.P6862606317408898858

`A105689(A008676(n)+n)`
-/

namespace A111263.P6862606317408898858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105689 (A008676 n + (n : ℤ)).toNat

end

end A111263.P6862606317408898858

/-! ## A111263.P6046251450387740314

`A066015(A071374(n)+n)`
-/

namespace A111263.P6046251450387740314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066015 (A071374 n + (n : ℤ)).toNat

end

end A111263.P6046251450387740314

/-!
# A111268: Records in A111267.

The programs for A111268, there is no canonical definition to state claims against.
-/

/-! ## A111268.P3828719813532266463

`record[A111267(n+1)]`
-/

namespace A111268.P3828719813532266463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111268.P3828719813532266463

/-! ## A111268.P12698400455205577304

`A111267(A111084(n+1))`
-/

namespace A111268.P12698400455205577304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A111084 (n + 1)).toNat

end

end A111268.P12698400455205577304

/-! ## A111268.P8129436927691942402

`or(1, record[A111267(A028310(n))])`
-/

namespace A111268.P8129436927691942402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111268.P8129436927691942402

/-! ## A111268.P1779237881506100215

`record[A111267(A028310(n))]%A006636(n)`
-/

namespace A111268.P1779237881506100215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A006636 n)

end

end A111268.P1779237881506100215

/-! ## A111268.P14013958320837253805

`record[A111267(A028310(n))]^A054977(n)²`
-/

namespace A111268.P14013958320837253805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A111268.P14013958320837253805

/-! ## A111268.P8444359198632126704

`record[A111267(A008619(n))]%A106791(n)`
-/

namespace A111268.P8444359198632126704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A106791 n)

end

end A111268.P8444359198632126704

/-! ## A111268.P14577483870341529231

`record[∏{p}[A111267(A008619(n)), #]]`
-/

namespace A111268.P14577483870341529231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A008619 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111268.P14577483870341529231

/-!
# A111270: Records in A111229.

The programs for A111270, there is no canonical definition to state claims against.
-/

/-! ## A111270.P8765792962102245714

`record[A111229(n+1)]`
-/

namespace A111270.P8765792962102245714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111270.P8765792962102245714

/-! ## A111270.P9849227292721982085

`A111229(A111271(n+1))`
-/

namespace A111270.P9849227292721982085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A111271 (n + 1)).toNat

end

end A111270.P9849227292721982085

/-! ## A111270.P13913662734115276840

`A111229(eq[A000196(n+1), A306467(n+1)]+1)`
-/

namespace A111270.P13913662734115276840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A111270.P13913662734115276840

/-!
# A111271: Where records occur in A111229.

The programs for A111271, there is no canonical definition to state claims against.
-/

/-! ## A111271.P9172568291470254653

`A111267(A111270(n+1))`
-/

namespace A111271.P9172568291470254653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (A111270 (n + 1)).toNat

end

end A111271.P9172568291470254653

/-! ## A111271.P9734545152103177257

`A111267(record[A111229(n+1)])`
-/

namespace A111271.P9734545152103177257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111267 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111271.P9734545152103177257

/-! ## A111271.P1821238112191447226

`record[A003991(record[A140264(n)+1])]`
-/

namespace A111271.P1821238112191447226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140264 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111271.P1821238112191447226

/-! ## A111271.P5188521236812068548

`record[A109337(n+1)*A112377(n)]`
-/

namespace A111271.P5188521236812068548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109337 (n + 1) * A112377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111271.P5188521236812068548

/-! ## A111271.P15224326418382247028

`eq[A000196(n+1), A306467(n+1)]+1`
-/

namespace A111271.P15224326418382247028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A111271.P15224326418382247028

/-!
# A111272: Where n-th prime occurs in A111267.

The programs for A111272, there is no canonical definition to state claims against.
-/

/-! ## A111272.P4767093029766772479

`A111229(root(p?[round(8*n/7)]², 2))`
-/

namespace A111272.P4767093029766772479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A111272.P4767093029766772479

/-! ## A111272.P4506099898280137227

`A111229(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A111272.P4506099898280137227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A111272.P4506099898280137227

/-! ## A111272.P16946856770027435355

`A111229(Δ[A007504(n)])`
-/

namespace A111272.P16946856770027435355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (f1 (n + 1) - f1 n).toNat

end

end A111272.P16946856770027435355

/-! ## A111272.P3811115533185469975

`A111229(A000040(n+1))`
-/

namespace A111272.P3811115533185469975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A000040 (n + 1)).toNat

end

end A111272.P3811115533185469975

/-! ## A111272.P15570205118254102110

`A111229(A216883(n+1))`
-/

namespace A111272.P15570205118254102110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A216883 (n + 1)).toNat

end

end A111272.P15570205118254102110

/-! ## A111272.P16194930953109798026

`A111229(A216884(n+1))`
-/

namespace A111272.P16194930953109798026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A216884 (n + 1)).toNat

end

end A111272.P16194930953109798026

/-! ## A111272.P5553715712748168714

`A111229(A385492(n+1))`
-/

namespace A111272.P5553715712748168714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A385492 (n + 1)).toNat

end

end A111272.P5553715712748168714

/-! ## A111272.P7353177438484729967

`A111229(A008578(n+2))`
-/

namespace A111272.P7353177438484729967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A008578 (n + 2)).toNat

end

end A111272.P7353177438484729967

/-! ## A111272.P11931381761240125259

`A111229(A015919(n+2))`
-/

namespace A111272.P11931381761240125259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A015919 (n + 2)).toNat

end

end A111272.P11931381761240125259

/-!
# A111275: Number of inequivalent non-crossing partitions of n (equally spaced) points on a circle, under rotations and reflections.

The programs for A111275, there is no canonical definition to state claims against.
-/

/-! ## A111275.P4223472465860566426

`(A054357(n+1)+A001405(n+1))/2`
-/

namespace A111275.P4223472465860566426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054357 (n + 1) + A001405 (n + 1) : ℚ) / 2

end

end A111275.P4223472465860566426

/-! ## A111275.P17659082310414316921

`A037952(n)+A002995(n+2)`
-/

namespace A111275.P17659082310414316921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + A002995 (n + 2)

end

end A111275.P17659082310414316921

/-! ## A111275.P12683348987639976041

`A111276(n+1)+Δ[A036256(n)]`
-/

namespace A111275.P12683348987639976041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111276 (n + 1) + (f1 (n + 1) - f1 n)

end

end A111275.P12683348987639976041

/-! ## A111275.P6995448088537245445

`A002995(n+2)+Δ[A001405(n)]`
-/

namespace A111275.P6995448088537245445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (n + 2) + (f1 (n + 1) - f1 n)

end

end A111275.P6995448088537245445

/-! ## A111275.P2313494451495848387

`A002995(n+2)+Δ[A051920(n)]`
-/

namespace A111275.P2313494451495848387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (n + 2) + (f1 (n + 1) - f1 n)

end

end A111275.P2313494451495848387

/-!
# A111276: Number of chiral non-crossing partition patterns of n points on a circle, divided by 2.

The programs for A111276, there is no canonical definition to state claims against.
-/

/-! ## A111276.P7119052803294317010

`(A054357(n+1)-A001405(n+1))/2`
-/

namespace A111276.P7119052803294317010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054357 (n + 1) - A001405 (n + 1) : ℚ) / 2

end

end A111276.P7119052803294317010

/-! ## A111276.P3515841088992861820

`A002995(n+2)-A001405(n)`
-/

namespace A111276.P3515841088992861820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (n + 2) - A001405 n

end

end A111276.P3515841088992861820

/-! ## A111276.P6662008153409265667

`A002995(n+2)-A061554(∑[n])`
-/

namespace A111276.P6662008153409265667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (n + 2) - A061554 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111276.P6662008153409265667

/-! ## A111276.P4323081086805728602

`A002995(n+2)-A054336(∑[n])`
-/

namespace A111276.P4323081086805728602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (n + 2) - A054336 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111276.P4323081086805728602

/-! ## A111276.P2664249178420708774

`A111275(n+1)-Δ[A036256(n)]`
-/

namespace A111276.P2664249178420708774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111275 (n + 1) - (f1 (n + 1) - f1 n)

end

end A111276.P2664249178420708774

/-!
# A111277: Number of permutations avoiding the patterns {2413,4213,2431,4231,4321}; also number of permutations avoiding the patterns {3142,3412,3421,4312,4321}; number of weak sorting class based on 2413 or 3142.

The programs for A111277, the canonical program `A111277.P12980364291347629386` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111277 has offset 0).

The definition of A111277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111277.P12980364291347629386

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111277

/-- `5*a(n-1)-7*a(n-2)+3*a(n-3)` -/
def P12980364291347629386.Spec : Prop :=
  ∀ n, P12980364291347629386.a n = A111277 n

theorem P12980364291347629386.correct : P12980364291347629386.Spec := by
  intro n
  simp only [A111277]

end A111277

/-! ## A111277.P5036384765595161647

`(3^n-2*n+3)/4`
-/

namespace A111277.P5036384765595161647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (2 * n : ℤ) + 3 : ℚ) / 4

end

end A111277.P5036384765595161647

namespace A111277

/-- `(3^n-2*n+3)/4` -/
def P5036384765595161647.Spec : Prop :=
  ∀ n, P5036384765595161647.a n = (A111277 n : ℚ)

theorem P5036384765595161647.correct : P5036384765595161647.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A111277, Nat.add_sub_cancel, A111277.P5036384765595161647.a, A111277.P12980364291347629386.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A111277, Nat.add_sub_cancel, A111277.P5036384765595161647.a, A111277.P12980364291347629386.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A111277

/-! ## A111277.P2548585260501759011

`∑[ogf((1-4x+4x^2)/(1-4x+3x^2))]`
-/

namespace A111277.P2548585260501759011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111277.P2548585260501759011

namespace A111277

/-- `∑[ogf((1-4x+4x^2)/(1-4x+3x^2))]` -/
def P2548585260501759011.Spec : Prop :=
  ∀ n, P2548585260501759011.a n = A111277 n

end A111277

/-! ## A111277.P9501882125416975791

`ogf((1-4x+4x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A111277.P9501882125416975791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -5, 7, -3] n

end

end A111277.P9501882125416975791

namespace A111277

/-- `ogf((1-4x+4x^2)/(1-5x+7x^2-3x^3))` -/
def P9501882125416975791.Spec : Prop :=
  ∀ n, P9501882125416975791.a n = A111277 n

end A111277

/-! ## A111277.P9695146633779548967

`∑[3*a(n-1)+1]` with `a(0)=1, a(1)=0`
-/

namespace A111277.P9695146633779548967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111277.P9695146633779548967

namespace A111277

/-- `∑[3*a(n-1)+1]` -/
def P9695146633779548967.Spec : Prop :=
  ∀ n, (P9695146633779548967.a n : ℤ) = A111277 n

end A111277

/-! ## A111277.P15895954924368125105

`∑[lcm(3, a(n-1))+1]` with `a(0)=1, a(1)=0`
-/

namespace A111277.P15895954924368125105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.lcm 3 (f1 (n - 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111277.P15895954924368125105

namespace A111277

/-- `∑[lcm(3, a(n-1))+1]` -/
def P15895954924368125105.Spec : Prop :=
  ∀ n, (P15895954924368125105.a n : ℤ) = A111277 n

end A111277

/-! ## A111277.P5968565729922205345

`3*(a(n-1)-1)+n` with `a(0)=1`
-/

namespace A111277.P5968565729922205345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) - 1) + (n : ℤ)

end

end A111277.P5968565729922205345

namespace A111277

/-- `3*(a(n-1)-1)+n` -/
def P5968565729922205345.Spec : Prop :=
  ∀ n, P5968565729922205345.a n = A111277 n

end A111277

/-! ## A111277.P15393906482569905802

`n-3*(1-a(n-1))` with `a(0)=1`
-/

namespace A111277.P15393906482569905802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 3 * (1 - a (n - 1))

end

end A111277.P15393906482569905802

namespace A111277

/-- `n-3*(1-a(n-1))` -/
def P15393906482569905802.Spec : Prop :=
  ∀ n, P15393906482569905802.a n = A111277 n

end A111277

/-! ## A111277.P10416014355400183779

`∑[a(n-1)+3^(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A111277.P10416014355400183779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111277.P10416014355400183779

namespace A111277

/-- `∑[a(n-1)+3^(n-2)]` -/
def P10416014355400183779.Spec : Prop :=
  ∀ n, P10416014355400183779.a n = (A111277 n : ℚ)

end A111277

/-! ## A111277.P14413628018468216095

`a(n-1)-3+a(n-1)+a(n-1)+n` with `a(0)=1`
-/

namespace A111277.P14413628018468216095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 3 + (a (n - 1) + (a (n - 1) + (n : ℤ)))

end

end A111277.P14413628018468216095

namespace A111277

/-- `a(n-1)-3+a(n-1)+a(n-1)+n` -/
def P14413628018468216095.Spec : Prop :=
  ∀ n, P14413628018468216095.a n = A111277 n

end A111277

/-! ## A111277.P4514052613759443933

`a(n-1)-(3-a(n-1)-a(n-1)-n)` with `a(0)=1`
-/

namespace A111277.P4514052613759443933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (3 - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A111277.P4514052613759443933

namespace A111277

/-- `a(n-1)-(3-a(n-1)-a(n-1)-n)` -/
def P4514052613759443933.Spec : Prop :=
  ∀ n, P4514052613759443933.a n = A111277 n

end A111277

/-! ## A111277.P1259343077656516936

`A164039(n)-n`
-/

namespace A111277.P1259343077656516936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n - (n : ℤ)

end

end A111277.P1259343077656516936

namespace A111277

/-- `A164039(n)-n` -/
def P1259343077656516936.Spec : Prop :=
  ∀ n, P1259343077656516936.a n = A111277 n

end A111277

/-! ## A111277.P9704921127360871763

`∑[A124302(n)]-n`
-/

namespace A111277.P9704921127360871763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A111277.P9704921127360871763

namespace A111277

/-- `∑[A124302(n)]-n` -/
def P9704921127360871763.Spec : Prop :=
  ∀ n, P9704921127360871763.a n = A111277 n

end A111277

/-! ## A111277.P3735516643652734917

`∑[A003462(abs(1-n))]`
-/

namespace A111277.P3735516643652734917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111277.P3735516643652734917

namespace A111277

/-- `∑[A003462(abs(1-n))]` -/
def P3735516643652734917.Spec : Prop :=
  ∀ n, P3735516643652734917.a n = A111277 n

end A111277

/-! ## A111277.P8523300359824563035

`∑[(A155734(n)-1)/2]`
-/

namespace A111277.P8523300359824563035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155734 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111277.P8523300359824563035

namespace A111277

/-- `∑[(A155734(n)-1)/2]` -/
def P8523300359824563035.Spec : Prop :=
  ∀ n, P8523300359824563035.a n = (A111277 n : ℚ)

end A111277

/-! ## A111277.P9666744091046225434

`ceil((A007051(n)-n)/2)`
-/

namespace A111277.P9666744091046225434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007051 n - (n : ℤ) : ℚ) / 2⌉

end

end A111277.P9666744091046225434

namespace A111277

/-- `ceil((A007051(n)-n)/2)` -/
def P9666744091046225434.Spec : Prop :=
  ∀ n, P9666744091046225434.a n = A111277 n

end A111277

/-! ## A111277.P14271067306222704081

`A122983(n)-A004526(n)`
-/

namespace A111277.P14271067306222704081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n - A004526 n

end

end A111277.P14271067306222704081

namespace A111277

/-- `A122983(n)-A004526(n)` -/
def P14271067306222704081.Spec : Prop :=
  ∀ n, P14271067306222704081.a n = A111277 n

end A111277

/-! ## A111277.P11158319467944922946

`A153773(n+1)-A183119(n)`
-/

namespace A111277.P11158319467944922946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153773 (n + 1) - A183119 n

end

end A111277.P11158319467944922946

namespace A111277

/-- `A153773(n+1)-A183119(n)` -/
def P11158319467944922946.Spec : Prop :=
  ∀ n, P11158319467944922946.a n = A111277 n

end A111277

/-! ## A111277.P6729776406613089679

`floor(a(n-1)+3^n/6)` with `a(0)=1`
-/

namespace A111277.P6729776406613089679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (3 ^ n : ℚ) / 6⌋

end

end A111277.P6729776406613089679

namespace A111277

/-- `floor(a(n-1)+3^n/6)` -/
def P6729776406613089679.Spec : Prop :=
  ∀ n, P6729776406613089679.a n = A111277 n

end A111277

/-! ## A111277.P5228494952418295051

`A061981(n)/4+1`
-/

namespace A111277.P5228494952418295051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061981 n : ℚ) / 4 + 1

end

end A111277.P5228494952418295051

namespace A111277

/-- `A061981(n)/4+1` -/
def P5228494952418295051.Spec : Prop :=
  ∀ n, P5228494952418295051.a n = (A111277 n : ℚ)

end A111277

/-!
# A111278: Untouchable squares.

The programs for A111278, there is no canonical definition to state claims against.
-/

/-! ## A111278.P8319856021779254963

`∩[A005114(n+1), n²]`
-/

namespace A111278.P8319856021779254963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A111278.P8319856021779254963

/-! ## A111278.P1677465257387509728

`∩[n*n, A005114(n+2)]`
-/

namespace A111278.P1677465257387509728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111278.P1677465257387509728

/-! ## A111278.P1305159137158374438

`∩[A048995(n+1)+1, n²]`
-/

namespace A111278.P1305159137158374438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A111278.P1305159137158374438

/-! ## A111278.P6358962972825624926

`∩[A020725(A048995(n+1)), n²]`
-/

namespace A111278.P6358962972825624926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A048995 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A111278.P6358962972825624926

/-!
# A111279: Number of permutations avoiding the patterns {3241,3421,4321}; number of weak sorting class based on 3241.

The programs for A111279, the canonical program `A111279.P17822418939047922619` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111279 has offset 0).

The definition of A111279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111279.P17822418939047922619

`A026737((n-1)%(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A111279

/-- `A026737((n-1)%(n+1))` -/
def P17822418939047922619.Spec : Prop :=
  ∀ n, P17822418939047922619.a n = A111279 n

theorem P17822418939047922619.correct : P17822418939047922619.Spec := by
  intro n
  simp only [A111279]

end A111279

/-! ## A111279.P14769453843607723612

`A026737(round(sqrt(n²+1))-1)`
-/

namespace A111279.P14769453843607723612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026737 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A111279.P14769453843607723612

namespace A111279

/-- `A026737(round(sqrt(n²+1))-1)` -/
def P14769453843607723612.Spec : Prop :=
  ∀ n, P14769453843607723612.a n = A111279 n

end A111279

/-! ## A111279.P1213334418100200174

`A026742(n-(2-n)%(n+1))`
-/

namespace A111279.P1213334418100200174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 ((n : ℤ) - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A111279.P1213334418100200174

namespace A111279

/-- `A026742(n-(2-n)%(n+1))` -/
def P1213334418100200174.Spec : Prop :=
  ∀ n, P1213334418100200174.a n = A111279 n

end A111279

/-! ## A111279.P1291451060623105076

`A026742(A004275(n))`
-/

namespace A111279.P1291451060623105076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A004275 n).toNat

end

end A111279.P1291451060623105076

namespace A111279

/-- `A026742(A004275(n))` -/
def P1291451060623105076.Spec : Prop :=
  ∀ n, P1291451060623105076.a n = A111279 n

end A111279

/-! ## A111279.P5789905873461554727

`A026742(xor(1, A004273(n)))`
-/

namespace A111279.P5789905873461554727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (Int.xor 1 (A004273 n)).toNat

end

end A111279.P5789905873461554727

namespace A111279

/-- `A026742(xor(1, A004273(n)))` -/
def P5789905873461554727.Spec : Prop :=
  ∀ n, P5789905873461554727.a n = A111279 n

end A111279

/-! ## A111279.P15853788915327223314

`A026742(eq[1, A093178(n)])`
-/

namespace A111279.P15853788915327223314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111279.P15853788915327223314

namespace A111279

/-- `A026742(eq[1, A093178(n)])` -/
def P15853788915327223314.Spec : Prop :=
  ∀ n, P15853788915327223314.a n = A111279 n

end A111279

/-! ## A111279.P14228712271092591748

`A026742(2*(A004273(n)-n))`
-/

namespace A111279.P14228712271092591748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * (A004273 n - (n : ℤ))).toNat

end

end A111279.P14228712271092591748

namespace A111279

/-- `A026742(2*(A004273(n)-n))` -/
def P14228712271092591748.Spec : Prop :=
  ∀ n, P14228712271092591748.a n = A111279 n

end A111279

/-! ## A111279.P1117590516353843104

`A026742(2*(n-A112347(n)²))`
-/

namespace A111279.P1117590516353843104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (2 * ((n : ℤ) - A112347 n ^ 2)).toNat

end

end A111279.P1117590516353843104

namespace A111279

/-- `A026742(2*(n-A112347(n)²))` -/
def P1117590516353843104.Spec : Prop :=
  ∀ n, P1117590516353843104.a n = A111279 n

end A111279

/-! ## A111279.P14554792223971639329

`A026742(A004442(A004273(n)))`
-/

namespace A111279.P14554792223971639329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A004442 (A004273 n).toNat).toNat

end

end A111279.P14554792223971639329

namespace A111279

/-- `A026742(A004442(A004273(n)))` -/
def P14554792223971639329.Spec : Prop :=
  ∀ n, P14554792223971639329.a n = A111279 n

end A111279

/-! ## A111279.P279227042020492670

`A026742(A004442(record[A026741(n)]))`
-/

namespace A111279.P279227042020492670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A111279.P279227042020492670

namespace A111279

/-- `A026742(A004442(record[A026741(n)]))` -/
def P279227042020492670.Spec : Prop :=
  ∀ n, P279227042020492670.a n = A111279 n

end A111279

/-! ## A111279.P18125038493736338110

`A026742(A000007(n)+A004273(n)-1)`
-/

namespace A111279.P18125038493736338110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A000007 n + (A004273 n - 1)).toNat

end

end A111279.P18125038493736338110

namespace A111279

/-- `A026742(A000007(n)+A004273(n)-1)` -/
def P18125038493736338110.Spec : Prop :=
  ∀ n, P18125038493736338110.a n = A111279 n

end A111279

/-! ## A111279.P3680580885841657097

`A026742(A000007(n)-(1-A004273(n)))`
-/

namespace A111279.P3680580885841657097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026742 (A000007 n - (1 - A004273 n)).toNat

end

end A111279.P3680580885841657097

namespace A111279

/-- `A026742(A000007(n)-(1-A004273(n)))` -/
def P3680580885841657097.Spec : Prop :=
  ∀ n, P3680580885841657097.a n = A111279 n

end A111279

/-!
# A111280: Number of permutations avoiding the patterns {4231, 4321, 35142, 45312, 42513, 45132, 35412, 45213, 43512, 456123, 351624, 451623, 356124}; number of strong sorting class based on 4231.

The programs for A111280, the canonical program `A111280.P7831868417261152493` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111280 has offset 0).

The definition of A111280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111280.P7831868417261152493

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=22, a(5)=113`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111280

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-5)` -/
def P7831868417261152493.Spec : Prop :=
  ∀ n, P7831868417261152493.a n = A111280 n

theorem P7831868417261152493.correct : P7831868417261152493.Spec := by
  intro n
  simp only [A111280]

end A111280

/-! ## A111280.P17670739544493983589

`A319821(n^n)+1`
-/

namespace A111280.P17670739544493983589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319821 (n ^ n) + 1

end

end A111280.P17670739544493983589

namespace A111280

/-- `A319821(n^n)+1` -/
def P17670739544493983589.Spec : Prop :=
  ∀ n, P17670739544493983589.a n = A111280 n

end A111280

/-!
# A111281: Number of permutations avoiding the patterns {2413,2431,4213,3412,3421,4231,4321,4312}; number of strong sorting class based on 2413.

The programs for A111281, the canonical program `A111281.P9487213609210801843` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111281 has offset 0).

The definition of A111281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111281.P9487213609210801843

`3*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111281

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P9487213609210801843.Spec : Prop :=
  ∀ n, P9487213609210801843.a n = A111281 n

theorem P9487213609210801843.correct : P9487213609210801843.Spec := by
  intro n
  simp only [A111281]

end A111281

/-! ## A111281.P2502649901119098488

`ogf((1-2x+x^2)/(1-3x+2x^2-2x^3))`
-/

namespace A111281.P2502649901119098488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 2, -2] n

end

end A111281.P2502649901119098488

namespace A111281

/-- `ogf((1-2x+x^2)/(1-3x+2x^2-2x^3))` -/
def P2502649901119098488.Spec : Prop :=
  ∀ n, P2502649901119098488.a n = A111281 n

end A111281

/-! ## A111281.P94178289903183362

`a(n-1)-2*(a(n-2)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A111281.P94178289903183362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - 2 * (a (n - 2) - a (n - 1) - a (n - 3))

end

end A111281.P94178289903183362

namespace A111281

/-- `a(n-1)-2*(a(n-2)-a(n-1)-a(n-3))` -/
def P94178289903183362.Spec : Prop :=
  ∀ n, P94178289903183362.a n = A111281 n

theorem P94178289903183362.correct : P94178289903183362.Spec := by
  intro n
  simp only [A111281, Nat.add_sub_cancel, A111281.P94178289903183362.a, A111281.P9487213609210801843.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A111281

/-! ## A111281.P17252735391357604303

`Δ[A115219(n+1)/2]`
-/

namespace A111281.P17252735391357604303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115219 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111281.P17252735391357604303

namespace A111281

/-- `Δ[A115219(n+1)/2]` -/
def P17252735391357604303.Spec : Prop :=
  ∀ n, P17252735391357604303.a n = (A111281 n : ℚ)

end A111281

/-! ## A111281.P11775661007375849844

`2*A120925(n)-Δ[A120925(n)]`
-/

namespace A111281.P11775661007375849844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120925 n - (f1 (n + 1) - f1 n)

end

end A111281.P11775661007375849844

namespace A111281

/-- `2*A120925(n)-Δ[A120925(n)]` -/
def P11775661007375849844.Spec : Prop :=
  ∀ n, P11775661007375849844.a n = A111281 n

end A111281

/-! ## A111281.P13741888528603200702

`(A115219(n+2)-A115219(n+1))/2`
-/

namespace A111281.P13741888528603200702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115219 (n + 2) - A115219 (n + 1) : ℚ) / 2

end

end A111281.P13741888528603200702

namespace A111281

/-- `(A115219(n+2)-A115219(n+1))/2` -/
def P13741888528603200702.Spec : Prop :=
  ∀ n, P13741888528603200702.a n = (A111281 n : ℚ)

end A111281

/-! ## A111281.P4654509531117340641

`A020709(n)-A020709(n+3)%A020709(n+1)`
-/

namespace A111281.P4654509531117340641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020709 n - Int.tmod (A020709 (n + 3)) (A020709 (n + 1))

end

end A111281.P4654509531117340641

namespace A111281

/-- `A020709(n)-A020709(n+3)%A020709(n+1)` -/
def P4654509531117340641.Spec : Prop :=
  ∀ n, P4654509531117340641.a n = A111281 n

end A111281

/-!
# A111282: Number of permutations avoiding the patterns {1432,2431,3412,3421,4132,4231,4312,4321}; number of strong sorting class based on 1432.

The programs for A111282, the canonical program `A111282.P8020910357550751149` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111282 has offset 1).

The definition of A111282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111282.P8020910357550751149

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111282

/-- `3*a(n-1)-a(n-2)` -/
def P8020910357550751149.Spec : Prop :=
  ∀ n, P8020910357550751149.a n = A111282 (n + 1)

theorem P8020910357550751149.correct : P8020910357550751149.Spec := by
  intro n
  simp only [A111282, Nat.add_sub_cancel]

end A111282

/-! ## A111282.P8407206938736532380

`ogf((1-x+x^2)/(1-3x+x^2))`
-/

namespace A111282.P8407206938736532380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -3, 1] n

end

end A111282.P8407206938736532380

namespace A111282

/-- `ogf((1-x+x^2)/(1-3x+x^2))` -/
def P8407206938736532380.Spec : Prop :=
  ∀ n, P8407206938736532380.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P15908415812364679715

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A111282.P15908415812364679715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A111282.P15908415812364679715

namespace A111282

/-- `ceil(ϕ²*a(n-1))` -/
def P15908415812364679715.Spec : Prop :=
  ∀ n, P15908415812364679715.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P3473577621919477271

`ceil(a(n-1)/(2-ϕ))` with `a(0)=1, a(1)=2`
-/

namespace A111282.P3473577621919477271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A111282.P3473577621919477271

namespace A111282

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P3473577621919477271.Spec : Prop :=
  ∀ n, P3473577621919477271.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P1813725455502963662

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A111282.P1813725455502963662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A111282.P1813725455502963662

namespace A111282

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P1813725455502963662.Spec : Prop :=
  ∀ n, P1813725455502963662.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P5107704625084304979

`A055389(2*n)`
-/

namespace A111282.P5107704625084304979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (2 * n)

end

end A111282.P5107704625084304979

namespace A111282

/-- `A055389(2*n)` -/
def P5107704625084304979.Spec : Prop :=
  ∀ n, P5107704625084304979.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P13982655457499412969

`A163733(2*(n+1))`
-/

namespace A111282.P13982655457499412969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (2 * (n + 1))

end

end A111282.P13982655457499412969

namespace A111282

/-- `A163733(2*(n+1))` -/
def P13982655457499412969.Spec : Prop :=
  ∀ n, P13982655457499412969.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P17392994372369198256

`A173388(4*n+1)`
-/

namespace A111282.P17392994372369198256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (4 * n + 1)

end

end A111282.P17392994372369198256

namespace A111282

/-- `A173388(4*n+1)` -/
def P17392994372369198256.Spec : Prop :=
  ∀ n, P17392994372369198256.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P4380524152926940104

`record[Δ[A098054(2*n)]]`
-/

namespace A111282.P4380524152926940104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111282.P4380524152926940104

namespace A111282

/-- `record[Δ[A098054(2*n)]]` -/
def P4380524152926940104.Spec : Prop :=
  ∀ n, P4380524152926940104.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P9522834417656072607

`record[A118658(n)/gcd(2, n)]`
-/

namespace A111282.P9522834417656072607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111282.P9522834417656072607

namespace A111282

/-- `record[A118658(n)/gcd(2, n)]` -/
def P9522834417656072607.Spec : Prop :=
  ∀ n, P9522834417656072607.a n = (A111282 (n + 1) : ℚ)

end A111282

/-! ## A111282.P1777287453995589909

`A052995(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A111282.P1777287453995589909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A052995 n + a (n - 1)

end

end A111282.P1777287453995589909

namespace A111282

/-- `A052995(n)+a(n-1)` -/
def P1777287453995589909.Spec : Prop :=
  ∀ n, P1777287453995589909.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P5701525962326340464

`A055819(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A111282.P5701525962326340464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A055819 n + a (n - 1)

end

end A111282.P5701525962326340464

namespace A111282

/-- `A055819(n)+a(n-1)` -/
def P5701525962326340464.Spec : Prop :=
  ∀ n, P5701525962326340464.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P8633418712015614213

`floor(2/ϕ*A000045(Δ[n²]))`
-/

namespace A111282.P8633418712015614213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.goldenRatio * (A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌋

end

end A111282.P8633418712015614213

namespace A111282

/-- `floor(2/ϕ*A000045(Δ[n²]))` -/
def P8633418712015614213.Spec : Prop :=
  ∀ n, P8633418712015614213.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P3903312484514191992

`floor(2*Δ[A000045(2*n)/ϕ])`
-/

namespace A111282.P3903312484514191992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (f1 (n + 1) - f1 n)⌋

end

end A111282.P3903312484514191992

namespace A111282

/-- `floor(2*Δ[A000045(2*n)/ϕ])` -/
def P3903312484514191992.Spec : Prop :=
  ∀ n, P3903312484514191992.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P15430216113730685260

`floor(2*A000045(2*n+1)/ϕ)`
-/

namespace A111282.P15430216113730685260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A000045 (2 * n + 1) : ℝ) / Real.goldenRatio)⌋

end

end A111282.P15430216113730685260

namespace A111282

/-- `floor(2*A000045(2*n+1)/ϕ)` -/
def P15430216113730685260.Spec : Prop :=
  ∀ n, P15430216113730685260.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P8294629922271531403

`floor(A000032(2*n)/(ϕ-1/2))`
-/

namespace A111282.P8294629922271531403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (2 * n) : ℝ) / (Real.goldenRatio - ((1 : ℚ) / 2 : ℝ))⌋

end

end A111282.P8294629922271531403

namespace A111282

/-- `floor(A000032(2*n)/(ϕ-1/2))` -/
def P8294629922271531403.Spec : Prop :=
  ∀ n, P8294629922271531403.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P15694875401747314416

`A062114(A004277(n))`
-/

namespace A111282.P15694875401747314416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (A004277 n).toNat

end

end A111282.P15694875401747314416

namespace A111282

/-- `A062114(A004277(n))` -/
def P15694875401747314416.Spec : Prop :=
  ∀ n, P15694875401747314416.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P9591953914932403569

`A006355(A130773(n))`
-/

namespace A111282.P9591953914932403569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A130773 n).toNat

end

end A111282.P9591953914932403569

namespace A111282

/-- `A006355(A130773(n))` -/
def P9591953914932403569.Spec : Prop :=
  ∀ n, P9591953914932403569.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P10525048055397867286

`A062114(A004275(n+1))`
-/

namespace A111282.P10525048055397867286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 (A004275 (n + 1)).toNat

end

end A111282.P10525048055397867286

namespace A111282

/-- `A062114(A004275(n+1))` -/
def P10525048055397867286.Spec : Prop :=
  ∀ n, P10525048055397867286.a n = A111282 (n + 1)

end A111282

/-! ## A111282.P6317371281362322451

`A006355(A103517(n)-1)`
-/

namespace A111282.P6317371281362322451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A103517 n - 1).toNat

end

end A111282.P6317371281362322451

namespace A111282

/-- `A006355(A103517(n)-1)` -/
def P6317371281362322451.Spec : Prop :=
  ∀ n, P6317371281362322451.a n = A111282 (n + 1)

end A111282

/-!
# A111283: Number of permutations avoiding the patterns {4321, 45132, 45231, 35412, 53412, 45213, 43512, 45312, 456123, 451623, 356124}; number of strong sorting class based on 4321.

The programs for A111283, the canonical program `A111283.P5070522368900749271` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111283 has offset 0).

The definition of A111283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111283.P5070522368900749271

`4*a(n-1)+a(n-2)+a(n-3)-4` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111283

/-- `4*a(n-1)+a(n-2)+a(n-3)-4` -/
def P5070522368900749271.Spec : Prop :=
  ∀ n, P5070522368900749271.a n = A111283 n

theorem P5070522368900749271.correct : P5070522368900749271.Spec := by
  intro n
  simp only [A111283]

end A111283

/-! ## A111283.P6912170184517291451

`5*a(n-1)-3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A111283.P6912170184517291451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) - a (n - 4)

end

end A111283.P6912170184517291451

namespace A111283

/-- `5*a(n-1)-3*a(n-2)-a(n-4)` -/
def P6912170184517291451.Spec : Prop :=
  ∀ n, P6912170184517291451.a n = A111283 n

end A111283

/-! ## A111283.P18238349428453547060

`ogf((1-4x-x^3)/(1-5x+3x^2+x^4))`
-/

namespace A111283.P18238349428453547060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 0, -1] [1, -5, 3, 0, 1] n

end

end A111283.P18238349428453547060

namespace A111283

/-- `ogf((1-4x-x^3)/(1-5x+3x^2+x^4))` -/
def P18238349428453547060.Spec : Prop :=
  ∀ n, P18238349428453547060.a n = A111283 n

end A111283

/-!
# A111284: Number of permutations of [n] avoiding the patterns {2143, 2341, 2413, 2431, 3142, 3241, 3412, 3421, 4123, 4213, 4231, 4321, 4132, 4312}; number of strong sorting classes based on 2143.

The programs for A111284, the canonical program `A111284.P17476789545775434546` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111284 has offset 1).

The definition of A111284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111284.P17476789545775434546

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111284

/-- `2*a(n-1)-a(n-2)` -/
def P17476789545775434546.Spec : Prop :=
  ∀ n, P17476789545775434546.a n = A111284 (n + 1)

theorem P17476789545775434546.correct : P17476789545775434546.Spec := by
  intro n
  simp only [A111284, Nat.add_sub_cancel]

end A111284

/-!
# A111285: Number of permutations avoiding the patterns {2431, 3421, 4231, 4321, 24513, 42513, 34512, 43512}; number of strong sorting class based on 2431.

The programs for A111285, the canonical program `A111285.P228850751878771293` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111285 has offset 0).

The definition of A111285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111285.P228850751878771293

`4*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111285

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P228850751878771293.Spec : Prop :=
  ∀ n, P228850751878771293.a n = A111285 n

theorem P228850751878771293.correct : P228850751878771293.Spec := by
  intro n
  simp only [A111285]

end A111285

/-! ## A111285.P14694904368637842681

`ogf((1-3x+x^2-x^3)/(1-4x+3x^2-2x^3))`
-/

namespace A111285.P14694904368637842681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1, -1] [1, -4, 3, -2] n

end

end A111285.P14694904368637842681

namespace A111285

/-- `ogf((1-3x+x^2-x^3)/(1-4x+3x^2-2x^3))` -/
def P14694904368637842681.Spec : Prop :=
  ∀ n, P14694904368637842681.a n = A111285 n

end A111285

/-! ## A111285.P18377001392067500569

`A054404(n*(a(n-1)+2^(n-1)))` with `a(0)=1`
-/

namespace A111285.P18377001392067500569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054404 (SequenceMachineLib.roundAway ((n : ℚ) * ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))).toNat

end

end A111285.P18377001392067500569

namespace A111285

/-- `A054404(n*(a(n-1)+2^(n-1)))` -/
def P18377001392067500569.Spec : Prop :=
  ∀ n, P18377001392067500569.a n = A111285 n

end A111285

/-!
# A111286: Number of permutations avoiding the patterns {1342, 1432, 2341, 2431, 3142, 3241, 3412, 3421, 4132, 4231, 4312, 4321}; number of strong sorting class based on 1342.

The programs for A111286, the canonical program `A111286.P3549598627187142190` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111286 has offset 0).

The definition of A111286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111286.P3549598627187142190

`2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111286

/-- `2*a(n-1)` -/
def P3549598627187142190.Spec : Prop :=
  ∀ n, (P3549598627187142190.a n : ℤ) = A111286 n

theorem P3549598627187142190.correct : P3549598627187142190.Spec := by
  intro n
  simp only [A111286]

end A111286

/-! ## A111286.P9875465071562428914

`ogf((1-x+2x^3)/(1-2x))`
-/

namespace A111286.P9875465071562428914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 2] [1, -2] n

end

end A111286.P9875465071562428914

namespace A111286

/-- `ogf((1-x+2x^3)/(1-2x))` -/
def P9875465071562428914.Spec : Prop :=
  ∀ n, P9875465071562428914.a n = A111286 n

end A111286

/-! ## A111286.P15885079763533040219

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A111286.P15885079763533040219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  a (n - 1) + a (n - 1)

end

end A111286.P15885079763533040219

namespace A111286

/-- `a(n-1)+a(n-1)` -/
def P15885079763533040219.Spec : Prop :=
  ∀ n, (P15885079763533040219.a n : ℤ) = A111286 n

theorem P15885079763533040219.correct : P15885079763533040219.Spec := by
  intro n
  simp only [A111286, Nat.add_sub_cancel, A111286.P15885079763533040219.a, A111286.P3549598627187142190.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A111286

/-! ## A111286.P3864261745861552299

`2-(2%a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A111286.P3864261745861552299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 - (Int.tmod 2 (a (n - 1)) - a (n - 1) - a (n - 1))

end

end A111286.P3864261745861552299

namespace A111286

/-- `2-(2%a(n-1)-a(n-1)-a(n-1))` -/
def P3864261745861552299.Spec : Prop :=
  ∀ n, P3864261745861552299.a n = A111286 n

end A111286

/-! ## A111286.P1541697044828161158

`floor(a(n-1)-(2/(1-a(n-1))-a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A111286.P1541697044828161158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) - (2 / (1 - a (n - 1) : ℚ) - (a (n - 1) : ℚ))⌋

end

end A111286.P1541697044828161158

namespace A111286

/-- `floor(a(n-1)-(2/(1-a(n-1))-a(n-1)))` -/
def P1541697044828161158.Spec : Prop :=
  ∀ n, P1541697044828161158.a n = A111286 n

end A111286

/-! ## A111286.P1574678107238387240

`A122391(n+1)-char[2]`
-/

namespace A111286.P1574678107238387240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111286.P1574678107238387240

namespace A111286

/-- `A122391(n+1)-char[2]` -/
def P1574678107238387240.Spec : Prop :=
  ∀ n, P1574678107238387240.a n = A111286 n

end A111286

/-! ## A111286.P11805974389570106591

`A074323(A092535(n))`
-/

namespace A111286.P11805974389570106591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A092535 n).toNat

end

end A111286.P11805974389570106591

namespace A111286

/-- `A074323(A092535(n))` -/
def P11805974389570106591.Spec : Prop :=
  ∀ n, P11805974389570106591.a n = A111286 n

end A111286

/-! ## A111286.P12726450161524521130

`A074323(A058992(n+1))`
-/

namespace A111286.P12726450161524521130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A058992 (n + 1)).toNat

end

end A111286.P12726450161524521130

namespace A111286

/-- `A074323(A058992(n+1))` -/
def P12726450161524521130.Spec : Prop :=
  ∀ n, P12726450161524521130.a n = A111286 n

end A111286

/-! ## A111286.P16233826437931035456

`A098011(A329683(n)+n)`
-/

namespace A111286.P16233826437931035456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (A329683 n + (n : ℤ)).toNat

end

end A111286.P16233826437931035456

namespace A111286

/-- `A098011(A329683(n)+n)` -/
def P16233826437931035456.Spec : Prop :=
  ∀ n, P16233826437931035456.a n = A111286 n

end A111286

/-! ## A111286.P5774750617957676257

`A003945(n)-A087009(n+1)`
-/

namespace A111286.P5774750617957676257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A087009 (n + 1)

end

end A111286.P5774750617957676257

namespace A111286

/-- `A003945(n)-A087009(n+1)` -/
def P5774750617957676257.Spec : Prop :=
  ∀ n, P5774750617957676257.a n = A111286 n

end A111286

/-! ## A111286.P17890611876660995121

`lcm(A098011(n+1), A141531(n))`
-/

namespace A111286.P17890611876660995121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098011 (n + 1)) (A141531 n)

end

end A111286.P17890611876660995121

namespace A111286

/-- `lcm(A098011(n+1), A141531(n))` -/
def P17890611876660995121.Spec : Prop :=
  ∀ n, (P17890611876660995121.a n : ℤ) = A111286 n

end A111286

/-! ## A111286.P4980284322839242631

`and(A125176(n+1), A140253(n))`
-/

namespace A111286.P4980284322839242631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125176 (n + 1)) (A140253 n)

end

end A111286.P4980284322839242631

namespace A111286

/-- `and(A125176(n+1), A140253(n))` -/
def P4980284322839242631.Spec : Prop :=
  ∀ n, P4980284322839242631.a n = A111286 n

end A111286

/-! ## A111286.P12431077879818376373

`Δ[A147758(n+1)/2]`
-/

namespace A111286.P12431077879818376373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147758 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111286.P12431077879818376373

namespace A111286

/-- `Δ[A147758(n+1)/2]` -/
def P12431077879818376373.Spec : Prop :=
  ∀ n, P12431077879818376373.a n = (A111286 n : ℚ)

end A111286

/-! ## A111286.P976012695014208120

`and(A125176(n+1), A322417(n))`
-/

namespace A111286.P976012695014208120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125176 (n + 1)) (A322417 n)

end

end A111286.P976012695014208120

namespace A111286

/-- `and(A125176(n+1), A322417(n))` -/
def P976012695014208120.Spec : Prop :=
  ∀ n, P976012695014208120.a n = A111286 n

end A111286

/-! ## A111286.P11726134179014566298

`A167667(n)/(A130779(n)+A005843(n))`
-/

namespace A111286.P11726134179014566298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167667 n : ℚ) / (A130779 n + A005843 n : ℚ)

end

end A111286.P11726134179014566298

namespace A111286

/-- `A167667(n)/(A130779(n)+A005843(n))` -/
def P11726134179014566298.Spec : Prop :=
  ∀ n, P11726134179014566298.a n = (A111286 n : ℚ)

end A111286

/-! ## A111286.P8102176521370130879

`A118416(A022856(n+2))`
-/

namespace A111286.P8102176521370130879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118416 (A022856 (n + 2)).toNat

end

end A111286.P8102176521370130879

namespace A111286

/-- `A118416(A022856(n+2))` -/
def P8102176521370130879.Spec : Prop :=
  ∀ n, P8102176521370130879.a n = A111286 n

end A111286

/-!
# A111287: a(n) = smallest k such that prime(n) divides Sum_{i=1..k} prime(i).

The programs for A111287, there is no canonical definition to state claims against.
-/

/-! ## A111287.P1621526850206132068

`A053050(Δ[A007504(n)])`
-/

namespace A111287.P1621526850206132068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (f1 (n + 1) - f1 n).toNat

end

end A111287.P1621526850206132068

/-! ## A111287.P10990655678782122684

`A053050(A000040(n+1))`
-/

namespace A111287.P10990655678782122684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A000040 (n + 1)).toNat

end

end A111287.P10990655678782122684

/-! ## A111287.P556841022681701878

`A053050(A006005(n+1))`
-/

namespace A111287.P556841022681701878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A006005 (n + 1)).toNat

end

end A111287.P556841022681701878

/-! ## A111287.P5689899672528015066

`A053050(A008578(n+2))`
-/

namespace A111287.P5689899672528015066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A008578 (n + 2)).toNat

end

end A111287.P5689899672528015066

/-! ## A111287.P3178035462379573032

`A053050(A075643(n+2))`
-/

namespace A111287.P3178035462379573032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A075643 (n + 2)).toNat

end

end A111287.P3178035462379573032

/-! ## A111287.P6006406974343821020

`A053050(A182986(n+2))`
-/

namespace A111287.P6006406974343821020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A182986 (n + 2)).toNat

end

end A111287.P6006406974343821020

/-! ## A111287.P382210444283841535

`A053050(record[A006530(n+2)])`
-/

namespace A111287.P382210444283841535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111287.P382210444283841535

/-! ## A111287.P11966132545034300961

`A053050(record[A020639(n+2)])`
-/

namespace A111287.P11966132545034300961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111287.P11966132545034300961

/-! ## A111287.P13970358907343667117

`A053050(A007504(n+1)-A007504(n))`
-/

namespace A111287.P13970358907343667117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A007504 (n + 1) - A007504 n).toNat

end

end A111287.P13970358907343667117

/-! ## A111287.P5674833668386257640

`A053050(record[A014963(n+2)])`
-/

namespace A111287.P5674833668386257640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A111287.P5674833668386257640

/-!
# A111288: a(1) = a(2) = a(3) = a(4) = 1. For n>= 5, a(n) = a(n-1)*a(n-3) + a(n-2)*a(n-4).

The programs for A111288, the canonical program `A111288.P1819010888441963432` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111288 has offset 1).

The definition of A111288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)+a(n-2)*a(n-4)` (program `A111288.P1819010888441963432`, by `A111288.P1819010888441963432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111288.P1819010888441963432

`a(n-1)*a(n-3)+a(n-2)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111288

/-- `a(n-1)*a(n-3)+a(n-2)*a(n-4)` -/
def P1819010888441963432.Spec : Prop :=
  ∀ n, (P1819010888441963432.a n : ℤ) = A111288 (n + 1)

theorem P1819010888441963432.correct : P1819010888441963432.Spec := by
  intro n
  simp only [A111288, Nat.add_sub_cancel]

end A111288

/-! ## A111288.P7475834816114335832

`A185317(∑[ceil(floor(n²/2)/3)])`
-/

namespace A111288.P7475834816114335832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(n ^ 2 : ℚ) / 2⌋ : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111288.P7475834816114335832

namespace A111288

/-- `A185317(∑[ceil(floor(n²/2)/3)])` -/
def P7475834816114335832.Spec : Prop :=
  ∀ n, P7475834816114335832.a n = A111288 (n + 1)

end A111288

/-! ## A111288.P9461147475937368743

`A241551(a(floor(n²/10))+n)` with `a(0)=1, a(1)=1`
-/

namespace A111288.P9461147475937368743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A241551 (a ⌊(n ^ 2 : ℚ) / 10⌋.toNat + (n : ℤ)).toNat

end

end A111288.P9461147475937368743

namespace A111288

/-- `A241551(a(floor(n²/10))+n)` -/
def P9461147475937368743.Spec : Prop :=
  ∀ n, P9461147475937368743.a n = A111288 (n + 1)

end A111288

/-! ## A111288.P4484735033198495492

`A010434(2*a(n-1)-a(n-4))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A111288.P4484735033198495492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  A010434 (2 * a (n - 1) - a (n - 4)).toNat + 1

end

end A111288.P4484735033198495492

namespace A111288

/-- `A010434(2*a(n-1)-a(n-4))+1` -/
def P4484735033198495492.Spec : Prop :=
  ∀ n, P4484735033198495492.a n = A111288 (n + 1)

end A111288

/-! ## A111288.P7223600360414575197

`A155900(A000048(n))`
-/

namespace A111288.P7223600360414575197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155900 (A000048 n).toNat

end

end A111288.P7223600360414575197

namespace A111288

/-- `A155900(A000048(n))` -/
def P7223600360414575197.Spec : Prop :=
  ∀ n, P7223600360414575197.a n = A111288 (n + 1)

end A111288

/-!
# A111289: a(1) = a(2) = a(3) = a(4) = 1. For n>= 5, a(n) = a(n-1)*a(n-4) + a(n-2)*a(n-3).

The programs for A111289, the canonical program `A111289.P10466366114857150639` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111289 has offset 1).

The definition of A111289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-4)+a(n-2)*a(n-3)` (program `A111289.P10466366114857150639`, by `A111289.P10466366114857150639.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A111289.P10466366114857150639

`a(n-1)*a(n-4)+a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A111289

/-- `a(n-1)*a(n-4)+a(n-2)*a(n-3)` -/
def P10466366114857150639.Spec : Prop :=
  ∀ n, (P10466366114857150639.a n : ℤ) = A111289 (n + 1)

theorem P10466366114857150639.correct : P10466366114857150639.Spec := by
  intro n
  simp only [A111289, Nat.add_sub_cancel]

end A111289

/-! ## A111289.P13195790143808917170

`A002375(A078495(2*n)+1)+1`
-/

namespace A111289.P13195790143808917170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A078495 (2 * n) + 1).toNat + 1

end

end A111289.P13195790143808917170

namespace A111289

/-- `A002375(A078495(2*n)+1)+1` -/
def P13195790143808917170.Spec : Prop :=
  ∀ n, P13195790143808917170.a n = A111289 (n + 1)

end A111289

/-! ## A111289.P10283936821397378621

`A006721(n+1)*A055229(A018028(n))`
-/

namespace A111289.P10283936821397378621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 (n + 1) * A055229 (A018028 n).toNat

end

end A111289.P10283936821397378621

namespace A111289

/-- `A006721(n+1)*A055229(A018028(n))` -/
def P10283936821397378621.Spec : Prop :=
  ∀ n, P10283936821397378621.a n = A111289 (n + 1)

end A111289

/-! ## A111289.P3951591136276105907

`A006721(n+1)*A006721(A324089(n+1))`
-/

namespace A111289.P3951591136276105907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 (n + 1) * A006721 (A324089 (n + 1)).toNat

end

end A111289.P3951591136276105907

namespace A111289

/-- `A006721(n+1)*A006721(A324089(n+1))` -/
def P3951591136276105907.Spec : Prop :=
  ∀ n, P3951591136276105907.a n = A111289 (n + 1)

end A111289

/-! ## A111289.P9728834456021055181

`A006721(n+1)*A026792(A107597(n+3))`
-/

namespace A111289.P9728834456021055181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 (n + 1) * A026792 (A107597 (n + 3)).toNat

end

end A111289.P9728834456021055181

namespace A111289

/-- `A006721(n+1)*A026792(A107597(n+3))` -/
def P9728834456021055181.Spec : Prop :=
  ∀ n, P9728834456021055181.a n = A111289 (n + 1)

end A111289

/-!
# A111290: a(1)=1, a(n) = n + (sum of distinct primes dividing a(n-1)).

The programs for A111290, the canonical program `A111290.P9757641411941966186` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111290 has offset 1).

The definition of A111290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111290.P9757641411941966186

`A074372(a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111290

/-- `A074372(a(n-1))+n` -/
def P9757641411941966186.Spec : Prop :=
  ∀ n, P9757641411941966186.a n = A111290 (n + 1)

theorem P9757641411941966186.correct : P9757641411941966186.Spec := by
  intro n
  simp only [A111290, Nat.add_sub_cancel]

end A111290

/-! ## A111290.P7883475230585730758

`A008472(a(n-1))+1+n` with `a(0)=1`
-/

namespace A111290.P7883475230585730758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008472 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A111290.P7883475230585730758

namespace A111290

/-- `A008472(a(n-1))+1+n` -/
def P7883475230585730758.Spec : Prop :=
  ∀ n, P7883475230585730758.a n = A111290 (n + 1)

theorem P7883475230585730758.correct : P7883475230585730758.Spec := by
  intro n
  simp only [A111290, Nat.add_sub_cancel, A111290.P7883475230585730758.a, A111290.P9757641411941966186.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A111290

/-! ## A111290.P13504067924798089692

`A008472(a(A023443(n)))+n+1` with `a(0)=1`
-/

namespace A111290.P13504067924798089692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008472 (a (A023443 n).toNat).toNat + (n + 1 : ℤ)

end

end A111290.P13504067924798089692

namespace A111290

/-- `A008472(a(A023443(n)))+n+1` -/
def P13504067924798089692.Spec : Prop :=
  ∀ n, P13504067924798089692.a n = A111290 (n + 1)

end A111290

/-! ## A111290.P8243005976186420256

`A345266(a(n-1)²)+1+n` with `a(0)=1`
-/

namespace A111290.P8243005976186420256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345266 (a (n - 1) ^ 2).toNat + 1 + (n : ℤ)

end

end A111290.P8243005976186420256

namespace A111290

/-- `A345266(a(n-1)²)+1+n` -/
def P8243005976186420256.Spec : Prop :=
  ∀ n, P8243005976186420256.a n = A111290 (n + 1)

end A111290

/-! ## A111290.P3412878030960904610

`A345266(a(n-1)²)-(n-A005408(n))` with `a(0)=1`
-/

namespace A111290.P3412878030960904610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A345266 (a (n - 1) ^ 2).toNat - ((n : ℤ) - A005408 n)

end

end A111290.P3412878030960904610

namespace A111290

/-- `A345266(a(n-1)²)-(n-A005408(n))` -/
def P3412878030960904610.Spec : Prop :=
  ∀ n, P3412878030960904610.a n = A111290 (n + 1)

end A111290

/-! ## A111290.P3758970010010042179

`A063958(a(n-1)²)+n+1` with `a(0)=1`
-/

namespace A111290.P3758970010010042179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063958 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A111290.P3758970010010042179

namespace A111290

/-- `A063958(a(n-1)²)+n+1` -/
def P3758970010010042179.Spec : Prop :=
  ∀ n, P3758970010010042179.a n = A111290 (n + 1)

end A111290

/-!
# A111291: Number of refactorable numbers (A033950) <= 10^n.

The programs for A111291, there is no canonical definition to state claims against.
-/

/-! ## A111291.P12818340581110547511

`A208251(10^n)`
-/

namespace A111291.P12818340581110547511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (10 ^ n)

end

end A111291.P12818340581110547511

/-!
# A111292: Numbers n such that 6*n^2 + 6*n + 1 is prime.

The programs for A111292, there is no canonical definition to state claims against.
-/

/-! ## A111292.P12224536131046580807

`A184899(n+1)-1`
-/

namespace A111292.P12224536131046580807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184899 (n + 1) - 1

end

end A111292.P12224536131046580807

/-! ## A111292.P15888429627532716165

`A001478(n+1)+A184899(n+1)+n`
-/

namespace A111292.P15888429627532716165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A184899 (n + 1) + (n : ℤ))

end

end A111292.P15888429627532716165

/-! ## A111292.P2974344694504362605

`A295304(A230201(n+1))+A184899(n+1)`
-/

namespace A111292.P2974344694504362605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A230201 (n + 1)).toNat + A184899 (n + 1)

end

end A111292.P2974344694504362605

/-! ## A111292.P390119742697522168

`A307428(A006530(n+2))+A184899(n+1)`
-/

namespace A111292.P390119742697522168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A006530 (n + 2)).toNat + A184899 (n + 1)

end

end A111292.P390119742697522168

/-! ## A111292.P659900522923040916

`A305255(A328479(2*n+1))+A184899(n+1)`
-/

namespace A111292.P659900522923040916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305255 (A328479 (2 * n + 1)).toNat + A184899 (n + 1)

end

end A111292.P659900522923040916

/-! ## A111292.P7646021438594449788

`A083577(n+1)%A004273(A184899(n+1))`
-/

namespace A111292.P7646021438594449788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083577 (n + 1)) (A004273 (A184899 (n + 1)).toNat)

end

end A111292.P7646021438594449788

/-! ## A111292.P14927985231191725505

`A023443(A184899(n+1))`
-/

namespace A111292.P14927985231191725505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184899 (n + 1)).toNat

end

end A111292.P14927985231191725505

/-! ## A111292.P5851052378228664247

`A023446(A184899(n+1)+3)`
-/

namespace A111292.P5851052378228664247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A184899 (n + 1) + 3).toNat

end

end A111292.P5851052378228664247

/-! ## A111292.P4950806328887535057

`A325970(A045344(n+2))+A184899(n+1)`
-/

namespace A111292.P4950806328887535057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A045344 (n + 2)).toNat + A184899 (n + 1)

end

end A111292.P4950806328887535057

/-! ## A111292.P8805381057291198090

`A325970(A001359(n+1))+A184899(n+1)`
-/

namespace A111292.P8805381057291198090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A001359 (n + 1)).toNat + A184899 (n + 1)

end

end A111292.P8805381057291198090

/-! ## A111292.P6230579739815075127

`eq[1, ∑{e}[A322462(2*n+1), #]]`
-/

namespace A111292.P6230579739815075127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322462 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111292.P6230579739815075127

/-! ## A111292.P10611799883103020969

`A295304(A058198(n+1))+A184899(n+1)`
-/

namespace A111292.P10611799883103020969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A058198 (n + 1)).toNat + A184899 (n + 1)

end

end A111292.P10611799883103020969

/-!
# A111294: Numbers n such that 23*n + 2 is prime.

The programs for A111294, there is no canonical definition to state claims against.
-/

/-! ## A111294.P4069119449906528437

`floor(A141908(n+1)/23)`
-/

namespace A111294.P4069119449906528437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141908 (n + 1) : ℚ) / 23⌋

end

end A111294.P4069119449906528437

/-! ## A111294.P11419004565587202927

`floor(p?[a(n-1)+23]/23)` with `a(0)=2`
-/

namespace A111294.P11419004565587202927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 23⌋

end

end A111294.P11419004565587202927

/-! ## A111294.P3678886511073326813

`eq[1, A001222(23*n+2)]`
-/

namespace A111294.P3678886511073326813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (23 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111294.P3678886511073326813

/-! ## A111294.P5326729645760319915

`eq[2, A000005(23*n+2)]`
-/

namespace A111294.P5326729645760319915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (23 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111294.P5326729645760319915

/-! ## A111294.P10633413213286082437

`record[n*A010051(23*n+2)]`
-/

namespace A111294.P10633413213286082437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (23 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111294.P10633413213286082437

/-! ## A111294.P13724897745096754535

`lt[A001222(6*n+17*n+2), 2]`
-/

namespace A111294.P13724897745096754535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + (17 * n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A111294.P13724897745096754535

/-! ## A111294.P568558668210034

`record[n*A106475(A215148(n))]`
-/

namespace A111294.P568558668210034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106475 (A215148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111294.P568558668210034

/-!
# A111295: Number of partitions of 3n+1.

The programs for A111295, there is no canonical definition to state claims against.
-/

/-! ## A111295.P13220497528234836043

`A000041(A016777(n))`
-/

namespace A111295.P13220497528234836043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A016777 n).toNat

end

end A111295.P13220497528234836043

/-! ## A111295.P13137676613757363742

`A000041(3*n+1)`
-/

namespace A111295.P13137676613757363742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 1)

end

end A111295.P13137676613757363742

/-! ## A111295.P5374649816035460080

`∑[A027337(2*n+1+n)]`
-/

namespace A111295.P5374649816035460080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111295.P5374649816035460080

/-! ## A111295.P14194393995199353642

`record[A000041(A072009(n))]`
-/

namespace A111295.P14194393995199353642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A072009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P14194393995199353642

/-! ## A111295.P11499550350348314315

`record[A000041(A087507(n))]`
-/

namespace A111295.P11499550350348314315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A087507 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P11499550350348314315

/-! ## A111295.P16951665731562706811

`record[A000041(A257502(n))]`
-/

namespace A111295.P16951665731562706811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A257502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P16951665731562706811

/-! ## A111295.P4916077111523076397

`record[A000041(A074066(n+1))]`
-/

namespace A111295.P4916077111523076397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A074066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P4916077111523076397

/-! ## A111295.P5877926872196005221

`record[A000041(A123684(n+1))]`
-/

namespace A111295.P5877926872196005221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A123684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P5877926872196005221

/-! ## A111295.P17033604947864929889

`record[A000041(A225126(n+1))]`
-/

namespace A111295.P17033604947864929889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A225126 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P17033604947864929889

/-! ## A111295.P13614303289536307606

`record[A000041(A240835(n+1))]`
-/

namespace A111295.P13614303289536307606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A240835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P13614303289536307606

/-! ## A111295.P12933900809675090130

`A000065(A016789(n)-1)+1`
-/

namespace A111295.P12933900809675090130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A016789 n - 1).toNat + 1

end

end A111295.P12933900809675090130

/-! ## A111295.P4791474874071739328

`A000065(A005408(n)+n)+1`
-/

namespace A111295.P4791474874071739328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (A005408 n + (n : ℤ)).toNat + 1

end

end A111295.P4791474874071739328

/-! ## A111295.P1473478828541628545

`record[A000041(A318518(n+2)+n)]`
-/

namespace A111295.P1473478828541628545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A318518 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P1473478828541628545

/-! ## A111295.P9630926142896193246

`record[A000041(A226782(n+1))]`
-/

namespace A111295.P9630926142896193246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A226782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P9630926142896193246

/-! ## A111295.P7567301451541001693

`record[A000041(A131742(2*n))]`
-/

namespace A111295.P7567301451541001693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A131742 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P7567301451541001693

/-! ## A111295.P15087128111409362910

`record[A000041(A134172(2*n))]`
-/

namespace A111295.P15087128111409362910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A134172 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P15087128111409362910

/-! ## A111295.P3512605199579909983

`record[A000041(A249693(2*n))]`
-/

namespace A111295.P3512605199579909983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A249693 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111295.P3512605199579909983

/-! ## A111295.P14880391649741929922

`A194451(6*n+1)`
-/

namespace A111295.P14880391649741929922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (6 * n + 1)

end

end A111295.P14880391649741929922

/-! ## A111295.P509300818020327481

`A035363(6*n+2)`
-/

namespace A111295.P509300818020327481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (6 * n + 2)

end

end A111295.P509300818020327481

/-! ## A111295.P11628992341097024825

`A119620(6*n+2)`
-/

namespace A111295.P11628992341097024825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (6 * n + 2)

end

end A111295.P11628992341097024825

/-!
# A111296: Smallest prime of the form n*k + 1, where each k may be used in the sequence only once.

The programs for A111296, there is no canonical definition to state claims against.
-/

/-! ## A111296.P7518672615865020457

`(n+1)*A087559(n+1)+1`
-/

namespace A111296.P7518672615865020457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087559 (n + 1) + 1

end

end A111296.P7518672615865020457

/-! ## A111296.P11695132164412415049

`A151800((n+1)*A087559(n+1))`
-/

namespace A111296.P11695132164412415049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P11695132164412415049

/-! ## A111296.P3257579189143668427

`A339966((n+1)*A087559(n+1))`
-/

namespace A111296.P3257579189143668427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339966 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P3257579189143668427

/-! ## A111296.P483715169636822902

`A141310((n+1)*A087559(n+1))`
-/

namespace A111296.P483715169636822902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P483715169636822902

/-! ## A111296.P8220843188541246609

`A007918((n+1)*A087559(n+1))`
-/

namespace A111296.P8220843188541246609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P8220843188541246609

/-! ## A111296.P9900300005597858749

`A020725((n+1)*A087559(n+1))`
-/

namespace A111296.P9900300005597858749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P9900300005597858749

/-! ## A111296.P16215328847750398403

`A034694((n+1)*A087559(n+1))`
-/

namespace A111296.P16215328847750398403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P16215328847750398403

/-! ## A111296.P5883914995755389525

`A074399((n+1)*A087559(n+1))`
-/

namespace A111296.P5883914995755389525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 ((n + 1 : ℤ) * A087559 (n + 1)).toNat

end

end A111296.P5883914995755389525

/-!
# A111297: First differences of A109975.

The programs for A111297, the canonical program `A111297.P8247782108251979034` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111297 has offset 0).

The definition of A111297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111297.P8247782108251979034

`2*a(n-1)+2^(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A111297

/-- `2*a(n-1)+2^(n-3)` -/
def P8247782108251979034.Spec : Prop :=
  ∀ n, P8247782108251979034.a n = (A111297 n : ℚ)

end A111297

/-! ## A111297.P3373144259820617431

`ogf((1-2x+x^2-x^3)/(1-4x+4x^2))`
-/

namespace A111297.P3373144259820617431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -1] [1, -4, 4] n

end

end A111297.P3373144259820617431

namespace A111297

/-- `ogf((1-2x+x^2-x^3)/(1-4x+4x^2))` -/
def P3373144259820617431.Spec : Prop :=
  ∀ n, P3373144259820617431.a n = A111297 n

end A111297

/-! ## A111297.P10690877677756975800

`4*(a(n-1)-a(n-2))-char[3]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A111297.P10690877677756975800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * (a (n - 1) - a (n - 2)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111297.P10690877677756975800

namespace A111297

/-- `4*(a(n-1)-a(n-2))-char[3]` -/
def P10690877677756975800.Spec : Prop :=
  ∀ n, P10690877677756975800.a n = A111297 n

end A111297

/-! ## A111297.P17184758525998076006

`A049610(n)+2^n`
-/

namespace A111297.P17184758525998076006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + (2 ^ n : ℤ)

end

end A111297.P17184758525998076006

namespace A111297

/-- `A049610(n)+2^n` -/
def P17184758525998076006.Spec : Prop :=
  ∀ n, P17184758525998076006.a n = A111297 n

end A111297

/-! ## A111297.P18169539007080000985

`A131577(n)+A045891(n)`
-/

namespace A111297.P18169539007080000985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A045891 n

end

end A111297.P18169539007080000985

namespace A111297

/-- `A131577(n)+A045891(n)` -/
def P18169539007080000985.Spec : Prop :=
  ∀ n, P18169539007080000985.a n = A111297 n

end A111297

/-! ## A111297.P860956571165183429

`A131577(n)+∑[A034007(n)]`
-/

namespace A111297.P860956571165183429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111297.P860956571165183429

namespace A111297

/-- `A131577(n)+∑[A034007(n)]` -/
def P860956571165183429.Spec : Prop :=
  ∀ n, P860956571165183429.a n = A111297 n

end A111297

/-! ## A111297.P14633555028157452700

`A045891(n)+Δ[A011782(n)]`
-/

namespace A111297.P14633555028157452700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (f1 (n + 1) - f1 n)

end

end A111297.P14633555028157452700

namespace A111297

/-- `A045891(n)+Δ[A011782(n)]` -/
def P14633555028157452700.Spec : Prop :=
  ∀ n, P14633555028157452700.a n = A111297 n

end A111297

/-! ## A111297.P2868031731040709731

`A034008(n)+A034007(n+1)`
-/

namespace A111297.P2868031731040709731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + A034007 (n + 1)

end

end A111297.P2868031731040709731

namespace A111297

/-- `A034008(n)+A034007(n+1)` -/
def P2868031731040709731.Spec : Prop :=
  ∀ n, P2868031731040709731.a n = A111297 n

end A111297

/-! ## A111297.P8206291203769292918

`A045891(n)+A034008(n+1)`
-/

namespace A111297.P8206291203769292918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + A034008 (n + 1)

end

end A111297.P8206291203769292918

namespace A111297

/-- `A045891(n)+A034008(n+1)` -/
def P8206291203769292918.Spec : Prop :=
  ∀ n, P8206291203769292918.a n = A111297 n

end A111297

/-! ## A111297.P17738644922154537009

`A000051(n)+A049610(n)-1`
-/

namespace A111297.P17738644922154537009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A049610 n - 1)

end

end A111297.P17738644922154537009

namespace A111297

/-- `A000051(n)+A049610(n)-1` -/
def P17738644922154537009.Spec : Prop :=
  ∀ n, P17738644922154537009.a n = A111297 n

end A111297

/-! ## A111297.P7845055818741299203

`A000918(n)+A049610(n)+2`
-/

namespace A111297.P7845055818741299203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (A049610 n + 2)

end

end A111297.P7845055818741299203

namespace A111297

/-- `A000918(n)+A049610(n)+2` -/
def P7845055818741299203.Spec : Prop :=
  ∀ n, P7845055818741299203.a n = A111297 n

end A111297

/-! ## A111297.P5774422288922621671

`A166444(n+2)+A049610(n)`
-/

namespace A111297.P5774422288922621671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 2) + A049610 n

end

end A111297.P5774422288922621671

namespace A111297

/-- `A166444(n+2)+A049610(n)` -/
def P5774422288922621671.Spec : Prop :=
  ∀ n, P5774422288922621671.a n = A111297 n

end A111297

/-! ## A111297.P12954418854817849912

`A000079(n)+A045891(n)-A011782(n)`
-/

namespace A111297.P12954418854817849912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A045891 n - A011782 n)

end

end A111297.P12954418854817849912

namespace A111297

/-- `A000079(n)+A045891(n)-A011782(n)` -/
def P12954418854817849912.Spec : Prop :=
  ∀ n, P12954418854817849912.a n = A111297 n

end A111297

/-! ## A111297.P4300138133925876597

`A011782(n+1)+A045891(n)-A011782(n)`
-/

namespace A111297.P4300138133925876597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A045891 n - A011782 n)

end

end A111297.P4300138133925876597

namespace A111297

/-- `A011782(n+1)+A045891(n)-A011782(n)` -/
def P4300138133925876597.Spec : Prop :=
  ∀ n, P4300138133925876597.a n = A111297 n

end A111297

/-! ## A111297.P14980136719335398276

`A336102(n+1)+A336103(n+1)+A049610(n)`
-/

namespace A111297.P14980136719335398276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (n + 1) + (A336103 (n + 1) + A049610 n)

end

end A111297.P14980136719335398276

namespace A111297

/-- `A336102(n+1)+A336103(n+1)+A049610(n)` -/
def P14980136719335398276.Spec : Prop :=
  ∀ n, P14980136719335398276.a n = A111297 n

end A111297

/-! ## A111297.P3629770983275892747

`Δ[A109975(n)]`
-/

namespace A111297.P3629770983275892747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111297.P3629770983275892747

namespace A111297

/-- `Δ[A109975(n)]` -/
def P3629770983275892747.Spec : Prop :=
  ∀ n, P3629770983275892747.a n = A111297 n

end A111297

/-! ## A111297.P6131540346268608055

`Δ[record[A034007(n)]]`
-/

namespace A111297.P6131540346268608055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111297.P6131540346268608055

namespace A111297

/-- `Δ[record[A034007(n)]]` -/
def P6131540346268608055.Spec : Prop :=
  ∀ n, P6131540346268608055.a n = A111297 n

end A111297

/-! ## A111297.P2238466526765217526

`A106472(n)-A057711(n)`
-/

namespace A111297.P2238466526765217526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n - A057711 n

end

end A111297.P2238466526765217526

namespace A111297

/-- `A106472(n)-A057711(n)` -/
def P2238466526765217526.Spec : Prop :=
  ∀ n, P2238466526765217526.a n = A111297 n

end A111297

/-! ## A111297.P17621345238165550054

`A129955(n)-A045891(n)`
-/

namespace A111297.P17621345238165550054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - A045891 n

end

end A111297.P17621345238165550054

namespace A111297

/-- `A129955(n)-A045891(n)` -/
def P17621345238165550054.Spec : Prop :=
  ∀ n, P17621345238165550054.a n = A111297 n

end A111297

/-! ## A111297.P16735175245811460941

`A131352(n)-A049610(n)`
-/

namespace A111297.P16735175245811460941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - A049610 n

end

end A111297.P16735175245811460941

namespace A111297

/-- `A131352(n)-A049610(n)` -/
def P16735175245811460941.Spec : Prop :=
  ∀ n, P16735175245811460941.a n = A111297 n

end A111297

/-!
# A111299: Numbers whose Matula tree is a binary tree (i.e., root has degree 2 and all nodes except root and leaves have degree 3).

The programs for A111299, there is no canonical definition to state claims against.
-/

/-! ## A111299.P7644564122120019276

`filter[A298424(n+1), A064911(#)]`
-/

namespace A111299.P7644564122120019276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A111299.P7644564122120019276

/-! ## A111299.P14598308950554544409

`∩[A001358(n+1), A298424(n+1)]`
-/

namespace A111299.P14598308950554544409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111299.P14598308950554544409

/-! ## A111299.P9473115611417824796

`A245824(A262524(n+1))`
-/

namespace A111299.P9473115611417824796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (A262524 (n + 1)).toNat

end

end A111299.P9473115611417824796

/-! ## A111299.P1080356441361183114

`A004151(A245824(n+2))`
-/

namespace A111299.P1080356441361183114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A245824 (n + 2)).toNat

end

end A111299.P1080356441361183114

/-! ## A111299.P5640889324929936088

`A245824(A043318(n+2))`
-/

namespace A111299.P5640889324929936088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245824 (A043318 (n + 2)).toNat

end

end A111299.P5640889324929936088

