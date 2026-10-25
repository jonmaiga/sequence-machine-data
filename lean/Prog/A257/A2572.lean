import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A257200: a(n) = n*(n+1)*(n+2)*(n+3)*(n^2+3*n+26)/720.

The programs for A257200, the canonical program `A257200.P3905278914034747037` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257200 has offset 1).

The definition of A257200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²+3*(n+1)+26)/720` (program `A257200.P5357699023791979774`, by `A257200.P5357699023791979774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257200.P5357699023791979774

`(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²+3*(n+1)+26)/720`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257200.P5357699023791979774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * ((n + 1) ^ 2 + 3 * (n + 1) + 26) : ℚ) / 720

end

end A257200.P5357699023791979774

namespace A257200

/-- `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²+3*(n+1)+26)/720` -/
def P5357699023791979774.Spec : Prop :=
  ∀ n, P5357699023791979774.a n = (A257200 (n + 1) : ℚ)

theorem P5357699023791979774.correct : P5357699023791979774.Spec := by
  intro n
  simp only [A257200, Nat.add_sub_cancel, A257200.P5357699023791979774.a, A257200.P3905278914034747037.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A257200

/-! ## A257200.P14340346893501846359

`∑[A257199(n+1)]`
-/

namespace A257200.P14340346893501846359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257200.P14340346893501846359

namespace A257200

/-- `∑[A257199(n+1)]` -/
def P14340346893501846359.Spec : Prop :=
  ∀ n, P14340346893501846359.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P13783602566254942724

`A145128(n)+A005582(n)`
-/

namespace A257200.P13783602566254942724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145128 n + A005582 n

end

end A257200.P13783602566254942724

namespace A257200

/-- `A145128(n)+A005582(n)` -/
def P13783602566254942724.Spec : Prop :=
  ∀ n, P13783602566254942724.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P4995533630042195167

`A095669(n)-A059599(n)`
-/

namespace A257200.P4995533630042195167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A059599 n

end

end A257200.P4995533630042195167

namespace A257200

/-- `A095669(n)-A059599(n)` -/
def P4995533630042195167.Spec : Prop :=
  ∀ n, P4995533630042195167.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P9169765959663173678

`A256860(n+1)-A034264(n)`
-/

namespace A257200.P9169765959663173678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256860 (n + 1) - A034264 n

end

end A257200.P9169765959663173678

namespace A257200

/-- `A256860(n+1)-A034264(n)` -/
def P9169765959663173678.Spec : Prop :=
  ∀ n, P9169765959663173678.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P9876727905914499565

`A096944(n)-A027764(n+3)`
-/

namespace A257200.P9876727905914499565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096944 n - A027764 (n + 3)

end

end A257200.P9876727905914499565

namespace A257200

/-- `A096944(n)-A027764(n+3)` -/
def P9876727905914499565.Spec : Prop :=
  ∀ n, P9876727905914499565.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P16670975653078416546

`A096945(n)-A005715(n+4)`
-/

namespace A257200.P16670975653078416546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096945 n - A005715 (n + 4)

end

end A257200.P16670975653078416546

namespace A257200

/-- `A096945(n)-A005715(n+4)` -/
def P16670975653078416546.Spec : Prop :=
  ∀ n, P16670975653078416546.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P9224468454288190622

`A000292(n)+A223659(n)+n`
-/

namespace A257200.P9224468454288190622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A223659 n + (n : ℤ))

end

end A257200.P9224468454288190622

namespace A257200

/-- `A000292(n)+A223659(n)+n` -/
def P9224468454288190622.Spec : Prop :=
  ∀ n, P9224468454288190622.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P15173779187909940909

`∑[A000292(n)]+∑[A027658(n)]`
-/

namespace A257200.P15173779187909940909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A257200.P15173779187909940909

namespace A257200

/-- `∑[A000292(n)]+∑[A027658(n)]` -/
def P15173779187909940909.Spec : Prop :=
  ∀ n, P15173779187909940909.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P16525003758139212276

`A005584(n+1)-A005585(n+1)`
-/

namespace A257200.P16525003758139212276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) - A005585 (n + 1)

end

end A257200.P16525003758139212276

namespace A257200

/-- `A005584(n+1)-A005585(n+1)` -/
def P16525003758139212276.Spec : Prop :=
  ∀ n, P16525003758139212276.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P12355031268897033271

`A001769(n)+A001769(n)-A011888(n+1)`
-/

namespace A257200.P12355031268897033271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 n + (A001769 n - A011888 (n + 1))

end

end A257200.P12355031268897033271

namespace A257200

/-- `A001769(n)+A001769(n)-A011888(n+1)` -/
def P12355031268897033271.Spec : Prop :=
  ∀ n, P12355031268897033271.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P10758945368460483436

`A283551(n+1)+A223659(n)`
-/

namespace A257200.P10758945368460483436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 (n + 1) + A223659 n

end

end A257200.P10758945368460483436

namespace A257200

/-- `A283551(n+1)+A223659(n)` -/
def P10758945368460483436.Spec : Prop :=
  ∀ n, P10758945368460483436.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P9331826315266322956

`A003600(n+1)+A223659(n)-A000124(n+1)`
-/

namespace A257200.P9331826315266322956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (n + 1) + (A223659 n - A000124 (n + 1))

end

end A257200.P9331826315266322956

namespace A257200

/-- `A003600(n+1)+A223659(n)-A000124(n+1)` -/
def P9331826315266322956.Spec : Prop :=
  ∀ n, P9331826315266322956.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P18122458460800689802

`A033547(n+1)+A223659(n)-A000125(n+1)`
-/

namespace A257200.P18122458460800689802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 (n + 1) + (A223659 n - A000125 (n + 1))

end

end A257200.P18122458460800689802

namespace A257200

/-- `A033547(n+1)+A223659(n)-A000125(n+1)` -/
def P18122458460800689802.Spec : Prop :=
  ∀ n, P18122458460800689802.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P8240109833926240004

`A257201(n+2)-(A257201(n+1)+A257199(n+2))`
-/

namespace A257200.P8240109833926240004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257201 (n + 2) - (A257201 (n + 1) + A257199 (n + 2))

end

end A257200.P8240109833926240004

namespace A257200

/-- `A257201(n+2)-(A257201(n+1)+A257199(n+2))` -/
def P8240109833926240004.Spec : Prop :=
  ∀ n, P8240109833926240004.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P9504280349174807385

`A027929(n+5)-A000124(n+2)`
-/

namespace A257200.P9504280349174807385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027929 (n + 5) - A000124 (n + 2)

end

end A257200.P9504280349174807385

namespace A257200

/-- `A027929(n+5)-A000124(n+2)` -/
def P9504280349174807385.Spec : Prop :=
  ∀ n, P9504280349174807385.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P12309848650943705492

`∑[∑[A006522(n+3)]]`
-/

namespace A257200.P12309848650943705492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257200.P12309848650943705492

namespace A257200

/-- `∑[∑[A006522(n+3)]]` -/
def P12309848650943705492.Spec : Prop :=
  ∀ n, P12309848650943705492.a n = A257200 (n + 1)

end A257200

/-! ## A257200.P3905278914034747037

`A000579(n+5)+C(n+4, 4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A257200

/-- `A000579(n+5)+C(n+4, 4)` -/
def P3905278914034747037.Spec : Prop :=
  ∀ n, P3905278914034747037.a n = A257200 (n + 1)

theorem P3905278914034747037.correct : P3905278914034747037.Spec := by
  intro n
  simp only [A257200, Nat.add_sub_cancel]

end A257200

/-!
# A257201: a(n) = n*(n+1)*(n+2)*(n+3)*(n+4)*(n^2+4*n+37)/5040.

The programs for A257201, the canonical program `A257201.P8985889805843026128` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257201 has offset 1).

The definition of A257201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257201.P8985889805843026128

`∑[∑[∑[∑[∑[∑[n]+1]]]]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257201

/-- `∑[∑[∑[∑[∑[∑[n]+1]]]]]` -/
def P8985889805843026128.Spec : Prop :=
  ∀ n, (P8985889805843026128.a n : ℤ) = A257201 (n + 1)

theorem P8985889805843026128.correct : P8985889805843026128.Spec := by
  intro n
  simp only [A257201, Nat.add_sub_cancel]

end A257201

/-! ## A257201.P17573608658240864396

`A257200(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A257201.P17573608658240864396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257200 (n + 1) + a (n - 1)

end

end A257201.P17573608658240864396

namespace A257201

/-- `A257200(n+1)+a(n-1)` -/
def P17573608658240864396.Spec : Prop :=
  ∀ n, P17573608658240864396.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P4996267714522433492

`A097298(n)-A027765(n+4)`
-/

namespace A257201.P4996267714522433492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 n - A027765 (n + 4)

end

end A257201.P4996267714522433492

namespace A257201

/-- `A097298(n)-A027765(n+4)` -/
def P4996267714522433492.Spec : Prop :=
  ∀ n, P4996267714522433492.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P14600852850294154427

`2*A001779(n)-A166189(n)`
-/

namespace A257201.P14600852850294154427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001779 n - A166189 n

end

end A257201.P14600852850294154427

namespace A257201

/-- `2*A001779(n)-A166189(n)` -/
def P14600852850294154427.Spec : Prop :=
  ∀ n, P14600852850294154427.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P726491260188484987

`∑[A005584(n+1)]-A040977(n)`
-/

namespace A257201.P726491260188484987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A040977 n

end

end A257201.P726491260188484987

namespace A257201

/-- `∑[A005584(n+1)]-A040977(n)` -/
def P726491260188484987.Spec : Prop :=
  ∀ n, P726491260188484987.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P5429076622328451685

`A000580(n+7)-A000579(n+5)`
-/

namespace A257201.P5429076622328451685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A000579 (n + 5)

end

end A257201.P5429076622328451685

namespace A257201

/-- `A000580(n+7)-A000579(n+5)` -/
def P5429076622328451685.Spec : Prop :=
  ∀ n, P5429076622328451685.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P3205179143312181410

`A236376(A167614(n+2))`
-/

namespace A257201.P3205179143312181410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236376 (A167614 (n + 2)).toNat

end

end A257201.P3205179143312181410

namespace A257201

/-- `A236376(A167614(n+2))` -/
def P3205179143312181410.Spec : Prop :=
  ∀ n, P3205179143312181410.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P14088868126943983677

`A072405(A000124(n+7)+6)`
-/

namespace A257201.P14088868126943983677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A000124 (n + 7) + 6).toNat

end

end A257201.P14088868126943983677

namespace A257201

/-- `A072405(A000124(n+7)+6)` -/
def P14088868126943983677.Spec : Prop :=
  ∀ n, P14088868126943983677.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P3969493018263274214

`A072405(A000096(n+6)+8)`
-/

namespace A257201.P3969493018263274214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A000096 (n + 6) + 8).toNat

end

end A257201.P3969493018263274214

namespace A257201

/-- `A072405(A000096(n+6)+8)` -/
def P3969493018263274214.Spec : Prop :=
  ∀ n, P3969493018263274214.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P15439384805778988934

`A072405(A000217(n+7)+7)`
-/

namespace A257201.P15439384805778988934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A000217 (n + 7) + 7).toNat

end

end A257201.P15439384805778988934

namespace A257201

/-- `A072405(A000217(n+7)+7)` -/
def P15439384805778988934.Spec : Prop :=
  ∀ n, P15439384805778988934.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P10683470493949250852

`A000580(n+7)-A097805(eq[6, A025581(n)])`
-/

namespace A257201.P10683470493949250852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - A097805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257201.P10683470493949250852

namespace A257201

/-- `A000580(n+7)-A097805(eq[6, A025581(n)])` -/
def P10683470493949250852.Spec : Prop :=
  ∀ n, P10683470493949250852.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P14234322035150066542

`A072405(A161680(n+9)-8)`
-/

namespace A257201.P14234322035150066542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A161680 (n + 9) - 8).toNat

end

end A257201.P14234322035150066542

namespace A257201

/-- `A072405(A161680(n+9)-8)` -/
def P14234322035150066542.Spec : Prop :=
  ∀ n, P14234322035150066542.a n = A257201 (n + 1)

end A257201

/-! ## A257201.P18439438326829729824

`A072405(eq[7, A004736(n+1)-1])`
-/

namespace A257201.P18439438326829729824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257201.P18439438326829729824

namespace A257201

/-- `A072405(eq[7, A004736(n+1)-1])` -/
def P18439438326829729824.Spec : Prop :=
  ∀ n, P18439438326829729824.a n = A257201 (n + 1)

end A257201

/-!
# A257202: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257202, there is no canonical definition to state claims against.
-/

/-! ## A257202.P2139949245536247633

`A257209((n+1)²+n²)`
-/

namespace A257202.P2139949245536247633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 ((n + 1) ^ 2 + n ^ 2)

end

end A257202.P2139949245536247633

/-! ## A257202.P6654050068069927034

`A033999(n)²*A257209(∑[A008574(n)])`
-/

namespace A257202.P6654050068069927034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A257209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257202.P6654050068069927034

/-! ## A257202.P10902236474195141006

`A257209(∑[A008574(n)])%A236017(n+1)`
-/

namespace A257202.P10902236474195141006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A236017 (n + 1))

end

end A257202.P10902236474195141006

/-! ## A257202.P6683006571312712163

`(A000041(n)%2)!*A257209(∑[A008574(n)])`
-/

namespace A257202.P6683006571312712163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A257209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257202.P6683006571312712163

/-! ## A257202.P15998079196667511218

`A257209(∑[A008574(n)])+A008683(4*(n+1))`
-/

namespace A257202.P15998079196667511218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008683 (4 * (n + 1))

end

end A257202.P15998079196667511218

/-!
# A257203: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257203, there is no canonical definition to state claims against.
-/

/-! ## A257203.P3138311382724874823

`A257209(∑[n+1]+2)`
-/

namespace A257203.P3138311382724874823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257203.P3138311382724874823

/-! ## A257203.P10071221890630836894

`record[A010054(n)*A257209(n+2)]`
-/

namespace A257203.P10071221890630836894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257209 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257203.P10071221890630836894

/-! ## A257203.P14113310195781519111

`record[gcd(A141169(n), A257209(n+2))]`
-/

namespace A257203.P14113310195781519111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A257209 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257203.P14113310195781519111

/-! ## A257203.P8813651002288815878

`record[A257209(A133263(A008612(n)))]`
-/

namespace A257203.P8813651002288815878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257203.P8813651002288815878

/-! ## A257203.P8727711695346270842

`record[A257209(A152948(A344180(n)))]`
-/

namespace A257203.P8727711695346270842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A152948 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257203.P8727711695346270842

/-! ## A257203.P10088130443412218447

`or(A000007(n), A257209(A152948(n+3)))`
-/

namespace A257203.P10088130443412218447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257209 (A152948 (n + 3)).toNat)

end

end A257203.P10088130443412218447

/-! ## A257203.P12473040041908605001

`A257209(A000096(n+1))+A102683(A073790(n))`
-/

namespace A257203.P12473040041908605001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A000096 (n + 1)).toNat + A102683 (A073790 n).toNat

end

end A257203.P12473040041908605001

/-! ## A257203.P16314415552601957761

`A051903(A000040(n+1))*A257209(A000096(n+1))`
-/

namespace A257203.P16314415552601957761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1)).toNat * A257209 (A000096 (n + 1)).toNat

end

end A257203.P16314415552601957761

/-!
# A257204: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257204, there is no canonical definition to state claims against.
-/

/-! ## A257204.P11914210835414126821

`record[A257209(∑[n-2]+6)]`
-/

namespace A257204.P11914210835414126821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f2 j + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257204.P11914210835414126821

/-! ## A257204.P13487029966433133775

`A257209(A167614(n+1))`
-/

namespace A257204.P13487029966433133775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A167614 (n + 1)).toNat

end

end A257204.P13487029966433133775

/-! ## A257204.P14786041272856405391

`A257209(A167499(n)+n)`
-/

namespace A257204.P14786041272856405391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A167499 n + (n : ℤ)).toNat

end

end A257204.P14786041272856405391

/-! ## A257204.P11754136821255545252

`A257209(A166136(n+1)-3)`
-/

namespace A257204.P11754136821255545252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A166136 (n + 1) - 3).toNat

end

end A257204.P11754136821255545252

/-! ## A257204.P16832724676063005491

`A257209(Δ[A034857(n+1)-n²])`
-/

namespace A257204.P16832724676063005491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (f1 (n + 1) - f1 n).toNat

end

end A257204.P16832724676063005491

/-! ## A257204.P9928035496823149280

`A257209(∑[n+3]+1)`
-/

namespace A257204.P9928035496823149280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257204.P9928035496823149280

/-!
# A257205: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257205, there is no canonical definition to state claims against.
-/

/-! ## A257205.P14734140371981493768

`A257209(∑[n+3]+7)`
-/

namespace A257205.P14734140371981493768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A257205.P14734140371981493768

/-! ## A257205.P16492364463818456070

`or(A000007(n), A257209(A167499(n+2)-1))`
-/

namespace A257205.P16492364463818456070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257209 (A167499 (n + 2) - 1).toNat)

end

end A257205.P16492364463818456070

/-! ## A257205.P11691407200752719607

`lcm((-1)^n, A257209(A155212(n)+5))`
-/

namespace A257205.P11691407200752719607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A257209 (A155212 n + 5).toNat)

end

end A257205.P11691407200752719607

/-! ## A257205.P4519477008802102704

`or(A000007(n), A257209(A155212(n)+5))`
-/

namespace A257205.P4519477008802102704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257209 (A155212 n + 5).toNat)

end

end A257205.P4519477008802102704

/-! ## A257205.P16964131957142958236

`or(A151933(n), A257209(A155212(n)+5))`
-/

namespace A257205.P16964131957142958236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A257209 (A155212 n + 5).toNat)

end

end A257205.P16964131957142958236

/-!
# A257206: Number of (n+2) X (5+2) 0..1 arrays with every 3 X 3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257206, there is no canonical definition to state claims against.
-/

/-! ## A257206.P7998826266530408489

`A257209(A167499(n+3))`
-/

namespace A257206.P7998826266530408489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A167499 (n + 3)).toNat

end

end A257206.P7998826266530408489

/-! ## A257206.P6097069103939726713

`A257209(A155212(n)+13)`
-/

namespace A257206.P6097069103939726713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A155212 n + 13).toNat

end

end A257206.P6097069103939726713

/-! ## A257206.P3391382652180760359

`A257209(A027379(n+2)+8)`
-/

namespace A257206.P3391382652180760359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A027379 (n + 2) + 8).toNat

end

end A257206.P3391382652180760359

/-! ## A257206.P783671978821039370

`lcm(A033999(n), A257209(A000124(n+4)+4))`
-/

namespace A257206.P783671978821039370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A257209 (A000124 (n + 4) + 4).toNat)

end

end A257206.P783671978821039370

/-! ## A257206.P204809189261107236

`or(A000007(n), A257209(A000124(n+4)+4))`
-/

namespace A257206.P204809189261107236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257209 (A000124 (n + 4) + 4).toNat)

end

end A257206.P204809189261107236

/-! ## A257206.P4319017026065200588

`A051903(A000040(n+1))*A257209(A000124(n+4)+4)`
-/

namespace A257206.P4319017026065200588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000040 (n + 1)).toNat * A257209 (A000124 (n + 4) + 4).toNat

end

end A257206.P4319017026065200588

/-! ## A257206.P1297949312787424369

`A257209(∑[n+5]+6)`
-/

namespace A257206.P1297949312787424369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A257206.P1297949312787424369

/-!
# A257207: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257207, there is no canonical definition to state claims against.
-/

/-! ## A257207.P8738951338896671868

`A257209(A000217(n+5)+6)`
-/

namespace A257207.P8738951338896671868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A000217 (n + 5) + 6).toNat

end

end A257207.P8738951338896671868

/-! ## A257207.P2167020356261889235

`A257209(A161680(n+6)+6)`
-/

namespace A257207.P2167020356261889235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A161680 (n + 6) + 6).toNat

end

end A257207.P2167020356261889235

/-! ## A257207.P1699487707163298702

`lcm((-1)^n, A257209(A000124(n+5)+5))`
-/

namespace A257207.P1699487707163298702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A257209 (A000124 (n + 5) + 5).toNat)

end

end A257207.P1699487707163298702

/-! ## A257207.P8680834551944631557

`A257209((n+4)²-∑[n+1]+1)`
-/

namespace A257207.P8680834551944631557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A257207.P8680834551944631557

/-! ## A257207.P16145679016716395687

`A257209(A166136(n+4))%A136634(n+1)`
-/

namespace A257207.P16145679016716395687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257209 (A166136 (n + 4)).toNat) (A136634 (n + 1))

end

end A257207.P16145679016716395687

/-!
# A257208: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally and vertically.

The programs for A257208, there is no canonical definition to state claims against.
-/

/-! ## A257208.P17823054030287450643

`A257209(A000217(n+6)+7)`
-/

namespace A257208.P17823054030287450643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A000217 (n + 6) + 7).toNat

end

end A257208.P17823054030287450643

/-! ## A257208.P2285098660860376386

`A257209(A161680(n+7)+7)`
-/

namespace A257208.P2285098660860376386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A161680 (n + 7) + 7).toNat

end

end A257208.P2285098660860376386

/-! ## A257208.P6980069571368949623

`A257209(A374008(n+1))`
-/

namespace A257208.P6980069571368949623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A374008 (n + 1)).toNat

end

end A257208.P6980069571368949623

/-! ## A257208.P6557616989548722081

`A257209(A055999(n+4))`
-/

namespace A257208.P6557616989548722081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A055999 (n + 4)).toNat

end

end A257208.P6557616989548722081

/-! ## A257208.P11196517277429862109

`A257209(Δ[A060488(n+5)])`
-/

namespace A257208.P11196517277429862109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (f1 (n + 1) - f1 n).toNat

end

end A257208.P11196517277429862109

/-! ## A257208.P16683856998272552110

`A257209(A052905(n+6)-A005843(n+9))`
-/

namespace A257208.P16683856998272552110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A052905 (n + 6) - A005843 (n + 9)).toNat

end

end A257208.P16683856998272552110

/-!
# A257212: Least d>0 such that floor(n/d) - floor(n/(d+1)) <= 1.

The programs for A257212, the canonical program `A257212.P17809962343028456933` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257212 has offset 0).

The definition of A257212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257212.P17809962343028456933

`floor(A257213(Δ[n²])/2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257212

/-- `floor(A257213(Δ[n²])/2)` -/
def P17809962343028456933.Spec : Prop :=
  ∀ n, P17809962343028456933.a n = A257212 n

theorem P17809962343028456933.correct : P17809962343028456933.Spec := by
  intro n
  simp only [A257212]

end A257212

/-! ## A257212.P15988717111350020070

`A123108(A257213(Δ[n²]))`
-/

namespace A257212.P15988717111350020070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A257213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A257212.P15988717111350020070

namespace A257212

/-- `A123108(A257213(Δ[n²]))` -/
def P15988717111350020070.Spec : Prop :=
  ∀ n, P15988717111350020070.a n = A257212 n

end A257212

/-! ## A257212.P11017821782442939049

`A004526(A257213(2*n+1))`
-/

namespace A257212.P11017821782442939049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A257213 (2 * n + 1)).toNat

end

end A257212.P11017821782442939049

namespace A257212

/-- `A004526(A257213(2*n+1))` -/
def P11017821782442939049.Spec : Prop :=
  ∀ n, P11017821782442939049.a n = A257212 n

end A257212

/-! ## A257212.P13372143579524520588

`A064727(A257213(2*n+1)²)`
-/

namespace A257212.P13372143579524520588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A257213 (2 * n + 1) ^ 2).toNat

end

end A257212.P13372143579524520588

namespace A257212

/-- `A064727(A257213(2*n+1)²)` -/
def P13372143579524520588.Spec : Prop :=
  ∀ n, P13372143579524520588.a n = A257212 n

end A257212

/-! ## A257212.P544373641283577963

`A008619(A257213(2*n+1)-2)`
-/

namespace A257212.P544373641283577963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A257213 (2 * n + 1) - 2).toNat

end

end A257212.P544373641283577963

namespace A257212

/-- `A008619(A257213(2*n+1)-2)` -/
def P544373641283577963.Spec : Prop :=
  ∀ n, P544373641283577963.a n = A257212 n

end A257212

/-! ## A257212.P8253529519930836345

`A002265(2*A257213(2*n+1))`
-/

namespace A257212.P8253529519930836345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A257213 (2 * n + 1)).toNat

end

end A257212.P8253529519930836345

namespace A257212

/-- `A002265(2*A257213(2*n+1))` -/
def P8253529519930836345.Spec : Prop :=
  ∀ n, P8253529519930836345.a n = A257212 n

end A257212

/-!
# A257213: Least d>0 such that floor(n/d) = floor(n/(d+1)).

The programs for A257213, the canonical program `A257213.P15189177021721227426` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257213 has offset 0).

The definition of A257213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257213.P15189177021721227426

`A259361(n)+1+floor(sqrt(A232091(n+1)-1-n+A079813(n+1))+A079813(n+1)/2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257213

/-- `A259361(n)+1+floor(sqrt(A232091(n+1)-1-n+A079813(n+1))+A079813(n+1)/2)` -/
def P15189177021721227426.Spec : Prop :=
  ∀ n, P15189177021721227426.a n = A257213 n

theorem P15189177021721227426.correct : P15189177021721227426.Spec := by
  intro n
  simp only [A257213]

end A257213

/-! ## A257213.P4816828604483223119

`A257217(n)+A135034(n)`
-/

namespace A257213.P4816828604483223119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 n + A135034 n

end

end A257213.P4816828604483223119

namespace A257213

/-- `A257217(n)+A135034(n)` -/
def P4816828604483223119.Spec : Prop :=
  ∀ n, P4816828604483223119.a n = A257213 n

end A257213

/-! ## A257213.P17746192593219057504

`A023516(A000225(n)+A000040(n+1))`
-/

namespace A257213.P17746192593219057504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023516 (A000225 n + A000040 (n + 1)).toNat

end

end A257213.P17746192593219057504

namespace A257213

/-- `A023516(A000225(n)+A000040(n+1))` -/
def P17746192593219057504.Spec : Prop :=
  ∀ n, P17746192593219057504.a n = A257213 n

end A257213

/-! ## A257213.P14662160239444586989

`A007895(A307519(n+1)+A246325(n))`
-/

namespace A257213.P14662160239444586989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A307519 (n + 1) + A246325 n).toNat

end

end A257213.P14662160239444586989

namespace A257213

/-- `A007895(A307519(n+1)+A246325(n))` -/
def P14662160239444586989.Spec : Prop :=
  ∀ n, P14662160239444586989.a n = A257213 n

end A257213

/-! ## A257213.P10798912747189294171

`A354579(A342029(n+3))+A000196(n)`
-/

namespace A257213.P10798912747189294171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A342029 (n + 3)).toNat + A000196 n

end

end A257213.P10798912747189294171

namespace A257213

/-- `A354579(A342029(n+3))+A000196(n)` -/
def P10798912747189294171.Spec : Prop :=
  ∀ n, P10798912747189294171.a n = A257213 n

end A257213

/-!
# A257214: E.g.f.: C(x) = Sum_{n>=0} cosh((2*n+1)*x) * x^n / (1 + x^(2*n+1)).

The programs for A257214, there is no canonical definition to state claims against.
-/

/-! ## A257214.P4828572088148851517

`A190202(A250001(n))-n`
-/

namespace A257214.P4828572088148851517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190202 (A250001 n).toNat - (n : ℤ)

end

end A257214.P4828572088148851517

/-!
# A257215: E.g.f.: S(x) = Sum_{n>=0} sinh((2*n+1)*x) * x^n / (1 - x^(2*n+1)).

The programs for A257215, there is no canonical definition to state claims against.
-/

/-! ## A257215.P9963467291369734578

`A257216(n+1)-A257214(n+1)`
-/

namespace A257215.P9963467291369734578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257216 (n + 1) - A257214 (n + 1)

end

end A257215.P9963467291369734578

/-!
# A257216: E.g.f.: Sum_{n>=0} exp((2*n+1)*x) * (1 - x^(2*n+1)*exp(-(4*n+2)*x)) * x^n/(1 - x^(4*n+2)).

The programs for A257216, there is no canonical definition to state claims against.
-/

/-! ## A257216.P346494548511670703

`A273064(A383605(n))`
-/

namespace A257216.P346494548511670703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (A383605 n).toNat

end

end A257216.P346494548511670703

/-!
# A257217: A257213 - A003059, where A257213(n) = min{d>0 | floor(n/d) = floor(n/(d+1))}, A003059(n) = ceiling(sqrt(n)).

The programs for A257217, there is no canonical definition to state claims against.
-/

/-! ## A257217.P13967132361752328737

`floor(A257213(n)-sqrt(n))`
-/

namespace A257217.P13967132361752328737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257213 n : ℝ) - Real.sqrt (n : ℝ)⌋

end

end A257217.P13967132361752328737

/-! ## A257217.P17526946771698449569

`A257213(n)-A135034(n)`
-/

namespace A257217.P17526946771698449569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 n - A135034 n

end

end A257217.P17526946771698449569

/-! ## A257217.P12889423351673045113

`A257213(n)-sqrt(A048761(n))`
-/

namespace A257217.P12889423351673045113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257213 n : ℝ) - Real.sqrt (A048761 n : ℝ)

end

end A257217.P12889423351673045113

/-! ## A257217.P12638947302615597884

`A257213(n)-ceil(sqrt(A232091(n)))`
-/

namespace A257217.P12638947302615597884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 n - ⌈Real.sqrt (A232091 n : ℝ)⌉

end

end A257217.P12638947302615597884

/-! ## A257217.P3932187328349440459

`A257213(n)-∑[char[A002522(n)]]`
-/

namespace A257217.P3932187328349440459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A257217.P3932187328349440459

/-! ## A257217.P18050314993915347304

`A257213(n)-A000194(ceil(sqrt(n))²)`
-/

namespace A257217.P18050314993915347304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257213 n - A000194 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

end

end A257217.P18050314993915347304

/-! ## A257217.P13278180585483610291

`char[n²]+A257213(n)-A003059(n+1)`
-/

namespace A257217.P13278180585483610291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A257213 n - A003059 (n + 1))

end

end A257217.P13278180585483610291

/-!
# A257219: Numbers that have at least one divisor containing the digit 2 in base 10.

The programs for A257219, there is no canonical definition to state claims against.
-/

/-! ## A257219.P2604883569881410177

`∑[A000034(A045306(n+1))]`
-/

namespace A257219.P2604883569881410177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A045306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257219.P2604883569881410177

/-! ## A257219.P6144967719331019451

`record[A092451(A104717(n+1))]`
-/

namespace A257219.P6144967719331019451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 (A104717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257219.P6144967719331019451

/-! ## A257219.P7400961384341350648

`A092451(n+1)%A167519(n+1)`
-/

namespace A257219.P7400961384341350648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092451 (n + 1)) (A167519 (n + 1))

end

end A257219.P7400961384341350648

/-! ## A257219.P1244256649908943717

`A092451(gcd(n+1, A136511(n+1)))`
-/

namespace A257219.P1244256649908943717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 (Int.gcd (n + 1 : ℤ) (A136511 (n + 1)))

end

end A257219.P1244256649908943717

/-! ## A257219.P16811887466040444755

`A092451(n+1-A353634(n+1)%2)`
-/

namespace A257219.P16811887466040444755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092451 ((n + 1 : ℤ) - Int.tmod (A353634 (n + 1)) 2).toNat

end

end A257219.P16811887466040444755

/-!
# A257220: Numbers that have at least one divisor containing the digit 3 in base 10.

The programs for A257220, the canonical program `A257220.P8696948705799715242` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257220 has offset 1).

The definition of A257220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8394 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257220.P8696948705799715242

`lt[25, 4*a(A387463(n))]` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257220

/-- `lt[25, 4*a(A387463(n))]` -/
def P8696948705799715242.Spec : Prop :=
  ∀ n, (P8696948705799715242.a n : ℤ) = A257220 (n + 1)

theorem P8696948705799715242.correct : P8696948705799715242.Spec := by
  intro n
  simp only [A257220, Nat.add_sub_cancel]

end A257220

/-! ## A257220.P6997837746761317810

`lt[A346154(n+1), A056534(A327631(n+1))]`
-/

namespace A257220.P6997837746761317810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056534 (A327631 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257220.P6997837746761317810

namespace A257220

/-- `lt[A346154(n+1), A056534(A327631(n+1))]` -/
def P6997837746761317810.Spec : Prop :=
  ∀ n, (P6997837746761317810.a n : ℤ) = A257220 (n + 1)

end A257220

/-!
# A257221: Numbers that have at least one divisor containing the digit 4 in base 10.

The programs for A257221, there is no canonical definition to state claims against.
-/

/-! ## A257221.P3082562002482039618

`A281384(A092453(n+1))`
-/

namespace A257221.P3082562002482039618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281384 (A092453 (n + 1)).toNat

end

end A257221.P3082562002482039618

/-! ## A257221.P12452571307105848424

`A092453(∑[∑[A097479(n)]])`
-/

namespace A257221.P12452571307105848424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257221.P12452571307105848424

/-! ## A257221.P8808770700272141969

`record[A092453(A319848(n+1))]`
-/

namespace A257221.P8808770700272141969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092453 (A319848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257221.P8808770700272141969

/-! ## A257221.P15455456441677595963

`A092453(or(1, A097479(n))+n)`
-/

namespace A257221.P15455456441677595963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092453 (Int.lor 1 (A097479 n) + (n : ℤ)).toNat

end

end A257221.P15455456441677595963

/-! ## A257221.P16093236043052162870

`A092453(A187829(n+1))`
-/

namespace A257221.P16093236043052162870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092453 (A187829 (n + 1)).toNat

end

end A257221.P16093236043052162870

/-!
# A257222: Numbers that have at least one divisor containing the digit 5 in base 10.

The programs for A257222, there is no canonical definition to state claims against.
-/

/-! ## A257222.P11939821281170262075

`eq[0, A204690(A061205(n))]`
-/

namespace A257222.P11939821281170262075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204690 (A061205 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257222.P11939821281170262075

/-! ## A257222.P16964368923841988711

`A000188(A092454(n+1)²)`
-/

namespace A257222.P16964368923841988711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A092454 (n + 1) ^ 2).toNat

end

end A257222.P16964368923841988711

/-! ## A257222.P17748396180582778771

`A000196(A092454(n+1)²)`
-/

namespace A257222.P17748396180582778771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A092454 (n + 1) ^ 2).toNat

end

end A257222.P17748396180582778771

/-! ## A257222.P6560692940480937764

`A003059(A092454(n+1)²)`
-/

namespace A257222.P6560692940480937764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A092454 (n + 1) ^ 2).toNat

end

end A257222.P6560692940480937764

/-! ## A257222.P1372412317834468828

`A019554(A092454(n+1)²)`
-/

namespace A257222.P1372412317834468828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A092454 (n + 1) ^ 2).toNat

end

end A257222.P1372412317834468828

/-!
# A257223: Numbers that have at least one divisor containing the digit 6 in base 10.

The programs for A257223, there is no canonical definition to state claims against.
-/

/-! ## A257223.P15652569003666872281

`lt[A016114(A347381(2*n+3)), A035363(n)]`
-/

namespace A257223.P15652569003666872281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016114 (A347381 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257223.P15652569003666872281

/-! ## A257223.P7238254171564426393

`∑[A164510(record[A157405(n)])]`
-/

namespace A257223.P7238254171564426393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164510 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257223.P7238254171564426393

/-! ## A257223.P8693980945985327557

`lt[A151811(2*(n+2)), A083893(n+1)]+1`
-/

namespace A257223.P8693980945985327557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151811 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A257223.P8693980945985327557

/-! ## A257223.P17820328114697891104

`A364192(A045896(n))+A362605(n+1)`
-/

namespace A257223.P17820328114697891104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364192 (A045896 n).toNat + A362605 (n + 1)

end

end A257223.P17820328114697891104

/-! ## A257223.P13565246846644904817

`A112763(A122736(n))*A275608(n+1)`
-/

namespace A257223.P13565246846644904817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112763 (A122736 n).toNat * A275608 (n + 1)

end

end A257223.P13565246846644904817

/-!
# A257224: Numbers that have at least one divisor containing the digit 7 in base 10.

The programs for A257224, there is no canonical definition to state claims against.
-/

/-! ## A257224.P8585064243429128478

`lt[A005928(A043212(3*n+5)), A083894(n+1)]+1`
-/

namespace A257224.P8585064243429128478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A043212 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A257224.P8585064243429128478

/-! ## A257224.P16327837472442584624

`A131209(eq[1, A083894(n+1)])`
-/

namespace A257224.P16327837472442584624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257224.P16327837472442584624

/-! ## A257224.P8581319616475870504

`A293754(eq[1, A083894(n+1)])`
-/

namespace A257224.P8581319616475870504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257224.P8581319616475870504

/-! ## A257224.P6724515471353042974

`lt[1, A083917(n+1)^A000040(A055998(2*(n+1)))+1]+1`
-/

namespace A257224.P6724515471353042974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083917 (n + 1) : ℚ) ^ (A000040 (A055998 (2 * (n + 1))).toNat : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A257224.P6724515471353042974

/-!
# A257225: Numbers that have at least one divisor containing the digit 8 in base 10.

The programs for A257225, there is no canonical definition to state claims against.
-/

/-! ## A257225.P464910637953642005

`A293754(lt[0, A083895(n+1)])`
-/

namespace A257225.P464910637953642005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257225.P464910637953642005

/-! ## A257225.P9959099902259070978

`lt[A010673(n), A083895(A160755(n+1))]`
-/

namespace A257225.P9959099902259070978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A160755 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257225.P9959099902259070978

/-! ## A257225.P17240418000289431658

`lt[A083895(n+1), A083895(A160755(n+1))]`
-/

namespace A257225.P17240418000289431658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (A160755 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257225.P17240418000289431658

/-!
# A257226: Numbers that have at least one divisor containing the digit 9 in base 10.

The programs for A257226, there is no canonical definition to state claims against.
-/

/-! ## A257226.P251694369450568959

`lt[4, a(A083896(n))²]` with `a(0)=2`
-/

namespace A257226.P251694369450568959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A083896 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257226.P251694369450568959

/-! ## A257226.P14810467814149645521

`lt[0, A083896(n+1)]+1`
-/

namespace A257226.P14810467814149645521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A257226.P14810467814149645521

/-! ## A257226.P8807067772462020693

`lt[8, A209928(n+1)]+1`
-/

namespace A257226.P8807067772462020693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A257226.P8807067772462020693

/-! ## A257226.P4000696586285762090

`lt[0, A083896(A028310(n))]`
-/

namespace A257226.P4000696586285762090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257226.P4000696586285762090

/-! ## A257226.P9165172891323808004

`A020725(lt[0, A083896(n+1)])`
-/

namespace A257226.P9165172891323808004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257226.P9165172891323808004

/-! ## A257226.P7341776600132504039

`eq[1, A000010(a(A083896(n)))]` with `a(0)=3`
-/

namespace A257226.P7341776600132504039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A083896 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257226.P7341776600132504039

/-! ## A257226.P15661243067314726513

`eq[1, A000045(a(A083896(n)))]` with `a(0)=3`
-/

namespace A257226.P15661243067314726513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A083896 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257226.P15661243067314726513

/-!
# A257230: Floor(sqrt(q)-(q-p)), where p and q are consecutive primes.

The programs for A257230, the canonical program `A257230.P10276478354982974710` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257230 has offset 1).

The definition of A257230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257230.P10276478354982974710

`A006093(n+1)-A165994(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257230

/-- `A006093(n+1)-A165994(n+2)` -/
def P10276478354982974710.Spec : Prop :=
  ∀ n, P10276478354982974710.a n = A257230 (n + 1)

theorem P10276478354982974710.correct : P10276478354982974710.Spec := by
  intro n
  simp only [A257230, Nat.add_sub_cancel]

end A257230

/-! ## A257230.P10414957893110658851

`A000040(n+1)-(A165994(n+2)+1)`
-/

namespace A257230.P10414957893110658851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A165994 (n + 2) + 1)

end

end A257230.P10414957893110658851

namespace A257230

/-- `A000040(n+1)-(A165994(n+2)+1)` -/
def P10414957893110658851.Spec : Prop :=
  ∀ n, P10414957893110658851.a n = A257230 (n + 1)

theorem P10414957893110658851.correct : P10414957893110658851.Spec := by
  intro n
  simp only [A257230, Nat.add_sub_cancel, A257230.P10414957893110658851.a, A257230.P10276478354982974710.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A165994, A165994.P15795052251853394702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A257230

/-! ## A257230.P11021244228243651147

`A000006(n+2)-A001223(n+1)`
-/

namespace A257230.P11021244228243651147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 2) - A001223 (n + 1)

end

end A257230.P11021244228243651147

namespace A257230

/-- `A000006(n+2)-A001223(n+1)` -/
def P11021244228243651147.Spec : Prop :=
  ∀ n, P11021244228243651147.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P7173402734559991448

`A000040(n+1)-A112045(n+2)`
-/

namespace A257230.P7173402734559991448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A112045 (n + 2)

end

end A257230.P7173402734559991448

namespace A257230

/-- `A000040(n+1)-A112045(n+2)` -/
def P7173402734559991448.Spec : Prop :=
  ∀ n, P7173402734559991448.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P13096777527891821589

`A182986(n+2)-A112045(n+2)`
-/

namespace A257230.P13096777527891821589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A112045 (n + 2)

end

end A257230.P13096777527891821589

namespace A257230

/-- `A182986(n+2)-A112045(n+2)` -/
def P13096777527891821589.Spec : Prop :=
  ∀ n, P13096777527891821589.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P14645500751029840276

`A000006(n+2)-Δ[A000040(n+1)]`
-/

namespace A257230.P14645500751029840276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 2) - (f1 (n + 1) - f1 n)

end

end A257230.P14645500751029840276

namespace A257230

/-- `A000006(n+2)-Δ[A000040(n+1)]` -/
def P14645500751029840276.Spec : Prop :=
  ∀ n, P14645500751029840276.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P10604727031871247774

`A000040(n+1)+A000006(n+2)-A000040(n+2)`
-/

namespace A257230.P10604727031871247774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000006 (n + 2) - A000040 (n + 2))

end

end A257230.P10604727031871247774

namespace A257230

/-- `A000040(n+1)+A000006(n+2)-A000040(n+2)` -/
def P10604727031871247774.Spec : Prop :=
  ∀ n, P10604727031871247774.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P2986144984455517068

`A006093(n+1)+A000006(n+2)-A006093(n+2)`
-/

namespace A257230.P2986144984455517068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A000006 (n + 2) - A006093 (n + 2))

end

end A257230.P2986144984455517068

namespace A257230

/-- `A006093(n+1)+A000006(n+2)-A006093(n+2)` -/
def P2986144984455517068.Spec : Prop :=
  ∀ n, P2986144984455517068.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P10656008259931027426

`A008864(n+1)+A000006(n+2)-A008864(n+2)`
-/

namespace A257230.P10656008259931027426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A000006 (n + 2) - A008864 (n + 2))

end

end A257230.P10656008259931027426

namespace A257230

/-- `A008864(n+1)+A000006(n+2)-A008864(n+2)` -/
def P10656008259931027426.Spec : Prop :=
  ∀ n, P10656008259931027426.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P2284411679561623343

`A014689(n+1)+A000006(n+2)-A014692(n+2)`
-/

namespace A257230.P2284411679561623343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A000006 (n + 2) - A014692 (n + 2))

end

end A257230.P2284411679561623343

namespace A257230

/-- `A014689(n+1)+A000006(n+2)-A014692(n+2)` -/
def P2284411679561623343.Spec : Prop :=
  ∀ n, P2284411679561623343.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P15192536265176163787

`A086801(n+1)+A000006(n+2)-A086801(n+2)`
-/

namespace A257230.P15192536265176163787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + (A000006 (n + 2) - A086801 (n + 2))

end

end A257230.P15192536265176163787

namespace A257230

/-- `A086801(n+1)+A000006(n+2)-A086801(n+2)` -/
def P15192536265176163787.Spec : Prop :=
  ∀ n, P15192536265176163787.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P5713134368108145011

`A113935(n+1)+A000006(n+2)-A113935(n+2)`
-/

namespace A257230.P5713134368108145011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + (A000006 (n + 2) - A113935 (n + 2))

end

end A257230.P5713134368108145011

namespace A257230

/-- `A113935(n+1)+A000006(n+2)-A113935(n+2)` -/
def P5713134368108145011.Spec : Prop :=
  ∀ n, P5713134368108145011.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P11410374268067145247

`A175222(n+1)+A000006(n+2)-A175222(n+2)`
-/

namespace A257230.P11410374268067145247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + (A000006 (n + 2) - A175222 (n + 2))

end

end A257230.P11410374268067145247

namespace A257230

/-- `A175222(n+1)+A000006(n+2)-A175222(n+2)` -/
def P11410374268067145247.Spec : Prop :=
  ∀ n, P11410374268067145247.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P2937379005603139919

`A175224(n+1)+A000006(n+2)-A175224(n+2)`
-/

namespace A257230.P2937379005603139919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + (A000006 (n + 2) - A175224 (n + 2))

end

end A257230.P2937379005603139919

namespace A257230

/-- `A175224(n+1)+A000006(n+2)-A175224(n+2)` -/
def P2937379005603139919.Spec : Prop :=
  ∀ n, P2937379005603139919.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P10552579109561915946

`A000006(n+2)+A162177(n+2)-A014689(n+2)`
-/

namespace A257230.P10552579109561915946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 2) + (A162177 (n + 2) - A014689 (n + 2))

end

end A257230.P10552579109561915946

namespace A257230

/-- `A000006(n+2)+A162177(n+2)-A014689(n+2)` -/
def P10552579109561915946.Spec : Prop :=
  ∀ n, P10552579109561915946.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P4031452748113865202

`eq[2, A005127(n+1)]-A165994(n+2)`
-/

namespace A257230.P4031452748113865202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A165994 (n + 2)

end

end A257230.P4031452748113865202

namespace A257230

/-- `eq[2, A005127(n+1)]-A165994(n+2)` -/
def P4031452748113865202.Spec : Prop :=
  ∀ n, P4031452748113865202.a n = A257230 (n + 1)

end A257230

/-! ## A257230.P16526387902549201419

`p?[A173517(n)]-A173517(A000040(n+2))`
-/

namespace A257230.P16526387902549201419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A173517 (A000040 (n + 2)).toNat

end

end A257230.P16526387902549201419

namespace A257230

/-- `p?[A173517(n)]-A173517(A000040(n+2))` -/
def P16526387902549201419.Spec : Prop :=
  ∀ n, P16526387902549201419.a n = A257230 (n + 1)

end A257230

/-!
# A257231: a(n) = n^2 mod p where p is the least prime greater than n.

The programs for A257231, the canonical program `A257231.P13727271294226121657` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257231 has offset 1).

The definition of A257231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257231.P9360952015152051477

`(n+1)²%A151800(n+1)`
-/

namespace A257231.P9360952015152051477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A151800 (n + 1))

end

end A257231.P9360952015152051477

namespace A257231

/-- `(n+1)²%A151800(n+1)` -/
def P9360952015152051477.Spec : Prop :=
  ∀ n, P9360952015152051477.a n = A257231 (n + 1)

end A257231

/-! ## A257231.P13727271294226121657

`((n+1)*(n+1))%A000040(∑[A010051(n+1)]+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257231

/-- `((n+1)*(n+1))%A000040(∑[A010051(n+1)]+1)` -/
def P13727271294226121657.Spec : Prop :=
  ∀ n, P13727271294226121657.a n = A257231 (n + 1)

theorem P13727271294226121657.correct : P13727271294226121657.Spec := by
  intro n
  simp only [A257231, Nat.add_sub_cancel]

end A257231

/-! ## A257231.P11643986725264417992

`∑[2*n+1]%A007918(n+2)`
-/

namespace A257231.P11643986725264417992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A007918 (n + 2))

end

end A257231.P11643986725264417992

namespace A257231

/-- `∑[2*n+1]%A007918(n+2)` -/
def P11643986725264417992.Spec : Prop :=
  ∀ n, P11643986725264417992.a n = A257231 (n + 1)

end A257231

/-! ## A257231.P16924388186399632038

`A000290(n+1)%A159477(n+2)`
-/

namespace A257231.P16924388186399632038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 1)) (A159477 (n + 2))

end

end A257231.P16924388186399632038

namespace A257231

/-- `A000290(n+1)%A159477(n+2)` -/
def P16924388186399632038.Spec : Prop :=
  ∀ n, P16924388186399632038.a n = A257231 (n + 1)

end A257231

/-! ## A257231.P7038379779641540579

`record[A060734(n+1)]%(A151800(n+1)%A358931(n+3))`
-/

namespace A257231.P7038379779641540579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (Int.tmod (A151800 (n + 1)) (A358931 (n + 3)))

end

end A257231.P7038379779641540579

namespace A257231

/-- `record[A060734(n+1)]%(A151800(n+1)%A358931(n+3))` -/
def P7038379779641540579.Spec : Prop :=
  ∀ n, P7038379779641540579.a n = A257231 (n + 1)

end A257231

/-!
# A257232: Triangle T(n, k) with the natural numbers in columns with nonprime k and the nonnegative numbers in columns with prime k, for 1 <= k <= n.

The programs for A257232, the canonical program `A257232.P16262734175053070523` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257232 has offset 1).

The definition of A257232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257232.P16386039173933668682

`A004736(n+1)-A143538(n+1)`
-/

namespace A257232.P16386039173933668682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A143538 (n + 1)

end

end A257232.P16386039173933668682

namespace A257232

/-- `A004736(n+1)-A143538(n+1)` -/
def P16386039173933668682.Spec : Prop :=
  ∀ n, P16386039173933668682.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P10013433441162970286

`A127739(n+1)-(A143538(n+1)+n)`
-/

namespace A257232.P10013433441162970286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - (A143538 (n + 1) + (n : ℤ))

end

end A257232.P10013433441162970286

namespace A257232

/-- `A127739(n+1)-(A143538(n+1)+n)` -/
def P10013433441162970286.Spec : Prop :=
  ∀ n, P10013433441162970286.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P5324640625945458585

`A025581(n)+A005171(A002260(n+1))`
-/

namespace A257232.P5324640625945458585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A005171 (A002260 (n + 1)).toNat

end

end A257232.P5324640625945458585

namespace A257232

/-- `A025581(n)+A005171(A002260(n+1))` -/
def P5324640625945458585.Spec : Prop :=
  ∀ n, P5324640625945458585.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P10681091827080968908

`A001057(A099375(n))-A143538(n+1)`
-/

namespace A257232.P10681091827080968908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A099375 n).toNat - A143538 (n + 1)

end

end A257232.P10681091827080968908

namespace A257232

/-- `A001057(A099375(n))-A143538(n+1)` -/
def P10681091827080968908.Spec : Prop :=
  ∀ n, P10681091827080968908.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P7382735412811075969

`A004736(n+1)-A010051(A002260(n+1))`
-/

namespace A257232.P7382735412811075969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A010051 (A002260 (n + 1)).toNat

end

end A257232.P7382735412811075969

namespace A257232

/-- `A004736(n+1)-A010051(A002260(n+1))` -/
def P7382735412811075969.Spec : Prop :=
  ∀ n, P7382735412811075969.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P8141401447642984569

`A002260(A038722(n+1))-A143538(n+1)`
-/

namespace A257232.P8141401447642984569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat - A143538 (n + 1)

end

end A257232.P8141401447642984569

namespace A257232

/-- `A002260(A038722(n+1))-A143538(n+1)` -/
def P8141401447642984569.Spec : Prop :=
  ∀ n, P8141401447642984569.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P16262734175053070523

`A003057(n+2)-A014683(A002260(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257232

/-- `A003057(n+2)-A014683(A002260(n+1))` -/
def P16262734175053070523.Spec : Prop :=
  ∀ n, P16262734175053070523.a n = A257232 (n + 1)

theorem P16262734175053070523.correct : P16262734175053070523.Spec := by
  intro n
  simp only [A257232, Nat.add_sub_cancel]

end A257232

/-! ## A257232.P796526247901041121

`A004736(n+1)-A010051(sqrt(A133819(n+1)))`
-/

namespace A257232.P796526247901041121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A010051 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat

end

end A257232.P796526247901041121

namespace A257232

/-- `A004736(n+1)-A010051(sqrt(A133819(n+1)))` -/
def P796526247901041121.Spec : Prop :=
  ∀ n, P796526247901041121.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P6385563104098229238

`A004736(n+1)-A010051(1-A057944(n)+n)`
-/

namespace A257232.P6385563104098229238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - A010051 (1 - A057944 n + (n : ℤ)).toNat

end

end A257232.P6385563104098229238

namespace A257232

/-- `A004736(n+1)-A010051(1-A057944(n)+n)` -/
def P6385563104098229238.Spec : Prop :=
  ∀ n, P6385563104098229238.a n = A257232 (n + 1)

end A257232

/-! ## A257232.P3399303999916148855

`A002260(A038722(n+1))-A010051(A002260(n+1))`
-/

namespace A257232.P3399303999916148855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat - A010051 (A002260 (n + 1)).toNat

end

end A257232.P3399303999916148855

namespace A257232

/-- `A002260(A038722(n+1))-A010051(A002260(n+1))` -/
def P3399303999916148855.Spec : Prop :=
  ∀ n, P3399303999916148855.a n = A257232 (n + 1)

end A257232

/-!
# A257233: Multiplicity sequence for the alternating row sums of triangle A257232.

The programs for A257233, there is no canonical definition to state claims against.
-/

/-! ## A257233.P4221902796994486259

`Δ[A014092(n+2)]-char[1]`
-/

namespace A257233.P4221902796994486259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257233.P4221902796994486259

/-! ## A257233.P14613303886649839372

`Δ[eq[val(n+1, 2), A010051(n+1)]]`
-/

namespace A257233.P14613303886649839372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A257233.P14613303886649839372

/-! ## A257233.P6979286439799349913

`A026266(Δ[A014092(n+2)])`
-/

namespace A257233.P6979286439799349913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026266 (f1 (n + 1) - f1 n).toNat

end

end A257233.P6979286439799349913

/-!
# A257234: Levels of Narayana tree written as rows of an irregular triangle.

The programs for A257234, there is no canonical definition to state claims against.
-/

/-! ## A257234.P8070962877523184312

`A349373(A194896(n+1))^A000129(n)`
-/

namespace A257234.P8070962877523184312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349373 (A194896 (n + 1)).toNat : ℚ) ^ (A000129 n : ℤ)

end

end A257234.P8070962877523184312

/-! ## A257234.P15824504226909088545

`A349373(A194896(n+1))^A007088(n)`
-/

namespace A257234.P15824504226909088545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349373 (A194896 (n + 1)).toNat : ℚ) ^ (A007088 n : ℤ)

end

end A257234.P15824504226909088545

/-! ## A257234.P6097799726195522728

`A349373(A194896(n+1))^A124388(n)`
-/

namespace A257234.P6097799726195522728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349373 (A194896 (n + 1)).toNat : ℚ) ^ (A124388 n : ℤ)

end

end A257234.P6097799726195522728

/-! ## A257234.P186694365295361519

`A349373(A194896(n+1))^A270841(n+1)`
-/

namespace A257234.P186694365295361519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349373 (A194896 (n + 1)).toNat : ℚ) ^ (A270841 (n + 1) : ℤ)

end

end A257234.P186694365295361519

/-! ## A257234.P3554410187710522007

`A349373(A194896(n+1))^A092364(2*n+1)`
-/

namespace A257234.P3554410187710522007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349373 (A194896 (n + 1)).toNat : ℚ) ^ (A092364 (2 * n + 1) : ℤ)

end

end A257234.P3554410187710522007

/-!
# A257238: Triangle T(n, k) = n^3 - k^3, 0 <= k < = n.

The programs for A257238, the canonical program `A257238.P15274372253405163810` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257238 has offset 0).

The definition of A257238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257238.P15274372253405163810

`A025581(n)*A132111(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A257238

/-- `A025581(n)*A132111(n)` -/
def P15274372253405163810.Spec : Prop :=
  ∀ n, P15274372253405163810.a n = A257238 n

theorem P15274372253405163810.correct : P15274372253405163810.Spec := by
  intro n
  simp only [A257238]

end A257238

/-! ## A257238.P13841993048729129979

`(A079904(n)+A069011(n))*A025581(n)`
-/

namespace A257238.P13841993048729129979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 n + A069011 n) * A025581 n

end

end A257238.P13841993048729129979

namespace A257238

/-- `(A079904(n)+A069011(n))*A025581(n)` -/
def P13841993048729129979.Spec : Prop :=
  ∀ n, P13841993048729129979.a n = A257238 n

theorem P13841993048729129979.correct : P13841993048729129979.Spec := by
  intro n
  simp only [A257238, Nat.add_sub_cancel, A257238.P13841993048729129979.a, A257238.P15274372253405163810.a, A025581, A025581.P420762180635059694.a, A069011, A069011.P9337676359071489470.a, A079904, A079904.P1795222969403769225.a, A132111, A132111.P3713491471241087217.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A004736, A004736.P10337537277358081527.a, A076110, A076110.P10148523856418061428.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A073254, A073254.P2567531270234168708.a, A059036, A059036.P10984433159116004346.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A257238

/-! ## A257238.P2283674579029529153

`(A051162(n)²-A079904(n))*A025581(n)`
-/

namespace A257238.P2283674579029529153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n ^ 2 - A079904 n) * A025581 n

end

end A257238.P2283674579029529153

namespace A257238

/-- `(A051162(n)²-A079904(n))*A025581(n)` -/
def P2283674579029529153.Spec : Prop :=
  ∀ n, P2283674579029529153.a n = A257238 n

end A257238

/-! ## A257238.P14796973367448886781

`A000578(A003056(n))-A000578(A002262(n))`
-/

namespace A257238.P14796973367448886781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003056 n).toNat - A000578 (A002262 n).toNat

end

end A257238.P14796973367448886781

namespace A257238

/-- `A000578(A003056(n))-A000578(A002262(n))` -/
def P14796973367448886781.Spec : Prop :=
  ∀ n, P14796973367448886781.a n = A257238 n

end A257238

/-! ## A257238.P12259698047362120783

`A000578(A003056(n))-A000578(A002260(n+1)-1)`
-/

namespace A257238.P12259698047362120783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003056 n).toNat - A000578 (A002260 (n + 1) - 1).toNat

end

end A257238.P12259698047362120783

namespace A257238

/-- `A000578(A003056(n))-A000578(A002260(n+1)-1)` -/
def P12259698047362120783.Spec : Prop :=
  ∀ n, P12259698047362120783.a n = A257238 n

end A257238

/-! ## A257238.P7680295971849404870

`A025581(n)*A073254(A245300(n))`
-/

namespace A257238.P7680295971849404870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A073254 (A245300 n).toNat

end

end A257238.P7680295971849404870

namespace A257238

/-- `A025581(n)*A073254(A245300(n))` -/
def P7680295971849404870.Spec : Prop :=
  ∀ n, P7680295971849404870.a n = A257238 n

end A257238

/-! ## A257238.P11164353662250417588

`A002262(A061579(n))*A073254(A245300(n))`
-/

namespace A257238.P11164353662250417588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A061579 n).toNat * A073254 (A245300 n).toNat

end

end A257238.P11164353662250417588

namespace A257238

/-- `A002262(A061579(n))*A073254(A245300(n))` -/
def P11164353662250417588.Spec : Prop :=
  ∀ n, P11164353662250417588.a n = A257238 n

end A257238

/-! ## A257238.P3533746081249281921

`A059252(A163359(n))*A073254(A245300(n))`
-/

namespace A257238.P3533746081249281921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163359 n).toNat * A073254 (A245300 n).toNat

end

end A257238.P3533746081249281921

namespace A257238

/-- `A059252(A163359(n))*A073254(A245300(n))` -/
def P3533746081249281921.Spec : Prop :=
  ∀ n, P3533746081249281921.a n = A257238 n

end A257238

/-!
# A257241: Irregular triangle read by rows: Stifel's version of the arithmetical triangle.

The programs for A257241, the canonical program `A257241.P17121399944086540020` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257241 has offset 1).

The definition of A257241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257241.P17121399944086540020

`C(A000267(n), A055087(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A257241

/-- `C(A000267(n), A055087(n)+1)` -/
def P17121399944086540020.Spec : Prop :=
  ∀ n, (P17121399944086540020.a n : ℤ) = A257241 (n + 1)

theorem P17121399944086540020.correct : P17121399944086540020.Spec := by
  intro n
  simp only [A257241, Nat.add_sub_cancel]

end A257241

/-! ## A257241.P4085833956083757986

`A213343(n+1)/A207538(n+1)`
-/

namespace A257241.P4085833956083757986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213343 (n + 1) : ℚ) / (A207538 (n + 1) : ℚ)

end

end A257241.P4085833956083757986

namespace A257241

/-- `A213343(n+1)/A207538(n+1)` -/
def P4085833956083757986.Spec : Prop :=
  ∀ n, P4085833956083757986.a n = (A257241 (n + 1) : ℚ)

end A257241

/-! ## A257241.P2608899745054576455

`A014463(n+1)-(A014462(A000037(n+1))+A014462(n+1))`
-/

namespace A257241.P2608899745054576455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014463 (n + 1) - (A014462 (A000037 (n + 1)).toNat + A014462 (n + 1))

end

end A257241.P2608899745054576455

namespace A257241

/-- `A014463(n+1)-(A014462(A000037(n+1))+A014462(n+1))` -/
def P2608899745054576455.Spec : Prop :=
  ∀ n, P2608899745054576455.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P14202238132614807523

`A165257(A056536(n+1))`
-/

namespace A257241.P14202238132614807523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165257 (A056536 (n + 1)).toNat

end

end A257241.P14202238132614807523

namespace A257241

/-- `A165257(A056536(n+1))` -/
def P14202238132614807523.Spec : Prop :=
  ∀ n, P14202238132614807523.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P15165948940450262169

`A007318(lt[n+1, A038722(n+1)]+1)`
-/

namespace A257241.P15165948940450262169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A257241.P15165948940450262169

namespace A257241

/-- `A007318(lt[n+1, A038722(n+1)]+1)` -/
def P15165948940450262169.Spec : Prop :=
  ∀ n, P15165948940450262169.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P11036892937363809569

`A007318(eq[0, A026729(n)]+1)`
-/

namespace A257241.P11036892937363809569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A257241.P11036892937363809569

namespace A257241

/-- `A007318(eq[0, A026729(n)]+1)` -/
def P11036892937363809569.Spec : Prop :=
  ∀ n, P11036892937363809569.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P7739185572716268022

`A007318(lt[A026729(n), 1]+1)`
-/

namespace A257241.P7739185572716268022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A257241.P7739185572716268022

namespace A257241

/-- `A007318(lt[A026729(n), 1]+1)` -/
def P7739185572716268022.Spec : Prop :=
  ∀ n, P7739185572716268022.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P2527164139778492494

`A007318(lt[A098158(n), 1]+1)`
-/

namespace A257241.P2527164139778492494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A257241.P2527164139778492494

namespace A257241

/-- `A007318(lt[A098158(n), 1]+1)` -/
def P2527164139778492494.Spec : Prop :=
  ∀ n, P2527164139778492494.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P6973299870869247951

`A007318(lt[1, A202209(n)]+1)`
-/

namespace A257241.P6973299870869247951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A257241.P6973299870869247951

namespace A257241

/-- `A007318(lt[1, A202209(n)]+1)` -/
def P6973299870869247951.Spec : Prop :=
  ∀ n, P6973299870869247951.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P10221697271307960874

`A007318(lt[A207543(n), 1]+1)`
-/

namespace A257241.P10221697271307960874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207543 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A257241.P10221697271307960874

namespace A257241

/-- `A007318(lt[A207543(n), 1]+1)` -/
def P10221697271307960874.Spec : Prop :=
  ∀ n, P10221697271307960874.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P287391665500230963

`A007318(lt[n, A061579(n)]+1)`
-/

namespace A257241.P287391665500230963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A257241.P287391665500230963

namespace A257241

/-- `A007318(lt[n, A061579(n)]+1)` -/
def P287391665500230963.Spec : Prop :=
  ∀ n, P287391665500230963.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P6814466288593357402

`A007318(record[(n+1)%A061579(n+1)+1])`
-/

namespace A257241.P6814466288593357402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A061579 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257241.P6814466288593357402

namespace A257241

/-- `A007318(record[(n+1)%A061579(n+1)+1])` -/
def P6814466288593357402.Spec : Prop :=
  ∀ n, P6814466288593357402.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P2627798293121344894

`A007318(lt[A029620(n), A029621(n)])`
-/

namespace A257241.P2627798293121344894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257241.P2627798293121344894

namespace A257241

/-- `A007318(lt[A029620(n), A029621(n)])` -/
def P2627798293121344894.Spec : Prop :=
  ∀ n, P2627798293121344894.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P11929128488565029946

`A007318(lt[A002262(n), A025581(n)]+1)`
-/

namespace A257241.P11929128488565029946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A257241.P11929128488565029946

namespace A257241

/-- `A007318(lt[A002262(n), A025581(n)]+1)` -/
def P11929128488565029946.Spec : Prop :=
  ∀ n, P11929128488565029946.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P12082366051429392790

`A007318(lt[A207618(n+1), A207614(n+1)])`
-/

namespace A257241.P12082366051429392790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257241.P12082366051429392790

namespace A257241

/-- `A007318(lt[A207618(n+1), A207614(n+1)])` -/
def P12082366051429392790.Spec : Prop :=
  ∀ n, P12082366051429392790.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P10835601653438036883

`A007318(lt[A207627(n+1), A207628(n+1)])`
-/

namespace A257241.P10835601653438036883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257241.P10835601653438036883

namespace A257241

/-- `A007318(lt[A207627(n+1), A207628(n+1)])` -/
def P10835601653438036883.Spec : Prop :=
  ∀ n, P10835601653438036883.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P8992753957545163829

`A007318(lt[A210195(n+1), A210203(n+1)])`
-/

namespace A257241.P8992753957545163829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257241.P8992753957545163829

namespace A257241

/-- `A007318(lt[A210195(n+1), A210203(n+1)])` -/
def P8992753957545163829.Spec : Prop :=
  ∀ n, P8992753957545163829.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P12936893796548146161

`A007318(lt[A002260(n+1), A004736(n+1)]+1)`
-/

namespace A257241.P12936893796548146161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A257241.P12936893796548146161

namespace A257241

/-- `A007318(lt[A002260(n+1), A004736(n+1)]+1)` -/
def P12936893796548146161.Spec : Prop :=
  ∀ n, P12936893796548146161.a n = A257241 (n + 1)

end A257241

/-! ## A257241.P1838897857331674190

`A074909(A274427(n+1))`
-/

namespace A257241.P1838897857331674190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A274427 (n + 1)).toNat

end

end A257241.P1838897857331674190

namespace A257241

/-- `A074909(A274427(n+1))` -/
def P1838897857331674190.Spec : Prop :=
  ∀ n, P1838897857331674190.a n = A257241 (n + 1)

end A257241

/-!
# A257242: Random Fibonacci tree defined with the pair(1,1).

The programs for A257242, there is no canonical definition to state claims against.
-/

/-! ## A257242.P8973633913562297582

`A050370(∑[record[A335915(n+1)]])`
-/

namespace A257242.P8973633913562297582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257242.P8973633913562297582

/-!
# A257243: Tree R defined as the subtree of A257242 tree made of all shortest walks.

The programs for A257243, there is no canonical definition to state claims against.
-/

/-! ## A257243.P3958004405540362588

`A257242(A280873(n)+1)`
-/

namespace A257243.P3958004405540362588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257242 (A280873 n + 1).toNat

end

end A257243.P3958004405540362588

/-!
# A257244: First differences of A256393: a(n) = A256393(n+1) - A256393(n).

The programs for A257244, there is no canonical definition to state claims against.
-/

/-! ## A257244.P13411496522169945288

`A256393(n+2)-A256393(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257244.P13411496522169945288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (n + 2) - A256393 (n + 1)

end

end A257244.P13411496522169945288

/-! ## A257244.P1450545487282258320

`Δ[A256393(n+1)]`
-/

namespace A257244.P1450545487282258320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257244.P1450545487282258320

/-! ## A257244.P14122188994695633648

`Δ[record[A256393(A291769(n))]]`
-/

namespace A257244.P14122188994695633648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257244.P14122188994695633648

/-! ## A257244.P12800743790712195940

`p?[Δ[A256393(A028310(n))]]`
-/

namespace A257244.P12800743790712195940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257244.P12800743790712195940

/-! ## A257244.P15896100046836002547

`A006530(gcd(A256393(n+1), A256393(n+2)))`
-/

namespace A257244.P15896100046836002547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A256393 (n + 1)) (A256393 (n + 2)))

end

end A257244.P15896100046836002547

/-! ## A257244.P9315738744666017785

`A006530(A256393(n+2)%(A256393(n+1)+1)+1)`
-/

namespace A257244.P9315738744666017785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A256393 (n + 2)) (A256393 (n + 1) + 1) + 1).toNat

end

end A257244.P9315738744666017785

/-! ## A257244.P15424378245710399330

`Δ[record[A256393(A134478(n))]]`
-/

namespace A257244.P15424378245710399330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257244.P15424378245710399330

/-! ## A257244.P6774018250255782918

`Δ[A276269(a(n-1))]` with `a(0)=2`
-/

namespace A257244.P6774018250255782918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A276269 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257244.P6774018250255782918

/-!
# A257245: Odd bisection of A257244: a(n) = A257244(2n - 1).

The programs for A257245, there is no canonical definition to state claims against.
-/

/-! ## A257245.P16709023110222925177

`A257244(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257245.P16709023110222925177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (2 * n + 1)

end

end A257245.P16709023110222925177

/-! ## A257245.P16377899801215980768

`A257244(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257245.P16377899801215980768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (2 * (n + 1) - 1)

end

end A257245.P16377899801215980768

/-! ## A257245.P7978990142060840833

`A006530(A256393(2*(n+1)-1))`
-/

namespace A257245.P7978990142060840833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A256393 (2 * (n + 1) - 1)).toNat

end

end A257245.P7978990142060840833

/-! ## A257245.P3982947530154309224

`A256393(2*(n+1))-A256393(2*n+1)`
-/

namespace A257245.P3982947530154309224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (2 * (n + 1)) - A256393 (2 * n + 1)

end

end A257245.P3982947530154309224

/-! ## A257245.P16226840774130322044

`gcd(A256393(2*n+1), A256393(2*n+2))`
-/

namespace A257245.P16226840774130322044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256393 (2 * n + 1)) (A256393 (2 * n + 2))

end

end A257245.P16226840774130322044

/-! ## A257245.P8827541767141228098

`A020639(A257244(n+1+n))`
-/

namespace A257245.P8827541767141228098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A257244 (n + 1 + n)).toNat

end

end A257245.P8827541767141228098

/-! ## A257245.P9253564262215560109

`A006530(A006530(A256393(n+1+n)))`
-/

namespace A257245.P9253564262215560109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A256393 (n + 1 + n)).toNat).toNat

end

end A257245.P9253564262215560109

/-!
# A257246: Even bisection of A257244: a(n) = A257244(2n).

The programs for A257246, there is no canonical definition to state claims against.
-/

/-! ## A257246.P8615207744363314277

`A257244(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257246.P8615207744363314277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (2 * (n + 1))

end

end A257246.P8615207744363314277

/-! ## A257246.P10605549987486445352

`A020639(A256393(2*(n+1)))`
-/

namespace A257246.P10605549987486445352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256393 (2 * (n + 1))).toNat

end

end A257246.P10605549987486445352

/-! ## A257246.P2380201526863923505

`A006530(A257244(n+2+n))`
-/

namespace A257246.P2380201526863923505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A257244 (n + 2 + n)).toNat

end

end A257246.P2380201526863923505

/-! ## A257246.P10719768216611178480

`∑{d}[A257244(n+2+n), A000010(#)]`
-/

namespace A257246.P10719768216611178480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A257246.P10719768216611178480

/-! ## A257246.P4683656822855487867

`A257244(n+2+n)+char[A134698(n+1)]`
-/

namespace A257246.P4683656822855487867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (n + 2 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257246.P4683656822855487867

/-! ## A257246.P16590542794095948913

`A257244(n+2+n)+char[A268578(n+1)]`
-/

namespace A257246.P16590542794095948913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268578 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (n + 2 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257246.P16590542794095948913

/-! ## A257246.P7945021853156845117

`A256393(2*n+3)-A256393(2*(n+1))`
-/

namespace A257246.P7945021853156845117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (2 * n + 3) - A256393 (2 * (n + 1))

end

end A257246.P7945021853156845117

/-! ## A257246.P10731599983486425031

`A328831(A001316(n))+A257244(n+2+n)`
-/

namespace A257246.P10731599983486425031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328831 (A001316 n).toNat + A257244 (n + 2 + n)

end

end A257246.P10731599983486425031

/-! ## A257246.P1456826219189591494

`A136548(A257244(n+2+n)+1)`
-/

namespace A257246.P1456826219189591494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A257244 (n + 2 + n) + 1).toNat

end

end A257246.P1456826219189591494

/-! ## A257246.P10254274116316628963

`A020639(A070229(A256393(n+1+n)))`
-/

namespace A257246.P10254274116316628963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070229 (A256393 (n + 1 + n)).toNat).toNat

end

end A257246.P10254274116316628963

/-!
# A257247: Numbers n such that A257245(n) = A257246(n), or equally, where A257244(2n) = A257244(2n-1).

The programs for A257247, there is no canonical definition to state claims against.
-/

/-! ## A257247.P4481289230912346313

`eq[A257245(n+1), A257246(n+1)]+1`
-/

namespace A257247.P4481289230912346313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257247.P4481289230912346313

/-! ## A257247.P13747932176786105768

`eq[A257244(2*(n+1)), A257245(n+1)]+1`
-/

namespace A257247.P13747932176786105768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257247.P13747932176786105768

/-! ## A257247.P3879286152524303602

`eq[A257244(2*n+1), A257244(2*(n+1))]+1`
-/

namespace A257247.P3879286152524303602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257244 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257247.P3879286152524303602

/-! ## A257247.P1162637166137491281

`eq[A256393(2*n+3)-A256393(2*(n+1)), A257245(n+1)]+1`
-/

namespace A257247.P1162637166137491281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256393 (2 * n + 3) - A256393 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257247.P1162637166137491281

/-! ## A257247.P2547749081643889403

`eq[A136548(A257244(n+2+n)+1), A257245(n+1)]+1`
-/

namespace A257247.P2547749081643889403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A257244 (n + 2 + n) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257247.P2547749081643889403

/-! ## A257247.P7263306060395358620

`eq[A020639(A256393(2*(n+1))), A257245(n+1)]+1`
-/

namespace A257247.P7263306060395358620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256393 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257247.P7263306060395358620

/-!
# A257248: a(1) = 0; and for n > 1, if A079559(n) = 1, then a(n) = 1 + a(A213714(n)-1), otherwise a(n) = a(A234017(n)).

The programs for A257248, there is no canonical definition to state claims against.
-/

/-! ## A257248.P14674899454837463983

`A256478(n+1)-1`
-/

namespace A257248.P14674899454837463983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (n + 1) - 1

end

end A257248.P14674899454837463983

/-! ## A257248.P4445035422894429733

`A080791(A233275(n+1))`
-/

namespace A257248.P4445035422894429733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A233275 (n + 1)).toNat

end

end A257248.P4445035422894429733

/-! ## A257248.P2095545939197092256

`A000120(A233277(n+1))-1`
-/

namespace A257248.P2095545939197092256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233277 (n + 1)).toNat - 1

end

end A257248.P2095545939197092256

/-! ## A257248.P11464367717560730685

`A070939(n+1)-A257249(n+1)`
-/

namespace A257248.P11464367717560730685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A257249 (n + 1)

end

end A257248.P11464367717560730685

/-! ## A257248.P6513731606510186695

`floor(log2(n+1))-A256479(n+1)`
-/

namespace A257248.P6513731606510186695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - A256479 (n + 1)

end

end A257248.P6513731606510186695

/-! ## A257248.P12880360748965585175

`A267109(A276344(n+1))`
-/

namespace A257248.P12880360748965585175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267109 (A276344 (n + 1)).toNat

end

end A257248.P12880360748965585175

/-! ## A257248.P8760030334265643693

`A267108(A276346(n+1))-1`
-/

namespace A257248.P8760030334265643693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267108 (A276346 (n + 1)).toNat - 1

end

end A257248.P8760030334265643693

/-! ## A257248.P1596415401718911182

`A070941(n+1)-(A257249(n+1)+1)`
-/

namespace A257248.P1596415401718911182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (n + 1) - (A257249 (n + 1) + 1)

end

end A257248.P1596415401718911182

/-! ## A257248.P6741171753468064541

`A256479(A233276(A233277(n+1)))`
-/

namespace A257248.P6741171753468064541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A233276 (A233277 (n + 1)).toNat).toNat

end

end A257248.P6741171753468064541

/-! ## A257248.P6992876914715421347

`A070939(n+1)-A000120(A233275(n+1))`
-/

namespace A257248.P6992876914715421347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A000120 (A233275 (n + 1)).toNat

end

end A257248.P6992876914715421347

/-! ## A257248.P4520986774654754937

`A256991(A005187(A256478(A233277(A233278(n+1)))))`
-/

namespace A257248.P4520986774654754937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256991 (A005187 (A256478 (A233277 (A233278 (n + 1)).toNat).toNat).toNat).toNat

end

end A257248.P4520986774654754937

/-! ## A257248.P16871111637090978591

`A256479(A233278(A233275(A233275(A233276(n+1)))))`
-/

namespace A257248.P16871111637090978591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A233278 (A233275 (A233275 (A233276 (n + 1)).toNat).toNat).toNat).toNat

end

end A257248.P16871111637090978591

/-! ## A257248.P16899769718907678650

`A256479(A233278(A233275(A213714(A005187(n+1)))))`
-/

namespace A257248.P16899769718907678650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A233278 (A233275 (A213714 (A005187 (n + 1)).toNat).toNat).toNat).toNat

end

end A257248.P16899769718907678650

/-!
# A257249: a(0) = 1, and for n >= 1, if A079559(n) = 0, then a(n) = 1 + a(A234017(n)), otherwise a(n) = a(A213714(n)-1).

The programs for A257249, there is no canonical definition to state claims against.
-/

/-! ## A257249.P14381627172210617751

`1+A080791(A233277(n))`
-/

namespace A257249.P14381627172210617751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A080791 (A233277 n).toNat

end

end A257249.P14381627172210617751

/-! ## A257249.P4486652199538150204

`A256479(A028310(n))+1`
-/

namespace A257249.P4486652199538150204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A028310 n).toNat + 1

end

end A257249.P4486652199538150204

/-! ## A257249.P8958536733376064536

`A070941(n)-A256478(n)`
-/

namespace A257249.P8958536733376064536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A256478 n

end

end A257249.P8958536733376064536

/-! ## A257249.P11809683316627312793

`A256479(A005187(n+1))+1`
-/

namespace A257249.P11809683316627312793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A005187 (n + 1)).toNat + 1

end

end A257249.P11809683316627312793

/-! ## A257249.P16564285998085812288

`A256479(∑[A001511(n+1)])+1`
-/

namespace A257249.P16564285998085812288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A257249.P16564285998085812288

/-! ## A257249.P10842406428330570177

`A070939(n)-A080791(A233275(n))`
-/

namespace A257249.P10842406428330570177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A080791 (A233275 n).toNat

end

end A257249.P10842406428330570177

/-! ## A257249.P5360467727675197802

`A070939(A000325(A000120(A233275(n))))`
-/

namespace A257249.P5360467727675197802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000325 (A000120 (A233275 n).toNat).toNat).toNat

end

end A257249.P5360467727675197802

/-! ## A257249.P6327995027895061525

`A000120(A233275(A046699(A005187(n)+1)))`
-/

namespace A257249.P6327995027895061525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233275 (A046699 (A005187 n + 1).toNat).toNat).toNat

end

end A257249.P6327995027895061525

/-! ## A257249.P1220133983603800596

`A070939(A005187(n+1))-A256478(n)`
-/

namespace A257249.P1220133983603800596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A005187 (n + 1)).toNat - A256478 n

end

end A257249.P1220133983603800596

/-! ## A257249.P12931573844329530168

`A070939(2*n)-A256478(n)`
-/

namespace A257249.P12931573844329530168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n) - A256478 n

end

end A257249.P12931573844329530168

/-! ## A257249.P13643923537958015222

`A070939(2*n)-A000120(A233277(n))`
-/

namespace A257249.P13643923537958015222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n) - A000120 (A233277 n).toNat

end

end A257249.P13643923537958015222

/-! ## A257249.P16141257301971817449

`A001222(lcm(2, A286580(n)))`
-/

namespace A257249.P16141257301971817449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (A286580 n))

end

end A257249.P16141257301971817449

/-! ## A257249.P12568835878163672958

`A023416(2*A233277(n))`
-/

namespace A257249.P12568835878163672958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * A233277 n).toNat

end

end A257249.P12568835878163672958

/-! ## A257249.P558948386581577647

`A000120(A233275(A005187(n+1)))`
-/

namespace A257249.P558948386581577647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A233275 (A005187 (n + 1)).toNat).toNat

end

end A257249.P558948386581577647

/-! ## A257249.P18080205145517873116

`A256479(A055938(∑[A001511(n+1)]))`
-/

namespace A257249.P18080205145517873116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A055938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A257249.P18080205145517873116

/-! ## A257249.P2723124333284704141

`A086436(A286580(n))`
-/

namespace A257249.P2723124333284704141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A286580 n).toNat

end

end A257249.P2723124333284704141

/-!
# A257250: Numbers n for which A256999(n) = n; numbers that cannot be made any larger by rotating (by one or more steps) the non-msb bits of their binary representation (with A080541 or A080542).

The programs for A257250, there is no canonical definition to state claims against.
-/

/-! ## A257250.P8002185278858294025

`eq[n, A256999(n)]`
-/

namespace A257250.P8002185278858294025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257250.P8002185278858294025

/-! ## A257250.P17575786900237204859

`comp[A257739(n+1)]`
-/

namespace A257250.P17575786900237204859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257250.P17575786900237204859

/-! ## A257250.P6750737774032499272

`lt[0, char[A331857(n)]]`
-/

namespace A257250.P6750737774032499272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331857 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257250.P6750737774032499272

/-! ## A257250.P13449151455318438203

`eq[n, or(n, A257697(n))]`
-/

namespace A257250.P13449151455318438203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A257697 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257250.P13449151455318438203

/-! ## A257250.P1773542999900964506

`lt[A256999(n), A000027(n+1)]`
-/

namespace A257250.P1773542999900964506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257250.P1773542999900964506

/-! ## A257250.P7212477146386218666

`A256999(lt[A256999(n), n+1])`
-/

namespace A257250.P7212477146386218666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A257250.P7212477146386218666

/-! ## A257250.P5815952700242401284

`lt[A256999(n)-1, A028310(n)]`
-/

namespace A257250.P5815952700242401284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257250.P5815952700242401284

/-! ## A257250.P17193882017189914711

`A256999(lt[A256999(n)-1, n])`
-/

namespace A257250.P17193882017189914711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A257250.P17193882017189914711

/-! ## A257250.P6649671970139358885

`eq[n, A257697(n)+A053644(n)]`
-/

namespace A257250.P6649671970139358885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n + A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257250.P6649671970139358885

/-! ## A257250.P1919568296265162127

`record[A256999(n)%A080541(n+1)]`
-/

namespace A257250.P1919568296265162127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256999 n) (A080541 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257250.P1919568296265162127

/-! ## A257250.P5518989813921660649

`record[gcd(n, A257697(n-A257697(n)))]`
-/

namespace A257250.P5518989813921660649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A257697 ((n : ℤ) - A257697 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257250.P5518989813921660649

/-! ## A257250.P4595877849686437927

`record[n-A257697(xor(n, A257697(n)))]`
-/

namespace A257250.P4595877849686437927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257697 (Int.xor (n : ℤ) (A257697 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257250.P4595877849686437927

/-! ## A257250.P8506005960172242801

`eq[A072376(n-A257697(n)), A072376(n)]`
-/

namespace A257250.P8506005960172242801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 ((n : ℤ) - A257697 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257250.P8506005960172242801

/-! ## A257250.P16095543259294955039

`eq[n, A257697(n)+A072376(2*n)]`
-/

namespace A257250.P16095543259294955039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 n + A072376 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257250.P16095543259294955039

/-!
# A257251: Square array A(row,col) = A083221(row,col+1) - A083221(row,col): the first differences of each row of array constructed from the sieve of Eratosthenes.

The programs for A257251, there is no canonical definition to state claims against.
-/

/-! ## A257251.P11011512974642392380

`2*A257253(n+1)`
-/

namespace A257251.P11011512974642392380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257253 (n + 1)

end

end A257251.P11011512974642392380

/-! ## A257251.P8239442279561229234

`A257252(∑[char[∑[n]]]²-n)`
-/

namespace A257251.P8239442279561229234
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257252 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A257251.P8239442279561229234

/-! ## A257251.P10596076959778014537

`2*A257254(A038722(n+1))`
-/

namespace A257251.P10596076959778014537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257254 (A038722 (n + 1)).toNat

end

end A257251.P10596076959778014537

/-! ## A257251.P12833025166267856002

`2*A257254(A061579(n)+1)`
-/

namespace A257251.P12833025166267856002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257254 (A061579 n + 1).toNat

end

end A257251.P12833025166267856002

/-! ## A257251.P8735754373420233186

`A257253(C(2, C(3, n²))+n)+A257253(n+1)`
-/

namespace A257251.P8735754373420233186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257253 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n) + A257253 (n + 1)

end

end A257251.P8735754373420233186

/-! ## A257251.P12146705571084880621

`A257253(A000027(n+1))+A257253(n+1)`
-/

namespace A257251.P12146705571084880621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257253 (A000027 (n + 1)).toNat + A257253 (n + 1)

end

end A257251.P12146705571084880621

/-! ## A257251.P6121564544930421227

`A083221(A003056(n)+3+n)-A083221(n+2)`
-/

namespace A257251.P6121564544930421227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (A003056 n + 3 + (n : ℤ)).toNat - A083221 (n + 2)

end

end A257251.P6121564544930421227

/-! ## A257251.P9463344943821808445

`A257253(n+1)+A257253(n+1)%A085986(n+1)`
-/

namespace A257251.P9463344943821808445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257253 (n + 1) + Int.tmod (A257253 (n + 1)) (A085986 (n + 1))

end

end A257251.P9463344943821808445

/-! ## A257251.P11763615662073465477

`A004277(A257253(n+1))`
-/

namespace A257251.P11763615662073465477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A257253 (n + 1)).toNat

end

end A257251.P11763615662073465477

/-! ## A257251.P4348923452059390576

`A004273(A257253(n+1)+1)-1`
-/

namespace A257251.P4348923452059390576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A257253 (n + 1) + 1).toNat - 1

end

end A257251.P4348923452059390576

/-! ## A257251.P16503999143151671789

`A174857(A083221(n+2))`
-/

namespace A257251.P16503999143151671789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174857 (A083221 (n + 2)).toNat

end

end A257251.P16503999143151671789

/-! ## A257251.P8627663774253099478

`A257253(n+1)+A257253(n+1)/A001222(A123084(n+1))`
-/

namespace A257251.P8627663774253099478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257253 (n + 1) : ℚ) + (A257253 (n + 1) : ℚ) / (A001222 (A123084 (n + 1)).toNat : ℚ)

end

end A257251.P8627663774253099478

/-!
# A257252: Transpose of square array A257251.

The programs for A257252, there is no canonical definition to state claims against.
-/

/-! ## A257252.P7820352033084798239

`2*A257254(n+1)`
-/

namespace A257252.P7820352033084798239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257254 (n + 1)

end

end A257252.P7820352033084798239

/-! ## A257252.P15028382103454431417

`A257251(∑[char[∑[n]]]²-n)`
-/

namespace A257252.P15028382103454431417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257251 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A257252.P15028382103454431417

/-! ## A257252.P12951710277735631795

`2*A257253(A061579(n)+1)`
-/

namespace A257252.P12951710277735631795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257253 (A061579 n + 1).toNat

end

end A257252.P12951710277735631795

/-! ## A257252.P7603824445872505690

`2*A257253(A002024(n+1)²-n)`
-/

namespace A257252.P7603824445872505690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257253 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A257252.P7603824445872505690

/-! ## A257252.P16611381254254819574

`A004277(A257254(n+1))`
-/

namespace A257252.P16611381254254819574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A257254 (n + 1)).toNat

end

end A257252.P16611381254254819574

/-! ## A257252.P3338320848342599240

`A174857(A083140(n+2))`
-/

namespace A257252.P3338320848342599240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174857 (A083140 (n + 2)).toNat

end

end A257252.P3338320848342599240

/-!
# A257253: Square array A(row,col) = (1/2) * (A083221(row,col+1) - A083221(row,col)): half of the first differences of each row of array constructed from the sieve of Eratosthenes.

The programs for A257253, there is no canonical definition to state claims against.
-/

/-! ## A257253.P8516960673374742310

`A257251(n+1)/2`
-/

namespace A257253.P8516960673374742310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257251 (n + 1) : ℚ) / 2

end

end A257253.P8516960673374742310

/-! ## A257253.P16464266633452303068

`A257254(A038722(n+1))`
-/

namespace A257253.P16464266633452303068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257254 (A038722 (n + 1)).toNat

end

end A257253.P16464266633452303068

/-! ## A257253.P5738718465220777235

`A257254(A061579(n)+1)`
-/

namespace A257253.P5738718465220777235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257254 (A061579 n + 1).toNat

end

end A257253.P5738718465220777235

/-! ## A257253.P8765372419646042625

`A257252(A061579(n)+1)/2`
-/

namespace A257253.P8765372419646042625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257252 (A061579 n + 1).toNat : ℚ) / 2

end

end A257253.P8765372419646042625

/-! ## A257253.P14456222208221453847

`A257254(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A257253.P14456222208221453847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257254 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A257253.P14456222208221453847

/-! ## A257253.P12081059294579923785

`A174857(A083221(n+2))/2`
-/

namespace A257253.P12081059294579923785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174857 (A083221 (n + 2)).toNat : ℚ) / 2

end

end A257253.P12081059294579923785

/-! ## A257253.P15126897456993751950

`A001281(A257251(n+1))`
-/

namespace A257253.P15126897456993751950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A257251 (n + 1)).toNat

end

end A257253.P15126897456993751950

/-! ## A257253.P14808552888692966584

`A003602(A257251(n+1)-1)`
-/

namespace A257253.P14808552888692966584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A257251 (n + 1) - 1).toNat

end

end A257253.P14808552888692966584

/-!
# A257254: Transpose of square array A257253.

The programs for A257254, there is no canonical definition to state claims against.
-/

/-! ## A257254.P14976676810019377249

`A257252(n+1)/2`
-/

namespace A257254.P14976676810019377249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257252 (n + 1) : ℚ) / 2

end

end A257254.P14976676810019377249

/-! ## A257254.P10021985599602491673

`A257253(∑[char[∑[n]]]²-n)`
-/

namespace A257254.P10021985599602491673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257253 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A257254.P10021985599602491673

/-! ## A257254.P8427231899215811205

`A257251(∑[char[∑[n]]]²-n)/2`
-/

namespace A257254.P8427231899215811205
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257251 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / 2

end

end A257254.P8427231899215811205

/-! ## A257254.P1828022345564862329

`A174857(A083140(n+2))/2`
-/

namespace A257254.P1828022345564862329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174857 (A083140 (n + 2)).toNat : ℚ) / 2

end

end A257254.P1828022345564862329

/-! ## A257254.P643580769381410168

`A001281(A257252(n+1))`
-/

namespace A257254.P643580769381410168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A257252 (n + 1)).toNat

end

end A257254.P643580769381410168

/-!
# A257255: Square array A(row,col) = A255545(row,col+1) - A255545(row,col): the first differences of each row of Lucky-Unlucky array.

The programs for A257255, there is no canonical definition to state claims against.
-/

/-! ## A257255.P5540971091203429478

`A255543(n+1)-A255545(n+1)`
-/

namespace A257255.P5540971091203429478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (n + 1) - A255545 (n + 1)

end

end A257255.P5540971091203429478

/-! ## A257255.P11208774314953380772

`A255545(comp[∑[n]])-A255545(n+1)`
-/

namespace A257255.P11208774314953380772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A255545 (n + 1)

end

end A257255.P11208774314953380772

/-! ## A257255.P17716816215576920533

`A255544(A038722(n+1))-A255545(n+1)`
-/

namespace A257255.P17716816215576920533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A038722 (n + 1)).toNat - A255545 (n + 1)

end

end A257255.P17716816215576920533

/-! ## A257255.P7666835125214099835

`A255543(n+1)-A255547(A038722(n+1))`
-/

namespace A257255.P7666835125214099835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (n + 1) - A255547 (A038722 (n + 1)).toNat

end

end A257255.P7666835125214099835

/-! ## A257255.P1458204756335927445

`A255543(n+1)-A255547(A061579(n)+1)`
-/

namespace A257255.P1458204756335927445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (n + 1) - A255547 (A061579 n + 1).toNat

end

end A257255.P1458204756335927445

/-! ## A257255.P6888896474207348541

`A255544(A038722(n+1))-A255547(A061579(n)+1)`
-/

namespace A257255.P6888896474207348541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255544 (A038722 (n + 1)).toNat - A255547 (A061579 n + 1).toNat

end

end A257255.P6888896474207348541

/-! ## A257255.P16863672725350124531

`A255543(n+1)-(A278505(n+1)+A255551(n+2)-A278511(n+1))`
-/

namespace A257255.P16863672725350124531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255543 (n + 1) - (A278505 (n + 1) + (A255551 (n + 2) - A278511 (n + 1)))

end

end A257255.P16863672725350124531

/-!
# A257256: Difference between {the first unlucky number removed at the n-th stage of Lucky sieve} and {the n-th Lucky number}: a(n) = A219178(n) - A000959(n).

The programs for A257256, there is no canonical definition to state claims against.
-/

/-! ## A257256.P17066328415418682878

`A219178(n+1)-A000959(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257256.P17066328415418682878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - A000959 (n + 1)

end

end A257256.P17066328415418682878

/-! ## A257256.P269493946788465085

`A254100(n+1)-(A256487(n+1)+A000959(n+1))`
-/

namespace A257256.P269493946788465085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254100 (n + 1) - (A256487 (n + 1) + A000959 (n + 1))

end

end A257256.P269493946788465085

/-! ## A257256.P5455034104937413481

`A219178(n+1)-(eq[1, A260429(n+1)]+1)`
-/

namespace A257256.P5455034104937413481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A257256.P5455034104937413481

/-! ## A257256.P10238374379672724902

`A219178(n+1)-(lt[A260437(n+1), 1]+1)`
-/

namespace A257256.P10238374379672724902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A257256.P10238374379672724902

/-! ## A257256.P9765526921032038166

`A219178(n+1)-lt[A264940(abs(1-n)+1), 1]`
-/

namespace A257256.P9765526921032038166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A257256.P9765526921032038166

/-! ## A257256.P13986319766586398414

`A219178(n+1)-(eq[1, A264940(n+1)+1]+1)`
-/

namespace A257256.P13986319766586398414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A257256.P13986319766586398414

/-! ## A257256.P14677080958078700230

`A219178(n+1)-A000720(A032605(n+1))`
-/

namespace A257256.P14677080958078700230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - A000720 (A032605 (n + 1)).toNat

end

end A257256.P14677080958078700230

/-! ## A257256.P16414833899300804492

`A219178(n+1)-A004273(A049781(n+1))`
-/

namespace A257256.P16414833899300804492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - A004273 (A049781 (n + 1)).toNat

end

end A257256.P16414833899300804492

/-! ## A257256.P14799599423814937890

`A219178(n+1)-(A032600(n+1)+A000040(n+1))`
-/

namespace A257256.P14799599423814937890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) - (A032600 (n + 1) + A000040 (n + 1))

end

end A257256.P14799599423814937890

/-! ## A257256.P746201833215045161

`A219178(n+1)+A256486(n+1)-A003309(n+1)`
-/

namespace A257256.P746201833215045161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (n + 1) + (A256486 (n + 1) - A003309 (n + 1))

end

end A257256.P746201833215045161

/-! ## A257256.P11248651692194537568

`A257255(∑[n+1])`
-/

namespace A257256.P11248651692194537568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257255 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257256.P11248651692194537568

/-! ## A257256.P1237750281893191447

`record[A257255(A056534(n+1))]`
-/

namespace A257256.P1237750281893191447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257255 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257256.P1237750281893191447

/-!
# A257257: Square array A(row,col) = A255127(row,col+1) - A255127(row,col): the first differences of each row of Ludic array.

The programs for A257257, there is no canonical definition to state claims against.
-/

/-! ## A257257.P9225258994485052407

`2*A257258(n+1)`
-/

namespace A257257.P9225258994485052407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257258 (n + 1)

end

end A257257.P9225258994485052407

/-! ## A257257.P4564722184755454927

`A004277(A257258(n+1))`
-/

namespace A257257.P4564722184755454927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A257258 (n + 1)).toNat

end

end A257257.P4564722184755454927

/-! ## A257257.P8904284035071408465

`A004275(A257258(n+1)+1)`
-/

namespace A257257.P8904284035071408465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A257258 (n + 1) + 1).toNat

end

end A257257.P8904284035071408465

/-! ## A257257.P5999064278618675259

`A257258(A000027(n+1))+A257258(n+1)`
-/

namespace A257257.P5999064278618675259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257258 (A000027 (n + 1)).toNat + A257258 (n + 1)

end

end A257257.P5999064278618675259

/-! ## A257257.P9316941108321865486

`A000265(A257258(n+1)+A257258(n+1)+1)-1`
-/

namespace A257257.P9316941108321865486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A257258 (n + 1) + A257258 (n + 1) + 1).toNat - 1

end

end A257257.P9316941108321865486

/-! ## A257257.P7019449788374269471

`A257258(n+1)+A257258(n+1)%A054785(n+1)`
-/

namespace A257257.P7019449788374269471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257258 (n + 1) + Int.tmod (A257258 (n + 1)) (A054785 (n + 1))

end

end A257257.P7019449788374269471

/-! ## A257257.P11162512665025787317

`A257258(n+1)+A257258(n+1)/A257258(A000124(n))`
-/

namespace A257257.P11162512665025787317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257258 (n + 1) : ℚ) + (A257258 (n + 1) : ℚ) / (A257258 (A000124 n).toNat : ℚ)

end

end A257257.P11162512665025787317

/-!
# A257258: Square array A(row,col) = (1/2) * (A255127(row,col+1) - A255127(row,col)): half of the first differences of each row of Ludic array.

The programs for A257258, there is no canonical definition to state claims against.
-/

/-! ## A257258.P5894794597304873143

`A257257(n+1)/2`
-/

namespace A257258.P5894794597304873143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257257 (n + 1) : ℚ) / 2

end

end A257258.P5894794597304873143

/-! ## A257258.P13627499262164601363

`A260739(A257257(n+1))`
-/

namespace A257258.P13627499262164601363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A257257 (n + 1)).toNat

end

end A257258.P13627499262164601363

/-! ## A257258.P10378652795285851468

`A004526(A257257(n+1)+1)`
-/

namespace A257258.P10378652795285851468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A257257 (n + 1) + 1).toNat

end

end A257258.P10378652795285851468

/-! ## A257258.P2920629578688877837

`A123108(A257257(n+1)+1)`
-/

namespace A257258.P2920629578688877837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A257257 (n + 1) + 1).toNat

end

end A257258.P2920629578688877837

/-! ## A257258.P12881001104672854333

`A065423(A257257(n+1)+2)`
-/

namespace A257258.P12881001104672854333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A257257 (n + 1) + 2).toNat

end

end A257258.P12881001104672854333

/-! ## A257258.P16765608815508219454

`A025480(A257257(-xor(n, -1)))`
-/

namespace A257258.P16765608815508219454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A257257 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A257258.P16765608815508219454

/-! ## A257258.P17722483212946957887

`gcd(A051925(3*A257257(n+1)), A257257(n+1))`
-/

namespace A257258.P17722483212946957887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051925 (3 * A257257 (n + 1)).toNat) (A257257 (n + 1))

end

end A257258.P17722483212946957887

/-!
# A257259: a(n) = A218542(n) - A218543(n).

The programs for A257259, there is no canonical definition to state claims against.
-/

/-! ## A257259.P15937982205762120175

`A218542(n)-A218543(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257259.P15937982205762120175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218542 n - A218543 n

end

end A257259.P15937982205762120175

/-! ## A257259.P10523832887782378755

`Δ[A257805(abs(1-n))]`
-/

namespace A257259.P10523832887782378755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257805 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257259.P10523832887782378755

/-! ## A257259.P8930027182605325222

`2*A218542(n)-A213709(n)`
-/

namespace A257259.P8930027182605325222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218542 n - A213709 n

end

end A257259.P8930027182605325222

/-! ## A257259.P10458446621855979613

`A213709(n)-2*A218543(n)`
-/

namespace A257259.P10458446621855979613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n - 2 * A218543 n

end

end A257259.P10458446621855979613

/-! ## A257259.P6611697425633029103

`A257805(n)-A257805(abs(1-n))`
-/

namespace A257259.P6611697425633029103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257805 n - A257805 |1 - (n : ℤ)|.toNat

end

end A257259.P6611697425633029103

/-!
# A257260: One-based position of the rightmost zero in the factorial base representation of n (A007623), 0 if no nonleading zeros present.

The programs for A257260, there is no canonical definition to state claims against.
-/

/-! ## A257260.P14551074228487497182

`A055396(A328612(n+7)%A000043(n+1))`
-/

namespace A257260.P14551074228487497182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A328612 (n + 7)) (A000043 (n + 1))).toNat

end

end A257260.P14551074228487497182

/-! ## A257260.P15934039521468217328

`A055396(gcd(A024450(n+4), A348716(n+1)))`
-/

namespace A257260.P15934039521468217328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.gcd (A024450 (n + 4)) (A348716 (n + 1)))

end

end A257260.P15934039521468217328

/-! ## A257260.P10484598060108169432

`A087116(A107286(5*n+3)²²)`
-/

namespace A257260.P10484598060108169432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 ((A107286 (5 * n + 3) ^ 2) ^ 2).toNat

end

end A257260.P10484598060108169432

/-! ## A257260.P3982473374793616210

`A225767(A225765(3*n+2))%A085099(5*n+2)`
-/

namespace A257260.P3982473374793616210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225767 (A225765 (3 * n + 2)).toNat) (A085099 (5 * n + 2))

end

end A257260.P3982473374793616210

/-! ## A257260.P14126112121169908984

`A046978(lcm(6, ∑[a(n-1)+6]+2))+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A257260.P14126112121169908984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (Nat.lcm 6 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) + 1

end

end A257260.P14126112121169908984

/-!
# A257261: One-based position of the rightmost one in the factorial base representation (A007623) of n, 0 if no one is present.

The programs for A257261, there is no canonical definition to state claims against.
-/

/-! ## A257261.P14558960730602558058

`val(A008458(A275736(n)), 2)`
-/

namespace A257261.P14558960730602558058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008458 (A275736 n).toNat).toNat 2

end

end A257261.P14558960730602558058

/-! ## A257261.P12103845669429796421

`∑{d}[A275736(n), A209229(#)]`
-/

namespace A257261.P12103845669429796421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A257261.P12103845669429796421

/-! ## A257261.P7311084808378395128

`A055396(A275732(n))`
-/

namespace A257261.P7311084808378395128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A275732 n).toNat

end

end A257261.P7311084808378395128

/-! ## A257261.P10142493323962686405

`A286471(2*A275732(n))`
-/

namespace A257261.P10142493323962686405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A275732 n).toNat

end

end A257261.P10142493323962686405

/-! ## A257261.P14575651989075859088

`A277707(4*A275732(n))`
-/

namespace A257261.P14575651989075859088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (4 * A275732 n).toNat

end

end A257261.P14575651989075859088

/-! ## A257261.P753809504531086913

`A001221(A020639(A275732(n))!)`
-/

namespace A257261.P753809504531086913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A020639 (A275732 n).toNat).toNat)

end

end A257261.P753809504531086913

/-!
# A257262: Numbers such that the least missing nonzero digit (A257079) in their factorial base representation is 2.

The programs for A257262, there is no canonical definition to state claims against.
-/

/-! ## A257262.P13702919120747868636

`eq[2, gcd(6, A275735(n))]`
-/

namespace A257262.P13702919120747868636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A275735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257262.P13702919120747868636

/-! ## A257262.P13145318970393070016

`eq[2, A257079(n)]`
-/

namespace A257262.P13145318970393070016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257262.P13145318970393070016

/-! ## A257262.P13184350480897237412

`eq[2, dr(A257080(n+1)/(n+1))]+1`
-/

namespace A257262.P13184350480897237412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A257080 (n + 1) : ℚ) / (n + 1 : ℚ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257262.P13184350480897237412

/-! ## A257262.P8044444868848550848

`lt[A257680(A257684(n)), A257680(n)]`
-/

namespace A257262.P8044444868848550848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257684 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257262.P8044444868848550848

/-! ## A257262.P4441489033873494201

`eq[A004277(n), A257080(n)]`
-/

namespace A257262.P4441489033873494201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257262.P4441489033873494201

/-! ## A257262.P1990280213825331821

`eq[A257080(n)+n, A008486(n)]`
-/

namespace A257262.P1990280213825331821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257262.P1990280213825331821

/-! ## A257262.P16708393270443850988

`eq[n, A257080(A065033(n))]/2`
-/

namespace A257262.P16708393270443850988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 (A065033 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A257262.P16708393270443850988

/-! ## A257262.P12872492803942841241

`eq[2, A257993(A275735(n))]`
-/

namespace A257262.P12872492803942841241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257262.P12872492803942841241

/-! ## A257262.P15792415100582095808

`eq[A004396(A008486(n)), A257080(n)]`
-/

namespace A257262.P15792415100582095808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257262.P15792415100582095808

/-! ## A257262.P12250601713629486061

`eq[2*A008458(n), A008458(A257080(n))]`
-/

namespace A257262.P12250601713629486061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A257080 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257262.P12250601713629486061

/-!
# A257263: Numbers such that the least missing nonzero digit (A257079) in their factorial base representation is 3.

The programs for A257263, there is no canonical definition to state claims against.
-/

/-! ## A257263.P12764111855714298420

`eq[3, A257079(n)]`
-/

namespace A257263.P12764111855714298420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257263.P12764111855714298420

/-! ## A257263.P7548876980394693670

`eq[3*(n+1), A257080(n+1)]+1`
-/

namespace A257263.P7548876980394693670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257263.P7548876980394693670

/-! ## A257263.P3063585589754600123

`eq[A008486(n), A257080(n)]`
-/

namespace A257263.P3063585589754600123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257263.P3063585589754600123

/-! ## A257263.P2170466730502685324

`eq[A004277(n)+n, A257080(n)]`
-/

namespace A257263.P2170466730502685324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257263.P2170466730502685324

/-! ## A257263.P5347067559271780121

`eq[2*A257080(n), A008458(n)]`
-/

namespace A257263.P5347067559271780121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257080 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257263.P5347067559271780121

/-! ## A257263.P5881388543539751372

`eq[1, A257993(A275735(n))-2]`
-/

namespace A257263.P5881388543539751372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A275735 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257263.P5881388543539751372

/-! ## A257263.P8087952295395188483

`eq[5, A111076(A275735(n))]`
-/

namespace A257263.P8087952295395188483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257263.P8087952295395188483

/-! ## A257263.P10975791568259361136

`eq[A026741(A008458(n)), A257080(n)]`
-/

namespace A257263.P10975791568259361136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257080 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257263.P10975791568259361136

/-!
# A257265: Distance to n from a leaf nearest to n in the binary beanstalk.

The programs for A257265, there is no canonical definition to state claims against.
-/

/-! ## A257265.P13478113298091629833

`A079559(n)+char[A257509(n+1)]`
-/

namespace A257265.P13478113298091629833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257265.P13478113298091629833

/-! ## A257265.P16732277554095245081

`char[A257509(n+1)]+char[A005187(n)]`
-/

namespace A257265.P16732277554095245081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A257265.P16732277554095245081

/-! ## A257265.P8655514398002298520

`char[A257509(n+1)]+char[A004134(n)-n]`
-/

namespace A257265.P8655514398002298520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A257265.P8655514398002298520

/-! ## A257265.P1609243518820798831

`char[A257509(n+1)]+Δ[A046699(n+1)]^n`
-/

namespace A257265.P1609243518820798831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n) ^ n

end

end A257265.P1609243518820798831

/-! ## A257265.P16385932741608401730

`A079559(n)+char[∑[A256489(n+1)]-A256489(n+1)]`
-/

namespace A257265.P16385932741608401730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256489 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A256489 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257265.P16385932741608401730

/-!
# A257266: Number of (n+2)X(1+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A257266, there is no canonical definition to state claims against.
-/

/-! ## A257266.P320440325725133110

`A257270(∑[n]+1)`
-/

namespace A257266.P320440325725133110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257266.P320440325725133110

/-! ## A257266.P3555120507642039599

`lcm(2, A257270(A000124(n)))`
-/

namespace A257266.P3555120507642039599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257270 (A000124 n).toNat)

end

end A257266.P3555120507642039599

/-! ## A257266.P7235337517741259502

`record[A257270(A065579(n+1))]`
-/

namespace A257266.P7235337517741259502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A065579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257266.P7235337517741259502

/-! ## A257266.P2903633815471852538

`record[A257270(A254052(n+1))]`
-/

namespace A257266.P2903633815471852538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257266.P2903633815471852538

/-! ## A257266.P8285290440875624631

`record[A257270(A257504(n+1))]`
-/

namespace A257266.P8285290440875624631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257266.P8285290440875624631

/-!
# A257267: Number of (n+2)X(2+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A257267, there is no canonical definition to state claims against.
-/

/-! ## A257267.P7264357516028255758

`A257270(∑[n+1]+2)`
-/

namespace A257267.P7264357516028255758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257267.P7264357516028255758

/-! ## A257267.P15426594569093864374

`record[A257270(A065579(n+1)+1)]`
-/

namespace A257267.P15426594569093864374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A065579 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257267.P15426594569093864374

/-! ## A257267.P1462473308888699652

`record[A257270(A257504(n+1)+1)]`
-/

namespace A257267.P1462473308888699652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257267.P1462473308888699652

/-! ## A257267.P9584525918115460812

`record[A010054(n)*A257270(n+2)]`
-/

namespace A257267.P9584525918115460812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257267.P9584525918115460812

/-! ## A257267.P14651266375485695261

`record[gcd(A025581(n), A257270(n+3))]`
-/

namespace A257267.P14651266375485695261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A257270 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257267.P14651266375485695261

/-!
# A257268: Number of (n+2)X(3+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A257268, there is no canonical definition to state claims against.
-/

/-! ## A257268.P9602472349732623587

`A257270(∑[n+2]+4)`
-/

namespace A257268.P9602472349732623587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A257268.P9602472349732623587

/-! ## A257268.P6755993086587679398

`lcm(2, A257270(A167614(n+1)))`
-/

namespace A257268.P6755993086587679398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257270 (A167614 (n + 1)).toNat)

end

end A257268.P6755993086587679398

/-! ## A257268.P11001003603379470828

`record[gcd(A257238(n), A257270(n+4))]`
-/

namespace A257268.P11001003603379470828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257238 n) (A257270 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257268.P11001003603379470828

/-! ## A257268.P18005523455798267812

`A257270(A167614(n+1))+A064834(n)`
-/

namespace A257268.P18005523455798267812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A167614 (n + 1)).toNat + A064834 n

end

end A257268.P18005523455798267812

/-! ## A257268.P4654302701371893979

`A257270(A167614(n+1))+A185264(n)`
-/

namespace A257268.P4654302701371893979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (A167614 (n + 1)).toNat + A185264 n

end

end A257268.P4654302701371893979

/-!
# A257269: Number of (n+2)X(4+2) 0..2 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum or central row sum equal to the central column sum.

The programs for A257269, there is no canonical definition to state claims against.
-/

/-! ## A257269.P9432221300332918347

`A257270(∑[n+3]+7)`
-/

namespace A257269.P9432221300332918347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257270 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A257269.P9432221300332918347

/-!
# A257272: a(n) = 2^(n-1)*(2^n+7).

The programs for A257272, the canonical program `A257272.P16493853454340920750` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257272 has offset 0).

The definition of A257272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(2^n+7)` (program `A257272.P13663214575237314891`, by `A257272.P13663214575237314891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257272.P13663214575237314891

`2^(n-1)*(2^n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257272.P13663214575237314891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 7 : ℚ)

end

end A257272.P13663214575237314891

namespace A257272

/-- `2^(n-1)*(2^n+7)` -/
def P13663214575237314891.Spec : Prop :=
  ∀ n, P13663214575237314891.a n = (A257272 n : ℚ)

theorem P13663214575237314891.correct : P13663214575237314891.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A257272, Nat.add_sub_cancel, A257272.P13663214575237314891.a, A257272.P16493853454340920750.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A257272, Nat.add_sub_cancel, A257272.P13663214575237314891.a, A257272.P16493853454340920750.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A257272

/-! ## A257272.P8133283919621691006

`ogf((4-15x)/(1-6x+8x^2))`
-/

namespace A257272.P8133283919621691006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -15] [1, -6, 8] n

end

end A257272.P8133283919621691006

namespace A257272

/-- `ogf((4-15x)/(1-6x+8x^2))` -/
def P8133283919621691006.Spec : Prop :=
  ∀ n, P8133283919621691006.a n = A257272 n

end A257272

/-! ## A257272.P1207664601947951373

`a(n-1)+a(n-1)+4^(n-1)` with `a(0)=4`
-/

namespace A257272.P1207664601947951373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A257272.P1207664601947951373

namespace A257272

/-- `a(n-1)+a(n-1)+4^(n-1)` -/
def P1207664601947951373.Spec : Prop :=
  ∀ n, P1207664601947951373.a n = (A257272 n : ℚ)

end A257272

/-! ## A257272.P5565411249870223677

`record[a(xor(1, n-2))+3*a(n-2)]` with `a(0)=4, a(1)=-3`
-/

namespace A257272.P5565411249870223677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -3] fun n f1 =>
  f1 (Int.xor 1 ((n : ℤ) - 2)).toNat + 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257272.P5565411249870223677

namespace A257272

/-- `record[a(xor(1, n-2))+3*a(n-2)]` -/
def P5565411249870223677.Spec : Prop :=
  ∀ n, P5565411249870223677.a n = A257272 n

end A257272

/-! ## A257272.P1959061199234154235

`abs(2*(3*a(n-1)-4*a(n-2)))` with `a(0)=4, a(1)=9`
-/

namespace A257272.P1959061199234154235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  |2 * (3 * a (n - 1) - 4 * a (n - 2))|

end

end A257272.P1959061199234154235

namespace A257272

/-- `abs(2*(3*a(n-1)-4*a(n-2)))` -/
def P1959061199234154235.Spec : Prop :=
  ∀ n, P1959061199234154235.a n = A257272 n

end A257272

/-! ## A257272.P8148281843494857212

`floor(2*(3*a(n-1)-4*a(n-2)))` with `a(0)=4, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A257272.P8148281843494857212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  2 * (3 * a (n - 1) - 4 * a (n - 2))

end

end A257272.P8148281843494857212

namespace A257272

/-- `floor(2*(3*a(n-1)-4*a(n-2)))` -/
def P8148281843494857212.Spec : Prop :=
  ∀ n, P8148281843494857212.a n = A257272 n

end A257272

/-! ## A257272.P16493853454340920750

`ceil(2*(3*a(n-1)-4*a(n-2)))` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257272

/-- `ceil(2*(3*a(n-1)-4*a(n-2)))` -/
def P16493853454340920750.Spec : Prop :=
  ∀ n, P16493853454340920750.a n = A257272 n

theorem P16493853454340920750.correct : P16493853454340920750.Spec := by
  intro n
  simp only [A257272]

end A257272

/-! ## A257272.P8723839230051982704

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=4, a(1)=5, a(2)=13`
-/

namespace A257272.P8723839230051982704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 13] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257272.P8723839230051982704

namespace A257272

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P8723839230051982704.Spec : Prop :=
  ∀ n, P8723839230051982704.a n = A257272 n

end A257272

/-! ## A257272.P15772790572676378282

`A256873(n)+2^n`
-/

namespace A257272.P15772790572676378282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n + (2 ^ n : ℤ)

end

end A257272.P15772790572676378282

namespace A257272

/-- `A256873(n)+2^n` -/
def P15772790572676378282.Spec : Prop :=
  ∀ n, P15772790572676378282.a n = A257272 n

end A257272

/-! ## A257272.P1868902703824751875

`A257273(n)+2^(n+1)`
-/

namespace A257272.P1868902703824751875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + (2 ^ (n + 1) : ℤ)

end

end A257272.P1868902703824751875

namespace A257272

/-- `A257273(n)+2^(n+1)` -/
def P1868902703824751875.Spec : Prop :=
  ∀ n, P1868902703824751875.a n = A257272 n

end A257272

/-! ## A257272.P6947038898746200673

`A006516(n)+2^(n+2)`
-/

namespace A257272.P6947038898746200673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + (2 ^ (n + 2) : ℤ)

end

end A257272.P6947038898746200673

namespace A257272

/-- `A006516(n)+2^(n+2)` -/
def P6947038898746200673.Spec : Prop :=
  ∀ n, P6947038898746200673.a n = A257272 n

end A257272

/-! ## A257272.P13461599901204026854

`A256871(n)-2^(n+1)`
-/

namespace A257272.P13461599901204026854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256871 n - (2 ^ (n + 1) : ℤ)

end

end A257272.P13461599901204026854

namespace A257272

/-- `A256871(n)-2^(n+1)` -/
def P13461599901204026854.Spec : Prop :=
  ∀ n, P13461599901204026854.a n = A257272 n

end A257272

/-! ## A257272.P9805440375510208840

`A131577(n)²+2*a(n-1)` with `a(0)=4`
-/

namespace A257272.P9805440375510208840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A131577 n ^ 2 + 2 * a (n - 1)

end

end A257272.P9805440375510208840

namespace A257272

/-- `A131577(n)²+2*a(n-1)` -/
def P9805440375510208840.Spec : Prop :=
  ∀ n, P9805440375510208840.a n = A257272 n

end A257272

/-! ## A257272.P17148818241374178724

`4*a(n-1)-2^(n-1)-A007283(n)` with `a(0)=4`
-/

namespace A257272.P17148818241374178724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  4 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A007283 n : ℚ)

end

end A257272.P17148818241374178724

namespace A257272

/-- `4*a(n-1)-2^(n-1)-A007283(n)` -/
def P17148818241374178724.Spec : Prop :=
  ∀ n, P17148818241374178724.a n = (A257272 n : ℚ)

end A257272

/-! ## A257272.P11720732127111060077

`A007582(n)+A007283(n)`
-/

namespace A257272.P11720732127111060077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A007283 n

end

end A257272.P11720732127111060077

namespace A257272

/-- `A007582(n)+A007283(n)` -/
def P11720732127111060077.Spec : Prop :=
  ∀ n, P11720732127111060077.a n = A257272 n

end A257272

/-! ## A257272.P13350234962140444289

`A020707(n)+A006516(n)`
-/

namespace A257272.P13350234962140444289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + A006516 n

end

end A257272.P13350234962140444289

namespace A257272

/-- `A020707(n)+A006516(n)` -/
def P13350234962140444289.Spec : Prop :=
  ∀ n, P13350234962140444289.a n = A257272 n

end A257272

/-! ## A257272.P2283012149034700764

`A134165(n)+A001550(n)`
-/

namespace A257272.P2283012149034700764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n + A001550 n

end

end A257272.P2283012149034700764

namespace A257272

/-- `A134165(n)+A001550(n)` -/
def P2283012149034700764.Spec : Prop :=
  ∀ n, P2283012149034700764.a n = A257272 n

end A257272

/-! ## A257272.P15219285972937751531

`A134045(n)+A067771(n)`
-/

namespace A257272.P15219285972937751531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134045 n + A067771 n

end

end A257272.P15219285972937751531

namespace A257272

/-- `A134045(n)+A067771(n)` -/
def P15219285972937751531.Spec : Prop :=
  ∀ n, P15219285972937751531.a n = A257272 n

end A257272

/-! ## A257272.P8271779792768759963

`A153894(n)+A134057(n)`
-/

namespace A257272.P8271779792768759963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 n + A134057 n

end

end A257272.P8271779792768759963

namespace A257272

/-- `A153894(n)+A134057(n)` -/
def P8271779792768759963.Spec : Prop :=
  ∀ n, P8271779792768759963.a n = A257272 n

end A257272

/-! ## A257272.P18208462621883174122

`A281481(n)+A153893(n)`
-/

namespace A257272.P18208462621883174122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A153893 n

end

end A257272.P18208462621883174122

namespace A257272

/-- `A281481(n)+A153893(n)` -/
def P18208462621883174122.Spec : Prop :=
  ∀ n, P18208462621883174122.a n = A257272 n

end A257272

/-!
# A257273: a(n) = 2^(n-1)*(2^n+3).

The programs for A257273, the canonical program `A257273.P18251651217494615650` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257273 has offset 0).

The definition of A257273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n-1)*(2^n+3)` (program `A257273.P12791137116942564133`, by `A257273.P12791137116942564133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257273.P12791137116942564133

`2^(n-1)*(2^n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257273.P12791137116942564133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n + 3 : ℚ)

end

end A257273.P12791137116942564133

namespace A257273

/-- `2^(n-1)*(2^n+3)` -/
def P12791137116942564133.Spec : Prop :=
  ∀ n, P12791137116942564133.a n = (A257273 n : ℚ)

theorem P12791137116942564133.correct : P12791137116942564133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A257273, Nat.add_sub_cancel, A257273.P12791137116942564133.a, A257273.P18251651217494615650.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A257273, Nat.add_sub_cancel, A257273.P12791137116942564133.a, A257273.P18251651217494615650.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A257273

/-! ## A257273.P18251651217494615650

`6*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257273

/-- `6*a(n-1)-8*a(n-2)` -/
def P18251651217494615650.Spec : Prop :=
  ∀ n, P18251651217494615650.a n = A257273 n

theorem P18251651217494615650.correct : P18251651217494615650.Spec := by
  intro n
  simp only [A257273]

end A257273

/-! ## A257273.P3008717126830034292

`ogf((2-7x)/(1-6x+8x^2))`
-/

namespace A257273.P3008717126830034292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -6, 8] n

end

end A257273.P3008717126830034292

namespace A257273

/-- `ogf((2-7x)/(1-6x+8x^2))` -/
def P3008717126830034292.Spec : Prop :=
  ∀ n, P3008717126830034292.a n = A257273 n

end A257273

/-! ## A257273.P6366231708182937150

`a(n-1)+a(n-1)+4^(n-1)` with `a(0)=2`
-/

namespace A257273.P6366231708182937150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A257273.P6366231708182937150

namespace A257273

/-- `a(n-1)+a(n-1)+4^(n-1)` -/
def P6366231708182937150.Spec : Prop :=
  ∀ n, P6366231708182937150.a n = (A257273 n : ℚ)

end A257273

/-! ## A257273.P9881885566320550320

`A028401(n+2)-1`
-/

namespace A257273.P9881885566320550320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028401 (n + 2) - 1

end

end A257273.P9881885566320550320

namespace A257273

/-- `A028401(n+2)-1` -/
def P9881885566320550320.Spec : Prop :=
  ∀ n, P9881885566320550320.a n = A257273 n

end A257273

/-! ## A257273.P3170749684545823831

`3*A007581(n)-1`
-/

namespace A257273.P3170749684545823831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007581 n - 1

end

end A257273.P3170749684545823831

namespace A257273

/-- `3*A007581(n)-1` -/
def P3170749684545823831.Spec : Prop :=
  ∀ n, P3170749684545823831.a n = A257273 n

end A257273

/-! ## A257273.P3500850435009664111

`3*A076024(n)+2`
-/

namespace A257273.P3500850435009664111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A076024 n + 2

end

end A257273.P3500850435009664111

namespace A257273

/-- `3*A076024(n)+2` -/
def P3500850435009664111.Spec : Prop :=
  ∀ n, P3500850435009664111.a n = A257273 n

end A257273

/-! ## A257273.P7174010328050770511

`A290075(2*n+3)`
-/

namespace A257273.P7174010328050770511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (2 * n + 3)

end

end A257273.P7174010328050770511

namespace A257273

/-- `A290075(2*n+3)` -/
def P7174010328050770511.Spec : Prop :=
  ∀ n, P7174010328050770511.a n = A257273 n

end A257273

/-! ## A257273.P12050328724700560817

`(A239679(n)-3)/2`
-/

namespace A257273.P12050328724700560817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239679 n - 3 : ℚ) / 2

end

end A257273.P12050328724700560817

namespace A257273

/-- `(A239679(n)-3)/2` -/
def P12050328724700560817.Spec : Prop :=
  ∀ n, P12050328724700560817.a n = (A257273 n : ℚ)

theorem P12050328724700560817.correct : P12050328724700560817.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A257273, Nat.add_sub_cancel, A257273.P12050328724700560817.a, A257273.P18251651217494615650.a, A239679, A239679.P7005928044584288628.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A257273, Nat.add_sub_cancel, A257273.P12050328724700560817.a, A257273.P18251651217494615650.a, A239679, A239679.P7005928044584288628.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A257273

/-! ## A257273.P7524134106584031241

`A007582(n)+2^n`
-/

namespace A257273.P7524134106584031241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + (2 ^ n : ℤ)

end

end A257273.P7524134106584031241

namespace A257273

/-- `A007582(n)+2^n` -/
def P7524134106584031241.Spec : Prop :=
  ∀ n, P7524134106584031241.a n = A257273 n

end A257273

/-! ## A257273.P9710712134186563001

`A084869(n)+3^n`
-/

namespace A257273.P9710712134186563001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + (3 ^ n : ℤ)

end

end A257273.P9710712134186563001

namespace A257273

/-- `A084869(n)+3^n` -/
def P9710712134186563001.Spec : Prop :=
  ∀ n, P9710712134186563001.a n = A257273 n

end A257273

/-! ## A257273.P9458196794797180864

`A256873(n)-2^n`
-/

namespace A257273.P9458196794797180864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n - (2 ^ n : ℤ)

end

end A257273.P9458196794797180864

namespace A257273

/-- `A256873(n)-2^n` -/
def P9458196794797180864.Spec : Prop :=
  ∀ n, P9458196794797180864.a n = A257273 n

end A257273

/-! ## A257273.P11535090035469272735

`3*A124303(n+1)-1`
-/

namespace A257273.P11535090035469272735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124303 (n + 1) - 1

end

end A257273.P11535090035469272735

namespace A257273

/-- `3*A124303(n+1)-1` -/
def P11535090035469272735.Spec : Prop :=
  ∀ n, P11535090035469272735.a n = A257273 n

end A257273

/-! ## A257273.P2183220336450073251

`A006516(n)+2^(n+1)`
-/

namespace A257273.P2183220336450073251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n + (2 ^ (n + 1) : ℤ)

end

end A257273.P2183220336450073251

namespace A257273

/-- `A006516(n)+2^(n+1)` -/
def P2183220336450073251.Spec : Prop :=
  ∀ n, P2183220336450073251.a n = A257273 n

end A257273

/-! ## A257273.P14368042893044438061

`A257272(n)-2^(n+1)`
-/

namespace A257273.P14368042893044438061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257272 n - (2 ^ (n + 1) : ℤ)

end

end A257273.P14368042893044438061

namespace A257273

/-- `A257272(n)-2^(n+1)` -/
def P14368042893044438061.Spec : Prop :=
  ∀ n, P14368042893044438061.a n = A257273 n

end A257273

/-! ## A257273.P15163432115018189534

`A256871(n)-2^(n+2)`
-/

namespace A257273.P15163432115018189534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256871 n - (2 ^ (n + 2) : ℤ)

end

end A257273.P15163432115018189534

namespace A257273

/-- `A256871(n)-2^(n+2)` -/
def P15163432115018189534.Spec : Prop :=
  ∀ n, P15163432115018189534.a n = A257273 n

end A257273

/-! ## A257273.P8120406966023443048

`A032125(n)+a(n-1)` with `a(0)=2`
-/

namespace A257273.P8120406966023443048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A032125 n + a (n - 1)

end

end A257273.P8120406966023443048

namespace A257273

/-- `A032125(n)+a(n-1)` -/
def P8120406966023443048.Spec : Prop :=
  ∀ n, P8120406966023443048.a n = A257273 n

end A257273

/-! ## A257273.P12962975329588214039

`A056450(n)+A003665(n)`
-/

namespace A257273.P12962975329588214039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n + A003665 n

end

end A257273.P12962975329588214039

namespace A257273

/-- `A056450(n)+A003665(n)` -/
def P12962975329588214039.Spec : Prop :=
  ∀ n, P12962975329588214039.a n = A257273 n

end A257273

/-! ## A257273.P9543732327456952300

`A081294(n)+A003945(n)`
-/

namespace A257273.P9543732327456952300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + A003945 n

end

end A257273.P9543732327456952300

namespace A257273

/-- `A081294(n)+A003945(n)` -/
def P9543732327456952300.Spec : Prop :=
  ∀ n, P9543732327456952300.a n = A257273 n

end A257273

/-! ## A257273.P15242019754947332556

`A079319(n)+A007581(n)`
-/

namespace A257273.P15242019754947332556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079319 n + A007581 n

end

end A257273.P15242019754947332556

namespace A257273

/-- `A079319(n)+A007581(n)` -/
def P15242019754947332556.Spec : Prop :=
  ∀ n, P15242019754947332556.a n = A257273 n

end A257273

/-!
# A257275: Numbers equal to some partial product of the sequence of their digits, repeated over and over again.

The programs for A257275, there is no canonical definition to state claims against.
-/

/-! ## A257275.P5641731940838590435

`A128606(A132722(n+1)%A346530(n+1))`
-/

namespace A257275.P5641731940838590435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (Int.tmod (A132722 (n + 1)) (A346530 (n + 1))).toNat

end

end A257275.P5641731940838590435

/-! ## A257275.P4326915515879744562

`A007602(A083114(A052382(A083115(A007602(n+1)))))`
-/

namespace A257275.P4326915515879744562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (A083114 (A052382 (A083115 (A007602 (n + 1)).toNat).toNat).toNat).toNat

end

end A257275.P4326915515879744562

/-! ## A257275.P9199571718324003615

`A257554(A052382(A052382(A167620(A052382(n+1)))))`
-/

namespace A257275.P9199571718324003615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257554 (A052382 (A052382 (A167620 (A052382 (n + 1)).toNat).toNat).toNat).toNat

end

end A257275.P9199571718324003615

/-! ## A257275.P13841796923373643711

`A257554(A052382(A052382(A180484(A180484(n+1)))))`
-/

namespace A257275.P13841796923373643711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257554 (A052382 (A052382 (A180484 (A180484 (n + 1)).toNat).toNat).toNat).toNat

end

end A257275.P13841796923373643711

/-! ## A257275.P10263999823976401827

`A270393(comp[10*n])`
-/

namespace A257275.P10263999823976401827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270393 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A257275.P10263999823976401827

/-!
# A257277: a(n+1) has a digit that divides a(n) and is the least positive integer not appearing earlier with this property.

The programs for A257277, there is no canonical definition to state claims against.
-/

/-! ## A257277.P16258570910428391391

`∑{e}[2^n, A323821(#)]`
-/

namespace A257277.P16258570910428391391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A323821 (Nat.factorization (f1 n) p)

end

end A257277.P16258570910428391391

/-! ## A257277.P11039678018306670564

`∑{e}[2^n, A351840(#)]`
-/

namespace A257277.P11039678018306670564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A351840 (Nat.factorization (f1 n) p)

end

end A257277.P11039678018306670564

/-! ## A257277.P3214147215247773160

`A323821(A151838(n)+n)-A151838(n)`
-/

namespace A257277.P3214147215247773160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323821 (A151838 n + (n : ℤ)).toNat - A151838 n

end

end A257277.P3214147215247773160

/-! ## A257277.P5999043302960663118

`A351840(A151838(n)+n)-A151838(n)`
-/

namespace A257277.P5999043302960663118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351840 (A151838 n + (n : ℤ)).toNat - A151838 n

end

end A257277.P5999043302960663118

/-!
# A257278: Prime powers p^m with p <= m.

The programs for A257278, there is no canonical definition to state claims against.
-/

/-! ## A257278.P12984764558640808486

`A257572(n+1)^A257573(n+1)`
-/

namespace A257278.P12984764558640808486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257572 (n + 1) : ℚ) ^ (A257573 (n + 1) : ℤ)

end

end A257278.P12984764558640808486

/-! ## A257278.P17202585950228345361

`∪[A192135(n+1), A368107(n+1)]`
-/

namespace A257278.P17202585950228345361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P17202585950228345361

/-! ## A257278.P11241597564876818129

`∩[A054744(n+1), A100391(n+1)]`
-/

namespace A257278.P11241597564876818129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P11241597564876818129

/-! ## A257278.P3111733496937882102

`∩[A100391(n+1), A122494(n+1)]`
-/

namespace A257278.P3111733496937882102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P3111733496937882102

/-! ## A257278.P16947211818369985633

`∩[A100391(n+1), A380731(n+1)]`
-/

namespace A257278.P16947211818369985633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P16947211818369985633

/-! ## A257278.P9132554165043084632

`∩[A068936(n+1), A100391(n+1)]`
-/

namespace A257278.P9132554165043084632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P9132554165043084632

/-! ## A257278.P3162207184785610883

`∩[A025475(n+1), A122494(n+1)]`
-/

namespace A257278.P3162207184785610883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P3162207184785610883

/-! ## A257278.P962019707711055064

`∩[A073540(n+1), A122494(n+1)]`
-/

namespace A257278.P962019707711055064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P962019707711055064

/-! ## A257278.P3356208648720941516

`∩[A054744(n+1), A246067(n+1)]`
-/

namespace A257278.P3356208648720941516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257278.P3356208648720941516

/-!
# A257279: Zeroless prime powers p^m with p <= m.

The programs for A257279, there is no canonical definition to state claims against.
-/

/-! ## A257279.P5995223762060399363

`∩[A122494(n+1), A195942(n+1)]`
-/

namespace A257279.P5995223762060399363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257279.P5995223762060399363

/-! ## A257279.P16811559251845648535

`∩[A195942(n+1), A257278(n+1)]`
-/

namespace A257279.P16811559251845648535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257279.P16811559251845648535

/-! ## A257279.P7499728159011546181

`∩[A195942(n+1), A380731(n+1)]`
-/

namespace A257279.P7499728159011546181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257279.P7499728159011546181

/-! ## A257279.P16419506659978757702

`∩[A068306(n+1), A195942(n+1)]`
-/

namespace A257279.P16419506659978757702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257279.P16419506659978757702

/-! ## A257279.P3917355945800325204

`∩[A113645(n+1), A195942(n+1)]`
-/

namespace A257279.P3917355945800325204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257279.P3917355945800325204

/-!
# A257281: Chocolate square numbers.

The programs for A257281, there is no canonical definition to state claims against.
-/

/-! ## A257281.P14374487081256657798

`A261964(C(2*n, 2)-n+1)`
-/

namespace A257281.P14374487081256657798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261964 ((Nat.choose (2 * n) 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A257281.P14374487081256657798

/-!
# A257282: Numbers whose square is not the sum of two consecutive nonsquares.

The programs for A257282, the canonical program `A257282.P3133761122508046710` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257282 has offset 1).

The definition of A257282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257282.P3169611650464255097

`sqrt(A256944(n+1))`
-/

namespace A257282.P3169611650464255097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256944 (n + 1) : ℝ)

end

end A257282.P3169611650464255097

namespace A257282

/-- `sqrt(A256944(n+1))` -/
def P3169611650464255097.Spec : Prop :=
  ∀ n, P3169611650464255097.a n = (A257282 (n + 1) : ℝ)

end A257282

/-! ## A257282.P3133761122508046710

`comp[A257292(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257282

/-- `comp[A257292(n+1)]` -/
def P3133761122508046710.Spec : Prop :=
  ∀ n, (P3133761122508046710.a n : ℤ) = A257282 (n + 1)

theorem P3133761122508046710.correct : P3133761122508046710.Spec := by
  intro n
  simp only [A257282, Nat.add_sub_cancel]

end A257282

/-! ## A257282.P1226971077985370467

`∪[2*n, A078057(n)]`
-/

namespace A257282.P1226971077985370467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257282.P1226971077985370467

namespace A257282

/-- `∪[2*n, A078057(n)]` -/
def P1226971077985370467.Spec : Prop :=
  ∀ n, (P1226971077985370467.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P7785725133521090178

`∪[2*n, A001333(n+1)]`
-/

namespace A257282.P7785725133521090178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257282.P7785725133521090178

namespace A257282

/-- `∪[2*n, A001333(n+1)]` -/
def P7785725133521090178.Spec : Prop :=
  ∀ n, (P7785725133521090178.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P10553771904313325933

`∪[2*n, A119016(n+1)]`
-/

namespace A257282.P10553771904313325933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257282.P10553771904313325933

namespace A257282

/-- `∪[2*n, A119016(n+1)]` -/
def P10553771904313325933.Spec : Prop :=
  ∀ n, (P10553771904313325933.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P418296439062850464

`∪[2*n, A143607(n+1)]`
-/

namespace A257282.P418296439062850464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257282.P418296439062850464

namespace A257282

/-- `∪[2*n, A143607(n+1)]` -/
def P418296439062850464.Spec : Prop :=
  ∀ n, (P418296439062850464.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P6327217391991169470

`∪[2*n, A331115(n+1)]`
-/

namespace A257282.P6327217391991169470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257282.P6327217391991169470

namespace A257282

/-- `∪[2*n, A331115(n+1)]` -/
def P6327217391991169470.Spec : Prop :=
  ∀ n, (P6327217391991169470.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P15193510349210001950

`∪[2*n, A082766(n+2)]`
-/

namespace A257282.P15193510349210001950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257282.P15193510349210001950

namespace A257282

/-- `∪[2*n, A082766(n+2)]` -/
def P15193510349210001950.Spec : Prop :=
  ∀ n, (P15193510349210001950.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P8595607057284652137

`comp[record[(2*n+5)%A288215(n+2)]]`
-/

namespace A257282.P8595607057284652137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 5 : ℤ) (A288215 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257282.P8595607057284652137

namespace A257282

/-- `comp[record[(2*n+5)%A288215(n+2)]]` -/
def P8595607057284652137.Spec : Prop :=
  ∀ n, (P8595607057284652137.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P566934102987779305

`record[A074840(n+1)/A152271(A265744(n))]`
-/

namespace A257282.P566934102987779305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074840 (n + 1) : ℚ) / (A152271 (A265744 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257282.P566934102987779305

namespace A257282

/-- `record[A074840(n+1)/A152271(A265744(n))]` -/
def P566934102987779305.Spec : Prop :=
  ∀ n, P566934102987779305.a n = (A257282 (n + 1) : ℚ)

end A257282

/-! ## A257282.P17260450788776426974

`lt[char[A257292(n+1)], A257260(2*(n+2))]`
-/

namespace A257282.P17260450788776426974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257260 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A257282.P17260450788776426974

namespace A257282

/-- `lt[char[A257292(n+1)], A257260(2*(n+2))]` -/
def P17260450788776426974.Spec : Prop :=
  ∀ n, (P17260450788776426974.a n : ℤ) = A257282 (n + 1)

end A257282

/-! ## A257282.P17159108916782987017

`A056926(A056926(A256944(n+1))²)`
-/

namespace A257282.P17159108916782987017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056926 (A256944 (n + 1)).toNat ^ 2).toNat

end

end A257282.P17159108916782987017

namespace A257282

/-- `A056926(A056926(A256944(n+1))²)` -/
def P17159108916782987017.Spec : Prop :=
  ∀ n, P17159108916782987017.a n = A257282 (n + 1)

end A257282

/-! ## A257282.P6359154173456283387

`A056926(A256944(n+1))%A000124(n)`
-/

namespace A257282.P6359154173456283387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A256944 (n + 1)).toNat) (A000124 n)

end

end A257282.P6359154173456283387

namespace A257282

/-- `A056926(A256944(n+1))%A000124(n)` -/
def P6359154173456283387.Spec : Prop :=
  ∀ n, P6359154173456283387.a n = A257282 (n + 1)

end A257282

/-! ## A257282.P2850005760976979272

`∑{d}[A056926(A256944(n+1)), A000010(#)]`
-/

namespace A257282.P2850005760976979272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A256944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A257282.P2850005760976979272

namespace A257282

/-- `∑{d}[A056926(A256944(n+1)), A000010(#)]` -/
def P2850005760976979272.Spec : Prop :=
  ∀ n, P2850005760976979272.a n = A257282 (n + 1)

end A257282

/-! ## A257282.P8981139482624314639

`A262689(A256944(n+1)%A027789(n+1))`
-/

namespace A257282.P8981139482624314639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.tmod (A256944 (n + 1)) (A027789 (n + 1))).toNat

end

end A257282.P8981139482624314639

namespace A257282

/-- `A262689(A256944(n+1)%A027789(n+1))` -/
def P8981139482624314639.Spec : Prop :=
  ∀ n, P8981139482624314639.a n = A257282 (n + 1)

end A257282

/-! ## A257282.P13528887092537362165

`A262689(2*A256944(n+1)-A256944(n+1))`
-/

namespace A257282.P13528887092537362165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A256944 (n + 1) - A256944 (n + 1)).toNat

end

end A257282.P13528887092537362165

namespace A257282

/-- `A262689(2*A256944(n+1)-A256944(n+1))` -/
def P13528887092537362165.Spec : Prop :=
  ∀ n, P13528887092537362165.a n = A257282 (n + 1)

end A257282

/-! ## A257282.P2188672748054744638

`A014963(A000217(n+5))*A056926(A256944(n+1))`
-/

namespace A257282.P2188672748054744638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 5)).toNat * A056926 (A256944 (n + 1)).toNat

end

end A257282.P2188672748054744638

namespace A257282

/-- `A014963(A000217(n+5))*A056926(A256944(n+1))` -/
def P2188672748054744638.Spec : Prop :=
  ∀ n, P2188672748054744638.a n = A257282 (n + 1)

end A257282

/-! ## A257282.P6644553498668910767

`A262689(A256944(n+1)+A262689(n)²)`
-/

namespace A257282.P6644553498668910767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A256944 (n + 1) + A262689 n ^ 2).toNat

end

end A257282.P6644553498668910767

namespace A257282

/-- `A262689(A256944(n+1)+A262689(n)²)` -/
def P6644553498668910767.Spec : Prop :=
  ∀ n, P6644553498668910767.a n = A257282 (n + 1)

end A257282

/-!
# A257283: Numbers n not divisible by 3 such that n^2 written in base 3 has no digit > 1.

The programs for A257283, there is no canonical definition to state claims against.
-/

/-! ## A257283.P7618649553435955527

`∩[A001651(n+1), A176189(n+1)]`
-/

namespace A257283.P7618649553435955527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257283.P7618649553435955527

/-! ## A257283.P14539557340185005852

`record[A038502(A176189(n+1))]`
-/

namespace A257283.P14539557340185005852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A176189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257283.P14539557340185005852

/-! ## A257283.P15624996486500475404

`filter[A176189(n+1), A011655(#)]`
-/

namespace A257283.P15624996486500475404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A257283.P15624996486500475404

/-! ## A257283.P4297405983463636162

`filter[A176189(n+1), A267208(#)]`
-/

namespace A257283.P4297405983463636162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A257283.P4297405983463636162

/-! ## A257283.P2591143539378195768

`record[A091684(A176189(n-log2(1/2)))]`
-/

namespace A257283.P2591143539378195768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A176189 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257283.P2591143539378195768

/-!
# A257284: Numbers n not divisible by 2 such that n^2 written in base 4 has no digit > 1.

The programs for A257284, there is no canonical definition to state claims against.
-/

/-! ## A257284.P17552580226828686318

`filter[A114400(n+1), A374134(#)]`
-/

namespace A257284.P17552580226828686318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A257284.P17552580226828686318

/-! ## A257284.P610803791818881690

`filter[A114400(n+1), A356172(#)]`
-/

namespace A257284.P610803791818881690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A257284.P610803791818881690

/-! ## A257284.P13309002968550960547

`record[A093178(A114400(n))]`
-/

namespace A257284.P13309002968550960547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A114400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257284.P13309002968550960547

/-! ## A257284.P17505306878621266993

`sqrt(∩[n², A098871(n)])`
-/

namespace A257284.P17505306878621266993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A257284.P17505306878621266993

/-!
# A257285: a(n) = 4*5^n - 3*4^n.

The programs for A257285, the canonical program `A257285.P2550582451569983230` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257285 has offset 0).

The definition of A257285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^n-3*4^n` (program `A257285.P2550582451569983230`, by `A257285.P2550582451569983230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257285.P2550582451569983230

`4*5^n-3*4^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257285

/-- `4*5^n-3*4^n` -/
def P2550582451569983230.Spec : Prop :=
  ∀ n, P2550582451569983230.a n = A257285 n

theorem P2550582451569983230.correct : P2550582451569983230.Spec := by
  intro n
  simp only [A257285]

end A257285

/-! ## A257285.P7208947674107327266

`ogf((1-x)/(1-9x+20x^2))`
-/

namespace A257285.P7208947674107327266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -9, 20] n

end

end A257285.P7208947674107327266

namespace A257285

/-- `ogf((1-x)/(1-9x+20x^2))` -/
def P7208947674107327266.Spec : Prop :=
  ∀ n, P7208947674107327266.a n = A257285 n

end A257285

/-! ## A257285.P14773668733072925751

`Δ[A005060(n)]`
-/

namespace A257285.P14773668733072925751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257285.P14773668733072925751

namespace A257285

/-- `Δ[A005060(n)]` -/
def P14773668733072925751.Spec : Prop :=
  ∀ n, P14773668733072925751.a n = A257285 n

theorem P14773668733072925751.correct : P14773668733072925751.Spec := by
  intro n
  simp only [A257285, Nat.add_sub_cancel, A257285.P14773668733072925751.f1, A257285.P14773668733072925751.a, A257285.P2550582451569983230.a, A005060, A005060.P7488201636543484447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257285

/-! ## A257285.P5257726094437712459

`Δ[A155626(n)]`
-/

namespace A257285.P5257726094437712459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257285.P5257726094437712459

namespace A257285

/-- `Δ[A155626(n)]` -/
def P5257726094437712459.Spec : Prop :=
  ∀ n, P5257726094437712459.a n = A257285 n

theorem P5257726094437712459.correct : P5257726094437712459.Spec := by
  intro n
  simp only [A257285, Nat.add_sub_cancel, A257285.P5257726094437712459.f1, A257285.P5257726094437712459.a, A257285.P2550582451569983230.a, A155626, A155626.P15662545217251213159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257285

/-! ## A257285.P2879357641523071062

`abs(Δ[A000351(n)-A000302(n)])`
-/

namespace A257285.P2879357641523071062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A257285.P2879357641523071062

namespace A257285

/-- `abs(Δ[A000351(n)-A000302(n)])` -/
def P2879357641523071062.Spec : Prop :=
  ∀ n, P2879357641523071062.a n = A257285 n

end A257285

/-! ## A257285.P15906861126867957515

`∑[A055842(n+1)-A055841(n+1)]`
-/

namespace A257285.P15906861126867957515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 (n + 1) - A055841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257285.P15906861126867957515

namespace A257285

/-- `∑[A055842(n+1)-A055841(n+1)]` -/
def P15906861126867957515.Spec : Prop :=
  ∀ n, P15906861126867957515.a n = A257285 n

end A257285

/-!
# A257286: a(n) = 5*6^n - 4*5^n.

The programs for A257286, the canonical program `A257286.P16793242784399166819` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257286 has offset 0).

The definition of A257286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*6^n-4*5^n` (program `A257286.P16793242784399166819`, by `A257286.P16793242784399166819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257286.P16793242784399166819

`5*6^n-4*5^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257286

/-- `5*6^n-4*5^n` -/
def P16793242784399166819.Spec : Prop :=
  ∀ n, P16793242784399166819.a n = A257286 n

theorem P16793242784399166819.correct : P16793242784399166819.Spec := by
  intro n
  simp only [A257286]

end A257286

/-! ## A257286.P8576976466625792365

`lcm(5, a(n-1)+6^(n-1))` with `a(0)=1`
-/

namespace A257286.P8576976466625792365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 5 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A257286.P8576976466625792365

namespace A257286

/-- `lcm(5, a(n-1)+6^(n-1))` -/
def P8576976466625792365.Spec : Prop :=
  ∀ n, (P8576976466625792365.a n : ℤ) = A257286 n

end A257286

/-! ## A257286.P14376431257611576265

`Δ[A005062(n)]`
-/

namespace A257286.P14376431257611576265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257286.P14376431257611576265

namespace A257286

/-- `Δ[A005062(n)]` -/
def P14376431257611576265.Spec : Prop :=
  ∀ n, P14376431257611576265.a n = A257286 n

theorem P14376431257611576265.correct : P14376431257611576265.Spec := by
  intro n
  simp only [A257286, Nat.add_sub_cancel, A257286.P14376431257611576265.f1, A257286.P14376431257611576265.a, A257286.P16793242784399166819.a, A005062, A005062.P7032567066321491039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257286

/-! ## A257286.P192368860603690456

`Δ[A155639(n)]`
-/

namespace A257286.P192368860603690456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257286.P192368860603690456

namespace A257286

/-- `Δ[A155639(n)]` -/
def P192368860603690456.Spec : Prop :=
  ∀ n, P192368860603690456.a n = A257286 n

theorem P192368860603690456.correct : P192368860603690456.Spec := by
  intro n
  simp only [A257286, Nat.add_sub_cancel, A257286.P192368860603690456.f1, A257286.P192368860603690456.a, A257286.P16793242784399166819.a, A155639, A155639.P2274321945435798070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257286

/-!
# A257287: a(n) = 6*7^n - 5*6^n.

The programs for A257287, the canonical program `A257287.P7437260890676283282` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257287 has offset 0).

The definition of A257287 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*7^n-5*6^n` (program `A257287.P7437260890676283282`, by `A257287.P7437260890676283282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257287.P7437260890676283282

`6*7^n-5*6^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257287

/-- `6*7^n-5*6^n` -/
def P7437260890676283282.Spec : Prop :=
  ∀ n, P7437260890676283282.a n = A257287 n

theorem P7437260890676283282.correct : P7437260890676283282.Spec := by
  intro n
  simp only [A257287]

end A257287

/-! ## A257287.P8647809848437479643

`Δ[A016169(n)]`
-/

namespace A257287.P8647809848437479643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257287.P8647809848437479643

namespace A257287

/-- `Δ[A016169(n)]` -/
def P8647809848437479643.Spec : Prop :=
  ∀ n, P8647809848437479643.a n = A257287 n

theorem P8647809848437479643.correct : P8647809848437479643.Spec := by
  intro n
  simp only [A257287, Nat.add_sub_cancel, A257287.P8647809848437479643.f1, A257287.P8647809848437479643.a, A257287.P7437260890676283282.a, A016169, A016169.P17767092086917867481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257287

/-! ## A257287.P1776609858933945308

`Δ[A155650(n)]`
-/

namespace A257287.P1776609858933945308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257287.P1776609858933945308

namespace A257287

/-- `Δ[A155650(n)]` -/
def P1776609858933945308.Spec : Prop :=
  ∀ n, P1776609858933945308.a n = A257287 n

theorem P1776609858933945308.correct : P1776609858933945308.Spec := by
  intro n
  simp only [A257287, Nat.add_sub_cancel, A257287.P1776609858933945308.f1, A257287.P1776609858933945308.a, A257287.P7437260890676283282.a, A155650, A155650.P2684719601656214270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257287

/-! ## A257287.P7154063304754310772

`-Δ[A000400(n)-A000420(n)]`
-/

namespace A257287.P7154063304754310772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A257287.P7154063304754310772

namespace A257287

/-- `-Δ[A000400(n)-A000420(n)]` -/
def P7154063304754310772.Spec : Prop :=
  ∀ n, P7154063304754310772.a n = A257287 n

theorem P7154063304754310772.correct : P7154063304754310772.Spec := by
  intro n
  simp only [A257287, Nat.add_sub_cancel, A257287.P7154063304754310772.f1, A257287.P7154063304754310772.a, A257287.P7437260890676283282.a, A000400, A000400.P10889281521385558416.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257287

/-! ## A257287.P1871986651426607202

`-Δ[A074533(n)-A074534(n)]`
-/

namespace A257287.P1871986651426607202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074533 n - A074534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A257287.P1871986651426607202

namespace A257287

/-- `-Δ[A074533(n)-A074534(n)]` -/
def P1871986651426607202.Spec : Prop :=
  ∀ n, P1871986651426607202.a n = A257287 n

theorem P1871986651426607202.correct : P1871986651426607202.Spec := by
  intro n
  simp only [A257287, Nat.add_sub_cancel, A257287.P1871986651426607202.f1, A257287.P1871986651426607202.a, A257287.P7437260890676283282.a, A074533, A074533.P12871218139762461628.a, A074534, A074534.P902535221530212066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257287

/-!
# A257288: a(n) = 7*8^n-6*7^n.

The programs for A257288, the canonical program `A257288.P3201783179135902891` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257288 has offset 0).

The definition of A257288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*8^n-6*7^n` (program `A257288.P3201783179135902891`, by `A257288.P3201783179135902891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257288.P3201783179135902891

`7*8^n-6*7^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257288

/-- `7*8^n-6*7^n` -/
def P3201783179135902891.Spec : Prop :=
  ∀ n, P3201783179135902891.a n = A257288 n

theorem P3201783179135902891.correct : P3201783179135902891.Spec := by
  intro n
  simp only [A257288]

end A257288

/-! ## A257288.P11934836587690471000

`Δ[A016177(n)]`
-/

namespace A257288.P11934836587690471000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257288.P11934836587690471000

namespace A257288

/-- `Δ[A016177(n)]` -/
def P11934836587690471000.Spec : Prop :=
  ∀ n, P11934836587690471000.a n = A257288 n

theorem P11934836587690471000.correct : P11934836587690471000.Spec := by
  intro n
  simp only [A257288, Nat.add_sub_cancel, A257288.P11934836587690471000.f1, A257288.P11934836587690471000.a, A257288.P3201783179135902891.a, A016177, A016177.P16704984265590064916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257288

/-! ## A257288.P5825113792701586558

`Δ[A155659(n)]`
-/

namespace A257288.P5825113792701586558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257288.P5825113792701586558

namespace A257288

/-- `Δ[A155659(n)]` -/
def P5825113792701586558.Spec : Prop :=
  ∀ n, P5825113792701586558.a n = A257288 n

theorem P5825113792701586558.correct : P5825113792701586558.Spec := by
  intro n
  simp only [A257288, Nat.add_sub_cancel, A257288.P5825113792701586558.f1, A257288.P5825113792701586558.a, A257288.P3201783179135902891.a, A155659, A155659.P13069452461184344197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257288

/-! ## A257288.P3677525677660946316

`Δ[A000079(3*n)-7^n]`
-/

namespace A257288.P3677525677660946316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) - (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257288.P3677525677660946316

namespace A257288

/-- `Δ[A000079(3*n)-7^n]` -/
def P3677525677660946316.Spec : Prop :=
  ∀ n, P3677525677660946316.a n = A257288 n

end A257288

/-! ## A257288.P5667288822130158765

`Δ[A024092(n)-A024079(n)]`
-/

namespace A257288.P5667288822130158765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024092 n - A024079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257288.P5667288822130158765

namespace A257288

/-- `Δ[A024092(n)-A024079(n)]` -/
def P5667288822130158765.Spec : Prop :=
  ∀ n, P5667288822130158765.a n = A257288 n

theorem P5667288822130158765.correct : P5667288822130158765.Spec := by
  intro n
  simp only [A257288, Nat.add_sub_cancel, A257288.P5667288822130158765.f1, A257288.P5667288822130158765.a, A257288.P3201783179135902891.a, A024079, A024079.P4363615963173718157.a, A024092, A024092.P450069344864279862.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257288

/-! ## A257288.P2913987362638634522

`Δ[A074535(n)-A074534(n)]`
-/

namespace A257288.P2913987362638634522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074535 n - A074534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257288.P2913987362638634522

namespace A257288

/-- `Δ[A074535(n)-A074534(n)]` -/
def P2913987362638634522.Spec : Prop :=
  ∀ n, P2913987362638634522.a n = A257288 n

theorem P2913987362638634522.correct : P2913987362638634522.Spec := by
  intro n
  simp only [A257288, Nat.add_sub_cancel, A257288.P2913987362638634522.f1, A257288.P2913987362638634522.a, A257288.P3201783179135902891.a, A074534, A074534.P902535221530212066.a, A074535, A074535.P639029963041919896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257288

/-! ## A257288.P7866088201811880764

`Δ[A155592(n)-A155590(n)]`
-/

namespace A257288.P7866088201811880764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155592 n - A155590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257288.P7866088201811880764

namespace A257288

/-- `Δ[A155592(n)-A155590(n)]` -/
def P7866088201811880764.Spec : Prop :=
  ∀ n, P7866088201811880764.a n = A257288 n

theorem P7866088201811880764.correct : P7866088201811880764.Spec := by
  intro n
  simp only [A257288, Nat.add_sub_cancel, A257288.P7866088201811880764.f1, A257288.P7866088201811880764.a, A257288.P3201783179135902891.a, A155590, A155590.P9114205197239892315.a, A155592, A155592.P5195456742387795530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257288

/-!
# A257289: a(n) = 8*9^n - 7*8^n.

The programs for A257289, the canonical program `A257289.P2212882097148905810` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257289 has offset 0).

The definition of A257289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*9^n-7*8^n` (program `A257289.P2212882097148905810`, by `A257289.P2212882097148905810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257289.P2212882097148905810

`8*9^n-7*8^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257289

/-- `8*9^n-7*8^n` -/
def P2212882097148905810.Spec : Prop :=
  ∀ n, P2212882097148905810.a n = A257289 n

theorem P2212882097148905810.correct : P2212882097148905810.Spec := by
  intro n
  simp only [A257289]

end A257289

/-! ## A257289.P18168417345992335193

`Δ[A016185(n)]`
-/

namespace A257289.P18168417345992335193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257289.P18168417345992335193

namespace A257289

/-- `Δ[A016185(n)]` -/
def P18168417345992335193.Spec : Prop :=
  ∀ n, P18168417345992335193.a n = A257289 n

theorem P18168417345992335193.correct : P18168417345992335193.Spec := by
  intro n
  simp only [A257289, Nat.add_sub_cancel, A257289.P18168417345992335193.f1, A257289.P18168417345992335193.a, A257289.P2212882097148905810.a, A016185, A016185.P15454333231645791196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257289

/-! ## A257289.P7691010330530532011

`Δ[A155666(n)]`
-/

namespace A257289.P7691010330530532011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257289.P7691010330530532011

namespace A257289

/-- `Δ[A155666(n)]` -/
def P7691010330530532011.Spec : Prop :=
  ∀ n, P7691010330530532011.a n = A257289 n

theorem P7691010330530532011.correct : P7691010330530532011.Spec := by
  intro n
  simp only [A257289, Nat.add_sub_cancel, A257289.P7691010330530532011.f1, A257289.P7691010330530532011.a, A257289.P2212882097148905810.a, A155666, A155666.P11820455710438439102.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257289

/-! ## A257289.P4764234313198928631

`Δ[9^n-A000225(3*n)]`
-/

namespace A257289.P4764234313198928631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - A000225 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257289.P4764234313198928631

namespace A257289

/-- `Δ[9^n-A000225(3*n)]` -/
def P4764234313198928631.Spec : Prop :=
  ∀ n, P4764234313198928631.a n = A257289 n

end A257289

/-! ## A257289.P8838266648036618979

`Δ[A074505(n)-A074504(n)]`
-/

namespace A257289.P8838266648036618979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074505 n - A074504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257289.P8838266648036618979

namespace A257289

/-- `Δ[A074505(n)-A074504(n)]` -/
def P8838266648036618979.Spec : Prop :=
  ∀ n, P8838266648036618979.a n = A257289 n

theorem P8838266648036618979.correct : P8838266648036618979.Spec := by
  intro n
  simp only [A257289, Nat.add_sub_cancel, A257289.P8838266648036618979.f1, A257289.P8838266648036618979.a, A257289.P2212882097148905810.a, A074504, A074504.P13616172850196297059.a, A074505, A074505.P17127150442839759814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257289

/-! ## A257289.P10284712217136817045

`abs(Δ[A155655(n)-A155656(n)])`
-/

namespace A257289.P10284712217136817045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155655 n - A155656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A257289.P10284712217136817045

namespace A257289

/-- `abs(Δ[A155655(n)-A155656(n)])` -/
def P10284712217136817045.Spec : Prop :=
  ∀ n, P10284712217136817045.a n = A257289 n

end A257289

/-! ## A257289.P3973708201840556094

`Δ[A062396(n)-A011782(3*n+1)]`
-/

namespace A257289.P3973708201840556094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062396 n - A011782 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257289.P3973708201840556094

namespace A257289

/-- `Δ[A062396(n)-A011782(3*n+1)]` -/
def P3973708201840556094.Spec : Prop :=
  ∀ n, P3973708201840556094.a n = A257289 n

end A257289

/-!
# A257290: Number of 3-Motzkin paths of length n with no level steps at even level.

The programs for A257290, there is no canonical definition to state claims against.
-/

/-! ## A257290.P2910544334499362230

`A257178(n)%A257178(abs(1-n))`
-/

namespace A257290.P2910544334499362230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257178 n) (A257178 |1 - (n : ℤ)|.toNat)

end

end A257290.P2910544334499362230

/-! ## A257290.P1288161376109616394

`A148360(n)-A351870(A171874(n+2))`
-/

namespace A257290.P1288161376109616394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148360 n - A351870 (A171874 (n + 2)).toNat

end

end A257290.P1288161376109616394

/-! ## A257290.P12857800118646464364

`ceil(sqrt(A323587(n²)))-A000045(n)`
-/

namespace A257290.P12857800118646464364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A323587 (n ^ 2) : ℝ)⌉ - A000045 n

end

end A257290.P12857800118646464364

/-!
# A257291: Number of states in minimal DFA accepting base-2 representation of first n prime numbers.

The programs for A257291, there is no canonical definition to state claims against.
-/

/-! ## A257291.P3365358636006668449

`A056811(A157868(n+1))+4`
-/

namespace A257291.P3365358636006668449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A157868 (n + 1)).toNat + 4

end

end A257291.P3365358636006668449

/-! ## A257291.P4776084562666435217

`A130259(A001970(n))+A130239(n+4)`
-/

namespace A257291.P4776084562666435217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A001970 n).toNat + A130239 (n + 4)

end

end A257291.P4776084562666435217

/-! ## A257291.P300541054061270845

`A029837(or(A145127(n), A243112(n+3)))`
-/

namespace A257291.P300541054061270845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (Int.lor (A145127 n) (A243112 (n + 3))).toNat

end

end A257291.P300541054061270845

/-! ## A257291.P6014746618490774656

`A029837(or(A257371(n+1)², A145127(n)))`
-/

namespace A257291.P6014746618490774656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (Int.lor (A257371 (n + 1) ^ 2) (A145127 n)).toNat

end

end A257291.P6014746618490774656

/-! ## A257291.P10665730070979711097

`A109401(n+1)+A087436(A108374(n+1))`
-/

namespace A257291.P10665730070979711097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (n + 1) + A087436 (A108374 (n + 1)).toNat

end

end A257291.P10665730070979711097

/-!
# A257292: Numbers whose square can be written as the sum of two consecutive nonsquares.

The programs for A257292, the canonical program `A257292.P7420582518654477351` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257292 has offset 1).

The definition of A257292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257292.P7420582518654477351

`2*comp[∑[A000129(n)]]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A257292

/-- `2*comp[∑[A000129(n)]]+1` -/
def P7420582518654477351.Spec : Prop :=
  ∀ n, (P7420582518654477351.a n : ℤ) = A257292 (n + 1)

theorem P7420582518654477351.correct : P7420582518654477351.Spec := by
  intro n
  simp only [A257292, Nat.add_sub_cancel]

end A257292

/-! ## A257292.P15825462296027623036

`2*(comp[A048739(n)-1]+1)+1`
-/

namespace A257292.P15825462296027623036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A257292.P15825462296027623036

namespace A257292

/-- `2*(comp[A048739(n)-1]+1)+1` -/
def P15825462296027623036.Spec : Prop :=
  ∀ n, (P15825462296027623036.a n : ℤ) = A257292 (n + 1)

end A257292

/-! ## A257292.P12408708523918207027

`record[(2*n+5)%A288215(n+2)]`
-/

namespace A257292.P12408708523918207027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 5 : ℤ) (A288215 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257292.P12408708523918207027

namespace A257292

/-- `record[(2*n+5)%A288215(n+2)]` -/
def P12408708523918207027.Spec : Prop :=
  ∀ n, P12408708523918207027.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P10859729107949569086

`A005408(comp[∑[A000129(n)]])`
-/

namespace A257292.P10859729107949569086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257292.P10859729107949569086

namespace A257292

/-- `A005408(comp[∑[A000129(n)]])` -/
def P10859729107949569086.Spec : Prop :=
  ∀ n, P10859729107949569086.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P14525750155137505687

`A005843(comp[∑[A000129(n)]])+1`
-/

namespace A257292.P14525750155137505687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A257292.P14525750155137505687

namespace A257292

/-- `A005843(comp[∑[A000129(n)]])+1` -/
def P14525750155137505687.Spec : Prop :=
  ∀ n, P14525750155137505687.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P16299653084173509626

`comp[A257282(n+1)]`
-/

namespace A257292.P16299653084173509626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257292.P16299653084173509626

namespace A257292

/-- `comp[A257282(n+1)]` -/
def P16299653084173509626.Spec : Prop :=
  ∀ n, (P16299653084173509626.a n : ℤ) = A257292 (n + 1)

end A257292

/-! ## A257292.P14916123599486995376

`A257282(eq[2, Δ[A257282(n+1)]]+1)+1`
-/

namespace A257292.P14916123599486995376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A257292.P14916123599486995376

namespace A257292

/-- `A257282(eq[2, Δ[A257282(n+1)]]+1)+1` -/
def P14916123599486995376.Spec : Prop :=
  ∀ n, P14916123599486995376.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P15387090218795270408

`A328399(4*comp[∑[A000129(n)]])`
-/

namespace A257292.P15387090218795270408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257292.P15387090218795270408

namespace A257292

/-- `A328399(4*comp[∑[A000129(n)]])` -/
def P15387090218795270408.Spec : Prop :=
  ∀ n, P15387090218795270408.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P7577442737581940852

`A109613(2*comp[∑[A000129(n)]])`
-/

namespace A257292.P7577442737581940852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257292.P7577442737581940852

namespace A257292

/-- `A109613(2*comp[∑[A000129(n)]])` -/
def P7577442737581940852.Spec : Prop :=
  ∀ n, P7577442737581940852.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P15132475238299661043

`eq[char[A001333(n)], A226782(n+5)]`
-/

namespace A257292.P15132475238299661043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257292.P15132475238299661043

namespace A257292

/-- `eq[char[A001333(n)], A226782(n+5)]` -/
def P15132475238299661043.Spec : Prop :=
  ∀ n, (P15132475238299661043.a n : ℤ) = A257292 (n + 1)

end A257292

/-! ## A257292.P5263425658271607241

`A008611(3*2*comp[∑[A000129(n)]])`
-/

namespace A257292.P5263425658271607241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A257292.P5263425658271607241

namespace A257292

/-- `A008611(3*2*comp[∑[A000129(n)]])` -/
def P5263425658271607241.Spec : Prop :=
  ∀ n, P5263425658271607241.a n = A257292 (n + 1)

end A257292

/-! ## A257292.P5974769587789626534

`record[A272679(∑[n+2]+1)]`
-/

namespace A257292.P5974769587789626534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257292.P5974769587789626534

namespace A257292

/-- `record[A272679(∑[n+2]+1)]` -/
def P5974769587789626534.Spec : Prop :=
  ∀ n, P5974769587789626534.a n = A257292 (n + 1)

end A257292

/-!
# A257294: The first d decimal digits of the geometric mean of the digits of n, where d is the number of digits of n, without leading zeros.

The programs for A257294, the canonical program `A257294.P9500194499461381062` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257294 has offset 0).

The definition of A257294 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257294.P9500194499461381062

`floor(A007954(n)^(1/A055642(n))*10^(A055642(n)-1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257294

/-- `floor(A007954(n)^(1/A055642(n))*10^(A055642(n)-1))` -/
def P9500194499461381062.Spec : Prop :=
  ∀ n, P9500194499461381062.a n = A257294 n

theorem P9500194499461381062.correct : P9500194499461381062.Spec := by
  intro n
  simp only [A257294]

end A257294

/-!
# A257295: Arithmetic mean of the digits of n, rounded to the nearest integer.

The programs for A257295, the canonical program `A257295.P17273272147279927714` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257295 has offset 0).

The definition of A257295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257295.P17273272147279927714

`round(A007953(n)/A055642(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257295

/-- `round(A007953(n)/A055642(n))` -/
def P17273272147279927714.Spec : Prop :=
  ∀ n, P17273272147279927714.a n = A257295 n

theorem P17273272147279927714.correct : P17273272147279927714.Spec := by
  intro n
  simp only [A257295]

end A257295

/-! ## A257295.P3934415495524479709

`round(∑{digits}[n, #]/∑{digits}[n, 10^#]%9)`
-/

namespace A257295.P3934415495524479709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) / ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℚ))

end

end A257295.P3934415495524479709

namespace A257295

/-- `round(∑{digits}[n, #]/∑{digits}[n, 10^#]%9)` -/
def P3934415495524479709.Spec : Prop :=
  ∀ n, P3934415495524479709.a n = A257295 n

end A257295

/-! ## A257295.P12216330572925732564

`round(log2(A329562(n))/A055642(n))`
-/

namespace A257295.P12216330572925732564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ) / (A055642 n : ℝ))

end

end A257295.P12216330572925732564

namespace A257295

/-- `round(log2(A329562(n))/A055642(n))` -/
def P12216330572925732564.Spec : Prop :=
  ∀ n, P12216330572925732564.a n = A257295 n

end A257295

/-! ## A257295.P14095640023264608971

`round(A007953(n)/dr(A348783(n)))`
-/

namespace A257295.P14095640023264608971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℚ) / (SequenceMachineLib.digitalRoot (A348783 n) : ℚ))

end

end A257295.P14095640023264608971

namespace A257295

/-- `round(A007953(n)/dr(A348783(n)))` -/
def P14095640023264608971.Spec : Prop :=
  ∀ n, P14095640023264608971.a n = A257295 n

end A257295

/-! ## A257295.P1294171083134033010

`round(A007953(n)/(A337843(n)-n))`
-/

namespace A257295.P1294171083134033010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℚ) / (A337843 n - (n : ℤ) : ℚ))

end

end A257295.P1294171083134033010

namespace A257295

/-- `round(A007953(n)/(A337843(n)-n))` -/
def P1294171083134033010.Spec : Prop :=
  ∀ n, P1294171083134033010.a n = A257295 n

theorem P1294171083134033010.correct : P1294171083134033010.Spec := by
  intro n
  simp only [A257295, Nat.add_sub_cancel, A257295.P1294171083134033010.a, A257295.P17273272147279927714.a, A007953, A007953.P3472751987379697826.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, A337843, A337843.P8962796639510321882.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257295

/-! ## A257295.P7475965546821706006

`round(A007953(n)/∑{digits}[n, A014256(#)])`
-/

namespace A257295.P7475965546821706006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007953 n : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A014256 x).sum : ℤ) : ℚ))

end

end A257295.P7475965546821706006

namespace A257295

/-- `round(A007953(n)/∑{digits}[n, A014256(#)])` -/
def P7475965546821706006.Spec : Prop :=
  ∀ n, P7475965546821706006.a n = A257295 n

end A257295

/-!
# A257296: Arithmetic mean of the digits of n, multiplied by 10^(d-1) and rounded down, where d is the number of digits of n.

The programs for A257296, the canonical program `A257296.P8153982668821683699` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257296 has offset 0).

The definition of A257296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257296.P8153982668821683699

`floor(A007953(n)/A055642(n)*10^(A055642(n)-1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A257296

/-- `floor(A007953(n)/A055642(n)*10^(A055642(n)-1))` -/
def P8153982668821683699.Spec : Prop :=
  ∀ n, P8153982668821683699.a n = A257296 n

theorem P8153982668821683699.correct : P8153982668821683699.Spec := by
  intro n
  simp only [A257296]

end A257296

/-! ## A257296.P11648588052597463165

`∑{digits}[n, #]*A374518(∑{digits}[n, (#%2)!]^∑{digits}[n, (#%2)!])`
-/

namespace A257296.P11648588052597463165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A374518 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum)

end

end A257296.P11648588052597463165

namespace A257296

/-- `∑{digits}[n, #]*A374518(∑{digits}[n, (#%2)!]^∑{digits}[n, (#%2)!])` -/
def P11648588052597463165.Spec : Prop :=
  ∀ n, P11648588052597463165.a n = A257296 n

end A257296

/-! ## A257296.P15499847892082353122

`A007953(n)*A374518(∑{digits}[n, (#%2)!]^∑{digits}[n, (#%2)!])`
-/

namespace A257296.P15499847892082353122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A374518 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum)

end

end A257296.P15499847892082353122

namespace A257296

/-- `A007953(n)*A374518(∑{digits}[n, (#%2)!]^∑{digits}[n, (#%2)!])` -/
def P15499847892082353122.Spec : Prop :=
  ∀ n, P15499847892082353122.a n = A257296 n

end A257296

/-! ## A257296.P10963478067214644531

`A007953(n)*A038566(A260529(n))`
-/

namespace A257296.P10963478067214644531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n * A038566 (A260529 n).toNat

end

end A257296.P10963478067214644531

namespace A257296

/-- `A007953(n)*A038566(A260529(n))` -/
def P10963478067214644531.Spec : Prop :=
  ∀ n, P10963478067214644531.a n = A257296 n

end A257296

/-!
# A257297: a(n) = (initial digit of n) * (n with initial digit removed).

The programs for A257297, the canonical program `A257297.P4005880040624750728` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257297 has offset 0).

The definition of A257297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257297.P4005880040624750728

`n%10*dr(floor(n/10))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257297

/-- `n%10*dr(floor(n/10))` -/
def P4005880040624750728.Spec : Prop :=
  ∀ n, (P4005880040624750728.a n : ℤ) = A257297 n

theorem P4005880040624750728.correct : P4005880040624750728.Spec := by
  intro n
  simp only [A257297]

end A257297

/-! ## A257297.P5170959932790363267

`∏{digits}[n, #+1]-(∑{digits}[n, #]+1)`
-/

namespace A257297.P5170959932790363267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1 : ℕ) : ℤ)

end

end A257297.P5170959932790363267

namespace A257297

/-- `∏{digits}[n, #+1]-(∑{digits}[n, #]+1)` -/
def P5170959932790363267.Spec : Prop :=
  ∀ n, P5170959932790363267.a n = A257297 n

end A257297

/-! ## A257297.P5994160187100101786

`(∑{digits}[n, #]²-∑{digits}[n, #²])/2`
-/

namespace A257297.P5994160187100101786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) : ℚ) / 2

end

end A257297.P5994160187100101786

namespace A257297

/-- `(∑{digits}[n, #]²-∑{digits}[n, #²])/2` -/
def P5994160187100101786.Spec : Prop :=
  ∀ n, P5994160187100101786.a n = (A257297 n : ℚ)

end A257297

/-! ## A257297.P7606062651012423694

`(∑{digits}[n, #]²-∑{digits}[n, #²])*log2(sqrt(2))`
-/

namespace A257297.P7606062651012423694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) : ℝ) * Real.logb 2 (Real.sqrt (2 : ℝ))

end

end A257297.P7606062651012423694

namespace A257297

/-- `(∑{digits}[n, #]²-∑{digits}[n, #²])*log2(sqrt(2))` -/
def P7606062651012423694.Spec : Prop :=
  ∀ n, P7606062651012423694.a n = (A257297 n : ℝ)

end A257297

/-! ## A257297.P8323896792103735933

`(∏{digits}[n, #+1]+n)%(∑{digits}[n, #]+1+n)`
-/

namespace A257297.P8323896792103735933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).prod + n) % (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1 + n)

end

end A257297.P8323896792103735933

namespace A257297

/-- `(∏{digits}[n, #+1]+n)%(∑{digits}[n, #]+1+n)` -/
def P8323896792103735933.Spec : Prop :=
  ∀ n, (P8323896792103735933.a n : ℤ) = A257297 n

end A257297

/-! ## A257297.P6642947837078507684

`∏{digits}[n, gcd(#, #!²)]%(∏{digits}[n, #+1]+C(2, n+2)-1)`
-/

namespace A257297.P6642947837078507684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℤ) (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x + 1).prod : ℕ) : ℤ) + ((Nat.choose 2 (n + 2) : ℤ) - 1))

end

end A257297.P6642947837078507684

namespace A257297

/-- `∏{digits}[n, gcd(#, #!²)]%(∏{digits}[n, #+1]+C(2, n+2)-1)` -/
def P6642947837078507684.Spec : Prop :=
  ∀ n, P6642947837078507684.a n = A257297 n

end A257297

/-! ## A257297.P10081896102025242136

`A069816(n)/2`
-/

namespace A257297.P10081896102025242136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069816 n : ℚ) / 2

end

end A257297.P10081896102025242136

namespace A257297

/-- `A069816(n)/2` -/
def P10081896102025242136.Spec : Prop :=
  ∀ n, P10081896102025242136.a n = (A257297 n : ℚ)

end A257297

/-! ## A257297.P14665996463573144395

`A061486(n)-∑{digits}[n, #]`
-/

namespace A257297.P14665996463573144395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A257297.P14665996463573144395

namespace A257297

/-- `A061486(n)-∑{digits}[n, #]` -/
def P14665996463573144395.Spec : Prop :=
  ∀ n, P14665996463573144395.a n = A257297 n

end A257297

/-! ## A257297.P7450951298175943031

`A111707(n)%∏{d}[n, #]`
-/

namespace A257297.P7450951298175943031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111707 n) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A257297.P7450951298175943031

namespace A257297

/-- `A111707(n)%∏{d}[n, #]` -/
def P7450951298175943031.Spec : Prop :=
  ∀ n, P7450951298175943031.a n = A257297 n

end A257297

/-! ## A257297.P1919441824346593169

`A169669(n)%∏{d}[n, #]`
-/

namespace A257297.P1919441824346593169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169669 n) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A257297.P1919441824346593169

namespace A257297

/-- `A169669(n)%∏{d}[n, #]` -/
def P1919441824346593169.Spec : Prop :=
  ∀ n, P1919441824346593169.a n = A257297 n

end A257297

/-! ## A257297.P7008454228890157605

`(∑{digits}[n, #]²-A003132(n))/2`
-/

namespace A257297.P7008454228890157605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - A003132 n : ℚ) / 2

end

end A257297.P7008454228890157605

namespace A257297

/-- `(∑{digits}[n, #]²-A003132(n))/2` -/
def P7008454228890157605.Spec : Prop :=
  ∀ n, P7008454228890157605.a n = (A257297 n : ℚ)

end A257297

/-! ## A257297.P17027156866388100649

`A004526(∑{digits}[n, #]²-∑{digits}[n, #²])`
-/

namespace A257297.P17027156866388100649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum)

end

end A257297.P17027156866388100649

namespace A257297

/-- `A004526(∑{digits}[n, #]²-∑{digits}[n, #²])` -/
def P17027156866388100649.Spec : Prop :=
  ∀ n, P17027156866388100649.a n = A257297 n

end A257297

/-! ## A257297.P18437269568146632159

`A035930(A004185(n))`
-/

namespace A257297.P18437269568146632159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A004185 n).toNat

end

end A257297.P18437269568146632159

namespace A257297

/-- `A035930(A004185(n))` -/
def P18437269568146632159.Spec : Prop :=
  ∀ n, P18437269568146632159.a n = A257297 n

end A257297

/-! ## A257297.P17570875887547947

`A001281(A069816(n))`
-/

namespace A257297.P17570875887547947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A069816 n).toNat

end

end A257297.P17570875887547947

namespace A257297

/-- `A001281(A069816(n))` -/
def P17570875887547947.Spec : Prop :=
  ∀ n, P17570875887547947.a n = A257297 n

end A257297

/-! ## A257297.P17118748289127931577

`A004526(A069816(n)+1)`
-/

namespace A257297.P17118748289127931577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A069816 n + 1).toNat

end

end A257297.P17118748289127931577

namespace A257297

/-- `A004526(A069816(n)+1)` -/
def P17118748289127931577.Spec : Prop :=
  ∀ n, P17118748289127931577.a n = A257297 n

end A257297

/-! ## A257297.P3304706999760846693

`A123108(A069816(n)+1)`
-/

namespace A257297.P3304706999760846693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A069816 n + 1).toNat

end

end A257297.P3304706999760846693

namespace A257297

/-- `A123108(A069816(n)+1)` -/
def P3304706999760846693.Spec : Prop :=
  ∀ n, P3304706999760846693.a n = A257297 n

end A257297

/-! ## A257297.P8284717423151735435

`A300068(A069816(n)+1)`
-/

namespace A257297.P8284717423151735435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A069816 n + 1).toNat

end

end A257297.P8284717423151735435

namespace A257297

/-- `A300068(A069816(n)+1)` -/
def P8284717423151735435.Spec : Prop :=
  ∀ n, P8284717423151735435.a n = A257297 n

end A257297

/-! ## A257297.P15171532627338650189

`A002265(2*A069816(n))`
-/

namespace A257297.P15171532627338650189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A069816 n).toNat

end

end A257297.P15171532627338650189

namespace A257297

/-- `A002265(2*A069816(n))` -/
def P15171532627338650189.Spec : Prop :=
  ∀ n, P15171532627338650189.a n = A257297 n

end A257297

/-! ## A257297.P8034506149141336181

`A061486(n)-A007953(n)`
-/

namespace A257297.P8034506149141336181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n - A007953 n

end

end A257297.P8034506149141336181

namespace A257297

/-- `A061486(n)-A007953(n)` -/
def P8034506149141336181.Spec : Prop :=
  ∀ n, P8034506149141336181.a n = A257297 n

end A257297

/-! ## A257297.P7274733929584971048

`A069940(n)-A003132(n)`
-/

namespace A257297.P7274733929584971048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069940 n - A003132 n

end

end A257297.P7274733929584971048

namespace A257297

/-- `A069940(n)-A003132(n)` -/
def P7274733929584971048.Spec : Prop :=
  ∀ n, P7274733929584971048.a n = A257297 n

end A257297

