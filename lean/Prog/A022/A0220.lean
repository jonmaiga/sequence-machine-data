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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
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
# A022000: Expansion of 1/((1-x)*(1-4*x)*(1-11*x)*(1-12*x)).

The programs for A022000, there is no canonical definition to state claims against.
-/

/-! ## A022000.P13960014050908062719

`∑[A019752(n)]`
-/

namespace A022000.P13960014050908062719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022000.P13960014050908062719

/-! ## A022000.P3022162374168934626

`A019752(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A022000.P3022162374168934626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019752 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A022000.P3022162374168934626

/-! ## A022000.P2132349024938823936

`2*A021994(n)-A021984(n)`
-/

namespace A022000.P2132349024938823936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021994 n - A021984 n

end

end A022000.P2132349024938823936

/-! ## A022000.P8570959805592469696

`∑[2*A019747(n)-A019742(n)]`
-/

namespace A022000.P8570959805592469696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019747 n - A019742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022000.P8570959805592469696

/-! ## A022000.P7488176079668371830

`A016227(n+1)-A016226(n+1)`
-/

namespace A022000.P7488176079668371830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016227 (n + 1) - A016226 (n + 1)

end

end A022000.P7488176079668371830

/-! ## A022000.P7880127682923755246

`a(n-1)+A019752(n)+A000007(n)` with `a(0)=1`
-/

namespace A022000.P7880127682923755246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019752 n + A000007 n)

end

end A022000.P7880127682923755246

/-! ## A022000.P9921947018173203411

`a(n-1)+A007318(C(2, n))*A019752(n)` with `a(0)=1`
-/

namespace A022000.P9921947018173203411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose 2 n) * A019752 n

end

end A022000.P9921947018173203411

/-! ## A022000.P7835835067301542268

`∑[A020981(n)+A020981(n)-A028160(n)]`
-/

namespace A022000.P7835835067301542268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020981 n + (A020981 n - A028160 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022000.P7835835067301542268

/-! ## A022000.P5727887756018395446

`∑[2*A020981(n)-A028160(n)]`
-/

namespace A022000.P5727887756018395446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020981 n - A028160 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022000.P5727887756018395446

/-!
# A022003: Decimal expansion of 1/999.

The programs for A022003, the canonical program `A022003.P8302093470414743033` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022003 has offset 0).

The definition of A022003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022003.P8302093470414743033

`((n+2)%3)%2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022003

/-- `((n+2)%3)%2` -/
def P8302093470414743033.Spec : Prop :=
  ∀ n, (P8302093470414743033.a n : ℤ) = A022003 n

theorem P8302093470414743033.correct : P8302093470414743033.Spec := by
  intro n
  simp only [A022003]

end A022003

/-!
# A022004: Initial members of prime triples (p, p+2, p+6).

The programs for A022004, the canonical program `A022004.P15960404509347598822` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022004 has offset 1).

The definition of A022004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022004.P15892256882092410714

`A073648(n+1)-2`
-/

namespace A022004.P15892256882092410714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1) - 2

end

end A022004.P15892256882092410714

namespace A022004

/-- `A073648(n+1)-2` -/
def P15892256882092410714.Spec : Prop :=
  ∀ n, P15892256882092410714.a n = A022004 (n + 1)

theorem P15892256882092410714.correct : P15892256882092410714.Spec := by
  intro n
  simp only [A022004, Nat.add_sub_cancel, A022004.P15892256882092410714.a, A022004.P15960404509347598822.f1, A022004.P15960404509347598822.f2, A022004.P15960404509347598822.a, A001359, A001359.P8865495035699438537.a, A073648, A073648.P13149246164954547153.a, A341357, A341357.P1519009481148112330.f1, A341357.P1519009481148112330.a, A006094, A006094.P10257567645245129766.a, A077800, A077800.P16009445446139691322.a, A212769, A212769.P7578630407448011221.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022004

/-! ## A022004.P4965555733724350693

`A098412(n+1)-6`
-/

namespace A022004.P4965555733724350693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1) - 6

end

end A022004.P4965555733724350693

namespace A022004

/-- `A098412(n+1)-6` -/
def P4965555733724350693.Spec : Prop :=
  ∀ n, P4965555733724350693.a n = A022004 (n + 1)

theorem P4965555733724350693.correct : P4965555733724350693.Spec := by
  intro n
  simp only [A022004, Nat.add_sub_cancel, A022004.P4965555733724350693.a, A022004.P15960404509347598822.f1, A022004.P15960404509347598822.f2, A022004.P15960404509347598822.a, A001359, A001359.P8865495035699438537.a, A098412, A098412.P17347800589930056568.a, A341357, A341357.P1519009481148112330.f1, A341357.P1519009481148112330.a, A006094, A006094.P10257567645245129766.a, A073648, A073648.P13149246164954547153.a, A077800, A077800.P16009445446139691322.a, A212769, A212769.P7578630407448011221.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022004

/-! ## A022004.P71976276044247492

`(A163635(n+1)-2)/3-2`
-/

namespace A022004.P71976276044247492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163635 (n + 1) - 2 : ℚ) / 3 - 2

end

end A022004.P71976276044247492

namespace A022004

/-- `(A163635(n+1)-2)/3-2` -/
def P71976276044247492.Spec : Prop :=
  ∀ n, P71976276044247492.a n = (A022004 (n + 1) : ℚ)

theorem P71976276044247492.correct : P71976276044247492.Spec := by
  intro n
  simp only [A022004, Nat.add_sub_cancel, A022004.P71976276044247492.a, A022004.P15960404509347598822.f1, A022004.P15960404509347598822.f2, A022004.P15960404509347598822.a, A001359, A001359.P8865495035699438537.a, A163635, A163635.P5648259623361093325.a, A341357, A341357.P1519009481148112330.f1, A341357.P1519009481148112330.a, A006094, A006094.P10257567645245129766.a, A077800, A077800.P16009445446139691322.a, A212769, A212769.P7578630407448011221.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022004

/-! ## A022004.P15960404509347598822

`∩[A001359(n+1), A341357(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A022004

/-- `∩[A001359(n+1), A341357(n+1)]` -/
def P15960404509347598822.Spec : Prop :=
  ∀ n, (P15960404509347598822.a n : ℤ) = A022004 (n + 1)

theorem P15960404509347598822.correct : P15960404509347598822.Spec := by
  intro n
  simp only [A022004, Nat.add_sub_cancel]

end A022004

/-! ## A022004.P16433274066799496051

`∩[A001359(n+1), A007529(n+1)]`
-/

namespace A022004.P16433274066799496051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P16433274066799496051

namespace A022004

/-- `∩[A001359(n+1), A007529(n+1)]` -/
def P16433274066799496051.Spec : Prop :=
  ∀ n, (P16433274066799496051.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P1761961068132083799

`∩[A007529(n+1), A341357(n+1)]`
-/

namespace A022004.P1761961068132083799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P1761961068132083799

namespace A022004

/-- `∩[A007529(n+1), A341357(n+1)]` -/
def P1761961068132083799.Spec : Prop :=
  ∀ n, (P1761961068132083799.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P3128810770696611313

`∩[A141830(n+1), A341357(n+1)]`
-/

namespace A022004.P3128810770696611313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P3128810770696611313

namespace A022004

/-- `∩[A141830(n+1), A341357(n+1)]` -/
def P3128810770696611313.Spec : Prop :=
  ∀ n, (P3128810770696611313.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P16966785340755162016

`∩[A378983(n+1), A007529(n+1)]`
-/

namespace A022004.P16966785340755162016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P16966785340755162016

namespace A022004

/-- `∩[A378983(n+1), A007529(n+1)]` -/
def P16966785340755162016.Spec : Prop :=
  ∀ n, (P16966785340755162016.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P11360330507160551676

`∩[A007529(n+1), A054799(n+1)]`
-/

namespace A022004.P11360330507160551676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P11360330507160551676

namespace A022004

/-- `∩[A007529(n+1), A054799(n+1)]` -/
def P11360330507160551676.Spec : Prop :=
  ∀ n, (P11360330507160551676.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P8522455931097648037

`∩[A007529(n+1), A063700(n+1)]`
-/

namespace A022004.P8522455931097648037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P8522455931097648037

namespace A022004

/-- `∩[A007529(n+1), A063700(n+1)]` -/
def P8522455931097648037.Spec : Prop :=
  ∀ n, (P8522455931097648037.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P9761145899172187763

`∩[A007529(n+1), A111166(n+1)]`
-/

namespace A022004.P9761145899172187763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P9761145899172187763

namespace A022004

/-- `∩[A007529(n+1), A111166(n+1)]` -/
def P9761145899172187763.Spec : Prop :=
  ∀ n, (P9761145899172187763.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P11344760200592261969

`∩[A007529(n+1), A124588(n+1)]`
-/

namespace A022004.P11344760200592261969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P11344760200592261969

namespace A022004

/-- `∩[A007529(n+1), A124588(n+1)]` -/
def P11344760200592261969.Spec : Prop :=
  ∀ n, (P11344760200592261969.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P18042517536781730153

`∩[A007529(n+1), A181747(n+1)]`
-/

namespace A022004.P18042517536781730153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P18042517536781730153

namespace A022004

/-- `∩[A007529(n+1), A181747(n+1)]` -/
def P18042517536781730153.Spec : Prop :=
  ∀ n, (P18042517536781730153.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P7281256138475016777

`∩[A054799(n+1), A341357(n+1)]`
-/

namespace A022004.P7281256138475016777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P7281256138475016777

namespace A022004

/-- `∩[A054799(n+1), A341357(n+1)]` -/
def P7281256138475016777.Spec : Prop :=
  ∀ n, (P7281256138475016777.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P13423202048844646588

`∩[A238528(n+1), A341357(n+1)]`
-/

namespace A022004.P13423202048844646588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P13423202048844646588

namespace A022004

/-- `∩[A238528(n+1), A341357(n+1)]` -/
def P13423202048844646588.Spec : Prop :=
  ∀ n, (P13423202048844646588.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P14482854849170747442

`∩[A007529(n+1), A280255(n+1)]`
-/

namespace A022004.P14482854849170747442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P14482854849170747442

namespace A022004

/-- `∩[A007529(n+1), A280255(n+1)]` -/
def P14482854849170747442.Spec : Prop :=
  ∀ n, (P14482854849170747442.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P10424802090357983834

`∩[A007529(n+1), A063693(n+1)]`
-/

namespace A022004.P10424802090357983834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P10424802090357983834

namespace A022004

/-- `∩[A007529(n+1), A063693(n+1)]` -/
def P10424802090357983834.Spec : Prop :=
  ∀ n, (P10424802090357983834.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P12386788882346811204

`∩[A063693(n+1), A341357(n+1)]`
-/

namespace A022004.P12386788882346811204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P12386788882346811204

namespace A022004

/-- `∩[A063693(n+1), A341357(n+1)]` -/
def P12386788882346811204.Spec : Prop :=
  ∀ n, (P12386788882346811204.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P11104292795759303882

`∩[A395788(n+1), A007529(n+1)]`
-/

namespace A022004.P11104292795759303882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P11104292795759303882

namespace A022004

/-- `∩[A395788(n+1), A007529(n+1)]` -/
def P11104292795759303882.Spec : Prop :=
  ∀ n, (P11104292795759303882.a n : ℤ) = A022004 (n + 1)

end A022004

/-! ## A022004.P11586882571503630780

`∩[A007529(n+1), A073534(n+1)]`
-/

namespace A022004.P11586882571503630780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022004.P11586882571503630780

namespace A022004

/-- `∩[A007529(n+1), A073534(n+1)]` -/
def P11586882571503630780.Spec : Prop :=
  ∀ n, (P11586882571503630780.a n : ℤ) = A022004 (n + 1)

end A022004

/-!
# A022005: Initial members of prime triples (p, p+4, p+6).

The programs for A022005, there is no canonical definition to state claims against.
-/

/-! ## A022005.P18386913123272611338

`A144840(n+1)-1`
-/

namespace A022005.P18386913123272611338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1) - 1

end

end A022005.P18386913123272611338

/-! ## A022005.P6167987860090738146

`A073649(n+1)-4`
-/

namespace A022005.P6167987860090738146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1) - 4

end

end A022005.P6167987860090738146

/-! ## A022005.P2107735990317656109

`A098413(n+1)-6`
-/

namespace A022005.P2107735990317656109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1) - 6

end

end A022005.P2107735990317656109

/-! ## A022005.P10179737507360605648

`3*A062767(n+1)+1`
-/

namespace A022005.P10179737507360605648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062767 (n + 1) + 1

end

end A022005.P10179737507360605648

/-! ## A022005.P9184664642926484097

`3*2*A215918(n+1)+1`
-/

namespace A022005.P9184664642926484097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A215918 (n + 1)) + 1

end

end A022005.P9184664642926484097

/-! ## A022005.P16382211690684196784

`A372419(n+1)/(A073649(n+1)*A098413(n+1))`
-/

namespace A022005.P16382211690684196784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372419 (n + 1) : ℚ) / (A073649 (n + 1) * A098413 (n + 1) : ℚ)

end

end A022005.P16382211690684196784

/-! ## A022005.P7166554066236777349

`∩[A007529(n+1), A029710(n+1)]`
-/

namespace A022005.P7166554066236777349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P7166554066236777349

/-! ## A022005.P14687296649651776152

`∩[A007529(n+1), A015913(n+1)]`
-/

namespace A022005.P14687296649651776152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P14687296649651776152

/-! ## A022005.P7868724887540534878

`∩[A007529(n+1), A172238(n+1)]`
-/

namespace A022005.P7868724887540534878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P7868724887540534878

/-! ## A022005.P14969658745804280353

`∩[A007529(n+1), A088175(n+1)]`
-/

namespace A022005.P14969658745804280353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P14969658745804280353

/-! ## A022005.P11917482269247576553

`∩[A029710(n+1), A088175(n+1)]`
-/

namespace A022005.P11917482269247576553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P11917482269247576553

/-! ## A022005.P2821126673479754960

`∩[A007529(n+1), A056772(n+1)]`
-/

namespace A022005.P2821126673479754960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P2821126673479754960

/-! ## A022005.P11218098226331447283

`p?[A001359(n+1)-4]`
-/

namespace A022005.P11218098226331447283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022005.P11218098226331447283

/-! ## A022005.P837291064565117748

`p?[A006512(n+1)-6]`
-/

namespace A022005.P837291064565117748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022005.P837291064565117748

/-! ## A022005.P15102395200900903018

`p?[2*A116958(n+1)+1]`
-/

namespace A022005.P15102395200900903018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022005.P15102395200900903018

/-! ## A022005.P9049053102619448411

`p?[2*A243811(n+1)-1]`
-/

namespace A022005.P9049053102619448411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243811 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022005.P9049053102619448411

/-! ## A022005.P3038128342986606852

`p?[A001097(n+4)-4]`
-/

namespace A022005.P3038128342986606852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022005.P3038128342986606852

/-! ## A022005.P10898862452422044906

`∩[A015913(n+1), A023201(n+1)]`
-/

namespace A022005.P10898862452422044906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P10898862452422044906

/-! ## A022005.P7717171456299907459

`∩[A023201(n+1), A029710(n+1)]`
-/

namespace A022005.P7717171456299907459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P7717171456299907459

/-! ## A022005.P4122614471017045877

`∩[A023201(n+1), A056772(n+1)]`
-/

namespace A022005.P4122614471017045877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022005.P4122614471017045877

/-!
# A022006: Initial members p of prime 5-tuples (p, p+2, p+6, p+8, p+12).

The programs for A022006, there is no canonical definition to state claims against.
-/

/-! ## A022006.P14427199493996817699

`∩[A007530(n+1), A086140(n+1)]`
-/

namespace A022006.P14427199493996817699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P14427199493996817699

/-! ## A022006.P9823467765081647340

`A245304(n+1)+1`
-/

namespace A022006.P9823467765081647340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245304 (n + 1) + 1

end

end A022006.P9823467765081647340

/-! ## A022006.P3199477666006080899

`or(1, A245304(ϕ²-(ϕ-n)))`
-/

namespace A022006.P3199477666006080899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245304 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A022006.P3199477666006080899

/-! ## A022006.P255876538025566628

`xor(A007318(C(2, n²)), A245304(ϕ²-(ϕ-n)))`
-/

namespace A022006.P255876538025566628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose 2 (n ^ 2))) (A245304 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

end

end A022006.P255876538025566628

/-! ## A022006.P16969962754085842121

`A090286(n+1)-6`
-/

namespace A022006.P16969962754085842121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090286 (n + 1) - 6

end

end A022006.P16969962754085842121

/-! ## A022006.P10153523611452424005

`A341832(A007918(n))+A090286(n+1)`
-/

namespace A022006.P10153523611452424005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (A007918 n).toNat + A090286 (n + 1)

end

end A022006.P10153523611452424005

/-! ## A022006.P923654130192352145

`A341832(A083370(n+1))+A090286(n+1)`
-/

namespace A022006.P923654130192352145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341832 (A083370 (n + 1)).toNat + A090286 (n + 1)

end

end A022006.P923654130192352145

/-! ## A022006.P12737230637560582555

`∩[A052378(n+1)-2, A086140(n+1)]`
-/

namespace A022006.P12737230637560582555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052378 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P12737230637560582555

/-! ## A022006.P17063746589244367981

`∩[A007530(n+1), A233540(n+1)]`
-/

namespace A022006.P17063746589244367981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P17063746589244367981

/-! ## A022006.P14812297460163721161

`∩[A086140(n+1), A233540(n+1)]`
-/

namespace A022006.P14812297460163721161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P14812297460163721161

/-! ## A022006.P18291470600840306295

`∩[A007530(n+1), A172454(n+1)]`
-/

namespace A022006.P18291470600840306295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P18291470600840306295

/-! ## A022006.P1751998609571553818

`∩[A086140(n+1), A172454(n+1)]`
-/

namespace A022006.P1751998609571553818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P1751998609571553818

/-! ## A022006.P3699768574186277426

`∩[A172454(n+1), A233540(n+1)]`
-/

namespace A022006.P3699768574186277426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P3699768574186277426

/-! ## A022006.P4349980626979371251

`∩[A053778(n+1), A086140(n+1)]`
-/

namespace A022006.P4349980626979371251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P4349980626979371251

/-! ## A022006.P9003607843276952229

`∩[A053778(n+1), A172454(n+1)]`
-/

namespace A022006.P9003607843276952229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P9003607843276952229

/-! ## A022006.P808652334125935780

`∩[A053778(n+1), A233540(n+1)]`
-/

namespace A022006.P808652334125935780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P808652334125935780

/-! ## A022006.P16346419753586956992

`∩[A086140(n+1), A089628(n+3)]`
-/

namespace A022006.P16346419753586956992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P16346419753586956992

/-! ## A022006.P893192117692923906

`∩[A172454(n+1), A089628(n+3)]`
-/

namespace A022006.P893192117692923906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P893192117692923906

/-! ## A022006.P10627820159947235993

`∩[A233540(n+1), A089628(n+3)]`
-/

namespace A022006.P10627820159947235993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022006.P10627820159947235993

/-! ## A022006.P9529620073349478794

`A270998(5*n+1)`
-/

namespace A022006.P9529620073349478794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270998 (5 * n + 1)

end

end A022006.P9529620073349478794

/-!
# A022007: Initial members of prime 5-tuples (p, p+4, p+6, p+10, p+12).

The programs for A022007, there is no canonical definition to state claims against.
-/

/-! ## A022007.P14976756025432269603

`7+30*A089157(n+1)`
-/

namespace A022007.P14976756025432269603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + 30 * A089157 (n + 1)

end

end A022007.P14976756025432269603

/-! ## A022007.P12716401893002792945

`∪[A022008(n+1), A052168(n+1)]`
-/

namespace A022007.P12716401893002792945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A022007.P12716401893002792945

/-! ## A022007.P10618952003087778188

`A270999(5*n+1)`
-/

namespace A022007.P10618952003087778188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (5 * n + 1)

end

end A022007.P10618952003087778188

/-! ## A022007.P9083988063273521536

`or(1, A270999(A016861(n)))`
-/

namespace A022007.P9083988063273521536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270999 (A016861 n).toNat)

end

end A022007.P9083988063273521536

/-! ## A022007.P16173319316658426077

`A270999(A016861(n))%A017454(n)`
-/

namespace A022007.P16173319316658426077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270999 (A016861 n).toNat) (A017454 n)

end

end A022007.P16173319316658426077

/-! ## A022007.P4423317213691394657

`A270999(A016861(n))+A000007(n+1)`
-/

namespace A022007.P4423317213691394657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (A016861 n).toNat + A000007 (n + 1)

end

end A022007.P4423317213691394657

/-! ## A022007.P5355189104272362200

`A000034(2*n)*A270999(A016861(n))`
-/

namespace A022007.P5355189104272362200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A270999 (A016861 n).toNat

end

end A022007.P5355189104272362200

/-! ## A022007.P12000461105351992838

`abs(A270999(A016861(n))/A033999(n+1))`
-/

namespace A022007.P12000461105351992838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A270999 (A016861 n).toNat : ℚ) / (A033999 (n + 1) : ℚ)|

end

end A022007.P12000461105351992838

/-! ## A022007.P17624997055728940150

`A270999(A016861(n))+char[A050814(n+1)]`
-/

namespace A022007.P17624997055728940150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050814 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (A016861 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022007.P17624997055728940150

/-! ## A022007.P17364503783982017528

`A001222(A060264(n))*A270999(A016861(n))`
-/

namespace A022007.P17364503783982017528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060264 n).toNat * A270999 (A016861 n).toNat

end

end A022007.P17364503783982017528

/-! ## A022007.P4255003905964350439

`A270999(A016861(n))/A001222(A007918(n+1))`
-/

namespace A022007.P4255003905964350439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270999 (A016861 n).toNat : ℚ) / (A001222 (A007918 (n + 1)).toNat : ℚ)

end

end A022007.P4255003905964350439

/-! ## A022007.P13985212024612014609

`A270999(A016861(n))/A001222(A042997(n+1))`
-/

namespace A022007.P13985212024612014609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270999 (A016861 n).toNat : ℚ) / (A001222 (A042997 (n + 1)).toNat : ℚ)

end

end A022007.P13985212024612014609

/-! ## A022007.P17549858707479095249

`∩[A052378(n+1), A086140(n+1)]`
-/

namespace A022007.P17549858707479095249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022007.P17549858707479095249

/-! ## A022007.P11076009280111397655

`∩[A086140(n+1), A338812(n+1)]`
-/

namespace A022007.P11076009280111397655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022007.P11076009280111397655

/-!
# A022008: Initial member of prime sextuples (p, p+4, p+6, p+10, p+12, p+16).

The programs for A022008, there is no canonical definition to state claims against.
-/

/-! ## A022008.P8866825015691778840

`A143727(n+1)-8`
-/

namespace A022008.P8866825015691778840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143727 (n + 1) - 8

end

end A022008.P8866825015691778840

/-! ## A022008.P13946277762231732089

`A271000(6*n+1)`
-/

namespace A022008.P13946277762231732089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (6 * n + 1)

end

end A022008.P13946277762231732089

/-! ## A022008.P4340385376744689501

`A271000(A016969(n))-12`
-/

namespace A022008.P4340385376744689501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (A016969 n).toNat - 12

end

end A022008.P4340385376744689501

/-! ## A022008.P10650173425647624909

`or(1, A271000(A016777(2*n)))`
-/

namespace A022008.P10650173425647624909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271000 (A016777 (2 * n)).toNat)

end

end A022008.P10650173425647624909

/-! ## A022008.P1474355942467275214

`A022007(A199004(n+1))`
-/

namespace A022008.P1474355942467275214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (A199004 (n + 1)).toNat

end

end A022008.P1474355942467275214

/-! ## A022008.P12747183211738512339

`∩[A022007(n+1), A271000(n+1)]`
-/

namespace A022008.P12747183211738512339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022008.P12747183211738512339

/-! ## A022008.P3931882803640071940

`∩[A022007(n+1), A384298(n+1)]`
-/

namespace A022008.P3931882803640071940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022008.P3931882803640071940

/-! ## A022008.P10603096906339823638

`∩[A086140(n+1), A384298(n+1)]`
-/

namespace A022008.P10603096906339823638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022008.P10603096906339823638

/-! ## A022008.P17720182431048881201

`∩[A271000(n+1), A384298(n+1)]`
-/

namespace A022008.P17720182431048881201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022008.P17720182431048881201

/-! ## A022008.P8834427750198078058

`∩[A270999(n+1), A384298(n+1)]`
-/

namespace A022008.P8834427750198078058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022008.P8834427750198078058

/-!
# A022009: Initial members of prime septuplets (p, p+2, p+6, p+8, p+12, p+18, p+20).

The programs for A022009, there is no canonical definition to state claims against.
-/

/-! ## A022009.P5830526172422989651

`210*A182387(n+1)+11`
-/

namespace A022009.P5830526172422989651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A182387 (n + 1) + 11

end

end A022009.P5830526172422989651

/-! ## A022009.P9490016451129750024

`∩[A252862(n+1), A257124(n+1)]`
-/

namespace A022009.P9490016451129750024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022009.P9490016451129750024

/-! ## A022009.P8872313659291004308

`∩[A022006(n+1), A252862(n+1)]`
-/

namespace A022009.P8872313659291004308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022009.P8872313659291004308

/-! ## A022009.P1607771745743123034

`∩[A022006(n+1), A257124(n+1)]`
-/

namespace A022009.P1607771745743123034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022009.P1607771745743123034

/-! ## A022009.P16666837583314922651

`∩[A160264(n+1), A252862(n+1)]`
-/

namespace A022009.P16666837583314922651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022009.P16666837583314922651

/-!
# A022010: Initial members of prime septuplets (p, p+2, p+8, p+12, p+14, p+18, p+20).

The programs for A022010, there is no canonical definition to state claims against.
-/

/-! ## A022010.P8075067479715623874

`210*A357889(n+1)+179`
-/

namespace A022010.P8075067479715623874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A357889 (n + 1) + 179

end

end A022010.P8075067479715623874

/-! ## A022010.P1643906968495589804

`∩[A253627(n+1), A257124(n+1)]`
-/

namespace A022010.P1643906968495589804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022010.P1643906968495589804

/-! ## A022010.P9112324612743056219

`∩[A022007(n+1)-8, A257124(n+1)]`
-/

namespace A022010.P9112324612743056219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022007 (n + 1) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022010.P9112324612743056219

/-! ## A022010.P14528946030600235041

`∩[A078948(n+1), A253627(n+1)]`
-/

namespace A022010.P14528946030600235041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022010.P14528946030600235041

/-! ## A022010.P16294020102137559362

`∩[A078948(n+1), A257124(n+1)]`
-/

namespace A022010.P16294020102137559362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022010.P16294020102137559362

/-!
# A022011: Initial members of prime octuplets (p, p+2, p+6, p+8, p+12, p+18, p+20, p+26).

The programs for A022011, there is no canonical definition to state claims against.
-/

/-! ## A022011.P14669179849040813236

`∩[A022009(n+1), A065706(n+1)]`
-/

namespace A022011.P14669179849040813236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022011.P14669179849040813236

/-! ## A022011.P10745599736540309061

`∩[A065706(n+1), A257124(n+1)]`
-/

namespace A022011.P10745599736540309061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022011.P10745599736540309061

/-! ## A022011.P12499508633406029917

`∩[A065706(n+1), A252862(n+1)]`
-/

namespace A022011.P12499508633406029917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022011.P12499508633406029917

/-!
# A022012: Initial members of prime octuplets (p, p+2, p+6, p+12, p+14, p+20, p+24, p+26).

The programs for A022012, there is no canonical definition to state claims against.
-/

/-! ## A022012.P7803880502029414306

`∩[A065706(n+1), A253624(n+1)]`
-/

namespace A022012.P7803880502029414306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022012.P7803880502029414306

/-! ## A022012.P14125834812135462170

`30*A145315(n+1)-13`
-/

namespace A022012.P14125834812135462170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A145315 (n + 1) - 13

end

end A022012.P14125834812135462170

/-! ## A022012.P5227317445074382640

`∩[A065706(n+1), A172456(n+1)]`
-/

namespace A022012.P5227317445074382640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022012.P5227317445074382640

/-! ## A022012.P17953298747515861196

`∩[A172456(n+1), A253624(n+1)]`
-/

namespace A022012.P17953298747515861196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022012.P17953298747515861196

/-!
# A022013: Initial members of prime octuplets (p, p+6, p+8, p+14, p+18, p+20, p+24, p+26).

The programs for A022013, there is no canonical definition to state claims against.
-/

/-! ## A022013.P13017892613918361912

`210*A357890(n+1)+173`
-/

namespace A022013.P13017892613918361912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  210 * A357890 (n + 1) + 173

end

end A022013.P13017892613918361912

/-! ## A022013.P14970393140711366466

`∩[A065706(n+1), A078959(n+1)]`
-/

namespace A022013.P14970393140711366466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022013.P14970393140711366466

/-!
# A022014: Tri-substituted alkanes of form C_n H_{2n-1} X_2 Y, or equivalently bi-substituted alkyls of form -C_n H_{2n-1} X_2 (n=1: CHXXY; n=2: CXXY-CHHH CXYH-CXHH CXXH-CYHH).

The programs for A022014, there is no canonical definition to state claims against.
-/

/-! ## A022014.P5952004814018482726

`A294235(A225178(n+2))`
-/

namespace A022014.P5952004814018482726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294235 (A225178 (n + 2)).toNat

end

end A022014.P5952004814018482726

/-! ## A022014.P17295173843012300986

`A183121(n)-A001221(A352608(n))`
-/

namespace A022014.P17295173843012300986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183121 n - A001221 (A352608 n).toNat

end

end A022014.P17295173843012300986

/-! ## A022014.P5039043948632273457

`A132270(A157725(2*n+1)+A132308(n))`
-/

namespace A022014.P5039043948632273457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A157725 (2 * n + 1) + A132308 n).toNat

end

end A022014.P5039043948632273457

/-!
# A022015: a(n)=2a(n-1)+3a(n-2)+2a(n-3)+3a(n-4).

The programs for A022015, the canonical program `A022015.P2923771901867051745` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022015 has offset 0).

The definition of A022015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+2*a(n-3)+3*a(n-4)` (program `A022015.P2923771901867051745`, by `A022015.P2923771901867051745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022015.P2923771901867051745

`2*a(n-1)+3*a(n-2)+2*a(n-3)+3*a(n-4)` with `a(0)=2, a(1)=6, a(2)=19, a(3)=61`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022015

/-- `2*a(n-1)+3*a(n-2)+2*a(n-3)+3*a(n-4)` -/
def P2923771901867051745.Spec : Prop :=
  ∀ n, (P2923771901867051745.a n : ℤ) = A022015 n

theorem P2923771901867051745.correct : P2923771901867051745.Spec := by
  intro n
  simp only [A022015]

end A022015

/-! ## A022015.P6092733282925029254

`ogf((2+2x+x^2+x^3)/(1-2x-3x^2-2x^3-3x^4))`
-/

namespace A022015.P6092733282925029254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1, 1] [1, -2, -3, -2, -3] n

end

end A022015.P6092733282925029254

namespace A022015

/-- `ogf((2+2x+x^2+x^3)/(1-2x-3x^2-2x^3-3x^4))` -/
def P6092733282925029254.Spec : Prop :=
  ∀ n, P6092733282925029254.a n = A022015 n

end A022015

/-! ## A022015.P17142562453529190047

`A173404(2*n+3)-A092598(A173404(n+1))`
-/

namespace A022015.P17142562453529190047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173404 (2 * n + 3) - A092598 (A173404 (n + 1)).toNat

end

end A022015.P17142562453529190047

namespace A022015

/-- `A173404(2*n+3)-A092598(A173404(n+1))` -/
def P17142562453529190047.Spec : Prop :=
  ∀ n, P17142562453529190047.a n = A022015 n

end A022015

/-!
# A022016: Number of partially ordered sets with no isolated points and with n "lines": pairs (a,b) where a < b and there is no c with a < c < b. The lines form the minimal basis for the partial ordering.

The programs for A022016, there is no canonical definition to state claims against.
-/

/-! ## A022016.P12107052149797513670

`A157271(A150366(n))`
-/

namespace A022016.P12107052149797513670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150366 n).toNat

end

end A022016.P12107052149797513670

/-! ## A022016.P398077487995675339

`A005041(Δ[A005867(n)])`
-/

namespace A022016.P398077487995675339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (n + 1) - f1 n).toNat

end

end A022016.P398077487995675339

/-!
# A022017: Number of connected partially ordered sets with n "lines": pairs (a,b) where a < b and there is no c with a < c < b. The lines form the minimal basis for the partial ordering.

The programs for A022017, there is no canonical definition to state claims against.
-/

/-! ## A022017.P4860246594989944576

`A099012(n)+record[A353430(3*n+1)]`
-/

namespace A022017.P4860246594989944576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022017.P4860246594989944576

/-! ## A022017.P3776335851180860269

`A327060(2*n)-char[A327076(n+2)]`
-/

namespace A022017.P3776335851180860269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327076 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327060 (2 * n) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022017.P3776335851180860269

/-!
# A022018: Define the sequence UD(a(0),a(1)) by a(n) is the least integer such that a(n)/a(n-1) > a(n-1)/a(n-2)+1 for even n >= 2 and such that a(n)/a(n-1) > a(n-1)/a(n-2) for odd n>=2. This is UD(2,16).

The programs for A022018, the canonical program `A022018.P6958257251310051863` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022018 has offset 0).

The definition of A022018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022018.P6958257251310051863

`8*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=16, a(2)=129`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022018

/-- `8*a(n-1)+a(n-2)-4*a(n-3)` -/
def P6958257251310051863.Spec : Prop :=
  ∀ n, P6958257251310051863.a n = A022018 n

theorem P6958257251310051863.correct : P6958257251310051863.Spec := by
  intro n
  simp only [A022018]

end A022018

/-! ## A022018.P2445821098439001239

`ogf((2-x^2)/(1-8x-x^2+4x^3))`
-/

namespace A022018.P2445821098439001239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -8, -1, 4] n

end

end A022018.P2445821098439001239

namespace A022018

/-- `ogf((2-x^2)/(1-8x-x^2+4x^3))` -/
def P2445821098439001239.Spec : Prop :=
  ∀ n, P2445821098439001239.a n = A022018 n

end A022018

/-! ## A022018.P5245137107458693382

`round(xor(1, a(n-1)²)/a(n-2))` with `a(0)=2, a(1)=16`
-/

namespace A022018.P5245137107458693382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16] fun n a =>
  SequenceMachineLib.roundAway ((Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ))

end

end A022018.P5245137107458693382

namespace A022018

/-- `round(xor(1, a(n-1)²)/a(n-2))` -/
def P5245137107458693382.Spec : Prop :=
  ∀ n, P5245137107458693382.a n = A022018 n

end A022018

/-!
# A022019: Define the sequence S(a(0), a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0 . This is S(2,32).

The programs for A022019, there is no canonical definition to state claims against.
-/

/-! ## A022019.P390693449349117295

`round(xor(1, a(n-1)²)/a(n-2))` with `a(0)=2, a(1)=32`
-/

namespace A022019.P390693449349117295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 32] fun n a =>
  SequenceMachineLib.roundAway ((Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ))

end

end A022019.P390693449349117295

/-!
# A022020: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(3,9).

The programs for A022020, the canonical program `A022020.P17754524932939836673` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022020 has offset 0).

The definition of A022020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022020.P17754524932939836673

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=9, a(2)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022020

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P17754524932939836673.Spec : Prop :=
  ∀ n, P17754524932939836673.a n = A022020 n

theorem P17754524932939836673.correct : P17754524932939836673.Spec := by
  intro n
  simp only [A022020]

end A022020

/-! ## A022020.P9088070564121507192

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=3, a(1)=9`
-/

namespace A022020.P9088070564121507192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A022020.P9088070564121507192

namespace A022020

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P9088070564121507192.Spec : Prop :=
  ∀ n, P9088070564121507192.a n = A022020 n

end A022020

/-! ## A022020.P16152768243537345222

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=9, a(2)=28`
-/

namespace A022020.P16152768243537345222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 28] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A022020.P16152768243537345222

namespace A022020

/-- `ceil(a(n-1)²/a(n-2))` -/
def P16152768243537345222.Spec : Prop :=
  ∀ n, P16152768243537345222.a n = A022020 n

theorem P16152768243537345222.correct : P16152768243537345222.Spec := by
  intro n
  simp only [A022020, Nat.add_sub_cancel, A022020.P16152768243537345222.a, A022020.P17754524932939836673.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022020

/-! ## A022020.P5786559833198982516

`floor(a(n-1)²/a(n-2))+1` with `a(0)=3, a(1)=9`
-/

namespace A022020.P5786559833198982516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A022020.P5786559833198982516

namespace A022020

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P5786559833198982516.Spec : Prop :=
  ∀ n, P5786559833198982516.a n = A022020 n

end A022020

/-!
# A022021: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(5,20).

The programs for A022021, there is no canonical definition to state claims against.
-/

/-! ## A022021.P13214053991275015315

`floor(a(n-1)²/a(n-2))+1` with `a(0)=5, a(1)=20`
-/

namespace A022021.P13214053991275015315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 20] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A022021.P13214053991275015315

/-!
# A022022: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(5,45).

The programs for A022022, the canonical program `A022022.P10393089970228619304` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022022 has offset 0).

The definition of A022022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022022.P10393089970228619304

`floor(a(n-1)²/a(n-2))+1` with `a(0)=5, a(1)=45`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022022

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P10393089970228619304.Spec : Prop :=
  ∀ n, P10393089970228619304.a n = A022022 n

theorem P10393089970228619304.correct : P10393089970228619304.Spec := by
  intro n
  simp only [A022022]

end A022022

/-! ## A022022.P14054080788644034886

`ogf((5-4x^2)/(1-9x-x^2+7x^3))`
-/

namespace A022022.P14054080788644034886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, -4] [1, -9, -1, 7] n

end

end A022022.P14054080788644034886

namespace A022022

/-- `ogf((5-4x^2)/(1-9x-x^2+7x^3))` -/
def P14054080788644034886.Spec : Prop :=
  ∀ n, P14054080788644034886.a n = A022022 n

end A022022

/-!
# A022023: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(6,30).

The programs for A022023, there is no canonical definition to state claims against.
-/

/-! ## A022023.P15698446672953506032

`floor(a(n-1)²/a(n-2))+1` with `a(0)=6, a(1)=30`
-/

namespace A022023.P15698446672953506032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 30] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A022023.P15698446672953506032

/-!
# A022024: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(6,66).

The programs for A022024, the canonical program `A022024.P1635951240151897908` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022024 has offset 0).

The definition of A022024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022024.P1635951240151897908

`floor(a(n-1)²/a(n-2))+1` with `a(0)=6, a(1)=66`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022024

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P1635951240151897908.Spec : Prop :=
  ∀ n, P1635951240151897908.a n = A022024 n

theorem P1635951240151897908.correct : P1635951240151897908.Spec := by
  intro n
  simp only [A022024]

end A022024

/-!
# A022025: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(6,102).

The programs for A022025, the canonical program `A022025.P11905350820021708050` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022025 has offset 0).

The definition of A022025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022025.P11905350820021708050

`1+floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=102`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022025

/-- `1+floor(a(n-1)²/a(n-2))` -/
def P11905350820021708050.Spec : Prop :=
  ∀ n, P11905350820021708050.a n = A022025 n

theorem P11905350820021708050.correct : P11905350820021708050.Spec := by
  intro n
  simp only [A022025]

end A022025

/-!
# A022026: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,15).

The programs for A022026, the canonical program `A022026.P2328058487854863960` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022026 has offset 0).

The definition of A022026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022026.P9357498525437925968

`ogf((2-x)/(1-8x+4x^2))`
-/

namespace A022026.P9357498525437925968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -8, 4] n

end

end A022026.P9357498525437925968

namespace A022026

/-- `ogf((2-x)/(1-8x+4x^2))` -/
def P9357498525437925968.Spec : Prop :=
  ∀ n, P9357498525437925968.a n = A022026 n

end A022026

/-! ## A022026.P2328058487854863960

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022026

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P2328058487854863960.Spec : Prop :=
  ∀ n, P2328058487854863960.a n = A022026 n

theorem P2328058487854863960.correct : P2328058487854863960.Spec := by
  intro n
  simp only [A022026]

end A022026

/-! ## A022026.P9160011526850654565

`2^(n-1)*A010905(n)`
-/

namespace A022026.P9160011526850654565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A010905 n : ℚ)

end

end A022026.P9160011526850654565

namespace A022026

/-- `2^(n-1)*A010905(n)` -/
def P9160011526850654565.Spec : Prop :=
  ∀ n, P9160011526850654565.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P12904658240853559037

`2^(n-1)*A001353(n+2)`
-/

namespace A022026.P12904658240853559037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001353 (n + 2) : ℚ)

end

end A022026.P12904658240853559037

namespace A022026

/-- `2^(n-1)*A001353(n+2)` -/
def P12904658240853559037.Spec : Prop :=
  ∀ n, P12904658240853559037.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P1268042764103170336

`2^(n-2)*A052530(n+2)`
-/

namespace A022026.P1268042764103170336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A052530 (n + 2) : ℚ)

end

end A022026.P1268042764103170336

namespace A022026

/-- `2^(n-2)*A052530(n+2)` -/
def P1268042764103170336.Spec : Prop :=
  ∀ n, P1268042764103170336.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P4106550246903846841

`2^(n-1)*Δ[A061278(n+1)]`
-/

namespace A022026.P4106550246903846841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A022026.P4106550246903846841

namespace A022026

/-- `2^(n-1)*Δ[A061278(n+1)]` -/
def P4106550246903846841.Spec : Prop :=
  ∀ n, P4106550246903846841.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P6874477249347538962

`Δ[A005666(n)]*A028859(n)`
-/

namespace A022026.P6874477249347538962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A028859 n

end

end A022026.P6874477249347538962

namespace A022026

/-- `Δ[A005666(n)]*A028859(n)` -/
def P6874477249347538962.Spec : Prop :=
  ∀ n, P6874477249347538962.a n = A022026 n

end A022026

/-! ## A022026.P18096105114398889550

`A028859(n)*A052945(n+1)`
-/

namespace A022026.P18096105114398889550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n * A052945 (n + 1)

end

end A022026.P18096105114398889550

namespace A022026

/-- `A028859(n)*A052945(n+1)` -/
def P18096105114398889550.Spec : Prop :=
  ∀ n, P18096105114398889550.a n = A022026 n

end A022026

/-! ## A022026.P2325898875889848663

`A099156(n+1)+Δ[A099156(n)]`
-/

namespace A022026.P2325898875889848663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099156 (n + 1) + (f1 (n + 1) - f1 n)

end

end A022026.P2325898875889848663

namespace A022026

/-- `A099156(n+1)+Δ[A099156(n)]` -/
def P2325898875889848663.Spec : Prop :=
  ∀ n, P2325898875889848663.a n = A022026 n

end A022026

/-! ## A022026.P3344398291055935027

`∑[A052945(n)]*A052945(n+1)`
-/

namespace A022026.P3344398291055935027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052945 (n + 1)

end

end A022026.P3344398291055935027

namespace A022026

/-- `∑[A052945(n)]*A052945(n+1)` -/
def P3344398291055935027.Spec : Prop :=
  ∀ n, P3344398291055935027.a n = A022026 n

end A022026

/-! ## A022026.P11135814313165395680

`Δ[A057960(n)]*A052945(n+1)`
-/

namespace A022026.P11135814313165395680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052945 (n + 1)

end

end A022026.P11135814313165395680

namespace A022026

/-- `Δ[A057960(n)]*A052945(n+1)` -/
def P11135814313165395680.Spec : Prop :=
  ∀ n, P11135814313165395680.a n = A022026 n

end A022026

/-! ## A022026.P13170784764808966920

`Δ[A293005(n)]*A052945(n+1)`
-/

namespace A022026.P13170784764808966920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052945 (n + 1)

end

end A022026.P13170784764808966920

namespace A022026

/-- `Δ[A293005(n)]*A052945(n+1)` -/
def P13170784764808966920.Spec : Prop :=
  ∀ n, P13170784764808966920.a n = A022026 n

end A022026

/-! ## A022026.P18207167052835782012

`A052945(n+1)*A155020(n+1)`
-/

namespace A022026.P18207167052835782012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (n + 1) * A155020 (n + 1)

end

end A022026.P18207167052835782012

namespace A022026

/-- `A052945(n+1)*A155020(n+1)` -/
def P18207167052835782012.Spec : Prop :=
  ∀ n, P18207167052835782012.a n = A022026 n

end A022026

/-! ## A022026.P3731202338211330741

`A026150(n+2)/2*A028859(n)`
-/

namespace A022026.P3731202338211330741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (n + 2) : ℚ) / 2 * (A028859 n : ℚ)

end

end A022026.P3731202338211330741

namespace A022026

/-- `A026150(n+2)/2*A028859(n)` -/
def P3731202338211330741.Spec : Prop :=
  ∀ n, P3731202338211330741.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P12466240526749300786

`A001353(n+2)/2*Δ[A000051(n)]`
-/

namespace A022026.P12466240526749300786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 (n + 2) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A022026.P12466240526749300786

namespace A022026

/-- `A001353(n+2)/2*Δ[A000051(n)]` -/
def P12466240526749300786.Spec : Prop :=
  ∀ n, P12466240526749300786.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P13718122597246492947

`A099156(n+1)+A080879(2*n+1)`
-/

namespace A022026.P13718122597246492947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099156 (n + 1) + A080879 (2 * n + 1)

end

end A022026.P13718122597246492947

namespace A022026

/-- `A099156(n+1)+A080879(2*n+1)` -/
def P13718122597246492947.Spec : Prop :=
  ∀ n, P13718122597246492947.a n = A022026 n

end A022026

/-! ## A022026.P15594593487518535628

`A080882(2*n+1)-A080882(2*n)`
-/

namespace A022026.P15594593487518535628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080882 (2 * n + 1) - A080882 (2 * n)

end

end A022026.P15594593487518535628

namespace A022026

/-- `A080882(2*n+1)-A080882(2*n)` -/
def P15594593487518535628.Spec : Prop :=
  ∀ n, P15594593487518535628.a n = A022026 n

end A022026

/-! ## A022026.P4734653476336929784

`A052945(2*n+1)+A002605(2*n)/2`
-/

namespace A022026.P4734653476336929784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052945 (2 * n + 1) : ℚ) + (A002605 (2 * n) : ℚ) / 2

end

end A022026.P4734653476336929784

namespace A022026

/-- `A052945(2*n+1)+A002605(2*n)/2` -/
def P4734653476336929784.Spec : Prop :=
  ∀ n, P4734653476336929784.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P18318127166941821489

`A152035(2*n+1)+A083337(2*n)/2`
-/

namespace A022026.P18318127166941821489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 (2 * n + 1) : ℚ) + (A083337 (2 * n) : ℚ) / 2

end

end A022026.P18318127166941821489

namespace A022026

/-- `A152035(2*n+1)+A083337(2*n)/2` -/
def P18318127166941821489.Spec : Prop :=
  ∀ n, P18318127166941821489.a n = (A022026 n : ℚ)

end A022026

/-! ## A022026.P6371687527361013956

`A102591(n)+A107903(n)-A099156(n)`
-/

namespace A022026.P6371687527361013956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102591 n + (A107903 n - A099156 n)

end

end A022026.P6371687527361013956

namespace A022026

/-- `A102591(n)+A107903(n)-A099156(n)` -/
def P6371687527361013956.Spec : Prop :=
  ∀ n, P6371687527361013956.a n = A022026 n

end A022026

/-!
# A022027: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,16).

The programs for A022027, the canonical program `A022027.P822944641305798100` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022027 has offset 0).

The definition of A022027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022027.P2759779424900469924

`ogf((2-x^2)/(1-8x+4x^3))`
-/

namespace A022027.P2759779424900469924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -8, 0, 4] n

end

end A022027.P2759779424900469924

namespace A022027

/-- `ogf((2-x^2)/(1-8x+4x^3))` -/
def P2759779424900469924.Spec : Prop :=
  ∀ n, P2759779424900469924.a n = A022027 n

end A022027

/-! ## A022027.P822944641305798100

`8*a(n-1)-4*a(n-3)` with `a(0)=2, a(1)=16, a(2)=127`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022027

/-- `8*a(n-1)-4*a(n-3)` -/
def P822944641305798100.Spec : Prop :=
  ∀ n, P822944641305798100.a n = A022027 n

theorem P822944641305798100.correct : P822944641305798100.Spec := by
  intro n
  simp only [A022027]

end A022027

/-! ## A022027.P5809474738535418127

`floor((a(n-1)²-1)/a(n-2))` with `a(0)=2, a(1)=16`
-/

namespace A022027.P5809474738535418127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022027.P5809474738535418127

namespace A022027

/-- `floor((a(n-1)²-1)/a(n-2))` -/
def P5809474738535418127.Spec : Prop :=
  ∀ n, P5809474738535418127.a n = A022027 n

end A022027

/-! ## A022027.P2958975947875150610

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=16`
-/

namespace A022027.P2958975947875150610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022027.P2958975947875150610

namespace A022027

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P2958975947875150610.Spec : Prop :=
  ∀ n, P2958975947875150610.a n = A022027 n

end A022027

/-!
# A022028: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,32).

The programs for A022028, there is no canonical definition to state claims against.
-/

/-! ## A022028.P2501938178024769722

`16*a(n-1)-8*a(n-3)` with `a(0)=2, a(1)=32, a(2)=511`
-/

namespace A022028.P2501938178024769722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 32, 511] fun n a =>
  16 * a (n - 1) - 8 * a (n - 3)

end

end A022028.P2501938178024769722

/-!
# A022030: For even n, a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n); for odd n, the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n); a(0) = 4, a(1) = 16.

The programs for A022030, the canonical program `A022030.P12378900995634265966` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022030 has offset 0).

The definition of A022030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022030.P2398296712786417769

`Δ[ogf(1/(1-5x+4x^2+x^3-2x^4+x^5))]`
-/

namespace A022030.P2398296712786417769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 4, 1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022030.P2398296712786417769

namespace A022030

/-- `Δ[ogf(1/(1-5x+4x^2+x^3-2x^4+x^5))]` -/
def P2398296712786417769.Spec : Prop :=
  ∀ n, P2398296712786417769.a n = A022030 n

end A022030

/-! ## A022030.P7465388023102185998

`ogf((4-x^2+x^3)/(1-4x+x^3-x^4))`
-/

namespace A022030.P7465388023102185998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -1, 1] [1, -4, 0, 1, -1] n

end

end A022030.P7465388023102185998

namespace A022030

/-- `ogf((4-x^2+x^3)/(1-4x+x^3-x^4))` -/
def P7465388023102185998.Spec : Prop :=
  ∀ n, P7465388023102185998.a n = A022030 n

end A022030

/-! ## A022030.P12378900995634265966

`4*a(n-1)-a(n-3)+a(n-4)` with `a(0)=4, a(1)=16, a(2)=63, a(3)=249`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022030

/-- `4*a(n-1)-a(n-3)+a(n-4)` -/
def P12378900995634265966.Spec : Prop :=
  ∀ n, P12378900995634265966.a n = A022030 n

theorem P12378900995634265966.correct : P12378900995634265966.Spec := by
  intro n
  simp only [A022030]

end A022030

/-!
# A022031: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(4,17).

The programs for A022031, the canonical program `A022031.P2216221324241923790` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022031 has offset 0).

The definition of A022031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022031.P2216221324241923790

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022031

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P2216221324241923790.Spec : Prop :=
  ∀ n, P2216221324241923790.a n = A022031 n

theorem P2216221324241923790.correct : P2216221324241923790.Spec := by
  intro n
  simp only [A022031]

end A022031

/-! ## A022031.P699404375761228794

`ceil(a(n-1)/a(n-2)*a(n-1))-1` with `a(0)=4, a(1)=17`
-/

namespace A022031.P699404375761228794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉ - 1

end

end A022031.P699404375761228794

namespace A022031

/-- `ceil(a(n-1)/a(n-2)*a(n-1))-1` -/
def P699404375761228794.Spec : Prop :=
  ∀ n, P699404375761228794.a n = A022031 n

end A022031

/-! ## A022031.P6043256180580115204

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=17`
-/

namespace A022031.P6043256180580115204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022031.P6043256180580115204

namespace A022031

/-- `floor(a(n-1)²/a(n-2))` -/
def P6043256180580115204.Spec : Prop :=
  ∀ n, P6043256180580115204.a n = A022031 n

theorem P6043256180580115204.correct : P6043256180580115204.Spec := by
  intro n
  simp only [A022031, Nat.add_sub_cancel, A022031.P6043256180580115204.a, A022031.P2216221324241923790.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022031

/-! ## A022031.P10382327268759805448

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=17`
-/

namespace A022031.P10382327268759805448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022031.P10382327268759805448

namespace A022031

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P10382327268759805448.Spec : Prop :=
  ∀ n, P10382327268759805448.a n = A022031 n

end A022031

/-!
# A022032: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(5,26).

The programs for A022032, the canonical program `A022032.P7641226417153330823` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022032 has offset 0).

The definition of A022032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022032.P7641226417153330823

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022032

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P7641226417153330823.Spec : Prop :=
  ∀ n, P7641226417153330823.a n = A022032 n

theorem P7641226417153330823.correct : P7641226417153330823.Spec := by
  intro n
  simp only [A022032]

end A022032

/-! ## A022032.P17751457465473041854

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=26`
-/

namespace A022032.P17751457465473041854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 26] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022032.P17751457465473041854

namespace A022032

/-- `floor(a(n-1)²/a(n-2))` -/
def P17751457465473041854.Spec : Prop :=
  ∀ n, P17751457465473041854.a n = A022032 n

theorem P17751457465473041854.correct : P17751457465473041854.Spec := by
  intro n
  simp only [A022032, Nat.add_sub_cancel, A022032.P17751457465473041854.a, A022032.P7641226417153330823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022032

/-! ## A022032.P15258532180424944247

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=5, a(1)=26`
-/

namespace A022032.P15258532180424944247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 26] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022032.P15258532180424944247

namespace A022032

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P15258532180424944247.Spec : Prop :=
  ∀ n, P15258532180424944247.a n = A022032 n

end A022032

/-!
# A022033: Expansion of 1/((1-x)(1-5x)(1-6x)(1-7x)).

The programs for A022033, the canonical program `A022033.P13917457032251147298` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022033 has offset 0).

The definition of A022033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022033.P13917457032251147298

`(10*7^(n+3)-24*6^(n+3)+15*5^(n+3)-1)/120`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022033

/-- `(10*7^(n+3)-24*6^(n+3)+15*5^(n+3)-1)/120` -/
def P13917457032251147298.Spec : Prop :=
  ∀ n, P13917457032251147298.a n = (A022033 n : ℚ)

end A022033

/-! ## A022033.P13175324436501316188

`∑[A019757(n)]`
-/

namespace A022033.P13175324436501316188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022033.P13175324436501316188

namespace A022033

/-- `∑[A019757(n)]` -/
def P13175324436501316188.Spec : Prop :=
  ∀ n, P13175324436501316188.a n = A022033 n

end A022033

/-! ## A022033.P15892136002409952738

`A019757(floor(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A022033.P15892136002409952738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019757 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A022033.P15892136002409952738

namespace A022033

/-- `A019757(floor(acot(n)+n))+a(n-1)` -/
def P15892136002409952738.Spec : Prop :=
  ∀ n, P15892136002409952738.a n = A022033 n

end A022033

/-! ## A022033.P8499470462444946295

`2*A021804(n)-A021754(n)`
-/

namespace A022033.P8499470462444946295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021804 n - A021754 n

end

end A022033.P8499470462444946295

namespace A022033

/-- `2*A021804(n)-A021754(n)` -/
def P8499470462444946295.Spec : Prop :=
  ∀ n, P8499470462444946295.a n = A022033 n

end A022033

/-! ## A022033.P5424403929552457381

`A016230(n+1)-A016228(n+1)`
-/

namespace A022033.P5424403929552457381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016230 (n + 1) - A016228 (n + 1)

end

end A022033.P5424403929552457381

namespace A022033

/-- `A016230(n+1)-A016228(n+1)` -/
def P5424403929552457381.Spec : Prop :=
  ∀ n, P5424403929552457381.a n = A022033 n

end A022033

/-! ## A022033.P15477499136877350909

`A016241(n+1)-A016230(n+1)`
-/

namespace A022033.P15477499136877350909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016241 (n + 1) - A016230 (n + 1)

end

end A022033.P15477499136877350909

namespace A022033

/-- `A016241(n+1)-A016230(n+1)` -/
def P15477499136877350909.Spec : Prop :=
  ∀ n, P15477499136877350909.a n = A022033 n

end A022033

/-! ## A022033.P9067416824449398547

`∑[A193685(A133263(n+2))]`
-/

namespace A022033.P9067416824449398547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 (A133263 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022033.P9067416824449398547

namespace A022033

/-- `∑[A193685(A133263(n+2))]` -/
def P9067416824449398547.Spec : Prop :=
  ∀ n, P9067416824449398547.a n = A022033 n

end A022033

/-! ## A022033.P11029321860445467233

`∑[A193685(A055998(n)+5)]`
-/

namespace A022033.P11029321860445467233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 (A055998 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022033.P11029321860445467233

namespace A022033

/-- `∑[A193685(A055998(n)+5)]` -/
def P11029321860445467233.Spec : Prop :=
  ∀ n, P11029321860445467233.a n = A022033 n

end A022033

/-! ## A022033.P3102254126413912380

`∑[A193685(A000217(n+2)+2)]`
-/

namespace A022033.P3102254126413912380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 (A000217 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022033.P3102254126413912380

namespace A022033

/-- `∑[A193685(A000217(n+2)+2)]` -/
def P3102254126413912380.Spec : Prop :=
  ∀ n, P3102254126413912380.a n = A022033 n

end A022033

/-!
# A022034: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(6,31).

The programs for A022034, the canonical program `A022034.P14468903691370572712` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022034 has offset 0).

The definition of A022034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022034.P14468903691370572712

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=6, a(1)=31`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022034

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P14468903691370572712.Spec : Prop :=
  ∀ n, P14468903691370572712.a n = A022034 n

theorem P14468903691370572712.correct : P14468903691370572712.Spec := by
  intro n
  simp only [A022034]

end A022034

/-! ## A022034.P6683091327585635036

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=31`
-/

namespace A022034.P6683091327585635036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 31] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022034.P6683091327585635036

namespace A022034

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P6683091327585635036.Spec : Prop :=
  ∀ n, P6683091327585635036.a n = A022034 n

end A022034

/-! ## A022034.P16198246157014301990

`floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=31`
-/

namespace A022034.P16198246157014301990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 31] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022034.P16198246157014301990

namespace A022034

/-- `floor(a(n-1)²/a(n-2))` -/
def P16198246157014301990.Spec : Prop :=
  ∀ n, P16198246157014301990.a n = A022034 n

end A022034

/-!
# A022035: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(6,37).

The programs for A022035, the canonical program `A022035.P2336562622855540167` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022035 has offset 0).

The definition of A022035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022035.P2336562622855540167

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=6, a(1)=37`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022035

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P2336562622855540167.Spec : Prop :=
  ∀ n, P2336562622855540167.a n = A022035 n

theorem P2336562622855540167.correct : P2336562622855540167.Spec := by
  intro n
  simp only [A022035]

end A022035

/-! ## A022035.P4324224218565001550

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=6, a(1)=37`
-/

namespace A022035.P4324224218565001550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 37] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022035.P4324224218565001550

namespace A022035

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P4324224218565001550.Spec : Prop :=
  ∀ n, P4324224218565001550.a n = A022035 n

end A022035

/-! ## A022035.P689223138346547490

`floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=37`
-/

namespace A022035.P689223138346547490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 37] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022035.P689223138346547490

namespace A022035

/-- `floor(a(n-1)²/a(n-2))` -/
def P689223138346547490.Spec : Prop :=
  ∀ n, P689223138346547490.a n = A022035 n

end A022035

/-!
# A022036: Define the sequence T(a_0,a_1) by a_{n+2} is the greatest integer such that a_{n+2}/a_{n+1}= 0. This is T(7,43).

The programs for A022036, the canonical program `A022036.P14718652148872808596` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022036 has offset 0).

The definition of A022036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022036.P14718652148872808596

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=7, a(1)=43`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022036

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P14718652148872808596.Spec : Prop :=
  ∀ n, P14718652148872808596.a n = A022036 n

theorem P14718652148872808596.correct : P14718652148872808596.Spec := by
  intro n
  simp only [A022036]

end A022036

/-! ## A022036.P16015355259805571734

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=7, a(1)=43`
-/

namespace A022036.P16015355259805571734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 43] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022036.P16015355259805571734

namespace A022036

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P16015355259805571734.Spec : Prop :=
  ∀ n, P16015355259805571734.a n = A022036 n

end A022036

/-! ## A022036.P5643621281653892025

`floor(xor(1, a(n-1)²)/a(n-2))` with `a(0)=7, a(1)=43`
-/

namespace A022036.P5643621281653892025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 43] fun n a =>
  ⌊(Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022036.P5643621281653892025

namespace A022036

/-- `floor(xor(1, a(n-1)²)/a(n-2))` -/
def P5643621281653892025.Spec : Prop :=
  ∀ n, P5643621281653892025.a n = A022036 n

end A022036

/-!
# A022037: Define the sequence T(a(0), a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(7,50).

The programs for A022037, the canonical program `A022037.P4263471199535925473` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022037 has offset 0).

The definition of A022037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022037.P4263471199535925473

`floor(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=50`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022037

/-- `floor(a(n-1)²/a(n-2))` -/
def P4263471199535925473.Spec : Prop :=
  ∀ n, P4263471199535925473.a n = A022037 n

theorem P4263471199535925473.correct : P4263471199535925473.Spec := by
  intro n
  simp only [A022037]

end A022037

/-! ## A022037.P15879780035237225662

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=7, a(1)=50`
-/

namespace A022037.P15879780035237225662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 50] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022037.P15879780035237225662

namespace A022037

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P15879780035237225662.Spec : Prop :=
  ∀ n, P15879780035237225662.a n = A022037 n

end A022037

/-!
# A022038: Define the sequence T(a_0,a_1) by a_{n+2} is the greatest integer such that a_{n+2}/a_{n+1}= 0. This is T(8,57).

The programs for A022038, the canonical program `A022038.P11441735502848458594` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022038 has offset 0).

The definition of A022038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022038.P11441735502848458594

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=8, a(1)=57`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022038

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P11441735502848458594.Spec : Prop :=
  ∀ n, P11441735502848458594.a n = A022038 n

theorem P11441735502848458594.correct : P11441735502848458594.Spec := by
  intro n
  simp only [A022038]

end A022038

/-! ## A022038.P13844540513979892930

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=8, a(1)=57`
-/

namespace A022038.P13844540513979892930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 57] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022038.P13844540513979892930

namespace A022038

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P13844540513979892930.Spec : Prop :=
  ∀ n, P13844540513979892930.a n = A022038 n

end A022038

/-! ## A022038.P14211804793556340331

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=8, a(1)=57`
-/

namespace A022038.P14211804793556340331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 57] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022038.P14211804793556340331

namespace A022038

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P14211804793556340331.Spec : Prop :=
  ∀ n, P14211804793556340331.a n = A022038 n

end A022038

/-! ## A022038.P789550862839677345

`floor(xor(1, a(n-1)²)/a(n-2))` with `a(0)=8, a(1)=57`
-/

namespace A022038.P789550862839677345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 57] fun n a =>
  ⌊(Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022038.P789550862839677345

namespace A022038

/-- `floor(xor(1, a(n-1)²)/a(n-2))` -/
def P789550862839677345.Spec : Prop :=
  ∀ n, P789550862839677345.a n = A022038 n

end A022038

/-!
# A022039: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(8,65).

The programs for A022039, the canonical program `A022039.P11868856921427177860` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022039 has offset 0).

The definition of A022039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022039.P11868856921427177860

`floor(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=65`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022039

/-- `floor(a(n-1)²/a(n-2))` -/
def P11868856921427177860.Spec : Prop :=
  ∀ n, P11868856921427177860.a n = A022039 n

theorem P11868856921427177860.correct : P11868856921427177860.Spec := by
  intro n
  simp only [A022039]

end A022039

/-! ## A022039.P381183259628768520

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=8, a(1)=65`
-/

namespace A022039.P381183259628768520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 65] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022039.P381183259628768520

namespace A022039

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P381183259628768520.Spec : Prop :=
  ∀ n, P381183259628768520.a n = A022039 n

end A022039

/-! ## A022039.P15020337567270576650

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=8, a(1)=65`
-/

namespace A022039.P15020337567270576650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 65] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022039.P15020337567270576650

namespace A022039

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P15020337567270576650.Spec : Prop :=
  ∀ n, P15020337567270576650.a n = A022039 n

theorem P15020337567270576650.correct : P15020337567270576650.Spec := by
  intro n
  simp only [A022039, Nat.add_sub_cancel, A022039.P15020337567270576650.a, A022039.P11868856921427177860.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A022039

/-!
# A022040: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(16,36).

The programs for A022040, the canonical program `A022040.P15837520231692142198` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022040 has offset 0).

The definition of A022040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022040.P15837520231692142198

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=16, a(1)=36`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022040

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P15837520231692142198.Spec : Prop :=
  ∀ n, P15837520231692142198.a n = A022040 n

theorem P15837520231692142198.correct : P15837520231692142198.Spec := by
  intro n
  simp only [A022040]

end A022040

/-! ## A022040.P9242534911569704410

`A019489(n+2)`
-/

namespace A022040.P9242534911569704410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 (n + 2)

end

end A022040.P9242534911569704410

namespace A022040

/-- `A019489(n+2)` -/
def P9242534911569704410.Spec : Prop :=
  ∀ n, P9242534911569704410.a n = A022040 n

end A022040

/-! ## A022040.P11874046236705894519

`A077852(n+3)`
-/

namespace A022040.P11874046236705894519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 (n + 3)

end

end A022040.P11874046236705894519

namespace A022040

/-- `A077852(n+3)` -/
def P11874046236705894519.Spec : Prop :=
  ∀ n, P11874046236705894519.a n = A022040 n

end A022040

/-! ## A022040.P2121096340624903991

`A019479(n+2)-1`
-/

namespace A022040.P2121096340624903991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019479 (n + 2) - 1

end

end A022040.P2121096340624903991

namespace A022040

/-- `A019479(n+2)-1` -/
def P2121096340624903991.Spec : Prop :=
  ∀ n, P2121096340624903991.a n = A022040 n

end A022040

/-! ## A022040.P3630165103994022025

`record[A019489(abs(2-n))]`
-/

namespace A022040.P3630165103994022025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022040.P3630165103994022025

namespace A022040

/-- `record[A019489(abs(2-n))]` -/
def P3630165103994022025.Spec : Prop :=
  ∀ n, P3630165103994022025.a n = A022040 n

end A022040

/-! ## A022040.P7453875590709348709

`record[A077852(abs(3-n))]`
-/

namespace A022040.P7453875590709348709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022040.P7453875590709348709

namespace A022040

/-- `record[A077852(abs(3-n))]` -/
def P7453875590709348709.Spec : Prop :=
  ∀ n, P7453875590709348709.a n = A022040 n

end A022040

/-! ## A022040.P9029396029836152115

`A193641(n+4)+∑[A008998(n)]`
-/

namespace A022040.P9029396029836152115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022040.P9029396029836152115

namespace A022040

/-- `A193641(n+4)+∑[A008998(n)]` -/
def P9029396029836152115.Spec : Prop :=
  ∀ n, P9029396029836152115.a n = A022040 n

end A022040

/-! ## A022040.P16191627934599307829

`A232230(n+5)/2`
-/

namespace A022040.P16191627934599307829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232230 (n + 5) : ℚ) / 2

end

end A022040.P16191627934599307829

namespace A022040

/-- `A232230(n+5)/2` -/
def P16191627934599307829.Spec : Prop :=
  ∀ n, P16191627934599307829.a n = (A022040 n : ℚ)

end A022040

/-! ## A022040.P15187352407323034650

`A100691(n+3)/2+1`
-/

namespace A022040.P15187352407323034650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100691 (n + 3) : ℚ) / 2 + 1

end

end A022040.P15187352407323034650

namespace A022040

/-- `A100691(n+3)/2+1` -/
def P15187352407323034650.Spec : Prop :=
  ∀ n, P15187352407323034650.a n = (A022040 n : ℚ)

end A022040

/-!
# A022041: a(n) = 3*a(n-1)+a(n-2)-a(n-3)+a(n-6)-a(n-7)+a(n-10)-a(n-11).

The programs for A022041, there is no canonical definition to state claims against.
-/

/-! ## A022041.P10074783580475120413

`A014010(n)-A185284(A018896(n))`
-/

namespace A022041.P10074783580475120413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014010 n - A185284 (A018896 n).toNat

end

end A022041.P10074783580475120413

/-! ## A022041.P11514440881417476535

`A018906(n)-A185284(A018896(n))`
-/

namespace A022041.P11514440881417476535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018906 n - A185284 (A018896 n).toNat

end

end A022041.P11514440881417476535

/-! ## A022041.P1381148603816746665

`A014010(n)-A185036(A048311(n))`
-/

namespace A022041.P1381148603816746665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014010 n - A185036 (A048311 n).toNat

end

end A022041.P1381148603816746665

/-!
# A022042: Theta series of D_11 lattice.

The programs for A022042, there is no canonical definition to state claims against.
-/

/-! ## A022042.P18105598897824419344

`A008453(2*n)`
-/

namespace A022042.P18105598897824419344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008453 (2 * n)

end

end A022042.P18105598897824419344

/-! ## A022042.P14667619614917899890

`A022064(8*n)`
-/

namespace A022042.P14667619614917899890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 (8 * n)

end

end A022042.P14667619614917899890

/-! ## A022042.P5630058582524944167

`A022064(A022144(n))+A000007(n)`
-/

namespace A022042.P5630058582524944167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 (A022144 n).toNat + A000007 n

end

end A022042.P5630058582524944167

/-! ## A022042.P8263058375172973605

`A022064(A022144(n))+A008683(A000118(n))`
-/

namespace A022042.P8263058375172973605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022064 (A022144 n).toNat + A008683 (A000118 n).toNat

end

end A022042.P8263058375172973605

/-! ## A022042.P16440822845858372071

`A022064(A022144(n))^A105812(A198954(n))`
-/

namespace A022042.P16440822845858372071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022064 (A022144 n).toNat : ℚ) ^ (A105812 (A198954 n).toNat : ℤ)

end

end A022042.P16440822845858372071

/-!
# A022043: Theta series of D_12 lattice.

The programs for A022043, there is no canonical definition to state claims against.
-/

/-! ## A022043.P12244312435704239128

`A022065(2*n)`
-/

namespace A022043.P12244312435704239128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022065 (2 * n)

end

end A022043.P12244312435704239128

/-! ## A022043.P6089895416260088137

`A000145(2*n)`
-/

namespace A022043.P6089895416260088137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000145 (2 * n)

end

end A022043.P6089895416260088137

/-! ## A022043.P12124144965504219305

`A004533(2*n)`
-/

namespace A022043.P12124144965504219305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004533 (2 * n)

end

end A022043.P12124144965504219305

/-! ## A022043.P10426907305639400655

`A286346(2*n)`
-/

namespace A022043.P10426907305639400655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286346 (2 * n)

end

end A022043.P10426907305639400655

/-! ## A022043.P4167011023539865018

`A286346(n+n)^gcd(n, n+1)`
-/

namespace A022043.P4167011023539865018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286346 (n + n) ^ Nat.gcd n (n + 1)

end

end A022043.P4167011023539865018

/-! ## A022043.P9428091362757786909

`A028697(8*n)`
-/

namespace A022043.P9428091362757786909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (8 * n)

end

end A022043.P9428091362757786909

/-!
# A022044: Theta series of D_13 lattice.

The programs for A022044, there is no canonical definition to state claims against.
-/

/-! ## A022044.P7575795996566563762

`A276285(2*n)`
-/

namespace A022044.P7575795996566563762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276285 (2 * n)

end

end A022044.P7575795996566563762

/-! ## A022044.P9657521682405630089

`xor(1, xor(1, A276285(n+n)))`
-/

namespace A022044.P9657521682405630089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A276285 (n + n)))

end

end A022044.P9657521682405630089

/-! ## A022044.P12997103985299227510

`A323514(A060308(n+1))+A276285(n+n)`
-/

namespace A022044.P12997103985299227510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (A060308 (n + 1)).toNat + A276285 (n + n)

end

end A022044.P12997103985299227510

/-! ## A022044.P5674214080116691864

`A276285(A005843(n))+A005872(A005872(n))`
-/

namespace A022044.P5674214080116691864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276285 (A005843 n).toNat + A005872 (A005872 n).toNat

end

end A022044.P5674214080116691864

/-! ## A022044.P13373721574411993267

`A022066(8*n)`
-/

namespace A022044.P13373721574411993267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 (8 * n)

end

end A022044.P13373721574411993267

/-! ## A022044.P17488974064744439799

`A276285(n+n)%A000144(A000132(n))`
-/

namespace A022044.P17488974064744439799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276285 (n + n)) (A000144 (A000132 n).toNat)

end

end A022044.P17488974064744439799

/-!
# A022045: Theta series of D_14 lattice.

The programs for A022045, there is no canonical definition to state claims against.
-/

/-! ## A022045.P9810498979971683711

`A276286(2*n)`
-/

namespace A022045.P9810498979971683711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276286 (2 * n)

end

end A022045.P9810498979971683711

/-! ## A022045.P3046224408268115738

`A022067(4*n)`
-/

namespace A022045.P3046224408268115738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 (4 * n)

end

end A022045.P3046224408268115738

/-! ## A022045.P11390504168697112201

`A004534(4*n)`
-/

namespace A022045.P11390504168697112201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 (4 * n)

end

end A022045.P11390504168697112201

/-! ## A022045.P15605916856236418231

`record[A004534(record[A014681(n)])]`
-/

namespace A022045.P15605916856236418231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022045.P15605916856236418231

/-! ## A022045.P10328458558213803985

`record[A004534(A000035(n)+n)]`
-/

namespace A022045.P10328458558213803985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 (A000035 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022045.P10328458558213803985

/-! ## A022045.P13576646984920518605

`record[A004534(A002264(n)+n)]`
-/

namespace A022045.P13576646984920518605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 (A002264 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022045.P13576646984920518605

/-! ## A022045.P1492120359271756107

`record[A004534(n-A000035(n))]`
-/

namespace A022045.P1492120359271756107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 ((n : ℤ) - A000035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022045.P1492120359271756107

/-! ## A022045.P3090007028069464957

`record[A004534(n)-A004534(n+1)]`
-/

namespace A022045.P3090007028069464957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 n - A004534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022045.P3090007028069464957

/-! ## A022045.P14380800254407992867

`A276286(n+n)^A071919(∑[n])`
-/

namespace A022045.P14380800254407992867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276286 (n + n) : ℚ) ^ (A071919 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A022045.P14380800254407992867

/-!
# A022046: Theta series of D_15 lattice.

The programs for A022046, there is no canonical definition to state claims against.
-/

/-! ## A022046.P15270952752500627855

`A276287(2*n)`
-/

namespace A022046.P15270952752500627855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276287 (2 * n)

end

end A022046.P15270952752500627855

/-! ## A022046.P5270872810242677734

`gcd(A000038(n), A276287(A005843(n)))`
-/

namespace A022046.P5270872810242677734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A276287 (A005843 n).toNat)

end

end A022046.P5270872810242677734

/-! ## A022046.P9641487997367419372

`lcm(A040001(n), A276287(A005843(n)))`
-/

namespace A022046.P9641487997367419372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A276287 (A005843 n).toNat)

end

end A022046.P9641487997367419372

/-! ## A022046.P7905739477492207930

`A276287(A005843(n))/gcd(5, A036453(n+1))`
-/

namespace A022046.P7905739477492207930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276287 (A005843 n).toNat : ℚ) / (Int.gcd 5 (A036453 (n + 1)) : ℚ)

end

end A022046.P7905739477492207930

/-! ## A022046.P2273644978218898706

`A022068(8*n)`
-/

namespace A022046.P2273644978218898706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022068 (8 * n)

end

end A022046.P2273644978218898706

/-! ## A022046.P13010682465899303798

`record[gcd(A276287(n), A277929(n))]`
-/

namespace A022046.P13010682465899303798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276287 n) (A277929 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022046.P13010682465899303798

/-! ## A022046.P8804165408217029227

`record[A276287(n%A002260(n+1))]`
-/

namespace A022046.P8804165408217029227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276287 (Int.tmod (n : ℤ) (A002260 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022046.P8804165408217029227

/-!
# A022047: Theta series of D_16 lattice.

The programs for A022047, there is no canonical definition to state claims against.
-/

/-! ## A022047.P484272410056320003

`A000152(2*n)`
-/

namespace A022047.P484272410056320003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 (2 * n)

end

end A022047.P484272410056320003

/-! ## A022047.P4010882262037751734

`A319307(2*n)`
-/

namespace A022047.P4010882262037751734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 (2 * n)

end

end A022047.P4010882262037751734

/-! ## A022047.P17508443048708790772

`or(2, A319307(n+n))-2`
-/

namespace A022047.P17508443048708790772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A319307 (n + n)) - 2

end

end A022047.P17508443048708790772

/-! ## A022047.P7024521548066862749

`abs(A319307(A005843(n)))`
-/

namespace A022047.P7024521548066862749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319307 (A005843 n).toNat|

end

end A022047.P7024521548066862749

/-! ## A022047.P3194576791714285319

`A319307(n+n)/dr(A008836(n+1))`
-/

namespace A022047.P3194576791714285319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319307 (n + n) : ℚ) / (SequenceMachineLib.digitalRoot (A008836 (n + 1)) : ℚ)

end

end A022047.P3194576791714285319

/-! ## A022047.P15573425034714411617

`abs(A319307(A004442(Δ[n²])))`
-/

namespace A022047.P15573425034714411617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319307 (A004442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat|

end

end A022047.P15573425034714411617

/-! ## A022047.P3900238106676823727

`A193354(A084849(n))`
-/

namespace A022047.P3900238106676823727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193354 (A084849 n).toNat

end

end A022047.P3900238106676823727

/-!
# A022048: Theta series of D_17 lattice.

The programs for A022048, there is no canonical definition to state claims against.
-/

/-! ## A022048.P11460354331104227373

`A022070(8*n)`
-/

namespace A022048.P11460354331104227373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022070 (8 * n)

end

end A022048.P11460354331104227373

/-! ## A022048.P18102406589379836792

`record[A022070(A047451(n+1))]`
-/

namespace A022048.P18102406589379836792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022070 (A047451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022048.P18102406589379836792

/-! ## A022048.P3028036482213245106

`record[A022070(A047470(n+1))]`
-/

namespace A022048.P3028036482213245106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022070 (A047470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022048.P3028036482213245106

/-! ## A022048.P15642974516575709440

`record[A022070(A047615(n+1))]`
-/

namespace A022048.P15642974516575709440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022070 (A047615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022048.P15642974516575709440

/-! ## A022048.P13664951284546955643

`record[A022070(A005843(A022998(n)))]`
-/

namespace A022048.P13664951284546955643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022070 (A005843 (A022998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022048.P13664951284546955643

/-!
# A022049: Theta series of D_18 lattice.

The programs for A022049, there is no canonical definition to state claims against.
-/

/-! ## A022049.P6775339614713395442

`A022071(4*n)`
-/

namespace A022049.P6775339614713395442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022071 (4 * n)

end

end A022049.P6775339614713395442

/-! ## A022049.P13253261516479975340

`record[A022071(and(2, n+1)+n)]`
-/

namespace A022049.P13253261516479975340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022071 (Nat.land 2 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022049.P13253261516479975340

/-! ## A022049.P17537756941072435824

`record[A022071(A003815(n))]`
-/

namespace A022049.P17537756941072435824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022071 (A003815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022049.P17537756941072435824

/-! ## A022049.P6972749486467933548

`record[A022071(A022998(n))]`
-/

namespace A022049.P6972749486467933548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022071 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022049.P6972749486467933548

/-! ## A022049.P7257704054964271708

`record[A022071(gcd(n, A325144(n)))]`
-/

namespace A022049.P7257704054964271708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022071 (Int.gcd (n : ℤ) (A325144 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022049.P7257704054964271708

/-!
# A022050: Theta series of D_19 lattice.

The programs for A022050, there is no canonical definition to state claims against.
-/

/-! ## A022050.P857054944669043831

`A022072(8*n)`
-/

namespace A022050.P857054944669043831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022072 (8 * n)

end

end A022050.P857054944669043831

/-! ## A022050.P9434892603681801208

`record[A022072(A047481(n+1))]`
-/

namespace A022050.P9434892603681801208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022072 (A047481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022050.P9434892603681801208

/-! ## A022050.P6845161034131312719

`record[A022072(A112652(n)-n)]`
-/

namespace A022050.P6845161034131312719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022072 (A112652 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022050.P6845161034131312719

/-! ## A022050.P691132465827699288

`record[A022072(A005843(A019425(n)))]`
-/

namespace A022050.P691132465827699288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022072 (A005843 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022050.P691132465827699288

/-! ## A022050.P10095334807119927927

`record[A022072(A008586(A046666(n+2)))]`
-/

namespace A022050.P10095334807119927927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022072 (A008586 (A046666 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022050.P10095334807119927927

/-!
# A022051: Theta series of D_20 lattice.

The programs for A022051, there is no canonical definition to state claims against.
-/

/-! ## A022051.P10206739801979176407

`record[A319308(n)]`
-/

namespace A022051.P10206739801979176407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022051.P10206739801979176407

/-! ## A022051.P15528488992083279851

`A014747(2*n)`
-/

namespace A022051.P15528488992083279851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014747 (2 * n)

end

end A022051.P15528488992083279851

/-! ## A022051.P3025470196608808568

`A022073(2*n)`
-/

namespace A022051.P3025470196608808568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022073 (2 * n)

end

end A022051.P3025470196608808568

/-! ## A022051.P18144188150449785603

`A319308(2*n)`
-/

namespace A022051.P18144188150449785603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (2 * n)

end

end A022051.P18144188150449785603

/-! ## A022051.P12666904948044357017

`record[A014747(and(n, n+1))]`
-/

namespace A022051.P12666904948044357017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014747 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022051.P12666904948044357017

/-! ## A022051.P17079701908963535281

`abs(A319308(val(4^n, 2)))`
-/

namespace A022051.P17079701908963535281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319308 (SequenceMachineLib.valuation (4 ^ n) 2)|

end

end A022051.P17079701908963535281

/-!
# A022052: Theta series of D_21 lattice.

The programs for A022052, there is no canonical definition to state claims against.
-/

/-! ## A022052.P12095211395572083180

`A022074(8*n)`
-/

namespace A022052.P12095211395572083180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (8 * n)

end

end A022052.P12095211395572083180

/-! ## A022052.P14072104165919671193

`record[A022074(A195161(n))]`
-/

namespace A022052.P14072104165919671193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (A195161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022052.P14072104165919671193

/-! ## A022052.P6564855714378533591

`record[A022074(A047451(n+1))]`
-/

namespace A022052.P6564855714378533591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (A047451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022052.P6564855714378533591

/-! ## A022052.P17746616458936786670

`record[A022074(A005843(A014601(n)))]`
-/

namespace A022052.P17746616458936786670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (A005843 (A014601 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022052.P17746616458936786670

/-! ## A022052.P13484321831057640374

`record[A022074(A265723(A265723(n)))]`
-/

namespace A022052.P13484321831057640374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022074 (A265723 (A265723 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022052.P13484321831057640374

/-!
# A022053: Theta series of D_22 lattice.

The programs for A022053, there is no canonical definition to state claims against.
-/

/-! ## A022053.P6987659043994021165

`A022075(4*n)`
-/

namespace A022053.P6987659043994021165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022075 (4 * n)

end

end A022053.P6987659043994021165

/-! ## A022053.P6401504626006901273

`record[A022075(A042948(n))]`
-/

namespace A022053.P6401504626006901273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022075 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022053.P6401504626006901273

/-! ## A022053.P8320156914839698902

`record[A022075(n)^A056594(n)]`
-/

namespace A022053.P8320156914839698902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022075 n : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022053.P8320156914839698902

/-! ## A022053.P2888949774300958604

`record[and(A022075(n), A133570(n))]`
-/

namespace A022053.P2888949774300958604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022075 n) (A133570 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022053.P2888949774300958604

/-! ## A022053.P13855223460745917025

`record[A022075(A230865(A230865(n)))]`
-/

namespace A022053.P13855223460745917025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022075 (A230865 (A230865 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022053.P13855223460745917025

/-! ## A022053.P11253572484417651942

`A022075(A008574(n))+A000007(n)`
-/

namespace A022053.P11253572484417651942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022075 (A008574 n).toNat + A000007 n

end

end A022053.P11253572484417651942

/-!
# A022054: Theta series of D_23 lattice.

The programs for A022054, there is no canonical definition to state claims against.
-/

/-! ## A022054.P18388526301459786159

`A022076(8*n)`
-/

namespace A022054.P18388526301459786159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022076 (8 * n)

end

end A022054.P18388526301459786159

/-! ## A022054.P18278993516480039726

`record[A022076(A005843(A014601(n)))]`
-/

namespace A022054.P18278993516480039726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022076 (A005843 (A014601 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022054.P18278993516480039726

/-! ## A022054.P1749234095951996508

`record[A022076(A042948(A042948(n)))]`
-/

namespace A022054.P1749234095951996508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022076 (A042948 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022054.P1749234095951996508

/-! ## A022054.P2608844591204938035

`record[A022076(A005843(n)+A004523(n))]`
-/

namespace A022054.P2608844591204938035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022076 (A005843 n + A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022054.P2608844591204938035

/-! ## A022054.P11140777376962326968

`record[A022076(A008585(n)-A002264(n))]`
-/

namespace A022054.P11140777376962326968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022076 (A008585 n - A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022054.P11140777376962326968

/-!
# A022055: Theta series of D_24 lattice.

The programs for A022055, there is no canonical definition to state claims against.
-/

/-! ## A022055.P13182816574617354751

`record[A319309(n)]`
-/

namespace A022055.P13182816574617354751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022055.P13182816574617354751

/-! ## A022055.P4350026279452401391

`A000156(2*n)`
-/

namespace A022055.P4350026279452401391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (2 * n)

end

end A022055.P4350026279452401391

/-! ## A022055.P4171516365498420192

`A319309(2*n)`
-/

namespace A022055.P4171516365498420192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319309 (2 * n)

end

end A022055.P4171516365498420192

/-! ## A022055.P3838776371741431585

`record[A000156(A014681(n))]`
-/

namespace A022055.P3838776371741431585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022055.P3838776371741431585

/-! ## A022055.P13107390402307724285

`A000156(A004277(n))^A057979(A004277(n))`
-/

namespace A022055.P13107390402307724285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 (A004277 n).toNat : ℚ) ^ (A057979 (A004277 n).toNat : ℤ)

end

end A022055.P13107390402307724285

/-!
# A022056: Theta series of D_25 lattice.

The programs for A022056, there is no canonical definition to state claims against.
-/

/-! ## A022056.P11180160600241721663

`A022078(8*n)`
-/

namespace A022056.P11180160600241721663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022078 (8 * n)

end

end A022056.P11180160600241721663

/-! ## A022056.P15728173222129240714

`record[A022078(A042965(or(1, n)))]`
-/

namespace A022056.P15728173222129240714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022078 (A042965 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022056.P15728173222129240714

/-! ## A022056.P15883678795285440356

`record[A022078(A004523(A008574(n)))]`
-/

namespace A022056.P15883678795285440356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022078 (A004523 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022056.P15883678795285440356

/-! ## A022056.P7756170374065257835

`record[A022078(A008586(A014681(n)))]`
-/

namespace A022056.P7756170374065257835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022078 (A008586 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022056.P7756170374065257835

/-! ## A022056.P8768726078764163173

`record[A022078(A005843(A042948(n)))]`
-/

namespace A022056.P8768726078764163173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022078 (A005843 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022056.P8768726078764163173

/-!
# A022057: Theta series of D_26 lattice.

The programs for A022057, there is no canonical definition to state claims against.
-/

/-! ## A022057.P3208759686829913333

`A022079(4*n)`
-/

namespace A022057.P3208759686829913333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022079 (4 * n)

end

end A022057.P3208759686829913333

/-! ## A022057.P17615202765172038034

`record[A022079(n)/A087960(n)]`
-/

namespace A022057.P17615202765172038034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022079 n : ℚ) / (A087960 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022057.P17615202765172038034

/-! ## A022057.P7430663778351667927

`record[A022079(n)^A056594(n)]`
-/

namespace A022057.P7430663778351667927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022079 n : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022057.P7430663778351667927

/-! ## A022057.P12478780013603154412

`record[A022079(A004275(A026741(n)))]`
-/

namespace A022057.P12478780013603154412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022079 (A004275 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022057.P12478780013603154412

/-! ## A022057.P14331030674293093296

`A285982(A005408(n))+A022079(A008574(n))`
-/

namespace A022057.P14331030674293093296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A005408 n).toNat + A022079 (A008574 n).toNat

end

end A022057.P14331030674293093296

/-!
# A022058: Theta series of D_27 lattice.

The programs for A022058, there is no canonical definition to state claims against.
-/

/-! ## A022058.P5270115600930257582

`A022080(8*n)`
-/

namespace A022058.P5270115600930257582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022080 (8 * n)

end

end A022058.P5270115600930257582

/-! ## A022058.P2936304268030109020

`record[A022080(A123167(n+1)-2)]`
-/

namespace A022058.P2936304268030109020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022080 (A123167 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022058.P2936304268030109020

/-! ## A022058.P9402818398600973082

`record[A022080(A005843(A019425(n)))]`
-/

namespace A022058.P9402818398600973082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022080 (A005843 (A019425 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022058.P9402818398600973082

/-! ## A022058.P742085961401155699

`record[A022080(A022998(A022998(n)))]`
-/

namespace A022058.P742085961401155699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022080 (A022998 (A022998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022058.P742085961401155699

/-! ## A022058.P16770574476656419260

`record[A022080(A285326(A109045(n)))]`
-/

namespace A022058.P16770574476656419260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022080 (A285326 (A109045 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022058.P16770574476656419260

/-!
# A022059: Theta series of D_28 lattice.

The programs for A022059, there is no canonical definition to state claims against.
-/

/-! ## A022059.P6306346324622167653

`record[A319310(n)]`
-/

namespace A022059.P6306346324622167653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022059.P6306346324622167653

/-! ## A022059.P2199152868092235747

`A022081(2*n)`
-/

namespace A022059.P2199152868092235747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022081 (2 * n)

end

end A022059.P2199152868092235747

/-! ## A022059.P17310601321689162392

`A319310(2*n)`
-/

namespace A022059.P17310601321689162392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319310 (2 * n)

end

end A022059.P17310601321689162392

/-! ## A022059.P16814534801288800427

`or(A000007(n), A319310(A005843(n)))`
-/

namespace A022059.P16814534801288800427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A319310 (A005843 n).toNat)

end

end A022059.P16814534801288800427

/-! ## A022059.P8592040174481454277

`A319310(A005843(n))/A001221(A000961(n+2))`
-/

namespace A022059.P8592040174481454277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319310 (A005843 n).toNat : ℚ) / (A001221 (A000961 (n + 2)).toNat : ℚ)

end

end A022059.P8592040174481454277

/-!
# A022060: Theta series of D_29 lattice.

The programs for A022060, there is no canonical definition to state claims against.
-/

/-! ## A022060.P3936113270016682308

`A022082(8*n)`
-/

namespace A022060.P3936113270016682308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022082 (8 * n)

end

end A022060.P3936113270016682308

/-! ## A022060.P5376502210051764182

`record[A022082(A047399(n+1))]`
-/

namespace A022060.P5376502210051764182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022082 (A047399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022060.P5376502210051764182

/-! ## A022060.P10257983654467467753

`record[A022082(n)^A014017(n)]`
-/

namespace A022060.P10257983654467467753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022082 n : ℚ) ^ (A014017 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022060.P10257983654467467753

/-! ## A022060.P984166884224747054

`record[A022082(A014601(lcm(2, n+2)-2))]`
-/

namespace A022060.P984166884224747054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022082 (A014601 (Nat.lcm 2 (n + 2) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022060.P984166884224747054

/-!
# A022061: Theta series of D_30 lattice.

The programs for A022061, there is no canonical definition to state claims against.
-/

/-! ## A022061.P5765639763119235696

`A022083(4*n)`
-/

namespace A022061.P5765639763119235696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022083 (4 * n)

end

end A022061.P5765639763119235696

/-! ## A022061.P1942911155675964882

`record[A022083(A019425(n))]`
-/

namespace A022061.P1942911155675964882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022083 (A019425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022061.P1942911155675964882

/-! ## A022061.P11358803797902214570

`A022083(A008574(n))+A000007(n)`
-/

namespace A022061.P11358803797902214570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022083 (A008574 n).toNat + A000007 n

end

end A022061.P11358803797902214570

/-! ## A022061.P13867041233413752621

`record[A022083(n)^A056594(n)]`
-/

namespace A022061.P13867041233413752621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022083 n : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022061.P13867041233413752621

/-! ## A022061.P134563398454945232

`record[and(A022083(n), A133570(n))]`
-/

namespace A022061.P134563398454945232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022083 n) (A133570 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022061.P134563398454945232

/-! ## A022061.P12648442773678578230

`or(A000007(n²), A022083(A008574(n)))`
-/

namespace A022061.P12648442773678578230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (n ^ 2)) (A022083 (A008574 n).toNat)

end

end A022061.P12648442773678578230

/-!
# A022062: Theta series of D_31 lattice.

The programs for A022062, there is no canonical definition to state claims against.
-/

/-! ## A022062.P2243426998427219083

`A022084(8*n)`
-/

namespace A022062.P2243426998427219083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022084 (8 * n)

end

end A022062.P2243426998427219083

/-! ## A022062.P4565584283109080271

`record[A022084(A047397(n+1))]`
-/

namespace A022062.P4565584283109080271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022084 (A047397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022062.P4565584283109080271

/-! ## A022062.P3096321374030155399

`record[A022084(A047618(n+1))]`
-/

namespace A022062.P3096321374030155399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022084 (A047618 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022062.P3096321374030155399

/-! ## A022062.P16487372101992227190

`record[A022084(Δ[A109613(n)²])]`
-/

namespace A022062.P16487372101992227190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022084 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022062.P16487372101992227190

/-! ## A022062.P10039810522768093923

`record[A022084(A014601(lcm(2, n+2)-2))]`
-/

namespace A022062.P10039810522768093923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022084 (A014601 (Nat.lcm 2 (n + 2) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022062.P10039810522768093923

/-!
# A022063: Theta series of D_32 lattice.

The programs for A022063, there is no canonical definition to state claims against.
-/

/-! ## A022063.P4565695017037068808

`A302856(2*n)`
-/

namespace A022063.P4565695017037068808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302856 (2 * n)

end

end A022063.P4565695017037068808

/-! ## A022063.P15555080749168248528

`record[A302856(n)/A033999(n)]`
-/

namespace A022063.P15555080749168248528
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302856 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022063.P15555080749168248528

/-! ## A022063.P3291838912515069388

`record[A302856(Δ[A110660(n)])]`
-/

namespace A022063.P3291838912515069388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302856 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022063.P3291838912515069388

/-! ## A022063.P2624208654788868197

`record[A286815(A132336(2*n+1))]`
-/

namespace A022063.P2624208654788868197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A132336 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022063.P2624208654788868197

/-! ## A022063.P2652867770510457744

`record[A302856(n)/A034947(n²+5)]`
-/

namespace A022063.P2652867770510457744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302856 n : ℚ) / (A034947 (n ^ 2 + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022063.P2652867770510457744

/-!
# A022064: Theta series of D*_11 lattice.

The programs for A022064, there is no canonical definition to state claims against.
-/

/-! ## A022064.P1983313418212384426

`A003056(A014969(n))*A035444(n)`
-/

namespace A022064.P1983313418212384426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A014969 n).toNat * A035444 n

end

end A022064.P1983313418212384426

/-! ## A022064.P9536173469866682683

`lcm(A004736(A000244(n)), A234931(n))`
-/

namespace A022064.P9536173469866682683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004736 (A000244 n).toNat) (A234931 n)

end

end A022064.P9536173469866682683

/-! ## A022064.P2495233707471782197

`lcm(A010894(A008587(n)), A315335(n))`
-/

namespace A022064.P2495233707471782197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010894 ((A008587 n).toNat + 21)) (A315335 n)

end

end A022064.P2495233707471782197

/-! ## A022064.P13968343092888019517

`A046144(A293714(A053478(n+2))+n)`
-/

namespace A022064.P13968343092888019517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (A293714 (A053478 (n + 2)).toNat + (n : ℤ)).toNat

end

end A022064.P13968343092888019517

/-!
# A022065: Theta series of D*_12 lattice.

The programs for A022065, there is no canonical definition to state claims against.
-/

/-! ## A022065.P1436836479858849352

`2*A004533(n)-A286346(n)`
-/

namespace A022065.P1436836479858849352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004533 n - A286346 n

end

end A022065.P1436836479858849352

/-! ## A022065.P6148538512360996564

`A028697(4*n)`
-/

namespace A022065.P6148538512360996564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (4 * n)

end

end A022065.P6148538512360996564

/-! ## A022065.P1060266678614309877

`and(-3, A028697(A008586(n)))`
-/

namespace A022065.P1060266678614309877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A028697 (A008586 n).toNat)

end

end A022065.P1060266678614309877

/-! ## A022065.P3620717362883872114

`A028697(A008574(n))+C(2, n+2)`
-/

namespace A022065.P3620717362883872114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (A008574 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A022065.P3620717362883872114

/-! ## A022065.P4347682435781626956

`A028697(A008574(n))+A000007(n)`
-/

namespace A022065.P4347682435781626956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (A008574 n).toNat + A000007 n

end

end A022065.P4347682435781626956

/-! ## A022065.P18152983369035338066

`A028697(A008586(n))+A000007(n+1)`
-/

namespace A022065.P18152983369035338066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (A008586 n).toNat + A000007 (n + 1)

end

end A022065.P18152983369035338066

/-! ## A022065.P12462494615934028526

`A028697(A008586(n))+and(2, A028697(n))`
-/

namespace A022065.P12462494615934028526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (A008586 n).toNat + Int.land 2 (A028697 n)

end

end A022065.P12462494615934028526

/-! ## A022065.P289065328787363044

`A028697(A008574(n))+A007814(A000040(n+1))`
-/

namespace A022065.P289065328787363044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (A008574 n).toNat + A007814 (A000040 (n + 1)).toNat

end

end A022065.P289065328787363044

/-! ## A022065.P7439306126932816871

`A028697(A008574(n))+A008966((n+1)²)`
-/

namespace A022065.P7439306126932816871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028697 (A008574 n).toNat + A008966 ((n + 1) ^ 2)

end

end A022065.P7439306126932816871

/-!
# A022066: Theta series of D*_13 lattice.

The programs for A022066, there is no canonical definition to state claims against.
-/

/-! ## A022066.P14327470713755218641

`A113063(A263901(n+1))*A174566(n)`
-/

namespace A022066.P14327470713755218641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (A263901 (n + 1)).toNat * A174566 n

end

end A022066.P14327470713755218641

/-! ## A022066.P18108190444146867439

`A033721(A189393(n+2)%A189393(2*(n+1)))`
-/

namespace A022066.P18108190444146867439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (Int.tmod (A189393 (n + 2)) (A189393 (2 * (n + 1)))).toNat

end

end A022066.P18108190444146867439

/-! ## A022066.P7536326589374427391

`A003849(2*n+1)*A293698(A111553(3*n+1))`
-/

namespace A022066.P7536326589374427391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n + 1) * A293698 (A111553 (3 * n + 1)).toNat

end

end A022066.P7536326589374427391

/-!
# A022067: Theta series of D*_14 lattice.

The programs for A022067, there is no canonical definition to state claims against.
-/

/-! ## A022067.P6153104281846155901

`C(xor(1, 3*n)+1, p?[A298445(n+1)])`
-/

namespace A022067.P6153104281846155901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 (3 * n) + 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A022067.P6153104281846155901

/-!
# A022068: Theta series of D*_15 lattice.

The programs for A022068, there is no canonical definition to state claims against.
-/

/-! ## A022068.P2412467013312282063

`C(A316183(2*n+1), A349628(n+2)²)`
-/

namespace A022068.P2412467013312282063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A316183 (2 * n + 1)).toNat (A349628 (n + 2) ^ 2).toNat

end

end A022068.P2412467013312282063

/-! ## A022068.P14210356051590206686

`A007947(A154638(n))*A114374(n)`
-/

namespace A022068.P14210356051590206686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A154638 n).toNat * A114374 n

end

end A022068.P14210356051590206686

/-! ## A022068.P16278856891576268465

`A018676(A301686(n))*A121262(n)`
-/

namespace A022068.P16278856891576268465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (A301686 n).toNat * A121262 n

end

end A022068.P16278856891576268465

/-! ## A022068.P2134389070014142953

`lcm(A028720(n), A343337(A047749(n)))`
-/

namespace A022068.P2134389070014142953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028720 n) (A343337 (A047749 n).toNat)

end

end A022068.P2134389070014142953

/-! ## A022068.P9863949109587272077

`A238762(A235266(n+1)-A071667(n))`
-/

namespace A022068.P9863949109587272077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238762 (A235266 (n + 1) - A071667 n).toNat

end

end A022068.P9863949109587272077

/-!
# A022070: Theta series of D*_17 lattice.

The programs for A022070, there is no canonical definition to state claims against.
-/

/-! ## A022070.P14832458994146519645

`and(A022072(n), A058331(A009002(n)))`
-/

namespace A022070.P14832458994146519645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022072 n) (A058331 (A009002 n).toNat)

end

end A022070.P14832458994146519645

/-! ## A022070.P9053249970474770499

`and(A022076(n), A058331(A009002(n)))`
-/

namespace A022070.P9053249970474770499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022076 n) (A058331 (A009002 n).toNat)

end

end A022070.P9053249970474770499

/-! ## A022070.P2297568530890239566

`and(A022072(n), A141214(A008586(n)))`
-/

namespace A022070.P2297568530890239566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022072 n) (A141214 (A008586 n).toNat)

end

end A022070.P2297568530890239566

/-! ## A022070.P14975852400700463028

`and(A001550(n), A159353(A052919(n)))`
-/

namespace A022070.P14975852400700463028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001550 n) (A159353 (A052919 n).toNat)

end

end A022070.P14975852400700463028

/-! ## A022070.P12038316579146991410

`and(A022072(n), A060354(A165545(n)))`
-/

namespace A022070.P12038316579146991410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022072 n) (A060354 (A165545 n).toNat)

end

end A022070.P12038316579146991410

/-!
# A022071: Theta series of D*_18 lattice.

The programs for A022071, there is no canonical definition to state claims against.
-/

/-! ## A022071.P15101730678715092081

`A028654(lcm(98, A001076(n)))`
-/

namespace A022071.P15101730678715092081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028654 (Int.lcm 98 (A001076 n))

end

end A022071.P15101730678715092081

/-!
# A022072: Theta series of D*_19 lattice.

The programs for A022072, there is no canonical definition to state claims against.
-/

/-! ## A022072.P2782391510644691951

`A028639(n)+A028606(A005592(n))`
-/

namespace A022072.P2782391510644691951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 n + A028606 (A005592 n).toNat

end

end A022072.P2782391510644691951

/-! ## A022072.P5482753420952336762

`A028647(n)+A028606(A005592(n))`
-/

namespace A022072.P5482753420952336762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028647 n + A028606 (A005592 n).toNat

end

end A022072.P5482753420952336762

/-!
# A022073: Theta series of D*_20 lattice.

The programs for A022073, there is no canonical definition to state claims against.
-/

/-! ## A022073.P12910312916545685667

`2*A014747(n)-A319308(n)`
-/

namespace A022073.P12910312916545685667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014747 n - A319308 n

end

end A022073.P12910312916545685667

/-!
# A022074: Theta series of D*_21 lattice.

The programs for A022074, there is no canonical definition to state claims against.
-/

/-! ## A022074.P16957869524262944615

`∑{d}[A022066(A024654(n)), #]`
-/

namespace A022074.P16957869524262944615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 (A024654 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A022074.P16957869524262944615

/-! ## A022074.P12713819451515923540

`∑{d}[A022066(A004892(n+1)), #]`
-/

namespace A022074.P12713819451515923540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022066 (A004892 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A022074.P12713819451515923540

/-! ## A022074.P12367592042363863591

`A028712(n)*A044820(A165781(n))`
-/

namespace A022074.P12367592042363863591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028712 n * A044820 (A165781 n).toNat

end

end A022074.P12367592042363863591

/-! ## A022074.P6909476656886747492

`lcm(A007954(A060816(n)), A014017(n))`
-/

namespace A022074.P6909476656886747492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007954 (A060816 n).toNat) (A014017 n)

end

end A022074.P6909476656886747492

/-!
# A022075: Theta series of D*_22 lattice.

The programs for A022075, there is no canonical definition to state claims against.
-/

/-! ## A022075.P16163779928006081357

`A275514(A396132(n+2))`
-/

namespace A022075.P16163779928006081357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275514 (A396132 (n + 2)).toNat

end

end A022075.P16163779928006081357

/-!
# A022078: Theta series of D*_25 lattice.

The programs for A022078, there is no canonical definition to state claims against.
-/

/-! ## A022078.P5252699873816720938

`A349136(∑[A000463(n+1)^3])`
-/

namespace A022078.P5252699873816720938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022078.P5252699873816720938

/-! ## A022078.P6758286661138731064

`A007954((∑[n+3]-2)*A131318(n+1))`
-/

namespace A022078.P6758286661138731064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) * A131318 (n + 1)).toNat

end

end A022078.P6758286661138731064

/-! ## A022078.P13670312572978430924

`A037213(A268100(n))*A102363(n)`
-/

namespace A022078.P13670312572978430924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A268100 n).toNat * A102363 n

end

end A022078.P13670312572978430924

/-! ## A022078.P9318618275790916441

`A089871(A089864(n))*A089877(n+1)`
-/

namespace A022078.P9318618275790916441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089871 (A089864 n).toNat * A089877 (n + 1)

end

end A022078.P9318618275790916441

/-!
# A022079: Theta series of D*_26 lattice.

The programs for A022079, there is no canonical definition to state claims against.
-/

/-! ## A022079.P4542773168870247962

`A070789(A048654(n))*A357368(n)`
-/

namespace A022079.P4542773168870247962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070789 (A048654 n).toNat * A357368 n

end

end A022079.P4542773168870247962

/-!
# A022080: Theta series of D*_27 lattice.

The programs for A022080, there is no canonical definition to state claims against.
-/

/-! ## A022080.P14724156103507764598

`A028663(n)*A114571(A030436(n))`
-/

namespace A022080.P14724156103507764598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 n * A114571 (A030436 n).toNat

end

end A022080.P14724156103507764598

/-! ## A022080.P13513620273735073316

`A028708(n)*A114571(A030436(n))`
-/

namespace A022080.P13513620273735073316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028708 n * A114571 (A030436 n).toNat

end

end A022080.P13513620273735073316

/-! ## A022080.P14691324775913570259

`A003056(A149916(n))*A028663(n)`
-/

namespace A022080.P14691324775913570259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A149916 n).toNat * A028663 n

end

end A022080.P14691324775913570259

/-! ## A022080.P5863326571327651377

`A003056(A149916(n))*A028708(n)`
-/

namespace A022080.P5863326571327651377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A149916 n).toNat * A028708 n

end

end A022080.P5863326571327651377

/-! ## A022080.P13057610069167134632

`A057353(A008424(n)*A054543(n+1))`
-/

namespace A022080.P13057610069167134632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A008424 n * A054543 (n + 1)).toNat

end

end A022080.P13057610069167134632

/-!
# A022081: Theta series of D*_28 lattice.

The programs for A022081, there is no canonical definition to state claims against.
-/

/-! ## A022081.P311254643352856698

`abs(A319310(n)^A053497(n))`
-/

namespace A022081.P311254643352856698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A319310 n : ℚ) ^ (A053497 n : ℤ)|

end

end A022081.P311254643352856698

/-! ## A022081.P17693840256669887130

`abs(A319310(n)%A063502(n+2))`
-/

namespace A022081.P17693840256669887130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A319310 n) (A063502 (n + 2))|

end

end A022081.P17693840256669887130

/-!
# A022083: Theta series of D*_30 lattice.

The programs for A022083, there is no canonical definition to state claims against.
-/

/-! ## A022083.P11906586941508427588

`log2(gcd(2, n))*A344918(floor(3^(n-1)))`
-/

namespace A022083.P11906586941508427588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A344918 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat : ℝ)

end

end A022083.P11906586941508427588

/-!
# A022084: Theta series of D*_31 lattice.

The programs for A022084, there is no canonical definition to state claims against.
-/

/-! ## A022084.P181302731291480819

`and(A152271(A239582(n+1)), A246814(n))`
-/

namespace A022084.P181302731291480819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152271 (A239582 (n + 1)).toNat) (A246814 n)

end

end A022084.P181302731291480819

/-!
# A022086: Fibonacci sequence beginning 0, 3.

The programs for A022086, the canonical program `A022086.P12032342305681498850` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022086 has offset 0).

The definition of A022086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022086.P12032342305681498850

`A187893(n)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022086

/-- `A187893(n)-1` -/
def P12032342305681498850.Spec : Prop :=
  ∀ n, P12032342305681498850.a n = A022086 n

theorem P12032342305681498850.correct : P12032342305681498850.Spec := by
  intro n
  simp only [A022086]

end A022086

/-! ## A022086.P4724380715288920844

`3*A000045(n)`
-/

namespace A022086.P4724380715288920844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 n

end

end A022086.P4724380715288920844

namespace A022086

/-- `3*A000045(n)` -/
def P4724380715288920844.Spec : Prop :=
  ∀ n, P4724380715288920844.a n = A022086 n

end A022086

/-! ## A022086.P1595914533900265062

`ogf(3x/(1-x-x^2))`
-/

namespace A022086.P1595914533900265062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -1, -1] n

end

end A022086.P1595914533900265062

namespace A022086

/-- `ogf(3x/(1-x-x^2))` -/
def P1595914533900265062.Spec : Prop :=
  ∀ n, P1595914533900265062.a n = A022086 n

end A022086

/-! ## A022086.P14067523836408346037

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A022086.P14067523836408346037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022086.P14067523836408346037

namespace A022086

/-- `a(n-1)+a(n-2)` -/
def P14067523836408346037.Spec : Prop :=
  ∀ n, (P14067523836408346037.a n : ℤ) = A022086 n

end A022086

/-! ## A022086.P17838838849900112444

`a(n-1)-floor(-a(n-2))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A022086.P17838838849900112444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022086.P17838838849900112444

namespace A022086

/-- `a(n-1)-floor(-a(n-2))` -/
def P17838838849900112444.Spec : Prop :=
  ∀ n, P17838838849900112444.a n = A022086 n

end A022086

/-! ## A022086.P16066388616145004550

`a(n-1)-ceil(-a(n-2))` with `a(0)=0, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A022086.P16066388616145004550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022086.P16066388616145004550

namespace A022086

/-- `a(n-1)-ceil(-a(n-2))` -/
def P16066388616145004550.Spec : Prop :=
  ∀ n, P16066388616145004550.a n = A022086 n

end A022086

/-! ## A022086.P1920369123745299149

`a(n-1)-round(-a(n-2))` with `a(0)=0, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A022086.P1920369123745299149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022086.P1920369123745299149

namespace A022086

/-- `a(n-1)-round(-a(n-2))` -/
def P1920369123745299149.Spec : Prop :=
  ∀ n, P1920369123745299149.a n = A022086 n

end A022086

/-! ## A022086.P10230769512618291938

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=3, a(1)=3`
-/

namespace A022086.P10230769512618291938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022086.P10230769512618291938

namespace A022086

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P10230769512618291938.Spec : Prop :=
  ∀ n, P10230769512618291938.a n = A022086 n

end A022086

/-! ## A022086.P15101857288298376737

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A022086.P15101857288298376737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022086.P15101857288298376737

namespace A022086

/-- `2*a(n-1)-a(n-3)` -/
def P15101857288298376737.Spec : Prop :=
  ∀ n, P15101857288298376737.a n = A022086 n

end A022086

/-! ## A022086.P14734932863245615682

`a(n-1)-(char[1]-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A022086.P14734932863245615682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A022086.P14734932863245615682

namespace A022086

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P14734932863245615682.Spec : Prop :=
  ∀ n, P14734932863245615682.a n = A022086 n

end A022086

/-! ## A022086.P13326828753736754920

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A022086.P13326828753736754920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A022086.P13326828753736754920

namespace A022086

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P13326828753736754920.Spec : Prop :=
  ∀ n, P13326828753736754920.a n = A022086 n

end A022086

/-! ## A022086.P1885985231327843558

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A022086.P1885985231327843558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A022086.P1885985231327843558

namespace A022086

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P1885985231327843558.Spec : Prop :=
  ∀ n, P1885985231327843558.a n = (A022086 n : ℚ)

end A022086

/-! ## A022086.P10540773637139802724

`3*A212804(n+1)`
-/

namespace A022086.P10540773637139802724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A212804 (n + 1)

end

end A022086.P10540773637139802724

namespace A022086

/-- `3*A212804(n+1)` -/
def P10540773637139802724.Spec : Prop :=
  ∀ n, P10540773637139802724.a n = A022086 n

end A022086

/-! ## A022086.P16032015228393888528

`3*(A001611(n)-1)`
-/

namespace A022086.P16032015228393888528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001611 n - 1)

end

end A022086.P16032015228393888528

namespace A022086

/-- `3*(A001611(n)-1)` -/
def P16032015228393888528.Spec : Prop :=
  ∀ n, P16032015228393888528.a n = A022086 n

end A022086

/-! ## A022086.P9739783410756544553

`3*(A157725(n)-2)`
-/

namespace A022086.P9739783410756544553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A157725 n - 2)

end

end A022086.P9739783410756544553

namespace A022086

/-- `3*(A157725(n)-2)` -/
def P9739783410756544553.Spec : Prop :=
  ∀ n, P9739783410756544553.a n = A022086 n

end A022086

/-! ## A022086.P6887036332741323324

`3*A053602(2*n)`
-/

namespace A022086.P6887036332741323324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053602 (2 * n)

end

end A022086.P6887036332741323324

namespace A022086

/-- `3*A053602(2*n)` -/
def P6887036332741323324.Spec : Prop :=
  ∀ n, P6887036332741323324.a n = A022086 n

end A022086

/-! ## A022086.P11749053367513220712

`3*A103609(2*n)`
-/

namespace A022086.P11749053367513220712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A103609 (2 * n)

end

end A022086.P11749053367513220712

namespace A022086

/-- `3*A103609(2*n)` -/
def P11749053367513220712.Spec : Prop :=
  ∀ n, P11749053367513220712.a n = A022086 n

end A022086

/-! ## A022086.P12634032870366698131

`3*(A157726(n)-3)`
-/

namespace A022086.P12634032870366698131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A157726 n - 3)

end

end A022086.P12634032870366698131

namespace A022086

/-- `3*(A157726(n)-3)` -/
def P12634032870366698131.Spec : Prop :=
  ∀ n, P12634032870366698131.a n = A022086 n

end A022086

/-! ## A022086.P820899492818321082

`3*A302126(2*n)`
-/

namespace A022086.P820899492818321082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A302126 (2 * n)

end

end A022086.P820899492818321082

namespace A022086

/-- `3*A302126(2*n)` -/
def P820899492818321082.Spec : Prop :=
  ∀ n, P820899492818321082.a n = A022086 n

end A022086

/-! ## A022086.P872522502092547934

`3*A129982(2*n+1)`
-/

namespace A022086.P872522502092547934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A129982 (2 * n + 1)

end

end A022086.P872522502092547934

namespace A022086

/-- `3*A129982(2*n+1)` -/
def P872522502092547934.Spec : Prop :=
  ∀ n, P872522502092547934.a n = A022086 n

end A022086

/-!
# A022087: Fibonacci sequence beginning 0, 4.

The programs for A022087, the canonical program `A022087.P15759272974687768527` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022087 has offset 0).

The definition of A022087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022087.P15759272974687768527

`4*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022087

/-- `4*A000045(n)` -/
def P15759272974687768527.Spec : Prop :=
  ∀ n, P15759272974687768527.a n = A022087 n

theorem P15759272974687768527.correct : P15759272974687768527.Spec := by
  intro n
  simp only [A022087]

end A022087

/-! ## A022087.P6074524499454833670

`ogf(4x/(1-x-x^2))`
-/

namespace A022087.P6074524499454833670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -1, -1] n

end

end A022087.P6074524499454833670

namespace A022087

/-- `ogf(4x/(1-x-x^2))` -/
def P6074524499454833670.Spec : Prop :=
  ∀ n, P6074524499454833670.a n = A022087 n

end A022087

/-! ## A022087.P16764854737003851843

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A022087.P16764854737003851843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022087.P16764854737003851843

namespace A022087

/-- `a(n-1)+a(n-2)` -/
def P16764854737003851843.Spec : Prop :=
  ∀ n, (P16764854737003851843.a n : ℤ) = A022087 n

end A022087

/-! ## A022087.P16004467793337028914

`a(n-1)-floor(-a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A022087.P16004467793337028914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022087.P16004467793337028914

namespace A022087

/-- `a(n-1)-floor(-a(n-2))` -/
def P16004467793337028914.Spec : Prop :=
  ∀ n, P16004467793337028914.a n = A022087 n

end A022087

/-! ## A022087.P10007780394550168677

`a(n-1)-ceil(-a(n-2))` with `a(0)=0, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A022087.P10007780394550168677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022087.P10007780394550168677

namespace A022087

/-- `a(n-1)-ceil(-a(n-2))` -/
def P10007780394550168677.Spec : Prop :=
  ∀ n, P10007780394550168677.a n = A022087 n

end A022087

/-! ## A022087.P11673740767594917596

`a(n-1)-round(-a(n-2))` with `a(0)=0, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A022087.P11673740767594917596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022087.P11673740767594917596

namespace A022087

/-- `a(n-1)-round(-a(n-2))` -/
def P11673740767594917596.Spec : Prop :=
  ∀ n, P11673740767594917596.a n = A022087 n

end A022087

/-! ## A022087.P5091674997227987098

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=4, a(1)=4`
-/

namespace A022087.P5091674997227987098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022087.P5091674997227987098

namespace A022087

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P5091674997227987098.Spec : Prop :=
  ∀ n, P5091674997227987098.a n = A022087 n

end A022087

/-! ## A022087.P11147579257962839285

`a(n-1)-(char[1]-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A022087.P11147579257962839285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A022087.P11147579257962839285

namespace A022087

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P11147579257962839285.Spec : Prop :=
  ∀ n, P11147579257962839285.a n = A022087 n

end A022087

/-! ## A022087.P14603478711277634870

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A022087.P14603478711277634870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A022087.P14603478711277634870

namespace A022087

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P14603478711277634870.Spec : Prop :=
  ∀ n, P14603478711277634870.a n = A022087 n

end A022087

/-! ## A022087.P1626700381023299689

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A022087.P1626700381023299689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A022087.P1626700381023299689

namespace A022087

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P1626700381023299689.Spec : Prop :=
  ∀ n, P1626700381023299689.a n = (A022087 n : ℚ)

end A022087

/-! ## A022087.P16185056888401274444

`2*A006355(n+1)`
-/

namespace A022087.P16185056888401274444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006355 (n + 1)

end

end A022087.P16185056888401274444

namespace A022087

/-- `2*A006355(n+1)` -/
def P16185056888401274444.Spec : Prop :=
  ∀ n, P16185056888401274444.a n = A022087 n

end A022087

/-! ## A022087.P2241879039663499424

`2*A118658(n+1)`
-/

namespace A022087.P2241879039663499424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118658 (n + 1)

end

end A022087.P2241879039663499424

namespace A022087

/-- `2*A118658(n+1)` -/
def P2241879039663499424.Spec : Prop :=
  ∀ n, P2241879039663499424.a n = A022087 n

end A022087

/-! ## A022087.P14119970884832620261

`2*(A001588(n)-1)`
-/

namespace A022087.P14119970884832620261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001588 n - 1)

end

end A022087.P14119970884832620261

namespace A022087

/-- `2*(A001588(n)-1)` -/
def P14119970884832620261.Spec : Prop :=
  ∀ n, P14119970884832620261.a n = A022087 n

end A022087

/-! ## A022087.P8286159222254951744

`2*A198834(n+2)`
-/

namespace A022087.P8286159222254951744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198834 (n + 2)

end

end A022087.P8286159222254951744

namespace A022087

/-- `2*A198834(n+2)` -/
def P8286159222254951744.Spec : Prop :=
  ∀ n, P8286159222254951744.a n = A022087 n

end A022087

/-! ## A022087.P14187554091174642206

`4*A212804(n+1)`
-/

namespace A022087.P14187554091174642206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A212804 (n + 1)

end

end A022087.P14187554091174642206

namespace A022087

/-- `4*A212804(n+1)` -/
def P14187554091174642206.Spec : Prop :=
  ∀ n, P14187554091174642206.a n = A022087 n

end A022087

/-! ## A022087.P17432030213196223959

`4*(A001611(n)-1)`
-/

namespace A022087.P17432030213196223959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001611 n - 1)

end

end A022087.P17432030213196223959

namespace A022087

/-- `4*(A001611(n)-1)` -/
def P17432030213196223959.Spec : Prop :=
  ∀ n, P17432030213196223959.a n = A022087 n

theorem P17432030213196223959.correct : P17432030213196223959.Spec := by
  intro n
  simp only [A022087, Nat.add_sub_cancel, A022087.P17432030213196223959.a, A022087.P15759272974687768527.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022087

/-! ## A022087.P3553494764925326280

`4*(A157725(n)-2)`
-/

namespace A022087.P3553494764925326280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A157725 n - 2)

end

end A022087.P3553494764925326280

namespace A022087

/-- `4*(A157725(n)-2)` -/
def P3553494764925326280.Spec : Prop :=
  ∀ n, P3553494764925326280.a n = A022087 n

theorem P3553494764925326280.correct : P3553494764925326280.Spec := by
  intro n
  simp only [A022087, Nat.add_sub_cancel, A022087.P3553494764925326280.a, A022087.P15759272974687768527.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022087

/-! ## A022087.P9160962844854025004

`4*A053602(2*n)`
-/

namespace A022087.P9160962844854025004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A053602 (2 * n)

end

end A022087.P9160962844854025004

namespace A022087

/-- `4*A053602(2*n)` -/
def P9160962844854025004.Spec : Prop :=
  ∀ n, P9160962844854025004.a n = A022087 n

end A022087

/-! ## A022087.P4236176126943519899

`4*A103609(2*n)`
-/

namespace A022087.P4236176126943519899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A103609 (2 * n)

end

end A022087.P4236176126943519899

namespace A022087

/-- `4*A103609(2*n)` -/
def P4236176126943519899.Spec : Prop :=
  ∀ n, P4236176126943519899.a n = A022087 n

end A022087

/-! ## A022087.P18235219008194099520

`4*(A157726(n)-3)`
-/

namespace A022087.P18235219008194099520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A157726 n - 3)

end

end A022087.P18235219008194099520

namespace A022087

/-- `4*(A157726(n)-3)` -/
def P18235219008194099520.Spec : Prop :=
  ∀ n, P18235219008194099520.a n = A022087 n

theorem P18235219008194099520.correct : P18235219008194099520.Spec := by
  intro n
  simp only [A022087, Nat.add_sub_cancel, A022087.P18235219008194099520.a, A022087.P15759272974687768527.a, A000045, A000045.P11838749114346432762.a, A157726, A157726.P7037374530455403318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022087

/-!
# A022088: Fibonacci sequence beginning 0, 5.

The programs for A022088, the canonical program `A022088.P13238787405379109622` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022088 has offset 0).

The definition of A022088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022088.P13238787405379109622

`5*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022088

/-- `5*A000045(n)` -/
def P13238787405379109622.Spec : Prop :=
  ∀ n, P13238787405379109622.a n = A022088 n

theorem P13238787405379109622.correct : P13238787405379109622.Spec := by
  intro n
  simp only [A022088]

end A022088

/-! ## A022088.P17479500832834358383

`sqrt(5*(A000032(n)²-4*(-1)^n))`
-/

namespace A022088.P17479500832834358383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 * (A000032 n ^ 2 - 4 * (-1) ^ n) : ℝ)

end

end A022088.P17479500832834358383

namespace A022088

/-- `sqrt(5*(A000032(n)²-4*(-1)^n))` -/
def P17479500832834358383.Spec : Prop :=
  ∀ n, P17479500832834358383.a n = (A022088 n : ℝ)

end A022088

/-! ## A022088.P11443870574331576405

`ogf(5x/(1-x-x^2))`
-/

namespace A022088.P11443870574331576405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -1, -1] n

end

end A022088.P11443870574331576405

namespace A022088

/-- `ogf(5x/(1-x-x^2))` -/
def P11443870574331576405.Spec : Prop :=
  ∀ n, P11443870574331576405.a n = A022088 n

end A022088

/-! ## A022088.P12742915243560171563

`5*round(ϕ^n/sqrt(5))`
-/

namespace A022088.P12742915243560171563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A022088.P12742915243560171563

namespace A022088

/-- `5*round(ϕ^n/sqrt(5))` -/
def P12742915243560171563.Spec : Prop :=
  ∀ n, P12742915243560171563.a n = A022088 n

end A022088

/-! ## A022088.P2721079869045948651

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A022088.P2721079869045948651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022088.P2721079869045948651

namespace A022088

/-- `a(n-1)+a(n-2)` -/
def P2721079869045948651.Spec : Prop :=
  ∀ n, (P2721079869045948651.a n : ℤ) = A022088 n

end A022088

/-! ## A022088.P2424533773906134271

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=5`
-/

namespace A022088.P2424533773906134271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022088.P2424533773906134271

namespace A022088

/-- `2*a(n-1)-a(n-3)` -/
def P2424533773906134271.Spec : Prop :=
  ∀ n, P2424533773906134271.a n = A022088 n

end A022088

/-! ## A022088.P1331102558971506788

`a(n-1)-(char[1]-a(n-2))` with `a(0)=0, a(1)=5`
-/

namespace A022088.P1331102558971506788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A022088.P1331102558971506788

namespace A022088

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P1331102558971506788.Spec : Prop :=
  ∀ n, P1331102558971506788.a n = A022088 n

end A022088

/-! ## A022088.P17869786623876174520

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A022088.P17869786623876174520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A022088.P17869786623876174520

namespace A022088

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P17869786623876174520.Spec : Prop :=
  ∀ n, P17869786623876174520.a n = A022088 n

end A022088

/-! ## A022088.P5450470858055724531

`A371843(n)-(-1)^n`
-/

namespace A022088.P5450470858055724531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 n - (-1) ^ n

end

end A022088.P5450470858055724531

namespace A022088

/-- `A371843(n)-(-1)^n` -/
def P5450470858055724531.Spec : Prop :=
  ∀ n, P5450470858055724531.a n = A022088 n

theorem P5450470858055724531.correct : P5450470858055724531.Spec := by
  intro n
  simp only [A022088, Nat.add_sub_cancel, A022088.P5450470858055724531.a, A022088.P13238787405379109622.a, A000045, A000045.P11838749114346432762.a, A371843, A371843.P2262643794716352472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022088

/-! ## A022088.P13607309567402774792

`5*A000032(n-1)-a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A022088.P13607309567402774792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * A000032 (n - 1) - a (n - 2)

end

end A022088.P13607309567402774792

namespace A022088

/-- `5*A000032(n-1)-a(n-2)` -/
def P13607309567402774792.Spec : Prop :=
  ∀ n, P13607309567402774792.a n = A022088 n

end A022088

/-! ## A022088.P17375119890440855478

`A022087(n)+A000045(n)`
-/

namespace A022088.P17375119890440855478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000045 n

end

end A022088.P17375119890440855478

namespace A022088

/-- `A022087(n)+A000045(n)` -/
def P17375119890440855478.Spec : Prop :=
  ∀ n, P17375119890440855478.a n = A022088 n

theorem P17375119890440855478.correct : P17375119890440855478.Spec := by
  intro n
  simp only [A022088, Nat.add_sub_cancel, A022088.P17375119890440855478.a, A022088.P13238787405379109622.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022088

/-! ## A022088.P3375388240601900758

`A022089(n)-A000045(n)`
-/

namespace A022088.P3375388240601900758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n - A000045 n

end

end A022088.P3375388240601900758

namespace A022088

/-- `A022089(n)-A000045(n)` -/
def P3375388240601900758.Spec : Prop :=
  ∀ n, P3375388240601900758.a n = A022088 n

theorem P3375388240601900758.correct : P3375388240601900758.Spec := by
  intro n
  simp only [A022088, Nat.add_sub_cancel, A022088.P3375388240601900758.a, A022088.P13238787405379109622.a, A000045, A000045.P11838749114346432762.a, A022089, A022089.P2526634343507700002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022088

/-! ## A022088.P10789769669201222247

`A022112(n)-A000032(n)`
-/

namespace A022088.P10789769669201222247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n - A000032 n

end

end A022088.P10789769669201222247

namespace A022088

/-- `A022112(n)-A000032(n)` -/
def P10789769669201222247.Spec : Prop :=
  ∀ n, P10789769669201222247.a n = A022088 n

end A022088

/-! ## A022088.P9525067142467046521

`A022095(n)-A212804(n)`
-/

namespace A022088.P9525067142467046521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n - A212804 n

end

end A022088.P9525067142467046521

namespace A022088

/-- `A022095(n)-A212804(n)` -/
def P9525067142467046521.Spec : Prop :=
  ∀ n, P9525067142467046521.a n = A022088 n

end A022088

/-! ## A022088.P3368527984536328369

`A000285(n)+Δ[A212804(n)]`
-/

namespace A022088.P3368527984536328369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + (f1 (n + 1) - f1 n)

end

end A022088.P3368527984536328369

namespace A022088

/-- `A000285(n)+Δ[A212804(n)]` -/
def P3368527984536328369.Spec : Prop :=
  ∀ n, P3368527984536328369.a n = A022088 n

end A022088

/-! ## A022088.P3634701682823265994

`A022095(n)-Δ[A000045(n)]`
-/

namespace A022088.P3634701682823265994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n - (f1 (n + 1) - f1 n)

end

end A022088.P3634701682823265994

namespace A022088

/-- `A022095(n)-Δ[A000045(n)]` -/
def P3634701682823265994.Spec : Prop :=
  ∀ n, P3634701682823265994.a n = A022088 n

end A022088

/-! ## A022088.P17134080963505986731

`A022095(n)-Δ[A001611(n)]`
-/

namespace A022088.P17134080963505986731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n - (f1 (n + 1) - f1 n)

end

end A022088.P17134080963505986731

namespace A022088

/-- `A022095(n)-Δ[A001611(n)]` -/
def P17134080963505986731.Spec : Prop :=
  ∀ n, P17134080963505986731.a n = A022088 n

end A022088

/-! ## A022088.P6563696878609060654

`A022086(n)+A006355(n+1)`
-/

namespace A022088.P6563696878609060654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A006355 (n + 1)

end

end A022088.P6563696878609060654

namespace A022088

/-- `A022086(n)+A006355(n+1)` -/
def P6563696878609060654.Spec : Prop :=
  ∀ n, P6563696878609060654.a n = A022088 n

end A022088

/-! ## A022088.P4641937211164225230

`A118658(n+1)+A022086(n)`
-/

namespace A022088.P4641937211164225230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A022086 n

end

end A022088.P4641937211164225230

namespace A022088

/-- `A118658(n+1)+A022086(n)` -/
def P4641937211164225230.Spec : Prop :=
  ∀ n, P4641937211164225230.a n = A022088 n

end A022088

/-! ## A022088.P3855634968602385039

`A187891(n)+A000071(n+1)`
-/

namespace A022088.P3855634968602385039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A000071 (n + 1)

end

end A022088.P3855634968602385039

namespace A022088

/-- `A187891(n)+A000071(n+1)` -/
def P3855634968602385039.Spec : Prop :=
  ∀ n, P3855634968602385039.a n = A022088 n

end A022088

/-!
# A022089: Fibonacci sequence beginning 0, 6.

The programs for A022089, the canonical program `A022089.P2526634343507700002` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022089 has offset 0).

The definition of A022089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022089.P2526634343507700002

`6*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022089

/-- `6*A000045(n)` -/
def P2526634343507700002.Spec : Prop :=
  ∀ n, P2526634343507700002.a n = A022089 n

theorem P2526634343507700002.correct : P2526634343507700002.Spec := by
  intro n
  simp only [A022089]

end A022089

/-! ## A022089.P15588603810010436788

`ogf(6x/(1-x-x^2))`
-/

namespace A022089.P15588603810010436788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -1, -1] n

end

end A022089.P15588603810010436788

namespace A022089

/-- `ogf(6x/(1-x-x^2))` -/
def P15588603810010436788.Spec : Prop :=
  ∀ n, P15588603810010436788.a n = A022089 n

end A022089

/-! ## A022089.P7627880606940523798

`6*round(ϕ^n/sqrt(5))`
-/

namespace A022089.P7627880606940523798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A022089.P7627880606940523798

namespace A022089

/-- `6*round(ϕ^n/sqrt(5))` -/
def P7627880606940523798.Spec : Prop :=
  ∀ n, P7627880606940523798.a n = A022089 n

end A022089

/-! ## A022089.P8188054427690398460

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A022089.P8188054427690398460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022089.P8188054427690398460

namespace A022089

/-- `a(n-1)+a(n-2)` -/
def P8188054427690398460.Spec : Prop :=
  ∀ n, (P8188054427690398460.a n : ℤ) = A022089 n

end A022089

/-! ## A022089.P2354047038425010439

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=6, a(2)=6`
-/

namespace A022089.P2354047038425010439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022089.P2354047038425010439

namespace A022089

/-- `2*a(n-1)-a(n-3)` -/
def P2354047038425010439.Spec : Prop :=
  ∀ n, P2354047038425010439.a n = A022089 n

end A022089

/-! ## A022089.P8920396009701765117

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=6, a(2)=6`
-/

namespace A022089.P8920396009701765117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 6] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022089.P8920396009701765117

namespace A022089

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P8920396009701765117.Spec : Prop :=
  ∀ n, P8920396009701765117.a n = A022089 n

end A022089

/-! ## A022089.P9089273241678570016

`2*A187893(n)-2`
-/

namespace A022089.P9089273241678570016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187893 n - 2

end

end A022089.P9089273241678570016

namespace A022089

/-- `2*A187893(n)-2` -/
def P9089273241678570016.Spec : Prop :=
  ∀ n, P9089273241678570016.a n = A022089 n

end A022089

/-! ## A022089.P1632580225223492750

`lcm(2, 2*A022086(n))`
-/

namespace A022089.P1632580225223492750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A022086 n)

end

end A022089.P1632580225223492750

namespace A022089

/-- `lcm(2, 2*A022086(n))` -/
def P1632580225223492750.Spec : Prop :=
  ∀ n, (P1632580225223492750.a n : ℤ) = A022089 n

end A022089

/-! ## A022089.P16225414026611773627

`A022088(n)+A000045(n)`
-/

namespace A022089.P16225414026611773627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A000045 n

end

end A022089.P16225414026611773627

namespace A022089

/-- `A022088(n)+A000045(n)` -/
def P16225414026611773627.Spec : Prop :=
  ∀ n, P16225414026611773627.a n = A022089 n

theorem P16225414026611773627.correct : P16225414026611773627.Spec := by
  intro n
  simp only [A022089, Nat.add_sub_cancel, A022089.P16225414026611773627.a, A022089.P2526634343507700002.a, A000045, A000045.P11838749114346432762.a, A022088, A022088.P13238787405379109622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022089

/-! ## A022089.P1859178311241333284

`A022086(n)+A022086(n)`
-/

namespace A022089.P1859178311241333284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A022086 n

end

end A022089.P1859178311241333284

namespace A022089

/-- `A022086(n)+A022086(n)` -/
def P1859178311241333284.Spec : Prop :=
  ∀ n, P1859178311241333284.a n = A022089 n

end A022089

/-! ## A022089.P12631483379872763446

`A022090(n)-A000045(n)`
-/

namespace A022089.P12631483379872763446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n - A000045 n

end

end A022089.P12631483379872763446

namespace A022089

/-- `A022090(n)-A000045(n)` -/
def P12631483379872763446.Spec : Prop :=
  ∀ n, P12631483379872763446.a n = A022089 n

theorem P12631483379872763446.correct : P12631483379872763446.Spec := by
  intro n
  simp only [A022089, Nat.add_sub_cancel, A022089.P12631483379872763446.a, A022089.P2526634343507700002.a, A000045, A000045.P11838749114346432762.a, A022090, A022090.P11598192138682998904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022089

/-! ## A022089.P15624300740531581401

`A022112(n)-A118658(n)`
-/

namespace A022089.P15624300740531581401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n - A118658 n

end

end A022089.P15624300740531581401

namespace A022089

/-- `A022112(n)-A118658(n)` -/
def P15624300740531581401.Spec : Prop :=
  ∀ n, P15624300740531581401.a n = A022089 n

end A022089

/-! ## A022089.P266072778989484859

`A000285(n)+Δ[A000032(n)]`
-/

namespace A022089.P266072778989484859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + (f1 (n + 1) - f1 n)

end

end A022089.P266072778989484859

namespace A022089

/-- `A000285(n)+Δ[A000032(n)]` -/
def P266072778989484859.Spec : Prop :=
  ∀ n, P266072778989484859.a n = A022089 n

end A022089

/-! ## A022089.P5305869459976616245

`A022087(n)+A006355(n+1)`
-/

namespace A022089.P5305869459976616245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A006355 (n + 1)

end

end A022089.P5305869459976616245

namespace A022089

/-- `A022087(n)+A006355(n+1)` -/
def P5305869459976616245.Spec : Prop :=
  ∀ n, P5305869459976616245.a n = A022089 n

end A022089

/-! ## A022089.P3797273479050876215

`A187892(n)+A000071(n+1)`
-/

namespace A022089.P3797273479050876215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A000071 (n + 1)

end

end A022089.P3797273479050876215

namespace A022089

/-- `A187892(n)+A000071(n+1)` -/
def P3797273479050876215.Spec : Prop :=
  ∀ n, P3797273479050876215.a n = A022089 n

end A022089

/-! ## A022089.P11529749771714238704

`A187891(n)+A000071(n+2)`
-/

namespace A022089.P11529749771714238704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A000071 (n + 2)

end

end A022089.P11529749771714238704

namespace A022089

/-- `A187891(n)+A000071(n+2)` -/
def P11529749771714238704.Spec : Prop :=
  ∀ n, P11529749771714238704.a n = A022089 n

end A022089

/-! ## A022089.P11211402307450798015

`A022095(n)+Δ[Δ[A000045(n)]]`
-/

namespace A022089.P11211402307450798015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + (f1 (n + 1) - f1 n)

end

end A022089.P11211402307450798015

namespace A022089

/-- `A022095(n)+Δ[Δ[A000045(n)]]` -/
def P11211402307450798015.Spec : Prop :=
  ∀ n, P11211402307450798015.a n = A022089 n

end A022089

/-! ## A022089.P7853932485615043963

`A022095(n)+Δ[Δ[A001611(n)]]`
-/

namespace A022089.P7853932485615043963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + (f1 (n + 1) - f1 n)

end

end A022089.P7853932485615043963

namespace A022089

/-- `A022095(n)+Δ[Δ[A001611(n)]]` -/
def P7853932485615043963.Spec : Prop :=
  ∀ n, P7853932485615043963.a n = A022089 n

end A022089

/-! ## A022089.P1834023271014282327

`A020701(n)-Δ[Δ[A000032(n)]]`
-/

namespace A022089.P1834023271014282327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - (f1 (n + 1) - f1 n)

end

end A022089.P1834023271014282327

namespace A022089

/-- `A020701(n)-Δ[Δ[A000032(n)]]` -/
def P1834023271014282327.Spec : Prop :=
  ∀ n, P1834023271014282327.a n = A022089 n

end A022089

/-! ## A022089.P5657235446776966319

`A006355(n+1)+A128588(n+2)-A118658(n)`
-/

namespace A022089.P5657235446776966319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + (A128588 (n + 2) - A118658 n)

end

end A022089.P5657235446776966319

namespace A022089

/-- `A006355(n+1)+A128588(n+2)-A118658(n)` -/
def P5657235446776966319.Spec : Prop :=
  ∀ n, P5657235446776966319.a n = A022089 n

end A022089

/-!
# A022090: Fibonacci sequence beginning 0, 7.

The programs for A022090, the canonical program `A022090.P11598192138682998904` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022090 has offset 0).

The definition of A022090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022090.P11598192138682998904

`7*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022090

/-- `7*A000045(n)` -/
def P11598192138682998904.Spec : Prop :=
  ∀ n, P11598192138682998904.a n = A022090 n

theorem P11598192138682998904.correct : P11598192138682998904.Spec := by
  intro n
  simp only [A022090]

end A022090

/-! ## A022090.P501546129687559287

`ogf(7x/(1-x-x^2))`
-/

namespace A022090.P501546129687559287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -1, -1] n

end

end A022090.P501546129687559287

namespace A022090

/-- `ogf(7x/(1-x-x^2))` -/
def P501546129687559287.Spec : Prop :=
  ∀ n, P501546129687559287.a n = A022090 n

end A022090

/-! ## A022090.P7727282157739336303

`7*round(ϕ^n/sqrt(5))`
-/

namespace A022090.P7727282157739336303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A022090.P7727282157739336303

namespace A022090

/-- `7*round(ϕ^n/sqrt(5))` -/
def P7727282157739336303.Spec : Prop :=
  ∀ n, P7727282157739336303.a n = A022090 n

end A022090

/-! ## A022090.P5544452117333524074

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=7`
-/

namespace A022090.P5544452117333524074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022090.P5544452117333524074

namespace A022090

/-- `a(n-1)+a(n-2)` -/
def P5544452117333524074.Spec : Prop :=
  ∀ n, (P5544452117333524074.a n : ℤ) = A022090 n

end A022090

/-! ## A022090.P14512034842098443995

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=7, a(2)=7`
-/

namespace A022090.P14512034842098443995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 7] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022090.P14512034842098443995

namespace A022090

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P14512034842098443995.Spec : Prop :=
  ∀ n, P14512034842098443995.a n = A022090 n

end A022090

/-! ## A022090.P576492830333684693

`abs(7*(A157725(n)-2))`
-/

namespace A022090.P576492830333684693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 * (A157725 n - 2)|

end

end A022090.P576492830333684693

namespace A022090

/-- `abs(7*(A157725(n)-2))` -/
def P576492830333684693.Spec : Prop :=
  ∀ n, P576492830333684693.a n = A022090 n

end A022090

/-! ## A022090.P16495497576769458655

`A022089(n)+A000045(n)`
-/

namespace A022090.P16495497576769458655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A000045 n

end

end A022090.P16495497576769458655

namespace A022090

/-- `A022089(n)+A000045(n)` -/
def P16495497576769458655.Spec : Prop :=
  ∀ n, P16495497576769458655.a n = A022090 n

theorem P16495497576769458655.correct : P16495497576769458655.Spec := by
  intro n
  simp only [A022090, Nat.add_sub_cancel, A022090.P16495497576769458655.a, A022090.P11598192138682998904.a, A000045, A000045.P11838749114346432762.a, A022089, A022089.P2526634343507700002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022090

/-! ## A022090.P11481304184062338507

`A022087(n)+A022086(n)`
-/

namespace A022090.P11481304184062338507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A022086 n

end

end A022090.P11481304184062338507

namespace A022090

/-- `A022087(n)+A022086(n)` -/
def P11481304184062338507.Spec : Prop :=
  ∀ n, P11481304184062338507.a n = A022090 n

end A022090

/-! ## A022090.P16241254294332585709

`A187891(n)+A001610(n)`
-/

namespace A022090.P16241254294332585709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A001610 n

end

end A022090.P16241254294332585709

namespace A022090

/-- `A187891(n)+A001610(n)` -/
def P16241254294332585709.Spec : Prop :=
  ∀ n, P16241254294332585709.a n = A022090 n

end A022090

/-! ## A022090.P16040432803236235996

`A022088(n)+A006355(n+1)`
-/

namespace A022090.P16040432803236235996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A006355 (n + 1)

end

end A022090.P16040432803236235996

namespace A022090

/-- `A022088(n)+A006355(n+1)` -/
def P16040432803236235996.Spec : Prop :=
  ∀ n, P16040432803236235996.a n = A022090 n

end A022090

/-! ## A022090.P6757340172269235848

`A187892(n)+A000071(n+2)`
-/

namespace A022090.P6757340172269235848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A000071 (n + 2)

end

end A022090.P6757340172269235848

namespace A022090

/-- `A187892(n)+A000071(n+2)` -/
def P6757340172269235848.Spec : Prop :=
  ∀ n, P6757340172269235848.a n = A022090 n

end A022090

/-! ## A022090.P5070854068559539318

`A022088(n)+A022087(n)/2`
-/

namespace A022090.P5070854068559539318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022088 n : ℚ) + (A022087 n : ℚ) / 2

end

end A022090.P5070854068559539318

namespace A022090

/-- `A022088(n)+A022087(n)/2` -/
def P5070854068559539318.Spec : Prop :=
  ∀ n, P5070854068559539318.a n = (A022090 n : ℚ)

theorem P5070854068559539318.correct : P5070854068559539318.Spec := by
  intro n
  simp only [A022090, Nat.add_sub_cancel, A022090.P5070854068559539318.a, A022090.P11598192138682998904.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, A022088, A022088.P13238787405379109622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022090

/-! ## A022090.P18050089878013155499

`A000285(n)+A001060(n)-A013655(n)`
-/

namespace A022090.P18050089878013155499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + (A001060 n - A013655 n)

end

end A022090.P18050089878013155499

namespace A022090

/-- `A000285(n)+A001060(n)-A013655(n)` -/
def P18050089878013155499.Spec : Prop :=
  ∀ n, P18050089878013155499.a n = A022090 n

end A022090

/-! ## A022090.P13108273144172760327

`A022088(n)+A022088(n)-A022086(n)`
-/

namespace A022090.P13108273144172760327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + (A022088 n - A022086 n)

end

end A022090.P13108273144172760327

namespace A022090

/-- `A022088(n)+A022088(n)-A022086(n)` -/
def P13108273144172760327.Spec : Prop :=
  ∀ n, P13108273144172760327.a n = A022090 n

end A022090

/-! ## A022090.P3193025621117028924

`A022088(n)+A022089(n)-A022087(n)`
-/

namespace A022090.P3193025621117028924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + (A022089 n - A022087 n)

end

end A022090.P3193025621117028924

namespace A022090

/-- `A022088(n)+A022089(n)-A022087(n)` -/
def P3193025621117028924.Spec : Prop :=
  ∀ n, P3193025621117028924.a n = A022090 n

theorem P3193025621117028924.correct : P3193025621117028924.Spec := by
  intro n
  simp only [A022090, Nat.add_sub_cancel, A022090.P3193025621117028924.a, A022090.P11598192138682998904.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, A022088, A022088.P13238787405379109622.a, A022089, A022089.P2526634343507700002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022090

/-! ## A022090.P12385112966797044265

`A013655(n+1)+A000285(n)-A013655(n)`
-/

namespace A022090.P12385112966797044265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 1) + (A000285 n - A013655 n)

end

end A022090.P12385112966797044265

namespace A022090

/-- `A013655(n+1)+A000285(n)-A013655(n)` -/
def P12385112966797044265.Spec : Prop :=
  ∀ n, P12385112966797044265.a n = A022090 n

end A022090

/-! ## A022090.P16559081688296257161

`A022086(n)+A022089(n)-A006355(n+1)`
-/

namespace A022090.P16559081688296257161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + (A022089 n - A006355 (n + 1))

end

end A022090.P16559081688296257161

namespace A022090

/-- `A022086(n)+A022089(n)-A006355(n+1)` -/
def P16559081688296257161.Spec : Prop :=
  ∀ n, P16559081688296257161.a n = A022090 n

end A022090

/-! ## A022090.P241536195925001590

`A104449(n+1)+A001060(n)-A013655(n)`
-/

namespace A022090.P241536195925001590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1) + (A001060 n - A013655 n)

end

end A022090.P241536195925001590

namespace A022090

/-- `A104449(n+1)+A001060(n)-A013655(n)` -/
def P241536195925001590.Spec : Prop :=
  ∀ n, P241536195925001590.a n = A022090 n

end A022090

/-! ## A022090.P17814245214508063164

`A013655(n+1)+A104449(n+1)-A013655(n)`
-/

namespace A022090.P17814245214508063164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 1) + (A104449 (n + 1) - A013655 n)

end

end A022090.P17814245214508063164

namespace A022090

/-- `A013655(n+1)+A104449(n+1)-A013655(n)` -/
def P17814245214508063164.Spec : Prop :=
  ∀ n, P17814245214508063164.a n = A022090 n

end A022090

/-! ## A022090.P229137363572128958

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=7, a(2)=7`
-/

namespace A022090.P229137363572128958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022090.P229137363572128958

namespace A022090

/-- `2*a(n-1)-a(n-3)` -/
def P229137363572128958.Spec : Prop :=
  ∀ n, P229137363572128958.a n = A022090 n

end A022090

/-!
# A022091: Fibonacci sequence beginning 0, 8.

The programs for A022091, the canonical program `A022091.P8466803900234881799` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022091 has offset 0).

The definition of A022091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022091.P8466803900234881799

`8*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022091

/-- `8*A000045(n)` -/
def P8466803900234881799.Spec : Prop :=
  ∀ n, P8466803900234881799.a n = A022091 n

theorem P8466803900234881799.correct : P8466803900234881799.Spec := by
  intro n
  simp only [A022091]

end A022091

/-! ## A022091.P8991992788187100420

`ogf(8x/(1-x-x^2))`
-/

namespace A022091.P8991992788187100420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -1, -1] n

end

end A022091.P8991992788187100420

namespace A022091

/-- `ogf(8x/(1-x-x^2))` -/
def P8991992788187100420.Spec : Prop :=
  ∀ n, P8991992788187100420.a n = A022091 n

end A022091

/-! ## A022091.P5571959421901502562

`8*round(ϕ^n/sqrt(5))`
-/

namespace A022091.P5571959421901502562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A022091.P5571959421901502562

namespace A022091

/-- `8*round(ϕ^n/sqrt(5))` -/
def P5571959421901502562.Spec : Prop :=
  ∀ n, P5571959421901502562.a n = A022091 n

end A022091

/-! ## A022091.P15148329154097724523

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A022091.P15148329154097724523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022091.P15148329154097724523

namespace A022091

/-- `a(n-1)+a(n-2)` -/
def P15148329154097724523.Spec : Prop :=
  ∀ n, (P15148329154097724523.a n : ℤ) = A022091 n

end A022091

/-! ## A022091.P7408756273404445013

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=8, a(2)=8`
-/

namespace A022091.P7408756273404445013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022091.P7408756273404445013

namespace A022091

/-- `2*a(n-1)-a(n-3)` -/
def P7408756273404445013.Spec : Prop :=
  ∀ n, P7408756273404445013.a n = A022091 n

end A022091

/-! ## A022091.P4549599628170864235

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=8, a(2)=8`
-/

namespace A022091.P4549599628170864235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022091.P4549599628170864235

namespace A022091

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P4549599628170864235.Spec : Prop :=
  ∀ n, P4549599628170864235.a n = A022091 n

end A022091

/-! ## A022091.P16687280682561311917

`lcm(2, 2*A022087(n))`
-/

namespace A022091.P16687280682561311917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 * A022087 n)

end

end A022091.P16687280682561311917

namespace A022091

/-- `lcm(2, 2*A022087(n))` -/
def P16687280682561311917.Spec : Prop :=
  ∀ n, (P16687280682561311917.a n : ℤ) = A022091 n

end A022091

/-! ## A022091.P3885246814334807276

`A022090(n)+A000045(n)`
-/

namespace A022091.P3885246814334807276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A000045 n

end

end A022091.P3885246814334807276

namespace A022091

/-- `A022090(n)+A000045(n)` -/
def P3885246814334807276.Spec : Prop :=
  ∀ n, P3885246814334807276.a n = A022091 n

theorem P3885246814334807276.correct : P3885246814334807276.Spec := by
  intro n
  simp only [A022091, Nat.add_sub_cancel, A022091.P3885246814334807276.a, A022091.P8466803900234881799.a, A000045, A000045.P11838749114346432762.a, A022090, A022090.P11598192138682998904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022091

/-! ## A022091.P5349876617395367657

`A022087(n)+A022087(n)`
-/

namespace A022091.P5349876617395367657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A022087 n

end

end A022091.P5349876617395367657

namespace A022091

/-- `A022087(n)+A022087(n)` -/
def P5349876617395367657.Spec : Prop :=
  ∀ n, P5349876617395367657.a n = A022091 n

theorem P5349876617395367657.correct : P5349876617395367657.Spec := by
  intro n
  simp only [A022091, Nat.add_sub_cancel, A022091.P5349876617395367657.a, A022091.P8466803900234881799.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022091

/-! ## A022091.P2268842588672313843

`A022088(n)+A022086(n)`
-/

namespace A022091.P2268842588672313843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A022086 n

end

end A022091.P2268842588672313843

namespace A022091

/-- `A022088(n)+A022086(n)` -/
def P2268842588672313843.Spec : Prop :=
  ∀ n, P2268842588672313843.a n = A022091 n

end A022091

/-! ## A022091.P8056868106513111315

`A187892(n)+A001610(n)`
-/

namespace A022091.P8056868106513111315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A001610 n

end

end A022091.P8056868106513111315

namespace A022091

/-- `A187892(n)+A001610(n)` -/
def P8056868106513111315.Spec : Prop :=
  ∀ n, P8056868106513111315.a n = A022091 n

end A022091

/-! ## A022091.P16988813137477201797

`A187891(n)+A022308(n)`
-/

namespace A022091.P16988813137477201797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022308 n

end

end A022091.P16988813137477201797

namespace A022091

/-- `A187891(n)+A022308(n)` -/
def P16988813137477201797.Spec : Prop :=
  ∀ n, P16988813137477201797.a n = A022091 n

end A022091

/-! ## A022091.P6246324535783436172

`A022092(n)-A000045(n)`
-/

namespace A022091.P6246324535783436172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n - A000045 n

end

end A022091.P6246324535783436172

namespace A022091

/-- `A022092(n)-A000045(n)` -/
def P6246324535783436172.Spec : Prop :=
  ∀ n, P6246324535783436172.a n = A022091 n

theorem P6246324535783436172.correct : P6246324535783436172.Spec := by
  intro n
  simp only [A022091, Nat.add_sub_cancel, A022091.P6246324535783436172.a, A022091.P8466803900234881799.a, A000045, A000045.P11838749114346432762.a, A022092, A022092.P12154545116690058814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022091

/-! ## A022091.P15602881019825324648

`A022114(n)-A000032(n)`
-/

namespace A022091.P15602881019825324648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n - A000032 n

end

end A022091.P15602881019825324648

namespace A022091

/-- `A022114(n)-A000032(n)` -/
def P15602881019825324648.Spec : Prop :=
  ∀ n, P15602881019825324648.a n = A022091 n

end A022091

/-! ## A022091.P15807542897000163252

`A022323(n)-A001595(n)`
-/

namespace A022091.P15807542897000163252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A001595 n

end

end A022091.P15807542897000163252

namespace A022091

/-- `A022323(n)-A001595(n)` -/
def P15807542897000163252.Spec : Prop :=
  ∀ n, P15807542897000163252.a n = A022091 n

end A022091

/-! ## A022091.P2405885736214483522

`A022315(n)-A001610(n)`
-/

namespace A022091.P2405885736214483522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n - A001610 n

end

end A022091.P2405885736214483522

namespace A022091

/-- `A022315(n)-A001610(n)` -/
def P2405885736214483522.Spec : Prop :=
  ∀ n, P2405885736214483522.a n = A022091 n

end A022091

/-! ## A022091.P16395121704994819309

`A022122(n)-A013655(n)`
-/

namespace A022091.P16395121704994819309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - A013655 n

end

end A022091.P16395121704994819309

namespace A022091

/-- `A022122(n)-A013655(n)` -/
def P16395121704994819309.Spec : Prop :=
  ∀ n, P16395121704994819309.a n = A022091 n

end A022091

/-! ## A022091.P3339838686438763243

`A022345(n)-A022086(n)`
-/

namespace A022091.P3339838686438763243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n - A022086 n

end

end A022091.P3339838686438763243

namespace A022091

/-- `A022345(n)-A022086(n)` -/
def P3339838686438763243.Spec : Prop :=
  ∀ n, P3339838686438763243.a n = A022091 n

end A022091

/-! ## A022091.P1579165041319740223

`A022346(n)-A022087(n)`
-/

namespace A022091.P1579165041319740223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n - A022087 n

end

end A022091.P1579165041319740223

namespace A022091

/-- `A022346(n)-A022087(n)` -/
def P1579165041319740223.Spec : Prop :=
  ∀ n, P1579165041319740223.a n = A022091 n

theorem P1579165041319740223.correct : P1579165041319740223.Spec := by
  intro n
  simp only [A022091, Nat.add_sub_cancel, A022091.P1579165041319740223.a, A022091.P8466803900234881799.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, A022346, A022346.P3506680417996539901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022091

/-! ## A022091.P1641428349763908924

`A022089(n)+A006355(n+1)`
-/

namespace A022091.P1641428349763908924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A006355 (n + 1)

end

end A022091.P1641428349763908924

namespace A022091

/-- `A022089(n)+A006355(n+1)` -/
def P1641428349763908924.Spec : Prop :=
  ∀ n, P1641428349763908924.a n = A022091 n

end A022091

/-!
# A022092: Fibonacci sequence beginning 0, 9.

The programs for A022092, the canonical program `A022092.P12154545116690058814` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022092 has offset 0).

The definition of A022092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022092.P12154545116690058814

`9*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022092

/-- `9*A000045(n)` -/
def P12154545116690058814.Spec : Prop :=
  ∀ n, P12154545116690058814.a n = A022092 n

theorem P12154545116690058814.correct : P12154545116690058814.Spec := by
  intro n
  simp only [A022092]

end A022092

/-! ## A022092.P13376634978286013531

`ogf(9x/(1-x-x^2))`
-/

namespace A022092.P13376634978286013531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -1, -1] n

end

end A022092.P13376634978286013531

namespace A022092

/-- `ogf(9x/(1-x-x^2))` -/
def P13376634978286013531.Spec : Prop :=
  ∀ n, P13376634978286013531.a n = A022092 n

end A022092

/-! ## A022092.P333795108536919903

`9*round(ϕ^n/sqrt(5))`
-/

namespace A022092.P333795108536919903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A022092.P333795108536919903

namespace A022092

/-- `9*round(ϕ^n/sqrt(5))` -/
def P333795108536919903.Spec : Prop :=
  ∀ n, P333795108536919903.a n = A022092 n

end A022092

/-! ## A022092.P1771879504113913672

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=9`
-/

namespace A022092.P1771879504113913672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022092.P1771879504113913672

namespace A022092

/-- `a(n-1)+a(n-2)` -/
def P1771879504113913672.Spec : Prop :=
  ∀ n, (P1771879504113913672.a n : ℤ) = A022092 n

end A022092

/-! ## A022092.P5579394896090379036

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=9, a(2)=9`
-/

namespace A022092.P5579394896090379036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022092.P5579394896090379036

namespace A022092

/-- `2*a(n-1)-a(n-3)` -/
def P5579394896090379036.Spec : Prop :=
  ∀ n, P5579394896090379036.a n = A022092 n

end A022092

/-! ## A022092.P5286152216858738078

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=9, a(2)=9`
-/

namespace A022092.P5286152216858738078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 9] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022092.P5286152216858738078

namespace A022092

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P5286152216858738078.Spec : Prop :=
  ∀ n, P5286152216858738078.a n = A022092 n

end A022092

/-! ## A022092.P8015387878901335425

`A022091(n)+A000045(n)`
-/

namespace A022092.P8015387878901335425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A000045 n

end

end A022092.P8015387878901335425

namespace A022092

/-- `A022091(n)+A000045(n)` -/
def P8015387878901335425.Spec : Prop :=
  ∀ n, P8015387878901335425.a n = A022092 n

theorem P8015387878901335425.correct : P8015387878901335425.Spec := by
  intro n
  simp only [A022092, Nat.add_sub_cancel, A022092.P8015387878901335425.a, A022092.P12154545116690058814.a, A000045, A000045.P11838749114346432762.a, A022091, A022091.P8466803900234881799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022092

/-! ## A022092.P5901440071386465631

`A022088(n)+A022087(n)`
-/

namespace A022092.P5901440071386465631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A022087 n

end

end A022092.P5901440071386465631

namespace A022092

/-- `A022088(n)+A022087(n)` -/
def P5901440071386465631.Spec : Prop :=
  ∀ n, P5901440071386465631.a n = A022092 n

theorem P5901440071386465631.correct : P5901440071386465631.Spec := by
  intro n
  simp only [A022092, Nat.add_sub_cancel, A022092.P5901440071386465631.a, A022092.P12154545116690058814.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, A022088, A022088.P13238787405379109622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022092

/-! ## A022092.P11905050787509231885

`A022089(n)+A022086(n)`
-/

namespace A022092.P11905050787509231885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A022086 n

end

end A022092.P11905050787509231885

namespace A022092

/-- `A022089(n)+A022086(n)` -/
def P11905050787509231885.Spec : Prop :=
  ∀ n, P11905050787509231885.a n = A022092 n

end A022092

/-! ## A022092.P27112509477751443

`A187891(n)+A022309(n)`
-/

namespace A022092.P27112509477751443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022309 n

end

end A022092.P27112509477751443

namespace A022092

/-- `A187891(n)+A022309(n)` -/
def P27112509477751443.Spec : Prop :=
  ∀ n, P27112509477751443.a n = A022092 n

end A022092

/-! ## A022092.P6227839123538005760

`A187892(n)+A022308(n)`
-/

namespace A022092.P6227839123538005760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022308 n

end

end A022092.P6227839123538005760

namespace A022092

/-- `A187892(n)+A022308(n)` -/
def P6227839123538005760.Spec : Prop :=
  ∀ n, P6227839123538005760.a n = A022092 n

end A022092

/-! ## A022092.P12790713935532488225

`A022093(n)-A000045(n)`
-/

namespace A022092.P12790713935532488225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n - A000045 n

end

end A022092.P12790713935532488225

namespace A022092

/-- `A022093(n)-A000045(n)` -/
def P12790713935532488225.Spec : Prop :=
  ∀ n, P12790713935532488225.a n = A022092 n

theorem P12790713935532488225.correct : P12790713935532488225.Spec := by
  intro n
  simp only [A022092, Nat.add_sub_cancel, A022092.P12790713935532488225.a, A022092.P12154545116690058814.a, A000045, A000045.P11838749114346432762.a, A022093, A022093.P316154037428549231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022092

/-! ## A022092.P12310880043771028637

`A022367(n)-A000032(n)`
-/

namespace A022092.P12310880043771028637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - A000032 n

end

end A022092.P12310880043771028637

namespace A022092

/-- `A022367(n)-A000032(n)` -/
def P12310880043771028637.Spec : Prop :=
  ∀ n, P12310880043771028637.a n = A022092 n

end A022092

/-! ## A022092.P18096542331544463504

`A022346(n)-A022086(n)`
-/

namespace A022092.P18096542331544463504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n - A022086 n

end

end A022092.P18096542331544463504

namespace A022092

/-- `A022346(n)-A022086(n)` -/
def P18096542331544463504.Spec : Prop :=
  ∀ n, P18096542331544463504.a n = A022092 n

end A022092

/-! ## A022092.P16592116630670611259

`A022114(n)-A118658(n)`
-/

namespace A022092.P16592116630670611259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n - A118658 n

end

end A022092.P16592116630670611259

namespace A022092

/-- `A022114(n)-A118658(n)` -/
def P16592116630670611259.Spec : Prop :=
  ∀ n, P16592116630670611259.a n = A022092 n

end A022092

/-! ## A022092.P7214684380013791707

`A022098(n)-A152163(n)`
-/

namespace A022092.P7214684380013791707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n - A152163 n

end

end A022092.P7214684380013791707

namespace A022092

/-- `A022098(n)-A152163(n)` -/
def P7214684380013791707.Spec : Prop :=
  ∀ n, P7214684380013791707.a n = A022092 n

end A022092

/-! ## A022092.P9040789026937195295

`A022099(n)-A212804(n)`
-/

namespace A022092.P9040789026937195295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n - A212804 n

end

end A022092.P9040789026937195295

namespace A022092

/-- `A022099(n)-A212804(n)` -/
def P9040789026937195295.Spec : Prop :=
  ∀ n, P9040789026937195295.a n = A022092 n

end A022092

/-! ## A022092.P3779625589445523867

`A372242(n)-A008346(n)`
-/

namespace A022092.P3779625589445523867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372242 n - A008346 n

end

end A022092.P3779625589445523867

namespace A022092

/-- `A372242(n)-A008346(n)` -/
def P3779625589445523867.Spec : Prop :=
  ∀ n, P3779625589445523867.a n = A022092 n

theorem P3779625589445523867.correct : P3779625589445523867.Spec := by
  intro n
  simp only [A022092, Nat.add_sub_cancel, A022092.P3779625589445523867.a, A022092.P12154545116690058814.a, A000045, A000045.P11838749114346432762.a, A008346, A008346.P8004040718753913505.a, A372242, A372242.P8379858384881024964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022092

/-! ## A022092.P4823128786549978988

`A020712(n)-Δ[A187891(n)]`
-/

namespace A022092.P4823128786549978988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - (f1 (n + 1) - f1 n)

end

end A022092.P4823128786549978988

namespace A022092

/-- `A020712(n)-Δ[A187891(n)]` -/
def P4823128786549978988.Spec : Prop :=
  ∀ n, P4823128786549978988.a n = A022092 n

end A022092

/-! ## A022092.P4962134286193533338

`A022090(n)+A006355(n+1)`
-/

namespace A022092.P4962134286193533338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A006355 (n + 1)

end

end A022092.P4962134286193533338

namespace A022092

/-- `A022090(n)+A006355(n+1)` -/
def P4962134286193533338.Spec : Prop :=
  ∀ n, P4962134286193533338.a n = A022092 n

end A022092

/-!
# A022093: Fibonacci sequence beginning 0, 10.

The programs for A022093, the canonical program `A022093.P316154037428549231` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022093 has offset 0).

The definition of A022093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022093.P316154037428549231

`10*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022093

/-- `10*A000045(n)` -/
def P316154037428549231.Spec : Prop :=
  ∀ n, P316154037428549231.a n = A022093 n

theorem P316154037428549231.correct : P316154037428549231.Spec := by
  intro n
  simp only [A022093]

end A022093

/-! ## A022093.P294431100426470836

`ogf(10x/(1-x-x^2))`
-/

namespace A022093.P294431100426470836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, -1, -1] n

end

end A022093.P294431100426470836

namespace A022093

/-- `ogf(10x/(1-x-x^2))` -/
def P294431100426470836.Spec : Prop :=
  ∀ n, P294431100426470836.a n = A022093 n

end A022093

/-! ## A022093.P8157215533212784766

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=10`
-/

namespace A022093.P8157215533212784766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022093.P8157215533212784766

namespace A022093

/-- `a(n-1)+a(n-2)` -/
def P8157215533212784766.Spec : Prop :=
  ∀ n, (P8157215533212784766.a n : ℤ) = A022093 n

end A022093

/-! ## A022093.P7245678496543678209

`a(n-1)-floor(-a(n-2))` with `a(0)=0, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A022093.P7245678496543678209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022093.P7245678496543678209

namespace A022093

/-- `a(n-1)-floor(-a(n-2))` -/
def P7245678496543678209.Spec : Prop :=
  ∀ n, P7245678496543678209.a n = A022093 n

end A022093

/-! ## A022093.P6051009778499946993

`a(n-1)-ceil(-a(n-2))` with `a(0)=0, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A022093.P6051009778499946993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022093.P6051009778499946993

namespace A022093

/-- `a(n-1)-ceil(-a(n-2))` -/
def P6051009778499946993.Spec : Prop :=
  ∀ n, P6051009778499946993.a n = A022093 n

end A022093

/-! ## A022093.P2982030185770109833

`a(n-1)-round(-a(n-2))` with `a(0)=0, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A022093.P2982030185770109833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022093.P2982030185770109833

namespace A022093

/-- `a(n-1)-round(-a(n-2))` -/
def P2982030185770109833.Spec : Prop :=
  ∀ n, P2982030185770109833.a n = A022093 n

end A022093

/-! ## A022093.P921549175828731195

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=10, a(1)=10`
-/

namespace A022093.P921549175828731195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 10] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022093.P921549175828731195

namespace A022093

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P921549175828731195.Spec : Prop :=
  ∀ n, P921549175828731195.a n = A022093 n

end A022093

/-! ## A022093.P709040790226121143

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=10, a(2)=10`
-/

namespace A022093.P709040790226121143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 10] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022093.P709040790226121143

namespace A022093

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P709040790226121143.Spec : Prop :=
  ∀ n, P709040790226121143.a n = A022093 n

end A022093

/-! ## A022093.P3088905071072474981

`2*A022088(n)`
-/

namespace A022093.P3088905071072474981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022088 n

end

end A022093.P3088905071072474981

namespace A022093

/-- `2*A022088(n)` -/
def P3088905071072474981.Spec : Prop :=
  ∀ n, P3088905071072474981.a n = A022093 n

theorem P3088905071072474981.correct : P3088905071072474981.Spec := by
  intro n
  simp only [A022093, Nat.add_sub_cancel, A022093.P3088905071072474981.a, A022093.P316154037428549231.a, A000045, A000045.P11838749114346432762.a, A022088, A022088.P13238787405379109622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022093

/-! ## A022093.P15699002452111142638

`5*A006355(n+1)`
-/

namespace A022093.P15699002452111142638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006355 (n + 1)

end

end A022093.P15699002452111142638

namespace A022093

/-- `5*A006355(n+1)` -/
def P15699002452111142638.Spec : Prop :=
  ∀ n, P15699002452111142638.a n = A022093 n

end A022093

/-! ## A022093.P11761239243292427697

`5*A118658(n+1)`
-/

namespace A022093.P11761239243292427697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A118658 (n + 1)

end

end A022093.P11761239243292427697

namespace A022093

/-- `5*A118658(n+1)` -/
def P11761239243292427697.Spec : Prop :=
  ∀ n, P11761239243292427697.a n = A022093 n

end A022093

/-! ## A022093.P3789408868771320810

`5*(A001588(n)-1)`
-/

namespace A022093.P3789408868771320810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A001588 n - 1)

end

end A022093.P3789408868771320810

namespace A022093

/-- `5*(A001588(n)-1)` -/
def P3789408868771320810.Spec : Prop :=
  ∀ n, P3789408868771320810.a n = A022093 n

end A022093

/-! ## A022093.P16580404635451775794

`5*A198834(n+2)`
-/

namespace A022093.P16580404635451775794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A198834 (n + 2)

end

end A022093.P16580404635451775794

namespace A022093

/-- `5*A198834(n+2)` -/
def P16580404635451775794.Spec : Prop :=
  ∀ n, P16580404635451775794.a n = A022093 n

end A022093

/-! ## A022093.P15363006202313935000

`5/2*A022087(n)`
-/

namespace A022093.P15363006202313935000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A022087 n : ℚ)

end

end A022093.P15363006202313935000

namespace A022093

/-- `5/2*A022087(n)` -/
def P15363006202313935000.Spec : Prop :=
  ∀ n, P15363006202313935000.a n = (A022093 n : ℚ)

theorem P15363006202313935000.correct : P15363006202313935000.Spec := by
  intro n
  simp only [A022093, Nat.add_sub_cancel, A022093.P15363006202313935000.a, A022093.P316154037428549231.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022093

/-! ## A022093.P11225674121236136571

`5/3*A022089(n)`
-/

namespace A022093.P11225674121236136571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A022089 n : ℚ)

end

end A022093.P11225674121236136571

namespace A022093

/-- `5/3*A022089(n)` -/
def P11225674121236136571.Spec : Prop :=
  ∀ n, P11225674121236136571.a n = (A022093 n : ℚ)

theorem P11225674121236136571.correct : P11225674121236136571.Spec := by
  intro n
  simp only [A022093, Nat.add_sub_cancel, A022093.P11225674121236136571.a, A022093.P316154037428549231.a, A000045, A000045.P11838749114346432762.a, A022089, A022089.P2526634343507700002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022093

/-! ## A022093.P15234664691326558697

`5/4*A022091(n)`
-/

namespace A022093.P15234664691326558697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A022091 n : ℚ)

end

end A022093.P15234664691326558697

namespace A022093

/-- `5/4*A022091(n)` -/
def P15234664691326558697.Spec : Prop :=
  ∀ n, P15234664691326558697.a n = (A022093 n : ℚ)

theorem P15234664691326558697.correct : P15234664691326558697.Spec := by
  intro n
  simp only [A022093, Nat.add_sub_cancel, A022093.P15234664691326558697.a, A022093.P316154037428549231.a, A000045, A000045.P11838749114346432762.a, A022091, A022091.P8466803900234881799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022093

/-! ## A022093.P15781687785508784079

`5*A214927(2*(n+1))`
-/

namespace A022093.P15781687785508784079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A214927 (2 * (n + 1))

end

end A022093.P15781687785508784079

namespace A022093

/-- `5*A214927(2*(n+1))` -/
def P15781687785508784079.Spec : Prop :=
  ∀ n, P15781687785508784079.a n = A022093 n

end A022093

/-! ## A022093.P17131528113226302552

`A022092(n)+A000045(n)`
-/

namespace A022093.P17131528113226302552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A000045 n

end

end A022093.P17131528113226302552

namespace A022093

/-- `A022092(n)+A000045(n)` -/
def P17131528113226302552.Spec : Prop :=
  ∀ n, P17131528113226302552.a n = A022093 n

theorem P17131528113226302552.correct : P17131528113226302552.Spec := by
  intro n
  simp only [A022093, Nat.add_sub_cancel, A022093.P17131528113226302552.a, A022093.P316154037428549231.a, A000045, A000045.P11838749114346432762.a, A022092, A022092.P12154545116690058814.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022093

/-! ## A022093.P14405566167984394695

`A022089(n)+A022087(n)`
-/

namespace A022093.P14405566167984394695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A022087 n

end

end A022093.P14405566167984394695

namespace A022093

/-- `A022089(n)+A022087(n)` -/
def P14405566167984394695.Spec : Prop :=
  ∀ n, P14405566167984394695.a n = A022093 n

theorem P14405566167984394695.correct : P14405566167984394695.Spec := by
  intro n
  simp only [A022093, Nat.add_sub_cancel, A022093.P14405566167984394695.a, A022093.P316154037428549231.a, A000045, A000045.P11838749114346432762.a, A022087, A022087.P15759272974687768527.a, A022089, A022089.P2526634343507700002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022093

/-! ## A022093.P1531848488920586735

`A022090(n)+A022086(n)`
-/

namespace A022093.P1531848488920586735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A022086 n

end

end A022093.P1531848488920586735

namespace A022093

/-- `A022090(n)+A022086(n)` -/
def P1531848488920586735.Spec : Prop :=
  ∀ n, P1531848488920586735.a n = A022093 n

end A022093

/-!
# A022094: Sum of first prime(n) primes.

The programs for A022094, the canonical program `A022094.P5430606946720260700` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022094 has offset 1).

The definition of A022094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022094.P5430606946720260700

`A007504(A000040(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022094

/-- `A007504(A000040(n+1))` -/
def P5430606946720260700.Spec : Prop :=
  ∀ n, P5430606946720260700.a n = A022094 (n + 1)

theorem P5430606946720260700.correct : P5430606946720260700.Spec := by
  intro n
  simp only [A022094, Nat.add_sub_cancel]

end A022094

/-! ## A022094.P1427555933193691091

`A007504(Δ[A007504(n)])`
-/

namespace A022094.P1427555933193691091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (f1 (n + 1) - f1 n).toNat

end

end A022094.P1427555933193691091

namespace A022094

/-- `A007504(Δ[A007504(n)])` -/
def P1427555933193691091.Spec : Prop :=
  ∀ n, P1427555933193691091.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P5151125553487154468

`A007504(A008578(n+2))`
-/

namespace A022094.P5151125553487154468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008578 (n + 2)).toNat

end

end A022094.P5151125553487154468

namespace A022094

/-- `A007504(A008578(n+2))` -/
def P5151125553487154468.Spec : Prop :=
  ∀ n, P5151125553487154468.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P4002636715574910445

`A007504(A182986(n+2))`
-/

namespace A022094.P4002636715574910445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A182986 (n + 2)).toNat

end

end A022094.P4002636715574910445

namespace A022094

/-- `A007504(A182986(n+2))` -/
def P4002636715574910445.Spec : Prop :=
  ∀ n, P4002636715574910445.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P9643719314669553852

`A007504(A158611(n+3))`
-/

namespace A022094.P9643719314669553852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A158611 (n + 3)).toNat

end

end A022094.P9643719314669553852

namespace A022094

/-- `A007504(A158611(n+3))` -/
def P9643719314669553852.Spec : Prop :=
  ∀ n, P9643719314669553852.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P7871778552655005154

`A007504(abs(A273960(n+1)))`
-/

namespace A022094.P7871778552655005154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 |A273960 (n + 1)|.toNat

end

end A022094.P7871778552655005154

namespace A022094

/-- `A007504(abs(A273960(n+1)))` -/
def P7871778552655005154.Spec : Prop :=
  ∀ n, P7871778552655005154.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P15233988996682622977

`A007504(sqrt(A001248(n+1)))`
-/

namespace A022094.P15233988996682622977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A022094.P15233988996682622977

namespace A022094

/-- `A007504(sqrt(A001248(n+1)))` -/
def P15233988996682622977.Spec : Prop :=
  ∀ n, P15233988996682622977.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P2930993992888653072

`A007504(∑[A054541(n+1)])`
-/

namespace A022094.P2930993992888653072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022094.P2930993992888653072

namespace A022094

/-- `A007504(∑[A054541(n+1)])` -/
def P2930993992888653072.Spec : Prop :=
  ∀ n, P2930993992888653072.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P5480329132433605233

`A007504(∑[A075526(n)]+1)`
-/

namespace A022094.P5480329132433605233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A022094.P5480329132433605233

namespace A022094

/-- `A007504(∑[A075526(n)]+1)` -/
def P5480329132433605233.Spec : Prop :=
  ∀ n, P5480329132433605233.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P5630008249986571502

`A007504(record[A006530(n+2)])`
-/

namespace A022094.P5630008249986571502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022094.P5630008249986571502

namespace A022094

/-- `A007504(record[A006530(n+2)])` -/
def P5630008249986571502.Spec : Prop :=
  ∀ n, P5630008249986571502.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P14949111415068859657

`A007504(record[A008472(n+2)])`
-/

namespace A022094.P14949111415068859657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022094.P14949111415068859657

namespace A022094

/-- `A007504(record[A008472(n+2)])` -/
def P14949111415068859657.Spec : Prop :=
  ∀ n, P14949111415068859657.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P4480778923577420594

`A007504(record[A020639(n+2)])`
-/

namespace A022094.P4480778923577420594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022094.P4480778923577420594

namespace A022094

/-- `A007504(record[A020639(n+2)])` -/
def P4480778923577420594.Spec : Prop :=
  ∀ n, P4480778923577420594.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P1080205736213422442

`A007504(A006093(n+1)+1)`
-/

namespace A022094.P1080205736213422442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A006093 (n + 1) + 1).toNat

end

end A022094.P1080205736213422442

namespace A022094

/-- `A007504(A006093(n+1)+1)` -/
def P1080205736213422442.Spec : Prop :=
  ∀ n, P1080205736213422442.a n = A022094 (n + 1)

theorem P1080205736213422442.correct : P1080205736213422442.Spec := by
  intro n
  simp only [A022094, Nat.add_sub_cancel, A022094.P1080205736213422442.a, A022094.P5430606946720260700.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022094

/-! ## A022094.P12050894553685623555

`A007504(A008864(n+1)-1)`
-/

namespace A022094.P12050894553685623555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A008864 (n + 1) - 1).toNat

end

end A022094.P12050894553685623555

namespace A022094

/-- `A007504(A008864(n+1)-1)` -/
def P12050894553685623555.Spec : Prop :=
  ∀ n, P12050894553685623555.a n = A022094 (n + 1)

theorem P12050894553685623555.correct : P12050894553685623555.Spec := by
  intro n
  simp only [A022094, Nat.add_sub_cancel, A022094.P12050894553685623555.a, A022094.P5430606946720260700.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P14310834286015847203.a, A008864, A008864.P9177617808325052279.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022094

/-! ## A022094.P14364888072457270707

`A007504(A028815(n+1)-1)`
-/

namespace A022094.P14364888072457270707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A028815 (n + 1) - 1).toNat

end

end A022094.P14364888072457270707

namespace A022094

/-- `A007504(A028815(n+1)-1)` -/
def P14364888072457270707.Spec : Prop :=
  ∀ n, P14364888072457270707.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P435445432361134403

`A007504(A040976(n+1)+2)`
-/

namespace A022094.P435445432361134403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A040976 (n + 1) + 2).toNat

end

end A022094.P435445432361134403

namespace A022094

/-- `A007504(A040976(n+1)+2)` -/
def P435445432361134403.Spec : Prop :=
  ∀ n, P435445432361134403.a n = A022094 (n + 1)

theorem P435445432361134403.correct : P435445432361134403.Spec := by
  intro n
  simp only [A022094, Nat.add_sub_cancel, A022094.P435445432361134403.a, A022094.P5430606946720260700.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P14310834286015847203.a, A040976, A040976.P11599754272797435513.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022094

/-! ## A022094.P13846835491386676112

`A007504(A052147(n+1)-2)`
-/

namespace A022094.P13846835491386676112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A052147 (n + 1) - 2).toNat

end

end A022094.P13846835491386676112

namespace A022094

/-- `A007504(A052147(n+1)-2)` -/
def P13846835491386676112.Spec : Prop :=
  ∀ n, P13846835491386676112.a n = A022094 (n + 1)

theorem P13846835491386676112.correct : P13846835491386676112.Spec := by
  intro n
  simp only [A022094, Nat.add_sub_cancel, A022094.P13846835491386676112.a, A022094.P5430606946720260700.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P14310834286015847203.a, A052147, A052147.P15217781913070555828.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022094

/-! ## A022094.P6297931957037297527

`A007504(A100484(n+1)/2)`
-/

namespace A022094.P6297931957037297527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A022094.P6297931957037297527

namespace A022094

/-- `A007504(A100484(n+1)/2)` -/
def P6297931957037297527.Spec : Prop :=
  ∀ n, P6297931957037297527.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P10895720409912586748

`A007504(A001747(n+2)/2)`
-/

namespace A022094.P10895720409912586748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A022094.P10895720409912586748

namespace A022094

/-- `A007504(A001747(n+2)/2)` -/
def P10895720409912586748.Spec : Prop :=
  ∀ n, P10895720409912586748.a n = A022094 (n + 1)

end A022094

/-! ## A022094.P11729755175160727092

`A007504(A014692(n+1)+n)`
-/

namespace A022094.P11729755175160727092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A022094.P11729755175160727092

namespace A022094

/-- `A007504(A014692(n+1)+n)` -/
def P11729755175160727092.Spec : Prop :=
  ∀ n, P11729755175160727092.a n = A022094 (n + 1)

theorem P11729755175160727092.correct : P11729755175160727092.Spec := by
  intro n
  simp only [A022094, Nat.add_sub_cancel, A022094.P11729755175160727092.a, A022094.P5430606946720260700.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007504, A007504.P14310834286015847203.a, A014692, A014692.P2004927767556050134.a, A014284, A014284.P18183547548072881472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A022094

/-!
# A022095: Fibonacci sequence beginning 1, 5.

The programs for A022095, the canonical program `A022095.P17672997871501638119` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022095 has offset 0).

The definition of A022095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022095.P17672997871501638119

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022095

/-- `a(n-1)+a(n-2)` -/
def P17672997871501638119.Spec : Prop :=
  ∀ n, (P17672997871501638119.a n : ℤ) = A022095 n

theorem P17672997871501638119.correct : P17672997871501638119.Spec := by
  intro n
  simp only [A022095]

end A022095

/-! ## A022095.P8531182045710574772

`4*A000045(n)+A000045(n+1)`
-/

namespace A022095.P8531182045710574772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 n + A000045 (n + 1)

end

end A022095.P8531182045710574772

namespace A022095

/-- `4*A000045(n)+A000045(n+1)` -/
def P8531182045710574772.Spec : Prop :=
  ∀ n, P8531182045710574772.a n = A022095 n

end A022095

/-! ## A022095.P2536963705481469750

`ogf((1+4x)/(1-x-x^2))`
-/

namespace A022095.P2536963705481469750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -1, -1] n

end

end A022095.P2536963705481469750

namespace A022095

/-- `ogf((1+4x)/(1-x-x^2))` -/
def P2536963705481469750.Spec : Prop :=
  ∀ n, P2536963705481469750.a n = A022095 n

end A022095

/-! ## A022095.P16365355975663801945

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A022095.P16365355975663801945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022095.P16365355975663801945

namespace A022095

/-- `a(n-1)-floor(-a(n-2))` -/
def P16365355975663801945.Spec : Prop :=
  ∀ n, P16365355975663801945.a n = A022095 n

end A022095

/-! ## A022095.P12282652161446838480

`a(n-1)-ceil(-a(n-2))` with `a(0)=1, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A022095.P12282652161446838480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022095.P12282652161446838480

namespace A022095

/-- `a(n-1)-ceil(-a(n-2))` -/
def P12282652161446838480.Spec : Prop :=
  ∀ n, P12282652161446838480.a n = A022095 n

end A022095

/-! ## A022095.P2500810729132312225

`a(n-1)-round(-a(n-2))` with `a(0)=1, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A022095.P2500810729132312225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022095.P2500810729132312225

namespace A022095

/-- `a(n-1)-round(-a(n-2))` -/
def P2500810729132312225.Spec : Prop :=
  ∀ n, P2500810729132312225.a n = A022095 n

end A022095

/-! ## A022095.P13134846063170513489

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A022095.P13134846063170513489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022095.P13134846063170513489

namespace A022095

/-- `2*a(n-1)-a(n-3)` -/
def P13134846063170513489.Spec : Prop :=
  ∀ n, P13134846063170513489.a n = A022095 n

end A022095

/-! ## A022095.P16502128883352782307

`a(n-1)-(char[1]-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A022095.P16502128883352782307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A022095.P16502128883352782307

namespace A022095

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P16502128883352782307.Spec : Prop :=
  ∀ n, P16502128883352782307.a n = A022095 n

end A022095

/-! ## A022095.P4954292235731780188

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A022095.P4954292235731780188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A022095.P4954292235731780188

namespace A022095

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P4954292235731780188.Spec : Prop :=
  ∀ n, P4954292235731780188.a n = A022095 n

end A022095

/-! ## A022095.P7722841165440707411

`A022309(n)+1`
-/

namespace A022095.P7722841165440707411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + 1

end

end A022095.P7722841165440707411

namespace A022095

/-- `A022309(n)+1` -/
def P7722841165440707411.Spec : Prop :=
  ∀ n, P7722841165440707411.a n = A022095 n

end A022095

/-! ## A022095.P13876827222969042152

`A000285(n)+A000045(n)`
-/

namespace A022095.P13876827222969042152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + A000045 n

end

end A022095.P13876827222969042152

namespace A022095

/-- `A000285(n)+A000045(n)` -/
def P13876827222969042152.Spec : Prop :=
  ∀ n, P13876827222969042152.a n = A022095 n

end A022095

/-! ## A022095.P18020281689063473910

`A001610(n)+A001588(n)`
-/

namespace A022095.P18020281689063473910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + A001588 n

end

end A022095.P18020281689063473910

namespace A022095

/-- `A001610(n)+A001588(n)` -/
def P18020281689063473910.Spec : Prop :=
  ∀ n, P18020281689063473910.a n = A022095 n

end A022095

/-! ## A022095.P6860674889614709888

`A022308(n)+A001611(n)`
-/

namespace A022095.P6860674889614709888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A001611 n

end

end A022095.P6860674889614709888

namespace A022095

/-- `A022308(n)+A001611(n)` -/
def P6860674889614709888.Spec : Prop :=
  ∀ n, P6860674889614709888.a n = A022095 n

end A022095

/-! ## A022095.P18402614813356532376

`A152163(n)+A022089(n)`
-/

namespace A022095.P18402614813356532376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022089 n

end

end A022095.P18402614813356532376

namespace A022095

/-- `A152163(n)+A022089(n)` -/
def P18402614813356532376.Spec : Prop :=
  ∀ n, P18402614813356532376.a n = A022095 n

end A022095

/-! ## A022095.P15406857480084837751

`A212804(n)+A022088(n)`
-/

namespace A022095.P15406857480084837751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022088 n

end

end A022095.P15406857480084837751

namespace A022095

/-- `A212804(n)+A022088(n)` -/
def P15406857480084837751.Spec : Prop :=
  ∀ n, P15406857480084837751.a n = A022095 n

end A022095

/-! ## A022095.P15658806199356081762

`A022096(n)-A000045(n)`
-/

namespace A022095.P15658806199356081762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n - A000045 n

end

end A022095.P15658806199356081762

namespace A022095

/-- `A022096(n)-A000045(n)` -/
def P15658806199356081762.Spec : Prop :=
  ∀ n, P15658806199356081762.a n = A022095 n

end A022095

/-! ## A022095.P7696697545709444276

`A001060(n)-A212804(n)`
-/

namespace A022095.P7696697545709444276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n - A212804 n

end

end A022095.P7696697545709444276

namespace A022095

/-- `A001060(n)-A212804(n)` -/
def P7696697545709444276.Spec : Prop :=
  ∀ n, P7696697545709444276.a n = A022095 n

end A022095

/-! ## A022095.P3744077788994943706

`A187893(n)+∑[A000045(n)]`
-/

namespace A022095.P3744077788994943706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022095.P3744077788994943706

namespace A022095

/-- `A187893(n)+∑[A000045(n)]` -/
def P3744077788994943706.Spec : Prop :=
  ∀ n, P3744077788994943706.a n = A022095 n

end A022095

/-! ## A022095.P818643246892801483

`A020695(n)+Δ[A000032(n)]`
-/

namespace A022095.P818643246892801483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (f1 (n + 1) - f1 n)

end

end A022095.P818643246892801483

namespace A022095

/-- `A020695(n)+Δ[A000032(n)]` -/
def P818643246892801483.Spec : Prop :=
  ∀ n, P818643246892801483.a n = A022095 n

end A022095

/-! ## A022095.P2344236788588836731

`A022087(n)+A000045(n+1)`
-/

namespace A022095.P2344236788588836731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000045 (n + 1)

end

end A022095.P2344236788588836731

namespace A022095

/-- `A022087(n)+A000045(n+1)` -/
def P2344236788588836731.Spec : Prop :=
  ∀ n, P2344236788588836731.a n = A022095 n

end A022095

/-!
# A022096: Fibonacci sequence beginning 1, 6.

The programs for A022096, the canonical program `A022096.P12625714347536251379` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022096 has offset 0).

The definition of A022096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022096.P12625714347536251379

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022096

/-- `a(n-1)+a(n-2)` -/
def P12625714347536251379.Spec : Prop :=
  ∀ n, (P12625714347536251379.a n : ℤ) = A022096 n

theorem P12625714347536251379.correct : P12625714347536251379.Spec := by
  intro n
  simp only [A022096]

end A022096

/-! ## A022096.P16968068297003538577

`5*A000045(n+2)-4*A000045(n+1)`
-/

namespace A022096.P16968068297003538577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (n + 2) - 4 * A000045 (n + 1)

end

end A022096.P16968068297003538577

namespace A022096

/-- `5*A000045(n+2)-4*A000045(n+1)` -/
def P16968068297003538577.Spec : Prop :=
  ∀ n, P16968068297003538577.a n = A022096 n

end A022096

/-! ## A022096.P201571222972454296

`ogf((1+5x)/(1-x-x^2))`
-/

namespace A022096.P201571222972454296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -1, -1] n

end

end A022096.P201571222972454296

namespace A022096

/-- `ogf((1+5x)/(1-x-x^2))` -/
def P201571222972454296.Spec : Prop :=
  ∀ n, P201571222972454296.a n = A022096 n

end A022096

/-! ## A022096.P8724709701029355643

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A022096.P8724709701029355643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022096.P8724709701029355643

namespace A022096

/-- `a(n-1)-floor(-a(n-2))` -/
def P8724709701029355643.Spec : Prop :=
  ∀ n, P8724709701029355643.a n = A022096 n

end A022096

/-! ## A022096.P14021305877877922294

`a(n-1)-ceil(-a(n-2))` with `a(0)=1, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A022096.P14021305877877922294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022096.P14021305877877922294

namespace A022096

/-- `a(n-1)-ceil(-a(n-2))` -/
def P14021305877877922294.Spec : Prop :=
  ∀ n, P14021305877877922294.a n = A022096 n

end A022096

/-! ## A022096.P9973857972482896774

`a(n-1)-round(-a(n-2))` with `a(0)=1, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A022096.P9973857972482896774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022096.P9973857972482896774

namespace A022096

/-- `a(n-1)-round(-a(n-2))` -/
def P9973857972482896774.Spec : Prop :=
  ∀ n, P9973857972482896774.a n = A022096 n

end A022096

/-! ## A022096.P5022369908542200938

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A022096.P5022369908542200938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022096.P5022369908542200938

namespace A022096

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P5022369908542200938.Spec : Prop :=
  ∀ n, P5022369908542200938.a n = A022096 n

end A022096

/-! ## A022096.P11142919426210686266

`A022310(n)+1`
-/

namespace A022096.P11142919426210686266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + 1

end

end A022096.P11142919426210686266

namespace A022096

/-- `A022310(n)+1` -/
def P11142919426210686266.Spec : Prop :=
  ∀ n, P11142919426210686266.a n = A022096 n

end A022096

/-! ## A022096.P13067122625148753376

`A022095(n)+A000045(n)`
-/

namespace A022096.P13067122625148753376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A000045 n

end

end A022096.P13067122625148753376

namespace A022096

/-- `A022095(n)+A000045(n)` -/
def P13067122625148753376.Spec : Prop :=
  ∀ n, P13067122625148753376.a n = A022096 n

end A022096

/-! ## A022096.P18039286786013293029

`A022308(n)+A001588(n)`
-/

namespace A022096.P18039286786013293029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A001588 n

end

end A022096.P18039286786013293029

namespace A022096

/-- `A022308(n)+A001588(n)` -/
def P18039286786013293029.Spec : Prop :=
  ∀ n, P18039286786013293029.a n = A022096 n

end A022096

/-! ## A022096.P17546218118459807257

`A022309(n)+A001611(n)`
-/

namespace A022096.P17546218118459807257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A001611 n

end

end A022096.P17546218118459807257

namespace A022096

/-- `A022309(n)+A001611(n)` -/
def P17546218118459807257.Spec : Prop :=
  ∀ n, P17546218118459807257.a n = A022096 n

end A022096

/-! ## A022096.P16481697145728545099

`A152163(n)+A022090(n)`
-/

namespace A022096.P16481697145728545099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022090 n

end

end A022096.P16481697145728545099

namespace A022096

/-- `A152163(n)+A022090(n)` -/
def P16481697145728545099.Spec : Prop :=
  ∀ n, P16481697145728545099.a n = A022096 n

end A022096

/-! ## A022096.P15278449887324478097

`A187891(n)+A001595(n)`
-/

namespace A022096.P15278449887324478097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A001595 n

end

end A022096.P15278449887324478097

namespace A022096

/-- `A187891(n)+A001595(n)` -/
def P15278449887324478097.Spec : Prop :=
  ∀ n, P15278449887324478097.a n = A022096 n

end A022096

/-! ## A022096.P3572720313729785024

`A187893(n)+A001610(n)`
-/

namespace A022096.P3572720313729785024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A001610 n

end

end A022096.P3572720313729785024

namespace A022096

/-- `A187893(n)+A001610(n)` -/
def P3572720313729785024.Spec : Prop :=
  ∀ n, P3572720313729785024.a n = A022096 n

end A022096

/-! ## A022096.P9277991048510302079

`A212804(n)+A022089(n)`
-/

namespace A022096.P9277991048510302079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022089 n

end

end A022096.P9277991048510302079

namespace A022096

/-- `A212804(n)+A022089(n)` -/
def P9277991048510302079.Spec : Prop :=
  ∀ n, P9277991048510302079.a n = A022096 n

end A022096

/-! ## A022096.P14094097508447976614

`A022089(n)+Δ[A000045(n)]`
-/

namespace A022096.P14094097508447976614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + (f1 (n + 1) - f1 n)

end

end A022096.P14094097508447976614

namespace A022096

/-- `A022089(n)+Δ[A000045(n)]` -/
def P14094097508447976614.Spec : Prop :=
  ∀ n, P14094097508447976614.a n = A022096 n

end A022096

/-! ## A022096.P99643367140751317

`A006355(n+1)+A000285(n)`
-/

namespace A022096.P99643367140751317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A000285 n

end

end A022096.P99643367140751317

namespace A022096

/-- `A006355(n+1)+A000285(n)` -/
def P99643367140751317.Spec : Prop :=
  ∀ n, P99643367140751317.a n = A022096 n

end A022096

/-! ## A022096.P11839198688792650267

`A022086(n)+A000032(n+1)`
-/

namespace A022096.P11839198688792650267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A000032 (n + 1)

end

end A022096.P11839198688792650267

namespace A022096

/-- `A022086(n)+A000032(n+1)` -/
def P11839198688792650267.Spec : Prop :=
  ∀ n, P11839198688792650267.a n = A022096 n

end A022096

/-! ## A022096.P16625808468566372418

`A022088(n)+A000045(n+1)`
-/

namespace A022096.P16625808468566372418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A000045 (n + 1)

end

end A022096.P16625808468566372418

namespace A022096

/-- `A022088(n)+A000045(n+1)` -/
def P16625808468566372418.Spec : Prop :=
  ∀ n, P16625808468566372418.a n = A022096 n

end A022096

/-! ## A022096.P8650142348391336402

`A022086(n)+A000204(n+1)`
-/

namespace A022096.P8650142348391336402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A000204 (n + 1)

end

end A022096.P8650142348391336402

namespace A022096

/-- `A022086(n)+A000204(n+1)` -/
def P8650142348391336402.Spec : Prop :=
  ∀ n, P8650142348391336402.a n = A022096 n

end A022096

/-!
# A022097: Fibonacci sequence beginning 1, 7.

The programs for A022097, the canonical program `A022097.P3484395744453812616` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022097 has offset 0).

The definition of A022097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022097.P3484395744453812616

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022097

/-- `a(n-1)+a(n-2)` -/
def P3484395744453812616.Spec : Prop :=
  ∀ n, (P3484395744453812616.a n : ℤ) = A022097 n

theorem P3484395744453812616.correct : P3484395744453812616.Spec := by
  intro n
  simp only [A022097]

end A022097

/-! ## A022097.P6498928555788570113

`6*A000045(n)+A000045(n+1)`
-/

namespace A022097.P6498928555788570113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 n + A000045 (n + 1)

end

end A022097.P6498928555788570113

namespace A022097

/-- `6*A000045(n)+A000045(n+1)` -/
def P6498928555788570113.Spec : Prop :=
  ∀ n, P6498928555788570113.a n = A022097 n

end A022097

/-! ## A022097.P17742080782127193180

`ogf((1+6x)/(1-x-x^2))`
-/

namespace A022097.P17742080782127193180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -1, -1] n

end

end A022097.P17742080782127193180

namespace A022097

/-- `ogf((1+6x)/(1-x-x^2))` -/
def P17742080782127193180.Spec : Prop :=
  ∀ n, P17742080782127193180.a n = A022097 n

end A022097

/-! ## A022097.P17472722785595417166

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A022097.P17472722785595417166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022097.P17472722785595417166

namespace A022097

/-- `2*a(n-1)-a(n-3)` -/
def P17472722785595417166.Spec : Prop :=
  ∀ n, P17472722785595417166.a n = A022097 n

end A022097

/-! ## A022097.P2789560154574327380

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=1, a(1)=7, a(2)=2`
-/

namespace A022097.P2789560154574327380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022097.P2789560154574327380

namespace A022097

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P2789560154574327380.Spec : Prop :=
  ∀ n, P2789560154574327380.a n = A022097 n

end A022097

/-! ## A022097.P16932764065380096766

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A022097.P16932764065380096766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022097.P16932764065380096766

namespace A022097

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P16932764065380096766.Spec : Prop :=
  ∀ n, P16932764065380096766.a n = A022097 n

end A022097

/-! ## A022097.P14646453766509980132

`A022311(n)+1`
-/

namespace A022097.P14646453766509980132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + 1

end

end A022097.P14646453766509980132

namespace A022097

/-- `A022311(n)+1` -/
def P14646453766509980132.Spec : Prop :=
  ∀ n, P14646453766509980132.a n = A022097 n

end A022097

/-! ## A022097.P4861148669379273349

`A022096(n)+A000045(n)`
-/

namespace A022097.P4861148669379273349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A000045 n

end

end A022097.P4861148669379273349

namespace A022097

/-- `A022096(n)+A000045(n)` -/
def P4861148669379273349.Spec : Prop :=
  ∀ n, P4861148669379273349.a n = A022097 n

end A022097

/-! ## A022097.P9275084558047110012

`A022086(n)+A000285(n)`
-/

namespace A022097.P9275084558047110012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A000285 n

end

end A022097.P9275084558047110012

namespace A022097

/-- `A022086(n)+A000285(n)` -/
def P9275084558047110012.Spec : Prop :=
  ∀ n, P9275084558047110012.a n = A022097 n

end A022097

/-! ## A022097.P11958636422069992875

`A022309(n)+A001588(n)`
-/

namespace A022097.P11958636422069992875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A001588 n

end

end A022097.P11958636422069992875

namespace A022097

/-- `A022309(n)+A001588(n)` -/
def P11958636422069992875.Spec : Prop :=
  ∀ n, P11958636422069992875.a n = A022097 n

end A022097

/-! ## A022097.P6721736296074559894

`A022310(n)+A001611(n)`
-/

namespace A022097.P6721736296074559894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A001611 n

end

end A022097.P6721736296074559894

namespace A022097

/-- `A022310(n)+A001611(n)` -/
def P6721736296074559894.Spec : Prop :=
  ∀ n, P6721736296074559894.a n = A022097 n

end A022097

/-! ## A022097.P17035246542831735994

`A152163(n)+A022091(n)`
-/

namespace A022097.P17035246542831735994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022091 n

end

end A022097.P17035246542831735994

namespace A022097

/-- `A152163(n)+A022091(n)` -/
def P17035246542831735994.Spec : Prop :=
  ∀ n, P17035246542831735994.a n = A022097 n

end A022097

/-! ## A022097.P1330248100097114788

`A187892(n)+A001595(n)`
-/

namespace A022097.P1330248100097114788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A001595 n

end

end A022097.P1330248100097114788

namespace A022097

/-- `A187892(n)+A001595(n)` -/
def P1330248100097114788.Spec : Prop :=
  ∀ n, P1330248100097114788.a n = A022097 n

end A022097

/-! ## A022097.P8897835039016811748

`A187893(n)+A022308(n)`
-/

namespace A022097.P8897835039016811748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022308 n

end

end A022097.P8897835039016811748

namespace A022097

/-- `A187893(n)+A022308(n)` -/
def P8897835039016811748.Spec : Prop :=
  ∀ n, P8897835039016811748.a n = A022097 n

end A022097

/-! ## A022097.P17163560646829778631

`A212804(n)+A022090(n)`
-/

namespace A022097.P17163560646829778631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022090 n

end

end A022097.P17163560646829778631

namespace A022097

/-- `A212804(n)+A022090(n)` -/
def P17163560646829778631.Spec : Prop :=
  ∀ n, P17163560646829778631.a n = A022097 n

end A022097

/-! ## A022097.P16779781627259895177

`A022098(n)-A000045(n)`
-/

namespace A022097.P16779781627259895177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n - A000045 n

end

end A022097.P16779781627259895177

namespace A022097

/-- `A022098(n)-A000045(n)` -/
def P16779781627259895177.Spec : Prop :=
  ∀ n, P16779781627259895177.a n = A022097 n

end A022097

/-! ## A022097.P6110669885233014790

`A022121(n)-A000032(n)`
-/

namespace A022097.P6110669885233014790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n - A000032 n

end

end A022097.P6110669885233014790

namespace A022097

/-- `A022121(n)-A000032(n)` -/
def P6110669885233014790.Spec : Prop :=
  ∀ n, P6110669885233014790.a n = A022097 n

end A022097

/-! ## A022097.P5988461661239307157

`A022323(n)-A001610(n)`
-/

namespace A022097.P5988461661239307157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A001610 n

end

end A022097.P5988461661239307157

namespace A022097

/-- `A022323(n)-A001610(n)` -/
def P5988461661239307157.Spec : Prop :=
  ∀ n, P5988461661239307157.a n = A022097 n

end A022097

/-! ## A022097.P12857047532525092759

`A022130(n)-A013655(n)`
-/

namespace A022097.P12857047532525092759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n - A013655 n

end

end A022097.P12857047532525092759

namespace A022097

/-- `A022130(n)-A013655(n)` -/
def P12857047532525092759.Spec : Prop :=
  ∀ n, P12857047532525092759.a n = A022097 n

end A022097

/-! ## A022097.P3990539517630212607

`A022122(n)-A020695(n)`
-/

namespace A022097.P3990539517630212607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - A020695 n

end

end A022097.P3990539517630212607

namespace A022097

/-- `A022122(n)-A020695(n)` -/
def P3990539517630212607.Spec : Prop :=
  ∀ n, P3990539517630212607.a n = A022097 n

end A022097

/-!
# A022098: Fibonacci sequence beginning 1, 8.

The programs for A022098, the canonical program `A022098.P1510917254586767225` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022098 has offset 0).

The definition of A022098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022098.P1510917254586767225

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022098

/-- `a(n-1)+a(n-2)` -/
def P1510917254586767225.Spec : Prop :=
  ∀ n, (P1510917254586767225.a n : ℤ) = A022098 n

theorem P1510917254586767225.correct : P1510917254586767225.Spec := by
  intro n
  simp only [A022098]

end A022098

/-! ## A022098.P8660339237103057957

`7*A000045(n)+A000045(n+1)`
-/

namespace A022098.P8660339237103057957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000045 n + A000045 (n + 1)

end

end A022098.P8660339237103057957

namespace A022098

/-- `7*A000045(n)+A000045(n+1)` -/
def P8660339237103057957.Spec : Prop :=
  ∀ n, P8660339237103057957.a n = A022098 n

end A022098

/-! ## A022098.P16586010261671749272

`ogf((1+7x)/(1-x-x^2))`
-/

namespace A022098.P16586010261671749272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -1, -1] n

end

end A022098.P16586010261671749272

namespace A022098

/-- `ogf((1+7x)/(1-x-x^2))` -/
def P16586010261671749272.Spec : Prop :=
  ∀ n, P16586010261671749272.a n = A022098 n

end A022098

/-! ## A022098.P8856381501029141897

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A022098.P8856381501029141897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022098.P8856381501029141897

namespace A022098

/-- `a(n-1)-floor(-a(n-2))` -/
def P8856381501029141897.Spec : Prop :=
  ∀ n, P8856381501029141897.a n = A022098 n

end A022098

/-! ## A022098.P1505311428953973195

`a(n-1)-ceil(-a(n-2))` with `a(0)=1, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A022098.P1505311428953973195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022098.P1505311428953973195

namespace A022098

/-- `a(n-1)-ceil(-a(n-2))` -/
def P1505311428953973195.Spec : Prop :=
  ∀ n, P1505311428953973195.a n = A022098 n

end A022098

/-! ## A022098.P2527969881888654639

`a(n-1)-round(-a(n-2))` with `a(0)=1, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A022098.P2527969881888654639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022098.P2527969881888654639

namespace A022098

/-- `a(n-1)-round(-a(n-2))` -/
def P2527969881888654639.Spec : Prop :=
  ∀ n, P2527969881888654639.a n = A022098 n

end A022098

/-! ## A022098.P9148409617325431132

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=8, a(2)=9`
-/

namespace A022098.P9148409617325431132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022098.P9148409617325431132

namespace A022098

/-- `2*a(n-1)-a(n-3)` -/
def P9148409617325431132.Spec : Prop :=
  ∀ n, P9148409617325431132.a n = A022098 n

end A022098

/-! ## A022098.P3593187906355574737

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=8, a(2)=9`
-/

namespace A022098.P3593187906355574737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 9] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022098.P3593187906355574737

namespace A022098

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P3593187906355574737.Spec : Prop :=
  ∀ n, P3593187906355574737.a n = A022098 n

end A022098

/-! ## A022098.P1305509537526174667

`A022312(n)+1`
-/

namespace A022098.P1305509537526174667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + 1

end

end A022098.P1305509537526174667

namespace A022098

/-- `A022312(n)+1` -/
def P1305509537526174667.Spec : Prop :=
  ∀ n, P1305509537526174667.a n = A022098 n

end A022098

/-! ## A022098.P7547365937845311021

`A022097(n)+A000045(n)`
-/

namespace A022098.P7547365937845311021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A000045 n

end

end A022098.P7547365937845311021

namespace A022098

/-- `A022097(n)+A000045(n)` -/
def P7547365937845311021.Spec : Prop :=
  ∀ n, P7547365937845311021.a n = A022098 n

end A022098

/-! ## A022098.P16094410338967794927

`A022087(n)+A000285(n)`
-/

namespace A022098.P16094410338967794927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000285 n

end

end A022098.P16094410338967794927

namespace A022098

/-- `A022087(n)+A000285(n)` -/
def P16094410338967794927.Spec : Prop :=
  ∀ n, P16094410338967794927.a n = A022098 n

end A022098

/-! ## A022098.P8172851604161019485

`A022310(n)+A001588(n)`
-/

namespace A022098.P8172851604161019485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A001588 n

end

end A022098.P8172851604161019485

namespace A022098

/-- `A022310(n)+A001588(n)` -/
def P8172851604161019485.Spec : Prop :=
  ∀ n, P8172851604161019485.a n = A022098 n

end A022098

/-! ## A022098.P9495595006871787017

`A022311(n)+A001611(n)`
-/

namespace A022098.P9495595006871787017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A001611 n

end

end A022098.P9495595006871787017

namespace A022098

/-- `A022311(n)+A001611(n)` -/
def P9495595006871787017.Spec : Prop :=
  ∀ n, P9495595006871787017.a n = A022098 n

end A022098

/-! ## A022098.P2040565656534464788

`A022095(n)+A022086(n)`
-/

namespace A022098.P2040565656534464788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022086 n

end

end A022098.P2040565656534464788

namespace A022098

/-- `A022095(n)+A022086(n)` -/
def P2040565656534464788.Spec : Prop :=
  ∀ n, P2040565656534464788.a n = A022098 n

end A022098

/-! ## A022098.P16193783401955332960

`A152163(n)+A022092(n)`
-/

namespace A022098.P16193783401955332960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022092 n

end

end A022098.P16193783401955332960

namespace A022098

/-- `A152163(n)+A022092(n)` -/
def P16193783401955332960.Spec : Prop :=
  ∀ n, P16193783401955332960.a n = A022098 n

end A022098

/-! ## A022098.P10703090787736299578

`A187893(n)+A022309(n)`
-/

namespace A022098.P10703090787736299578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022309 n

end

end A022098.P10703090787736299578

namespace A022098

/-- `A187893(n)+A022309(n)` -/
def P10703090787736299578.Spec : Prop :=
  ∀ n, P10703090787736299578.a n = A022098 n

end A022098

/-! ## A022098.P2561341376552054403

`A212804(n)+A022091(n)`
-/

namespace A022098.P2561341376552054403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022091 n

end

end A022098.P2561341376552054403

namespace A022098

/-- `A212804(n)+A022091(n)` -/
def P2561341376552054403.Spec : Prop :=
  ∀ n, P2561341376552054403.a n = A022098 n

end A022098

/-! ## A022098.P13665735291593181437

`A022099(n)-A000045(n)`
-/

namespace A022098.P13665735291593181437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n - A000045 n

end

end A022098.P13665735291593181437

namespace A022098

/-- `A022099(n)-A000045(n)` -/
def P13665735291593181437.Spec : Prop :=
  ∀ n, P13665735291593181437.a n = A022098 n

end A022098

/-! ## A022098.P7324889172973662750

`A022379(n)-A000032(n)`
-/

namespace A022098.P7324889172973662750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n - A000032 n

end

end A022098.P7324889172973662750

namespace A022098

/-- `A022379(n)-A000032(n)` -/
def P7324889172973662750.Spec : Prop :=
  ∀ n, P7324889172973662750.a n = A022098 n

end A022098

/-! ## A022098.P4984323740365880070

`A022101(n)-A022086(n)`
-/

namespace A022098.P4984323740365880070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - A022086 n

end

end A022098.P4984323740365880070

namespace A022098

/-- `A022101(n)-A022086(n)` -/
def P4984323740365880070.Spec : Prop :=
  ∀ n, P4984323740365880070.a n = A022098 n

end A022098

/-!
# A022099: Fibonacci sequence beginning 1, 9.

The programs for A022099, the canonical program `A022099.P12234569651380880048` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022099 has offset 0).

The definition of A022099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022099.P12234569651380880048

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022099

/-- `a(n-1)+a(n-2)` -/
def P12234569651380880048.Spec : Prop :=
  ∀ n, (P12234569651380880048.a n : ℤ) = A022099 n

theorem P12234569651380880048.correct : P12234569651380880048.Spec := by
  intro n
  simp only [A022099]

end A022099

/-! ## A022099.P15985971657717355409

`8*A000045(n)+A000045(n+1)`
-/

namespace A022099.P15985971657717355409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000045 n + A000045 (n + 1)

end

end A022099.P15985971657717355409

namespace A022099

/-- `8*A000045(n)+A000045(n+1)` -/
def P15985971657717355409.Spec : Prop :=
  ∀ n, P15985971657717355409.a n = A022099 n

end A022099

/-! ## A022099.P12776587044633421476

`ogf((1+8x)/(1-x-x^2))`
-/

namespace A022099.P12776587044633421476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, -1, -1] n

end

end A022099.P12776587044633421476

namespace A022099

/-- `ogf((1+8x)/(1-x-x^2))` -/
def P12776587044633421476.Spec : Prop :=
  ∀ n, P12776587044633421476.a n = A022099 n

end A022099

/-! ## A022099.P146150829343614535

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=9, a(2)=10`
-/

namespace A022099.P146150829343614535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022099.P146150829343614535

namespace A022099

/-- `2*a(n-1)-a(n-3)` -/
def P146150829343614535.Spec : Prop :=
  ∀ n, P146150829343614535.a n = A022099 n

end A022099

/-! ## A022099.P8223219729141176436

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=9, a(2)=10`
-/

namespace A022099.P8223219729141176436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 10] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022099.P8223219729141176436

namespace A022099

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P8223219729141176436.Spec : Prop :=
  ∀ n, P8223219729141176436.a n = A022099 n

end A022099

/-! ## A022099.P1677885850034924736

`A022313(n)+1`
-/

namespace A022099.P1677885850034924736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + 1

end

end A022099.P1677885850034924736

namespace A022099

/-- `A022313(n)+1` -/
def P1677885850034924736.Spec : Prop :=
  ∀ n, P1677885850034924736.a n = A022099 n

end A022099

/-! ## A022099.P3985453708084767453

`A022098(n)+A000045(n)`
-/

namespace A022099.P3985453708084767453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A000045 n

end

end A022099.P3985453708084767453

namespace A022099

/-- `A022098(n)+A000045(n)` -/
def P3985453708084767453.Spec : Prop :=
  ∀ n, P3985453708084767453.a n = A022099 n

end A022099

/-! ## A022099.P11447353682129937291

`A022088(n)+A000285(n)`
-/

namespace A022099.P11447353682129937291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A000285 n

end

end A022099.P11447353682129937291

namespace A022099

/-- `A022088(n)+A000285(n)` -/
def P11447353682129937291.Spec : Prop :=
  ∀ n, P11447353682129937291.a n = A022099 n

end A022099

/-! ## A022099.P288230795366852449

`A022311(n)+A001588(n)`
-/

namespace A022099.P288230795366852449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A001588 n

end

end A022099.P288230795366852449

namespace A022099

/-- `A022311(n)+A001588(n)` -/
def P288230795366852449.Spec : Prop :=
  ∀ n, P288230795366852449.a n = A022099 n

end A022099

/-! ## A022099.P3841864218266826153

`A022312(n)+A001611(n)`
-/

namespace A022099.P3841864218266826153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A001611 n

end

end A022099.P3841864218266826153

namespace A022099

/-- `A022312(n)+A001611(n)` -/
def P3841864218266826153.Spec : Prop :=
  ∀ n, P3841864218266826153.a n = A022099 n

end A022099

/-! ## A022099.P9300835782031809828

`A022095(n)+A022087(n)`
-/

namespace A022099.P9300835782031809828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A022087 n

end

end A022099.P9300835782031809828

namespace A022099

/-- `A022095(n)+A022087(n)` -/
def P9300835782031809828.Spec : Prop :=
  ∀ n, P9300835782031809828.a n = A022099 n

end A022099

/-! ## A022099.P9993314943294421468

`A022096(n)+A022086(n)`
-/

namespace A022099.P9993314943294421468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A022086 n

end

end A022099.P9993314943294421468

namespace A022099

/-- `A022096(n)+A022086(n)` -/
def P9993314943294421468.Spec : Prop :=
  ∀ n, P9993314943294421468.a n = A022099 n

end A022099

/-! ## A022099.P17009852690854648240

`A152163(n)+A022093(n)`
-/

namespace A022099.P17009852690854648240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022093 n

end

end A022099.P17009852690854648240

namespace A022099

/-- `A152163(n)+A022093(n)` -/
def P17009852690854648240.Spec : Prop :=
  ∀ n, P17009852690854648240.a n = A022099 n

end A022099

/-! ## A022099.P6446725432004943745

`A187891(n)+A022318(n)`
-/

namespace A022099.P6446725432004943745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022318 n

end

end A022099.P6446725432004943745

namespace A022099

/-- `A187891(n)+A022318(n)` -/
def P6446725432004943745.Spec : Prop :=
  ∀ n, P6446725432004943745.a n = A022099 n

end A022099

/-! ## A022099.P13922190282545005905

`A187893(n)+A022310(n)`
-/

namespace A022099.P13922190282545005905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022310 n

end

end A022099.P13922190282545005905

namespace A022099

/-- `A187893(n)+A022310(n)` -/
def P13922190282545005905.Spec : Prop :=
  ∀ n, P13922190282545005905.a n = A022099 n

end A022099

/-! ## A022099.P8413811939015020753

`A212804(n)+A022092(n)`
-/

namespace A022099.P8413811939015020753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022092 n

end

end A022099.P8413811939015020753

namespace A022099

/-- `A212804(n)+A022092(n)` -/
def P8413811939015020753.Spec : Prop :=
  ∀ n, P8413811939015020753.a n = A022099 n

end A022099

/-! ## A022099.P4115887856649880624

`A022100(n)-A000045(n)`
-/

namespace A022099.P4115887856649880624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - A000045 n

end

end A022099.P4115887856649880624

namespace A022099

/-- `A022100(n)-A000045(n)` -/
def P4115887856649880624.Spec : Prop :=
  ∀ n, P4115887856649880624.a n = A022099 n

end A022099

/-! ## A022099.P11923608558963012695

`A022122(n)-A000032(n)`
-/

namespace A022099.P11923608558963012695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - A000032 n

end

end A022099.P11923608558963012695

namespace A022099

/-- `A022122(n)-A000032(n)` -/
def P11923608558963012695.Spec : Prop :=
  ∀ n, P11923608558963012695.a n = A022099 n

end A022099

/-! ## A022099.P9565994180153983833

`A294157(n)-A152163(n)`
-/

namespace A022099.P9565994180153983833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n - A152163 n

end

end A022099.P9565994180153983833

namespace A022099

/-- `A294157(n)-A152163(n)` -/
def P9565994180153983833.Spec : Prop :=
  ∀ n, P9565994180153983833.a n = A022099 n

end A022099

/-! ## A022099.P9695475993340424904

`A022089(n)+A000032(n+1)`
-/

namespace A022099.P9695475993340424904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A000032 (n + 1)

end

end A022099.P9695475993340424904

namespace A022099

/-- `A022089(n)+A000032(n+1)` -/
def P9695475993340424904.Spec : Prop :=
  ∀ n, P9695475993340424904.a n = A022099 n

end A022099

