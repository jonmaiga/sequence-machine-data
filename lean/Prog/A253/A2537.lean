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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A253700: Number of (3+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253700, there is no canonical definition to state claims against.
-/

/-! ## A253700.P13386974176854975030

`A253698(∑[n+2]+4)`
-/

namespace A253700.P13386974176854975030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253700.P13386974176854975030

/-!
# A253701: Number of (4+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253701, there is no canonical definition to state claims against.
-/

/-! ## A253701.P3330676639916360730

`A253698(∑[n+3]+7)`
-/

namespace A253701.P3330676639916360730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253701.P3330676639916360730

/-! ## A253701.P7741672601917335118

`record[A253698(n+10)/A193923(n+6)]`
-/

namespace A253701.P7741672601917335118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253698 (n + 10) : ℚ) / (A193923 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253701.P7741672601917335118

/-!
# A253702: Number of (5+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253702, there is no canonical definition to state claims against.
-/

/-! ## A253702.P12372728246623575868

`A253698(A167499(n+3))`
-/

namespace A253702.P12372728246623575868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167499 (n + 3)).toNat

end

end A253702.P12372728246623575868

/-!
# A253703: Number of (6+1) X (n+1) 0..1 arrays with every 2 X 2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253703, there is no canonical definition to state claims against.
-/

/-! ## A253703.P6741094734589232876

`A253698(A167614(n+4)+3)`
-/

namespace A253703.P6741094734589232876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167614 (n + 4) + 3).toNat

end

end A253703.P6741094734589232876

/-!
# A253704: Number of (7+1)X(n+1) 0..1 arrays with every 2X2 subblock ne-sw antidiagonal difference unequal to its neighbors horizontally and nw+se diagonal sum unequal to its neighbors vertically.

The programs for A253704, there is no canonical definition to state claims against.
-/

/-! ## A253704.P1184223540990640529

`A253698(A167499(n+5)+2)`
-/

namespace A253704.P1184223540990640529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253698 (A167499 (n + 5) + 2).toNat

end

end A253704.P1184223540990640529

/-!
# A253705: Indices of primes in the 8th-order Fibonacci number sequence, A079262.

The programs for A253705, there is no canonical definition to state claims against.
-/

/-! ## A253705.P16677918973205880121

`A072204(A346490(n))+3`
-/

namespace A253705.P16677918973205880121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072204 (A346490 n).toNat + 3

end

end A253705.P16677918973205880121

/-!
# A253707: Numbers M(n) which are the number of terms in the sums of consecutive cubed integers equaling a squared integer, b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

The programs for A253707, the canonical program `A253707.P12961067894391411365` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253707 has offset 1).

The definition of A253707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253707.P8010326817517204171

`ogf((17+30x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A253707.P8010326817517204171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 30, 1] [1, -4, 6, -4, 1] n

end

end A253707.P8010326817517204171

namespace A253707

/-- `ogf((17+30x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P8010326817517204171.Spec : Prop :=
  ∀ n, P8010326817517204171.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P12961067894391411365

`(n+1)*(8*(n+1)*(n+2)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253707

/-- `(n+1)*(8*(n+1)*(n+2)+1)` -/
def P12961067894391411365.Spec : Prop :=
  ∀ n, (P12961067894391411365.a n : ℤ) = A253707 (n + 1)

theorem P12961067894391411365.correct : P12961067894391411365.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel]

end A253707

/-! ## A253707.P17455536940199331645

`(16*C(n+2, 2)+1)*(n+1)`
-/

namespace A253707.P17455536940199331645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (16 * Nat.choose (n + 2) 2 + 1) * (n + 1)

end

end A253707.P17455536940199331645

namespace A253707

/-- `(16*C(n+2, 2)+1)*(n+1)` -/
def P17455536940199331645.Spec : Prop :=
  ∀ n, (P17455536940199331645.a n : ℤ) = A253707 (n + 1)

theorem P17455536940199331645.correct : P17455536940199331645.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P17455536940199331645.a, A253707.P12961067894391411365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P2556397201195780873

`(n+2)*A081585(n+1)-1`
-/

namespace A253707.P2556397201195780873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A081585 (n + 1) - 1

end

end A253707.P2556397201195780873

namespace A253707

/-- `(n+2)*A081585(n+1)-1` -/
def P2556397201195780873.Spec : Prop :=
  ∀ n, P2556397201195780873.a n = A253707 (n + 1)

theorem P2556397201195780873.correct : P2556397201195780873.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P2556397201195780873.a, A253707.P12961067894391411365.a, A081585, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P13033494795893236916

`∑[∑[16*A016777(n)]]+1+n`
-/

namespace A253707.P13033494795893236916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A253707.P13033494795893236916

namespace A253707

/-- `∑[∑[16*A016777(n)]]+1+n` -/
def P13033494795893236916.Spec : Prop :=
  ∀ n, P13033494795893236916.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P17185769222392027728

`A178574(n+1)+A079588(n)`
-/

namespace A253707.P17185769222392027728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178574 (n + 1) + A079588 n

end

end A253707.P17185769222392027728

namespace A253707

/-- `A178574(n+1)+A079588(n)` -/
def P17185769222392027728.Spec : Prop :=
  ∀ n, P17185769222392027728.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P6122567228035836351

`A216110(n+1)-A207449(n+1)`
-/

namespace A253707.P6122567228035836351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216110 (n + 1) - A207449 (n + 1)

end

end A253707.P6122567228035836351

namespace A253707

/-- `A216110(n+1)-A207449(n+1)` -/
def P6122567228035836351.Spec : Prop :=
  ∀ n, P6122567228035836351.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P4529520216664840754

`2*A084367(n+1)-(n+1)`
-/

namespace A253707.P4529520216664840754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084367 (n + 1) - (n + 1 : ℤ)

end

end A253707.P4529520216664840754

namespace A253707

/-- `2*A084367(n+1)-(n+1)` -/
def P4529520216664840754.Spec : Prop :=
  ∀ n, P4529520216664840754.a n = A253707 (n + 1)

theorem P4529520216664840754.correct : P4529520216664840754.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P4529520216664840754.a, A253707.P12961067894391411365.a, A084367, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P16550762462244794126

`A102094(n+1)+A033951(n+1)`
-/

namespace A253707.P16550762462244794126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102094 (n + 1) + A033951 (n + 1)

end

end A253707.P16550762462244794126

namespace A253707

/-- `A102094(n+1)+A033951(n+1)` -/
def P16550762462244794126.Spec : Prop :=
  ∀ n, P16550762462244794126.a n = A253707 (n + 1)

theorem P16550762462244794126.correct : P16550762462244794126.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P16550762462244794126.a, A253707.P12961067894391411365.a, A033951, A033951.P3925852296356009015.a, A102094, A102094.P1850624615912936497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P5329910670208312619

`A316224(n+1)+A001105(n+1)`
-/

namespace A253707.P5329910670208312619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 (n + 1) + A001105 (n + 1)

end

end A253707.P5329910670208312619

namespace A253707

/-- `A316224(n+1)+A001105(n+1)` -/
def P5329910670208312619.Spec : Prop :=
  ∀ n, P5329910670208312619.a n = A253707 (n + 1)

theorem P5329910670208312619.correct : P5329910670208312619.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P5329910670208312619.a, A253707.P12961067894391411365.a, A001105, A001105.P6098599260439307493.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P6212413062915398490

`A002378(n+1)+A316224(n+1)+A002378(n)`
-/

namespace A253707.P6212413062915398490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + (A316224 (n + 1) + A002378 n)

end

end A253707.P6212413062915398490

namespace A253707

/-- `A002378(n+1)+A316224(n+1)+A002378(n)` -/
def P6212413062915398490.Spec : Prop :=
  ∀ n, P6212413062915398490.a n = A253707 (n + 1)

theorem P6212413062915398490.correct : P6212413062915398490.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P6212413062915398490.a, A253707.P12961067894391411365.a, A002378, A002378.P6342434596694243671.a, A316224, A316224.P13763735533833760107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P16820338357277656450

`∑[A126587(2*(n+1))]`
-/

namespace A253707.P16820338357277656450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253707.P16820338357277656450

namespace A253707

/-- `∑[A126587(2*(n+1))]` -/
def P16820338357277656450.Spec : Prop :=
  ∀ n, P16820338357277656450.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P5283239088270493172

`A114364(2*(n+1))-(n+1)`
-/

namespace A253707.P5283239088270493172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114364 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A253707.P5283239088270493172

namespace A253707

/-- `A114364(2*(n+1))-(n+1)` -/
def P5283239088270493172.Spec : Prop :=
  ∀ n, P5283239088270493172.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P7577167059899266176

`A213502(2*(n+1))`
-/

namespace A253707.P7577167059899266176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213502 (2 * (n + 1))

end

end A253707.P7577167059899266176

namespace A253707

/-- `A213502(2*(n+1))` -/
def P7577167059899266176.Spec : Prop :=
  ∀ n, P7577167059899266176.a n = A253707 (n + 1)

end A253707

/-! ## A253707.P2551111353594129222

`A087908(2*n+3)-n`
-/

namespace A253707.P2551111353594129222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087908 (2 * n + 3) - (n : ℤ)

end

end A253707.P2551111353594129222

namespace A253707

/-- `A087908(2*n+3)-n` -/
def P2551111353594129222.Spec : Prop :=
  ∀ n, P2551111353594129222.a n = A253707 (n + 1)

theorem P2551111353594129222.correct : P2551111353594129222.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P2551111353594129222.a, A253707.P12961067894391411365.a, A087908, A087908.P16773211899636336978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P9980010971544677115

`A152618(2*n+3)+n+1`
-/

namespace A253707.P9980010971544677115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152618 (2 * n + 3) + (n + 1 : ℤ)

end

end A253707.P9980010971544677115

namespace A253707

/-- `A152618(2*n+3)+n+1` -/
def P9980010971544677115.Spec : Prop :=
  ∀ n, P9980010971544677115.a n = A253707 (n + 1)

theorem P9980010971544677115.correct : P9980010971544677115.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P9980010971544677115.a, A253707.P12961067894391411365.a, A152618, A152618.P5109371313770539411.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P9122922076479505883

`A045991(2*n+3)-(n+1)`
-/

namespace A253707.P9122922076479505883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (2 * n + 3) - (n + 1 : ℤ)

end

end A253707.P9122922076479505883

namespace A253707

/-- `A045991(2*n+3)-(n+1)` -/
def P9122922076479505883.Spec : Prop :=
  ∀ n, P9122922076479505883.a n = A253707 (n + 1)

theorem P9122922076479505883.correct : P9122922076479505883.Spec := by
  intro n
  simp only [A253707, Nat.add_sub_cancel, A253707.P9122922076479505883.a, A253707.P12961067894391411365.a, A045991, A045991.P16915764248010155243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253707

/-! ## A253707.P16758003898726771302

`∑[A227017(4*(n+1))]`
-/

namespace A253707.P16758003898726771302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227017 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253707.P16758003898726771302

namespace A253707

/-- `∑[A227017(4*(n+1))]` -/
def P16758003898726771302.Spec : Prop :=
  ∀ n, P16758003898726771302.a n = A253707 (n + 1)

end A253707

/-!
# A253708: Numbers c(n) whose squares are equal to the sums of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

The programs for A253708, the canonical program `A253708.P12401933209442263964` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253708 has offset 1).

The definition of A253708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253708.P12401933209442263964

`(n+1)*(n+2)/2*(4*(2*(n+1)+1)^4-1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253708

/-- `(n+1)*(n+2)/2*(4*(2*(n+1)+1)^4-1)` -/
def P12401933209442263964.Spec : Prop :=
  ∀ n, P12401933209442263964.a n = (A253708 (n + 1) : ℚ)

end A253708

/-! ## A253708.P11935561659646244293

`sqrt(A253709(n+1))`
-/

namespace A253708.P11935561659646244293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253709 (n + 1) : ℝ)

end

end A253708.P11935561659646244293

namespace A253708

/-- `sqrt(A253709(n+1))` -/
def P11935561659646244293.Spec : Prop :=
  ∀ n, P11935561659646244293.a n = (A253708 (n + 1) : ℝ)

end A253708

/-! ## A253708.P8469064889741060914

`∑[A175114(n+1)-(A117216(n+1)+n+1)]`
-/

namespace A253708.P8469064889741060914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175114 (n + 1) - (A117216 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253708.P8469064889741060914

namespace A253708

/-- `∑[A175114(n+1)-(A117216(n+1)+n+1)]` -/
def P8469064889741060914.Spec : Prop :=
  ∀ n, P8469064889741060914.a n = A253708 (n + 1)

end A253708

/-! ## A253708.P16184990738564449713

`A175113(n+1)-(A175110(n+1)+∑[n+1])`
-/

namespace A253708.P16184990738564449713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175113 (n + 1) - (A175110 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A253708.P16184990738564449713

namespace A253708

/-- `A175113(n+1)-(A175110(n+1)+∑[n+1])` -/
def P16184990738564449713.Spec : Prop :=
  ∀ n, P16184990738564449713.a n = A253708 (n + 1)

end A253708

/-! ## A253708.P16105841590745285876

`A045943(n+1)+A033996(n+1)*A046092(A046092(n+1))`
-/

namespace A253708.P16105841590745285876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) + A033996 (n + 1) * A046092 (A046092 (n + 1)).toNat

end

end A253708.P16105841590745285876

namespace A253708

/-- `A045943(n+1)+A033996(n+1)*A046092(A046092(n+1))` -/
def P16105841590745285876.Spec : Prop :=
  ∀ n, P16105841590745285876.a n = A253708 (n + 1)

end A253708

/-!
# A253709: Integer squares c^2 that are equal to the sums of M (A253707) consecutive cubed integers equaling a squared integer, b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, for a first term b(n) being an odd squared integer (A016754).

The programs for A253709, the canonical program `A253709.P10111727888160554995` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253709 has offset 1).

The definition of A253709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253709.P10111727888160554995

`((n+1)*(n+2)/2*(4*(2*(n+1)+1)^4-1))²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253709

/-- `((n+1)*(n+2)/2*(4*(2*(n+1)+1)^4-1))²` -/
def P10111727888160554995.Spec : Prop :=
  ∀ n, P10111727888160554995.a n = (A253709 (n + 1) : ℚ)

end A253709

/-! ## A253709.P6694041628787771522

`A253708(1+n)^2`
-/

namespace A253709.P6694041628787771522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (1 + n) ^ 2

end

end A253709.P6694041628787771522

namespace A253709

/-- `A253708(1+n)^2` -/
def P6694041628787771522.Spec : Prop :=
  ∀ n, P6694041628787771522.a n = A253709 (n + 1)

end A253709

/-! ## A253709.P5524743468519961237

`A253708(n+1)*A253708(n+1)`
-/

namespace A253709.P5524743468519961237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (n + 1) * A253708 (n + 1)

end

end A253709.P5524743468519961237

namespace A253709

/-- `A253708(n+1)*A253708(n+1)` -/
def P5524743468519961237.Spec : Prop :=
  ∀ n, P5524743468519961237.a n = A253709 (n + 1)

end A253709

/-! ## A253709.P4102784716428273734

`record[A253708(A152271(n))²]`
-/

namespace A253709.P4102784716428273734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253709.P4102784716428273734

namespace A253709

/-- `record[A253708(A152271(n))²]` -/
def P4102784716428273734.Spec : Prop :=
  ∀ n, P4102784716428273734.a n = A253709 (n + 1)

end A253709

/-! ## A253709.P14157394272831301870

`record[A253708(A077610(n+1))²]`
-/

namespace A253709.P14157394272831301870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253708 (A077610 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253709.P14157394272831301870

namespace A253709

/-- `record[A253708(A077610(n+1))²]` -/
def P14157394272831301870.Spec : Prop :=
  ∀ n, P14157394272831301870.a n = A253709 (n + 1)

end A253709

/-!
# A253710: Second partial sums of tenth powers (A008454).

The programs for A253710, the canonical program `A253710.P12457132010750922041` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253710 has offset 1).

The definition of A253710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253710.P12457132010750922041

`∑[∑[(1+n)^10]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253710

/-- `∑[∑[(1+n)^10]]` -/
def P12457132010750922041.Spec : Prop :=
  ∀ n, (P12457132010750922041.a n : ℤ) = A253710 (n + 1)

theorem P12457132010750922041.correct : P12457132010750922041.Spec := by
  intro n
  simp only [A253710, Nat.add_sub_cancel]

end A253710

/-! ## A253710.P10356676866587665778

`∑[((n+1)*(n+1)²²)²]+a(n-1)` with `a(0)=1`
-/

namespace A253710.P10356676866587665778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253710.P10356676866587665778

namespace A253710

/-- `∑[((n+1)*(n+1)²²)²]+a(n-1)` -/
def P10356676866587665778.Spec : Prop :=
  ∀ n, (P10356676866587665778.a n : ℤ) = A253710 (n + 1)

end A253710

/-! ## A253710.P8100904858979225793

`A023002(1+n)+∑[A023002(n)]`
-/

namespace A253710.P8100904858979225793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (1 + n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253710.P8100904858979225793

namespace A253710

/-- `A023002(1+n)+∑[A023002(n)]` -/
def P8100904858979225793.Spec : Prop :=
  ∀ n, P8100904858979225793.a n = A253710 (n + 1)

end A253710

/-!
# A253711: Second partial sums of 11th powers (A008455).

The programs for A253711, the canonical program `A253711.P13624945427426041762` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253711 has offset 1).

The definition of A253711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253711.P13624945427426041762

`∑[∑[(1+n)^11]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253711

/-- `∑[∑[(1+n)^11]]` -/
def P13624945427426041762.Spec : Prop :=
  ∀ n, (P13624945427426041762.a n : ℤ) = A253711 (n + 1)

theorem P13624945427426041762.correct : P13624945427426041762.Spec := by
  intro n
  simp only [A253711, Nat.add_sub_cancel]

end A253711

/-! ## A253711.P16296803009213839549

`∑[∑[A258812(n+1)]]+C(n+2, 2)`
-/

namespace A253711.P16296803009213839549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258812 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 2) 2 : ℤ)

end

end A253711.P16296803009213839549

namespace A253711

/-- `∑[∑[A258812(n+1)]]+C(n+2, 2)` -/
def P16296803009213839549.Spec : Prop :=
  ∀ n, P16296803009213839549.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P17194719498744381417

`A123095(1+n)+a(n-1)` with `a(0)=1`
-/

namespace A253711.P17194719498744381417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123095 (1 + n) + a (n - 1)

end

end A253711.P17194719498744381417

namespace A253711

/-- `A123095(1+n)+a(n-1)` -/
def P17194719498744381417.Spec : Prop :=
  ∀ n, P17194719498744381417.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P11144152112722305484

`∑[A008455(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A253711.P11144152112722305484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253711.P11144152112722305484

namespace A253711

/-- `∑[A008455(n+1)]+a(n-1)` -/
def P11144152112722305484.Spec : Prop :=
  ∀ n, P11144152112722305484.a n = A253711 (n + 1)

end A253711

/-! ## A253711.P7353324244120207678

`A123095(n+1)+∑[A123095(n)]`
-/

namespace A253711.P7353324244120207678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123095 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253711.P7353324244120207678

namespace A253711

/-- `A123095(n+1)+∑[A123095(n)]` -/
def P7353324244120207678.Spec : Prop :=
  ∀ n, P7353324244120207678.a n = A253711 (n + 1)

end A253711

/-!
# A253712: Second partial sums of 12th powers (A008456).

The programs for A253712, the canonical program `A253712.P7472605157546734191` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253712 has offset 1).

The definition of A253712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253712.P7472605157546734191

`∑[∑[(1+n)^12]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253712

/-- `∑[∑[(1+n)^12]]` -/
def P7472605157546734191.Spec : Prop :=
  ∀ n, (P7472605157546734191.a n : ℤ) = A253712 (n + 1)

theorem P7472605157546734191.correct : P7472605157546734191.Spec := by
  intro n
  simp only [A253712, Nat.add_sub_cancel]

end A253712

/-! ## A253712.P11563316500116992470

`∑[((n+1)*(n+1)²)²²]+a(n-1)` with `a(0)=1`
-/

namespace A253712.P11563316500116992470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 1) ^ 2) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A253712.P11563316500116992470

namespace A253712

/-- `∑[((n+1)*(n+1)²)²²]+a(n-1)` -/
def P11563316500116992470.Spec : Prop :=
  ∀ n, (P11563316500116992470.a n : ℤ) = A253712 (n + 1)

end A253712

/-! ## A253712.P14898935729321196281

`∑[n+1]+∑[∑[A123868(n+1)]]`
-/

namespace A253712.P14898935729321196281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A253712.P14898935729321196281

namespace A253712

/-- `∑[n+1]+∑[∑[A123868(n+1)]]` -/
def P14898935729321196281.Spec : Prop :=
  ∀ n, P14898935729321196281.a n = A253712 (n + 1)

end A253712

/-! ## A253712.P5846702352486218948

`A123094(n+1)+∑[A123094(n)]`
-/

namespace A253712.P5846702352486218948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123094 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253712.P5846702352486218948

namespace A253712

/-- `A123094(n+1)+∑[A123094(n)]` -/
def P5846702352486218948.Spec : Prop :=
  ∀ n, P5846702352486218948.a n = A253712 (n + 1)

end A253712

/-! ## A253712.P10025280721036254034

`∑[∑[A106318((n+1)²)]]/2`
-/

namespace A253712.P10025280721036254034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A253712.P10025280721036254034

namespace A253712

/-- `∑[∑[A106318((n+1)²)]]/2` -/
def P10025280721036254034.Spec : Prop :=
  ∀ n, P10025280721036254034.a n = (A253712 (n + 1) : ℚ)

end A253712

/-! ## A253712.P857702762823784015

`∑[∑[A001014((n+1)²)]-1]+1+n`
-/

namespace A253712.P857702762823784015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A253712.P857702762823784015

namespace A253712

/-- `∑[∑[A001014((n+1)²)]-1]+1+n` -/
def P857702762823784015.Spec : Prop :=
  ∀ n, P857702762823784015.a n = A253712 (n + 1)

end A253712

/-!
# A253713: Second partial sums of 13th powers (A010801).

The programs for A253713, the canonical program `A253713.P3743118767915880080` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253713 has offset 1).

The definition of A253713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253713.P3743118767915880080

`∑[∑[(1+n)^13]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253713

/-- `∑[∑[(1+n)^13]]` -/
def P3743118767915880080.Spec : Prop :=
  ∀ n, (P3743118767915880080.a n : ℤ) = A253713 (n + 1)

theorem P3743118767915880080.correct : P3743118767915880080.Spec := by
  intro n
  simp only [A253713, Nat.add_sub_cancel]

end A253713

/-! ## A253713.P8340994126665851408

`A181134(n+1)+∑[A181134(n)]`
-/

namespace A253713.P8340994126665851408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181134 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253713.P8340994126665851408

namespace A253713

/-- `A181134(n+1)+∑[A181134(n)]` -/
def P8340994126665851408.Spec : Prop :=
  ∀ n, P8340994126665851408.a n = A253713 (n + 1)

end A253713

/-!
# A253715: Indices of centered heptagonal numbers (A069099) which are also hexagonal numbers (A000384).

The programs for A253715, there is no canonical definition to state claims against.
-/

/-! ## A253715.P17930912143472585687

`A253879(and(1, n)+2*n+1)`
-/

namespace A253715.P17930912143472585687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253879 (Nat.land 1 n + 2 * n + 1)

end

end A253715.P17930912143472585687

/-!
# A253716: Hexagonal numbers (A000384) which are also centered heptagonal numbers (A069099).

The programs for A253716, there is no canonical definition to state claims against.
-/

/-! ## A253716.P11215227090381430331

`A253880(comp[or(2, n)-1]+1)`
-/

namespace A253716.P11215227090381430331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A253716.P11215227090381430331

/-!
# A253717: Primes equal to their partial cyclical digital sum numbers.

The programs for A253717, there is no canonical definition to state claims against.
-/

/-! ## A253717.P4994211844686270644

`p?[A106039(n+1)]`
-/

namespace A253717.P4994211844686270644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253717.P4994211844686270644

/-! ## A253717.P16199030585537603046

`filter[A106039(n+2), A010051(#)]`
-/

namespace A253717.P16199030585537603046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A253717.P16199030585537603046

/-! ## A253717.P1668949181603319211

`∩[A000040(n+1), A106039(n+1)]`
-/

namespace A253717.P1668949181603319211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P1668949181603319211

/-! ## A253717.P18020659483989847632

`filter[A000040(n+1), A394690(#)]`
-/

namespace A253717.P18020659483989847632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A394690 (f1 j).toNat = 1) n)

end

end A253717.P18020659483989847632

/-! ## A253717.P3175506844856762198

`filter[A106039(n+3), A080339(#)]`
-/

namespace A253717.P3175506844856762198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A253717.P3175506844856762198

/-! ## A253717.P10237459579060931285

`eq[A257778(n)+1-n, A168036(n)]`
-/

namespace A253717.P10237459579060931285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n + 1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253717.P10237459579060931285

/-! ## A253717.P13104021773950108445

`∩[A000720(A006450(n+1)), A106039(n+1)]`
-/

namespace A253717.P13104021773950108445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006450 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P13104021773950108445

/-! ## A253717.P4323918693446077250

`∩[A106039(n+1), A240960(n+1)]`
-/

namespace A253717.P4323918693446077250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253717.P4323918693446077250

/-!
# A253718: Number h such that (h,0) is n steps from (0,0), where steps are as follows: (x,y)->(x-r, y) if r > 0, and (x,y)->(y, r/3) otherwise, where r = x mod 3.

The programs for A253718, the canonical program `A253718.P7304962258111176939` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253718 has offset 0).

The definition of A253718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253718.P7304962258111176939

`a(A002264(n))+n²%3+2` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A253718

/-- `a(A002264(n))+n²%3+2` -/
def P7304962258111176939.Spec : Prop :=
  ∀ n, (P7304962258111176939.a n : ℤ) = A253718 n

theorem P7304962258111176939.correct : P7304962258111176939.Spec := by
  intro n
  simp only [A253718]

end A253718

/-! ## A253718.P12892874489591055823

`A374054(A374363(n))`
-/

namespace A253718.P12892874489591055823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374054 (A374363 n).toNat

end

end A253718.P12892874489591055823

namespace A253718

/-- `A374054(A374363(n))` -/
def P12892874489591055823.Spec : Prop :=
  ∀ n, P12892874489591055823.a n = A253718 n

end A253718

/-! ## A253718.P10309706694779628508

`A131294(n)+a(A002264(n))` with `a(0)=0`
-/

namespace A253718.P10309706694779628508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131294 n + a (A002264 n).toNat

end

end A253718.P10309706694779628508

namespace A253718

/-- `A131294(n)+a(A002264(n))` -/
def P10309706694779628508.Spec : Prop :=
  ∀ n, P10309706694779628508.a n = A253718 n

end A253718

/-! ## A253718.P16123323955675461304

`∑{digits}[A007089(n), A000005(A207488(#+1))]-2`
-/

namespace A253718.P16123323955675461304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000005 (A207488 (x + 1)).toNat).sum - 2

end

end A253718.P16123323955675461304

namespace A253718

/-- `∑{digits}[A007089(n), A000005(A207488(#+1))]-2` -/
def P16123323955675461304.Spec : Prop :=
  ∀ n, P16123323955675461304.a n = A253718 n

end A253718

/-! ## A253718.P15625871504517636421

`A253281(∑[n]+1)`
-/

namespace A253718.P15625871504517636421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253281 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253718.P15625871504517636421

namespace A253718

/-- `A253281(∑[n]+1)` -/
def P15625871504517636421.Spec : Prop :=
  ∀ n, P15625871504517636421.a n = A253718 n

end A253718

/-!
# A253720: a(n) = length of row n in A253676 and A254068, assuming the 3x+1 (or Collatz) conjecture.

The programs for A253720, there is no canonical definition to state claims against.
-/

/-! ## A253720.P8628605915924356640

`A160541(8*n+2)`
-/

namespace A253720.P8628605915924356640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (8 * n + 2)

end

end A253720.P8628605915924356640

/-! ## A253720.P13066485963725769309

`A213181(32*n+8)`
-/

namespace A253720.P13066485963725769309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (32 * n + 8)

end

end A253720.P13066485963725769309

/-! ## A253720.P8292266603689565578

`A346965(4*n+1)+1`
-/

namespace A253720.P8292266603689565578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (4 * n + 1) + 1

end

end A253720.P8292266603689565578

/-! ## A253720.P7371346203510760230

`A160541(A016813(n))+1`
-/

namespace A253720.P7371346203510760230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A016813 n).toNat + 1

end

end A253720.P7371346203510760230

/-! ## A253720.P10489360951198013450

`A213181(A017089(n))+1`
-/

namespace A253720.P10489360951198013450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A017089 n).toNat + 1

end

end A253720.P10489360951198013450

/-! ## A253720.P16195392211851365311

`A160541(A008586(n)+1)+1`
-/

namespace A253720.P16195392211851365311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A008586 n + 1).toNat + 1

end

end A253720.P16195392211851365311

/-! ## A253720.P2191534427150161814

`A213181(A008574(n)+1)+1`
-/

namespace A253720.P2191534427150161814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213181 (A008574 n + 1).toNat + 1

end

end A253720.P2191534427150161814

/-! ## A253720.P11466845992452119891

`A160541(A017089(n)/2)+1`
-/

namespace A253720.P11466845992452119891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2)).toNat + 1

end

end A253720.P11466845992452119891

/-!
# A253721: Triprimes modulo 10.

The programs for A253721, the canonical program `A253721.P2198442329802579597` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253721 has offset 1).

The definition of A253721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253721.P2198442329802579597

`A010879(A014612(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A253721

/-- `A010879(A014612(n+1))` -/
def P2198442329802579597.Spec : Prop :=
  ∀ n, P2198442329802579597.a n = A253721 (n + 1)

theorem P2198442329802579597.correct : P2198442329802579597.Spec := by
  intro n
  simp only [A253721, Nat.add_sub_cancel]

end A253721

/-! ## A253721.P5466204755484111129

`A014612(1+n)%10`
-/

namespace A253721.P5466204755484111129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (1 + n)) 10

end

end A253721.P5466204755484111129

namespace A253721

/-- `A014612(1+n)%10` -/
def P5466204755484111129.Spec : Prop :=
  ∀ n, P5466204755484111129.a n = A253721 (n + 1)

end A253721

/-! ## A253721.P3441707822713792830

`(eq[3, A001222(n+1)]+1)%10`
-/

namespace A253721.P3441707822713792830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A253721.P3441707822713792830

namespace A253721

/-- `(eq[3, A001222(n+1)]+1)%10` -/
def P3441707822713792830.Spec : Prop :=
  ∀ n, (P3441707822713792830.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P8853827731703779132

`(A162361(n+1)*A163173(n+1))%10`
-/

namespace A253721.P8853827731703779132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162361 (n + 1) * A163173 (n + 1)) 10

end

end A253721.P8853827731703779132

namespace A253721

/-- `(A162361(n+1)*A163173(n+1))%10` -/
def P8853827731703779132.Spec : Prop :=
  ∀ n, P8853827731703779132.a n = A253721 (n + 1)

end A253721

/-! ## A253721.P911911643288599614

`Δ[A110209(n)]%10`
-/

namespace A253721.P911911643288599614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A253721.P911911643288599614

namespace A253721

/-- `Δ[A110209(n)]%10` -/
def P911911643288599614.Spec : Prop :=
  ∀ n, P911911643288599614.a n = A253721 (n + 1)

end A253721

/-! ## A253721.P1777596897903048581

`eq[3, A001222(A028310(n))]%10`
-/

namespace A253721.P1777596897903048581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P1777596897903048581

namespace A253721

/-- `eq[3, A001222(A028310(n))]%10` -/
def P1777596897903048581.Spec : Prop :=
  ∀ n, (P1777596897903048581.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P5390043838982323462

`eq[4, A001222(A004277(n))]%10`
-/

namespace A253721.P5390043838982323462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P5390043838982323462

namespace A253721

/-- `eq[4, A001222(A004277(n))]%10` -/
def P5390043838982323462.Spec : Prop :=
  ∀ n, (P5390043838982323462.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P3423567177395999993

`eq[4, A001222(A008486(n))]%10`
-/

namespace A253721.P3423567177395999993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P3423567177395999993

namespace A253721

/-- `eq[4, A001222(A008486(n))]%10` -/
def P3423567177395999993.Spec : Prop :=
  ∀ n, (P3423567177395999993.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P5731548510334724250

`eq[4, A001222(A008706(n))]%10`
-/

namespace A253721.P5731548510334724250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A253721.P5731548510334724250

namespace A253721

/-- `eq[4, A001222(A008706(n))]%10` -/
def P5731548510334724250.Spec : Prop :=
  ∀ n, (P5731548510334724250.a n : ℤ) = A253721 (n + 1)

end A253721

/-! ## A253721.P11258355063170272638

`A207790(8*n+5)%10`
-/

namespace A253721.P11258355063170272638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207790 (8 * n + 5)) 10

end

end A253721.P11258355063170272638

namespace A253721

/-- `A207790(8*n+5)%10` -/
def P11258355063170272638.Spec : Prop :=
  ∀ n, P11258355063170272638.a n = A253721 (n + 1)

end A253721

/-!
# A253723: Length of shortest addition chain corresponding to maximum of A003313(k)/log_2(k) in interval 2^n < k < 2^(n+1).

The programs for A253723, there is no canonical definition to state claims against.
-/

/-! ## A253723.P128579121807998304

`comp[floor(n²/2)-ceil(n/3)]`
-/

namespace A253723.P128579121807998304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋ - ⌈(n : ℚ) / 3⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A253723.P128579121807998304

/-! ## A253723.P9364856797394686786

`comp[∑[n+2]-C(gcd(4, n), n)]+2`
-/

namespace A253723.P9364856797394686786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (Nat.gcd 4 n) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A253723.P9364856797394686786

/-! ## A253723.P18410989910389158391

`comp[C(n, 2)-char[C(n, 4)+n+2]]+1`
-/

namespace A253723.P18410989910389158391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 + (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253723.P18410989910389158391

/-! ## A253723.P6807239140879956558

`ceil(sqrt(A324978(n+1))+n)`
-/

namespace A253723.P6807239140879956558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A324978 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A253723.P6807239140879956558

/-! ## A253723.P16283060046216608920

`round(sqrt(A213716(n+1))+n)`
-/

namespace A253723.P16283060046216608920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A213716 (n + 1) : ℝ) + (n : ℝ))

end

end A253723.P16283060046216608920

/-!
# A253724: Numbers c(n) whose squares are equal to the sums of a number M(n) of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, starting at b(n) (A002593) for M(n) being twice a squared integer (A001105).

The programs for A253724, the canonical program `A253724.P7421970610221036065` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253724 has offset 2).

The definition of A253724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253724.P7421970610221036065

`(n+2)^3*(4*(n+2)^4-1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253724

/-- `(n+2)^3*(4*(n+2)^4-1)` -/
def P7421970610221036065.Spec : Prop :=
  ∀ n, P7421970610221036065.a n = A253724 (n + 2)

theorem P7421970610221036065.correct : P7421970610221036065.Spec := by
  intro n
  simp only [A253724, Nat.add_sub_cancel]

end A253724

/-! ## A253724.P5875825152316841678

`sqrt(A253725(n+2))`
-/

namespace A253724.P5875825152316841678
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A253725 (n + 2) : ℝ)

end

end A253724.P5875825152316841678

namespace A253724

/-- `sqrt(A253725(n+2))` -/
def P5875825152316841678.Spec : Prop :=
  ∀ n, P5875825152316841678.a n = (A253724 (n + 2) : ℝ)

end A253724

/-! ## A253724.P2283720812331015895

`A006011(2*(n+2)²)/(n+2)`
-/

namespace A253724.P2283720812331015895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006011 (2 * (n + 2) ^ 2) : ℚ) / (n + 2 : ℚ)

end

end A253724.P2283720812331015895

namespace A253724

/-- `A006011(2*(n+2)²)/(n+2)` -/
def P2283720812331015895.Spec : Prop :=
  ∀ n, P2283720812331015895.a n = (A253724 (n + 2) : ℚ)

end A253724

/-! ## A253724.P17623392142208160395

`A033991(A000583(n+2))/(n+2)`
-/

namespace A253724.P17623392142208160395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033991 (A000583 (n + 2)).toNat : ℚ) / (n + 2 : ℚ)

end

end A253724.P17623392142208160395

namespace A253724

/-- `A033991(A000583(n+2))/(n+2)` -/
def P17623392142208160395.Spec : Prop :=
  ∀ n, P17623392142208160395.a n = (A253724 (n + 2) : ℚ)

end A253724

/-!
# A253725: Integer squares c^2 that are equal to the sums of a number M(n) of consecutive cubed integers b^3 + (b+1)^3 + ... + (b+M-1)^3 = c^2, starting at b(n) (A002593) for M(n) being twice a squared integer (A001105).

The programs for A253725, the canonical program `A253725.P7027883235205078019` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253725 has offset 2).

The definition of A253725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253725.P7027883235205078019

`((n+2)^3*(4*(n+2)^4-1))²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253725

/-- `((n+2)^3*(4*(n+2)^4-1))²` -/
def P7027883235205078019.Spec : Prop :=
  ∀ n, P7027883235205078019.a n = A253725 (n + 2)

theorem P7027883235205078019.correct : P7027883235205078019.Spec := by
  intro n
  simp only [A253725, Nat.add_sub_cancel]

end A253725

/-! ## A253725.P1286785982268927316

`A253724(2+n)^2`
-/

namespace A253725.P1286785982268927316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253724 (2 + n) ^ 2

end

end A253725.P1286785982268927316

namespace A253725

/-- `A253724(2+n)^2` -/
def P1286785982268927316.Spec : Prop :=
  ∀ n, P1286785982268927316.a n = A253725 (n + 2)

end A253725

/-! ## A253725.P13179490473047891364

`A253724(n+2)*A253724(n+2)`
-/

namespace A253725.P13179490473047891364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253724 (n + 2) * A253724 (n + 2)

end

end A253725.P13179490473047891364

namespace A253725

/-- `A253724(n+2)*A253724(n+2)` -/
def P13179490473047891364.Spec : Prop :=
  ∀ n, P13179490473047891364.a n = A253725 (n + 2)

theorem P13179490473047891364.correct : P13179490473047891364.Spec := by
  intro n
  simp only [A253725, Nat.add_sub_cancel, A253725.P13179490473047891364.a, A253725.P7027883235205078019.a, A253724, A253724.P7421970610221036065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253725

/-!
# A253726: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253726, there is no canonical definition to state claims against.
-/

/-! ## A253726.P9689530271027621641

`A253731(∑[n+1]+2)`
-/

namespace A253726.P9689530271027621641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253726.P9689530271027621641

/-! ## A253726.P7650150714886700796

`record[A253731(abs(A201163(n)))]`
-/

namespace A253726.P7650150714886700796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253726.P7650150714886700796

/-! ## A253726.P10094350955654305665

`record[A253731(Δ[A003453(n+5)])]`
-/

namespace A253726.P10094350955654305665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253726.P10094350955654305665

/-! ## A253726.P1373098523060443191

`record[root(A253731(n+2), A144018(n+2))]`
-/

namespace A253726.P1373098523060443191
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253731 (n + 2) : ℝ) ^ (1 / (A144018 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253726.P1373098523060443191

/-!
# A253727: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253727, there is no canonical definition to state claims against.
-/

/-! ## A253727.P1902700742594415292

`A253731(∑[n+2]+4)`
-/

namespace A253727.P1902700742594415292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253727.P1902700742594415292

/-!
# A253728: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253728, there is no canonical definition to state claims against.
-/

/-! ## A253728.P2765175291745997267

`A253731(A052905(n)+9)`
-/

namespace A253728.P2765175291745997267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A052905 n + 9).toNat

end

end A253728.P2765175291745997267

/-! ## A253728.P16966820010151167676

`A253731(A141214(n+1))`
-/

namespace A253728.P16966820010151167676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A141214 (n + 1)).toNat

end

end A253728.P16966820010151167676

/-!
# A253729: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253729, there is no canonical definition to state claims against.
-/

/-! ## A253729.P3472485391877010785

`A253731(eq[4, A002262(n)]+1)`
-/

namespace A253729.P3472485391877010785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253729.P3472485391877010785

/-! ## A253729.P15614242262410432094

`A253731(Δ[A264443(n)])`
-/

namespace A253729.P15614242262410432094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (f1 (n + 1) - f1 n).toNat

end

end A253729.P15614242262410432094

/-!
# A253730: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock diagonal maximum minus antidiagonal maximum unequal to its neighbors horizontally and vertically.

The programs for A253730, there is no canonical definition to state claims against.
-/

/-! ## A253730.P5844131655766095332

`A253731(eq[5, A002262(n)]+1)`
-/

namespace A253730.P5844131655766095332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A253730.P5844131655766095332

/-! ## A253730.P12685897029140136155

`A253731(A374007(n+1))`
-/

namespace A253730.P12685897029140136155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253731 (A374007 (n + 1)).toNat

end

end A253730.P12685897029140136155

/-!
# A253732: Number of (n+2)X(n+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253732, there is no canonical definition to state claims against.
-/

/-! ## A253732.P6752227434826396970

`A253740(∑[4*n]+1)`
-/

namespace A253732.P6752227434826396970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253732.P6752227434826396970

/-! ## A253732.P12282248354712903812

`record[gcd(A003987(n), A253740(n+1))]`
-/

namespace A253732.P12282248354712903812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253740 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253732.P12282248354712903812

/-!
# A253733: Number of (n+2)X(1+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253733, there is no canonical definition to state claims against.
-/

/-! ## A253733.P7969374720669326634

`A253740(∑[n]+1)`
-/

namespace A253733.P7969374720669326634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253733.P7969374720669326634

/-! ## A253733.P12402450995925014924

`record[A253740(n+1)/A007318(n)]`
-/

namespace A253733.P12402450995925014924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253733.P12402450995925014924

/-! ## A253733.P13514774964166873574

`record[A253740(n+1)/A013613(n)]`
-/

namespace A253733.P13514774964166873574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 1) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253733.P13514774964166873574

/-! ## A253733.P11000793390219167510

`record[A253740(n+1)/A303696(n)]`
-/

namespace A253733.P11000793390219167510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 1) : ℚ) / (A303696 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253733.P11000793390219167510

/-!
# A253734: Number of (n+2)X(2+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253734, there is no canonical definition to state claims against.
-/

/-! ## A253734.P1636276710378008893

`A253740(∑[n+1]+2)`
-/

namespace A253734.P1636276710378008893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253734.P1636276710378008893

/-! ## A253734.P2853364330609236594

`record[A253740(A286158(n+1)+2)]`
-/

namespace A253734.P2853364330609236594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P2853364330609236594

/-! ## A253734.P12584420044505712504

`record[A253740(n+2)/A013613(n)]`
-/

namespace A253734.P12584420044505712504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 2) : ℚ) / (A013613 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P12584420044505712504

/-! ## A253734.P13507478691751232794

`record[root(A253740(n+2), A303696(n))]`
-/

namespace A253734.P13507478691751232794
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253740 (n + 2) : ℝ) ^ (1 / (A303696 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P13507478691751232794

/-! ## A253734.P348772442199707873

`record[A253740(abs(A201163(n)))]`
-/

namespace A253734.P348772442199707873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253734.P348772442199707873

/-!
# A253735: Number of (n+2)X(3+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253735, there is no canonical definition to state claims against.
-/

/-! ## A253735.P7707997196152951852

`A253740(∑[n+2]+4)`
-/

namespace A253735.P7707997196152951852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253735.P7707997196152951852

/-!
# A253736: Number of (n+2) X (4+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253736, there is no canonical definition to state claims against.
-/

/-! ## A253736.P10838945943071712642

`A253740(A141214(n)+7)`
-/

namespace A253736.P10838945943071712642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A141214 n + 7).toNat

end

end A253736.P10838945943071712642

/-! ## A253736.P7086242610412508902

`A253740(A141214(n+1))`
-/

namespace A253736.P7086242610412508902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A141214 (n + 1)).toNat

end

end A253736.P7086242610412508902

/-!
# A253737: Number of (n+2) X (5+2) 0..1 arrays with every 2 X 2 and 3 X 3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253737, there is no canonical definition to state claims against.
-/

/-! ## A253737.P16295985794675661594

`A253740(A167499(n+3))`
-/

namespace A253737.P16295985794675661594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A167499 (n + 3)).toNat

end

end A253737.P16295985794675661594

/-! ## A253737.P14598495215949268397

`A253740(A374005(n+1))`
-/

namespace A253737.P14598495215949268397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A374005 (n + 1)).toNat

end

end A253737.P14598495215949268397

/-!
# A253738: Number of (n+2)X(6+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253738, there is no canonical definition to state claims against.
-/

/-! ## A253738.P9361916210360621093

`A253740(A166136(n+4))`
-/

namespace A253738.P9361916210360621093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A166136 (n + 4)).toNat

end

end A253738.P9361916210360621093

/-! ## A253738.P16640818120006802448

`A253740(A374007(n+1))`
-/

namespace A253738.P16640818120006802448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A374007 (n + 1)).toNat

end

end A253738.P16640818120006802448

/-!
# A253739: Number of (n+2)X(7+2) 0..1 arrays with every 2X2 and 3X3 subblock diagonal sum minus antidiagonal sum unequal to its neighbors horizontally and vertically.

The programs for A253739, there is no canonical definition to state claims against.
-/

/-! ## A253739.P8573499571536788956

`A253740(A167499(n+5)+2)`
-/

namespace A253739.P8573499571536788956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A167499 (n + 5) + 2).toNat

end

end A253739.P8573499571536788956

/-! ## A253739.P16777938590499108595

`A253740(A374008(n+1))`
-/

namespace A253739.P16777938590499108595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253740 (A374008 (n + 1)).toNat

end

end A253739.P16777938590499108595

/-!
# A253741: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253741, there is no canonical definition to state claims against.
-/

/-! ## A253741.P2591281717674075826

`A253749((n+1)²+n²)`
-/

namespace A253741.P2591281717674075826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 ((n + 1) ^ 2 + n ^ 2)

end

end A253741.P2591281717674075826

/-! ## A253741.P14169502094886255668

`record[gcd(A114327(n), A253749(n+1))]`
-/

namespace A253741.P14169502094886255668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253741.P14169502094886255668

/-!
# A253742: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253742, the canonical program `A253742.P4463119957109084300` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253742 has offset 1).

The definition of A253742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253742.P4463119957109084300

`9*Δ[A112502(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253742

/-- `9*Δ[A112502(n)]` -/
def P4463119957109084300.Spec : Prop :=
  ∀ n, P4463119957109084300.a n = A253742 (n + 1)

theorem P4463119957109084300.correct : P4463119957109084300.Spec := by
  intro n
  simp only [A253742, Nat.add_sub_cancel]

end A253742

/-! ## A253742.P10039962698301871448

`9*A222993(1+n)`
-/

namespace A253742.P10039962698301871448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A222993 (1 + n)

end

end A253742.P10039962698301871448

namespace A253742

/-- `9*A222993(1+n)` -/
def P10039962698301871448.Spec : Prop :=
  ∀ n, P10039962698301871448.a n = A253742 (n + 1)

end A253742

/-! ## A253742.P9850362320656053797

`Δ[9*∑[A222993(A028310(n))]]`
-/

namespace A253742.P9850362320656053797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222993 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253742.P9850362320656053797

namespace A253742

/-- `Δ[9*∑[A222993(A028310(n))]]` -/
def P9850362320656053797.Spec : Prop :=
  ∀ n, P9850362320656053797.a n = A253742 (n + 1)

end A253742

/-! ## A253742.P4926241875325990257

`ogf((81-279x+459x^2-360x^3+108x^4)/(1-9x+31x^2-51x^3+40x^4-12x^5))`
-/

namespace A253742.P4926241875325990257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [81, -279, 459, -360, 108] [1, -9, 31, -51, 40, -12] n

end

end A253742.P4926241875325990257

namespace A253742

/-- `ogf((81-279x+459x^2-360x^3+108x^4)/(1-9x+31x^2-51x^3+40x^4-12x^5))` -/
def P4926241875325990257.Spec : Prop :=
  ∀ n, P4926241875325990257.a n = A253742 (n + 1)

end A253742

/-! ## A253742.P10921545933061952569

`A253749(∑[n]+1)`
-/

namespace A253742.P10921545933061952569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253742.P10921545933061952569

namespace A253742

/-- `A253749(∑[n]+1)` -/
def P10921545933061952569.Spec : Prop :=
  ∀ n, P10921545933061952569.a n = A253742 (n + 1)

end A253742

/-!
# A253743: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253743, there is no canonical definition to state claims against.
-/

/-! ## A253743.P15458046658845791842

`A253749(∑[n+2])`
-/

namespace A253743.P15458046658845791842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253743.P15458046658845791842

/-! ## A253743.P2706285167111274922

`record[A253749(A000096(A152271(n)))]`
-/

namespace A253743.P2706285167111274922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253743.P2706285167111274922

/-! ## A253743.P3911800287490437567

`record[A253749(A000096(A003963(n+1)))]`
-/

namespace A253743.P3911800287490437567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253743.P3911800287490437567

/-! ## A253743.P12007765843191300578

`record[A253749(A000096(A004736(n+1)))]`
-/

namespace A253743.P12007765843191300578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253743.P12007765843191300578

/-!
# A253744: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253744, there is no canonical definition to state claims against.
-/

/-! ## A253744.P6275686282830836431

`A253749(∑[n+3]+1)`
-/

namespace A253744.P6275686282830836431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253744.P6275686282830836431

/-! ## A253744.P5981357013611837941

`record[A253749(A198464(n+1))]`
-/

namespace A253744.P5981357013611837941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253744.P5981357013611837941

/-!
# A253745: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253745, there is no canonical definition to state claims against.
-/

/-! ## A253745.P15418980065778824405

`A253749(A141214(n+1))`
-/

namespace A253745.P15418980065778824405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A141214 (n + 1)).toNat

end

end A253745.P15418980065778824405

/-!
# A253746: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253746, there is no canonical definition to state claims against.
-/

/-! ## A253746.P4360206438594054746

`A253749(A046691(n+3))`
-/

namespace A253746.P4360206438594054746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A046691 (n + 3)).toNat

end

end A253746.P4360206438594054746

/-!
# A253747: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253747, there is no canonical definition to state claims against.
-/

/-! ## A253747.P10946450094621437438

`A253749(A052905(n+3))`
-/

namespace A253747.P10946450094621437438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A052905 (n + 3)).toNat

end

end A253747.P10946450094621437438

/-!
# A253748: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253748, there is no canonical definition to state claims against.
-/

/-! ## A253748.P12972638233777025548

`A253749(A055999(n+4))`
-/

namespace A253748.P12972638233777025548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A055999 (n + 4)).toNat

end

end A253748.P12972638233777025548

/-!
# A253750: Number of (2+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253750, there is no canonical definition to state claims against.
-/

/-! ## A253750.P601145773678129492

`A253749(∑[n+1]+2)`
-/

namespace A253750.P601145773678129492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253750.P601145773678129492

/-! ## A253750.P2303123562054474919

`record[A253749(A008795(n)+2)]`
-/

namespace A253750.P2303123562054474919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253750.P2303123562054474919

/-! ## A253750.P14198906343800528173

`record[A253749(A133263(abs(1-n)))]`
-/

namespace A253750.P14198906343800528173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253750.P14198906343800528173

/-!
# A253751: Number of (3+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253751, there is no canonical definition to state claims against.
-/

/-! ## A253751.P12662121260175780035

`A253749(∑[n+2]+4)`
-/

namespace A253751.P12662121260175780035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253751.P12662121260175780035

/-!
# A253752: Number of (4+1) X (n+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253752, there is no canonical definition to state claims against.
-/

/-! ## A253752.P10667585748509001806

`A253749(A141214(n)+7)`
-/

namespace A253752.P10667585748509001806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A141214 n + 7).toNat

end

end A253752.P10667585748509001806

/-!
# A253753: Number of (5+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253753, there is no canonical definition to state claims against.
-/

/-! ## A253753.P1746192544310118748

`A253749(A167499(n+3))`
-/

namespace A253753.P1746192544310118748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167499 (n + 3)).toNat

end

end A253753.P1746192544310118748

/-!
# A253754: Number of (6+1) X (n+1) 0..2 arrays with every 2 X 2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253754, there is no canonical definition to state claims against.
-/

/-! ## A253754.P18181685483681160288

`A253749(A056115(n)+21)`
-/

namespace A253754.P18181685483681160288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A056115 n + 21).toNat

end

end A253754.P18181685483681160288

/-!
# A253755: Number of (7+1)X(n+1) 0..2 arrays with every 2X2 subblock ne-sw antidiagonal difference nondecreasing horizontally and nw+se diagonal sum nondecreasing vertically.

The programs for A253755, there is no canonical definition to state claims against.
-/

/-! ## A253755.P861288268159746711

`A253749(A167487(n+5))`
-/

namespace A253755.P861288268159746711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253749 (A167487 (n + 5)).toNat

end

end A253755.P861288268159746711

/-!
# A253756: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253756, there is no canonical definition to state claims against.
-/

/-! ## A253756.P16159546789075618220

`A253764((n+1)²+n²)`
-/

namespace A253756.P16159546789075618220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 ((n + 1) ^ 2 + n ^ 2)

end

end A253756.P16159546789075618220

/-!
# A253757: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253757, there is no canonical definition to state claims against.
-/

/-! ## A253757.P12621109987510886881

`A253961(∑[n]+1)`
-/

namespace A253757.P12621109987510886881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253757.P12621109987510886881

/-! ## A253757.P2678123637766338149

`record[A010054(n)*A253961(n+1)]`
-/

namespace A253757.P2678123637766338149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253757.P2678123637766338149

/-! ## A253757.P14305379656158690681

`record[A253961(n+1)/A046802(n)]`
-/

namespace A253757.P14305379656158690681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253961 (n + 1) : ℚ) / (A046802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253757.P14305379656158690681

/-! ## A253757.P391277789476118925

`record[root(A253961(n+1), A071945(n))]`
-/

namespace A253757.P391277789476118925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253961 (n + 1) : ℝ) ^ (1 / (A071945 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253757.P391277789476118925

/-! ## A253757.P11867145740349419142

`A253764(∑[n]+1)`
-/

namespace A253757.P11867145740349419142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253757.P11867145740349419142

/-!
# A253758: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253758, there is no canonical definition to state claims against.
-/

/-! ## A253758.P8558922682934361759

`A253764(∑[n+1]+2)`
-/

namespace A253758.P8558922682934361759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253758.P8558922682934361759

/-! ## A253758.P16827963022217830331

`record[root(A253764(n+2), A178301(n))]`
-/

namespace A253758.P16827963022217830331
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253764 (n + 2) : ℝ) ^ (1 / (A178301 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253758.P16827963022217830331

/-! ## A253758.P5071197989516820756

`record[A253764(Δ[A003453(n+5)])]`
-/

namespace A253758.P5071197989516820756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253758.P5071197989516820756

/-! ## A253758.P15595618706353217778

`record[A253764(A133263(∑{e}[n+1, #]+1))]`
-/

namespace A253758.P15595618706353217778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253758.P15595618706353217778

/-!
# A253759: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253759, there is no canonical definition to state claims against.
-/

/-! ## A253759.P1982098270838040656

`A253764(∑[n+2]+4)`
-/

namespace A253759.P1982098270838040656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253759.P1982098270838040656

/-!
# A253760: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253760, there is no canonical definition to state claims against.
-/

/-! ## A253760.P5948405103353099652

`A253764(∑[n+3]+7)`
-/

namespace A253760.P5948405103353099652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253760.P5948405103353099652

/-!
# A253761: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253761, there is no canonical definition to state claims against.
-/

/-! ## A253761.P18199169845969164877

`A253764(A374005(n+1))`
-/

namespace A253761.P18199169845969164877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A374005 (n + 1)).toNat

end

end A253761.P18199169845969164877

/-!
# A253762: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253762, there is no canonical definition to state claims against.
-/

/-! ## A253762.P15825622145497519672

`A253764(A374007(n+1))`
-/

namespace A253762.P15825622145497519672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A374007 (n + 1)).toNat

end

end A253762.P15825622145497519672

/-!
# A253763: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal median minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253763, there is no canonical definition to state claims against.
-/

/-! ## A253763.P17362180546897967509

`A253764(A374008(n+1))`
-/

namespace A253763.P17362180546897967509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253764 (A374008 (n + 1)).toNat

end

end A253763.P17362180546897967509

/-!
# A253765: Bisection of A098550.

The programs for A253765, there is no canonical definition to state claims against.
-/

/-! ## A253765.P14671125601837312271

`A098550(2*n+1)`
-/

namespace A253765.P14671125601837312271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (2 * n + 1)

end

end A253765.P14671125601837312271

/-! ## A253765.P116106928540683223

`A098550(record[xor(1, n)])`
-/

namespace A253765.P116106928540683223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A253765.P116106928540683223

/-! ## A253765.P17063152749100612909

`A098552(A098551(Δ[n²]))`
-/

namespace A253765.P17063152749100612909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A253765.P17063152749100612909

/-! ## A253765.P17128068736368008481

`A098551(A098552(2*n+1))`
-/

namespace A253765.P17128068736368008481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 (2 * n + 1)).toNat

end

end A253765.P17128068736368008481

/-!
# A253766: Bisection of A098550.

The programs for A253766, there is no canonical definition to state claims against.
-/

/-! ## A253766.P5502465588065368703

`A098550(2*(n+1))`
-/

namespace A253766.P5502465588065368703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (2 * (n + 1))

end

end A253766.P5502465588065368703

/-! ## A253766.P494824818965770117

`A098552(A098551(2*(n+1)))`
-/

namespace A253766.P494824818965770117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (2 * (n + 1))).toNat

end

end A253766.P494824818965770117

/-! ## A253766.P7328818470196204260

`A098551(A098552(n+2+n))`
-/

namespace A253766.P7328818470196204260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 (n + 2 + n)).toNat

end

end A253766.P7328818470196204260

/-! ## A253766.P13021789005970055329

`A253768(2*(n+1))-A253768(2*n+1)`
-/

namespace A253766.P13021789005970055329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253768 (2 * (n + 1)) - A253768 (2 * n + 1)

end

end A253766.P13021789005970055329

/-!
# A253767: Partial sums of A247666.

The programs for A253767, there is no canonical definition to state claims against.
-/

/-! ## A253767.P14249941075952478569

`∑[A247666(n)]`
-/

namespace A253767.P14249941075952478569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P14249941075952478569

/-! ## A253767.P6322783369200876894

`∑[A275667(2*n)]`
-/

namespace A253767.P6322783369200876894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P6322783369200876894

/-! ## A253767.P8392952552754299059

`∑[A247649(2*∑[and(n, -n)²]+n)]`
-/

namespace A253767.P8392952552754299059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 * (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P8392952552754299059

/-! ## A253767.P12740264514970535675

`∑[A247649(A001196(n))]`
-/

namespace A253767.P12740264514970535675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A001196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P12740264514970535675

/-! ## A253767.P2695608694951316289

`∑[A247649(3*A000695(n))]`
-/

namespace A253767.P2695608694951316289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (3 * A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P2695608694951316289

/-! ## A253767.P7626540229547323156

`∑[A247649(3*A062880(n))]`
-/

namespace A253767.P7626540229547323156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (3 * A062880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P7626540229547323156

/-! ## A253767.P17749666340086137145

`A247666(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A253767.P17749666340086137145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247666 n + a (A023443 n).toNat

end

end A253767.P17749666340086137145

/-! ## A253767.P9498624048744419855

`A247666(n%A067497(n))+a(n-1)` with `a(0)=1`
-/

namespace A253767.P9498624048744419855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247666 (Int.tmod (n : ℤ) (A067497 n)).toNat + a (n - 1)

end

end A253767.P9498624048744419855

/-! ## A253767.P4313022177430182921

`∑[A247649(A062880(n)+A000695(n))]`
-/

namespace A253767.P4313022177430182921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A062880 n + A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253767.P4313022177430182921

/-!
# A253768: Partial sums of A098550.

The programs for A253768, there is no canonical definition to state claims against.
-/

/-! ## A253768.P6806861585914094924

`∑[A098550(1+n)]`
-/

namespace A253768.P6806861585914094924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253768.P6806861585914094924

/-! ## A253768.P5382432885733253581

`A098550(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A253768.P5382432885733253581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098550 (n + 1) + a (n - 1)

end

end A253768.P5382432885733253581

/-! ## A253768.P473412113494080554

`∑[A098552(A098551(1+n))]`
-/

namespace A253768.P473412113494080554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253768.P473412113494080554

/-!
# A253769: Sum of number of divisors of all positive integers <= prime(n).

The programs for A253769, the canonical program `A253769.P2452333697715072660` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253769 has offset 1).

The definition of A253769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253769.P2452333697715072660

`A006218(A000040(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A253769

/-- `A006218(A000040(n+1))` -/
def P2452333697715072660.Spec : Prop :=
  ∀ n, P2452333697715072660.a n = A253769 (n + 1)

theorem P2452333697715072660.correct : P2452333697715072660.Spec := by
  intro n
  simp only [A253769, Nat.add_sub_cancel]

end A253769

/-! ## A253769.P296419524247576159

`∑[A139140(n)]`
-/

namespace A253769.P296419524247576159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253769.P296419524247576159

namespace A253769

/-- `∑[A139140(n)]` -/
def P296419524247576159.Spec : Prop :=
  ∀ n, P296419524247576159.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P12483627736135367743

`A085683(1+n)+1`
-/

namespace A253769.P12483627736135367743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085683 (1 + n) + 1

end

end A253769.P12483627736135367743

namespace A253769

/-- `A085683(1+n)+1` -/
def P12483627736135367743.Spec : Prop :=
  ∀ n, P12483627736135367743.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P13635923290565109069

`A006218(Δ[A007504(n)])`
-/

namespace A253769.P13635923290565109069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (f1 (n + 1) - f1 n).toNat

end

end A253769.P13635923290565109069

namespace A253769

/-- `A006218(Δ[A007504(n)])` -/
def P13635923290565109069.Spec : Prop :=
  ∀ n, P13635923290565109069.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P15191483140303934640

`A006218(A006093(n+1))+2`
-/

namespace A253769.P15191483140303934640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A006093 (n + 1)).toNat + 2

end

end A253769.P15191483140303934640

namespace A253769

/-- `A006218(A006093(n+1))+2` -/
def P15191483140303934640.Spec : Prop :=
  ∀ n, P15191483140303934640.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P421599576066702643

`∩[A006218(n)+2, A006218(n)]`
-/

namespace A253769.P421599576066702643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253769.P421599576066702643

namespace A253769

/-- `∩[A006218(n)+2, A006218(n)]` -/
def P421599576066702643.Spec : Prop :=
  ∀ n, (P421599576066702643.a n : ℤ) = A253769 (n + 1)

end A253769

/-! ## A253769.P1290045694851049122

`A362059(A072055(n+1))`
-/

namespace A253769.P1290045694851049122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (A072055 (n + 1)).toNat

end

end A253769.P1290045694851049122

namespace A253769

/-- `A362059(A072055(n+1))` -/
def P1290045694851049122.Spec : Prop :=
  ∀ n, P1290045694851049122.a n = A253769 (n + 1)

end A253769

/-! ## A253769.P15896100340903539372

`A020725(A085683(n+1))`
-/

namespace A253769.P15896100340903539372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A085683 (n + 1)).toNat

end

end A253769.P15896100340903539372

namespace A253769

/-- `A020725(A085683(n+1))` -/
def P15896100340903539372.Spec : Prop :=
  ∀ n, P15896100340903539372.a n = A253769 (n + 1)

end A253769

/-!
# A253770: Number of ON states after n generations of cellular automaton based on triangles, with diamonds.

The programs for A253770, there is no canonical definition to state claims against.
-/

/-! ## A253770.P13908891815478508954

`2*A160167(n)`
-/

namespace A253770.P13908891815478508954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160167 n

end

end A253770.P13908891815478508954

/-! ## A253770.P8206069618768242233

`3*A160157(n)`
-/

namespace A253770.P8206069618768242233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A160157 n

end

end A253770.P8206069618768242233

/-! ## A253770.P2082291736836184570

`6*A160120(n)`
-/

namespace A253770.P2082291736836184570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160120 n

end

end A253770.P2082291736836184570

/-! ## A253770.P5882877146124162851

`∑[A253771(n)]`
-/

namespace A253770.P5882877146124162851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253770.P5882877146124162851

/-! ## A253770.P3477023186779379049

`A005843(A160167(n))`
-/

namespace A253770.P3477023186779379049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160167 n).toNat

end

end A253770.P3477023186779379049

/-!
# A253771: First differences of A253770.

The programs for A253771, there is no canonical definition to state claims against.
-/

/-! ## A253771.P1090056058450930767

`6*A160121(A000038(n)+n)%(∑[2*n²]+1)`
-/

namespace A253771.P1090056058450930767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A160121 (A000038 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A253771.P1090056058450930767

/-! ## A253771.P11309015138477152099

`6*A160121(A000007(n)+n)%A016756(n)`
-/

namespace A253771.P11309015138477152099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.tmod (A160121 (A000007 n + (n : ℤ)).toNat) (A016756 n)

end

end A253771.P11309015138477152099

/-! ## A253771.P12669029405176225558

`(6*A160121(A000038(n)+n))%A028071(n)`
-/

namespace A253771.P12669029405176225558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A160121 (A000038 n + (n : ℤ)).toNat) (A028071 n)

end

end A253771.P12669029405176225558

/-! ## A253771.P1112226927851834906

`Δ[A253770(log2(ceil(2^(n-1))))]`
-/

namespace A253771.P1112226927851834906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253770 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253771.P1112226927851834906

/-! ## A253771.P13263821919781550649

`6*(A160121(A000007(n)+n)-A102899(A070885(n+1)))`
-/

namespace A253771.P13263821919781550649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A160121 (A000007 n + (n : ℤ)).toNat - A102899 (A070885 (n + 1)).toNat)

end

end A253771.P13263821919781550649

/-!
# A253772: Numbers k such that 4^k + 13 is prime.

The programs for A253772, there is no canonical definition to state claims against.
-/

/-! ## A253772.P7238973825537983700

`A102634(n+1)/2`
-/

namespace A253772.P7238973825537983700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102634 (n + 1) : ℚ) / 2

end

end A253772.P7238973825537983700

/-! ## A253772.P430811512323051115

`record[ratio[A102634(A152271(n))]]`
-/

namespace A253772.P430811512323051115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102634 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253772.P430811512323051115

/-! ## A253772.P8171636476646188341

`floor(A102634(∑[A178487(n)^n])/2)`
-/

namespace A253772.P8171636476646188341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102634 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌋

end

end A253772.P8171636476646188341

/-! ## A253772.P2332562384400473728

`2^A008683(A002146(n))*A102634(n+1)`
-/

namespace A253772.P2332562384400473728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002146 n).toNat : ℤ) * (A102634 (n + 1) : ℚ)

end

end A253772.P2332562384400473728

/-! ## A253772.P4973142473378913518

`2^A008683(A181758(n+1))*A102634(n+1)`
-/

namespace A253772.P4973142473378913518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A102634 (n + 1) : ℚ)

end

end A253772.P4973142473378913518

/-!
# A253773: Numbers k such that 4^k + 15 is prime.

The programs for A253773, there is no canonical definition to state claims against.
-/

/-! ## A253773.P15577209142203302498

`record[A273943(A057197(n+1))]`
-/

namespace A253773.P15577209142203302498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A057197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P15577209142203302498

/-! ## A253773.P8794394699900426174

`record[A025480(A057197(n+2))]`
-/

namespace A253773.P8794394699900426174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057197 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P8794394699900426174

/-! ## A253773.P4135249861138050416

`record[A057979(A057197(n+1)+1)]`
-/

namespace A253773.P4135249861138050416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057197 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P4135249861138050416

/-! ## A253773.P16938989045800255715

`record[A001057(A057197(n+2)-1)]`
-/

namespace A253773.P16938989045800255715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A057197 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P16938989045800255715

/-! ## A253773.P4193525435977155989

`record[A142150(A057197(n+2)-char[1])]`
-/

namespace A253773.P4193525435977155989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A057197 (n + 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253773.P4193525435977155989

/-!
# A253774: Numbers k such that 4^k + 19 is prime.

The programs for A253774, there is no canonical definition to state claims against.
-/

/-! ## A253774.P4393939274561679635

`A057221(n+1)/2`
-/

namespace A253774.P4393939274561679635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057221 (n + 1) : ℚ) / 2

end

end A253774.P4393939274561679635

/-! ## A253774.P9627526389698915679

`record[ratio[A057221(A152271(n))]]`
-/

namespace A253774.P9627526389698915679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057221 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253774.P9627526389698915679

/-! ## A253774.P2779838677550091211

`record[A057221(A134478(n))/2]`
-/

namespace A253774.P2779838677550091211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057221 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253774.P2779838677550091211

/-!
# A253776: Primes representable as x^y + x + y, where x>1, y>1 are integers.

The programs for A253776, there is no canonical definition to state claims against.
-/

/-! ## A253776.P11726038627975478671

`p?[A253775(n+1)]`
-/

namespace A253776.P11726038627975478671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P11726038627975478671

/-! ## A253776.P2474075505798581437

`p?[record[A253775(A065648(n))]]`
-/

namespace A253776.P2474075505798581437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P2474075505798581437

/-! ## A253776.P8374825739061470852

`p?[record[A253775(A152271(n))]]`
-/

namespace A253776.P8374825739061470852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P8374825739061470852

/-! ## A253776.P14686292623468426841

`p?[record[A253775(A324346(n))]]`
-/

namespace A253776.P14686292623468426841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P14686292623468426841

/-! ## A253776.P6341206302505741465

`p?[record[A253775(A324347(n))]]`
-/

namespace A253776.P6341206302505741465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253776.P6341206302505741465

/-!
# A253778: Numbers b that are the first of m^3 consecutive cubes whose sum is a cube c^3, where m^3 is not divisible by 3 (A118719).

The programs for A253778, the canonical program `A253778.P11203136694901278891` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253778 has offset 1).

The definition of A253778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253778.P11203136694901278891

`ogf((-2x+8x^2+36x^3+147x^4+69x^5+60x^6+5x^7+x^8)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253778

/-- `ogf((-2x+8x^2+36x^3+147x^4+69x^5+60x^6+5x^7+x^8)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P11203136694901278891.Spec : Prop :=
  ∀ n, P11203136694901278891.a n = A253778 (n + 1)

theorem P11203136694901278891.correct : P11203136694901278891.Spec := by
  intro n
  simp only [A253778, Nat.add_sub_cancel]

end A253778

/-!
# A253779: Numbers c whose cubes are equal to the sum of m^3 consecutive cubes for m^3 not divisible by 3 (A118719).

The programs for A253779, the canonical program `A253779.P12743486929630698630` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253779 has offset 1).

The definition of A253779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253779.P7522765178390457531

`A253780(n+1)^(1/3)`
-/

namespace A253779.P7522765178390457531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253780 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A253779.P7522765178390457531

namespace A253779

/-- `A253780(n+1)^(1/3)` -/
def P7522765178390457531.Spec : Prop :=
  ∀ n, P7522765178390457531.a n = (A253779 (n + 1) : ℝ)

end A253779

/-! ## A253779.P12743486929630698630

`A027480(A032766(n))*A257083(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A253779

/-- `A027480(A032766(n))*A257083(n)` -/
def P12743486929630698630.Spec : Prop :=
  ∀ n, P12743486929630698630.a n = A253779 (n + 1)

theorem P12743486929630698630.correct : P12743486929630698630.Spec := by
  intro n
  simp only [A253779, Nat.add_sub_cancel]

end A253779

/-! ## A253779.P14395018525318247762

`(A001651(n+1)+1)*A071244(A001651(n+1))`
-/

namespace A253779.P14395018525318247762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) + 1) * A071244 (A001651 (n + 1)).toNat

end

end A253779.P14395018525318247762

namespace A253779

/-- `(A001651(n+1)+1)*A071244(A001651(n+1))` -/
def P14395018525318247762.Spec : Prop :=
  ∀ n, P14395018525318247762.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P2946109539734662296

`A004526(3*n)*A071239(A008619(3*n))`
-/

namespace A253779.P2946109539734662296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * n) * A071239 (A008619 (3 * n)).toNat

end

end A253779.P2946109539734662296

namespace A253779

/-- `A004526(3*n)*A071239(A008619(3*n))` -/
def P2946109539734662296.Spec : Prop :=
  ∀ n, P2946109539734662296.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P9499000744683160957

`A004526(3*n)*A071239(A004526(3*n)+1)`
-/

namespace A253779.P9499000744683160957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * n) * A071239 (A004526 (3 * n) + 1).toNat

end

end A253779.P9499000744683160957

namespace A253779

/-- `A004526(3*n)*A071239(A004526(3*n)+1)` -/
def P9499000744683160957.Spec : Prop :=
  ∀ n, P9499000744683160957.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P12285906297938684135

`A000217(A001082(n+1))*A016051(n+1)`
-/

namespace A253779.P12285906297938684135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001082 (n + 1)).toNat * A016051 (n + 1)

end

end A253779.P12285906297938684135

namespace A253779

/-- `A000217(A001082(n+1))*A016051(n+1)` -/
def P12285906297938684135.Spec : Prop :=
  ∀ n, P12285906297938684135.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P17456871724443491398

`3*A001651(n+1)*A000217(∑[A022998(n)])`
-/

namespace A253779.P17456871724443491398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001651 (n + 1) * A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A253779.P17456871724443491398

namespace A253779

/-- `3*A001651(n+1)*A000217(∑[A022998(n)])` -/
def P17456871724443491398.Spec : Prop :=
  ∀ n, P17456871724443491398.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P9723753027702835245

`A000217(A001082(n+1))*A008585(A001651(n+1))`
-/

namespace A253779.P9723753027702835245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001082 (n + 1)).toNat * A008585 (A001651 (n + 1)).toNat

end

end A253779.P9723753027702835245

namespace A253779

/-- `A000217(A001082(n+1))*A008585(A001651(n+1))` -/
def P9723753027702835245.Spec : Prop :=
  ∀ n, P9723753027702835245.a n = A253779 (n + 1)

end A253779

/-! ## A253779.P6744970380962836435

`A000217(A001082(n+1))*A007494(2*A001651(n+1))`
-/

namespace A253779.P6744970380962836435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001082 (n + 1)).toNat * A007494 (2 * A001651 (n + 1)).toNat

end

end A253779.P6744970380962836435

namespace A253779

/-- `A000217(A001082(n+1))*A007494(2*A001651(n+1))` -/
def P6744970380962836435.Spec : Prop :=
  ∀ n, P6744970380962836435.a n = A253779 (n + 1)

end A253779

/-!
# A253780: Cubes c^3 that are equal to the sum of m^3 consecutive cubes starting at b^3 with b (A253778) for m^3 not divisible by 3 (A118719).

The programs for A253780, the canonical program `A253780.P5690495980752556538` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253780 has offset 1).

The definition of A253780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253780.P5690495980752556538

`A253779(1+n)^3`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253780

/-- `A253779(1+n)^3` -/
def P5690495980752556538.Spec : Prop :=
  ∀ n, P5690495980752556538.a n = A253780 (n + 1)

theorem P5690495980752556538.correct : P5690495980752556538.Spec := by
  intro n
  simp only [A253780, Nat.add_sub_cancel]

end A253780

/-! ## A253780.P13434622920439996899

`A253779(n+1)²*A253779(n+1)`
-/

namespace A253780.P13434622920439996899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (n + 1) ^ 2 * A253779 (n + 1)

end

end A253780.P13434622920439996899

namespace A253780

/-- `A253779(n+1)²*A253779(n+1)` -/
def P13434622920439996899.Spec : Prop :=
  ∀ n, P13434622920439996899.a n = A253780 (n + 1)

theorem P13434622920439996899.correct : P13434622920439996899.Spec := by
  intro n
  simp only [A253780, Nat.add_sub_cancel, A253780.P13434622920439996899.a, A253780.P5690495980752556538.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A253780

/-! ## A253780.P2737114009260753153

`(A027480(A032766(n))*A257083(n))^3`
-/

namespace A253780.P2737114009260753153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027480 (A032766 n).toNat * A257083 n) ^ 3

end

end A253780.P2737114009260753153

namespace A253780

/-- `(A027480(A032766(n))*A257083(n))^3` -/
def P2737114009260753153.Spec : Prop :=
  ∀ n, P2737114009260753153.a n = A253780 (n + 1)

end A253780

/-! ## A253780.P4170004496178949736

`(A000217(A001082(n+1))*A016051(n+1))^3`
-/

namespace A253780.P4170004496178949736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A001082 (n + 1)).toNat * A016051 (n + 1)) ^ 3

end

end A253780.P4170004496178949736

namespace A253780

/-- `(A000217(A001082(n+1))*A016051(n+1))^3` -/
def P4170004496178949736.Spec : Prop :=
  ∀ n, P4170004496178949736.a n = A253780 (n + 1)

end A253780

/-! ## A253780.P13159319508231071639

`(3*A001651(n+1)*A000217(∑[A022998(n)]))^3`
-/

namespace A253780.P13159319508231071639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A001651 (n + 1) * A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ^ 3

end

end A253780.P13159319508231071639

namespace A253780

/-- `(3*A001651(n+1)*A000217(∑[A022998(n)]))^3` -/
def P13159319508231071639.Spec : Prop :=
  ∀ n, P13159319508231071639.a n = A253780 (n + 1)

end A253780

/-! ## A253780.P4822535872427463423

`(A000217(A001082(n+1))*A008585(A001651(n+1)))^3`
-/

namespace A253780.P4822535872427463423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A001082 (n + 1)).toNat * A008585 (A001651 (n + 1)).toNat) ^ 3

end

end A253780.P4822535872427463423

namespace A253780

/-- `(A000217(A001082(n+1))*A008585(A001651(n+1)))^3` -/
def P4822535872427463423.Spec : Prop :=
  ∀ n, P4822535872427463423.a n = A253780 (n + 1)

end A253780

/-!
# A253781: Numbers n for which A075167(n) = A252464(n).

The programs for A253781, the canonical program `A253781.P3792468456620325874` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253781 has offset 1).

The definition of A253781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253781.P14872932100091744314

`comp[A253782(1+n)-1]+1`
-/

namespace A253781.P14872932100091744314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253781.P14872932100091744314

namespace A253781

/-- `comp[A253782(1+n)-1]+1` -/
def P14872932100091744314.Spec : Prop :=
  ∀ n, (P14872932100091744314.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P18143950728363603787

`comp[∪[A253779(3*n+1), A253782(n+1)]]`
-/

namespace A253781.P18143950728363603787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253781.P18143950728363603787

namespace A253781

/-- `comp[∪[A253779(3*n+1), A253782(n+1)]]` -/
def P18143950728363603787.Spec : Prop :=
  ∀ n, (P18143950728363603787.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P17645179487443675363

`comp[∪[n*A222525(2*n), A253782(n+1)]]`
-/

namespace A253781.P17645179487443675363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A222525 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253781.P17645179487443675363

namespace A253781

/-- `comp[∪[n*A222525(2*n), A253782(n+1)]]` -/
def P17645179487443675363.Spec : Prop :=
  ∀ n, (P17645179487443675363.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P3792468456620325874

`record[(n+1)/A113061((n+1)/A006530(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253781

/-- `record[(n+1)/A113061((n+1)/A006530(n+1))]` -/
def P3792468456620325874.Spec : Prop :=
  ∀ n, P3792468456620325874.a n = (A253781 (n + 1) : ℚ)

end A253781

/-! ## A253781.P17485369581245081512

`eq[1, A360540(A052126(n+1))]+1`
-/

namespace A253781.P17485369581245081512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253781.P17485369581245081512

namespace A253781

/-- `eq[1, A360540(A052126(n+1))]+1` -/
def P17485369581245081512.Spec : Prop :=
  ∀ n, (P17485369581245081512.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P12033668042731951397

`record[n/A317941(A052126(1+n))]+1`
-/

namespace A253781.P12033668042731951397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A317941 (A052126 (1 + n)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A253781.P12033668042731951397

namespace A253781

/-- `record[n/A317941(A052126(1+n))]+1` -/
def P12033668042731951397.Spec : Prop :=
  ∀ n, P12033668042731951397.a n = (A253781 (n + 1) : ℚ)

end A253781

/-! ## A253781.P2535091520339353545

`eq[A075167(n+1), A252464(n+1)]+1`
-/

namespace A253781.P2535091520339353545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A253781.P2535091520339353545

namespace A253781

/-- `eq[A075167(n+1), A252464(n+1)]+1` -/
def P2535091520339353545.Spec : Prop :=
  ∀ n, (P2535091520339353545.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P1085994131650429023

`record[A007948(n+1)*A295657(A217434(n+1))]`
-/

namespace A253781.P1085994131650429023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) * A295657 (A217434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253781.P1085994131650429023

namespace A253781

/-- `record[A007948(n+1)*A295657(A217434(n+1))]` -/
def P1085994131650429023.Spec : Prop :=
  ∀ n, P1085994131650429023.a n = A253781 (n + 1)

end A253781

/-! ## A253781.P14068460601481314734

`comp[A023443(A253782(n+1))]+1`
-/

namespace A253781.P14068460601481314734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A253782 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253781.P14068460601481314734

namespace A253781

/-- `comp[A023443(A253782(n+1))]+1` -/
def P14068460601481314734.Spec : Prop :=
  ∀ n, (P14068460601481314734.a n : ℤ) = A253781 (n + 1)

end A253781

/-! ## A253781.P13988133612146621986

`record[(n+1)/A053150(A126289(n+1))]`
-/

namespace A253781.P13988133612146621986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053150 (A126289 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253781.P13988133612146621986

namespace A253781

/-- `record[(n+1)/A053150(A126289(n+1))]` -/
def P13988133612146621986.Spec : Prop :=
  ∀ n, P13988133612146621986.a n = (A253781 (n + 1) : ℚ)

end A253781

/-! ## A253781.P5532864951490592040

`comp[8*fp[n!]]`
-/

namespace A253781.P5532864951490592040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun j => n < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253781.P5532864951490592040

namespace A253781

/-- `comp[8*fp[n!]]` -/
def P5532864951490592040.Spec : Prop :=
  ∀ n, (P5532864951490592040.a n : ℤ) = A253781 (n + 1)

end A253781

/-!
# A253782: Numbers n for which A075167(n) <> A252464(n).

The programs for A253782, the canonical program `A253782.P822978868598912140` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253782 has offset 1).

The definition of A253782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253782.P822978868598912140

`lt[7, A113061((n+1)/A006530(n+1))]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A253782

/-- `lt[7, A113061((n+1)/A006530(n+1))]+1` -/
def P822978868598912140.Spec : Prop :=
  ∀ n, (P822978868598912140.a n : ℤ) = A253782 (n + 1)

theorem P822978868598912140.correct : P822978868598912140.Spec := by
  intro n
  simp only [A253782, Nat.add_sub_cancel]

end A253782

/-! ## A253782.P1177444195929852719

`lt[A075167(n+1), A252464(n+1)]+1`
-/

namespace A253782.P1177444195929852719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A253782.P1177444195929852719

namespace A253782

/-- `lt[A075167(n+1), A252464(n+1)]+1` -/
def P1177444195929852719.Spec : Prop :=
  ∀ n, (P1177444195929852719.a n : ℤ) = A253782 (n + 1)

end A253782

/-! ## A253782.P6096602355653730477

`lt[A323508(n+1)%10, 1]+1`
-/

namespace A253782.P6096602355653730477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323508 (n + 1)) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A253782.P6096602355653730477

namespace A253782

/-- `lt[A323508(n+1)%10, 1]+1` -/
def P6096602355653730477.Spec : Prop :=
  ∀ n, (P6096602355653730477.a n : ℤ) = A253782 (n + 1)

end A253782

/-! ## A253782.P5457226287738214952

`lt[A048259(n), A005900(A294333(n))]`
-/

namespace A253782.P5457226287738214952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253782.P5457226287738214952

namespace A253782

/-- `lt[A048259(n), A005900(A294333(n))]` -/
def P5457226287738214952.Spec : Prop :=
  ∀ n, (P5457226287738214952.a n : ℤ) = A253782 (n + 1)

end A253782

/-! ## A253782.P7033760296669669683

`lt[A048896(n), A005578(A294333(n))]`
-/

namespace A253782.P7033760296669669683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A294333 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253782.P7033760296669669683

namespace A253782

/-- `lt[A048896(n), A005578(A294333(n))]` -/
def P7033760296669669683.Spec : Prop :=
  ∀ n, (P7033760296669669683.a n : ℤ) = A253782 (n + 1)

end A253782

/-!
# A253783: a(1) = 0; for n>1: a(n) = A075167(1+A071178(n)) + (A061395(n) - A061395(A051119(n))) + a(A051119(n)).

The programs for A253783, there is no canonical definition to state claims against.
-/

/-! ## A253783.P1645109794347357378

`A075167(1+A071178(n+1))+A061395(n+1)-A061395(A051119(n+1))+a(A051119(n+1)-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253783.P1645109794347357378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A075167 (1 + A071178 (n + 1)).toNat + (A061395 (n + 1) - A061395 (A051119 (n + 1)).toNat) + a (A051119 (n + 1) - 1).toNat

end

end A253783.P1645109794347357378

/-! ## A253783.P4641250713264563495

`A075167(A006530(n+1)*A046523(n+1))`
-/

namespace A253783.P4641250713264563495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A006530 (n + 1) * A046523 (n + 1)).toNat

end

end A253783.P4641250713264563495

/-! ## A253783.P13365218207044514328

`A056239(A006530(n+1)*A194621(∑[n+1]))`
-/

namespace A253783.P13365218207044514328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A006530 (n + 1) * A194621 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A253783.P13365218207044514328

/-! ## A253783.P4495446127062194623

`A297113(A000188(n+1)*A078615(n+1))`
-/

namespace A253783.P4495446127062194623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A000188 (n + 1) * A078615 (n + 1)).toNat

end

end A253783.P4495446127062194623

/-! ## A253783.P2869187140735858370

`A075167(A253560(n+1))`
-/

namespace A253783.P2869187140735858370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (A253560 (n + 1)).toNat

end

end A253783.P2869187140735858370

/-! ## A253783.P41914639604341685

`A252464(A097246(A064549(n+1)))`
-/

namespace A253783.P41914639604341685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A097246 (A064549 (n + 1)).toNat).toNat

end

end A253783.P41914639604341685

/-! ## A253783.P4441346160866104013

`A075167(A129598(n+1))%A022568(n)`
-/

namespace A253783.P4441346160866104013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075167 (A129598 (n + 1)).toNat) (A022568 n)

end

end A253783.P4441346160866104013

/-!
# A253784: Numbers which have no two successive prime factors (when sorted into nondecreasing order) where the latter prime factor is greater than the square of the former.

The programs for A253784, there is no canonical definition to state claims against.
-/

/-! ## A253784.P17333868199528492278

`∪[A008587(A001097(n+1)), A342191(n+1)]`
-/

namespace A253784.P17333868199528492278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A001097 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253784.P17333868199528492278

/-! ## A253784.P6736175484824502405

`∪[A008587(A033560(n+1)), A342191(n+1)]`
-/

namespace A253784.P6736175484824502405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A033560 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253784.P6736175484824502405

/-! ## A253784.P13707544037453855055

`∪[A008587(A065091(n+1)), A342191(n+1)]`
-/

namespace A253784.P13707544037453855055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A065091 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253784.P13707544037453855055

/-! ## A253784.P17418466325859173702

`∪[A008587(A271658(n+1)), A342191(n+1)]`
-/

namespace A253784.P17418466325859173702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A271658 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253784.P17418466325859173702

/-! ## A253784.P8620687577670684402

`∪[A342191(n+1), A355743(A382430(n+3))]`
-/

namespace A253784.P8620687577670684402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (A382430 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253784.P8620687577670684402

/-!
# A253785: Composite numbers n = prime(i_1) * ... * prime(i_k), prime(i_1) <= prime(i_2) <= ... <= prime(i_k), with at least one pair of successive prime factors (when sorted into monotonic order) where the latter prime factor is greater than the square of the former: prime(i_x)^2 < prime(i_{x+1}), for some x in 1 .. k-1, where k = A001222(n) and i_k = A061395(n).

The programs for A253785, there is no canonical definition to state claims against.
-/

/-! ## A253785.P17744008406062659846

`comp[A253784(1+n)-1]+1`
-/

namespace A253785.P17744008406062659846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253785.P17744008406062659846

/-! ## A253785.P3098954225845440461

`comp[∪[A253779(n+1), A253784(n+1)]]`
-/

namespace A253785.P3098954225845440461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253779 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253785.P3098954225845440461

/-! ## A253785.P13524504204057667085

`comp[∪[A285695(n+1), A253784(n+1)]]`
-/

namespace A253785.P13524504204057667085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285695 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A253785.P13524504204057667085

/-! ## A253785.P14804954575284969712

`∩[A251727(n+1), comp[A253784(n+1)]]`
-/

namespace A253785.P14804954575284969712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A253785.P14804954575284969712

/-! ## A253785.P5643393532672153208

`A020725(comp[A253784(n+1)-1])`
-/

namespace A253785.P5643393532672153208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253784 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A253785.P5643393532672153208

/-! ## A253785.P5472895129017383673

`comp[A289207(A253784(n+1)+1)]+1`
-/

namespace A253785.P5472895129017383673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A253784 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253785.P5472895129017383673

/-!
# A253786: a(3n) = 0, a(3n+1) = 0, a(3n+2) = 1 + a(n+1).

The programs for A253786, the canonical program `A253786.P9148671092722524986` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253786 has offset 0).

The definition of A253786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253786.P9148671092722524986

`val(abs(1-2*n), 3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A253786

/-- `val(abs(1-2*n), 3)` -/
def P9148671092722524986.Spec : Prop :=
  ∀ n, (P9148671092722524986.a n : ℤ) = A253786 n

theorem P9148671092722524986.correct : P9148671092722524986.Spec := by
  intro n
  simp only [A253786]

end A253786

/-! ## A253786.P6437991492561407031

`dr(val((1-2*n)², 9))`
-/

namespace A253786.P6437991492561407031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((1 - (2 * n : ℤ)) ^ 2).toNat 9 : ℤ)

end

end A253786.P6437991492561407031

namespace A253786

/-- `dr(val((1-2*n)², 9))` -/
def P6437991492561407031.Spec : Prop :=
  ∀ n, (P6437991492561407031.a n : ℤ) = A253786 n

end A253786

/-! ## A253786.P6819584719863980349

`val((1-2*n)², 3)/2`
-/

namespace A253786.P6819584719863980349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation ((1 - (2 * n : ℤ)) ^ 2).toNat 3 : ℚ) / 2

end

end A253786.P6819584719863980349

namespace A253786

/-- `val((1-2*n)², 3)/2` -/
def P6819584719863980349.Spec : Prop :=
  ∀ n, P6819584719863980349.a n = (A253786 n : ℚ)

end A253786

/-! ## A253786.P3130527025230603680

`val(abs(1-n)+n, 3)%20`
-/

namespace A253786.P3130527025230603680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + (n : ℤ)).toNat 3 % 20

end

end A253786.P3130527025230603680

namespace A253786

/-- `val(abs(1-n)+n, 3)%20` -/
def P3130527025230603680.Spec : Prop :=
  ∀ n, (P3130527025230603680.a n : ℤ) = A253786 n

end A253786

/-! ## A253786.P12462521476067615788

`A002265(2*val((1-2*n)², 3))`
-/

namespace A253786.P12462521476067615788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * SequenceMachineLib.valuation ((1 - (2 * n : ℤ)) ^ 2).toNat 3)

end

end A253786.P12462521476067615788

namespace A253786

/-- `A002265(2*val((1-2*n)², 3))` -/
def P12462521476067615788.Spec : Prop :=
  ∀ n, P12462521476067615788.a n = A253786 n

end A253786

/-! ## A253786.P6906600765560583495

`A215879(A060373(n))`
-/

namespace A253786.P6906600765560583495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A060373 n).toNat

end

end A253786.P6906600765560583495

namespace A253786

/-- `A215879(A060373(n))` -/
def P6906600765560583495.Spec : Prop :=
  ∀ n, P6906600765560583495.a n = A253786 n

end A253786

/-! ## A253786.P8195665090184504756

`A134022(A060373(n)+1)`
-/

namespace A253786.P8195665090184504756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 (A060373 n + 1).toNat

end

end A253786.P8195665090184504756

namespace A253786

/-- `A134022(A060373(n)+1)` -/
def P8195665090184504756.Spec : Prop :=
  ∀ n, P8195665090184504756.a n = A253786 n

end A253786

/-! ## A253786.P15090658801637698940

`A262097(A060373(n)+1)`
-/

namespace A253786.P15090658801637698940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262097 (A060373 n + 1).toNat

end

end A253786.P15090658801637698940

namespace A253786

/-- `A262097(A060373(n)+1)` -/
def P15090658801637698940.Spec : Prop :=
  ∀ n, P15090658801637698940.a n = A253786 n

end A253786

/-! ## A253786.P10565862540144435626

`∑{d}[n+1, A185012(#-1)*A254046((n+1)/#)]`
-/

namespace A253786.P10565862540144435626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185012 (d - 1) * A254046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A253786.P10565862540144435626

namespace A253786

/-- `∑{d}[n+1, A185012(#-1)*A254046((n+1)/#)]` -/
def P10565862540144435626.Spec : Prop :=
  ∀ n, P10565862540144435626.a n = A253786 n

end A253786

/-! ## A253786.P10232740126724079809

`A000989(n)-A000989(A002264(n))`
-/

namespace A253786.P10232740126724079809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - A000989 (A002264 n).toNat

end

end A253786.P10232740126724079809

namespace A253786

/-- `A000989(n)-A000989(A002264(n))` -/
def P10232740126724079809.Spec : Prop :=
  ∀ n, P10232740126724079809.a n = A253786 n

end A253786

/-! ## A253786.P2683323514724200730

`A000989(n)-A000989(A260316(n))`
-/

namespace A253786.P2683323514724200730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n - A000989 (A260316 n).toNat

end

end A253786.P2683323514724200730

namespace A253786

/-- `A000989(n)-A000989(A260316(n))` -/
def P2683323514724200730.Spec : Prop :=
  ∀ n, P2683323514724200730.a n = A253786 n

end A253786

/-! ## A253786.P7608772851731511348

`A072078(abs(n+1-3*n))-1`
-/

namespace A253786.P7608772851731511348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 |(n + 1 : ℤ) - (3 * n : ℤ)|.toNat - 1

end

end A253786.P7608772851731511348

namespace A253786

/-- `A072078(abs(n+1-3*n))-1` -/
def P7608772851731511348.Spec : Prop :=
  ∀ n, P7608772851731511348.a n = A253786 n

end A253786

/-! ## A253786.P108291466636088743

`A007949(A004488(n)+2)`
-/

namespace A253786.P108291466636088743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A004488 n + 2).toNat

end

end A253786.P108291466636088743

namespace A253786

/-- `A007949(A004488(n)+2)` -/
def P108291466636088743.Spec : Prop :=
  ∀ n, P108291466636088743.a n = A253786 n

end A253786

/-! ## A253786.P16717550064185486496

`A007949(A222257(n))`
-/

namespace A253786.P16717550064185486496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A222257 n).toNat

end

end A253786.P16717550064185486496

namespace A253786

/-- `A007949(A222257(n))` -/
def P16717550064185486496.Spec : Prop :=
  ∀ n, P16717550064185486496.a n = A253786 n

end A253786

/-! ## A253786.P6340132054567839598

`A007949(abs(1-2*n))`
-/

namespace A253786.P6340132054567839598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 |1 - (2 * n : ℤ)|.toNat

end

end A253786.P6340132054567839598

namespace A253786

/-- `A007949(abs(1-2*n))` -/
def P6340132054567839598.Spec : Prop :=
  ∀ n, P6340132054567839598.a n = A253786 n

end A253786

/-! ## A253786.P5573223856295272551

`A382487(A004280(n+1))`
-/

namespace A253786.P5573223856295272551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382487 (A004280 (n + 1)).toNat

end

end A253786.P5573223856295272551

namespace A253786

/-- `A382487(A004280(n+1))` -/
def P5573223856295272551.Spec : Prop :=
  ∀ n, P5573223856295272551.a n = A253786 n

end A253786

/-! ## A253786.P8206012604652558783

`A168570(A047459(n+1))`
-/

namespace A253786.P8206012604652558783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A047459 (n + 1)).toNat

end

end A253786.P8206012604652558783

namespace A253786

/-- `A168570(A047459(n+1))` -/
def P8206012604652558783.Spec : Prop :=
  ∀ n, P8206012604652558783.a n = A253786 n

end A253786

/-! ## A253786.P10410133502777975287

`val(runs[ceil(sqrt(n))], 3)`
-/

namespace A253786.P10410133502777975287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n) 3

end

end A253786.P10410133502777975287

namespace A253786

/-- `val(runs[ceil(sqrt(n))], 3)` -/
def P10410133502777975287.Spec : Prop :=
  ∀ n, (P10410133502777975287.a n : ℤ) = A253786 n

end A253786

/-!
# A253787: Row sums of irregular tables A252753 & A252755.

The programs for A253787, there is no canonical definition to state claims against.
-/

/-! ## A253787.P13322010724875734909

`A267758(A150840(n))`
-/

namespace A253787.P13322010724875734909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (A150840 n).toNat

end

end A253787.P13322010724875734909

/-! ## A253787.P16223361028286446172

`A080791(A001147(n))+A010683(n)`
-/

namespace A253787.P16223361028286446172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A001147 n).toNat + A010683 n

end

end A253787.P16223361028286446172

/-!
# A253789: Fixed points of f(n) = A252753(n-1).

The programs for A253789, there is no canonical definition to state claims against.
-/

/-! ## A253789.P3909084354596363029

`record[gcd(n+1, A252753(n))]`
-/

namespace A253789.P3909084354596363029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A252753 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253789.P3909084354596363029

/-! ## A253789.P7402624721287175679

`eq[n, A252754(n+1)]+1`
-/

namespace A253789.P7402624721287175679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253789.P7402624721287175679

/-!
# A253790: a(1) = 1; thereafter, odd numbers such that A055396(n) = A001511(n-1).

The programs for A253790, there is no canonical definition to state claims against.
-/

/-! ## A253790.P7470104388340638136

`record[A325909(A089422(n))]`
-/

namespace A253790.P7470104388340638136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325909 (A089422 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253790.P7470104388340638136

/-! ## A253790.P15149893088902341837

`∑[A145390(Δ[A140725(n)])]`
-/

namespace A253790.P15149893088902341837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145390 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253790.P15149893088902341837

/-! ## A253790.P4400327552396773457

`eq[A065359(n), A242595(n+1)]`
-/

namespace A253790.P4400327552396773457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253790.P4400327552396773457

/-! ## A253790.P219604913826828973

`eq[A242595(n+1), A345927(n)]`
-/

namespace A253790.P219604913826828973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253790.P219604913826828973

/-! ## A253790.P4231265582313012706

`eq[A278085(n+1), A309013(n+1)]`
-/

namespace A253790.P4231265582313012706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309013 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253790.P4231265582313012706

/-!
# A253791: Permutation of natural numbers: a(n) = A244153(A005940(n+1)).

The programs for A253791, the canonical program `A253791.P11955961793208303268` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253791 has offset 0).

The definition of A253791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253791.P11955961793208303268

`A244153(A005940(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A253791

/-- `A244153(A005940(n+1))` -/
def P11955961793208303268.Spec : Prop :=
  ∀ n, P11955961793208303268.a n = A253791 n

theorem P11955961793208303268.correct : P11955961793208303268.Spec := by
  intro n
  simp only [A253791]

end A253791

/-! ## A253791.P2354187303138681770

`A297164(Δ[n²])/2`
-/

namespace A253791.P2354187303138681770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A253791.P2354187303138681770

namespace A253791

/-- `A297164(Δ[n²])/2` -/
def P2354187303138681770.Spec : Prop :=
  ∀ n, P2354187303138681770.a n = (A253791 n : ℚ)

end A253791

/-! ## A253791.P7870702893053359669

`A156552(A246364(A246365(n+1)))`
-/

namespace A253791.P7870702893053359669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A246364 (A246365 (n + 1)).toNat).toNat

end

end A253791.P7870702893053359669

namespace A253791

/-- `A156552(A246364(A246365(n+1)))` -/
def P7870702893053359669.Spec : Prop :=
  ∀ n, P7870702893053359669.a n = A253791 n

end A253791

/-!
# A253792: Permutation of natural numbers: a(n) = A156552(A244154(n)).

The programs for A253792, the canonical program `A253792.P10279464663514090408` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253792 has offset 0).

The definition of A253792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253792.P10279464663514090408

`A156552(A244154(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A253792

/-- `A156552(A244154(n))` -/
def P10279464663514090408.Spec : Prop :=
  ∀ n, P10279464663514090408.a n = A253792 n

theorem P10279464663514090408.correct : P10279464663514090408.Spec := by
  intro n
  simp only [A253792]

end A253792

/-! ## A253792.P8371156248824692419

`floor(A297163(2*n)/2)`
-/

namespace A253792.P8371156248824692419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297163 (2 * n) : ℚ) / 2⌋

end

end A253792.P8371156248824692419

namespace A253792

/-- `floor(A297163(2*n)/2)` -/
def P8371156248824692419.Spec : Prop :=
  ∀ n, P8371156248824692419.a n = A253792 n

end A253792

/-! ## A253792.P6592461031804983995

`floor(A322993(A005940(2*n+1)+1)/2)`
-/

namespace A253792.P6592461031804983995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322993 (A005940 (2 * n + 1) + 1).toNat : ℚ) / 2⌋

end

end A253792.P6592461031804983995

namespace A253792

/-- `floor(A322993(A005940(2*n+1)+1)/2)` -/
def P6592461031804983995.Spec : Prop :=
  ∀ n, P6592461031804983995.a n = A253792 n

end A253792

/-!
# A253793: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253793, there is no canonical definition to state claims against.
-/

/-! ## A253793.P15340387403755236034

`A253801((n+1)²+n²)`
-/

namespace A253793.P15340387403755236034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 ((n + 1) ^ 2 + n ^ 2)

end

end A253793.P15340387403755236034

/-!
# A253794: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253794, there is no canonical definition to state claims against.
-/

/-! ## A253794.P15935965281528289659

`A254189(∑[n]+1)`
-/

namespace A253794.P15935965281528289659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254189 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253794.P15935965281528289659

/-! ## A253794.P8708443722587205875

`record[A010054(n)*A254189(n+1)]`
-/

namespace A253794.P8708443722587205875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253794.P8708443722587205875

/-! ## A253794.P9862300659433141512

`record[root(A254189(n+1), A059268(n))]`
-/

namespace A253794.P9862300659433141512
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254189 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253794.P9862300659433141512

/-! ## A253794.P5653733267215999381

`record[gcd(A002262(n), A254189(n+1))]`
-/

namespace A253794.P5653733267215999381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254189 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253794.P5653733267215999381

/-! ## A253794.P7499888966362179277

`A253801(∑[n]+1)`
-/

namespace A253794.P7499888966362179277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253794.P7499888966362179277

/-!
# A253795: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253795, there is no canonical definition to state claims against.
-/

/-! ## A253795.P3092382240583143513

`A253801(∑[n+1]+2)`
-/

namespace A253795.P3092382240583143513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253795.P3092382240583143513

/-! ## A253795.P15467156193550506293

`record[A253801(runs[A014306(n)])]`
-/

namespace A253795.P15467156193550506293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253795.P15467156193550506293

/-! ## A253795.P16733817363265845569

`record[A253801(Δ[A003453(n+5)])]`
-/

namespace A253795.P16733817363265845569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253795.P16733817363265845569

/-! ## A253795.P4549710697559226972

`record[A253801(A000096(val(n+1, 2)+1))]`
-/

namespace A253795.P4549710697559226972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253795.P4549710697559226972

/-!
# A253796: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253796, there is no canonical definition to state claims against.
-/

/-! ## A253796.P17659359648468279238

`A253801(∑[n+2]+4)`
-/

namespace A253796.P17659359648468279238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253796.P17659359648468279238

/-!
# A253797: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253797, there is no canonical definition to state claims against.
-/

/-! ## A253797.P14698312516952653184

`A253801(A374004(n+1))`
-/

namespace A253797.P14698312516952653184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374004 (n + 1)).toNat

end

end A253797.P14698312516952653184

/-! ## A253797.P9938312252193233033

`A253801(A141214(n+1))`
-/

namespace A253797.P9938312252193233033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A141214 (n + 1)).toNat

end

end A253797.P9938312252193233033

/-!
# A253798: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253798, there is no canonical definition to state claims against.
-/

/-! ## A253798.P806045675544982517

`A253801(A374005(n+1))`
-/

namespace A253798.P806045675544982517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374005 (n + 1)).toNat

end

end A253798.P806045675544982517

/-! ## A253798.P10493969382091023550

`A253801(Δ[A264443(n)])`
-/

namespace A253798.P10493969382091023550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (f1 (n + 1) - f1 n).toNat

end

end A253798.P10493969382091023550

/-!
# A253799: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253799, there is no canonical definition to state claims against.
-/

/-! ## A253799.P5734988984253191486

`A253801(A374007(n+1))`
-/

namespace A253799.P5734988984253191486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374007 (n + 1)).toNat

end

end A253799.P5734988984253191486

