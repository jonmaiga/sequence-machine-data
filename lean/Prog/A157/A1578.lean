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
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157800: Denominator of Bernoulli(n, 1/3).

The programs for A157800, the canonical program `A157800.P5128203663359479520` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157800 has offset 0).

The definition of A157800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157800.P4338410804412910774

`3^n*A285068(n)`
-/

namespace A157800.P4338410804412910774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A285068 n

end

end A157800.P4338410804412910774

namespace A157800

/-- `3^n*A285068(n)` -/
def P4338410804412910774.Spec : Prop :=
  ∀ n, P4338410804412910774.a n = A157800 n

end A157800

/-! ## A157800.P5128203663359479520

`lcm(3^n, A027642(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A157800

/-- `lcm(3^n, A027642(n))` -/
def P5128203663359479520.Spec : Prop :=
  ∀ n, (P5128203663359479520.a n : ℤ) = A157800 n

theorem P5128203663359479520.correct : P5128203663359479520.Spec := by
  intro n
  simp only [A157800]

end A157800

/-! ## A157800.P2550432974118911925

`lcm(A285068(n), A352779(n))`
-/

namespace A157800.P2550432974118911925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285068 n) (A352779 n)

end

end A157800.P2550432974118911925

namespace A157800

/-- `lcm(A285068(n), A352779(n))` -/
def P2550432974118911925.Spec : Prop :=
  ∀ n, (P2550432974118911925.a n : ℤ) = A157800 n

end A157800

/-! ## A157800.P16316562947063412915

`lcm(A285068(n)², A000244(n))/A285068(n)`
-/

namespace A157800.P16316562947063412915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A285068 n ^ 2) (A000244 n) : ℚ) / (A285068 n : ℚ)

end

end A157800.P16316562947063412915

namespace A157800

/-- `lcm(A285068(n)², A000244(n))/A285068(n)` -/
def P16316562947063412915.Spec : Prop :=
  ∀ n, P16316562947063412915.a n = (A157800 n : ℚ)

end A157800

/-! ## A157800.P36499170290943209

`A158808(n)/3^n`
-/

namespace A157800.P36499170290943209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158808 n : ℚ) / (3 ^ n : ℚ)

end

end A157800.P36499170290943209

namespace A157800

/-- `A158808(n)/3^n` -/
def P36499170290943209.Spec : Prop :=
  ∀ n, P36499170290943209.a n = (A157800 n : ℚ)

end A157800

/-! ## A157800.P6018564278065478572

`1/A000244(n)*A158808(n)`
-/

namespace A157800.P6018564278065478572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000244 n : ℚ) * (A158808 n : ℚ)

end

end A157800.P6018564278065478572

namespace A157800

/-- `1/A000244(n)*A158808(n)` -/
def P6018564278065478572.Spec : Prop :=
  ∀ n, P6018564278065478572.a n = (A157800 n : ℚ)

end A157800

/-! ## A157800.P3568493262990991124

`A000244(A005843(n))*A285068(n)/A000244(n)`
-/

namespace A157800.P3568493262990991124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 (A005843 n).toNat * A285068 n : ℚ) / (A000244 n : ℚ)

end

end A157800.P3568493262990991124

namespace A157800

/-- `A000244(A005843(n))*A285068(n)/A000244(n)` -/
def P3568493262990991124.Spec : Prop :=
  ∀ n, P3568493262990991124.a n = (A157800 n : ℚ)

end A157800

/-!
# A157802: a(n) = 27225*n^2 - 51302*n + 24168.

The programs for A157802, there is no canonical definition to state claims against.
-/

/-! ## A157802.P11158673703664640344

`round((A157804(n+1)/A157803(n+1))²)`
-/

namespace A157802.P11158673703664640344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157804 (n + 1) : ℚ) / (A157803 (n + 1) : ℚ)) ^ 2)

end

end A157802.P11158673703664640344

/-!
# A157803: a(n) = 8984250*n - 8464830.

The programs for A157803, there is no canonical definition to state claims against.
-/

/-! ## A157803.P11009201682333998448

`round(A157804(n+1)/sqrt(A157802(n+1)))`
-/

namespace A157803.P11009201682333998448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157804 (n + 1) : ℝ) / Real.sqrt (A157802 (n + 1) : ℝ))

end

end A157803.P11009201682333998448

/-!
# A157804: a(n) = 1482401250*n^2 - 2793393900*n + 1315947601.

The programs for A157804, there is no canonical definition to state claims against.
-/

/-! ## A157804.P10975448042289235835

`round(sqrt(A157802(n+1))*A157803(n+1))`
-/

namespace A157804.P10975448042289235835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157802 (n + 1) : ℝ) * (A157803 (n + 1) : ℝ))

end

end A157804.P10975448042289235835

/-!
# A157805: Numerator of Euler(n,3).

The programs for A157805, there is no canonical definition to state claims against.
-/

/-! ## A157805.P7422308552820243725

`A000079(A001511(n+1)+n)-A143074(n)`
-/

namespace A157805.P7422308552820243725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001511 (n + 1) + (n : ℤ)).toNat - A143074 n

end

end A157805.P7422308552820243725

/-! ## A157805.P11261268968447956958

`A198631(n)+A000225(n)*A171977(n+1)`
-/

namespace A157805.P11261268968447956958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 n + A000225 n * A171977 (n + 1)

end

end A157805.P11261268968447956958

/-! ## A157805.P13182048714932832748

`A000079(n)*A171977(n+1)-A143074(n)`
-/

namespace A157805.P13182048714932832748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A171977 (n + 1) - A143074 n

end

end A157805.P13182048714932832748

/-! ## A157805.P10126011898135901806

`A335956(n+1)+A198631(n)-A006519(n+1)`
-/

namespace A157805.P10126011898135901806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335956 (n + 1) + (A198631 n - A006519 (n + 1))

end

end A157805.P10126011898135901806

/-! ## A157805.P7314891954571923042

`A198631(n)+A000918(n+1)*A006519(n+1)`
-/

namespace A157805.P7314891954571923042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 n + A000918 (n + 1) * A006519 (n + 1)

end

end A157805.P7314891954571923042

/-!
# A157806: Absolute value of the difference between numerator and denominator of fractions arranged by Cantor's ordering (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, ...) with equivalent fractions removed.

The programs for A157806, the canonical program `A157806.P18218923952273049955` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157806 has offset 0).

The definition of A157806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157806.P18218923952273049955

`abs(A020652(n+1)-A020653(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A157806

/-- `abs(A020652(n+1)-A020653(n+1))` -/
def P18218923952273049955.Spec : Prop :=
  ∀ n, P18218923952273049955.a n = A157806 n

theorem P18218923952273049955.correct : P18218923952273049955.Spec := by
  intro n
  simp only [A157806]

end A157806

/-! ## A157806.P12628547847497207378

`abs(A157807(n+1)-A157813(n+1))`
-/

namespace A157806.P12628547847497207378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157807 (n + 1) - A157813 (n + 1)|

end

end A157806.P12628547847497207378

namespace A157806

/-- `abs(A157807(n+1)-A157813(n+1))` -/
def P12628547847497207378.Spec : Prop :=
  ∀ n, P12628547847497207378.a n = A157806 n

end A157806

/-! ## A157806.P662347890049768098

`∑{d}[A020652(n+1)-A020653(n+1), A000010(#)]`
-/

namespace A157806.P662347890049768098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1) - A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A157806.P662347890049768098

namespace A157806

/-- `∑{d}[A020652(n+1)-A020653(n+1), A000010(#)]` -/
def P662347890049768098.Spec : Prop :=
  ∀ n, P662347890049768098.a n = A157806 n

end A157806

/-! ## A157806.P1648031705865356397

`A049581(eq[1, A003989(n+1)])`
-/

namespace A157806.P1648031705865356397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157806.P1648031705865356397

namespace A157806

/-- `A049581(eq[1, A003989(n+1)])` -/
def P1648031705865356397.Spec : Prop :=
  ∀ n, P1648031705865356397.a n = A157806 n

end A157806

/-! ## A157806.P2604763579977910669

`A049581(lt[A003989(n+1), 2])`
-/

namespace A157806.P2604763579977910669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A157806.P2604763579977910669

namespace A157806

/-- `A049581(lt[A003989(n+1), 2])` -/
def P2604763579977910669.Spec : Prop :=
  ∀ n, P2604763579977910669.a n = A157806 n

end A157806

/-! ## A157806.P3499342682355413508

`A049581(record[n/A003989(n+1)])`
-/

namespace A157806.P3499342682355413508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A003989 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A157806.P3499342682355413508

namespace A157806

/-- `A049581(record[n/A003989(n+1)])` -/
def P3499342682355413508.Spec : Prop :=
  ∀ n, P3499342682355413508.a n = A157806 n

end A157806

/-! ## A157806.P18239904306682888259

`A049581(eq[A003990(n+1), A003991(n+1)])`
-/

namespace A157806.P18239904306682888259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A157806.P18239904306682888259

namespace A157806

/-- `A049581(eq[A003990(n+1), A003991(n+1)])` -/
def P18239904306682888259.Spec : Prop :=
  ∀ n, P18239904306682888259.a n = A157806 n

end A157806

/-! ## A157806.P753173991883787193

`abs(A071912(2*(n+2))-A038566(n+2))`
-/

namespace A157806.P753173991883787193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071912 (2 * (n + 2)) - A038566 (n + 2)|

end

end A157806.P753173991883787193

namespace A157806

/-- `abs(A071912(2*(n+2))-A038566(n+2))` -/
def P753173991883787193.Spec : Prop :=
  ∀ n, P753173991883787193.a n = A157806 n

end A157806

/-! ## A157806.P7528713018998297154

`abs(A071912(2*(n+2))-(A038567(n+1)-A020653(n+1)))`
-/

namespace A157806.P7528713018998297154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071912 (2 * (n + 2)) - (A038567 (n + 1) - A020653 (n + 1))|

end

end A157806.P7528713018998297154

namespace A157806

/-- `abs(A071912(2*(n+2))-(A038567(n+1)-A020653(n+1)))` -/
def P7528713018998297154.Spec : Prop :=
  ∀ n, P7528713018998297154.a n = A157806 n

end A157806

/-! ## A157806.P7868034545976730735

`A092339(A274170(n+1))`
-/

namespace A157806.P7868034545976730735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A274170 (n + 1)).toNat

end

end A157806.P7868034545976730735

namespace A157806

/-- `A092339(A274170(n+1))` -/
def P7868034545976730735.Spec : Prop :=
  ∀ n, P7868034545976730735.a n = A157806 n

end A157806

/-!
# A157807: Numerators of fractions arranged in "antidiagonal boustrophedon" ordering with equivalent fractions removed: (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, 5/2, ...).

The programs for A157807, the canonical program `A157807.P1767010887328603501` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157807 has offset 1).

The definition of A157807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157807.P15003395975393142561

`A038567(n+1)-A157813(n+1)`
-/

namespace A157807.P15003395975393142561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A157813 (n + 1)

end

end A157807.P15003395975393142561

namespace A157807

/-- `A038567(n+1)-A157813(n+1)` -/
def P15003395975393142561.Spec : Prop :=
  ∀ n, P15003395975393142561.a n = A157807 (n + 1)

theorem P15003395975393142561.correct : P15003395975393142561.Spec := by
  intro n
  simp only [A157807, Nat.add_sub_cancel, A157807.P15003395975393142561.a, A157807.P1767010887328603501.a, A038567, A038567.P2197162168153652474.a, A092543, A092543.P4363946767756583020.a, A157813, A157813.P14905809734430770879.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002024, A002024.P11700297927830783882.a, A010751, A010751.P13596492722488707234.a, A077478, A077478.P5509421538947395275.a, A110654, A110654.P360289776162656549.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A000005, A000005.P16091521709108585461.a, A002260, A002260.P9170571874073898642.a, A007590, A007590.P9530274664467440414.a, A025581, A025581.P16112744757063613497.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A157807

/-! ## A157807.P18041672533326807765

`A038568(2*(n+1))-A157813(n+1)`
-/

namespace A157807.P18041672533326807765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * (n + 1)) - A157813 (n + 1)

end

end A157807.P18041672533326807765

namespace A157807

/-- `A038568(2*(n+1))-A157813(n+1)` -/
def P18041672533326807765.Spec : Prop :=
  ∀ n, P18041672533326807765.a n = A157807 (n + 1)

end A157807

/-! ## A157807.P10674236616110331138

`A038569(2*n+1)-A157813(n+1)`
-/

namespace A157807.P10674236616110331138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n + 1) - A157813 (n + 1)

end

end A157807.P10674236616110331138

namespace A157807

/-- `A038569(2*n+1)-A157813(n+1)` -/
def P10674236616110331138.Spec : Prop :=
  ∀ n, P10674236616110331138.a n = A157807 (n + 1)

end A157807

/-! ## A157807.P5074652961221172377

`A020652(n+1)+A020653(n+1)-A157813(n+1)`
-/

namespace A157807.P5074652961221172377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1) + (A020653 (n + 1) - A157813 (n + 1))

end

end A157807.P5074652961221172377

namespace A157807

/-- `A020652(n+1)+A020653(n+1)-A157813(n+1)` -/
def P5074652961221172377.Spec : Prop :=
  ∀ n, P5074652961221172377.a n = A157807 (n + 1)

theorem P5074652961221172377.correct : P5074652961221172377.Spec := by
  intro n
  simp only [A157807, Nat.add_sub_cancel, A157807.P5074652961221172377.a, A157807.P1767010887328603501.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A092543, A092543.P4363946767756583020.a, A157813, A157813.P14905809734430770879.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P9170571874073898642.a, A010751, A010751.P13596492722488707234.a, A038567, A038567.P2197162168153652474.a, A077478, A077478.P5509421538947395275.a, A110654, A110654.P360289776162656549.a, A000005, A000005.P16091521709108585461.a, A007590, A007590.P9530274664467440414.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A025581, A025581.P16112744757063613497.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A157807

/-! ## A157807.P10560731230316633397

`A020653(n+1)+A038566(n+2)-A157813(n+1)`
-/

namespace A157807.P10560731230316633397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1) + (A038566 (n + 2) - A157813 (n + 1))

end

end A157807.P10560731230316633397

namespace A157807

/-- `A020653(n+1)+A038566(n+2)-A157813(n+1)` -/
def P10560731230316633397.Spec : Prop :=
  ∀ n, P10560731230316633397.a n = A157807 (n + 1)

end A157807

/-! ## A157807.P5865186387507774365

`A157813(A054430(n+1))`
-/

namespace A157807.P5865186387507774365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157813 (A054430 (n + 1)).toNat

end

end A157807.P5865186387507774365

namespace A157807

/-- `A157813(A054430(n+1))` -/
def P5865186387507774365.Spec : Prop :=
  ∀ n, P5865186387507774365.a n = A157807 (n + 1)

end A157807

/-! ## A157807.P1767010887328603501

`A092543(A166527(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157807

/-- `A092543(A166527(n+1))` -/
def P1767010887328603501.Spec : Prop :=
  ∀ n, P1767010887328603501.a n = A157807 (n + 1)

theorem P1767010887328603501.correct : P1767010887328603501.Spec := by
  intro n
  simp only [A157807, Nat.add_sub_cancel]

end A157807

/-! ## A157807.P1248368284031790756

`A092543(eq[1, A003989(n+1)]+1)`
-/

namespace A157807.P1248368284031790756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157807.P1248368284031790756

namespace A157807

/-- `A092543(eq[1, A003989(n+1)]+1)` -/
def P1248368284031790756.Spec : Prop :=
  ∀ n, P1248368284031790756.a n = A157807 (n + 1)

end A157807

/-! ## A157807.P7643552055100373965

`A071912(2*n+3)-A157813(n+1)`
-/

namespace A157807.P7643552055100373965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (2 * n + 3) - A157813 (n + 1)

end

end A157807.P7643552055100373965

namespace A157807

/-- `A071912(2*n+3)-A157813(n+1)` -/
def P7643552055100373965.Spec : Prop :=
  ∀ n, P7643552055100373965.a n = A157807 (n + 1)

end A157807

/-!
# A157808: Numerator of Euler(n,4).

The programs for A157808, there is no canonical definition to state claims against.
-/

/-! ## A157808.P13731830050394369906

`A080079(A157812(n))`
-/

namespace A157808.P13731830050394369906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A157812 n).toNat

end

end A157808.P13731830050394369906

/-! ## A157808.P3034979652009742448

`A035327(A157812(n)-1)`
-/

namespace A157808.P3034979652009742448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A157812 n - 1).toNat

end

end A157808.P3034979652009742448

/-! ## A157808.P5792137545916204205

`A089170(n)+A035327(A157812(n))`
-/

namespace A157808.P5792137545916204205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n + A035327 (A157812 n).toNat

end

end A157808.P5792137545916204205

/-!
# A157809: Numerator of Bernoulli(n,3).

The programs for A157809, there is no canonical definition to state claims against.
-/

/-! ## A157809.P1638759652150239746

`A164558(n)+A001787(n)*A027642(n)`
-/

namespace A157809.P1638759652150239746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n + A001787 n * A027642 n

end

end A157809.P1638759652150239746

/-! ## A157809.P17851891206663669025

`A164555(n)+A027642(n)*A215149(n)`
-/

namespace A157809.P17851891206663669025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + A027642 n * A215149 n

end

end A157809.P17851891206663669025

/-! ## A157809.P1944711503171084965

`A157920(n)-A027471(n+1)*A027642(n)`
-/

namespace A157809.P1944711503171084965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157920 n - A027471 (n + 1) * A027642 n

end

end A157809.P1944711503171084965

/-!
# A157810: Period 4: repeat [2, 1, 3, 2].

The programs for A157810, the canonical program `A157810.P12658727289543899723` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157810 has offset 1).

The definition of A157810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157810.P12658727289543899723

`a(n-4)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157810

/-- `a(n-4)` -/
def P12658727289543899723.Spec : Prop :=
  ∀ n, (P12658727289543899723.a n : ℤ) = A157810 (n + 1)

theorem P12658727289543899723.correct : P12658727289543899723.Spec := by
  intro n
  simp only [A157810, Nat.add_sub_cancel]

end A157810

/-!
# A157812: Numerator of Euler(n,5).

The programs for A157812, there is no canonical definition to state claims against.
-/

/-! ## A157812.P9899547108628281334

`A000079(n)²*A000079(A001511(n+1))-A157808(n)`
-/

namespace A157812.P9899547108628281334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A000079 (A001511 (n + 1)).toNat - A157808 n

end

end A157812.P9899547108628281334

/-!
# A157813: Denominators of fractions arranged in "antidiagonal boustrophedon" ordering with equivalent fractions removed: (1/1, 2/1, 1/2, 1/3, 3/1, 4/1, 3/2, 2/3, 1/4, 1/5, 5/1, 6/1, 5/2, ...).

The programs for A157813, the canonical program `A157813.P14905809734430770879` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157813 has offset 1).

The definition of A157813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157813.P14905809734430770879

`A038567(n+1)-A157807(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157813

/-- `A038567(n+1)-A157807(n+1)` -/
def P14905809734430770879.Spec : Prop :=
  ∀ n, P14905809734430770879.a n = A157813 (n + 1)

theorem P14905809734430770879.correct : P14905809734430770879.Spec := by
  intro n
  simp only [A157813, Nat.add_sub_cancel]

end A157813

/-! ## A157813.P16553871786849355666

`A038569(Δ[n²])-A157807(n+1)`
-/

namespace A157813.P16553871786849355666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A157807 (n + 1)

end

end A157813.P16553871786849355666

namespace A157813

/-- `A038569(Δ[n²])-A157807(n+1)` -/
def P16553871786849355666.Spec : Prop :=
  ∀ n, P16553871786849355666.a n = A157813 (n + 1)

end A157813

/-! ## A157813.P3834144587124347362

`A038568(2*(n+1))-A157807(n+1)`
-/

namespace A157813.P3834144587124347362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * (n + 1)) - A157807 (n + 1)

end

end A157813.P3834144587124347362

namespace A157813

/-- `A038568(2*(n+1))-A157807(n+1)` -/
def P3834144587124347362.Spec : Prop :=
  ∀ n, P3834144587124347362.a n = A157813 (n + 1)

end A157813

/-! ## A157813.P11717478442362103178

`A020652(n+1)+A020653(n+1)-A157807(n+1)`
-/

namespace A157813.P11717478442362103178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1) + (A020653 (n + 1) - A157807 (n + 1))

end

end A157813.P11717478442362103178

namespace A157813

/-- `A020652(n+1)+A020653(n+1)-A157807(n+1)` -/
def P11717478442362103178.Spec : Prop :=
  ∀ n, P11717478442362103178.a n = A157813 (n + 1)

theorem P11717478442362103178.correct : P11717478442362103178.Spec := by
  intro n
  simp only [A157813, Nat.add_sub_cancel, A157813.P11717478442362103178.a, A157813.P14905809734430770879.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A038567, A038567.P2197162168153652474.a, A157807, A157807.P1767010887328603501.a, A002260, A002260.P9170571874073898642.a, A092543, A092543.P4363946767756583020.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A002024, A002024.P11700297927830783882.a, A010751, A010751.P13596492722488707234.a, A025581, A025581.P16112744757063613497.a, A077478, A077478.P5509421538947395275.a, A110654, A110654.P360289776162656549.a, A000005, A000005.P16091521709108585461.a, A007590, A007590.P9530274664467440414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A157813

/-! ## A157813.P6902437288933197601

`A020653(n+1)+A038566(n+2)-A157807(n+1)`
-/

namespace A157813.P6902437288933197601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1) + (A038566 (n + 2) - A157807 (n + 1))

end

end A157813.P6902437288933197601

namespace A157813

/-- `A020653(n+1)+A038566(n+2)-A157807(n+1)` -/
def P6902437288933197601.Spec : Prop :=
  ∀ n, P6902437288933197601.a n = A157813 (n + 1)

end A157813

/-! ## A157813.P6750157950092338111

`A157807(A054430(n+1))`
-/

namespace A157813.P6750157950092338111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157807 (A054430 (n + 1)).toNat

end

end A157813.P6750157950092338111

namespace A157813

/-- `A157807(A054430(n+1))` -/
def P6750157950092338111.Spec : Prop :=
  ∀ n, P6750157950092338111.a n = A157813 (n + 1)

end A157813

/-! ## A157813.P7943590588911722183

`A038567(n+1)-A092543(eq[1, A003989(n+1)]+1)`
-/

namespace A157813.P7943590588911722183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (n + 1) - A092543 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A157813.P7943590588911722183

namespace A157813

/-- `A038567(n+1)-A092543(eq[1, A003989(n+1)]+1)` -/
def P7943590588911722183.Spec : Prop :=
  ∀ n, P7943590588911722183.a n = A157813 (n + 1)

end A157813

/-! ## A157813.P6969047735906037666

`A071912(2*n+3)-A157807(n+1)`
-/

namespace A157813.P6969047735906037666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (2 * n + 3) - A157807 (n + 1)

end

end A157813.P6969047735906037666

namespace A157813

/-- `A071912(2*n+3)-A157807(n+1)` -/
def P6969047735906037666.Spec : Prop :=
  ∀ n, P6969047735906037666.a n = A157813 (n + 1)

end A157813

/-! ## A157813.P5347113613261011004

`A092542(A166527(n+1))`
-/

namespace A157813.P5347113613261011004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (A166527 (n + 1)).toNat

end

end A157813.P5347113613261011004

namespace A157813

/-- `A092542(A166527(n+1))` -/
def P5347113613261011004.Spec : Prop :=
  ∀ n, P5347113613261011004.a n = A157813 (n + 1)

end A157813

/-!
# A157814: a(n) = 27225*n^2 - 2*n.

The programs for A157814, there is no canonical definition to state claims against.
-/

/-! ## A157814.P4108592837881205609

`A157820(n+1)-4*(n+1)`
-/

namespace A157814.P4108592837881205609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157820 (n + 1) - (4 * (n + 1) : ℤ)

end

end A157814.P4108592837881205609

/-! ## A157814.P2812094226382775583

`A157820(2*(n+1))%A157820(n+1)`
-/

namespace A157814.P2812094226382775583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157820 (2 * (n + 1))) (A157820 (n + 1))

end

end A157814.P2812094226382775583

/-!
# A157815: a(n) = 8984250*n - 330.

The programs for A157815, there is no canonical definition to state claims against.
-/

/-! ## A157815.P1202194525899723605

`A157769(3*(n+1))-(A157821(n+1)+A157769(n+1))`
-/

namespace A157815.P1202194525899723605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157769 (3 * (n + 1)) - (A157821 (n + 1) + A157769 (n + 1))

end

end A157815.P1202194525899723605

/-!
# A157816: a(n) = 1482401250*n^2 - 108900*n + 1.

The programs for A157816, there is no canonical definition to state claims against.
-/

/-! ## A157816.P18192319220587758469

`A157822(2*(n+1))%(1-A157822(n+1))`
-/

namespace A157816.P18192319220587758469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157822 (2 * (n + 1))) (1 - A157822 (n + 1))

end

end A157816.P18192319220587758469

/-!
# A157817: Numerator of Bernoulli(n, 1/4).

The programs for A157817, there is no canonical definition to state claims against.
-/

/-! ## A157817.P12519900229051477899

`A157779(n)-A119879(A000124(n))`
-/

namespace A157817.P12519900229051477899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157779 n - A119879 (A000124 n).toNat

end

end A157817.P12519900229051477899

/-! ## A157817.P8635731205424439462

`A122045(n)+A157779(n)-A119882(n)`
-/

namespace A157817.P8635731205424439462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n + (A157779 n - A119882 n)

end

end A157817.P8635731205424439462

/-! ## A157817.P12238166347197209041

`A157779(n)-A000035(n)*A119882(n)`
-/

namespace A157817.P12238166347197209041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157779 n - A000035 n * A119882 n

end

end A157817.P12238166347197209041

/-! ## A157817.P17749292279134392476

`2*A285866(n)-A157819(n)`
-/

namespace A157817.P17749292279134392476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285866 n - A157819 n

end

end A157817.P17749292279134392476

/-! ## A157817.P17716169706033611697

`A157779(n)+A243963(n)-A109573(n)`
-/

namespace A157817.P17716169706033611697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157779 n + (A243963 n - A109573 n)

end

end A157817.P17716169706033611697

/-!
# A157818: Denominator of Bernoulli(n, 1/4).

The programs for A157818, the canonical program `A157818.P6307452564829515013` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157818 has offset 0).

The definition of A157818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157818.P6307452564829515013

`4^n*A141459(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157818

/-- `4^n*A141459(n)` -/
def P6307452564829515013.Spec : Prop :=
  ∀ n, P6307452564829515013.a n = A157818 n

theorem P6307452564829515013.correct : P6307452564829515013.Spec := by
  intro n
  simp only [A157818]

end A157818

/-! ## A157818.P7358569830121138768

`lcm(4^n, A027642(n))`
-/

namespace A157818.P7358569830121138768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n : ℤ) (A027642 n)

end

end A157818.P7358569830121138768

namespace A157818

/-- `lcm(4^n, A027642(n))` -/
def P7358569830121138768.Spec : Prop :=
  ∀ n, (P7358569830121138768.a n : ℤ) = A157818 n

end A157818

/-! ## A157818.P1779163846780893933

`A056450(n)*A157782(n)`
-/

namespace A157818.P1779163846780893933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A157782 n

end

end A157818.P1779163846780893933

namespace A157818

/-- `A056450(n)*A157782(n)` -/
def P1779163846780893933.Spec : Prop :=
  ∀ n, P1779163846780893933.a n = A157818 n

end A157818

/-! ## A157818.P2237325557693380048

`A081294(n)*A141056(n)`
-/

namespace A157818.P2237325557693380048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A141056 n

end

end A157818.P2237325557693380048

namespace A157818

/-- `A081294(n)*A141056(n)` -/
def P2237325557693380048.Spec : Prop :=
  ∀ n, P2237325557693380048.a n = A157818 n

end A157818

/-! ## A157818.P10527536718128391282

`lcm(A000302(n), A141056(n))`
-/

namespace A157818.P10527536718128391282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A141056 n)

end

end A157818.P10527536718128391282

namespace A157818

/-- `lcm(A000302(n), A141056(n))` -/
def P10527536718128391282.Spec : Prop :=
  ∀ n, (P10527536718128391282.a n : ℤ) = A157818 n

end A157818

/-! ## A157818.P2385733012626546478

`lcm(A141459(n), A262710(n))`
-/

namespace A157818.P2385733012626546478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141459 n) (A262710 n)

end

end A157818.P2385733012626546478

namespace A157818

/-- `lcm(A141459(n), A262710(n))` -/
def P2385733012626546478.Spec : Prop :=
  ∀ n, (P2385733012626546478.a n : ℤ) = A157818 n

end A157818

/-! ## A157818.P10078831362420351604

`record[A103424(n)]*A141056(n)`
-/

namespace A157818.P10078831362420351604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A141056 n

end

end A157818.P10078831362420351604

namespace A157818

/-- `record[A103424(n)]*A141056(n)` -/
def P10078831362420351604.Spec : Prop :=
  ∀ n, P10078831362420351604.a n = A157818 n

end A157818

/-! ## A157818.P13227550850515267913

`A141459(n)*A213173(2*n)`
-/

namespace A157818.P13227550850515267913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A213173 (2 * n)

end

end A157818.P13227550850515267913

namespace A157818

/-- `A141459(n)*A213173(2*n)` -/
def P13227550850515267913.Spec : Prop :=
  ∀ n, P13227550850515267913.a n = A157818 n

end A157818

/-! ## A157818.P10359531264609097939

`A141459(n)*A224783(2*n)`
-/

namespace A157818.P10359531264609097939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A224783 (2 * n)

end

end A157818.P10359531264609097939

namespace A157818

/-- `A141459(n)*A224783(2*n)` -/
def P10359531264609097939.Spec : Prop :=
  ∀ n, P10359531264609097939.a n = A157818 n

end A157818

/-! ## A157818.P1670099995198413804

`lcm(A176289(n), A213173(2*n))`
-/

namespace A157818.P1670099995198413804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176289 n) (A213173 (2 * n))

end

end A157818.P1670099995198413804

namespace A157818

/-- `lcm(A176289(n), A213173(2*n))` -/
def P1670099995198413804.Spec : Prop :=
  ∀ n, (P1670099995198413804.a n : ℤ) = A157818 n

end A157818

/-! ## A157818.P5646535727566230040

`record[2^A176447(n)]*A141056(n)`
-/

namespace A157818.P5646535727566230040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A176447 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (A141056 n : ℚ)

end

end A157818.P5646535727566230040

namespace A157818

/-- `record[2^A176447(n)]*A141056(n)` -/
def P5646535727566230040.Spec : Prop :=
  ∀ n, P5646535727566230040.a n = (A157818 n : ℚ)

end A157818

/-! ## A157818.P5928121981449283648

`lcm(A011782(2*n+1), A157780(n))`
-/

namespace A157818.P5928121981449283648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 (2 * n + 1)) (A157780 n)

end

end A157818.P5928121981449283648

namespace A157818

/-- `lcm(A011782(2*n+1), A157780(n))` -/
def P5928121981449283648.Spec : Prop :=
  ∀ n, (P5928121981449283648.a n : ℤ) = A157818 n

end A157818

/-! ## A157818.P1734844026656406359

`A131577(A008486(n)-n)*A141056(n)`
-/

namespace A157818.P1734844026656406359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A008486 n - (n : ℤ)).toNat * A141056 n

end

end A157818.P1734844026656406359

namespace A157818

/-- `A131577(A008486(n)-n)*A141056(n)` -/
def P1734844026656406359.Spec : Prop :=
  ∀ n, P1734844026656406359.a n = A157818 n

end A157818

/-! ## A157818.P17050187906539810515

`record[A016116(n+1)*A131575(n)]*A141056(n)`
-/

namespace A157818.P17050187906539810515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A141056 n

end

end A157818.P17050187906539810515

namespace A157818

/-- `record[A016116(n+1)*A131575(n)]*A141056(n)` -/
def P17050187906539810515.Spec : Prop :=
  ∀ n, P17050187906539810515.a n = A157818 n

end A157818

/-! ## A157818.P8906504326204304377

`record[A029744(n+1)*A131575(n)]*A141056(n)`
-/

namespace A157818.P8906504326204304377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) * A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A141056 n

end

end A157818.P8906504326204304377

namespace A157818

/-- `record[A029744(n+1)*A131575(n)]*A141056(n)` -/
def P8906504326204304377.Spec : Prop :=
  ∀ n, P8906504326204304377.a n = A157818 n

end A157818

/-! ## A157818.P4138290094632715073

`A157782(n+1)/A141459(n+1)*A157782(n)`
-/

namespace A157818.P4138290094632715073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157782 (n + 1) : ℚ) / (A141459 (n + 1) : ℚ) * (A157782 n : ℚ)

end

end A157818.P4138290094632715073

namespace A157818

/-- `A157782(n+1)/A141459(n+1)*A157782(n)` -/
def P4138290094632715073.Spec : Prop :=
  ∀ n, P4138290094632715073.a n = (A157818 n : ℚ)

end A157818

/-! ## A157818.P8518793746571745384

`record[2^n*A000035(A054429(n+1))]*A141056(n)`
-/

namespace A157818.P8518793746571745384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000035 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A141056 n

end

end A157818.P8518793746571745384

namespace A157818

/-- `record[2^n*A000035(A054429(n+1))]*A141056(n)` -/
def P8518793746571745384.Spec : Prop :=
  ∀ n, P8518793746571745384.a n = A157818 n

end A157818

/-! ## A157818.P10518287003093443878

`record[2^n*A067742(A020639(n+1))]*A141056(n)`
-/

namespace A157818.P10518287003093443878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A067742 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A141056 n

end

end A157818.P10518287003093443878

namespace A157818

/-- `record[2^n*A067742(A020639(n+1))]*A141056(n)` -/
def P10518287003093443878.Spec : Prop :=
  ∀ n, P10518287003093443878.a n = A157818 n

end A157818

/-! ## A157818.P8910019151638805209

`record[2^n*A135416(A135517(n+1))]*A141056(n)`
-/

namespace A157818.P8910019151638805209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A135416 (A135517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A141056 n

end

end A157818.P8910019151638805209

namespace A157818

/-- `record[2^n*A135416(A135517(n+1))]*A141056(n)` -/
def P8910019151638805209.Spec : Prop :=
  ∀ n, P8910019151638805209.a n = A157818 n

end A157818

/-! ## A157818.P5370755865626972345

`A141459(n)*A157782(2*n+1)`
-/

namespace A157818.P5370755865626972345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n * A157782 (2 * n + 1)

end

end A157818.P5370755865626972345

namespace A157818

/-- `A141459(n)*A157782(2*n+1)` -/
def P5370755865626972345.Spec : Prop :=
  ∀ n, P5370755865626972345.a n = A157818 n

end A157818

/-!
# A157819: Numerator of Bernoulli(n, -1/4).

The programs for A157819, there is no canonical definition to state claims against.
-/

/-! ## A157819.P4561651751639685877

`(A158697(n)+A158694(n))/2`
-/

namespace A157819.P4561651751639685877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158697 n + A158694 n : ℚ) / 2

end

end A157819.P4561651751639685877

/-! ## A157819.P18104398635467891719

`2*A285866(n)-A157817(n)`
-/

namespace A157819.P18104398635467891719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285866 n - A157817 n

end

end A157819.P18104398635467891719

/-!
# A157820: a(n) = 27225*n^2 + 2*n.

The programs for A157820, there is no canonical definition to state claims against.
-/

/-! ## A157820.P13614599956946676162

`4*(n+1)+A157814(n+1)`
-/

namespace A157820.P13614599956946676162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A157814 (n + 1)

end

end A157820.P13614599956946676162

/-! ## A157820.P9829862202929250931

`A157814(n+1)+Δ[A046092(n)]`
-/

namespace A157820.P9829862202929250931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157814 (n + 1) + (f1 (n + 1) - f1 n)

end

end A157820.P9829862202929250931

/-! ## A157820.P7024015061803130172

`A157814(n+1)+Δ[A142463(n)]`
-/

namespace A157820.P7024015061803130172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157814 (n + 1) + (f1 (n + 1) - f1 n)

end

end A157820.P7024015061803130172

/-! ## A157820.P11856210211083924409

`A157814(n+1)+Δ[A001844(n)]`
-/

namespace A157820.P11856210211083924409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157814 (n + 1) + (f1 (n + 1) - f1 n)

end

end A157820.P11856210211083924409

/-! ## A157820.P12198056642668518143

`A157814(n+1)+A052938(A017137(n))`
-/

namespace A157820.P12198056642668518143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157814 (n + 1) + A052938 (A017137 n).toNat

end

end A157820.P12198056642668518143

/-!
# A157821: a(n) = 8984250*n + 330.

The programs for A157821, there is no canonical definition to state claims against.
-/

/-! ## A157821.P7889909304424707056

`A157769(n+1)+A157797(n+1)-A157803(n+1)`
-/

namespace A157821.P7889909304424707056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157769 (n + 1) + (A157797 (n + 1) - A157803 (n + 1))

end

end A157821.P7889909304424707056

/-!
# A157823: a(n) = A156591(n) + A156591(n+1).

The programs for A157823, the canonical program `A157823.P16930194432974958498` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157823 has offset 0).

The definition of A157823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157823.P16930194432974958498

`2*a(n-1)` with `a(0)=-5, a(1)=-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157823

/-- `2*a(n-1)` -/
def P16930194432974958498.Spec : Prop :=
  ∀ n, P16930194432974958498.a n = A157823 n

theorem P16930194432974958498.correct : P16930194432974958498.Spec := by
  intro n
  simp only [A157823]

end A157823

/-! ## A157823.P16460972436249083955

`A156591(n)+A156591(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157823.P16460972436249083955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156591 n + A156591 (n + 1)

end

end A157823.P16460972436249083955

namespace A157823

/-- `A156591(n)+A156591(n+1)` -/
def P16460972436249083955.Spec : Prop :=
  ∀ n, P16460972436249083955.a n = A157823 n

end A157823

/-! ## A157823.P3447691606614691484

`ogf((-5+9x)/(1-2x))`
-/

namespace A157823.P3447691606614691484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-5, 9] [1, -2] n

end

end A157823.P3447691606614691484

namespace A157823

/-- `ogf((-5+9x)/(1-2x))` -/
def P3447691606614691484.Spec : Prop :=
  ∀ n, P3447691606614691484.a n = A157823 n

end A157823

/-! ## A157823.P5691413850533518731

`a(n-1)+a(n-1)` with `a(0)=-5, a(1)=-1`
-/

namespace A157823.P5691413850533518731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-5, -1] fun n a =>
  a (n - 1) + a (n - 1)

end

end A157823.P5691413850533518731

namespace A157823

/-- `a(n-1)+a(n-1)` -/
def P5691413850533518731.Spec : Prop :=
  ∀ n, P5691413850533518731.a n = A157823 n

theorem P5691413850533518731.correct : P5691413850533518731.Spec := by
  intro n
  simp only [A157823, Nat.add_sub_cancel, A157823.P5691413850533518731.a, A157823.P16930194432974958498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157823

/-! ## A157823.P9306149149931096832

`A114637(n+1)-A270841(n+1)`
-/

namespace A157823.P9306149149931096832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) - A270841 (n + 1)

end

end A157823.P9306149149931096832

namespace A157823

/-- `A114637(n+1)-A270841(n+1)` -/
def P9306149149931096832.Spec : Prop :=
  ∀ n, P9306149149931096832.a n = A157823 n

end A157823

/-! ## A157823.P3358358156707578422

`A084210(floor(2/(n+1)))-A094373(n)`
-/

namespace A157823.P3358358156707578422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084210 ⌊2 / (n + 1 : ℚ)⌋.toNat - A094373 n

end

end A157823.P3358358156707578422

namespace A157823

/-- `A084210(floor(2/(n+1)))-A094373(n)` -/
def P3358358156707578422.Spec : Prop :=
  ∀ n, P3358358156707578422.a n = A157823 n

end A157823

/-! ## A157823.P12806011149869562981

`A021026(n)-(A131577(n)+A010710(n+1))`
-/

namespace A157823.P12806011149869562981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021026 n - (A131577 n + A010710 (n + 1))

end

end A157823.P12806011149869562981

namespace A157823

/-- `A021026(n)-(A131577(n)+A010710(n+1))` -/
def P12806011149869562981.Spec : Prop :=
  ∀ n, P12806011149869562981.a n = A157823 n

end A157823

/-! ## A157823.P8020634289941797875

`Δ[a(n-1)-2^(n-2)]` with `a(0)=5, a(1)=0`
-/

namespace A157823.P8020634289941797875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157823.P8020634289941797875

namespace A157823

/-- `Δ[a(n-1)-2^(n-2)]` -/
def P8020634289941797875.Spec : Prop :=
  ∀ n, P8020634289941797875.a n = (A157823 n : ℚ)

end A157823

/-! ## A157823.P655331369892034868

`Δ[A154589(n)]`
-/

namespace A157823.P655331369892034868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157823.P655331369892034868

namespace A157823

/-- `Δ[A154589(n)]` -/
def P655331369892034868.Spec : Prop :=
  ∀ n, P655331369892034868.a n = A157823 n

end A157823

/-! ## A157823.P8622366423936399422

`A154589(n+1)-A154589(n)`
-/

namespace A157823.P8622366423936399422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 (n + 1) - A154589 n

end

end A157823.P8622366423936399422

namespace A157823

/-- `A154589(n+1)-A154589(n)` -/
def P8622366423936399422.Spec : Prop :=
  ∀ n, P8622366423936399422.a n = A157823 n

end A157823

/-! ## A157823.P2509976515954823275

`Δ[(A131577(n)+2)*A153881(n+1)]`
-/

namespace A157823.P2509976515954823275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + 2) * A153881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157823.P2509976515954823275

namespace A157823

/-- `Δ[(A131577(n)+2)*A153881(n+1)]` -/
def P2509976515954823275.Spec : Prop :=
  ∀ n, P2509976515954823275.a n = A157823 n

end A157823

/-! ## A157823.P13543542949851469893

`A000225(n)-A033484(abs(1-n))-1`
-/

namespace A157823.P13543542949851469893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A033484 |1 - (n : ℤ)|.toNat - 1

end

end A157823.P13543542949851469893

namespace A157823

/-- `A000225(n)-A033484(abs(1-n))-1` -/
def P13543542949851469893.Spec : Prop :=
  ∀ n, P13543542949851469893.a n = A157823 n

end A157823

/-! ## A157823.P13083995281470424968

`A185346(n)-(A254076(n+1)+A254076(n))`
-/

namespace A157823.P13083995281470424968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185346 n - (A254076 (n + 1) + A254076 n)

end

end A157823.P13083995281470424968

namespace A157823

/-- `A185346(n)-(A254076(n+1)+A254076(n))` -/
def P13083995281470424968.Spec : Prop :=
  ∀ n, P13083995281470424968.a n = A157823 n

end A157823

/-! ## A157823.P13697760202599634241

`A154570(n+2)-A154570(n)`
-/

namespace A157823.P13697760202599634241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 (n + 2) - A154570 n

end

end A157823.P13697760202599634241

namespace A157823

/-- `A154570(n+2)-A154570(n)` -/
def P13697760202599634241.Spec : Prop :=
  ∀ n, P13697760202599634241.a n = A157823 n

end A157823

/-! ## A157823.P10747151998294096340

`Δ[A154570(n+1)+A154570(n)]`
-/

namespace A157823.P10747151998294096340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 (n + 1) + A154570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157823.P10747151998294096340

namespace A157823

/-- `Δ[A154570(n+1)+A154570(n)]` -/
def P10747151998294096340.Spec : Prop :=
  ∀ n, P10747151998294096340.a n = A157823 n

end A157823

/-! ## A157823.P707386463358532990

`Δ[Δ[2^n-lcm(3, A042950(n))]]`
-/

namespace A157823.P707386463358532990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Int.lcm 3 (A042950 n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157823.P707386463358532990

namespace A157823

/-- `Δ[Δ[2^n-lcm(3, A042950(n))]]` -/
def P707386463358532990.Spec : Prop :=
  ∀ n, P707386463358532990.a n = A157823 n

end A157823

/-! ## A157823.P16849708841708173030

`A144472(n+1)+A144472(n+2)-A091629(n+1)`
-/

namespace A157823.P16849708841708173030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144472 (n + 1) + (A144472 (n + 2) - A091629 (n + 1))

end

end A157823.P16849708841708173030

namespace A157823

/-- `A144472(n+1)+A144472(n+2)-A091629(n+1)` -/
def P16849708841708173030.Spec : Prop :=
  ∀ n, P16849708841708173030.a n = A157823 n

end A157823

/-! ## A157823.P5300579307941565677

`a(n-1)²/a(n-2)` with `a(0)=-5, a(1)=-1, a(2)=-2`
-/

namespace A157823.P5300579307941565677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-5, -1, -2] fun n a =>
  a (n - 1) ^ 2 / a (n - 2)

end

end A157823.P5300579307941565677

namespace A157823

/-- `a(n-1)²/a(n-2)` -/
def P5300579307941565677.Spec : Prop :=
  ∀ n, P5300579307941565677.a n = (A157823 n : ℚ)

end A157823

/-! ## A157823.P5854196545382510336

`(A154589(2*n)+A000079(n)²)/A154589(n+1)`
-/

namespace A157823.P5854196545382510336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154589 (2 * n) + A000079 n ^ 2 : ℚ) / (A154589 (n + 1) : ℚ)

end

end A157823.P5854196545382510336

namespace A157823

/-- `(A154589(2*n)+A000079(n)²)/A154589(n+1)` -/
def P5854196545382510336.Spec : Prop :=
  ∀ n, P5854196545382510336.a n = (A157823 n : ℚ)

end A157823

/-! ## A157823.P11872867169967094946

`and(n-1, -4^(n+1))-A011782(n)`
-/

namespace A157823.P11872867169967094946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(4 ^ (n + 1) : ℤ)) - A011782 n

end

end A157823.P11872867169967094946

namespace A157823

/-- `and(n-1, -4^(n+1))-A011782(n)` -/
def P11872867169967094946.Spec : Prop :=
  ∀ n, P11872867169967094946.a n = A157823 n

end A157823

/-!
# A157824: a(n) = 3600*n^2 - 6751*n + 3165.

The programs for A157824, there is no canonical definition to state claims against.
-/

/-! ## A157824.P13540441130101221172

`round((A157826(n+1)/A157825(n+1))²)`
-/

namespace A157824.P13540441130101221172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157826 (n + 1) : ℚ) / (A157825 (n + 1) : ℚ)) ^ 2)

end

end A157824.P13540441130101221172

/-! ## A157824.P7894548867852830346

`A158057(n)*A257645(A008597(n))`
-/

namespace A157824.P7894548867852830346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n * A257645 (A008597 n).toNat

end

end A157824.P7894548867852830346

/-! ## A157824.P17375814085753013437

`A017077(2*n)*A257645(A008597(n))`
-/

namespace A157824.P17375814085753013437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (2 * n) * A257645 (A008597 n).toNat

end

end A157824.P17375814085753013437

/-! ## A157824.P9830613665050645062

`A016813(4*n)*A257645(A008597(n))`
-/

namespace A157824.P9830613665050645062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (4 * n) * A257645 (A008597 n).toNat

end

end A157824.P9830613665050645062

/-! ## A157824.P10494920096423577330

`A004273(A017077(n))*A257645(A008597(n))`
-/

namespace A157824.P10494920096423577330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A017077 n).toNat * A257645 (A008597 n).toNat

end

end A157824.P10494920096423577330

/-! ## A157824.P11148094085566037877

`A054556(A139222(n+1))-(n+1)`
-/

namespace A157824.P11148094085566037877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (A139222 (n + 1)).toNat - (n + 1 : ℤ)

end

end A157824.P11148094085566037877

/-!
# A157825: a(n) = 1728000*n - 1620240.

The programs for A157825, there is no canonical definition to state claims against.
-/

/-! ## A157825.P15569840948623645608

`round(A157826(n+1)/sqrt(A157824(n+1)))`
-/

namespace A157825.P15569840948623645608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157826 (n + 1) : ℝ) / Real.sqrt (A157824 (n + 1) : ℝ))

end

end A157825.P15569840948623645608

/-!
# A157826: a(n) = 103680000*n^2 - 194428800*n + 91152001.

The programs for A157826, there is no canonical definition to state claims against.
-/

/-! ## A157826.P1999195661337024835

`round(sqrt(A157824(n+1))*A157825(n+1))`
-/

namespace A157826.P1999195661337024835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157824 (n + 1) : ℝ) * (A157825 (n + 1) : ℝ))

end

end A157826.P1999195661337024835

/-! ## A157826.P15927260532161226672

`A157628(6*6*n+3)`
-/

namespace A157826.P15927260532161226672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157628 (6 * (6 * n) + 3)

end

end A157826.P15927260532161226672

/-! ## A157826.P13939738696026567179

`A157264(A102439(n)+3)`
-/

namespace A157826.P13939738696026567179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157264 (A102439 n + 3).toNat

end

end A157826.P13939738696026567179

/-! ## A157826.P6877187587426800611

`A157264(or(3, A102439(n)))`
-/

namespace A157826.P6877187587426800611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157264 (Int.lor 3 (A102439 n)).toNat

end

end A157826.P6877187587426800611

/-! ## A157826.P5457271791416058207

`A157264(xor(3, A102439(n)))`
-/

namespace A157826.P5457271791416058207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157264 (Int.xor 3 (A102439 n)).toNat

end

end A157826.P5457271791416058207

/-! ## A157826.P6313748507056180513

`A157264(A053743(n)-38)`
-/

namespace A157826.P6313748507056180513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157264 (A053743 n - 38).toNat

end

end A157826.P6313748507056180513

/-! ## A157826.P3277138075743766967

`A157264(A008592(A008592(n))+7)`
-/

namespace A157826.P3277138075743766967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157264 (A008592 (A008592 n).toNat + 7).toNat

end

end A157826.P3277138075743766967

/-!
# A157828: Expansion of 1/q(x) where q(x)=x^12*p(1/x) and p(x)=24 + 440*x^3 + 264*x^6 + x^12.

The programs for A157828, there is no canonical definition to state claims against.
-/

/-! ## A157828.P3625977711720976177

`floor(acot(n))-A339060(2^n)`
-/

namespace A157828.P3625977711720976177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - A339060 (2 ^ n)

end

end A157828.P3625977711720976177

/-! ## A157828.P13901298986480871305

`Δ[-A339060(floor(2^(n-1)))]`
-/

namespace A157828.P13901298986480871305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A339060 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157828.P13901298986480871305

/-! ## A157828.P15201655003476019101

`A368724(A185381(n))`
-/

namespace A157828.P15201655003476019101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368724 (A185381 n).toNat

end

end A157828.P15201655003476019101

/-!
# A157829: Numbers k such that k! - (k-1)! + (k-2)! + 1 is prime.

The programs for A157829, there is no canonical definition to state claims against.
-/

/-! ## A157829.P3950264725233316126

`A103517(n)+A026741(A057574(n))`
-/

namespace A157829.P3950264725233316126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A026741 (A057574 n).toNat

end

end A157829.P3950264725233316126

/-! ## A157829.P6128872860592415676

`A083668(n+1)-A010060(A000581(n+8))`
-/

namespace A157829.P6128872860592415676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1) - A010060 (A000581 (n + 8)).toNat

end

end A157829.P6128872860592415676

/-!
# A157830: Let p(x) = 1 + 759*x^8 + 2576*x^12 + 759*x^16 + x^24, expansion of the reciprocal polynomial of p(x).

The programs for A157830, there is no canonical definition to state claims against.
-/

/-! ## A157830.P8579977233994537596

`floor(1/(γ-n))*A104336(lcm(2, n)+n%2)`
-/

namespace A157830.P8579977233994537596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ * A104336 (Nat.lcm 2 n + n % 2)

end

end A157830.P8579977233994537596

/-! ## A157830.P7831824345619515034

`a(n-1)-A105547(n-a(n-1))` with `a(0)=1`
-/

namespace A157830.P7831824345619515034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A105547 ((n : ℤ) - a (n - 1)).toNat

end

end A157830.P7831824345619515034

/-! ## A157830.P16183407364139550373

`A290217(9^A316075(n))`
-/

namespace A157830.P16183407364139550373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A316075 n : ℤ))).toNat

end

end A157830.P16183407364139550373

/-! ## A157830.P3015845779098302642

`A008683(A001930(n))*A104336(n)`
-/

namespace A157830.P3015845779098302642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001930 n).toNat * A104336 n

end

end A157830.P3015845779098302642

/-! ## A157830.P1370148142549475612

`A088568(A180851(n+1))*A105547(n)`
-/

namespace A157830.P1370148142549475612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (A180851 (n + 1)).toNat * A105547 n

end

end A157830.P1370148142549475612

/-!
# A157831: 3's and 4's in Gijswijt's sequence (A090822).

The programs for A157831, the canonical program `A157831.P15486737033919002585` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157831 has offset 1).

The definition of A157831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157831.P15486737033919002585

`val(n+1, 40)+3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157831

/-- `val(n+1, 40)+3` -/
def P15486737033919002585.Spec : Prop :=
  ∀ n, (P15486737033919002585.a n : ℤ) = A157831 (n + 1)

theorem P15486737033919002585.correct : P15486737033919002585.Spec := by
  intro n
  simp only [A157831, Nat.add_sub_cancel]

end A157831

/-! ## A157831.P5989429214338383305

`A052548(val(n+1, 40))`
-/

namespace A157831.P5989429214338383305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (SequenceMachineLib.valuation (n + 1) 40)

end

end A157831.P5989429214338383305

namespace A157831

/-- `A052548(val(n+1, 40))` -/
def P5989429214338383305.Spec : Prop :=
  ∀ n, P5989429214338383305.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P6830682308164138838

`char[A354227(n+1)]+3`
-/

namespace A157831.P6830682308164138838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P6830682308164138838

namespace A157831

/-- `char[A354227(n+1)]+3` -/
def P6830682308164138838.Spec : Prop :=
  ∀ n, (P6830682308164138838.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P9480145478128339896

`char[A057203(n+3)]+3`
-/

namespace A157831.P9480145478128339896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057203 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P9480145478128339896

namespace A157831

/-- `char[A057203(n+3)]+3` -/
def P9480145478128339896.Spec : Prop :=
  ∀ n, (P9480145478128339896.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P18064516044871304146

`char[A153894(n+3)]+3`
-/

namespace A157831.P18064516044871304146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P18064516044871304146

namespace A157831

/-- `char[A153894(n+3)]+3` -/
def P18064516044871304146.Spec : Prop :=
  ∀ n, (P18064516044871304146.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P17438132019145251348

`char[A064399(3*n+1)]+3`
-/

namespace A157831.P17438132019145251348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064399 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P17438132019145251348

namespace A157831

/-- `char[A064399(3*n+1)]+3` -/
def P17438132019145251348.Spec : Prop :=
  ∀ n, (P17438132019145251348.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P13327023581984288406

`char[A169770(n+5)-1]+3`
-/

namespace A157831.P13327023581984288406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169770 (n + 5) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P13327023581984288406

namespace A157831

/-- `char[A169770(n+5)-1]+3` -/
def P13327023581984288406.Spec : Prop :=
  ∀ n, (P13327023581984288406.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P10992953209589756092

`char[A234692(2*n+3)]+3`
-/

namespace A157831.P10992953209589756092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234692 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P10992953209589756092

namespace A157831

/-- `char[A234692(2*n+3)]+3` -/
def P10992953209589756092.Spec : Prop :=
  ∀ n, (P10992953209589756092.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P9794482449557808799

`char[A112558(2*n+5)]+3`
-/

namespace A157831.P9794482449557808799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112558 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 3

end

end A157831.P9794482449557808799

namespace A157831

/-- `char[A112558(2*n+5)]+3` -/
def P9794482449557808799.Spec : Prop :=
  ∀ n, (P9794482449557808799.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P3603929272813843588

`A160094(lcm(4, n+1)/4)+2`
-/

namespace A157831.P3603929272813843588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat + 2

end

end A157831.P3603929272813843588

namespace A157831

/-- `A160094(lcm(4, n+1)/4)+2` -/
def P3603929272813843588.Spec : Prop :=
  ∀ n, P3603929272813843588.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P11512458601459770237

`ceil(root(Δ[A007095(2*(n+1))], 3))+1`
-/

namespace A157831.P11512458601459770237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℝ) ^ (1 / (3 : ℝ))⌉ + 1

end

end A157831.P11512458601459770237

namespace A157831

/-- `ceil(root(Δ[A007095(2*(n+1))], 3))+1` -/
def P11512458601459770237.Spec : Prop :=
  ∀ n, P11512458601459770237.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P7045477017100815404

`A276870(A030170(n))`
-/

namespace A157831.P7045477017100815404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276870 (A030170 n).toNat

end

end A157831.P7045477017100815404

namespace A157831

/-- `A276870(A030170(n))` -/
def P7045477017100815404.Spec : Prop :=
  ∀ n, P7045477017100815404.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P4160586350510959991

`A122840(A060819(n+1))+3`
-/

namespace A157831.P4160586350510959991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A060819 (n + 1)).toNat + 3

end

end A157831.P4160586350510959991

namespace A157831

/-- `A122840(A060819(n+1))+3` -/
def P4160586350510959991.Spec : Prop :=
  ∀ n, P4160586350510959991.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P10296403625207899268

`A221152(A020639(n+4))+3`
-/

namespace A157831.P10296403625207899268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221152 (A020639 (n + 4)).toNat + 3

end

end A157831.P10296403625207899268

namespace A157831

/-- `A221152(A020639(n+4))+3` -/
def P10296403625207899268.Spec : Prop :=
  ∀ n, P10296403625207899268.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P1209670473507795823

`A000174(A083889(3*(n+1)))+2`
-/

namespace A157831.P1209670473507795823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A083889 (3 * (n + 1))).toNat + 2

end

end A157831.P1209670473507795823

namespace A157831

/-- `A000174(A083889(3*(n+1)))+2` -/
def P1209670473507795823.Spec : Prop :=
  ∀ n, P1209670473507795823.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P10957292209489406517

`A026492(A278233(3*(n+1)))+2`
-/

namespace A157831.P10957292209489406517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A278233 (3 * (n + 1))).toNat + 2

end

end A157831.P10957292209489406517

namespace A157831

/-- `A026492(A278233(3*(n+1)))+2` -/
def P10957292209489406517.Spec : Prop :=
  ∀ n, P10957292209489406517.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P16549308843647075326

`∑{e}[A154430(A098372(2*(n+1))+1), #]`
-/

namespace A157831.P16549308843647075326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154430 (A098372 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A157831.P16549308843647075326

namespace A157831

/-- `∑{e}[A154430(A098372(2*(n+1))+1), #]` -/
def P16549308843647075326.Spec : Prop :=
  ∀ n, (P16549308843647075326.a n : ℤ) = A157831 (n + 1)

end A157831

/-! ## A157831.P13468383682781514036

`A063438(gcd(∑[72*n]+8, A097377(n+1)))`
-/

namespace A157831.P13468383682781514036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063438 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j + 8 : ℕ) : ℤ) (A097377 (n + 1)))

end

end A157831.P13468383682781514036

namespace A157831

/-- `A063438(gcd(∑[72*n]+8, A097377(n+1)))` -/
def P13468383682781514036.Spec : Prop :=
  ∀ n, P13468383682781514036.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P5141946315945901697

`A216194(A324888(2*n+3)+A017221(n))`
-/

namespace A157831.P5141946315945901697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216194 (A324888 (2 * n + 3) + A017221 n).toNat

end

end A157831.P5141946315945901697

namespace A157831

/-- `A216194(A324888(2*n+3)+A017221(n))` -/
def P5141946315945901697.Spec : Prop :=
  ∀ n, P5141946315945901697.a n = A157831 (n + 1)

end A157831

/-! ## A157831.P12683386998452637071

`A065875(ceil(A000203(n+1)/A000203(2*n+5)))`
-/

namespace A157831.P12683386998452637071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065875 ⌈(A000203 (n + 1) : ℚ) / (A000203 (2 * n + 5) : ℚ)⌉.toNat

end

end A157831.P12683386998452637071

namespace A157831

/-- `A065875(ceil(A000203(n+1)/A000203(2*n+5)))` -/
def P12683386998452637071.Spec : Prop :=
  ∀ n, P12683386998452637071.a n = A157831 (n + 1)

end A157831

/-!
# A157834: Numbers n such that 3n-2 and 3n+2 are both prime.

The programs for A157834, there is no canonical definition to state claims against.
-/

/-! ## A157834.P10711291761701318935

`A029708(n+1)/3`
-/

namespace A157834.P10711291761701318935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029708 (n + 1) : ℚ) / 3

end

end A157834.P10711291761701318935

/-! ## A157834.P10582937933674829100

`A056956(n+1)*2+1`
-/

namespace A157834.P10582937933674829100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1) * 2 + 1

end

end A157834.P10582937933674829100

/-! ## A157834.P7217244200661474991

`(A029710(n+1)+2)/3`
-/

namespace A157834.P7217244200661474991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029710 (n + 1) + 2 : ℚ) / 3

end

end A157834.P7217244200661474991

/-! ## A157834.P11883003828387203292

`floor(A031505(n+1)/3)`
-/

namespace A157834.P11883003828387203292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A031505 (n + 1) : ℚ) / 3⌋

end

end A157834.P11883003828387203292

/-! ## A157834.P13304870848882078199

`ceil(A029710(n+1)/3)`
-/

namespace A157834.P13304870848882078199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029710 (n + 1) : ℚ) / 3⌉

end

end A157834.P13304870848882078199

/-! ## A157834.P7235850443204439113

`2*A186243(n+1)-1`
-/

namespace A157834.P7235850443204439113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186243 (n + 1) - 1

end

end A157834.P7235850443204439113

/-! ## A157834.P11625597562087771705

`A186243(n+1)+A056956(n+1)`
-/

namespace A157834.P11625597562087771705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1) + A056956 (n + 1)

end

end A157834.P11625597562087771705

/-! ## A157834.P6199437467943828579

`A111981(n+1)-A056956(n+1)`
-/

namespace A157834.P6199437467943828579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111981 (n + 1) - A056956 (n + 1)

end

end A157834.P6199437467943828579

/-! ## A157834.P4509296760783747675

`A186243(n+1)+A186243(n+1)-A063775(A006530(n+1))`
-/

namespace A157834.P4509296760783747675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1) + (A186243 (n + 1) - A063775 (A006530 (n + 1)).toNat)

end

end A157834.P4509296760783747675

/-! ## A157834.P3411342731420455761

`A087679(n+2)/3`
-/

namespace A157834.P3411342731420455761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087679 (n + 2) : ℚ) / 3

end

end A157834.P3411342731420455761

/-! ## A157834.P4834026682199504318

`(A015913(n+2)+2)/3`
-/

namespace A157834.P4834026682199504318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015913 (n + 2) + 2 : ℚ) / 3

end

end A157834.P4834026682199504318

/-! ## A157834.P3580631266957977994

`(A046132(n+2)-2)/3`
-/

namespace A157834.P3580631266957977994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046132 (n + 2) - 2 : ℚ) / 3

end

end A157834.P3580631266957977994

/-! ## A157834.P3353044491801834179

`2*A047847(n+2)/3+1`
-/

namespace A157834.P3353044491801834179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A047847 (n + 2) : ℚ) / 3) + 1

end

end A157834.P3353044491801834179

/-! ## A157834.P2560824429972315531

`A088762(n+2)-A056956(n+1)`
-/

namespace A157834.P2560824429972315531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088762 (n + 2) - A056956 (n + 1)

end

end A157834.P2560824429972315531

/-! ## A157834.P12445337072068504205

`(A072541(2*n+3)+1)/3`
-/

namespace A157834.P12445337072068504205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072541 (2 * n + 3) + 1 : ℚ) / 3

end

end A157834.P12445337072068504205

/-! ## A157834.P10295928426433165112

`∩[A024893(n+1), A153183(n+1)]`
-/

namespace A157834.P10295928426433165112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157834.P10295928426433165112

/-! ## A157834.P4081148165682519330

`∩[A153183(n+1), A228121(n+1)-2]`
-/

namespace A157834.P4081148165682519330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157834.P4081148165682519330

/-! ## A157834.P6916449901807458297

`∩[A024893(n+1), A391352(n+1)]`
-/

namespace A157834.P6916449901807458297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157834.P6916449901807458297

/-! ## A157834.P14134512225458240862

`∩[A153183(n+1), A391352(n+1)]`
-/

namespace A157834.P14134512225458240862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157834.P14134512225458240862

/-! ## A157834.P2817340305143495042

`(p?[A000040(n+3)+4]-2)/3`
-/

namespace A157834.P2817340305143495042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 3

end

end A157834.P2817340305143495042

/-!
# A157837: Smallest emirp with multiplicative persistence n.

The programs for A157837, there is no canonical definition to state claims against.
-/

/-! ## A157837.P1404397222885257379

`A263240(record[∑{d}[A245539(n+1), #]])`
-/

namespace A157837.P1404397222885257379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245539 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263240 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A157837.P1404397222885257379

/-!
# A157838: a(n) = 3600*n^2 - 6049*n + 2541.

The programs for A157838, there is no canonical definition to state claims against.
-/

/-! ## A157838.P12106891596038010571

`round((A157840(n+1)/A157839(n+1))²)`
-/

namespace A157838.P12106891596038010571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157840 (n + 1) : ℚ) / (A157839 (n + 1) : ℚ)) ^ 2)

end

end A157838.P12106891596038010571

/-! ## A157838.P1449969430363119299

`round((A157653(3*A017545(n))/A157839(n+1))²)`
-/

namespace A157838.P1449969430363119299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157653 (3 * A017545 n).toNat : ℚ) / (A157839 (n + 1) : ℚ)) ^ 2)

end

end A157838.P1449969430363119299

/-! ## A157838.P6216458700785819881

`round((A157653(6*A016921(n))/A157839(n+1))²)`
-/

namespace A157838.P6216458700785819881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157653 (6 * A016921 n).toNat : ℚ) / (A157839 (n + 1) : ℚ)) ^ 2)

end

end A157838.P6216458700785819881

/-!
# A157839: a(n) = 1728000*n - 1451760.

The programs for A157839, there is no canonical definition to state claims against.
-/

/-! ## A157839.P4752384658319652410

`round(A157840(n+1)/sqrt(A157838(n+1)))`
-/

namespace A157839.P4752384658319652410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157840 (n + 1) : ℝ) / Real.sqrt (A157838 (n + 1) : ℝ))

end

end A157839.P4752384658319652410

/-!
# A157840: a(n) = 103680000*n^2 - 174211200*n + 73180801.

The programs for A157840, there is no canonical definition to state claims against.
-/

/-! ## A157840.P1746482139957666510

`round(sqrt(A157838(n+1))*A157839(n+1))`
-/

namespace A157840.P1746482139957666510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157838 (n + 1) : ℝ) * (A157839 (n + 1) : ℝ))

end

end A157840.P1746482139957666510

/-! ## A157840.P1199781678303744185

`A157653(3*A017545(n))`
-/

namespace A157840.P1199781678303744185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157653 (3 * A017545 n).toNat

end

end A157840.P1199781678303744185

/-! ## A157840.P15274333468565113732

`A157653(6*A016921(n))`
-/

namespace A157840.P15274333468565113732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157653 (6 * A016921 n).toNat

end

end A157840.P15274333468565113732

/-! ## A157840.P5843380111602787164

`A157653(lcm(3, A017545(n)))`
-/

namespace A157840.P5843380111602787164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157653 (Int.lcm 3 (A017545 n))

end

end A157840.P5843380111602787164

/-! ## A157840.P10880686512213475943

`A157653(record[A283443(A016777(n))])`
-/

namespace A157840.P10880686512213475943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157653 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157840.P10880686512213475943

/-! ## A157840.P17269324053648833706

`A157511(A183010(A016921(n)))`
-/

namespace A157840.P17269324053648833706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (A183010 (A016921 n).toNat).toNat

end

end A157840.P17269324053648833706

/-!
# A157842: a(n) = 3600*n^2 - 5599*n + 2177.

The programs for A157842, there is no canonical definition to state claims against.
-/

/-! ## A157842.P3171277777547684168

`round((A157844(n+1)/A157843(n+1))²)`
-/

namespace A157842.P3171277777547684168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157844 (n + 1) : ℚ) / (A157843 (n + 1) : ℚ)) ^ 2)

end

end A157842.P3171277777547684168

/-! ## A157842.P7456327457250369548

`A157262(A017305(n))-A017185(n)`
-/

namespace A157842.P7456327457250369548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157262 (A017305 n).toNat - A017185 n

end

end A157842.P7456327457250369548

/-! ## A157842.P12493077176557470331

`A157262(A017305(n))-sqrt(A017186(n))`
-/

namespace A157842.P12493077176557470331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A157262 (A017305 n).toNat : ℝ) - Real.sqrt (A017186 n : ℝ)

end

end A157842.P12493077176557470331

/-! ## A157842.P7069249554620668633

`A157262(A017305(n))-A016789(3*n)`
-/

namespace A157842.P7069249554620668633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157262 (A017305 n).toNat - A016789 (3 * n)

end

end A157842.P7069249554620668633

/-! ## A157842.P2865208161811575333

`A154262(A017329(2*n))+n`
-/

namespace A157842.P2865208161811575333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 (A017329 (2 * n)).toNat + (n : ℤ)

end

end A157842.P2865208161811575333

/-!
# A157843: a(n) = 1728000*n - 1343760.

The programs for A157843, there is no canonical definition to state claims against.
-/

/-! ## A157843.P15433162327958060856

`round(A157844(n+1)/sqrt(A157842(n+1)))`
-/

namespace A157843.P15433162327958060856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157844 (n + 1) : ℝ) / Real.sqrt (A157842 (n + 1) : ℝ))

end

end A157843.P15433162327958060856

/-!
# A157844: a(n) = 103680000*n^2 - 161251200*n + 62697601.

The programs for A157844, there is no canonical definition to state claims against.
-/

/-! ## A157844.P16090388856207900764

`round(sqrt(A157842(n+1))*A157843(n+1))`
-/

namespace A157844.P16090388856207900764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157842 (n + 1) : ℝ) * (A157843 (n + 1) : ℝ))

end

end A157844.P16090388856207900764

/-! ## A157844.P15553917376486596979

`A157664(A017617(3*n))`
-/

namespace A157844.P15553917376486596979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (A017617 (3 * n)).toNat

end

end A157844.P15553917376486596979

/-! ## A157844.P12455670273454853978

`A157664(4*A017185(n))`
-/

namespace A157844.P12455670273454853978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (4 * A017185 n).toNat

end

end A157844.P12455670273454853978

/-! ## A157844.P1468788802948004653

`A157664(A044102(n)+8)`
-/

namespace A157844.P1468788802948004653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (A044102 n + 8).toNat

end

end A157844.P1468788802948004653

/-! ## A157844.P4160436814328489539

`A157664(4*sqrt(A017186(n)))`
-/

namespace A157844.P4160436814328489539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (SequenceMachineLib.roundAway (4 * Real.sqrt (A017186 n : ℝ))).toNat

end

end A157844.P4160436814328489539

/-!
# A157845: a(0) = 1, a(n) = sum of binary digits of all prior terms, expressed in binary.

The programs for A157845, the canonical program `A157845.P13110102773483925305` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157845 has offset 0).

The definition of A157845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157845.P13110102773483925305

`A007088(A092391(A028897(a(n-1))))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157845

/-- `A007088(A092391(A028897(a(n-1))))` -/
def P13110102773483925305.Spec : Prop :=
  ∀ n, P13110102773483925305.a n = A157845 n

theorem P13110102773483925305.correct : P13110102773483925305.Spec := by
  intro n
  simp only [A157845]

end A157845

/-! ## A157845.P2989852818309045817

`A230297((n-1)%(n+1))`
-/

namespace A157845.P2989852818309045817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230297 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A157845.P2989852818309045817

namespace A157845

/-- `A230297((n-1)%(n+1))` -/
def P2989852818309045817.Spec : Prop :=
  ∀ n, P2989852818309045817.a n = A157845 n

end A157845

/-! ## A157845.P13776223233561818945

`A230297(floor(n*n/(n+1)))`
-/

namespace A157845.P13776223233561818945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230297 ⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋.toNat

end

end A157845.P13776223233561818945

namespace A157845

/-- `A230297(floor(n*n/(n+1)))` -/
def P13776223233561818945.Spec : Prop :=
  ∀ n, P13776223233561818945.a n = A157845 n

end A157845

/-! ## A157845.P4774641842209960692

`A007088(A228083(∑[n-1]+2))`
-/

namespace A157845.P4774641842209960692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A228083 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat).toNat

end

end A157845.P4774641842209960692

namespace A157845

/-- `A007088(A228083(∑[n-1]+2))` -/
def P4774641842209960692.Spec : Prop :=
  ∀ n, P4774641842209960692.a n = A157845 n

end A157845

/-! ## A157845.P12167052813736492321

`∏{e}[ceil(2^(n-1)), A230297(#)]`
-/

namespace A157845.P12167052813736492321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A230297 (Nat.factorization (f1 n).natAbs p)

end

end A157845.P12167052813736492321

namespace A157845

/-- `∏{e}[ceil(2^(n-1)), A230297(#)]` -/
def P12167052813736492321.Spec : Prop :=
  ∀ n, P12167052813736492321.a n = A157845 n

end A157845

/-!
# A157846: Numbers which can be a mean of the divisors of some arithmetic number A003601(k).

The programs for A157846, there is no canonical definition to state claims against.
-/

/-! ## A157846.P9916450487575790932

`eq[1, char[A057020(n+1)]]`
-/

namespace A157846.P9916450487575790932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157846.P9916450487575790932

/-! ## A157846.P7250427259120554350

`lt[0, char[A102187(n+1)]]`
-/

namespace A157846.P7250427259120554350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102187 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A157846.P7250427259120554350

/-! ## A157846.P915360121523777678

`comp[A157847(n+1)-1]+1`
-/

namespace A157846.P915360121523777678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157847 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A157846.P915360121523777678

/-! ## A157846.P3471412049926716978

`comp[A091684(A157847(n+1))]`
-/

namespace A157846.P3471412049926716978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (A157847 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157846.P3471412049926716978

/-! ## A157846.P17517745825297042940

`comp[A091684(comp[A057020(n+1)])]`
-/

namespace A157846.P17517745825297042940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157846.P17517745825297042940

/-! ## A157846.P17419211809867275488

`comp[A118759(comp[A057020(n+1)])]`
-/

namespace A157846.P17419211809867275488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157846.P17419211809867275488

/-! ## A157846.P17597271125962823250

`comp[A091684(comp[A102187(n+1)])]`
-/

namespace A157846.P17597271125962823250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102187 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157846.P17597271125962823250

/-! ## A157846.P6979620818350064559

`comp[A254667(comp[A057020(n+1)])]`
-/

namespace A157846.P6979620818350064559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A157846.P6979620818350064559

/-! ## A157846.P15533395999686027395

`eq[1, char[A057022(A003601(n+1))]]`
-/

namespace A157846.P15533395999686027395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (A003601 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157846.P15533395999686027395

/-! ## A157846.P16337118815525643776

`eq[char[A157847(n+1)], A000007(n)]`
-/

namespace A157846.P16337118815525643776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157847 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A157846.P16337118815525643776

/-!
# A157847: Numbers which are not a mean of divisors of some arithmetic number A003601(k).

The programs for A157847, there is no canonical definition to state claims against.
-/

/-! ## A157847.P8305777455635862669

`eq[0, A162538(n+1)]+1`
-/

namespace A157847.P8305777455635862669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A157847.P8305777455635862669

/-! ## A157847.P11407200926367556862

`lt[A162538(n+2), 1]+2`
-/

namespace A157847.P11407200926367556862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A157847.P11407200926367556862

/-! ## A157847.P16607031043721036388

`eq[0, A162538(A028310(n))]`
-/

namespace A157847.P16607031043721036388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157847.P16607031043721036388

/-! ## A157847.P9856075073907340668

`A020725(eq[0, A162538(n+1)])`
-/

namespace A157847.P9856075073907340668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157847.P9856075073907340668

/-! ## A157847.P17099721402097245590

`A065475(eq[0, A162538(n+1)])`
-/

namespace A157847.P17099721402097245590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A157847.P17099721402097245590

/-!
# A157848: Corresponding values of arithmetic means of divisors of numbers from A007340.

The programs for A157848, there is no canonical definition to state claims against.
-/

/-! ## A157848.P2113977951184863858

`A000203(A007340(n+1))/A000005(A007340(n+1))`
-/

namespace A157848.P2113977951184863858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A007340 (n + 1)).toNat : ℚ) / (A000005 (A007340 (n + 1)).toNat : ℚ)

end

end A157848.P2113977951184863858

/-! ## A157848.P5981715898212907441

`A007340(n+1)/A157850(n+1)`
-/

namespace A157848.P5981715898212907441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007340 (n + 1) : ℚ) / (A157850 (n + 1) : ℚ)

end

end A157848.P5981715898212907441

/-! ## A157848.P16466326031981346725

`A057020(A007340(n+1))`
-/

namespace A157848.P16466326031981346725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A007340 (n + 1)).toNat

end

end A157848.P16466326031981346725

/-! ## A157848.P18014264780379755098

`A057022(lcm(2, A007340(n+1)))`
-/

namespace A157848.P18014264780379755098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (Int.lcm 2 (A007340 (n + 1)))

end

end A157848.P18014264780379755098

/-! ## A157848.P7412059359263305527

`A057022(A007340(2*n+1-n))`
-/

namespace A157848.P7412059359263305527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057022 (A007340 (2 * n + 1 - n)).toNat

end

end A157848.P7412059359263305527

/-!
# A157849: Numbers k such that are not harmonic means of divisors of harmonic (Ore) numbers (harmonic (Ore) numbers is A001599).

The programs for A157849, there is no canonical definition to state claims against.
-/

/-! ## A157849.P17334458987605544487

`eq[char[A090240(n+1)], A151933(n)]`
-/

namespace A157849.P17334458987605544487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090240 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A157849.P17334458987605544487

/-! ## A157849.P9683296551034167635

`record[A087141(n+1)-A014686(n+3)]`
-/

namespace A157849.P9683296551034167635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1) - A014686 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157849.P9683296551034167635

/-! ## A157849.P17861997449137193307

`lt[A008966(A094216(n+1)), A008966(3*n+5)]`
-/

namespace A157849.P17861997449137193307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A094216 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A157849.P17861997449137193307

/-!
# A157850: Numbers k such that are harmonic means of divisors of harmonic (Ore) numbers (harmonic numbers is A001599) and equal to one of the divisors of this harmonic numbers.

The programs for A157850, there is no canonical definition to state claims against.
-/

/-! ## A157850.P12648960847802374563

`A007340(n+1)/A157848(n+1)`
-/

namespace A157850.P12648960847802374563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007340 (n + 1) : ℚ) / (A157848 (n + 1) : ℚ)

end

end A157850.P12648960847802374563

/-!
# A157853: a(n) = 3600*n^2 - 1601*n + 178.

The programs for A157853, the canonical program `A157853.P5714258803807178798` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157853 has offset 1).

The definition of A157853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157853.P5714258803807178798

`A157265(10*(n+1)-2)+A017245(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157853

/-- `A157265(10*(n+1)-2)+A017245(n)` -/
def P5714258803807178798.Spec : Prop :=
  ∀ n, P5714258803807178798.a n = A157853 (n + 1)

theorem P5714258803807178798.correct : P5714258803807178798.Spec := by
  intro n
  simp only [A157853, Nat.add_sub_cancel]

end A157853

/-!
# A157855: a(n) = 103680000*n^2 - 46108800*n + 5126401.

The programs for A157855, the canonical program `A157855.P8984968890830206206` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157855 has offset 1).

The definition of A157855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157855.P8984968890830206206

`A157661(4*A017245(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157855

/-- `A157661(4*A017245(n))` -/
def P8984968890830206206.Spec : Prop :=
  ∀ n, P8984968890830206206.a n = A157855 (n + 1)

theorem P8984968890830206206.correct : P8984968890830206206.Spec := by
  intro n
  simp only [A157855, Nat.add_sub_cancel]

end A157855

/-! ## A157855.P12099251989518285747

`A157661(A044102(n)+28)`
-/

namespace A157855.P12099251989518285747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (A044102 n + 28).toNat

end

end A157855.P12099251989518285747

namespace A157855

/-- `A157661(A044102(n)+28)` -/
def P12099251989518285747.Spec : Prop :=
  ∀ n, P12099251989518285747.a n = A157855 (n + 1)

end A157855

/-! ## A157855.P10131366906916854268

`A157661(Δ[A164016(n)]-8)`
-/

namespace A157855.P10131366906916854268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (f1 (n + 1) - f1 n - 8).toNat

end

end A157855.P10131366906916854268

namespace A157855

/-- `A157661(Δ[A164016(n)]-8)` -/
def P10131366906916854268.Spec : Prop :=
  ∀ n, P10131366906916854268.a n = A157855 (n + 1)

end A157855

/-! ## A157855.P13577057454251165091

`A157661(4*A016777(3*n+2))`
-/

namespace A157855.P13577057454251165091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (4 * A016777 (3 * n + 2)).toNat

end

end A157855.P13577057454251165091

namespace A157855

/-- `A157661(4*A016777(3*n+2))` -/
def P13577057454251165091.Spec : Prop :=
  ∀ n, P13577057454251165091.a n = A157855 (n + 1)

end A157855

/-! ## A157855.P13767245686621876355

`A157516(16*A017245(n))`
-/

namespace A157855.P13767245686621876355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (16 * A017245 n).toNat

end

end A157855.P13767245686621876355

namespace A157855

/-- `A157516(16*A017245(n))` -/
def P13767245686621876355.Spec : Prop :=
  ∀ n, P13767245686621876355.a n = A157855 (n + 1)

end A157855

/-!
# A157856: Numerator of Euler(n,8).

The programs for A157856, there is no canonical definition to state claims against.
-/

/-! ## A157856.P8859996242274778645

`A080079(A157864(n))`
-/

namespace A157856.P8859996242274778645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A157864 n).toNat

end

end A157856.P8859996242274778645

/-!
# A157857: a(n) = 3600*n^2 - n.

The programs for A157857, the canonical program `A157857.P7078932923195042636` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157857 has offset 1).

The definition of A157857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157857.P7078932923195042636

`∑[Δ[(60*n)²]-1]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157857

/-- `∑[Δ[(60*n)²]-1]` -/
def P7078932923195042636.Spec : Prop :=
  ∀ n, P7078932923195042636.a n = A157857 (n + 1)

theorem P7078932923195042636.correct : P7078932923195042636.Spec := by
  intro n
  simp only [A157857, Nat.add_sub_cancel]

end A157857

/-! ## A157857.P14410199033638074599

`(n+1)*(A096472(n+1)-1)`
-/

namespace A157857.P14410199033638074599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A096472 (n + 1) - 1)

end

end A157857.P14410199033638074599

namespace A157857

/-- `(n+1)*(A096472(n+1)-1)` -/
def P14410199033638074599.Spec : Prop :=
  ∀ n, P14410199033638074599.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P2683217799402279323

`A157861(n+1)-2*(n+1)`
-/

namespace A157857.P2683217799402279323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157861 (n + 1) - (2 * (n + 1) : ℤ)

end

end A157857.P2683217799402279323

namespace A157857

/-- `A157861(n+1)-2*(n+1)` -/
def P2683217799402279323.Spec : Prop :=
  ∀ n, P2683217799402279323.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P12246056167114890729

`(60*(n+1))²-A000027(n+1)`
-/

namespace A157857.P12246056167114890729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((60 * (n + 1)) ^ 2 : ℤ) - A000027 (n + 1)

end

end A157857.P12246056167114890729

namespace A157857

/-- `(60*(n+1))²-A000027(n+1)` -/
def P12246056167114890729.Spec : Prop :=
  ∀ n, P12246056167114890729.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P6748223901283944260

`A169823(n+1)²-(n+1)`
-/

namespace A157857.P6748223901283944260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169823 (n + 1) ^ 2 - (n + 1 : ℤ)

end

end A157857.P6748223901283944260

namespace A157857

/-- `A169823(n+1)²-(n+1)` -/
def P6748223901283944260.Spec : Prop :=
  ∀ n, P6748223901283944260.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P15531921706634023659

`A158316(3*(n+1))+5*(n+1)`
-/

namespace A157857.P15531921706634023659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158316 (3 * (n + 1)) + (5 * (n + 1) : ℤ)

end

end A157857.P15531921706634023659

namespace A157857

/-- `A158316(3*(n+1))+5*(n+1)` -/
def P15531921706634023659.Spec : Prop :=
  ∀ n, P15531921706634023659.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P2243633737933431466

`A016910(A008592(n+1))-(n+1)`
-/

namespace A157857.P2243633737933431466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A008592 (n + 1)).toNat - (n + 1 : ℤ)

end

end A157857.P2243633737933431466

namespace A157857

/-- `A016910(A008592(n+1))-(n+1)` -/
def P2243633737933431466.Spec : Prop :=
  ∀ n, P2243633737933431466.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P16804234162306425571

`A000290(A008706(A008594(n+1)))-(n+1)`
-/

namespace A157857.P16804234162306425571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008706 (A008594 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A157857.P16804234162306425571

namespace A157857

/-- `A000290(A008706(A008594(n+1)))-(n+1)` -/
def P16804234162306425571.Spec : Prop :=
  ∀ n, P16804234162306425571.a n = A157857 (n + 1)

end A157857

/-! ## A157857.P1098185215199870303

`A096472((n+1)²)-(n+1)`
-/

namespace A157857.P1098185215199870303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096472 ((n + 1) ^ 2) - (n + 1 : ℤ)

end

end A157857.P1098185215199870303

namespace A157857

/-- `A096472((n+1)²)-(n+1)` -/
def P1098185215199870303.Spec : Prop :=
  ∀ n, P1098185215199870303.a n = A157857 (n + 1)

end A157857

/-!
# A157858: a(n) = 1728000*n - 240.

The programs for A157858, the canonical program `A157858.P9428969928922990493` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157858 has offset 1).

The definition of A157858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157858.P9428969928922990493

`Δ[15*A158408(A017113(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157858

/-- `Δ[15*A158408(A017113(n))]` -/
def P9428969928922990493.Spec : Prop :=
  ∀ n, P9428969928922990493.a n = A157858 (n + 1)

theorem P9428969928922990493.correct : P9428969928922990493.Spec := by
  intro n
  simp only [A157858, Nat.add_sub_cancel]

end A157858

/-!
# A157859: a(n) = 103680000*n^2 - 28800*n + 1.

The programs for A157859, the canonical program `A157859.P8913909548646878911` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157859 has offset 1).

The definition of A157859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157859.P8913909548646878911

`A157661(Δ[A164016(n)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157859

/-- `A157661(Δ[A164016(n)])` -/
def P8913909548646878911.Spec : Prop :=
  ∀ n, P8913909548646878911.a n = A157859 (n + 1)

theorem P8913909548646878911.correct : P8913909548646878911.Spec := by
  intro n
  simp only [A157859, Nat.add_sub_cancel]

end A157859

/-! ## A157859.P4171539793997478857

`A157661(A044102(n+1))`
-/

namespace A157859.P4171539793997478857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (A044102 (n + 1)).toNat

end

end A157859.P4171539793997478857

namespace A157859

/-- `A157661(A044102(n+1))` -/
def P4171539793997478857.Spec : Prop :=
  ∀ n, P4171539793997478857.a n = A157859 (n + 1)

end A157859

/-! ## A157859.P8036376725553828318

`A157661(A008574(9*(n+1)))`
-/

namespace A157859.P8036376725553828318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (A008574 (9 * (n + 1))).toNat

end

end A157859.P8036376725553828318

namespace A157859

/-- `A157661(A008574(9*(n+1)))` -/
def P8036376725553828318.Spec : Prop :=
  ∀ n, P8036376725553828318.a n = A157859 (n + 1)

end A157859

/-! ## A157859.P2365123684522562020

`A157661(A164016(n+1)-A164016(n))`
-/

namespace A157859.P2365123684522562020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157661 (A164016 (n + 1) - A164016 n).toNat

end

end A157859.P2365123684522562020

namespace A157859

/-- `A157661(A164016(n+1)-A164016(n))` -/
def P2365123684522562020.Spec : Prop :=
  ∀ n, P2365123684522562020.a n = A157859 (n + 1)

theorem P2365123684522562020.correct : P2365123684522562020.Spec := by
  intro n
  simp only [A157859, Nat.add_sub_cancel, A157859.P2365123684522562020.a, A157859.P8913909548646878911.f1, A157859.P8913909548646878911.a, SequenceMachineLib.memo_apply]

end A157859

/-! ## A157859.P6603500123639279955

`A157288(A044332(n+1))`
-/

namespace A157859.P6603500123639279955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157288 (A044332 (n + 1)).toNat

end

end A157859.P6603500123639279955

namespace A157859

/-- `A157288(A044332(n+1))` -/
def P6603500123639279955.Spec : Prop :=
  ∀ n, P6603500123639279955.a n = A157859 (n + 1)

end A157859

/-! ## A157859.P11575352613472392781

`A157288(Δ[4*A123296(n)])`
-/

namespace A157859.P11575352613472392781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157288 (f1 (n + 1) - f1 n).toNat

end

end A157859.P11575352613472392781

namespace A157859

/-- `A157288(Δ[4*A123296(n)])` -/
def P11575352613472392781.Spec : Prop :=
  ∀ n, P11575352613472392781.a n = A157859 (n + 1)

end A157859

/-! ## A157859.P9682008838376996204

`A157516(Δ[4*A164016(n)])`
-/

namespace A157859.P9682008838376996204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A164016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (f1 (n + 1) - f1 n).toNat

end

end A157859.P9682008838376996204

namespace A157859

/-- `A157516(Δ[4*A164016(n)])` -/
def P9682008838376996204.Spec : Prop :=
  ∀ n, P9682008838376996204.a n = A157859 (n + 1)

end A157859

/-! ## A157859.P16798179416021514987

`A157516(A044102(4*(n+1)))`
-/

namespace A157859.P16798179416021514987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157516 (A044102 (4 * (n + 1))).toNat

end

end A157859.P16798179416021514987

namespace A157859

/-- `A157516(A044102(4*(n+1)))` -/
def P16798179416021514987.Spec : Prop :=
  ∀ n, P16798179416021514987.a n = A157859 (n + 1)

end A157859

/-!
# A157860: Numerator of Bernoulli(n, -3/4).

The programs for A157860, there is no canonical definition to state claims against.
-/

/-! ## A157860.P2299611283853878493

`(A158701(n)+A158653(n))/2`
-/

namespace A157860.P2299611283853878493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158701 n + A158653 n : ℚ) / 2

end

end A157860.P2299611283853878493

/-!
# A157861: a(n) = 3600*n^2 + n.

The programs for A157861, the canonical program `A157861.P9172467933638377116` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157861 has offset 1).

The definition of A157861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157861.P9172467933638377116

`∑[Δ[(60*n)²]+1]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157861

/-- `∑[Δ[(60*n)²]+1]` -/
def P9172467933638377116.Spec : Prop :=
  ∀ n, P9172467933638377116.a n = A157861 (n + 1)

theorem P9172467933638377116.correct : P9172467933638377116.Spec := by
  intro n
  simp only [A157861, Nat.add_sub_cancel]

end A157861

/-! ## A157861.P1576768230301468614

`(n+1)*(A096472(n+1)+1)`
-/

namespace A157861.P1576768230301468614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A096472 (n + 1) + 1)

end

end A157861.P1576768230301468614

namespace A157861

/-- `(n+1)*(A096472(n+1)+1)` -/
def P1576768230301468614.Spec : Prop :=
  ∀ n, P1576768230301468614.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P11011510762885751545

`A157857(n+1)+2*(n+1)`
-/

namespace A157861.P11011510762885751545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157857 (n + 1) + (2 * (n + 1) : ℤ)

end

end A157861.P11011510762885751545

namespace A157861

/-- `A157857(n+1)+2*(n+1)` -/
def P11011510762885751545.Spec : Prop :=
  ∀ n, P11011510762885751545.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P8186394227919024466

`A000027(n+1)+(60*(n+1))²`
-/

namespace A157861.P8186394227919024466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((60 * (n + 1)) ^ 2 : ℤ)

end

end A157861.P8186394227919024466

namespace A157861

/-- `A000027(n+1)+(60*(n+1))²` -/
def P8186394227919024466.Spec : Prop :=
  ∀ n, P8186394227919024466.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P13959850308189707602

`A169823(n+1)²+n+1`
-/

namespace A157861.P13959850308189707602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169823 (n + 1) ^ 2 + (n + 1 : ℤ)

end

end A157861.P13959850308189707602

namespace A157861

/-- `A169823(n+1)²+n+1` -/
def P13959850308189707602.Spec : Prop :=
  ∀ n, P13959850308189707602.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P8586089084851633043

`A158406(2*(n+1))-3*(n+1)`
-/

namespace A157861.P8586089084851633043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158406 (2 * (n + 1)) - (3 * (n + 1) : ℤ)

end

end A157861.P8586089084851633043

namespace A157861

/-- `A158406(2*(n+1))-3*(n+1)` -/
def P8586089084851633043.Spec : Prop :=
  ∀ n, P8586089084851633043.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P15700570275124364938

`(n+1)*A158407(4*(n+1))`
-/

namespace A157861.P15700570275124364938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158407 (4 * (n + 1))

end

end A157861.P15700570275124364938

namespace A157861

/-- `(n+1)*A158407(4*(n+1))` -/
def P15700570275124364938.Spec : Prop :=
  ∀ n, P15700570275124364938.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P11012845538648203730

`A016910(A008592(n+1))+n+1`
-/

namespace A157861.P11012845538648203730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 (A008592 (n + 1)).toNat + (n + 1 : ℤ)

end

end A157861.P11012845538648203730

namespace A157861

/-- `A016910(A008592(n+1))+n+1` -/
def P11012845538648203730.Spec : Prop :=
  ∀ n, P11012845538648203730.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P1897796389865443723

`A000290(A008706(A008594(n+1)))+n+1`
-/

namespace A157861.P1897796389865443723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A008706 (A008594 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A157861.P1897796389865443723

namespace A157861

/-- `A000290(A008706(A008594(n+1)))+n+1` -/
def P1897796389865443723.Spec : Prop :=
  ∀ n, P1897796389865443723.a n = A157861 (n + 1)

end A157861

/-! ## A157861.P745903286039387751

`A096472((n+1)²)+n+1`
-/

namespace A157861.P745903286039387751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096472 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A157861.P745903286039387751

namespace A157861

/-- `A096472((n+1)²)+n+1` -/
def P745903286039387751.Spec : Prop :=
  ∀ n, P745903286039387751.a n = A157861 (n + 1)

end A157861

/-!
# A157862: a(n) = 1728000*n + 240.

The programs for A157862, the canonical program `A157862.P11086760066188653856` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157862 has offset 1).

The definition of A157862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157862.P11086760066188653856

`6*A157663(A044102(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157862

/-- `6*A157663(A044102(n+1))` -/
def P11086760066188653856.Spec : Prop :=
  ∀ n, P11086760066188653856.a n = A157862 (n + 1)

theorem P11086760066188653856.correct : P11086760066188653856.Spec := by
  intro n
  simp only [A157862, Nat.add_sub_cancel]

end A157862

/-!
# A157863: a(n) = 103680000*n^2 + 28800*n + 1.

The programs for A157863, the canonical program `A157863.P15523620367510719815` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157863 has offset 1).

The definition of A157863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157863.P15523620367510719815

`A157664(36*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157863

/-- `A157664(36*(n+1))` -/
def P15523620367510719815.Spec : Prop :=
  ∀ n, P15523620367510719815.a n = A157863 (n + 1)

theorem P15523620367510719815.correct : P15523620367510719815.Spec := by
  intro n
  simp only [A157863, Nat.add_sub_cancel]

end A157863

/-! ## A157863.P5384632002849301730

`or(1, A157664(A044102(n+1)))`
-/

namespace A157863.P5384632002849301730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157664 (A044102 (n + 1)).toNat)

end

end A157863.P5384632002849301730

namespace A157863

/-- `or(1, A157664(A044102(n+1)))` -/
def P5384632002849301730.Spec : Prop :=
  ∀ n, P5384632002849301730.a n = A157863 (n + 1)

end A157863

/-! ## A157863.P11485589486183129305

`lcm(A033999(n), A157664(A044102(n+1)))`
-/

namespace A157863.P11485589486183129305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A157664 (A044102 (n + 1)).toNat)

end

end A157863.P11485589486183129305

namespace A157863

/-- `lcm(A033999(n), A157664(A044102(n+1)))` -/
def P11485589486183129305.Spec : Prop :=
  ∀ n, (P11485589486183129305.a n : ℤ) = A157863 (n + 1)

end A157863

/-! ## A157863.P12097733589782675151

`A157664(A044102(n+1))+A000007(n+2)`
-/

namespace A157863.P12097733589782675151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157664 (A044102 (n + 1)).toNat + A000007 (n + 2)

end

end A157863.P12097733589782675151

namespace A157863

/-- `A157664(A044102(n+1))+A000007(n+2)` -/
def P12097733589782675151.Spec : Prop :=
  ∀ n, P12097733589782675151.a n = A157863 (n + 1)

end A157863

/-! ## A157863.P2213136818830469001

`A157664(A044102(n+1))/A007318(C(2, n))`
-/

namespace A157863.P2213136818830469001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157664 (A044102 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A157863.P2213136818830469001

namespace A157863

/-- `A157664(A044102(n+1))/A007318(C(2, n))` -/
def P2213136818830469001.Spec : Prop :=
  ∀ n, P2213136818830469001.a n = (A157863 (n + 1) : ℚ)

end A157863

/-! ## A157863.P6841485912247423830

`A157664(A044102(n+1))/ceil(1/A000041(n))`
-/

namespace A157863.P6841485912247423830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157664 (A044102 (n + 1)).toNat : ℚ) / (⌈1 / (A000041 n : ℚ)⌉ : ℚ)

end

end A157863.P6841485912247423830

namespace A157863

/-- `A157664(A044102(n+1))/ceil(1/A000041(n))` -/
def P6841485912247423830.Spec : Prop :=
  ∀ n, P6841485912247423830.a n = (A157863 (n + 1) : ℚ)

end A157863

/-! ## A157863.P13783843103177682991

`A157326(A044332(n+1))`
-/

namespace A157863.P13783843103177682991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157326 (A044332 (n + 1)).toNat

end

end A157863.P13783843103177682991

namespace A157863

/-- `A157326(A044332(n+1))` -/
def P13783843103177682991.Spec : Prop :=
  ∀ n, P13783843103177682991.a n = A157863 (n + 1)

end A157863

/-! ## A157863.P10536875732246418748

`A157326(A008592(10*(n+1)))`
-/

namespace A157863.P10536875732246418748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157326 (A008592 (10 * (n + 1))).toNat

end

end A157863.P10536875732246418748

namespace A157863

/-- `A157326(A008592(10*(n+1)))` -/
def P10536875732246418748.Spec : Prop :=
  ∀ n, P10536875732246418748.a n = A157863 (n + 1)

end A157863

/-! ## A157863.P13268712874130532009

`A157326(A096472(n+1)/36)`
-/

namespace A157863.P13268712874130532009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157326 (SequenceMachineLib.roundAway ((A096472 (n + 1) : ℚ) / 36)).toNat

end

end A157863.P13268712874130532009

namespace A157863

/-- `A157326(A096472(n+1)/36)` -/
def P13268712874130532009.Spec : Prop :=
  ∀ n, P13268712874130532009.a n = A157863 (n + 1)

end A157863

/-! ## A157863.P13059100165867682862

`A157511(12*12*(n+1))`
-/

namespace A157863.P13059100165867682862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157511 (12 * (12 * (n + 1)))

end

end A157863.P13059100165867682862

namespace A157863

/-- `A157511(12*12*(n+1))` -/
def P13059100165867682862.Spec : Prop :=
  ∀ n, P13059100165867682862.a n = A157863 (n + 1)

end A157863

/-!
# A157864: Numerator of Euler(n,9).

The programs for A157864, there is no canonical definition to state claims against.
-/

/-! ## A157864.P12053232160541445853

`A000079(3*n)*A171977(n+1)-A157856(n)`
-/

namespace A157864.P12053232160541445853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) * A171977 (n + 1) - A157856 n

end

end A157864.P12053232160541445853

/-!
# A157865: a(n) is the number of numbers of the form 4n+2 in A082542.

The programs for A157865, the canonical program `A157865.P9126079717468846930` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157865 has offset 0).

The definition of A157865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157865.P16636377105735679467

`Δ[A230980(4*n)]`
-/

namespace A157865.P16636377105735679467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P16636377105735679467

namespace A157865

/-- `Δ[A230980(4*n)]` -/
def P16636377105735679467.Spec : Prop :=
  ∀ n, P16636377105735679467.a n = A157865 n

end A157865

/-! ## A157865.P109934372689023105

`A168141(4*n+2)`
-/

namespace A157865.P109934372689023105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (4 * n + 2)

end

end A157865.P109934372689023105

namespace A157865

/-- `A168141(4*n+2)` -/
def P109934372689023105.Spec : Prop :=
  ∀ n, P109934372689023105.a n = A157865 n

end A157865

/-! ## A157865.P8013781176540250477

`Δ[A055679(8*n+1)]`
-/

namespace A157865.P8013781176540250477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P8013781176540250477

namespace A157865

/-- `Δ[A055679(8*n+1)]` -/
def P8013781176540250477.Spec : Prop :=
  ∀ n, P8013781176540250477.a n = A157865 n

end A157865

/-! ## A157865.P15570437499764493076

`Δ[A056172(8*n+1)]`
-/

namespace A157865.P15570437499764493076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P15570437499764493076

namespace A157865

/-- `Δ[A056172(8*n+1)]` -/
def P15570437499764493076.Spec : Prop :=
  ∀ n, P15570437499764493076.a n = A157865 n

end A157865

/-! ## A157865.P9126079717468846930

`Δ[A095117(4*n)]-4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157865

/-- `Δ[A095117(4*n)]-4` -/
def P9126079717468846930.Spec : Prop :=
  ∀ n, P9126079717468846930.a n = A157865 n

theorem P9126079717468846930.correct : P9126079717468846930.Spec := by
  intro n
  simp only [A157865]

end A157865

/-! ## A157865.P7903375318064522409

`Δ[A242096(8*n+1)]`
-/

namespace A157865.P7903375318064522409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P7903375318064522409

namespace A157865

/-- `Δ[A242096(8*n+1)]` -/
def P7903375318064522409.Spec : Prop :=
  ∀ n, P7903375318064522409.a n = A157865 n

end A157865

/-! ## A157865.P10093267353968354512

`A347622(3*(n+1)+n)`
-/

namespace A157865.P10093267353968354512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347622 (3 * (n + 1) + n)

end

end A157865.P10093267353968354512

namespace A157865

/-- `A347622(3*(n+1)+n)` -/
def P10093267353968354512.Spec : Prop :=
  ∀ n, P10093267353968354512.a n = A157865 n

end A157865

/-! ## A157865.P15090051457462990149

`Δ[A000720(abs(1-4*n))]`
-/

namespace A157865.P15090051457462990149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P15090051457462990149

namespace A157865

/-- `Δ[A000720(abs(1-4*n))]` -/
def P15090051457462990149.Spec : Prop :=
  ∀ n, P15090051457462990149.a n = A157865 n

end A157865

/-! ## A157865.P16985902228645124207

`Δ[A036234(abs(1-4*n))]`
-/

namespace A157865.P16985902228645124207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P16985902228645124207

namespace A157865

/-- `Δ[A036234(abs(1-4*n))]` -/
def P16985902228645124207.Spec : Prop :=
  ∀ n, P16985902228645124207.a n = A157865 n

end A157865

/-! ## A157865.P7294481745534663452

`2-Δ[A224710(2*(n+1))]`
-/

namespace A157865.P7294481745534663452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A157865.P7294481745534663452

namespace A157865

/-- `2-Δ[A224710(2*(n+1))]` -/
def P7294481745534663452.Spec : Prop :=
  ∀ n, P7294481745534663452.a n = A157865 n

end A157865

/-! ## A157865.P7892220147669175345

`Δ[8*n-A282029(8*n)]`
-/

namespace A157865.P7892220147669175345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - A282029 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P7892220147669175345

namespace A157865

/-- `Δ[8*n-A282029(8*n)]` -/
def P7892220147669175345.Spec : Prop :=
  ∀ n, P7892220147669175345.a n = A157865 n

end A157865

/-! ## A157865.P11779772478137613489

`A090406(A008574(n))`
-/

namespace A157865.P11779772478137613489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A008574 n).toNat

end

end A157865.P11779772478137613489

namespace A157865

/-- `A090406(A008574(n))` -/
def P11779772478137613489.Spec : Prop :=
  ∀ n, P11779772478137613489.a n = A157865 n

end A157865

/-! ## A157865.P13358063611495749822

`Δ[A099801(A004273(n))]`
-/

namespace A157865.P13358063611495749822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P13358063611495749822

namespace A157865

/-- `Δ[A099801(A004273(n))]` -/
def P13358063611495749822.Spec : Prop :=
  ∀ n, P13358063611495749822.a n = A157865 n

end A157865

/-! ## A157865.P8026752276876246574

`A090406(A336627(n+1))`
-/

namespace A157865.P8026752276876246574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A336627 (n + 1)).toNat

end

end A157865.P8026752276876246574

namespace A157865

/-- `A090406(A336627(n+1))` -/
def P8026752276876246574.Spec : Prop :=
  ∀ n, P8026752276876246574.a n = A157865 n

end A157865

/-! ## A157865.P8737902343813630021

`A090406(A019442(n+2))`
-/

namespace A157865.P8737902343813630021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A019442 (n + 2)).toNat

end

end A157865.P8737902343813630021

namespace A157865

/-- `A090406(A019442(n+2))` -/
def P8737902343813630021.Spec : Prop :=
  ∀ n, P8737902343813630021.a n = A157865 n

end A157865

/-! ## A157865.P4043088972103985517

`Δ[A063084(A004277(2*n))]`
-/

namespace A157865.P4043088972103985517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063084 (A004277 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P4043088972103985517

namespace A157865

/-- `Δ[A063084(A004277(2*n))]` -/
def P4043088972103985517.Spec : Prop :=
  ∀ n, P4043088972103985517.a n = A157865 n

end A157865

/-! ## A157865.P14782555841855540023

`Δ[A056239(A060264(2*n))]`
-/

namespace A157865.P14782555841855540023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A060264 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157865.P14782555841855540023

namespace A157865

/-- `Δ[A056239(A060264(2*n))]` -/
def P14782555841855540023.Spec : Prop :=
  ∀ n, P14782555841855540023.a n = A157865 n

end A157865

/-! ## A157865.P15498345859053367715

`abs(Δ[A000720(A008486(n)+n)])`
-/

namespace A157865.P15498345859053367715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A157865.P15498345859053367715

namespace A157865

/-- `abs(Δ[A000720(A008486(n)+n)])` -/
def P15498345859053367715.Spec : Prop :=
  ∀ n, P15498345859053367715.a n = A157865 n

end A157865

/-! ## A157865.P2569385295092432291

`abs(Δ[A000720(A004275(2*n+1))])`
-/

namespace A157865.P2569385295092432291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004275 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A157865.P2569385295092432291

namespace A157865

/-- `abs(Δ[A000720(A004275(2*n+1))])` -/
def P2569385295092432291.Spec : Prop :=
  ∀ n, P2569385295092432291.a n = A157865 n

end A157865

/-! ## A157865.P2363843666038872130

`A000032(Δ[A224710(2*(n+1))])%3`
-/

namespace A157865.P2363843666038872130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224710 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (f1 (n + 1) - f1 n).toNat) 3

end

end A157865.P2363843666038872130

namespace A157865

/-- `A000032(Δ[A224710(2*(n+1))])%3` -/
def P2363843666038872130.Spec : Prop :=
  ∀ n, P2363843666038872130.a n = A157865 n

end A157865

/-!
# A157867: Denominator of Bernoulli(n, 1/5).

The programs for A157867, the canonical program `A157867.P12689719628150824249` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157867 has offset 0).

The definition of A157867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157867.P10193288828506271743

`5^n*A288872(n)`
-/

namespace A157867.P10193288828506271743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A288872 n

end

end A157867.P10193288828506271743

namespace A157867

/-- `5^n*A288872(n)` -/
def P10193288828506271743.Spec : Prop :=
  ∀ n, P10193288828506271743.a n = A157867 n

end A157867

/-! ## A157867.P12689719628150824249

`lcm(5^n, A027642(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A157867

/-- `lcm(5^n, A027642(n))` -/
def P12689719628150824249.Spec : Prop :=
  ∀ n, (P12689719628150824249.a n : ℤ) = A157867 n

theorem P12689719628150824249.correct : P12689719628150824249.Spec := by
  intro n
  simp only [A157867]

end A157867

/-! ## A157867.P13398886824138650256

`lcm(A000351(n), A288872(n))`
-/

namespace A157867.P13398886824138650256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000351 n) (A288872 n)

end

end A157867.P13398886824138650256

namespace A157867

/-- `lcm(A000351(n), A288872(n))` -/
def P13398886824138650256.Spec : Prop :=
  ∀ n, (P13398886824138650256.a n : ℤ) = A157867 n

end A157867

/-! ## A157867.P8218186891027637218

`A288872(n)%A140814(n)*A000351(n)`
-/

namespace A157867.P8218186891027637218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288872 n) (A140814 n) * A000351 n

end

end A157867.P8218186891027637218

namespace A157867

/-- `A288872(n)%A140814(n)*A000351(n)` -/
def P8218186891027637218.Spec : Prop :=
  ∀ n, P8218186891027637218.a n = A157867 n

end A157867

/-! ## A157867.P18022458116336401082

`gcd(A002445(n), A288872(n))*A000351(n)`
-/

namespace A157867.P18022458116336401082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002445 n) (A288872 n) : ℤ) * A000351 n

end

end A157867.P18022458116336401082

namespace A157867

/-- `gcd(A002445(n), A288872(n))*A000351(n)` -/
def P18022458116336401082.Spec : Prop :=
  ∀ n, P18022458116336401082.a n = A157867 n

end A157867

/-! ## A157867.P9282857283522994018

`sqrt(lcm(A000351(n)², A172282(n)))`
-/

namespace A157867.P9282857283522994018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (A000351 n ^ 2) (A172282 n) : ℝ)

end

end A157867.P9282857283522994018

namespace A157867

/-- `sqrt(lcm(A000351(n)², A172282(n)))` -/
def P9282857283522994018.Spec : Prop :=
  ∀ n, P9282857283522994018.a n = (A157867 n : ℝ)

end A157867

/-!
# A157868: Palindromic primes with prime digital roots.

The programs for A157868, there is no canonical definition to state claims against.
-/

/-! ## A157868.P8559484578632871190

`∩[A002113(n+1), A078403(n+1)]`
-/

namespace A157868.P8559484578632871190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157868.P8559484578632871190

/-! ## A157868.P9210374230881973522

`∩[A002385(n+1), A078403(n+1)]`
-/

namespace A157868.P9210374230881973522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157868.P9210374230881973522

/-! ## A157868.P12801916801380142518

`∩[A033620(n+1), A078403(n+1)]`
-/

namespace A157868.P12801916801380142518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157868.P12801916801380142518

/-! ## A157868.P6201998943603048353

`∩[A061917(n+1), A078403(n+1)]`
-/

namespace A157868.P6201998943603048353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157868.P6201998943603048353

/-! ## A157868.P3502652141719969595

`∩[A062687(n+1), A078403(n+1)]`
-/

namespace A157868.P3502652141719969595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157868.P3502652141719969595

/-!
# A157869: Palindromic primes having both a prime middle digit and a prime digital root.

The programs for A157869, there is no canonical definition to state claims against.
-/

/-! ## A157869.P7356627679931030589

`∩[A076609(n+1), A078403(n+1)]`
-/

namespace A157869.P7356627679931030589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157869.P7356627679931030589

/-! ## A157869.P12751362341565712783

`∩[A076611(n+1), A078403(n+1)]`
-/

namespace A157869.P12751362341565712783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157869.P12751362341565712783

/-! ## A157869.P12125497604229280583

`∩[A076609(n+1), A157868(n+1)]`
-/

namespace A157869.P12125497604229280583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157869.P12125497604229280583

/-! ## A157869.P2773595087063202333

`∩[A076611(n+1), A157868(n+1)]`
-/

namespace A157869.P2773595087063202333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157869.P2773595087063202333

/-! ## A157869.P14660421014302486501

`∩[A028835(n+1), A076611(n+1)]`
-/

namespace A157869.P14660421014302486501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157869.P14660421014302486501

/-!
# A157870: a(n) = (4*n+1)*(4*n+2) = (4*n+2)!/(4*n)!.

The programs for A157870, the canonical program `A157870.P6469800247760931367` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157870 has offset 0).

The definition of A157870 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+2)` (program `A157870.P6469800247760931367`, by `A157870.P6469800247760931367.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157870.P6469800247760931367

`(4*n+1)*(4*n+2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157870

/-- `(4*n+1)*(4*n+2)` -/
def P6469800247760931367.Spec : Prop :=
  ∀ n, (P6469800247760931367.a n : ℤ) = A157870 n

theorem P6469800247760931367.correct : P6469800247760931367.Spec := by
  intro n
  simp only [A157870]

end A157870

/-! ## A157870.P15114428470107922070

`A002378(4*n+1)`
-/

namespace A157870.P15114428470107922070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (4 * n + 1)

end

end A157870.P15114428470107922070

namespace A157870

/-- `A002378(4*n+1)` -/
def P15114428470107922070.Spec : Prop :=
  ∀ n, P15114428470107922070.a n = A157870 n

end A157870

/-! ## A157870.P7917856011158173456

`(4*n+2)!/(4*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157870.P7917856011158173456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n + 2) : ℚ) / (Nat.factorial (4 * n) : ℚ)

end

end A157870.P7917856011158173456

namespace A157870

/-- `(4*n+2)!/(4*n)!` -/
def P7917856011158173456.Spec : Prop :=
  ∀ n, P7917856011158173456.a n = (A157870 n : ℚ)

end A157870

/-! ## A157870.P18162450928995367322

`record[xor(1, n)*xor(2, n)]`
-/

namespace A157870.P18162450928995367322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157870.P18162450928995367322

namespace A157870

/-- `record[xor(1, n)*xor(2, n)]` -/
def P18162450928995367322.Spec : Prop :=
  ∀ n, (P18162450928995367322.a n : ℤ) = A157870 n

end A157870

/-! ## A157870.P1388695754144428798

`∑[a(n-1)+32]` with `a(0)=2, a(1)=28`
-/

namespace A157870.P1388695754144428798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 28] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157870.P1388695754144428798

namespace A157870

/-- `∑[a(n-1)+32]` -/
def P1388695754144428798.Spec : Prop :=
  ∀ n, (P1388695754144428798.a n : ℤ) = A157870 n

end A157870

/-! ## A157870.P14999787463003464197

`lcm(2, C(Δ[n*2*n], 2))`
-/

namespace A157870.P14999787463003464197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A157870.P14999787463003464197

namespace A157870

/-- `lcm(2, C(Δ[n*2*n], 2))` -/
def P14999787463003464197.Spec : Prop :=
  ∀ n, (P14999787463003464197.a n : ℤ) = A157870 n

end A157870

/-! ## A157870.P16410351330073448720

`32*n-(4-a(n-1))` with `a(0)=2`
-/

namespace A157870.P16410351330073448720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (32 * n : ℤ) - (4 - a (n - 1))

end

end A157870.P16410351330073448720

namespace A157870

/-- `32*n-(4-a(n-1))` -/
def P16410351330073448720.Spec : Prop :=
  ∀ n, P16410351330073448720.a n = A157870 n

end A157870

/-! ## A157870.P11041383264198690471

`lcm(2-Δ[(2*n)²], Δ[n²])`
-/

namespace A157870.P11041383264198690471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A157870.P11041383264198690471

namespace A157870

/-- `lcm(2-Δ[(2*n)²], Δ[n²])` -/
def P11041383264198690471.Spec : Prop :=
  ∀ n, (P11041383264198690471.a n : ℤ) = A157870 n

end A157870

/-! ## A157870.P5726233537199511739

`4*A033954(n)+2`
-/

namespace A157870.P5726233537199511739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033954 n + 2

end

end A157870.P5726233537199511739

namespace A157870

/-- `4*A033954(n)+2` -/
def P5726233537199511739.Spec : Prop :=
  ∀ n, P5726233537199511739.a n = A157870 n

end A157870

/-! ## A157870.P16176518818472183918

`(A017102(n)-1)/4`
-/

namespace A157870.P16176518818472183918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017102 n - 1 : ℚ) / 4

end

end A157870.P16176518818472183918

namespace A157870

/-- `(A017102(n)-1)/4` -/
def P16176518818472183918.Spec : Prop :=
  ∀ n, P16176518818472183918.a n = (A157870 n : ℚ)

end A157870

/-! ## A157870.P16310420609702058892

`4*A033951(n)-2`
-/

namespace A157870.P16310420609702058892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033951 n - 2

end

end A157870.P16310420609702058892

namespace A157870

/-- `4*A033951(n)-2` -/
def P16310420609702058892.Spec : Prop :=
  ∀ n, P16310420609702058892.a n = A157870 n

end A157870

/-! ## A157870.P18184215917860289478

`floor((A017101(n)/2)²)`
-/

namespace A157870.P18184215917860289478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A017101 n : ℚ) / 2) ^ 2⌋

end

end A157870.P18184215917860289478

namespace A157870

/-- `floor((A017101(n)/2)²)` -/
def P18184215917860289478.Spec : Prop :=
  ∀ n, P18184215917860289478.a n = A157870 n

end A157870

/-! ## A157870.P11321694623618188427

`A028993(n)+Δ[n²]`
-/

namespace A157870.P11321694623618188427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028993 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A157870.P11321694623618188427

namespace A157870

/-- `A028993(n)+Δ[n²]` -/
def P11321694623618188427.Spec : Prop :=
  ∀ n, P11321694623618188427.a n = A157870 n

end A157870

/-! ## A157870.P16519553478738690106

`A343578(n+1)/2+1`
-/

namespace A157870.P16519553478738690106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343578 (n + 1) : ℚ) / 2 + 1

end

end A157870.P16519553478738690106

namespace A157870

/-- `A343578(n+1)/2+1` -/
def P16519553478738690106.Spec : Prop :=
  ∀ n, P16519553478738690106.a n = (A157870 n : ℚ)

end A157870

/-! ## A157870.P1029772560723337041

`A016754(n)+A014641(n)`
-/

namespace A157870.P1029772560723337041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A014641 n

end

end A157870.P1029772560723337041

namespace A157870

/-- `A016754(n)+A014641(n)` -/
def P1029772560723337041.Spec : Prop :=
  ∀ n, P1029772560723337041.a n = A157870 n

end A157870

/-! ## A157870.P13552158857772025009

`A016814(n)+A016813(n)`
-/

namespace A157870.P13552158857772025009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n + A016813 n

end

end A157870.P13552158857772025009

namespace A157870

/-- `A016814(n)+A016813(n)` -/
def P13552158857772025009.Spec : Prop :=
  ∀ n, P13552158857772025009.a n = A157870 n

end A157870

/-! ## A157870.P9921619591392269442

`A017545(n)+A016802(n)`
-/

namespace A157870.P9921619591392269442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n + A016802 n

end

end A157870.P9921619591392269442

namespace A157870

/-- `A017545(n)+A016802(n)` -/
def P9921619591392269442.Spec : Prop :=
  ∀ n, P9921619591392269442.a n = A157870 n

end A157870

/-! ## A157870.P4956288585342070941

`A033571(n)+A033570(n)`
-/

namespace A157870.P4956288585342070941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033571 n + A033570 n

end

end A157870.P4956288585342070941

namespace A157870

/-- `A033571(n)+A033570(n)` -/
def P4956288585342070941.Spec : Prop :=
  ∀ n, P4956288585342070941.a n = A157870 n

end A157870

/-! ## A157870.P760393646928780655

`A082041(n)+A017077(n)`
-/

namespace A157870.P760393646928780655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n + A017077 n

end

end A157870.P760393646928780655

namespace A157870

/-- `A082041(n)+A017077(n)` -/
def P760393646928780655.Spec : Prop :=
  ∀ n, P760393646928780655.a n = A157870 n

end A157870

/-! ## A157870.P11243923191472805632

`A080861(n)+A028884(n)`
-/

namespace A157870.P11243923191472805632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080861 n + A028884 n

end

end A157870.P11243923191472805632

namespace A157870

/-- `A080861(n)+A028884(n)` -/
def P11243923191472805632.Spec : Prop :=
  ∀ n, P11243923191472805632.a n = A157870 n

end A157870

/-!
# A157872: a(n) = 9*n^2 - 3.

The programs for A157872, the canonical program `A157872.P14767788552816275263` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157872 has offset 1).

The definition of A157872 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²-3` (program `A157872.P14767788552816275263`, by `A157872.P14767788552816275263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157872.P14767788552816275263

`9*(n+1)²-3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157872

/-- `9*(n+1)²-3` -/
def P14767788552816275263.Spec : Prop :=
  ∀ n, P14767788552816275263.a n = A157872 (n + 1)

theorem P14767788552816275263.correct : P14767788552816275263.Spec := by
  intro n
  simp only [A157872, Nat.add_sub_cancel]

end A157872

/-! ## A157872.P17443021983698304367

`3*A080663(n+1)`
-/

namespace A157872.P17443021983698304367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080663 (n + 1)

end

end A157872.P17443021983698304367

namespace A157872

/-- `3*A080663(n+1)` -/
def P17443021983698304367.Spec : Prop :=
  ∀ n, P17443021983698304367.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P2490740087438759003

`∑[a(n-1)+18]` with `a(0)=6, a(1)=27`
-/

namespace A157872.P2490740087438759003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 27] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157872.P2490740087438759003

namespace A157872

/-- `∑[a(n-1)+18]` -/
def P2490740087438759003.Spec : Prop :=
  ∀ n, (P2490740087438759003.a n : ℤ) = A157872 (n + 1)

end A157872

/-! ## A157872.P11571379965725896941

`record[(3*(1-n))²-3]`
-/

namespace A157872.P11571379965725896941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (1 - (n : ℤ))) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157872.P11571379965725896941

namespace A157872

/-- `record[(3*(1-n))²-3]` -/
def P11571379965725896941.Spec : Prop :=
  ∀ n, P11571379965725896941.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P13713541870458431238

`floor((3/sinh(1/(n+1)))²)`
-/

namespace A157872.P13713541870458431238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 / Real.sinh (1 / (n + 1 : ℚ) : ℝ)) ^ 2⌋

end

end A157872.P13713541870458431238

namespace A157872

/-- `floor((3/sinh(1/(n+1)))²)` -/
def P13713541870458431238.Spec : Prop :=
  ∀ n, P13713541870458431238.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P9714463040780055445

`3*∑[ogf((2+5x-x^2)/(1-2x+x^2))]`
-/

namespace A157872.P9714463040780055445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157872.P9714463040780055445

namespace A157872

/-- `3*∑[ogf((2+5x-x^2)/(1-2x+x^2))]` -/
def P9714463040780055445.Spec : Prop :=
  ∀ n, P9714463040780055445.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P3338896663445451670

`lcm(3, ∑[ogf((2+5x-x^2)/(1-2x+x^2))])`
-/

namespace A157872.P3338896663445451670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -1] [1, -2, 1] n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157872.P3338896663445451670

namespace A157872

/-- `lcm(3, ∑[ogf((2+5x-x^2)/(1-2x+x^2))])` -/
def P3338896663445451670.Spec : Prop :=
  ∀ n, (P3338896663445451670.a n : ℤ) = A157872 (n + 1)

end A157872

/-! ## A157872.P6825218224682110876

`abs(a(n-1)+9*(2*n+1))` with `a(0)=6`
-/

namespace A157872.P6825218224682110876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A157872.P6825218224682110876

namespace A157872

/-- `abs(a(n-1)+9*(2*n+1))` -/
def P6825218224682110876.Spec : Prop :=
  ∀ n, (P6825218224682110876.a n : ℤ) = A157872 (n + 1)

end A157872

/-! ## A157872.P6090254658813382450

`floor(a(n-1)+9*(2*n+1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A157872.P6090254658813382450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A157872.P6090254658813382450

namespace A157872

/-- `floor(a(n-1)+9*(2*n+1))` -/
def P6090254658813382450.Spec : Prop :=
  ∀ n, (P6090254658813382450.a n : ℤ) = A157872 (n + 1)

end A157872

/-! ## A157872.P13752126265679458912

`ceil(a(n-1)+9*(2*n+1))` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A157872.P13752126265679458912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A157872.P13752126265679458912

namespace A157872

/-- `ceil(a(n-1)+9*(2*n+1))` -/
def P13752126265679458912.Spec : Prop :=
  ∀ n, (P13752126265679458912.a n : ℤ) = A157872 (n + 1)

end A157872

/-! ## A157872.P13152603650240826711

`round(a(n-1)+9*(2*n+1))` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A157872.P13152603650240826711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A157872.P13152603650240826711

namespace A157872

/-- `round(a(n-1)+9*(2*n+1))` -/
def P13152603650240826711.Spec : Prop :=
  ∀ n, (P13152603650240826711.a n : ℤ) = A157872 (n + 1)

end A157872

/-! ## A157872.P7137340678452730290

`3*(A067725(n)+2)`
-/

namespace A157872.P7137340678452730290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A067725 n + 2)

end

end A157872.P7137340678452730290

namespace A157872

/-- `3*(A067725(n)+2)` -/
def P7137340678452730290.Spec : Prop :=
  ∀ n, P7137340678452730290.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P10941691443204711575

`3*(A100536(n+1)+1)`
-/

namespace A157872.P10941691443204711575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A100536 (n + 1) + 1)

end

end A157872.P10941691443204711575

namespace A157872

/-- `3*(A100536(n+1)+1)` -/
def P10941691443204711575.Spec : Prop :=
  ∀ n, P10941691443204711575.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P16480261511792973226

`3*(A033428(n+1)-1)`
-/

namespace A157872.P16480261511792973226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A033428 (n + 1) - 1)

end

end A157872.P16480261511792973226

namespace A157872

/-- `3*(A033428(n+1)-1)` -/
def P16480261511792973226.Spec : Prop :=
  ∀ n, P16480261511792973226.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P3612581294177695379

`3*(3*A005563(n)+2)`
-/

namespace A157872.P3612581294177695379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A005563 n + 2)

end

end A157872.P3612581294177695379

namespace A157872

/-- `3*(3*A005563(n)+2)` -/
def P3612581294177695379.Spec : Prop :=
  ∀ n, P3612581294177695379.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P341238934019538747

`(A157910(n+1)-5)/2`
-/

namespace A157872.P341238934019538747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157910 (n + 1) - 5 : ℚ) / 2

end

end A157872.P341238934019538747

namespace A157872

/-- `(A157910(n+1)-5)/2` -/
def P341238934019538747.Spec : Prop :=
  ∀ n, P341238934019538747.a n = (A157872 (n + 1) : ℚ)

end A157872

/-! ## A157872.P533042934228626735

`abs((A016777(n)+2)²-3)`
-/

namespace A157872.P533042934228626735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016777 n + 2) ^ 2 - 3|

end

end A157872.P533042934228626735

namespace A157872

/-- `abs((A016777(n)+2)²-3)` -/
def P533042934228626735.Spec : Prop :=
  ∀ n, P533042934228626735.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P6366710970051332017

`3*(A144390(n+1)+n+1)`
-/

namespace A157872.P6366710970051332017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A144390 (n + 1) + (n + 1 : ℤ))

end

end A157872.P6366710970051332017

namespace A157872

/-- `3*(A144390(n+1)+n+1)` -/
def P6366710970051332017.Spec : Prop :=
  ∀ n, P6366710970051332017.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P14076963984669459637

`3*(A144391(n+1)-(n+1))`
-/

namespace A157872.P14076963984669459637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A144391 (n + 1) - (n + 1 : ℤ))

end

end A157872.P14076963984669459637

namespace A157872

/-- `3*(A144391(n+1)-(n+1))` -/
def P14076963984669459637.Spec : Prop :=
  ∀ n, P14076963984669459637.a n = A157872 (n + 1)

end A157872

/-! ## A157872.P16964888738837534472

`A176711(n)%A141759(n)`
-/

namespace A157872.P16964888738837534472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176711 n) (A141759 n)

end

end A157872.P16964888738837534472

namespace A157872

/-- `A176711(n)%A141759(n)` -/
def P16964888738837534472.Spec : Prop :=
  ∀ n, P16964888738837534472.a n = A157872 (n + 1)

end A157872

/-!
# A157873: Triangle T(n,m)= binomial(n,2^m) + binomial(n,2^(n - m)) read by rows.

The programs for A157873, the canonical program `A157873.P13317154741437106830` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157873 has offset 0).

The definition of A157873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), 2^col(n))+C(row(n), 2^(row(n)-col(n)))` (program `A157873.P13317154741437106830`, by `A157873.P13317154741437106830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157873.P13317154741437106830

`C(row(n), 2^col(n))+C(row(n), 2^(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157873

/-- `C(row(n), 2^col(n))+C(row(n), 2^(row(n)-col(n)))` -/
def P13317154741437106830.Spec : Prop :=
  ∀ n, (P13317154741437106830.a n : ℤ) = A157873 n

theorem P13317154741437106830.correct : P13317154741437106830.Spec := by
  intro n
  simp only [A157873]

end A157873

/-! ## A157873.P13843720458866727163

`A003986(n)*A323023(A174117(n))`
-/

namespace A157873.P13843720458866727163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n * A323023 (A174117 n).toNat

end

end A157873.P13843720458866727163

namespace A157873

/-- `A003986(n)*A323023(A174117(n))` -/
def P13843720458866727163.Spec : Prop :=
  ∀ n, P13843720458866727163.a n = A157873 n

end A157873

/-! ## A157873.P8499130465905898450

`A003986(n)*A332489(A176420(n))`
-/

namespace A157873.P8499130465905898450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n * A332489 (A176420 n).toNat

end

end A157873.P8499130465905898450

namespace A157873

/-- `A003986(n)*A332489(A176420(n))` -/
def P8499130465905898450.Spec : Prop :=
  ∀ n, P8499130465905898450.a n = A157873 n

end A157873

/-! ## A157873.P2859064773584014020

`A003986(n)*A353932(A184173(n))`
-/

namespace A157873.P2859064773584014020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n * A353932 (A184173 n).toNat

end

end A157873.P2859064773584014020

namespace A157873

/-- `A003986(n)*A353932(A184173(n))` -/
def P2859064773584014020.Spec : Prop :=
  ∀ n, P2859064773584014020.a n = A157873 n

end A157873

/-!
# A157874: Expansion of 104*x^2 / (-x^3+675*x^2-675*x+1).

The programs for A157874, there is no canonical definition to state claims against.
-/

/-! ## A157874.P8685271917868118901

`A174779(n+1)*A174779(n+2)`
-/

namespace A157874.P8685271917868118901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174779 (n + 1) * A174779 (n + 2)

end

end A157874.P8685271917868118901

/-! ## A157874.P1453086858812387828

`A157461(n+1)²-A153111(n+1)²`
-/

namespace A157874.P1453086858812387828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157461 (n + 1) ^ 2 - A153111 (n + 1) ^ 2

end

end A157874.P1453086858812387828

/-!
# A157875: Numerator of Euler(n,10).

The programs for A157875, there is no canonical definition to state claims against.
-/

/-! ## A157875.P11888601495633024433

`10^n*A171977(n+1)-A157886(n)`
-/

namespace A157875.P11888601495633024433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A171977 (n + 1) - A157886 n

end

end A157875.P11888601495633024433

/-!
# A157876: Let f(x) = 1 + x^2 + x^4 + x^5 + x^6 + x^10 + x^11; sequence has g.f. g(x) = 1/(x^11*f(1/x)).

The programs for A157876, there is no canonical definition to state claims against.
-/

/-! ## A157876.P7017948805343841904

`(-1)^n*A048766(A318008(n+1))`
-/

namespace A157876.P7017948805343841904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A048766 (A318008 (n + 1)).toNat

end

end A157876.P7017948805343841904

/-! ## A157876.P4523321771036145600

`A033999(n)*A048766(A122852(n))`
-/

namespace A157876.P4523321771036145600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A048766 (A122852 n).toNat

end

end A157876.P4523321771036145600

/-! ## A157876.P9497740217937348951

`A048766(A318008(n+1))/A033999(n)`
-/

namespace A157876.P9497740217937348951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 (A318008 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A157876.P9497740217937348951

/-!
# A157877: Expansion of (1-x)*x/(x^2-30*x+1).

The programs for A157877, the canonical program `A157877.P18039107529371152237` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157877 has offset 1).

The definition of A157877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-30x+x^2))` (program `A157877.P18039107529371152237`, by `A157877.P18039107529371152237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157877.P18039107529371152237

`ogf((1-x)/(1-30x+x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157877

/-- `ogf((1-x)/(1-30x+x^2))` -/
def P18039107529371152237.Spec : Prop :=
  ∀ n, P18039107529371152237.a n = A157877 (n + 1)

theorem P18039107529371152237.correct : P18039107529371152237.Spec := by
  intro n
  simp only [A157877, Nat.add_sub_cancel]

end A157877

/-! ## A157877.P15077961805249870481

`30*a(n-1)-a(n-2)` with `a(0)=1, a(1)=29`
-/

namespace A157877.P15077961805249870481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  30 * a (n - 1) - a (n - 2)

end

end A157877.P15077961805249870481

namespace A157877

/-- `30*a(n-1)-a(n-2)` -/
def P15077961805249870481.Spec : Prop :=
  ∀ n, P15077961805249870481.a n = A157877 (n + 1)

end A157877

/-! ## A157877.P5135713486216249550

`A041097(2*n)`
-/

namespace A157877.P5135713486216249550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041097 (2 * n)

end

end A157877.P5135713486216249550

namespace A157877

/-- `A041097(2*n)` -/
def P5135713486216249550.Spec : Prop :=
  ∀ n, P5135713486216249550.a n = A157877 (n + 1)

end A157877

/-! ## A157877.P458125943650615085

`A041419(2*n)`
-/

namespace A157877.P458125943650615085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041419 (2 * n)

end

end A157877.P458125943650615085

namespace A157877

/-- `A041419(2*n)` -/
def P458125943650615085.Spec : Prop :=
  ∀ n, P458125943650615085.a n = A157877 (n + 1)

end A157877

/-! ## A157877.P8566236524562885391

`Δ[A068204(n+1)/4]`
-/

namespace A157877.P8566236524562885391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068204 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157877.P8566236524562885391

namespace A157877

/-- `Δ[A068204(n+1)/4]` -/
def P8566236524562885391.Spec : Prop :=
  ∀ n, P8566236524562885391.a n = (A157877 (n + 1) : ℚ)

end A157877

/-! ## A157877.P13336343378955812156

`2*A253447(n+1)-1`
-/

namespace A157877.P13336343378955812156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253447 (n + 1) - 1

end

end A157877.P13336343378955812156

namespace A157877

/-- `2*A253447(n+1)-1` -/
def P13336343378955812156.Spec : Prop :=
  ∀ n, P13336343378955812156.a n = A157877 (n + 1)

end A157877

/-! ## A157877.P15805030057476831983

`A157878(n+1)-A068204(n+1)/2`
-/

namespace A157877.P15805030057476831983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157878 (n + 1) : ℚ) - (A068204 (n + 1) : ℚ) / 2

end

end A157877.P15805030057476831983

namespace A157877

/-- `A157878(n+1)-A068204(n+1)/2` -/
def P15805030057476831983.Spec : Prop :=
  ∀ n, P15805030057476831983.a n = (A157877 (n + 1) : ℚ)

end A157877

/-! ## A157877.P15062529055444022293

`(A048911(2*(n+1))-A048911(2*n+1))/2`
-/

namespace A157877.P15062529055444022293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (2 * (n + 1)) - A048911 (2 * n + 1) : ℚ) / 2

end

end A157877.P15062529055444022293

namespace A157877

/-- `(A048911(2*(n+1))-A048911(2*n+1))/2` -/
def P15062529055444022293.Spec : Prop :=
  ∀ n, P15062529055444022293.a n = (A157877 (n + 1) : ℚ)

end A157877

/-!
# A157878: Expansion of x*(1+x)/(x^2-30*x+1).

The programs for A157878, the canonical program `A157878.P1474874672088780063` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157878 has offset 1).

The definition of A157878 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-30x+x^2))` (program `A157878.P1474874672088780063`, by `A157878.P1474874672088780063.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157878.P1474874672088780063

`ogf((1+x)/(1-30x+x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157878

/-- `ogf((1+x)/(1-30x+x^2))` -/
def P1474874672088780063.Spec : Prop :=
  ∀ n, P1474874672088780063.a n = A157878 (n + 1)

theorem P1474874672088780063.correct : P1474874672088780063.Spec := by
  intro n
  simp only [A157878, Nat.add_sub_cancel]

end A157878

/-! ## A157878.P14594839449536276966

`30*a(n-1)-a(n-2)` with `a(0)=1, a(1)=31`
-/

namespace A157878.P14594839449536276966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  30 * a (n - 1) - a (n - 2)

end

end A157878.P14594839449536276966

namespace A157878

/-- `30*a(n-1)-a(n-2)` -/
def P14594839449536276966.Spec : Prop :=
  ∀ n, P14594839449536276966.a n = A157878 (n + 1)

end A157878

/-! ## A157878.P4265563888425921118

`Δ[A322709(n)/7]`
-/

namespace A157878.P4265563888425921118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322709 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157878.P4265563888425921118

namespace A157878

/-- `Δ[A322709(n)/7]` -/
def P4265563888425921118.Spec : Prop :=
  ∀ n, P4265563888425921118.a n = (A157878 (n + 1) : ℚ)

end A157878

/-! ## A157878.P10808254801427180416

`A041021(4*n+1)`
-/

namespace A157878.P10808254801427180416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041021 (4 * n + 1)

end

end A157878.P10808254801427180416

namespace A157878

/-- `A041021(4*n+1)` -/
def P10808254801427180416.Spec : Prop :=
  ∀ n, P10808254801427180416.a n = A157878 (n + 1)

end A157878

/-! ## A157878.P17793527936391060780

`A041096(2*n)/7`
-/

namespace A157878.P17793527936391060780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041096 (2 * n) : ℚ) / 7

end

end A157878.P17793527936391060780

namespace A157878

/-- `A041096(2*n)/7` -/
def P17793527936391060780.Spec : Prop :=
  ∀ n, P17793527936391060780.a n = (A157878 (n + 1) : ℚ)

end A157878

/-! ## A157878.P14484531410921535035

`∑[2*A068203(n)]-1`
-/

namespace A157878.P14484531410921535035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A157878.P14484531410921535035

namespace A157878

/-- `∑[2*A068203(n)]-1` -/
def P14484531410921535035.Spec : Prop :=
  ∀ n, P14484531410921535035.a n = A157878 (n + 1)

end A157878

/-! ## A157878.P3655101354951203403

`2*A253446(n+1)-1`
-/

namespace A157878.P3655101354951203403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253446 (n + 1) - 1

end

end A157878.P3655101354951203403

namespace A157878

/-- `2*A253446(n+1)-1` -/
def P3655101354951203403.Spec : Prop :=
  ∀ n, P3655101354951203403.a n = A157878 (n + 1)

end A157878

/-! ## A157878.P17967681271047114903

`A295337(3*n+n+1)`
-/

namespace A157878.P17967681271047114903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295337 (3 * n + (n + 1))

end

end A157878.P17967681271047114903

namespace A157878

/-- `A295337(3*n+n+1)` -/
def P17967681271047114903.Spec : Prop :=
  ∀ n, P17967681271047114903.a n = A157878 (n + 1)

end A157878

/-! ## A157878.P5983737372712130635

`record[2*A041021(n)-A295337(n)]`
-/

namespace A157878.P5983737372712130635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041021 n - A295337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157878.P5983737372712130635

namespace A157878

/-- `record[2*A041021(n)-A295337(n)]` -/
def P5983737372712130635.Spec : Prop :=
  ∀ n, P5983737372712130635.a n = A157878 (n + 1)

end A157878

/-!
# A157879: Expansion of 120*x^2 / (-x^3+899*x^2-899*x+1).

The programs for A157879, there is no canonical definition to state claims against.
-/

/-! ## A157879.P8264820218465042131

`∑[A068204(Δ[n²])]`
-/

namespace A157879.P8264820218465042131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068204 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157879.P8264820218465042131

/-! ## A157879.P5556280150029919736

`lcm(A068204(n+1), A068204(n+2))`
-/

namespace A157879.P5556280150029919736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068204 (n + 1)) (A068204 (n + 2))

end

end A157879.P5556280150029919736

/-! ## A157879.P11027378824896405968

`∑[A157877(n+1)]*A068204(n+1)`
-/

namespace A157879.P11027378824896405968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A068204 (n + 1)

end

end A157879.P11027378824896405968

/-! ## A157879.P10592650177808495492

`(A253446(n+1)²-A253446(n+1))/2`
-/

namespace A157879.P10592650177808495492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253446 (n + 1) ^ 2 - A253446 (n + 1) : ℚ) / 2

end

end A157879.P10592650177808495492

/-!
# A157880: Expansion of 136*x^2 / (-x^3+1155*x^2-1155*x+1).

The programs for A157880, there is no canonical definition to state claims against.
-/

/-! ## A157880.P5050567803531002899

`C(A280181(n+1), 2)`
-/

namespace A157880.P5050567803531002899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280181 (n + 1)).toNat 2

end

end A157880.P5050567803531002899

/-! ## A157880.P16615905174287283743

`∑[A202299(2*n+1)]`
-/

namespace A157880.P16615905174287283743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202299 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157880.P16615905174287283743

/-! ## A157880.P10894619083213782606

`(A046177(n+1)-1)/9`
-/

namespace A157880.P10894619083213782606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046177 (n + 1) - 1 : ℚ) / 9

end

end A157880.P10894619083213782606

/-! ## A157880.P14549291734476104882

`floor(A001110(2*n+1)/9)`
-/

namespace A157880.P14549291734476104882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001110 (2 * n + 1) : ℚ) / 9⌋

end

end A157880.P14549291734476104882

/-! ## A157880.P12109662360584564609

`A029547(n)*A202299(n+1)`
-/

namespace A157880.P12109662360584564609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029547 n * A202299 (n + 1)

end

end A157880.P12109662360584564609

/-!
# A157881: Expansion of 152*x^2 / (-x^3+1443*x^2-1443*x+1).

The programs for A157881, there is no canonical definition to state claims against.
-/

/-! ## A157881.P10042434823617076590

`floor((A097315(n)/3)²)`
-/

namespace A157881.P10042434823617076590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A097315 n : ℚ) / 3) ^ 2⌋

end

end A157881.P10042434823617076590

/-! ## A157881.P14507532073800432971

`floor(A097314(n)²/10)`
-/

namespace A157881.P14507532073800432971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097314 n ^ 2 : ℚ) / 10⌋

end

end A157881.P14507532073800432971

/-! ## A157881.P10451968521233560674

`A097314(n)²-A097315(n)²`
-/

namespace A157881.P10451968521233560674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097314 n ^ 2 - A097315 n ^ 2

end

end A157881.P10451968521233560674

/-! ## A157881.P10257073930669746910

`(A173127(n+1)/3)²-A099366(2*n+1)`
-/

namespace A157881.P10257073930669746910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173127 (n + 1) : ℚ) / 3) ^ 2 - (A099366 (2 * n + 1) : ℚ)

end

end A157881.P10257073930669746910

/-!
# A157884: For each positive integer m there exist at least one prime Q=Q(m) and at least one prime P=P(m) such that (2m-1)^2 < Q < (2m)^2 - (2m-1) <= P < (2m)^2. Sequence lists pairs P(m), Q(m) for m >= 1. If more than one prime for P or Q exists, we take the smallest.

The programs for A157884, there is no canonical definition to state claims against.
-/

/-! ## A157884.P15878372290521070129

`A151800(or(1, n)*(n+1))`
-/

namespace A157884.P15878372290521070129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Nat.lor 1 n * (n + 1))

end

end A157884.P15878372290521070129

/-! ## A157884.P1107266787222200750

`A151800(n*(gcd(2, n)+n))`
-/

namespace A157884.P1107266787222200750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n * (Nat.gcd 2 n + n))

end

end A157884.P1107266787222200750

/-! ## A157884.P9057203577483293898

`A060264(n*∑[char[2*n]])`
-/

namespace A157884.P9057203577483293898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A157884.P9057203577483293898

/-! ## A157884.P12780458946951428033

`A007918(n*(or(1, n)+1)+1)`
-/

namespace A157884.P12780458946951428033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n * (Nat.lor 1 n + 1) + 1)

end

end A157884.P12780458946951428033

/-! ## A157884.P17481000750575986894

`A151800(n*(2-and(1, n)+n))`
-/

namespace A157884.P17481000750575986894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * (2 - (Nat.land 1 n : ℤ) + (n : ℤ))).toNat

end

end A157884.P17481000750575986894

/-! ## A157884.P17234787193883722367

`A151800(2*n*∑[char[2*n]])`
-/

namespace A157884.P17234787193883722367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A157884.P17234787193883722367

/-! ## A157884.P1875727723665806657

`A007918((n+1)²-n*n%2)`
-/

namespace A157884.P1875727723665806657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2 - n * (n % 2))

end

end A157884.P1875727723665806657

/-! ## A157884.P12030223887892786828

`A007918((n+1)²-n*and(1, n))`
-/

namespace A157884.P12030223887892786828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2 - n * Nat.land 1 n)

end

end A157884.P12030223887892786828

/-! ## A157884.P7168704828134627430

`A007918((n+1)²-C(n, and(1, n)))`
-/

namespace A157884.P7168704828134627430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2 - Nat.choose n (Nat.land 1 n))

end

end A157884.P7168704828134627430

/-! ## A157884.P11498207773488084973

`A007918((n+1)²-C(n, xor(1, n)))`
-/

namespace A157884.P11498207773488084973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2 - Nat.choose n (Nat.xor 1 n))

end

end A157884.P11498207773488084973

/-!
# A157886: Numerator of Euler(n,11).

The programs for A157886, there is no canonical definition to state claims against.
-/

/-! ## A157886.P7816909467266967511

`2*A156293(n)-A157907(n)`
-/

namespace A157886.P7816909467266967511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156293 n - A157907 n

end

end A157886.P7816909467266967511

/-! ## A157886.P18405647867648439581

`A001020(n)*A171977(n+1)-A157907(n)`
-/

namespace A157886.P18405647867648439581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n * A171977 (n + 1) - A157907 n

end

end A157886.P18405647867648439581

/-! ## A157886.P9900182630345668492

`lcm(A156293(n), A171977(n+1))-A157907(n)`
-/

namespace A157886.P9900182630345668492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A156293 n) (A171977 (n + 1)) : ℤ) - A157907 n

end

end A157886.P9900182630345668492

/-!
# A157888: a(n) = 81*n^2 + 9.

The programs for A157888, the canonical program `A157888.P15328883257316002746` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157888 has offset 1).

The definition of A157888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)²+9` (program `A157888.P15328883257316002746`, by `A157888.P15328883257316002746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157888.P15328883257316002746

`81*(n+1)²+9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157888

/-- `81*(n+1)²+9` -/
def P15328883257316002746.Spec : Prop :=
  ∀ n, (P15328883257316002746.a n : ℤ) = A157888 (n + 1)

theorem P15328883257316002746.correct : P15328883257316002746.Spec := by
  intro n
  simp only [A157888, Nat.add_sub_cancel]

end A157888

/-! ## A157888.P9690775877582554938

`9*A247792(n+1)`
-/

namespace A157888.P9690775877582554938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A247792 (n + 1)

end

end A157888.P9690775877582554938

namespace A157888

/-- `9*A247792(n+1)` -/
def P9690775877582554938.Spec : Prop :=
  ∀ n, P9690775877582554938.a n = A157888 (n + 1)

theorem P9690775877582554938.correct : P9690775877582554938.Spec := by
  intro n
  simp only [A157888, Nat.add_sub_cancel, A157888.P9690775877582554938.a, A157888.P15328883257316002746.a, A247792, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157888

/-! ## A157888.P5854780882051628364

`A158655(n+1)%A158589(n+1)`
-/

namespace A157888.P5854780882051628364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158655 (n + 1)) (A158589 (n + 1))

end

end A157888.P5854780882051628364

namespace A157888

/-- `A158655(n+1)%A158589(n+1)` -/
def P5854780882051628364.Spec : Prop :=
  ∀ n, P5854780882051628364.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P9874321889661353907

`lcm(A136016(n+1)+2, A040073(n))`
-/

namespace A157888.P9874321889661353907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136016 (n + 1) + 2) (A040073 n)

end

end A157888.P9874321889661353907

namespace A157888

/-- `lcm(A136016(n+1)+2, A040073(n))` -/
def P9874321889661353907.Spec : Prop :=
  ∀ n, (P9874321889661353907.a n : ℤ) = A157888 (n + 1)

end A157888

/-! ## A157888.P11679530844861760033

`3*(A010017(n+1)+1)`
-/

namespace A157888.P11679530844861760033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A010017 (n + 1) + 1)

end

end A157888.P11679530844861760033

namespace A157888

/-- `3*(A010017(n+1)+1)` -/
def P11679530844861760033.Spec : Prop :=
  ∀ n, P11679530844861760033.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P5928394568816634587

`3*(A244634(n+1)+3)`
-/

namespace A157888.P5928394568816634587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A244634 (n + 1) + 3)

end

end A157888.P5928394568816634587

namespace A157888

/-- `3*(A244634(n+1)+3)` -/
def P5928394568816634587.Spec : Prop :=
  ∀ n, P5928394568816634587.a n = A157888 (n + 1)

theorem P5928394568816634587.correct : P5928394568816634587.Spec := by
  intro n
  simp only [A157888, Nat.add_sub_cancel, A157888.P5928394568816634587.a, A157888.P15328883257316002746.a, A244634, A244634.P2988327600076018202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157888

/-! ## A157888.P15964000158628848249

`Δ[A008591(n)+∑[A008591(n)²]]`
-/

namespace A157888.P15964000158628848249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157888.P15964000158628848249

namespace A157888

/-- `Δ[A008591(n)+∑[A008591(n)²]]` -/
def P15964000158628848249.Spec : Prop :=
  ∀ n, P15964000158628848249.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P11220688871664855242

`3*A290325(3*(n+1))`
-/

namespace A157888.P11220688871664855242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A290325 (3 * (n + 1))

end

end A157888.P11220688871664855242

namespace A157888

/-- `3*A290325(3*(n+1))` -/
def P11220688871664855242.Spec : Prop :=
  ∀ n, P11220688871664855242.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P1749357910003317727

`A119536(3*(n+1))/(n+1)`
-/

namespace A157888.P1749357910003317727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119536 (3 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A157888.P1749357910003317727

namespace A157888

/-- `A119536(3*(n+1))/(n+1)` -/
def P1749357910003317727.Spec : Prop :=
  ∀ n, P1749357910003317727.a n = (A157888 (n + 1) : ℚ)

theorem P1749357910003317727.correct : P1749357910003317727.Spec := by
  intro n
  simp only [A157888, Nat.add_sub_cancel, A157888.P1749357910003317727.a, A157888.P15328883257316002746.a, A119536, A119536.P17684524526440716851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157888

/-! ## A157888.P8043683113302834306

`Δ[A147656(2*n+1+n)]`
-/

namespace A157888.P8043683113302834306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157888.P8043683113302834306

namespace A157888

/-- `Δ[A147656(2*n+1+n)]` -/
def P8043683113302834306.Spec : Prop :=
  ∀ n, P8043683113302834306.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P11275010583714442905

`Δ[A081435(A016777(n))]`
-/

namespace A157888.P11275010583714442905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157888.P11275010583714442905

namespace A157888

/-- `Δ[A081435(A016777(n))]` -/
def P11275010583714442905.Spec : Prop :=
  ∀ n, P11275010583714442905.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P2708412770430372219

`Δ[A081435(Δ[A000326(n)])]`
-/

namespace A157888.P2708412770430372219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157888.P2708412770430372219

namespace A157888

/-- `Δ[A081435(Δ[A000326(n)])]` -/
def P2708412770430372219.Spec : Prop :=
  ∀ n, P2708412770430372219.a n = A157888 (n + 1)

end A157888

/-! ## A157888.P7126739166701448446

`A189834(9*(n+1))`
-/

namespace A157888.P7126739166701448446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 (9 * (n + 1))

end

end A157888.P7126739166701448446

namespace A157888

/-- `A189834(9*(n+1))` -/
def P7126739166701448446.Spec : Prop :=
  ∀ n, P7126739166701448446.a n = A157888 (n + 1)

theorem P7126739166701448446.correct : P7126739166701448446.Spec := by
  intro n
  simp only [A157888, Nat.add_sub_cancel, A157888.P7126739166701448446.a, A157888.P15328883257316002746.a, A189834, A189834.P10265186452887140531.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157888

/-! ## A157888.P4762671562805570043

`A154533(9*n+10)`
-/

namespace A157888.P4762671562805570043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154533 (9 * n + 10)

end

end A157888.P4762671562805570043

namespace A157888

/-- `A154533(9*n+10)` -/
def P4762671562805570043.Spec : Prop :=
  ∀ n, P4762671562805570043.a n = A157888 (n + 1)

theorem P4762671562805570043.correct : P4762671562805570043.Spec := by
  intro n
  simp only [A157888, Nat.add_sub_cancel, A157888.P4762671562805570043.a, A157888.P15328883257316002746.a, A154533, A154533.P16997671295737437792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157888

/-!
# A157889: a(n) = 18*n^2 + 1.

The programs for A157889, the canonical program `A157889.P17648701603193564117` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157889 has offset 1).

The definition of A157889 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*(n+1)²+1` (program `A157889.P17648701603193564117`, by `A157889.P17648701603193564117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157889.P17648701603193564117

`18*(n+1)²+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157889

/-- `18*(n+1)²+1` -/
def P17648701603193564117.Spec : Prop :=
  ∀ n, (P17648701603193564117.a n : ℤ) = A157889 (n + 1)

theorem P17648701603193564117.correct : P17648701603193564117.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel]

end A157889

/-! ## A157889.P6802074143195722239

`xor(1, 18*∑[2*n+1])`
-/

namespace A157889.P6802074143195722239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (18 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A157889.P6802074143195722239

namespace A157889

/-- `xor(1, 18*∑[2*n+1])` -/
def P6802074143195722239.Spec : Prop :=
  ∀ n, (P6802074143195722239.a n : ℤ) = A157889 (n + 1)

end A157889

/-! ## A157889.P2204570740389951952

`or(1, ∑[a(n-1)+36])` with `a(0)=18`
-/

namespace A157889.P2204570740389951952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157889.P2204570740389951952

namespace A157889

/-- `or(1, ∑[a(n-1)+36])` -/
def P2204570740389951952.Spec : Prop :=
  ∀ n, (P2204570740389951952.a n : ℤ) = A157889 (n + 1)

end A157889

/-! ## A157889.P3244383814326536025

`Δ[3*n*C(2*(n+1), 2)+n]`
-/

namespace A157889.P3244383814326536025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * Nat.choose (2 * (n + 1)) 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157889.P3244383814326536025

namespace A157889

/-- `Δ[3*n*C(2*(n+1), 2)+n]` -/
def P3244383814326536025.Spec : Prop :=
  ∀ n, P3244383814326536025.a n = A157889 (n + 1)

theorem P3244383814326536025.correct : P3244383814326536025.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P3244383814326536025.f1, A157889.P3244383814326536025.a, A157889.P17648701603193564117.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P15716477417123868029

`ceil(A158646(n+1)/3)`
-/

namespace A157889.P15716477417123868029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158646 (n + 1) : ℚ) / 3⌉

end

end A157889.P15716477417123868029

namespace A157889

/-- `ceil(A158646(n+1)/3)` -/
def P15716477417123868029.Spec : Prop :=
  ∀ n, P15716477417123868029.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P203491309418112792

`(A136017(n+1)+3)/2`
-/

namespace A157889.P203491309418112792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136017 (n + 1) + 3 : ℚ) / 2

end

end A157889.P203491309418112792

namespace A157889

/-- `(A136017(n+1)+3)/2` -/
def P203491309418112792.Spec : Prop :=
  ∀ n, P203491309418112792.a n = (A157889 (n + 1) : ℚ)

theorem P203491309418112792.correct : P203491309418112792.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P203491309418112792.a, A157889.P17648701603193564117.a, A136017, A136017.P15592961706062905529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P80411974174844773

`(A158656(n+1)+4)/3`
-/

namespace A157889.P80411974174844773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158656 (n + 1) + 4 : ℚ) / 3

end

end A157889.P80411974174844773

namespace A157889

/-- `(A158656(n+1)+4)/3` -/
def P80411974174844773.Spec : Prop :=
  ∀ n, P80411974174844773.a n = (A157889 (n + 1) : ℚ)

theorem P80411974174844773.correct : P80411974174844773.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P80411974174844773.a, A157889.P17648701603193564117.a, A158656, A158656.P11069731994058768406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P12945692010247955476

`(A158738(n+1)+5)/4`
-/

namespace A157889.P12945692010247955476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158738 (n + 1) + 5 : ℚ) / 4

end

end A157889.P12945692010247955476

namespace A157889

/-- `(A158738(n+1)+5)/4` -/
def P12945692010247955476.Spec : Prop :=
  ∀ n, P12945692010247955476.a n = (A157889 (n + 1) : ℚ)

theorem P12945692010247955476.correct : P12945692010247955476.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P12945692010247955476.a, A157889.P17648701603193564117.a, A158738, A158738.P13269052857347112751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P18134666196063093565

`((A016969(n)+1)²+2)/2`
-/

namespace A157889.P18134666196063093565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016969 n + 1) ^ 2 + 2 : ℚ) / 2

end

end A157889.P18134666196063093565

namespace A157889

/-- `((A016969(n)+1)²+2)/2` -/
def P18134666196063093565.Spec : Prop :=
  ∀ n, P18134666196063093565.a n = (A157889 (n + 1) : ℚ)

theorem P18134666196063093565.correct : P18134666196063093565.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P18134666196063093565.a, A157889.P17648701603193564117.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P7881181892787271406

`Δ[(n+1)*(A195319(n)+1)]`
-/

namespace A157889.P7881181892787271406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A195319 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157889.P7881181892787271406

namespace A157889

/-- `Δ[(n+1)*(A195319(n)+1)]` -/
def P7881181892787271406.Spec : Prop :=
  ∀ n, P7881181892787271406.a n = A157889 (n + 1)

theorem P7881181892787271406.correct : P7881181892787271406.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P7881181892787271406.f1, A157889.P7881181892787271406.a, A157889.P17648701603193564117.a, A195319, A195319.P14159989131175070761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P5701988923559233408

`A158680(n+1)%A158540(n+1)`
-/

namespace A157889.P5701988923559233408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158680 (n + 1)) (A158540 (n + 1))

end

end A157889.P5701988923559233408

namespace A157889

/-- `A158680(n+1)%A158540(n+1)` -/
def P5701988923559233408.Spec : Prop :=
  ∀ n, P5701988923559233408.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P3933568586651583047

`A158693(n+1)%A158544(n+1)`
-/

namespace A157889.P3933568586651583047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158693 (n + 1)) (A158544 (n + 1))

end

end A157889.P3933568586651583047

namespace A157889

/-- `A158693(n+1)%A158544(n+1)` -/
def P3933568586651583047.Spec : Prop :=
  ∀ n, P3933568586651583047.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P9324309695084702901

`A158736(n+1)%A158551(n+1)`
-/

namespace A157889.P9324309695084702901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158736 (n + 1)) (A158551 (n + 1))

end

end A157889.P9324309695084702901

namespace A157889

/-- `A158736(n+1)%A158551(n+1)` -/
def P9324309695084702901.Spec : Prop :=
  ∀ n, P9324309695084702901.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P8203955755117863383

`A158744(n+1)%A158554(n+1)`
-/

namespace A157889.P8203955755117863383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158744 (n + 1)) (A158554 (n + 1))

end

end A157889.P8203955755117863383

namespace A157889

/-- `A158744(n+1)%A158554(n+1)` -/
def P8203955755117863383.Spec : Prop :=
  ∀ n, P8203955755117863383.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P3224035846167973185

`A158771(n+1)%A158560(n+1)`
-/

namespace A157889.P3224035846167973185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158771 (n + 1)) (A158560 (n + 1))

end

end A157889.P3224035846167973185

namespace A157889

/-- `A158771(n+1)%A158560(n+1)` -/
def P3224035846167973185.Spec : Prop :=
  ∀ n, P3224035846167973185.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P6891363758090494895

`A210645(n+1)%A158693(n+1)`
-/

namespace A157889.P6891363758090494895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210645 (n + 1)) (A158693 (n + 1))

end

end A157889.P6891363758090494895

namespace A157889

/-- `A210645(n+1)%A158693(n+1)` -/
def P6891363758090494895.Spec : Prop :=
  ∀ n, P6891363758090494895.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P14684004833606389571

`Δ[A169711(n+1)]`
-/

namespace A157889.P14684004833606389571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157889.P14684004833606389571

namespace A157889

/-- `Δ[A169711(n+1)]` -/
def P14684004833606389571.Spec : Prop :=
  ∀ n, P14684004833606389571.a n = A157889 (n + 1)

theorem P14684004833606389571.correct : P14684004833606389571.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P14684004833606389571.f1, A157889.P14684004833606389571.a, A157889.P17648701603193564117.a, A169711, A169711.P3852952923090487921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P2157701632219857666

`ceil(A158591(n+1)/2)`
-/

namespace A157889.P2157701632219857666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158591 (n + 1) : ℚ) / 2⌉

end

end A157889.P2157701632219857666

namespace A157889

/-- `ceil(A158591(n+1)/2)` -/
def P2157701632219857666.Spec : Prop :=
  ∀ n, P2157701632219857666.a n = A157889 (n + 1)

end A157889

/-! ## A157889.P5621908247664160093

`Δ[A193228(n+1)/2]`
-/

namespace A157889.P5621908247664160093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193228 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157889.P5621908247664160093

namespace A157889

/-- `Δ[A193228(n+1)/2]` -/
def P5621908247664160093.Spec : Prop :=
  ∀ n, P5621908247664160093.a n = (A157889 (n + 1) : ℚ)

theorem P5621908247664160093.correct : P5621908247664160093.Spec := by
  intro n
  simp only [A157889, Nat.add_sub_cancel, A157889.P5621908247664160093.f1, A157889.P5621908247664160093.a, A157889.P17648701603193564117.a, A193228, A193228.P3355603474307553126.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157889

/-! ## A157889.P3489584057761721386

`A298034(2*(n+1))`
-/

namespace A157889.P3489584057761721386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298034 (2 * (n + 1))

end

end A157889.P3489584057761721386

namespace A157889

/-- `A298034(2*(n+1))` -/
def P3489584057761721386.Spec : Prop :=
  ∀ n, P3489584057761721386.a n = A157889 (n + 1)

end A157889

/-!
# A157890: Number of primes between exponents of successive Mersenne primes.

The programs for A157890, there is no canonical definition to state claims against.
-/

/-! ## A157890.P7611810905044538295

`A135701(n+1)-1`
-/

namespace A157890.P7611810905044538295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135701 (n + 1) - 1

end

end A157890.P7611810905044538295

/-! ## A157890.P2850182999468776534

`A016027(n+2)-A016027(n+1)-1`
-/

namespace A157890.P2850182999468776534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 (n + 2) - A016027 (n + 1) - 1

end

end A157890.P2850182999468776534

/-! ## A157890.P6915428251092894866

`A000720(A000043(n+2))-A000720(A000043(n+1))-1`
-/

namespace A157890.P6915428251092894866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000043 (n + 2)).toNat - A000720 (A000043 (n + 1)).toNat - 1

end

end A157890.P6915428251092894866

/-! ## A157890.P11330195095835011043

`Δ[A016027(n+1)]-1`
-/

namespace A157890.P11330195095835011043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A157890.P11330195095835011043

/-! ## A157890.P9450974578478619425

`Δ[A016027(Δ[n²]-n)-n]`
-/

namespace A157890.P9450974578478619425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016027 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157890.P9450974578478619425

/-!
# A157891: Number of natural numbers between exponents of successive Mersenne primes.

The programs for A157891, there is no canonical definition to state claims against.
-/

/-! ## A157891.P13418162672919962793

`A000043(n+2)-A000043(n+1)-1`
-/

namespace A157891.P13418162672919962793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 2) - A000043 (n + 1) - 1

end

end A157891.P13418162672919962793

/-! ## A157891.P18245237109914189733

`Δ[A134712(n+1)]`
-/

namespace A157891.P18245237109914189733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157891.P18245237109914189733

/-! ## A157891.P17513056417011973877

`Δ[A134713(n+1)]`
-/

namespace A157891.P17513056417011973877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157891.P17513056417011973877

/-! ## A157891.P3432719035859920574

`A134458(n+1)-1`
-/

namespace A157891.P3432719035859920574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (n + 1) - 1

end

end A157891.P3432719035859920574

/-! ## A157891.P6779695835076323327

`Δ[A000043(n+1)]-1`
-/

namespace A157891.P6779695835076323327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A157891.P6779695835076323327

/-!
# A157892: Values of k in A080075.

The programs for A157892, the canonical program `A157892.P3381969269400244454` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157892 has offset 1).

The definition of A157892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157892.P12867033559285087345

`A000265(A162751(n+1))`
-/

namespace A157892.P12867033559285087345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A162751 (n + 1)).toNat

end

end A157892.P12867033559285087345

namespace A157892

/-- `A000265(A162751(n+1))` -/
def P12867033559285087345.Spec : Prop :=
  ∀ n, P12867033559285087345.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P3381969269400244454

`A162751(A322250(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157892

/-- `A162751(A322250(n+2))` -/
def P3381969269400244454.Spec : Prop :=
  ∀ n, P3381969269400244454.a n = A157892 (n + 1)

theorem P3381969269400244454.correct : P3381969269400244454.Spec := by
  intro n
  simp only [A157892, Nat.add_sub_cancel]

end A157892

/-! ## A157892.P8361821753905967568

`A000265(floor(a(n-1)*ratio[A000265(n+1)])+1)` with `a(0)=1`
-/

namespace A157892.P8361821753905967568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000265 (⌊(a (n - 1) : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋ + 1).toNat

end

end A157892.P8361821753905967568

namespace A157892

/-- `A000265(floor(a(n-1)*ratio[A000265(n+1)])+1)` -/
def P8361821753905967568.Spec : Prop :=
  ∀ n, P8361821753905967568.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P3794284549457505010

`A000265(n+1-A000225(A099396(n+1)))`
-/

namespace A157892.P3794284549457505010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((n + 1 : ℤ) - A000225 (A099396 (n + 1)).toNat).toNat

end

end A157892.P3794284549457505010

namespace A157892

/-- `A000265(n+1-A000225(A099396(n+1)))` -/
def P3794284549457505010.Spec : Prop :=
  ∀ n, P3794284549457505010.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P6504100809296035301

`A030101(or(1, A030109(n+2)))`
-/

namespace A157892.P6504100809296035301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A030109 (n + 2))).toNat

end

end A157892.P6504100809296035301

namespace A157892

/-- `A030101(or(1, A030109(n+2)))` -/
def P6504100809296035301.Spec : Prop :=
  ∀ n, P6504100809296035301.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P5687542603567410885

`A000265(A082662(n+1))`
-/

namespace A157892.P5687542603567410885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A082662 (n + 1)).toNat

end

end A157892.P5687542603567410885

namespace A157892

/-- `A000265(A082662(n+1))` -/
def P5687542603567410885.Spec : Prop :=
  ∀ n, P5687542603567410885.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P8668706680445815991

`A000265(A116882(n+2)/2)`
-/

namespace A157892.P8668706680445815991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A116882 (n + 2) : ℚ) / 2)).toNat

end

end A157892.P8668706680445815991

namespace A157892

/-- `A000265(A116882(n+2)/2)` -/
def P8668706680445815991.Spec : Prop :=
  ∀ n, P8668706680445815991.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P10890318989129180067

`A000265((A080075(n+1)-1)/2)`
-/

namespace A157892.P10890318989129180067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A080075 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A157892.P10890318989129180067

namespace A157892

/-- `A000265((A080075(n+1)-1)/2)` -/
def P10890318989129180067.Spec : Prop :=
  ∀ n, P10890318989129180067.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P12850661068644470060

`A000265(xor(1, A080075(n+1))/2)`
-/

namespace A157892.P12850661068644470060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((Int.xor 1 (A080075 (n + 1)) : ℚ) / 2)).toNat

end

end A157892.P12850661068644470060

namespace A157892

/-- `A000265(xor(1, A080075(n+1))/2)` -/
def P12850661068644470060.Spec : Prop :=
  ∀ n, P12850661068644470060.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P6758620466020327627

`A000265(A116882(A000265(n+2)))`
-/

namespace A157892.P6758620466020327627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A116882 (A000265 (n + 2)).toNat).toNat

end

end A157892.P6758620466020327627

namespace A157892

/-- `A000265(A116882(A000265(n+2)))` -/
def P6758620466020327627.Spec : Prop :=
  ∀ n, P6758620466020327627.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P6275301701089043154

`A000265(A116882(n+2))`
-/

namespace A157892.P6275301701089043154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A116882 (n + 2)).toNat

end

end A157892.P6275301701089043154

namespace A157892

/-- `A000265(A116882(n+2))` -/
def P6275301701089043154.Spec : Prop :=
  ∀ n, P6275301701089043154.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P600371699153722658

`A000265(A080075(n+1)-1)`
-/

namespace A157892.P600371699153722658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A080075 (n + 1) - 1).toNat

end

end A157892.P600371699153722658

namespace A157892

/-- `A000265(A080075(n+1)-1)` -/
def P600371699153722658.Spec : Prop :=
  ∀ n, P600371699153722658.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P10467258744266582252

`A000265(xor(1, A080075(n+1)))`
-/

namespace A157892.P10467258744266582252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A080075 (n + 1))).toNat

end

end A157892.P10467258744266582252

namespace A157892

/-- `A000265(xor(1, A080075(n+1)))` -/
def P10467258744266582252.Spec : Prop :=
  ∀ n, P10467258744266582252.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P11573374324640116548

`gcd(A082662(n+1), A217858(n+1))`
-/

namespace A157892.P11573374324640116548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082662 (n + 1)) (A217858 (n + 1))

end

end A157892.P11573374324640116548

namespace A157892

/-- `gcd(A082662(n+1), A217858(n+1))` -/
def P11573374324640116548.Spec : Prop :=
  ∀ n, (P11573374324640116548.a n : ℤ) = A157892 (n + 1)

end A157892

/-! ## A157892.P7681103881181006914

`gcd(A084715(n+2), A162751(n+1))`
-/

namespace A157892.P7681103881181006914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084715 (n + 2)) (A162751 (n + 1))

end

end A157892.P7681103881181006914

namespace A157892

/-- `gcd(A084715(n+2), A162751(n+1))` -/
def P7681103881181006914.Spec : Prop :=
  ∀ n, (P7681103881181006914.a n : ℤ) = A157892 (n + 1)

end A157892

/-! ## A157892.P7402362971330976048

`A093803(A116882(n+2)/2)`
-/

namespace A157892.P7402362971330976048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (SequenceMachineLib.roundAway ((A116882 (n + 2) : ℚ) / 2)).toNat

end

end A157892.P7402362971330976048

namespace A157892

/-- `A093803(A116882(n+2)/2)` -/
def P7402362971330976048.Spec : Prop :=
  ∀ n, P7402362971330976048.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P17324118626456311498

`A000265(lt[A191871(n), 2*n])`
-/

namespace A157892.P17324118626456311498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191871 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A157892.P17324118626456311498

namespace A157892

/-- `A000265(lt[A191871(n), 2*n])` -/
def P17324118626456311498.Spec : Prop :=
  ∀ n, P17324118626456311498.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P6313423896565153574

`A161151(A112714(n+1))`
-/

namespace A157892.P6313423896565153574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (A112714 (n + 1)).toNat

end

end A157892.P6313423896565153574

namespace A157892

/-- `A161151(A112714(n+1))` -/
def P6313423896565153574.Spec : Prop :=
  ∀ n, P6313423896565153574.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P11369803085340145203

`A161151(A116882(n+2)-1)`
-/

namespace A157892.P11369803085340145203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (A116882 (n + 2) - 1).toNat

end

end A157892.P11369803085340145203

namespace A157892

/-- `A161151(A116882(n+2)-1)` -/
def P11369803085340145203.Spec : Prop :=
  ∀ n, P11369803085340145203.a n = A157892 (n + 1)

end A157892

/-! ## A157892.P13030012267351118104

`A093803(2*A082662(n+1))`
-/

namespace A157892.P13030012267351118104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A082662 (n + 1)).toNat

end

end A157892.P13030012267351118104

namespace A157892

/-- `A093803(2*A082662(n+1))` -/
def P13030012267351118104.Spec : Prop :=
  ∀ n, P13030012267351118104.a n = A157892 (n + 1)

end A157892

/-!
# A157893: Values of m in A080075.

The programs for A157893, the canonical program `A157893.P15698014607538601386` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157893 has offset 1).

The definition of A157893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157893.P15698014607538601386

`val(A082662(n+1), 2)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A157893

/-- `val(A082662(n+1), 2)+1` -/
def P15698014607538601386.Spec : Prop :=
  ∀ n, (P15698014607538601386.a n : ℤ) = A157893 (n + 1)

theorem P15698014607538601386.correct : P15698014607538601386.Spec := by
  intro n
  simp only [A157893, Nat.add_sub_cancel]

end A157893

/-! ## A157893.P16520389515216978358

`val(A112714(n+1)+1, 2)`
-/

namespace A157893.P16520389515216978358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112714 (n + 1) + 1).toNat 2

end

end A157893.P16520389515216978358

namespace A157893

/-- `val(A112714(n+1)+1, 2)` -/
def P16520389515216978358.Spec : Prop :=
  ∀ n, (P16520389515216978358.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P9449234031278233758

`val(A080075(n+1)-1, 2)`
-/

namespace A157893.P9449234031278233758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A080075 (n + 1) - 1).toNat 2

end

end A157893.P9449234031278233758

namespace A157893

/-- `val(A080075(n+1)-1, 2)` -/
def P9449234031278233758.Spec : Prop :=
  ∀ n, (P9449234031278233758.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P18309395653953582449

`val(A082662(A080637(n+1)), 2)`
-/

namespace A157893.P18309395653953582449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082662 (A080637 (n + 1)).toNat).toNat 2

end

end A157893.P18309395653953582449

namespace A157893

/-- `val(A082662(A080637(n+1)), 2)` -/
def P18309395653953582449.Spec : Prop :=
  ∀ n, (P18309395653953582449.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P14779195483700187737

`val(xor(A080075(3*n+5), A080075(n+1)), 2)`
-/

namespace A157893.P14779195483700187737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.xor (A080075 (3 * n + 5)) (A080075 (n + 1))).toNat 2

end

end A157893.P14779195483700187737

namespace A157893

/-- `val(xor(A080075(3*n+5), A080075(n+1)), 2)` -/
def P14779195483700187737.Spec : Prop :=
  ∀ n, (P14779195483700187737.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P10455339683454306557

`val(A116882(n+2), 2)`
-/

namespace A157893.P10455339683454306557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A116882 (n + 2)).toNat 2

end

end A157893.P10455339683454306557

namespace A157893

/-- `val(A116882(n+2), 2)` -/
def P10455339683454306557.Spec : Prop :=
  ∀ n, (P10455339683454306557.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P10899553487137110350

`A001222(A116882(n+2))-A001222(A157892(n+1))`
-/

namespace A157893.P10899553487137110350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116882 (n + 2)).toNat - A001222 (A157892 (n + 1)).toNat

end

end A157893.P10899553487137110350

namespace A157893

/-- `A001222(A116882(n+2))-A001222(A157892(n+1))` -/
def P10899553487137110350.Spec : Prop :=
  ∀ n, P10899553487137110350.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P15369450468679818835

`A085058(A082662(n+1)-1)-1`
-/

namespace A157893.P15369450468679818835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A082662 (n + 1) - 1).toNat - 1

end

end A157893.P15369450468679818835

namespace A157893

/-- `A085058(A082662(n+1)-1)-1` -/
def P15369450468679818835.Spec : Prop :=
  ∀ n, P15369450468679818835.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P3126565924526803648

`A001511(A082662(n+1))`
-/

namespace A157893.P3126565924526803648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A082662 (n + 1)).toNat

end

end A157893.P3126565924526803648

namespace A157893

/-- `A001511(A082662(n+1))` -/
def P3126565924526803648.Spec : Prop :=
  ∀ n, P3126565924526803648.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P13299970497306797834

`A001511(A116882(n+2)/2)`
-/

namespace A157893.P13299970497306797834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A116882 (n + 2) : ℚ) / 2)).toNat

end

end A157893.P13299970497306797834

namespace A157893

/-- `A001511(A116882(n+2)/2)` -/
def P13299970497306797834.Spec : Prop :=
  ∀ n, P13299970497306797834.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P10603573791931451712

`∑{d}[A006519(A082662(n+1)), A000265(#)]`
-/

namespace A157893.P10603573791931451712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A082662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A157893.P10603573791931451712

namespace A157893

/-- `∑{d}[A006519(A082662(n+1)), A000265(#)]` -/
def P10603573791931451712.Spec : Prop :=
  ∀ n, P10603573791931451712.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P12448631931404150119

`val(record[A261891(n+1)], 2)`
-/

namespace A157893.P12448631931404150119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A157893.P12448631931404150119

namespace A157893

/-- `val(record[A261891(n+1)], 2)` -/
def P12448631931404150119.Spec : Prop :=
  ∀ n, (P12448631931404150119.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P1015159562350218561

`val(A261891(A112714(n+1)), 2)`
-/

namespace A157893.P1015159562350218561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A261891 (A112714 (n + 1)).toNat).toNat 2

end

end A157893.P1015159562350218561

namespace A157893

/-- `val(A261891(A112714(n+1)), 2)` -/
def P1015159562350218561.Spec : Prop :=
  ∀ n, (P1015159562350218561.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P1072669399945101861

`A116361(xor(A080075(n+1), A112714(n+1))/2)`
-/

namespace A157893.P1072669399945101861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 (SequenceMachineLib.roundAway ((Int.xor (A080075 (n + 1)) (A112714 (n + 1)) : ℚ) / 2)).toNat

end

end A157893.P1072669399945101861

namespace A157893

/-- `A116361(xor(A080075(n+1), A112714(n+1))/2)` -/
def P1072669399945101861.Spec : Prop :=
  ∀ n, P1072669399945101861.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P760203980388328604

`val(record[A331985(n+1)], 2)`
-/

namespace A157893.P760203980388328604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A157893.P760203980388328604

namespace A157893

/-- `val(record[A331985(n+1)], 2)` -/
def P760203980388328604.Spec : Prop :=
  ∀ n, (P760203980388328604.a n : ℤ) = A157893 (n + 1)

end A157893

/-! ## A157893.P18386702767190787232

`A038374(A112714(n+1))`
-/

namespace A157893.P18386702767190787232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A112714 (n + 1)).toNat

end

end A157893.P18386702767190787232

namespace A157893

/-- `A038374(A112714(n+1))` -/
def P18386702767190787232.Spec : Prop :=
  ∀ n, P18386702767190787232.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P10974385884968681527

`A007814(A116882(n+2))`
-/

namespace A157893.P10974385884968681527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A116882 (n + 2)).toNat

end

end A157893.P10974385884968681527

namespace A157893

/-- `A007814(A116882(n+2))` -/
def P10974385884968681527.Spec : Prop :=
  ∀ n, P10974385884968681527.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P8329426830102496390

`A007814(A080075(n+1)-1)`
-/

namespace A157893.P8329426830102496390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A080075 (n + 1) - 1).toNat

end

end A157893.P8329426830102496390

namespace A157893

/-- `A007814(A080075(n+1)-1)` -/
def P8329426830102496390.Spec : Prop :=
  ∀ n, P8329426830102496390.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P8127920274820183834

`A007814(2*A082662(n+1))`
-/

namespace A157893.P8127920274820183834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A082662 (n + 1)).toNat

end

end A157893.P8127920274820183834

namespace A157893

/-- `A007814(2*A082662(n+1))` -/
def P8127920274820183834.Spec : Prop :=
  ∀ n, P8127920274820183834.a n = A157893 (n + 1)

end A157893

/-! ## A157893.P11181735170391586609

`A116361(xor(A080075(n+1), A112714(n+1)))`
-/

namespace A157893.P11181735170391586609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116361 (Int.xor (A080075 (n + 1)) (A112714 (n + 1))).toNat

end

end A157893.P11181735170391586609

namespace A157893

/-- `A116361(xor(A080075(n+1), A112714(n+1)))` -/
def P11181735170391586609.Spec : Prop :=
  ∀ n, P11181735170391586609.a n = A157893 (n + 1)

end A157893

/-!
# A157894: Number of composite numbers between exponents of successive Mersenne primes.

The programs for A157894, there is no canonical definition to state claims against.
-/

/-! ## A157894.P8521252888643503436

`A000043(n+2)-A016027(n+2)-A000043(n+1)+A016027(n+1)`
-/

namespace A157894.P8521252888643503436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 2) - A016027 (n + 2) - A000043 (n + 1) + A016027 (n + 1)

end

end A157894.P8521252888643503436

/-! ## A157894.P16467308020289245348

`A134458(n+1)-A135701(n+1)`
-/

namespace A157894.P16467308020289245348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134458 (n + 1) - A135701 (n + 1)

end

end A157894.P16467308020289245348

/-! ## A157894.P8469739419521979884

`A157891(n+1)-A157890(n+1)`
-/

namespace A157894.P8469739419521979884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157891 (n + 1) - A157890 (n + 1)

end

end A157894.P8469739419521979884

/-! ## A157894.P14221831646226796307

`Δ[A000043(n+1)-A016027(n+1)]`
-/

namespace A157894.P14221831646226796307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - A016027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157894.P14221831646226796307

/-! ## A157894.P3475942339999591572

`Δ[A050475(n+1)-A016027(n+1)]`
-/

namespace A157894.P3475942339999591572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - A016027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157894.P3475942339999591572

/-!
# A157895: Coefficients of polynomials of a prime like factor set : p(x,n)=Sum[x^i, {i, 0, (Prime[n] - 1)/2}]; q(n,n)=Sum[(-1)^i*x^i, {i, 0, (Prime[n] - 1)/2}]; t(x,n)=If[n == 0, 1, If[n == 1, x + 1, (x + 1)*p[x, n]*q[x, n]]].

The programs for A157895, there is no canonical definition to state claims against.
-/

/-! ## A157895.P17204874239514129481

`A065357(A206913(n))^A117246(n+1)`
-/

namespace A157895.P17204874239514129481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065357 (A206913 n).toNat : ℚ) ^ (A117246 (n + 1) : ℤ)

end

end A157895.P17204874239514129481

/-! ## A157895.P16738089799180980868

`A065357(A206913(n)%A117246(n+1))`
-/

namespace A157895.P16738089799180980868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (Int.tmod (A206913 n) (A117246 (n + 1))).toNat

end

end A157895.P16738089799180980868

/-! ## A157895.P5916093665405890135

`A256078(n)^and(32, n)*A065357(A206913(n))`
-/

namespace A157895.P5916093665405890135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 n ^ Nat.land 32 n * A065357 (A206913 n).toNat

end

end A157895.P5916093665405890135

/-! ## A157895.P13309442947927690312

`A065357(A256078(n))²*A065357(A206913(n))`
-/

namespace A157895.P13309442947927690312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (A256078 n).toNat ^ 2 * A065357 (A206913 n).toNat

end

end A157895.P13309442947927690312

/-! ## A157895.P12582795002477185422

`A130151(A083219(n)^A277327(n))`
-/

namespace A157895.P12582795002477185422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (SequenceMachineLib.roundAway ((A083219 n : ℚ) ^ (A277327 n : ℤ))).toNat

end

end A157895.P12582795002477185422

/-!
# A157897: Triangle read by rows, T(n,k) = T(n-1,k) + T(n-2,k-1) + T(n-3,k-3) + delta(n,0)*delta(k,0), T(n,k

The programs for A157897, there is no canonical definition to state claims against.
-/

/-! ## A157897.P18288987812944719594

`A286180(n)+A064990(A271075(n+1))`
-/

namespace A157897.P18288987812944719594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 n + A064990 (A271075 (n + 1)).toNat

end

end A157897.P18288987812944719594

/-! ## A157897.P6344272470529130132

`gcd(A045847(n), A080425(A006504(n+1)))`
-/

namespace A157897.P6344272470529130132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045847 n) (A080425 (A006504 (n + 1)).toNat)

end

end A157897.P6344272470529130132

/-! ## A157897.P14987932275158395019

`gcd(A290054(n), A347714(A341448(n+1)))`
-/

namespace A157897.P14987932275158395019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290054 n) (A347714 (A341448 (n + 1)).toNat)

end

end A157897.P14987932275158395019

/-! ## A157897.P15698646321950786405

`A286180(n)+A000035(A207774(n+1)%A048255(n+1))`
-/

namespace A157897.P15698646321950786405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 n + A000035 (Int.tmod (A207774 (n + 1)) (A048255 (n + 1))).toNat

end

end A157897.P15698646321950786405

/-! ## A157897.P5080452401026812938

`A136167(A163269(n+1))%7`
-/

namespace A157897.P5080452401026812938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136167 (A163269 (n + 1)).toNat) 7

end

end A157897.P5080452401026812938

/-!
# A157898: Triangle read by rows: inverse binomial transform of A059576.

The programs for A157898, the canonical program `A157898.P17830117301384184696` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157898 has offset 0).

The definition of A157898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157898.P17830117301384184696

`A046854(n)*A166692(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157898

/-- `A046854(n)*A166692(n)` -/
def P17830117301384184696.Spec : Prop :=
  ∀ n, P17830117301384184696.a n = A157898 n

theorem P17830117301384184696.correct : P17830117301384184696.Spec := by
  intro n
  simp only [A157898]

end A157898

/-! ## A157898.P2453782607754776329

`abs(A066170(n)*A166692(n))`
-/

namespace A157898.P2453782607754776329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066170 n * A166692 n|

end

end A157898.P2453782607754776329

namespace A157898

/-- `abs(A066170(n)*A166692(n))` -/
def P2453782607754776329.Spec : Prop :=
  ∀ n, P2453782607754776329.a n = A157898 n

end A157898

/-! ## A157898.P15921968856816128746

`abs(A130777(n)*A166692(n))`
-/

namespace A157898.P15921968856816128746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130777 n * A166692 n|

end

end A157898.P15921968856816128746

namespace A157898

/-- `abs(A130777(n)*A166692(n))` -/
def P15921968856816128746.Spec : Prop :=
  ∀ n, P15921968856816128746.a n = A157898 n

end A157898

/-! ## A157898.P17912123141712725791

`A065941(A061579(n))*A166692(n)`
-/

namespace A157898.P17912123141712725791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A061579 n).toNat * A166692 n

end

end A157898.P17912123141712725791

namespace A157898

/-- `A065941(A061579(n))*A166692(n)` -/
def P17912123141712725791.Spec : Prop :=
  ∀ n, P17912123141712725791.a n = A157898 n

end A157898

/-! ## A157898.P4592720691564226361

`abs(A166692(n)*A267482(n))`
-/

namespace A157898.P4592720691564226361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166692 n * A267482 n|

end

end A157898.P4592720691564226361

namespace A157898

/-- `abs(A166692(n)*A267482(n))` -/
def P4592720691564226361.Spec : Prop :=
  ∀ n, P4592720691564226361.a n = A157898 n

end A157898

/-! ## A157898.P2348727142649202303

`∑{d}[A066170(n), A000010(#)*A166692(n)]`
-/

namespace A157898.P2348727142649202303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d * A166692 n

end

end A157898.P2348727142649202303

namespace A157898

/-- `∑{d}[A066170(n), A000010(#)*A166692(n)]` -/
def P2348727142649202303.Spec : Prop :=
  ∀ n, P2348727142649202303.a n = A157898 n

end A157898

/-! ## A157898.P2003196567624318779

`∑{d}[A267482(n), A000010(#)*A166692(n)]`
-/

namespace A157898.P2003196567624318779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d * A166692 n

end

end A157898.P2003196567624318779

namespace A157898

/-- `∑{d}[A267482(n), A000010(#)*A166692(n)]` -/
def P2003196567624318779.Spec : Prop :=
  ∀ n, P2003196567624318779.a n = A157898 n

end A157898

/-! ## A157898.P11928776186814689679

`A004525(A131240(n))*A166692(n)`
-/

namespace A157898.P11928776186814689679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A131240 n).toNat * A166692 n

end

end A157898.P11928776186814689679

namespace A157898

/-- `A004525(A131240(n))*A166692(n)` -/
def P11928776186814689679.Spec : Prop :=
  ∀ n, P11928776186814689679.a n = A157898 n

end A157898

/-! ## A157898.P17517787369150682618

`gcd(A066170(n)*A166692(n), A008683(2*(n+1)²))`
-/

namespace A157898.P17517787369150682618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066170 n * A166692 n) (A008683 (2 * (n + 1) ^ 2))

end

end A157898.P17517787369150682618

namespace A157898

/-- `gcd(A066170(n)*A166692(n), A008683(2*(n+1)²))` -/
def P17517787369150682618.Spec : Prop :=
  ∀ n, (P17517787369150682618.a n : ℤ) = A157898 n

end A157898

/-! ## A157898.P16070691445556951030

`gcd(A025480(A157751(n)), A053117(n))`
-/

namespace A157898.P16070691445556951030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 (A157751 n).toNat) (A053117 n)

end

end A157898.P16070691445556951030

namespace A157898

/-- `gcd(A025480(A157751(n)), A053117(n))` -/
def P16070691445556951030.Spec : Prop :=
  ∀ n, (P16070691445556951030.a n : ℤ) = A157898 n

end A157898

