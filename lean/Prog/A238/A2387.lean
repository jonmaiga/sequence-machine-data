import SequenceMachineLib.Basic
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A238702: Sum of the smallest parts of the partitions of 4n into 4 parts.

The programs for A238702, the canonical program `A238702.P3333028660072867341` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238702 has offset 1).

The definition of A238702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238702.P3333028660072867341

`∑[∑[round((4*n+3)²/12)]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238702

/-- `∑[∑[round((4*n+3)²/12)]]` -/
def P3333028660072867341.Spec : Prop :=
  ∀ n, P3333028660072867341.a n = A238702 (n + 1)

theorem P3333028660072867341.correct : P3333028660072867341.Spec := by
  intro n
  simp only [A238702, Nat.add_sub_cancel]

end A238702

/-! ## A238702.P18165720003683397327

`or(∑[A238340(n+1)], char[2])`
-/

namespace A238702.P18165720003683397327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238702.P18165720003683397327

namespace A238702

/-- `or(∑[A238340(n+1)], char[2])` -/
def P18165720003683397327.Spec : Prop :=
  ∀ n, P18165720003683397327.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P14100853363219713685

`A238706(n+1)+ceil((n+1)*(4*n+2)/3)`
-/

namespace A238702.P14100853363219713685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238706 (n + 1) + ⌈((n + 1) * (4 * n + 2) : ℚ) / 3⌉

end

end A238702.P14100853363219713685

namespace A238702

/-- `A238706(n+1)+ceil((n+1)*(4*n+2)/3)` -/
def P14100853363219713685.Spec : Prop :=
  ∀ n, P14100853363219713685.a n = A238702 (n + 1)

theorem P14100853363219713685.correct : P14100853363219713685.Spec := by
  intro n
  simp only [A238702, Nat.add_sub_cancel, A238702.P14100853363219713685.a, A238702.P3333028660072867341.f2, A238702.P3333028660072867341.f1, A238702.P3333028660072867341.a, A238706, A238706.P10107481637763201362.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A238702

/-! ## A238702.P17735493533844758648

`∑[2*A092498(n)]-A092498(n)`
-/

namespace A238702.P17735493533844758648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092498 n

end

end A238702.P17735493533844758648

namespace A238702

/-- `∑[2*A092498(n)]-A092498(n)` -/
def P17735493533844758648.Spec : Prop :=
  ∀ n, P17735493533844758648.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P12861796952268763627

`A238328(n+1)-A243011(n+1)`
-/

namespace A238702.P12861796952268763627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - A243011 (n + 1)

end

end A238702.P12861796952268763627

namespace A238702

/-- `A238328(n+1)-A243011(n+1)` -/
def P12861796952268763627.Spec : Prop :=
  ∀ n, P12861796952268763627.a n = A238702 (n + 1)

theorem P12861796952268763627.correct : P12861796952268763627.Spec := by
  intro n
  simp only [A238702, Nat.add_sub_cancel, A238702.P12861796952268763627.a, A238702.P3333028660072867341.f2, A238702.P3333028660072867341.f1, A238702.P3333028660072867341.a, A238328, A238328.P7282730348117426873.a, A243011, A243011.P10761689159614172034.a, A238340, A238340.P10150426947753049133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A238702

/-! ## A238702.P4353681481233217016

`∑[A238340(n+1)]%A238328(n+1)`
-/

namespace A238702.P4353681481233217016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A238328 (n + 1))

end

end A238702.P4353681481233217016

namespace A238702

/-- `∑[A238340(n+1)]%A238328(n+1)` -/
def P4353681481233217016.Spec : Prop :=
  ∀ n, P4353681481233217016.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P14427082652267935030

`abs(A238706(n+1)+∑[A047539(n+1)-1])`
-/

namespace A238702.P14427082652267935030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047539 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238706 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A238702.P14427082652267935030

namespace A238702

/-- `abs(A238706(n+1)+∑[A047539(n+1)-1])` -/
def P14427082652267935030.Spec : Prop :=
  ∀ n, P14427082652267935030.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P9176458404732644853

`A239056(n+1)+A238706(n+1)-A239057(n+1)`
-/

namespace A238702.P9176458404732644853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) + (A238706 (n + 1) - A239057 (n + 1))

end

end A238702.P9176458404732644853

namespace A238702

/-- `A239056(n+1)+A238706(n+1)-A239057(n+1)` -/
def P9176458404732644853.Spec : Prop :=
  ∀ n, P9176458404732644853.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P4523356474359775226

`A239059(n+1)+A238706(n+1)-A239195(n+1)`
-/

namespace A238702.P4523356474359775226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239059 (n + 1) + (A238706 (n + 1) - A239195 (n + 1))

end

end A238702.P4523356474359775226

namespace A238702

/-- `A239059(n+1)+A238706(n+1)-A239195(n+1)` -/
def P4523356474359775226.Spec : Prop :=
  ∀ n, P4523356474359775226.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P17481308710286191272

`abs(A238706(n+1)+∑[A047480(n+2)-4])`
-/

namespace A238702.P17481308710286191272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238706 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A238702.P17481308710286191272

namespace A238702

/-- `abs(A238706(n+1)+∑[A047480(n+2)-4])` -/
def P17481308710286191272.Spec : Prop :=
  ∀ n, P17481308710286191272.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P11550495714469478543

`A014126(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A238702.P11550495714469478543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014126 (2 * n) + a (n - 1)

end

end A238702.P11550495714469478543

namespace A238702

/-- `A014126(2*n)+a(n-1)` -/
def P11550495714469478543.Spec : Prop :=
  ∀ n, P11550495714469478543.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P9479885640926845103

`and(1, n+1)!*∑[∑[A007980(2*n)]]`
-/

namespace A238702.P9479885640926845103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 (n + 1)) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238702.P9479885640926845103

namespace A238702

/-- `and(1, n+1)!*∑[∑[A007980(2*n)]]` -/
def P9479885640926845103.Spec : Prop :=
  ∀ n, P9479885640926845103.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P6547087932584503839

`or(∑[A014126(2*n)], A000007(n))`
-/

namespace A238702.P6547087932584503839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A238702.P6547087932584503839

namespace A238702

/-- `or(∑[A014126(2*n)], A000007(n))` -/
def P6547087932584503839.Spec : Prop :=
  ∀ n, P6547087932584503839.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P16612040862780352875

`∑[A014126(2*n)]%A238328(n+1)`
-/

namespace A238702.P16612040862780352875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A238328 (n + 1))

end

end A238702.P16612040862780352875

namespace A238702

/-- `∑[A014126(2*n)]%A238328(n+1)` -/
def P16612040862780352875.Spec : Prop :=
  ∀ n, P16612040862780352875.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P7980172377820485733

`∑[A014126(A005843(n))]+(2*n)%2`
-/

namespace A238702.P7980172377820485733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 * n % 2 : ℕ) : ℤ)

end

end A238702.P7980172377820485733

namespace A238702

/-- `∑[A014126(A005843(n))]+(2*n)%2` -/
def P7980172377820485733.Spec : Prop :=
  ∀ n, P7980172377820485733.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P418262793994056508

`2*A097701(2*n)-A000601(2*n)`
-/

namespace A238702.P418262793994056508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097701 (2 * n) - A000601 (2 * n)

end

end A238702.P418262793994056508

namespace A238702

/-- `2*A097701(2*n)-A000601(2*n)` -/
def P418262793994056508.Spec : Prop :=
  ∀ n, P418262793994056508.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P3229919170362239401

`A000007(n+1)+∑[∑[A007980(2*n)]]`
-/

namespace A238702.P3229919170362239401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238702.P3229919170362239401

namespace A238702

/-- `A000007(n+1)+∑[∑[A007980(2*n)]]` -/
def P3229919170362239401.Spec : Prop :=
  ∀ n, P3229919170362239401.a n = A238702 (n + 1)

end A238702

/-! ## A238702.P3744865157667239913

`∑[A014126(A005843(n))]^A000045(n²%(n+1))`
-/

namespace A238702.P3744865157667239913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (A005843 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000045 (n ^ 2 % (n + 1)) : ℤ)

end

end A238702.P3744865157667239913

namespace A238702

/-- `∑[A014126(A005843(n))]^A000045(n²%(n+1))` -/
def P3744865157667239913.Spec : Prop :=
  ∀ n, P3744865157667239913.a n = (A238702 (n + 1) : ℚ)

end A238702

/-! ## A238702.P8815344243320076948

`∑[∑[A008796(4*n)]]%∑[n+2]²`
-/

namespace A238702.P8815344243320076948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

end

end A238702.P8815344243320076948

namespace A238702

/-- `∑[∑[A008796(4*n)]]%∑[n+2]²` -/
def P8815344243320076948.Spec : Prop :=
  ∀ n, P8815344243320076948.a n = A238702 (n + 1)

end A238702

/-!
# A238703: a(n) = |{0 < k < n: floor(k*n/3) is prime}|.

The programs for A238703, there is no canonical definition to state claims against.
-/

/-! ## A238703.P14595544509471486022

`A128227(A135318(2*n))%A004396(n+1)`
-/

namespace A238703.P14595544509471486022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128227 (A135318 (2 * n)).toNat) (A004396 (n + 1))

end

end A238703.P14595544509471486022

/-! ## A238703.P10028073902827584284

`A307672(A002863(n+1))`
-/

namespace A238703.P10028073902827584284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (A002863 (n + 1)).toNat

end

end A238703.P10028073902827584284

/-! ## A238703.P11152785804106570621

`A055047(A034943(n))%A247973(n+1)`
-/

namespace A238703.P11152785804106570621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055047 (A034943 n).toNat) (A247973 (n + 1))

end

end A238703.P11152785804106570621

/-! ## A238703.P14663308446115747908

`A086598(A316796(n+1))%A000010(n+1)`
-/

namespace A238703.P14663308446115747908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086598 (A316796 (n + 1)).toNat) (A000010 (n + 1))

end

end A238703.P14663308446115747908

/-!
# A238705: Number of partitions of 4n into 4 parts with smallest part = 1.

The programs for A238705, the canonical program `A238705.P6402588965436703611` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238705 has offset 1).

The definition of A238705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238705.P6402588965436703611

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=19, a(4)=30`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238705

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6402588965436703611.Spec : Prop :=
  ∀ n, P6402588965436703611.a n = A238705 (n + 1)

theorem P6402588965436703611.correct : P6402588965436703611.Spec := by
  intro n
  simp only [A238705, Nat.add_sub_cancel]

end A238705

/-! ## A238705.P13014160213704425998

`round((4*n+3)²/12)`
-/

namespace A238705.P13014160213704425998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)

end

end A238705.P13014160213704425998

namespace A238705

/-- `round((4*n+3)²/12)` -/
def P13014160213704425998.Spec : Prop :=
  ∀ n, P13014160213704425998.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P5804160271628693839

`∑[ceil(or(1, 8*n)/3)]`
-/

namespace A238705.P5804160271628693839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (8 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P5804160271628693839

namespace A238705

/-- `∑[ceil(or(1, 8*n)/3)]` -/
def P5804160271628693839.Spec : Prop :=
  ∀ n, P5804160271628693839.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P14168455564666323273

`∑[ceil(xor(1, 8*n)/3)]`
-/

namespace A238705.P14168455564666323273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (8 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P14168455564666323273

namespace A238705

/-- `∑[ceil(xor(1, 8*n)/3)]` -/
def P14168455564666323273.Spec : Prop :=
  ∀ n, P14168455564666323273.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P5495594021677030282

`∑[floor(or(3, 8*n)/3)]`
-/

namespace A238705.P5495594021677030282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (8 * n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P5495594021677030282

namespace A238705

/-- `∑[floor(or(3, 8*n)/3)]` -/
def P5495594021677030282.Spec : Prop :=
  ∀ n, P5495594021677030282.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P1218509827144832267

`∑[round(or(2, 8*n)/3)]`
-/

namespace A238705.P1218509827144832267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (8 * n) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P1218509827144832267

namespace A238705

/-- `∑[round(or(2, 8*n)/3)]` -/
def P1218509827144832267.Spec : Prop :=
  ∀ n, P1218509827144832267.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P7619323590590599177

`∑[floor(xor(3, 8*n)/3)]`
-/

namespace A238705.P7619323590590599177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (8 * n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P7619323590590599177

namespace A238705

/-- `∑[floor(xor(3, 8*n)/3)]` -/
def P7619323590590599177.Spec : Prop :=
  ∀ n, P7619323590590599177.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P11649937504828583620

`∑[round(xor(2, 8*n)/3)]`
-/

namespace A238705.P11649937504828583620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (8 * n) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P11649937504828583620

namespace A238705

/-- `∑[round(xor(2, 8*n)/3)]` -/
def P11649937504828583620.Spec : Prop :=
  ∀ n, P11649937504828583620.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P15250749718926611996

`∑[a(n-3)+8]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A238705.P15250749718926611996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P15250749718926611996

namespace A238705

/-- `∑[a(n-3)+8]` -/
def P15250749718926611996.Spec : Prop :=
  ∀ n, (P15250749718926611996.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P5820378015936502942

`ceil(record[xor(3, n)²-1]/12)`
-/

namespace A238705.P5820378015936502942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 12⌉

end

end A238705.P5820378015936502942

namespace A238705

/-- `ceil(record[xor(3, n)²-1]/12)` -/
def P5820378015936502942.Spec : Prop :=
  ∀ n, P5820378015936502942.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P14523665430328010856

`∑[∑[abs(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A238705.P14523665430328010856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P14523665430328010856

namespace A238705

/-- `∑[∑[abs(a(n-3))]]` -/
def P14523665430328010856.Spec : Prop :=
  ∀ n, (P14523665430328010856.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P11793613716269949876

`∑[∑[or(2, a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A238705.P11793613716269949876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f2 =>
  Nat.lor 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P11793613716269949876

namespace A238705

/-- `∑[∑[or(2, a(n-3))]]` -/
def P11793613716269949876.Spec : Prop :=
  ∀ n, (P11793613716269949876.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P18229085627744894885

`∑[∑[dr(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A238705.P18229085627744894885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P18229085627744894885

namespace A238705

/-- `∑[∑[dr(a(n-3))]]` -/
def P18229085627744894885.Spec : Prop :=
  ∀ n, (P18229085627744894885.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P6649614840129422206

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A238705.P6649614840129422206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P6649614840129422206

namespace A238705

/-- `∑[∑[floor(a(n-3))]]` -/
def P6649614840129422206.Spec : Prop :=
  ∀ n, (P6649614840129422206.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P12653192800008582620

`∑[∑[ceil(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A238705.P12653192800008582620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P12653192800008582620

namespace A238705

/-- `∑[∑[ceil(a(n-3))]]` -/
def P12653192800008582620.Spec : Prop :=
  ∀ n, (P12653192800008582620.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P11915365446620327715

`∑[∑[round(a(n-3))]]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A238705.P11915365446620327715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P11915365446620327715

namespace A238705

/-- `∑[∑[round(a(n-3))]]` -/
def P11915365446620327715.Spec : Prop :=
  ∀ n, (P11915365446620327715.a n : ℤ) = A238705 (n + 1)

end A238705

/-! ## A238705.P4531112595673256551

`∑[∑[∑[ogf((1+2x+3x^2+2x^3)/(1+x+x^2))]]]`
-/

namespace A238705.P4531112595673256551
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 2] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P4531112595673256551

namespace A238705

/-- `∑[∑[∑[ogf((1+2x+3x^2+2x^3)/(1+x+x^2))]]]` -/
def P4531112595673256551.Spec : Prop :=
  ∀ n, P4531112595673256551.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P14807906310874984212

`ceil((n+1)*record[lcm(2, n+1)]/3)`
-/

namespace A238705.P14807906310874984212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3⌉

end

end A238705.P14807906310874984212

namespace A238705

/-- `ceil((n+1)*record[lcm(2, n+1)]/3)` -/
def P14807906310874984212.Spec : Prop :=
  ∀ n, P14807906310874984212.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P13335860029205529195

`∑[A047400(n+1)]`
-/

namespace A238705.P13335860029205529195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238705.P13335860029205529195

namespace A238705

/-- `∑[A047400(n+1)]` -/
def P13335860029205529195.Spec : Prop :=
  ∀ n, P13335860029205529195.a n = A238705 (n + 1)

end A238705

/-! ## A238705.P12006168120725152914

`A256320(n)+Δ[n²]`
-/

namespace A238705.P12006168120725152914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A238705.P12006168120725152914

namespace A238705

/-- `A256320(n)+Δ[n²]` -/
def P12006168120725152914.Spec : Prop :=
  ∀ n, P12006168120725152914.a n = A238705 (n + 1)

end A238705

/-!
# A238706: Sum of the smallest parts of the partitions of 4n into 4 parts with smallest part greater than 1.

The programs for A238706, the canonical program `A238706.P10107481637763201362` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238706 has offset 1).

The definition of A238706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238706.P10107481637763201362

`A238702(n+1)-ceil((n+1)*(4*n+2)/3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A238706

/-- `A238702(n+1)-ceil((n+1)*(4*n+2)/3)` -/
def P10107481637763201362.Spec : Prop :=
  ∀ n, P10107481637763201362.a n = A238706 (n + 1)

theorem P10107481637763201362.correct : P10107481637763201362.Spec := by
  intro n
  simp only [A238706, Nat.add_sub_cancel]

end A238706

/-! ## A238706.P7542291433334753405

`∑[A238340(n+1)]-ceil((n+1)*(4*n+2)/3)`
-/

namespace A238706.P7542291433334753405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈((n + 1) * (4 * n + 2) : ℚ) / 3⌉

end

end A238706.P7542291433334753405

namespace A238706

/-- `∑[A238340(n+1)]-ceil((n+1)*(4*n+2)/3)` -/
def P7542291433334753405.Spec : Prop :=
  ∀ n, P7542291433334753405.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P17334414579989176729

`abs(A238702(n+1)-A238705(n+1))`
-/

namespace A238706.P17334414579989176729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - A238705 (n + 1)|

end

end A238706.P17334414579989176729

namespace A238706

/-- `abs(A238702(n+1)-A238705(n+1))` -/
def P17334414579989176729.Spec : Prop :=
  ∀ n, P17334414579989176729.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P11138125051755176489

`abs(A238702(n+1)-∑[A047539(n+1)-1])`
-/

namespace A238706.P11138125051755176489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047539 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A238706.P11138125051755176489

namespace A238706

/-- `abs(A238702(n+1)-∑[A047539(n+1)-1])` -/
def P11138125051755176489.Spec : Prop :=
  ∀ n, P11138125051755176489.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P16147675653522914734

`abs(A238702(n+1)-(A256320(n)+1+n+n))`
-/

namespace A238706.P16147675653522914734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - (A256320 n + 1 + (n : ℤ) + (n : ℤ))|

end

end A238706.P16147675653522914734

namespace A238706

/-- `abs(A238702(n+1)-(A256320(n)+1+n+n))` -/
def P16147675653522914734.Spec : Prop :=
  ∀ n, P16147675653522914734.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P13085188203357002825

`A239057(n+1)+A238702(n+1)-A239056(n+1)`
-/

namespace A238706.P13085188203357002825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239057 (n + 1) + (A238702 (n + 1) - A239056 (n + 1))

end

end A238706.P13085188203357002825

namespace A238706

/-- `A239057(n+1)+A238702(n+1)-A239056(n+1)` -/
def P13085188203357002825.Spec : Prop :=
  ∀ n, P13085188203357002825.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P11182570945803058938

`A239195(n+1)+A238702(n+1)-A239059(n+1)`
-/

namespace A238706.P11182570945803058938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + (A238702 (n + 1) - A239059 (n + 1))

end

end A238706.P11182570945803058938

namespace A238706

/-- `A239195(n+1)+A238702(n+1)-A239059(n+1)` -/
def P11182570945803058938.Spec : Prop :=
  ∀ n, P11182570945803058938.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P11069305087375222647

`abs(A238702(n+1)-∑[A047480(n+2)-4])`
-/

namespace A238706.P11069305087375222647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A238706.P11069305087375222647

namespace A238706

/-- `abs(A238702(n+1)-∑[A047480(n+2)-4])` -/
def P11069305087375222647.Spec : Prop :=
  ∀ n, P11069305087375222647.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P17619520676210829001

`∑[∑[A007980(2*n)]]-A007980(2*n)`
-/

namespace A238706.P17619520676210829001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 (2 * n)

end

end A238706.P17619520676210829001

namespace A238706

/-- `∑[∑[A007980(2*n)]]-A007980(2*n)` -/
def P17619520676210829001.Spec : Prop :=
  ∀ n, P17619520676210829001.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P7256961264740914008

`abs(A238702(n+1)-∑[A047498(2*n+1)+1])`
-/

namespace A238706.P7256961264740914008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A238706.P7256961264740914008

namespace A238706

/-- `abs(A238702(n+1)-∑[A047498(2*n+1)+1])` -/
def P7256961264740914008.Spec : Prop :=
  ∀ n, P7256961264740914008.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P5951116643691520483

`abs(A238702(n+1)-∑[A002264(2*(n+1)+1)+2*n])`
-/

namespace A238706.P5951116643691520483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * (n + 1) + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A238706.P5951116643691520483

namespace A238706

/-- `abs(A238702(n+1)-∑[A002264(2*(n+1)+1)+2*n])` -/
def P5951116643691520483.Spec : Prop :=
  ∀ n, P5951116643691520483.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P18320451226858269808

`∑[∑[A001399(4*n)]]-A001399(4*n)`
-/

namespace A238706.P18320451226858269808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 (4 * n)

end

end A238706.P18320451226858269808

namespace A238706

/-- `∑[∑[A001399(4*n)]]-A001399(4*n)` -/
def P18320451226858269808.Spec : Prop :=
  ∀ n, P18320451226858269808.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P7932275583213924363

`A026810(4*n)+∑[A026810(4*n)]`
-/

namespace A238706.P7932275583213924363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (4 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238706.P7932275583213924363

namespace A238706

/-- `A026810(4*n)+∑[A026810(4*n)]` -/
def P7932275583213924363.Spec : Prop :=
  ∀ n, P7932275583213924363.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P15948354604282607325

`A059290(4*n)+∑[A059290(4*n)]`
-/

namespace A238706.P15948354604282607325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059290 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059290 (4 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238706.P15948354604282607325

namespace A238706

/-- `A059290(4*n)+∑[A059290(4*n)]` -/
def P15948354604282607325.Spec : Prop :=
  ∀ n, P15948354604282607325.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P6069849103600536324

`∑[∑[A008796(4*n)]]-A008796(4*n)`
-/

namespace A238706.P6069849103600536324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008796 (4 * n)

end

end A238706.P6069849103600536324

namespace A238706

/-- `∑[∑[A008796(4*n)]]-A008796(4*n)` -/
def P6069849103600536324.Spec : Prop :=
  ∀ n, P6069849103600536324.a n = A238706 (n + 1)

end A238706

/-! ## A238706.P11455883826320075454

`abs(A238702(n+1)-(A042968(n²+1)+2*n))`
-/

namespace A238706.P11455883826320075454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A238702 (n + 1) - (A042968 (n ^ 2 + 1) + (2 * n : ℤ))|

end

end A238706.P11455883826320075454

namespace A238706

/-- `abs(A238702(n+1)-(A042968(n²+1)+2*n))` -/
def P11455883826320075454.Spec : Prop :=
  ∀ n, P11455883826320075454.a n = A238706 (n + 1)

end A238706

/-!
# A238708: Number of strict partitions of n that include a pair of consecutive integers.

The programs for A238708, there is no canonical definition to state claims against.
-/

/-! ## A238708.P9061356943823690082

`A000009(n)-A003114(n)`
-/

namespace A238708.P9061356943823690082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A003114 n

end

end A238708.P9061356943823690082

/-! ## A238708.P5685348044927615969

`abs(A081360(n))-A003114(n)`
-/

namespace A238708.P5685348044927615969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A003114 n

end

end A238708.P5685348044927615969

/-! ## A238708.P848592792596684898

`∑[A087897(n)]-A003114(n)`
-/

namespace A238708.P848592792596684898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003114 n

end

end A238708.P848592792596684898

/-! ## A238708.P98415482200764583

`A000041(n)-(A047967(n)+A003114(n))`
-/

namespace A238708.P98415482200764583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A047967 n + A003114 n)

end

end A238708.P98415482200764583

/-! ## A238708.P17617931300948891950

`A035457(2*n)-A003114(n)`
-/

namespace A238708.P17617931300948891950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A003114 n

end

end A238708.P17617931300948891950

/-! ## A238708.P15210312769586174810

`A039899(n)-A047967(n)`
-/

namespace A238708.P15210312769586174810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039899 n - A047967 n

end

end A238708.P15210312769586174810

/-! ## A238708.P17238873457834547373

`A000009(n)+A039899(n)-A000041(n)`
-/

namespace A238708.P17238873457834547373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A039899 n - A000041 n)

end

end A238708.P17238873457834547373

/-! ## A238708.P7952146706557997467

`A000009(n)-A114087(∑[n-1]+2)`
-/

namespace A238708.P7952146706557997467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A114087 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A238708.P7952146706557997467

/-! ## A238708.P10451074410106436269

`A194543(A000124(n))-A003114(n)`
-/

namespace A238708.P10451074410106436269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000124 n).toNat - A003114 n

end

end A238708.P10451074410106436269

/-! ## A238708.P11203646680784040199

`A238354(A000124(n))%A008638(n)`
-/

namespace A238708.P11203646680784040199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238354 (A000124 n).toNat) (A008638 n)

end

end A238708.P11203646680784040199

/-! ## A238708.P17335558628891296222

`A194543(A000217(n)+1)-A003114(n)`
-/

namespace A238708.P17335558628891296222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A000217 n + 1).toNat - A003114 n

end

end A238708.P17335558628891296222

/-!
# A238709: Triangular array: t(n,k) = number of partitions p = {x(1) >= x(2) >= ... >= x(k)} such that min(x(j) - x(j-1)) = k.

The programs for A238709, there is no canonical definition to state claims against.
-/

/-! ## A238709.P7898851353731614185

`round(ratio[A234286(A225910(n))])`
-/

namespace A238709.P7898851353731614185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234286 (A225910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A238709.P7898851353731614185

/-! ## A238709.P4154938664316500402

`floor(ratio[A343503(A008292(n+1))])`
-/

namespace A238709.P4154938664316500402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343503 (A008292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A238709.P4154938664316500402

/-! ## A238709.P3452302533782917699

`round(ratio[A185977(A174043(n+1))])`
-/

namespace A238709.P3452302533782917699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185977 (A174043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A238709.P3452302533782917699

/-! ## A238709.P798181253392068706

`A032766(A194711(n+1)^A010194(n))`
-/

namespace A238709.P798181253392068706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A194711 (n + 1) : ℚ) ^ (A010194 n : ℤ))).toNat

end

end A238709.P798181253392068706

/-! ## A238709.P995368751628830483

`A106356(n+1)^A289481(A134903(n+1))`
-/

namespace A238709.P995368751628830483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106356 (n + 1) : ℚ) ^ (A289481 (A134903 (n + 1)).toNat : ℤ)

end

end A238709.P995368751628830483

/-!
# A238710: Triangular array: t(n,k) = number of partitions p = {x(1) >= x(2) >= ... >= x(k)} such that max(x(j) - x(j-1)) = k.

The programs for A238710, there is no canonical definition to state claims against.
-/

/-! ## A238710.P13572948271444167223

`A355522(n+2)-char[∑[n]]`
-/

namespace A238710.P13572948271444167223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355522 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A238710.P13572948271444167223

/-!
# A238711: Product of all primes p such that 2n - p is also prime.

The programs for A238711, there is no canonical definition to state claims against.
-/

/-! ## A238711.P835793237042660451

`A337568(n+2)/A089026(n+2)`
-/

namespace A238711.P835793237042660451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337568 (n + 2) : ℚ) / (A089026 (n + 2) : ℚ)

end

end A238711.P835793237042660451

/-! ## A238711.P14457724128360740045

`A337568(n+2)/Δ[A349214(n+1)]`
-/

namespace A238711.P14457724128360740045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349214 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337568 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A238711.P14457724128360740045

/-! ## A238711.P2032441958452961067

`gcd(A066616(2*(n+1)), A337568(n+2))`
-/

namespace A238711.P2032441958452961067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066616 (2 * (n + 1))) (A337568 (n + 2))

end

end A238711.P2032441958452961067

/-! ## A238711.P9648970624524746760

`gcd(A319865(A155212(n)), A337568(n+2))`
-/

namespace A238711.P9648970624524746760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319865 (A155212 n).toNat) (A337568 (n + 2))

end

end A238711.P9648970624524746760

/-! ## A238711.P17909194593340840115

`∏{p}[A337568(n+2), #]`
-/

namespace A238711.P17909194593340840115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337568 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A238711.P17909194593340840115

/-!
# A238712: Numbers in which squares may end (in base 10).

The programs for A238712, the canonical program `A238712.P11655535671467740802` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238712 has offset 1).

The definition of A238712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238712.P11655535671467740802

`lt[0, char[A316347(n)]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A238712

/-- `lt[0, char[A316347(n)]]` -/
def P11655535671467740802.Spec : Prop :=
  ∀ n, (P11655535671467740802.a n : ℤ) = A238712 (n + 1)

theorem P11655535671467740802.correct : P11655535671467740802.Spec := by
  intro n
  simp only [A238712, Nat.add_sub_cancel]

end A238712

/-! ## A238712.P7262743687534252341

`eq[1, char[A316347(n+2)]]`
-/

namespace A238712.P7262743687534252341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A238712.P7262743687534252341

namespace A238712

/-- `eq[1, char[A316347(n+2)]]` -/
def P7262743687534252341.Spec : Prop :=
  ∀ n, (P7262743687534252341.a n : ℤ) = A238712 (n + 1)

end A238712

/-! ## A238712.P9794540547758030874

`lt[0, A246560(A028310(n))]`
-/

namespace A238712.P9794540547758030874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246560 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A238712.P9794540547758030874

namespace A238712

/-- `lt[0, A246560(A028310(n))]` -/
def P9794540547758030874.Spec : Prop :=
  ∀ n, (P9794540547758030874.a n : ℤ) = A238712 (n + 1)

end A238712

/-! ## A238712.P16837947411287644551

`comp[A028813(A057544(n))]%A341342(n+3)`
-/

namespace A238712.P16837947411287644551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028813 (A057544 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A341342 (n + 3))

end

end A238712.P16837947411287644551

namespace A238712

/-- `comp[A028813(A057544(n))]%A341342(n+3)` -/
def P16837947411287644551.Spec : Prop :=
  ∀ n, P16837947411287644551.a n = A238712 (n + 1)

end A238712

/-! ## A238712.P16972453778054347400

`comp[A246448(n+1)]`
-/

namespace A238712.P16972453778054347400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A238712.P16972453778054347400

namespace A238712

/-- `comp[A246448(n+1)]` -/
def P16972453778054347400.Spec : Prop :=
  ∀ n, (P16972453778054347400.a n : ℤ) = A238712 (n + 1)

end A238712

/-!
# A238713: Least member of decadal prime triples: First prime beyond 10*A008470(n).

The programs for A238713, there is no canonical definition to state claims against.
-/

/-! ## A238713.P7967786517376524690

`A030665(A008470(n+1))`
-/

namespace A238713.P7967786517376524690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A008470 (n + 1)).toNat

end

end A238713.P7967786517376524690

/-! ## A238713.P15209251516485782237

`A151800(A238730(n+2)-9)`
-/

namespace A238713.P15209251516485782237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A238730 (n + 2) - 9).toNat

end

end A238713.P15209251516485782237

/-! ## A238713.P14953881412330014161

`A151800(10*A008470(n+1))`
-/

namespace A238713.P14953881412330014161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * A008470 (n + 1)).toNat

end

end A238713.P14953881412330014161

/-! ## A238713.P15582312075740313346

`A030665(floor(A238730(n+2)/10))`
-/

namespace A238713.P15582312075740313346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 ⌊(A238730 (n + 2) : ℚ) / 10⌋.toNat

end

end A238713.P15582312075740313346

/-! ## A238713.P9443968858456915260

`A151800(10*floor(A238730(n+2)/10))`
-/

namespace A238713.P9443968858456915260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (10 * ⌊(A238730 (n + 2) : ℚ) / 10⌋).toNat

end

end A238713.P9443968858456915260

/-! ## A238713.P16787180849254058538

`A000015(A238730(n+2)-8)`
-/

namespace A238713.P16787180849254058538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A238730 (n + 2) - 8).toNat

end

end A238713.P16787180849254058538

/-! ## A238713.P6748009542976305778

`A000015(10*A008470(n+1))`
-/

namespace A238713.P6748009542976305778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (10 * A008470 (n + 1)).toNat

end

end A238713.P6748009542976305778

/-! ## A238713.P2870854222904858619

`A007918(10*A008470(n+1))`
-/

namespace A238713.P2870854222904858619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (10 * A008470 (n + 1)).toNat

end

end A238713.P2870854222904858619

/-! ## A238713.P6958154065887598139

`A013632(A238730(n+2)-9)+A238730(n+2)-9`
-/

namespace A238713.P6958154065887598139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A238730 (n + 2) - 9).toNat + (A238730 (n + 2) - 9)

end

end A238713.P6958154065887598139

/-!
# A238719: Number of n X n 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238719, there is no canonical definition to state claims against.
-/

/-! ## A238719.P4550559555640564940

`A238726(∑[4*n]+1)`
-/

namespace A238719.P4550559555640564940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A238719.P4550559555640564940

/-! ## A238719.P17148619040723467104

`lcm(2, A238726(A001844(n)))`
-/

namespace A238719.P17148619040723467104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238726 (A001844 n).toNat)

end

end A238719.P17148619040723467104

/-! ## A238719.P16016548317490052966

`record[A003982(n)*A238726(n+1)]`
-/

namespace A238719.P16016548317490052966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A238726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238719.P16016548317490052966

/-! ## A238719.P10951962100871668690

`record[gcd(A037012(n), A238726(n+1))]`
-/

namespace A238719.P10951962100871668690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A238726 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238719.P10951962100871668690

/-! ## A238719.P13646264449791111384

`A007318(∑[n])*A238726(A001844(n))`
-/

namespace A238719.P13646264449791111384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A238726 (A001844 n).toNat

end

end A238719.P13646264449791111384

/-!
# A238720: Number of nX2 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238720, the canonical program `A238720.P4415475498152208159` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238720 has offset 1).

The definition of A238720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238720.P9828009873234530582

`ogf((2+4x-4x^3)/(1-5x^2+4x^4))`
-/

namespace A238720.P9828009873234530582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 0, -4] [1, 0, -5, 0, 4] n

end

end A238720.P9828009873234530582

namespace A238720

/-- `ogf((2+4x-4x^3)/(1-5x^2+4x^4))` -/
def P9828009873234530582.Spec : Prop :=
  ∀ n, P9828009873234530582.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P4415475498152208159

`a(n-2)%4+4*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238720

/-- `a(n-2)%4+4*a(n-2)` -/
def P4415475498152208159.Spec : Prop :=
  ∀ n, (P4415475498152208159.a n : ℤ) = A238720 (n + 1)

theorem P4415475498152208159.correct : P4415475498152208159.Spec := by
  intro n
  simp only [A238720, Nat.add_sub_cancel]

end A238720

/-! ## A238720.P1773474823062441039

`2-(a(n-1)%4-4*a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A238720.P1773474823062441039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 - (Int.tmod (a (n - 1)) 4 - 4 * a (n - 2))

end

end A238720.P1773474823062441039

namespace A238720

/-- `2-(a(n-1)%4-4*a(n-2))` -/
def P1773474823062441039.Spec : Prop :=
  ∀ n, P1773474823062441039.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P65423479121723212

`gcd(4, a(n-1))+4*a(n-2)-2` with `a(0)=2, a(1)=4`
-/

namespace A238720.P65423479121723212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (Int.gcd 4 (a (n - 1)) : ℤ) + (4 * a (n - 2) - 2)

end

end A238720.P65423479121723212

namespace A238720

/-- `gcd(4, a(n-1))+4*a(n-2)-2` -/
def P65423479121723212.Spec : Prop :=
  ∀ n, P65423479121723212.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P325574435118668032

`lcm(2, A092809(n+1))`
-/

namespace A238720.P325574435118668032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A092809 (n + 1))

end

end A238720.P325574435118668032

namespace A238720

/-- `lcm(2, A092809(n+1))` -/
def P325574435118668032.Spec : Prop :=
  ∀ n, (P325574435118668032.a n : ℤ) = A238720 (n + 1)

end A238720

/-! ## A238720.P7760169639531813711

`A166752(n)+∑[2^n]`
-/

namespace A238720.P7760169639531813711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A238720.P7760169639531813711

namespace A238720

/-- `A166752(n)+∑[2^n]` -/
def P7760169639531813711.Spec : Prop :=
  ∀ n, P7760169639531813711.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P13845907912880606407

`A000225(n+1)+and(-(-1)^n, ∑[(-2)^n])`
-/

namespace A238720.P13845907912880606407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + Int.land (-((-1) ^ n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238720.P13845907912880606407

namespace A238720

/-- `A000225(n+1)+and(-(-1)^n, ∑[(-2)^n])` -/
def P13845907912880606407.Spec : Prop :=
  ∀ n, P13845907912880606407.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P8995283799575551351

`A283642(n)+A052992(n)`
-/

namespace A238720.P8995283799575551351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + A052992 n

end

end A238720.P8995283799575551351

namespace A238720

/-- `A283642(n)+A052992(n)` -/
def P8995283799575551351.Spec : Prop :=
  ∀ n, P8995283799575551351.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P8677308599195630539

`A282124(n)+A084181(n)`
-/

namespace A238720.P8677308599195630539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282124 n + A084181 n

end

end A238720.P8677308599195630539

namespace A238720

/-- `A282124(n)+A084181(n)` -/
def P8677308599195630539.Spec : Prop :=
  ∀ n, P8677308599195630539.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P17583482159368487673

`xor(A048578(n), A166752(n))`
-/

namespace A238720.P17583482159368487673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048578 n) (A166752 n)

end

end A238720.P17583482159368487673

namespace A238720

/-- `xor(A048578(n), A166752(n))` -/
def P17583482159368487673.Spec : Prop :=
  ∀ n, P17583482159368487673.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P10702038221739811302

`2*A135318(A042948(n)+2)`
-/

namespace A238720.P10702038221739811302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135318 (A042948 n + 2).toNat

end

end A238720.P10702038221739811302

namespace A238720

/-- `2*A135318(A042948(n)+2)` -/
def P10702038221739811302.Spec : Prop :=
  ∀ n, P10702038221739811302.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P16008132868167416340

`A176961(n+1)+A128209(n)`
-/

namespace A238720.P16008132868167416340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176961 (n + 1) + A128209 n

end

end A238720.P16008132868167416340

namespace A238720

/-- `A176961(n+1)+A128209(n)` -/
def P16008132868167416340.Spec : Prop :=
  ∀ n, P16008132868167416340.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P7425165043604392727

`A282123(n)+A059222(n+1)`
-/

namespace A238720.P7425165043604392727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282123 n + A059222 (n + 1)

end

end A238720.P7425165043604392727

namespace A238720

/-- `A282123(n)+A059222(n+1)` -/
def P7425165043604392727.Spec : Prop :=
  ∀ n, P7425165043604392727.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P13904330644934956859

`A052992(n)+A001045(n+2)`
-/

namespace A238720.P13904330644934956859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n + A001045 (n + 2)

end

end A238720.P13904330644934956859

namespace A238720

/-- `A052992(n)+A001045(n+2)` -/
def P13904330644934956859.Spec : Prop :=
  ∀ n, P13904330644934956859.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P9473550416063022813

`A131588(n+1)+A001045(n+1)`
-/

namespace A238720.P9473550416063022813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131588 (n + 1) + A001045 (n + 1)

end

end A238720.P9473550416063022813

namespace A238720

/-- `A131588(n+1)+A001045(n+1)` -/
def P9473550416063022813.Spec : Prop :=
  ∀ n, P9473550416063022813.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P17395299397870131018

`A000975(n+1)+A166752(n)+A000975(n)`
-/

namespace A238720.P17395299397870131018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (A166752 n + A000975 n)

end

end A238720.P17395299397870131018

namespace A238720

/-- `A000975(n+1)+A166752(n)+A000975(n)` -/
def P17395299397870131018.Spec : Prop :=
  ∀ n, P17395299397870131018.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P2289152286652207906

`A014113(n+1)+A014113(n)*A040001(n)`
-/

namespace A238720.P2289152286652207906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (n + 1) + A014113 n * A040001 n

end

end A238720.P2289152286652207906

namespace A238720

/-- `A014113(n+1)+A014113(n)*A040001(n)` -/
def P2289152286652207906.Spec : Prop :=
  ∀ n, P2289152286652207906.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P6062605478974562179

`∪[∑[2^(2*n+1)], 4^(n+1)]`
-/

namespace A238720.P6062605478974562179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A238720.P6062605478974562179

namespace A238720

/-- `∪[∑[2^(2*n+1)], 4^(n+1)]` -/
def P6062605478974562179.Spec : Prop :=
  ∀ n, (P6062605478974562179.a n : ℤ) = A238720 (n + 1)

end A238720

/-! ## A238720.P732437254259141017

`5*a(n-2)-4*a(n-4)` with `a(0)=2, a(1)=4, a(2)=10, a(3)=16`
-/

namespace A238720.P732437254259141017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 10, 16] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A238720.P732437254259141017

namespace A238720

/-- `5*a(n-2)-4*a(n-4)` -/
def P732437254259141017.Spec : Prop :=
  ∀ n, P732437254259141017.a n = A238720 (n + 1)

end A238720

/-! ## A238720.P15695232393732014748

`ceil(2*A290662(n+1)/3)`
-/

namespace A238720.P15695232393732014748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A290662 (n + 1) : ℚ) / 3)⌉

end

end A238720.P15695232393732014748

namespace A238720

/-- `ceil(2*A290662(n+1)/3)` -/
def P15695232393732014748.Spec : Prop :=
  ∀ n, P15695232393732014748.a n = A238720 (n + 1)

end A238720

/-!
# A238721: Number of n X 3 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238721, there is no canonical definition to state claims against.
-/

/-! ## A238721.P14355805089694547082

`A238726(∑[n+2]+4)`
-/

namespace A238721.P14355805089694547082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238721.P14355805089694547082

/-! ## A238721.P18398827180154340245

`lcm(2, A238726(A167614(n+1)))`
-/

namespace A238721.P18398827180154340245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238726 (A167614 (n + 1)).toNat)

end

end A238721.P18398827180154340245

/-! ## A238721.P9325971340542091622

`record[A120111(n)*A238726(n+4)]`
-/

namespace A238721.P9325971340542091622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120111 n * A238726 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238721.P9325971340542091622

/-! ## A238721.P1265708439329922709

`A015838(n)*A238726(A167614(n+1))`
-/

namespace A238721.P1265708439329922709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 n * A238726 (A167614 (n + 1)).toNat

end

end A238721.P1265708439329922709

/-! ## A238721.P946667439006932790

`A238726(A167614(n+1))%A071101(n)`
-/

namespace A238721.P946667439006932790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238726 (A167614 (n + 1)).toNat) (A071101 n)

end

end A238721.P946667439006932790

/-!
# A238722: Number of nX4 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238722, there is no canonical definition to state claims against.
-/

/-! ## A238722.P10150274402343734915

`A238726(∑[n+3]+7)`
-/

namespace A238722.P10150274402343734915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A238722.P10150274402343734915

/-! ## A238722.P16410284908861294583

`record[A010054(n)*A238726(n+4)]`
-/

namespace A238722.P16410284908861294583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238726 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238722.P16410284908861294583

/-! ## A238722.P12768019506106514979

`A238726(A027379(n+2))+A185264(n)`
-/

namespace A238722.P12768019506106514979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A027379 (n + 2)).toNat + A185264 n

end

end A238722.P12768019506106514979

/-!
# A238723: Number of nX5 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238723, there is no canonical definition to state claims against.
-/

/-! ## A238723.P385680752105294104

`A238726(A374005(n+1))`
-/

namespace A238723.P385680752105294104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A374005 (n + 1)).toNat

end

end A238723.P385680752105294104

/-! ## A238723.P13091104973681610784

`A238726(A167499(n+3))`
-/

namespace A238723.P13091104973681610784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A167499 (n + 3)).toNat

end

end A238723.P13091104973681610784

/-! ## A238723.P12993857092479406002

`A238726(A000217(n+4)+5)`
-/

namespace A238723.P12993857092479406002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A000217 (n + 4) + 5).toNat

end

end A238723.P12993857092479406002

/-! ## A238723.P12906528774242538894

`A238726(A052905(n+1)+10)`
-/

namespace A238723.P12906528774242538894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A052905 (n + 1) + 10).toNat

end

end A238723.P12906528774242538894

/-! ## A238723.P15452140365758311958

`A238726(A038722(Δ[A023545(n+1)]))`
-/

namespace A238723.P15452140365758311958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A238723.P15452140365758311958

/-!
# A238724: Number of nX6 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238724, there is no canonical definition to state claims against.
-/

/-! ## A238724.P13107557664040491355

`A238726(A374007(n+1))`
-/

namespace A238724.P13107557664040491355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A374007 (n + 1)).toNat

end

end A238724.P13107557664040491355

/-! ## A238724.P7683017410403532164

`A238726(A000217(n+5)+6)`
-/

namespace A238724.P7683017410403532164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A000217 (n + 5) + 6).toNat

end

end A238724.P7683017410403532164

/-! ## A238724.P2273493451540751149

`A238726(Δ[A023545(n+1)]+10)`
-/

namespace A238724.P2273493451540751149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (f1 (n + 1) - f1 n + 10).toNat

end

end A238724.P2273493451540751149

/-! ## A238724.P5372316292778491766

`A238726(A055999(n+4)-A005408(n))`
-/

namespace A238724.P5372316292778491766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A055999 (n + 4) - A005408 n).toNat

end

end A238724.P5372316292778491766

/-! ## A238724.P17343546667519240881

`A238726(A141214(n+4)-A005843(n+2))`
-/

namespace A238724.P17343546667519240881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A141214 (n + 4) - A005843 (n + 2)).toNat

end

end A238724.P17343546667519240881

/-!
# A238725: Number of nX7 0..2 arrays with no element equal to the sum modulo 3 of elements to its left or elements above it.

The programs for A238725, there is no canonical definition to state claims against.
-/

/-! ## A238725.P5956273546345109266

`A238726(A374008(n+1))`
-/

namespace A238725.P5956273546345109266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A374008 (n + 1)).toNat

end

end A238725.P5956273546345109266

/-! ## A238725.P7601094507024520924

`A238726(A055999(n+4))`
-/

namespace A238725.P7601094507024520924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (A055999 (n + 4)).toNat

end

end A238725.P7601094507024520924

/-! ## A238725.P7135379251332690339

`A238726(eq[4, A219347(n)])`
-/

namespace A238725.P7135379251332690339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238725.P7135379251332690339

/-! ## A238725.P8238510859577793066

`A238726(eq[6, A193592(n)])`
-/

namespace A238725.P8238510859577793066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238725.P8238510859577793066

/-! ## A238725.P7167424079158142742

`A238726(eq[10, A185782(n+1)])`
-/

namespace A238725.P7167424079158142742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238725.P7167424079158142742

/-!
# A238727: Number T(n,k) of standard Young tableaux with n cells where k is the largest value in the last row; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A238727, there is no canonical definition to state claims against.
-/

/-! ## A238727.P14237278291630846724

`A322308(A113413(n))+A008611(A127568(n))`
-/

namespace A238727.P14237278291630846724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 (A113413 n).toNat + A008611 (A127568 n).toNat

end

end A238727.P14237278291630846724

/-! ## A238727.P913069637274828806

`A322308(A113413(n))+A056822(A112367(n))`
-/

namespace A238727.P913069637274828806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 (A113413 n).toNat + A056822 (A112367 n).toNat

end

end A238727.P913069637274828806

/-! ## A238727.P2165868463130145336

`A322308(A113413(n))+A238462(A002262(n))`
-/

namespace A238727.P2165868463130145336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322308 (A113413 n).toNat + A238462 (A002262 n).toNat

end

end A238727.P2165868463130145336

/-! ## A238727.P16233828367656429643

`A304096(A018101(n))+A104205(A056885(n))`
-/

namespace A238727.P16233828367656429643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (A018101 n).toNat + A104205 (A056885 n).toNat

end

end A238727.P16233828367656429643

/-! ## A238727.P16595222537176249199

`A341592(A007318(n+3)*A254632(n))`
-/

namespace A238727.P16595222537176249199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341592 (A007318 (n + 3) * A254632 n).toNat

end

end A238727.P16595222537176249199

/-!
# A238728: Number of standard Young tableaux with n cells where the largest value n is contained in the last row.

The programs for A238728, there is no canonical definition to state claims against.
-/

/-! ## A238728.P17517173282895977141

`A238727(∑[n]+n)`
-/

namespace A238728.P17517173282895977141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238727 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A238728.P17517173282895977141

/-! ## A238728.P900634366431405323

`lcm((-1)^n, A238727(A000096(n)))`
-/

namespace A238728.P900634366431405323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A238727 (A000096 n).toNat)

end

end A238728.P900634366431405323

/-! ## A238728.P6212426109162921101

`A238727(A000096(n))%A237533(n+1)`
-/

namespace A238728.P6212426109162921101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238727 (A000096 n).toNat) (A237533 (n + 1))

end

end A238728.P6212426109162921101

/-! ## A238728.P151483842950751545

`A007913((n+1)²)*A238727(A000096(n))`
-/

namespace A238728.P151483842950751545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2) * A238727 (A000096 n).toNat

end

end A238728.P151483842950751545

/-! ## A238728.P3245199551072071532

`A014963(A086645(n))*A238727(A000096(n))`
-/

namespace A238728.P3245199551072071532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A086645 n).toNat * A238727 (A000096 n).toNat

end

end A238728.P3245199551072071532

/-!
# A238729: Maximum flow of a number.

The programs for A238729, there is no canonical definition to state claims against.
-/

/-! ## A238729.P8252020121419504985

`A001221(n+2)*A071187(A000079(n+1))`
-/

namespace A238729.P8252020121419504985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) * A071187 (A000079 (n + 1)).toNat

end

end A238729.P8252020121419504985

/-! ## A238729.P18352212062240846740

`A001221(n+2)*A020639(A170911(n+2))`
-/

namespace A238729.P18352212062240846740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) * A020639 (A170911 (n + 2)).toNat

end

end A238729.P18352212062240846740

/-! ## A238729.P13736535332826760243

`A001222(A007947(n+2))*A020639(A170911(n+2))`
-/

namespace A238729.P13736535332826760243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 2)).toNat * A020639 (A170911 (n + 2)).toNat

end

end A238729.P13736535332826760243

/-! ## A238729.P16728716841165934521

`A001222(A181819(n+2)^A020639(n+2))`
-/

namespace A238729.P16728716841165934521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A181819 (n + 2) : ℚ) ^ (A020639 (n + 2) : ℤ))).toNat

end

end A238729.P16728716841165934521

/-! ## A238729.P9681206889193308407

`A001222(A034444(n+2)^A356838(n+2))`
-/

namespace A238729.P9681206889193308407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A034444 (n + 2) : ℚ) ^ (A356838 (n + 2) : ℤ))).toNat

end

end A238729.P9681206889193308407

/-!
# A238730: The largest prime in each decade (10k,10k+10) containing at least three primes.

The programs for A238730, there is no canonical definition to state claims against.
-/

/-! ## A238730.P5850816965146465253

`A145300(p?[∑[A057944(n)]])`
-/

namespace A238730.P5850816965146465253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145300 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A238730.P5850816965146465253

/-! ## A238730.P14817824182117348601

`A325119(A023036(n+1)+1)`
-/

namespace A238730.P14817824182117348601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325119 (A023036 (n + 1) + 1).toNat

end

end A238730.P14817824182117348601

/-!
# A238731: Riordan array ((1-2*x)/(1-3*x+x^2), x/(1-3*x+x^2)).

The programs for A238731, the canonical program `A238731.P6419685790140350030` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238731 has offset 0).

The definition of A238731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A238731.P6419685790140350030

`3*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238731

/-- `3*T(n-1,k)+T(n-1,k-1)-T(n-2,k)` -/
def P6419685790140350030.Spec : Prop :=
  ∀ n, P6419685790140350030.a n = A238731 n

theorem P6419685790140350030.correct : P6419685790140350030.Spec := by
  intro n
  simp only [A238731]

end A238731

/-! ## A238731.P7318859182214170405

`abs(A124037(n))`
-/

namespace A238731.P7318859182214170405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124037 n|

end

end A238731.P7318859182214170405

namespace A238731

/-- `abs(A124037(n))` -/
def P7318859182214170405.Spec : Prop :=
  ∀ n, P7318859182214170405.a n = A238731 n

end A238731

/-! ## A238731.P12042493023352685203

`abs(A126126(n))`
-/

namespace A238731.P12042493023352685203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126126 n|

end

end A238731.P12042493023352685203

namespace A238731

/-- `abs(A126126(n))` -/
def P12042493023352685203.Spec : Prop :=
  ∀ n, P12042493023352685203.a n = A238731 n

end A238731

/-! ## A238731.P5368070219883683092

`A097807(n)*A126126(n)`
-/

namespace A238731.P5368070219883683092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A126126 n

end

end A238731.P5368070219883683092

namespace A238731

/-- `A097807(n)*A126126(n)` -/
def P5368070219883683092.Spec : Prop :=
  ∀ n, P5368070219883683092.a n = A238731 n

end A238731

/-! ## A238731.P7117518215912310455

`gcd(A000038(n), A124037(n))`
-/

namespace A238731.P7117518215912310455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124037 n)

end

end A238731.P7117518215912310455

namespace A238731

/-- `gcd(A000038(n), A124037(n))` -/
def P7117518215912310455.Spec : Prop :=
  ∀ n, (P7117518215912310455.a n : ℤ) = A238731 n

end A238731

/-! ## A238731.P16386151590757967272

`gcd(A126126(n), A127648(n))`
-/

namespace A238731.P16386151590757967272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126126 n) (A127648 n)

end

end A238731.P16386151590757967272

namespace A238731

/-- `gcd(A126126(n), A127648(n))` -/
def P16386151590757967272.Spec : Prop :=
  ∀ n, (P16386151590757967272.a n : ℤ) = A238731 n

end A238731

/-! ## A238731.P17557048650522351135

`lcm(A020985(n), A124037(n))`
-/

namespace A238731.P17557048650522351135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124037 n)

end

end A238731.P17557048650522351135

namespace A238731

/-- `lcm(A020985(n), A124037(n))` -/
def P17557048650522351135.Spec : Prop :=
  ∀ n, (P17557048650522351135.a n : ℤ) = A238731 n

end A238731

/-! ## A238731.P14214072120084482568

`lcm(A033999(n), A126126(n))`
-/

namespace A238731.P14214072120084482568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A126126 n)

end

end A238731.P14214072120084482568

namespace A238731

/-- `lcm(A033999(n), A126126(n))` -/
def P14214072120084482568.Spec : Prop :=
  ∀ n, (P14214072120084482568.a n : ℤ) = A238731 n

end A238731

/-! ## A238731.P4975946833327422578

`lcm(A065357(n)*A126126(n), A065357(n))`
-/

namespace A238731.P4975946833327422578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n * A126126 n) (A065357 n)

end

end A238731.P4975946833327422578

namespace A238731

/-- `lcm(A065357(n)*A126126(n), A065357(n))` -/
def P4975946833327422578.Spec : Prop :=
  ∀ n, (P4975946833327422578.a n : ℤ) = A238731 n

end A238731

/-! ## A238731.P1745017464501167692

`A097807(A057944(n))*A097807(n)*A124037(n)`
-/

namespace A238731.P1745017464501167692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A057944 n).toNat * A097807 n * A124037 n

end

end A238731.P1745017464501167692

namespace A238731

/-- `A097807(A057944(n))*A097807(n)*A124037(n)` -/
def P1745017464501167692.Spec : Prop :=
  ∀ n, P1745017464501167692.a n = A238731 n

end A238731

/-!
# A238732: Number of primes p < n with floor((n-p)/3) a square.

The programs for A238732, there is no canonical definition to state claims against.
-/

/-! ## A238732.P129291791120817266

`A319443(A122388(n+1)+A001970(n))`
-/

namespace A238732.P129291791120817266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319443 (A122388 (n + 1) + A001970 n).toNat

end

end A238732.P129291791120817266

/-!
# A238735: Number of prime pairs {2^n + (2k + 1), (2k + 1)*2^n + 1}, k < n.

The programs for A238735, there is no canonical definition to state claims against.
-/

/-! ## A238735.P15365142415306091263

`C(A273429(2*n), A115570(A072199(n+1)))`
-/

namespace A238735.P15365142415306091263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A273429 (2 * n)).toNat (A115570 (A072199 (n + 1)).toNat).toNat

end

end A238735.P15365142415306091263

/-! ## A238735.P8294096193840579437

`A195349(A134406(2*n+5))%4`
-/

namespace A238735.P8294096193840579437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195349 (A134406 (2 * n + 5)).toNat) 4

end

end A238735.P8294096193840579437

/-! ## A238735.P12358567934193597368

`A129447(xor(A002663(n), A005843(n)))`
-/

namespace A238735.P12358567934193597368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (Int.xor (A002663 n) (A005843 n)).toNat

end

end A238735.P12358567934193597368

/-! ## A238735.P8174250585259425541

`and(A122851(n)+2, A183451(n+1))`
-/

namespace A238735.P8174250585259425541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122851 n + 2) (A183451 (n + 1))

end

end A238735.P8174250585259425541

/-! ## A238735.P6497195433355302501

`A370884(A098550(n+1)+A033484(n))`
-/

namespace A238735.P6497195433355302501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370884 (A098550 (n + 1) + A033484 n).toNat

end

end A238735.P6497195433355302501

/-!
# A238737: a(n) = 2*n+2 - A224911(n).

The programs for A238737, the canonical program `A238737.P4243855582569951164` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238737 has offset 0).

The definition of A238737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238737.P14481732467558716154

`A049716(n+1)-1`
-/

namespace A238737.P14481732467558716154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 1) - 1

end

end A238737.P14481732467558716154

namespace A238737

/-- `A049716(n+1)-1` -/
def P14481732467558716154.Spec : Prop :=
  ∀ n, P14481732467558716154.a n = A238737 n

end A238737

/-! ## A238737.P4243855582569951164

`A175851(2*(n+1))-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A238737

/-- `A175851(2*(n+1))-1` -/
def P4243855582569951164.Spec : Prop :=
  ∀ n, P4243855582569951164.a n = A238737 n

theorem P4243855582569951164.correct : P4243855582569951164.Spec := by
  intro n
  simp only [A238737]

end A238737

/-! ## A238737.P8076508842429830687

`n-A308044(n+2)/2`
-/

namespace A238737.P8076508842429830687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A308044 (n + 2) : ℚ) / 2

end

end A238737.P8076508842429830687

namespace A238737

/-- `n-A308044(n+2)/2` -/
def P8076508842429830687.Spec : Prop :=
  ∀ n, P8076508842429830687.a n = (A238737 n : ℚ)

end A238737

/-! ## A238737.P16832344287022229190

`A175851(Δ[n²])%Δ[n²]`
-/

namespace A238737.P16832344287022229190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175851 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A238737.P16832344287022229190

namespace A238737

/-- `A175851(Δ[n²])%Δ[n²]` -/
def P16832344287022229190.Spec : Prop :=
  ∀ n, P16832344287022229190.a n = A238737 n

end A238737

/-! ## A238737.P2450834498585114158

`2*(n+1)-A060308(n+1)`
-/

namespace A238737.P2450834498585114158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A060308 (n + 1)

end

end A238737.P2450834498585114158

namespace A238737

/-- `2*(n+1)-A060308(n+1)` -/
def P2450834498585114158.Spec : Prop :=
  ∀ n, P2450834498585114158.a n = A238737 n

end A238737

/-! ## A238737.P514736711015838706

`gcd(a(n-1)+2, C(2, A000005(2*n+1)))` with `a(0)=0`
-/

namespace A238737.P514736711015838706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.gcd (a (n - 1) + 2) (Nat.choose 2 (A000005 (2 * n + 1)).toNat)

end

end A238737.P514736711015838706

namespace A238737

/-- `gcd(a(n-1)+2, C(2, A000005(2*n+1)))` -/
def P514736711015838706.Spec : Prop :=
  ∀ n, (P514736711015838706.a n : ℤ) = A238737 n

end A238737

/-! ## A238737.P18081071104609398396

`2*(n+1)-A000040(∑[C(2*n+1, ∏{d}[2*n+1, #])])`
-/

namespace A238737.P18081071104609398396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238737.P18081071104609398396

namespace A238737

/-- `2*(n+1)-A000040(∑[C(2*n+1, ∏{d}[2*n+1, #])])` -/
def P18081071104609398396.Spec : Prop :=
  ∀ n, P18081071104609398396.a n = A238737 n

end A238737

/-! ## A238737.P7074839261530554513

`A267182(2*A049716(n+1))`
-/

namespace A238737.P7074839261530554513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * A049716 (n + 1)).toNat

end

end A238737.P7074839261530554513

namespace A238737

/-- `A267182(2*A049716(n+1))` -/
def P7074839261530554513.Spec : Prop :=
  ∀ n, P7074839261530554513.a n = A238737 n

end A238737

/-! ## A238737.P4852878639574923077

`A003986(C(A175851(2*(n+1)), 2))`
-/

namespace A238737.P4852878639574923077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (A175851 (2 * (n + 1))).toNat 2)

end

end A238737.P4852878639574923077

namespace A238737

/-- `A003986(C(A175851(2*(n+1)), 2))` -/
def P4852878639574923077.Spec : Prop :=
  ∀ n, P4852878639574923077.a n = A238737 n

end A238737

/-! ## A238737.P5963417589748624477

`A152920(C(A175851(2*(n+1)), 2))`
-/

namespace A238737.P5963417589748624477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (Nat.choose (A175851 (2 * (n + 1))).toNat 2)

end

end A238737.P5963417589748624477

namespace A238737

/-- `A152920(C(A175851(2*(n+1)), 2))` -/
def P5963417589748624477.Spec : Prop :=
  ∀ n, P5963417589748624477.a n = A238737 n

end A238737

/-! ## A238737.P3194526596361517735

`A005843(n)+2-A060308(n+1)`
-/

namespace A238737.P3194526596361517735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A060308 (n + 1))

end

end A238737.P3194526596361517735

namespace A238737

/-- `A005843(n)+2-A060308(n+1)` -/
def P3194526596361517735.Spec : Prop :=
  ∀ n, P3194526596361517735.a n = A238737 n

end A238737

/-! ## A238737.P2060573184121422160

`A033558(n+1)-A308022(n+2)`
-/

namespace A238737.P2060573184121422160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (n + 1) - A308022 (n + 2)

end

end A238737.P2060573184121422160

namespace A238737

/-- `A033558(n+1)-A308022(n+2)` -/
def P2060573184121422160.Spec : Prop :=
  ∀ n, P2060573184121422160.a n = A238737 n

end A238737

/-! ## A238737.P8529902023230316708

`A144396(n+1)-(A060308(n+1)+1)`
-/

namespace A238737.P8529902023230316708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) - (A060308 (n + 1) + 1)

end

end A238737.P8529902023230316708

namespace A238737

/-- `A144396(n+1)-(A060308(n+1)+1)` -/
def P8529902023230316708.Spec : Prop :=
  ∀ n, P8529902023230316708.a n = A238737 n

end A238737

/-! ## A238737.P7343607096716468521

`A151800(2*n+1)-A119257(2*(n+1))`
-/

namespace A238737.P7343607096716468521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n + 1) - A119257 (2 * (n + 1))

end

end A238737.P7343607096716468521

namespace A238737

/-- `A151800(2*n+1)-A119257(2*(n+1))` -/
def P7343607096716468521.Spec : Prop :=
  ∀ n, P7343607096716468521.a n = A238737 n

end A238737

/-! ## A238737.P4796268475108910805

`A060264(n+1)-(A060308(n+1)+A060266(n+1))`
-/

namespace A238737.P4796268475108910805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n + 1) - (A060308 (n + 1) + A060266 (n + 1))

end

end A238737.P4796268475108910805

namespace A238737

/-- `A060264(n+1)-(A060308(n+1)+A060266(n+1))` -/
def P4796268475108910805.Spec : Prop :=
  ∀ n, P4796268475108910805.a n = A238737 n

end A238737

/-! ## A238737.P596766829347371002

`A064722(2*(n+1))`
-/

namespace A238737.P596766829347371002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (2 * (n + 1))

end

end A238737.P596766829347371002

namespace A238737

/-- `A064722(2*(n+1))` -/
def P596766829347371002.Spec : Prop :=
  ∀ n, P596766829347371002.a n = A238737 n

end A238737

/-! ## A238737.P9782722117816493620

`A049711(2*n+3)-1`
-/

namespace A238737.P9782722117816493620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * n + 3) - 1

end

end A238737.P9782722117816493620

namespace A238737

/-- `A049711(2*n+3)-1` -/
def P9782722117816493620.Spec : Prop :=
  ∀ n, P9782722117816493620.a n = A238737 n

end A238737

/-! ## A238737.P14091995263191709759

`A308050(2*(n+2))-2`
-/

namespace A238737.P14091995263191709759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (2 * (n + 2)) - 2

end

end A238737.P14091995263191709759

namespace A238737

/-- `A308050(2*(n+2))-2` -/
def P14091995263191709759.Spec : Prop :=
  ∀ n, P14091995263191709759.a n = A238737 n

end A238737

/-! ## A238737.P13461095704527800412

`2*n+1-A070320(2*n+1)`
-/

namespace A238737.P13461095704527800412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A070320 (2 * n + 1)

end

end A238737.P13461095704527800412

namespace A238737

/-- `2*n+1-A070320(2*n+1)` -/
def P13461095704527800412.Spec : Prop :=
  ∀ n, P13461095704527800412.a n = A238737 n

end A238737

/-!
# A238738: Expansion of (1 + 2*x + 2*x^2)/(1 - x - 2*x^3 + 2*x^4 + x^6 - x^7).

The programs for A238738, the canonical program `A238738.P11397803362388913032` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238738 has offset 0).

The definition of A238738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A238738.P11397803362388913032`, by `A238738.P11397803362388913032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238738.P11397803362388913032

`ogf((1+2x+2x^2)/(1-x-2x^3+2x^4+x^6-x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238738

/-- `ogf((1+2x+2x^2)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P11397803362388913032.Spec : Prop :=
  ∀ n, P11397803362388913032.a n = A238738 n

theorem P11397803362388913032.correct : P11397803362388913032.Spec := by
  intro n
  simp only [A238738]

end A238738

/-! ## A238738.P13537200583060524498

`(floor(n/3)+1)*(4*n-7*floor(n/3)+2)/2`
-/

namespace A238738.P13537200583060524498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(n : ℚ) / 3⌋ + 1) * ((4 * n : ℤ) - 7 * ⌊(n : ℚ) / 3⌋ + 2) : ℚ) / 2

end

end A238738.P13537200583060524498

namespace A238738

/-- `(floor(n/3)+1)*(4*n-7*floor(n/3)+2)/2` -/
def P13537200583060524498.Spec : Prop :=
  ∀ n, P13537200583060524498.a n = (A238738 n : ℚ)

end A238738

/-! ## A238738.P11473565509127108914

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11, a(5)=15, a(6)=18`
-/

namespace A238738.P11473565509127108914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 11, 15, 18] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6) + a (n - 7)

end

end A238738.P11473565509127108914

namespace A238738

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P11473565509127108914.Spec : Prop :=
  ∀ n, P11473565509127108914.a n = A238738 n

end A238738

/-! ## A238738.P3546309842971647075

`∑[lcm(2, round(2*n/3))/2+1]`
-/

namespace A238738.P3546309842971647075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238738.P3546309842971647075

namespace A238738

/-- `∑[lcm(2, round(2*n/3))/2+1]` -/
def P3546309842971647075.Spec : Prop :=
  ∀ n, P3546309842971647075.a n = (A238738 n : ℚ)

end A238738

/-! ## A238738.P12250218961107388517

`∑[a(n-3)+a(n%3)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A238738.P12250218961107388517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 3) + f1 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238738.P12250218961107388517

namespace A238738

/-- `∑[a(n-3)+a(n%3)]` -/
def P12250218961107388517.Spec : Prop :=
  ∀ n, (P12250218961107388517.a n : ℤ) = A238738 n

end A238738

/-! ## A238738.P785541988962750440

`∑[ceil((n+1)*(n²+1)%3/3)]`
-/

namespace A238738.P785541988962750440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * ((((n ^ 2 + 1) % 3 : ℕ) : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238738.P785541988962750440

namespace A238738

/-- `∑[ceil((n+1)*(n²+1)%3/3)]` -/
def P785541988962750440.Spec : Prop :=
  ∀ n, P785541988962750440.a n = A238738 n

end A238738

/-! ## A238738.P15921139946068780562

`∑[A087627(n)]`
-/

namespace A238738.P15921139946068780562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238738.P15921139946068780562

namespace A238738

/-- `∑[A087627(n)]` -/
def P15921139946068780562.Spec : Prop :=
  ∀ n, P15921139946068780562.a n = A238738 n

end A238738

/-! ## A238738.P15999749121649629795

`∑[n+1-A186731(n)]`
-/

namespace A238738.P15999749121649629795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A186731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238738.P15999749121649629795

namespace A238738

/-- `∑[n+1-A186731(n)]` -/
def P15999749121649629795.Spec : Prop :=
  ∀ n, P15999749121649629795.a n = A238738 n

end A238738

/-! ## A238738.P13647376649350877271

`A006446(n+1)+∑[ceil(n/3)]`
-/

namespace A238738.P13647376649350877271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238738.P13647376649350877271

namespace A238738

/-- `A006446(n+1)+∑[ceil(n/3)]` -/
def P13647376649350877271.Spec : Prop :=
  ∀ n, P13647376649350877271.a n = A238738 n

end A238738

/-! ## A238738.P11855808738797702295

`A001840(n)+∑[∑[char[3*n]]^(n²%3)]`
-/

namespace A238738.P11855808738797702295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A238738.P11855808738797702295

namespace A238738

/-- `A001840(n)+∑[∑[char[3*n]]^(n²%3)]` -/
def P11855808738797702295.Spec : Prop :=
  ∀ n, P11855808738797702295.a n = A238738 n

end A238738

/-! ## A238738.P9794752885192274284

`A298791(n)-A005449(n)`
-/

namespace A238738.P9794752885192274284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298791 n - A005449 n

end

end A238738.P9794752885192274284

namespace A238738

/-- `A298791(n)-A005449(n)` -/
def P9794752885192274284.Spec : Prop :=
  ∀ n, P9794752885192274284.a n = A238738 n

end A238738

/-! ## A238738.P2615174775694110894

`∑[2*A117905(n)]-A117905(n)`
-/

namespace A238738.P2615174775694110894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117905 n

end

end A238738.P2615174775694110894

namespace A238738

/-- `∑[2*A117905(n)]-A117905(n)` -/
def P2615174775694110894.Spec : Prop :=
  ∀ n, P2615174775694110894.a n = A238738 n

end A238738

/-! ## A238738.P9605552077187115793

`A008130(n+2)+A001840(n+1)`
-/

namespace A238738.P9605552077187115793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (n + 2) + A001840 (n + 1)

end

end A238738.P9605552077187115793

namespace A238738

/-- `A008130(n+2)+A001840(n+1)` -/
def P9605552077187115793.Spec : Prop :=
  ∀ n, P9605552077187115793.a n = A238738 n

end A238738

/-! ## A238738.P14073684688960389458

`A001399(2*n+1)-A211534(n+3)`
-/

namespace A238738.P14073684688960389458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n + 1) - A211534 (n + 3)

end

end A238738.P14073684688960389458

namespace A238738

/-- `A001399(2*n+1)-A211534(n+3)` -/
def P14073684688960389458.Spec : Prop :=
  ∀ n, P14073684688960389458.a n = A238738 n

end A238738

/-! ## A238738.P11959963077251745910

`A008732(A047212(n+1))`
-/

namespace A238738.P11959963077251745910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A047212 (n + 1)).toNat

end

end A238738.P11959963077251745910

namespace A238738

/-- `A008732(A047212(n+1))` -/
def P11959963077251745910.Spec : Prop :=
  ∀ n, P11959963077251745910.a n = A238738 n

end A238738

/-! ## A238738.P6906141104112432450

`A008732(2*n-A002264(n))`
-/

namespace A238738.P6906141104112432450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 ((2 * n : ℤ) - A002264 n).toNat

end

end A238738.P6906141104112432450

namespace A238738

/-- `A008732(2*n-A002264(n))` -/
def P6906141104112432450.Spec : Prop :=
  ∀ n, P6906141104112432450.a n = A238738 n

end A238738

/-! ## A238738.P441913526711095594

`A008732(n-A002264(n)+n)`
-/

namespace A238738.P441913526711095594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 ((n : ℤ) - A002264 n + (n : ℤ)).toNat

end

end A238738.P441913526711095594

namespace A238738

/-- `A008732(n-A002264(n)+n)` -/
def P441913526711095594.Spec : Prop :=
  ∀ n, P441913526711095594.a n = A238738 n

end A238738

/-! ## A238738.P3440272043621606172

`A008732(n-(A002264(n)-n))`
-/

namespace A238738.P3440272043621606172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 ((n : ℤ) - (A002264 n - (n : ℤ))).toNat

end

end A238738.P3440272043621606172

namespace A238738

/-- `A008732(n-(A002264(n)-n))` -/
def P3440272043621606172.Spec : Prop :=
  ∀ n, P3440272043621606172.a n = A238738 n

end A238738

/-! ## A238738.P6452171625010395076

`A008732(A002264(5*n+2))`
-/

namespace A238738.P6452171625010395076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A002264 (5 * n + 2)).toNat

end

end A238738.P6452171625010395076

namespace A238738

/-- `A008732(A002264(5*n+2))` -/
def P6452171625010395076.Spec : Prop :=
  ∀ n, P6452171625010395076.a n = A238738 n

end A238738

/-! ## A238738.P5153960191219998230

`A008648(A063246(n+1))`
-/

namespace A238738.P5153960191219998230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008648 (A063246 (n + 1)).toNat

end

end A238738.P5153960191219998230

namespace A238738

/-- `A008648(A063246(n+1))` -/
def P5153960191219998230.Spec : Prop :=
  ∀ n, P5153960191219998230.a n = A238738 n

end A238738

/-!
# A238742: Number of partitions p of 2n+1 such that n - (number of parts of p) is a part of p.

The programs for A238742, there is no canonical definition to state claims against.
-/

/-! ## A238742.P11185043821709691349

`∑[∑[A010388(A000793(n))]]`
-/

namespace A238742.P11185043821709691349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010388 (A000793 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238742.P11185043821709691349

/-! ## A238742.P14148352671982837139

`∑[∑[A328772(A326780(n))]]`
-/

namespace A238742.P14148352671982837139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (A326780 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238742.P14148352671982837139

/-! ## A238742.P9188397927510462174

`A234300(xor(A103481(n), A346142(n+3)))`
-/

namespace A238742.P9188397927510462174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (Int.xor (A103481 n) (A346142 (n + 3))).toNat

end

end A238742.P9188397927510462174

/-!
# A238743: Triangle read by rows: T(n,k) = A059382(n)/(A059382(k)*A059382(n-k)).

The programs for A238743, there is no canonical definition to state claims against.
-/

/-! ## A238743.P17369178716054520047

`A181543(n)-A001222(A129455(n))`
-/

namespace A238743.P17369178716054520047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 n - A001222 (A129455 n).toNat

end

end A238743.P17369178716054520047

/-! ## A238743.P13666121379000293959

`A195109(A167034(n))`
-/

namespace A238743.P13666121379000293959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195109 (A167034 n).toNat

end

end A238743.P13666121379000293959

/-! ## A238743.P16852857628349616368

`A213257(A152969(n))`
-/

namespace A238743.P16852857628349616368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213257 (A152969 n).toNat

end

end A238743.P16852857628349616368

/-! ## A238743.P14447078408224697303

`A329396(A086645(n))`
-/

namespace A238743.P14447078408224697303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 (A086645 n).toNat

end

end A238743.P14447078408224697303

/-! ## A238743.P4190473115753130421

`A276070(A154979(n))`
-/

namespace A238743.P4190473115753130421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276070 (A154979 n).toNat

end

end A238743.P4190473115753130421

/-!
# A238744: Irregular table read by rows: T (n, k) gives the number of primes p such that p^k divides n; table omits all zero values.

The programs for A238744, there is no canonical definition to state claims against.
-/

/-! ## A238744.P10323768432693331964

`∑{e}[A128651(n+2), #]`
-/

namespace A238744.P10323768432693331964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A238744.P10323768432693331964

/-! ## A238744.P1843878542156886006

`A001221(A128651(n+2))`
-/

namespace A238744.P1843878542156886006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A128651 (n + 2)).toNat

end

end A238744.P1843878542156886006

/-! ## A238744.P10041882395325998380

`A001221(A387835(n+2))`
-/

namespace A238744.P10041882395325998380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A387835 (n + 2)).toNat

end

end A238744.P10041882395325998380

/-! ## A238744.P14962860565155344109

`∑{p}[A128651(n+2), A001222(#)]`
-/

namespace A238744.P14962860565155344109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A238744.P14962860565155344109

/-! ## A238744.P6482747766457638194

`val(A000005(A128651(n+2)²), 3)`
-/

namespace A238744.P6482747766457638194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A128651 (n + 2) ^ 2).toNat).toNat 3

end

end A238744.P6482747766457638194

/-! ## A238744.P7241749259310907588

`A000720(A076526(A128651(n+2)²))`
-/

namespace A238744.P7241749259310907588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076526 (A128651 (n + 2) ^ 2).toNat).toNat

end

end A238744.P7241749259310907588

/-! ## A238744.P17048908453724876891

`A006530(A076526(A128651(n+2))²)`
-/

namespace A238744.P17048908453724876891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076526 (A128651 (n + 2)).toNat ^ 2).toNat

end

end A238744.P17048908453724876891

/-!
# A238745: a(1) = 1; for n > 1, if the first integer with the same prime signature as n is factorized into primorials as Product A002110(i)^e(i), then a(n) = Product prime(i)^e(i).

The programs for A238745, the canonical program `A238745.P1043070907349583070` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238745 has offset 1).

The definition of A238745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A238745.P1043070907349583070

`A122111(A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A238745

/-- `A122111(A181819(n+1))` -/
def P1043070907349583070.Spec : Prop :=
  ∀ n, P1043070907349583070.a n = A238745 (n + 1)

theorem P1043070907349583070.correct : P1043070907349583070.Spec := by
  intro n
  simp only [A238745, Nat.add_sub_cancel]

end A238745

/-! ## A238745.P8774202135065290061

`A181819(A124859(n+1))`
-/

namespace A238745.P8774202135065290061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A124859 (n + 1)).toNat

end

end A238745.P8774202135065290061

namespace A238745

/-- `A181819(A124859(n+1))` -/
def P8774202135065290061.Spec : Prop :=
  ∀ n, P8774202135065290061.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P3625145010669189865

`A181815(A101296(n+1))`
-/

namespace A238745.P3625145010669189865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A101296 (n + 1)).toNat

end

end A238745.P3625145010669189865

namespace A238745

/-- `A181815(A101296(n+1))` -/
def P3625145010669189865.Spec : Prop :=
  ∀ n, P3625145010669189865.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P16101013346695115310

`A319626(A046523(n+1))`
-/

namespace A238745.P16101013346695115310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A046523 (n + 1)).toNat

end

end A238745.P16101013346695115310

namespace A238745

/-- `A319626(A046523(n+1))` -/
def P16101013346695115310.Spec : Prop :=
  ∀ n, P16101013346695115310.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P11125875798213807890

`A122111(∏{e}[n+1, A000040(#)])`
-/

namespace A238745.P11125875798213807890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A238745.P11125875798213807890

namespace A238745

/-- `A122111(∏{e}[n+1, A000040(#)])` -/
def P11125875798213807890.Spec : Prop :=
  ∀ n, P11125875798213807890.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P14331443450077588042

`A122111(∏{e}[n+1, A095285(#)])`
-/

namespace A238745.P14331443450077588042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n), A095285 (Nat.factorization (f1 n) p)).toNat

end

end A238745.P14331443450077588042

namespace A238745

/-- `A122111(∏{e}[n+1, A095285(#)])` -/
def P14331443450077588042.Spec : Prop :=
  ∀ n, P14331443450077588042.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P6422742520094621769

`A122111(∏{e}[n+1, A095313(#)])`
-/

namespace A238745.P6422742520094621769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n), A095313 (Nat.factorization (f1 n) p)).toNat

end

end A238745.P6422742520094621769

namespace A238745

/-- `A122111(∏{e}[n+1, A095313(#)])` -/
def P6422742520094621769.Spec : Prop :=
  ∀ n, P6422742520094621769.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P11106500163928677779

`A122111(A329601(n+1)*A351944(n+1))`
-/

namespace A238745.P11106500163928677779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A329601 (n + 1) * A351944 (n + 1)).toNat

end

end A238745.P11106500163928677779

namespace A238745

/-- `A122111(A329601(n+1)*A351944(n+1))` -/
def P11106500163928677779.Spec : Prop :=
  ∀ n, P11106500163928677779.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P808435102724971164

`A046523(n+1)/A064989(2*A046523(n+1))`
-/

namespace A238745.P808435102724971164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A064989 (2 * A046523 (n + 1)).toNat : ℚ)

end

end A238745.P808435102724971164

namespace A238745

/-- `A046523(n+1)/A064989(2*A046523(n+1))` -/
def P808435102724971164.Spec : Prop :=
  ∀ n, P808435102724971164.a n = (A238745 (n + 1) : ℚ)

end A238745

/-! ## A238745.P15474850276664816993

`A046523(n+1)/A250470(2*A046523(n+1))`
-/

namespace A238745.P15474850276664816993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A250470 (2 * A046523 (n + 1)).toNat : ℚ)

end

end A238745.P15474850276664816993

namespace A238745

/-- `A046523(n+1)/A250470(2*A046523(n+1))` -/
def P15474850276664816993.Spec : Prop :=
  ∀ n, P15474850276664816993.a n = (A238745 (n + 1) : ℚ)

end A238745

/-! ## A238745.P8631852653100586266

`A046523(A003961(n+1))/A250470(A046523(n+1))`
-/

namespace A238745.P8631852653100586266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (A003961 (n + 1)).toNat : ℚ) / (A250470 (A046523 (n + 1)).toNat : ℚ)

end

end A238745.P8631852653100586266

namespace A238745

/-- `A046523(A003961(n+1))/A250470(A046523(n+1))` -/
def P8631852653100586266.Spec : Prop :=
  ∀ n, P8631852653100586266.a n = (A238745 (n + 1) : ℚ)

end A238745

/-! ## A238745.P7930703444499623441

`∏{e}[A124859(n+1), A000040(#)]`
-/

namespace A238745.P7930703444499623441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A238745.P7930703444499623441

namespace A238745

/-- `∏{e}[A124859(n+1), A000040(#)]` -/
def P7930703444499623441.Spec : Prop :=
  ∀ n, P7930703444499623441.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P9648585190095155646

`∏{e}[A124859(n+1), A181821(#)+1]`
-/

namespace A238745.P9648585190095155646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A181821 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A238745.P9648585190095155646

namespace A238745

/-- `∏{e}[A124859(n+1), A181821(#)+1]` -/
def P9648585190095155646.Spec : Prop :=
  ∀ n, P9648585190095155646.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P17944533877465693935

`∏{e}[∏{e}[n+1, A002110(#)], A000040(#)]`
-/

namespace A238745.P17944533877465693935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A002110 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A238745.P17944533877465693935

namespace A238745

/-- `∏{e}[∏{e}[n+1, A002110(#)], A000040(#)]` -/
def P17944533877465693935.Spec : Prop :=
  ∀ n, P17944533877465693935.a n = A238745 (n + 1)

end A238745

/-! ## A238745.P13986817772778419404

`A181815(A361808(A181819(A181820(A361808(n+1)))))`
-/

namespace A238745.P13986817772778419404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A361808 (A181819 (A181820 (A361808 (n + 1)).toNat).toNat).toNat).toNat

end

end A238745.P13986817772778419404

namespace A238745

/-- `A181815(A361808(A181819(A181820(A361808(n+1)))))` -/
def P13986817772778419404.Spec : Prop :=
  ∀ n, P13986817772778419404.a n = A238745 (n + 1)

end A238745

/-!
# A238746: Number of distinct prime signatures that occur among the divisors of the n-th prime signature number (A025487(n)).

The programs for A238746, there is no canonical definition to state claims against.
-/

/-! ## A238746.P15121833584958838657

`A322584(A025487(n+1))`
-/

namespace A238746.P15121833584958838657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (A025487 (n + 1)).toNat

end

end A238746.P15121833584958838657

/-! ## A238746.P3460004268082737901

`A085082(A181822(n+1))`
-/

namespace A238746.P3460004268082737901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A181822 (n + 1)).toNat

end

end A238746.P3460004268082737901

/-! ## A238746.P8198560664067096268

`A238690(A181820(n+1))`
-/

namespace A238746.P8198560664067096268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A181820 (n + 1)).toNat

end

end A238746.P8198560664067096268

/-! ## A238746.P3538672093216879997

`A238690(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A238746.P3538672093216879997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A238746.P3538672093216879997

/-! ## A238746.P15906634795948297528

`∑{d}[A025487(n+1), A322585(#)]`
-/

namespace A238746.P15906634795948297528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238746.P15906634795948297528

/-! ## A238746.P3226410194284195043

`∑{d}[record[A329899(n+1)], A322585(#)]`
-/

namespace A238746.P3226410194284195043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238746.P3226410194284195043

/-! ## A238746.P11160309520932634848

`∑{d}[record[A051466(n+2)], A322585(#)]`
-/

namespace A238746.P11160309520932634848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238746.P11160309520932634848

/-! ## A238746.P3320403302477320896

`∑{d}[A181821(A181820(n+1)), A322585(#)]`
-/

namespace A238746.P3320403302477320896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238746.P3320403302477320896

/-! ## A238746.P11162740168387295302

`∑{d}[A051466(A329898(n+1)), A322585(#)]`
-/

namespace A238746.P11162740168387295302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238746.P11162740168387295302

/-! ## A238746.P3176664211709415031

`∑{d}[A329899(A330683(n+1)), A322585(#)]`
-/

namespace A238746.P3176664211709415031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 d

end

end A238746.P3176664211709415031

/-! ## A238746.P9109413616509126597

`A322584(record[A051466(n+2)])`
-/

namespace A238746.P9109413616509126597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A238746.P9109413616509126597

/-!
# A238747: Row n of table gives prime metasignature of n: count total appearances of each distinct integer that appears in the prime signature of n, then arrange totals in nonincreasing order.

The programs for A238747, there is no canonical definition to state claims against.
-/

/-! ## A238747.P18178872541932372860

`A353742(A090108(n+1))`
-/

namespace A238747.P18178872541932372860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (A090108 (n + 1)).toNat

end

end A238747.P18178872541932372860

/-! ## A238747.P14109399845244584148

`gcd(A153494(n+1), A353742(n+1))`
-/

namespace A238747.P14109399845244584148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153494 (n + 1)) (A353742 (n + 1))

end

end A238747.P14109399845244584148

/-! ## A238747.P1679274975368795453

`A353742(n+1)%A098290(∑[abs(1-4*n)])`
-/

namespace A238747.P1679274975368795453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353742 (n + 1)) (A098290 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A238747.P1679274975368795453

/-! ## A238747.P11290976753578490052

`A353742(n+1)+A000007(A001844(n))`
-/

namespace A238747.P11290976753578490052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (n + 1) + A000007 (A001844 n).toNat

end

end A238747.P11290976753578490052

/-! ## A238747.P11364930185469326176

`A353742(n+1)+A000007(A005893(n))`
-/

namespace A238747.P11364930185469326176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (n + 1) + A000007 (A005893 n).toNat

end

end A238747.P11364930185469326176

/-! ## A238747.P8625975915029451447

`A353742(n+1)+A010673(A046092(n))`
-/

namespace A238747.P8625975915029451447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (n + 1) + A010673 (A046092 n).toNat

end

end A238747.P8625975915029451447

/-! ## A238747.P11623946105341783556

`A010054(A000384(n))*A353742(n+1)`
-/

namespace A238747.P11623946105341783556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000384 n).toNat * A353742 (n + 1)

end

end A238747.P11623946105341783556

/-! ## A238747.P461568752192445775

`A033999(A001105(n))*A353742(n+1)`
-/

namespace A238747.P461568752192445775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001105 n).toNat * A353742 (n + 1)

end

end A238747.P461568752192445775

/-! ## A238747.P5988831446872053635

`A353742(n+1)%A040056(A005899(n))`
-/

namespace A238747.P5988831446872053635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353742 (n + 1)) (A040056 (A005899 n).toNat)

end

end A238747.P5988831446872053635

/-! ## A238747.P3537721684630326684

`A327500(A111470(n+2))`
-/

namespace A238747.P3537721684630326684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A111470 (n + 2)).toNat

end

end A238747.P3537721684630326684

/-!
# A238748: Numbers k such that each integer that appears in the prime signature of k appears an even number of times.

The programs for A238748, there is no canonical definition to state claims against.
-/

/-! ## A238748.P3164715550084793073

`filter[A063774(n+1), A181183(#)]`
-/

namespace A238748.P3164715550084793073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A238748.P3164715550084793073

/-! ## A238748.P3858871878393287318

`∩[A036436(n+1), A063774(n+1)]`
-/

namespace A238748.P3858871878393287318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238748.P3858871878393287318

/-! ## A238748.P16752222146417269982

`∩[A030231(n+1), A063774(n+1)]`
-/

namespace A238748.P16752222146417269982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238748.P16752222146417269982

/-! ## A238748.P7984798147652386936

`∩[A063774(n+1), A162644(n+1)]`
-/

namespace A238748.P7984798147652386936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A238748.P7984798147652386936

/-! ## A238748.P12092407096221505800

`eq[1, A040029(A182860(n+1))]+1`
-/

namespace A238748.P12092407096221505800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 (A182860 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238748.P12092407096221505800

/-! ## A238748.P17116533533893128454

`lt[A007913(A181819(n+1)), 2]+1`
-/

namespace A238748.P17116533533893128454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A181819 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A238748.P17116533533893128454

/-! ## A238748.P15907953812272587785

`eq[1, A003285(A181819(n+1)+1)]+1`
-/

namespace A238748.P15907953812272587785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A181819 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A238748.P15907953812272587785

/-! ## A238748.P4253734412767127484

`record[A000027(n+1)/A040029(A182860(n+1))]`
-/

namespace A238748.P4253734412767127484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A040029 (A182860 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238748.P4253734412767127484

/-!
# A238750: Number T(n,k) of standard Young tableaux with n cells and largest value n in row k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A238750, there is no canonical definition to state claims against.
-/

/-! ## A238750.P15417018645969249824

`A048766(A084938(n)*A346520(n))`
-/

namespace A238750.P15417018645969249824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A084938 n * A346520 n).toNat

end

end A238750.P15417018645969249824

/-! ## A238750.P13494193065329118643

`A238794(A038722(n+1)%A339193(n+1))`
-/

namespace A238750.P13494193065329118643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (Int.tmod (A038722 (n + 1)) (A339193 (n + 1))).toNat

end

end A238750.P13494193065329118643

/-! ## A238750.P3577053543049477413

`A238794(A038722(n+1)+A151722(n)*A238794(n))`
-/

namespace A238750.P3577053543049477413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A038722 (n + 1) + A151722 n * A238794 n).toNat

end

end A238750.P3577053543049477413

/-! ## A238750.P16055964464094907714

`A238794(A151722(n)+A038722(n+1))`
-/

namespace A238750.P16055964464094907714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A151722 n + A038722 (n + 1)).toNat

end

end A238750.P16055964464094907714

/-! ## A238750.P9533438521792362812

`A238794((A061579(n)+1)%A116662(n+1))`
-/

namespace A238750.P9533438521792362812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (Int.tmod (A061579 n + 1) (A116662 (n + 1))).toNat

end

end A238750.P9533438521792362812

/-!
# A238751: Lesser prime of third Mersenne prime pair {2^m - 5, 5*2^m - 1}.

The programs for A238751, there is no canonical definition to state claims against.
-/

/-! ## A238751.P15696530515868917255

`A168616(2*A326703(n+3))`
-/

namespace A238751.P15696530515868917255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 (2 * A326703 (n + 3)).toNat

end

end A238751.P15696530515868917255

/-!
# A238752: Number of nonisomorphic partial 1-differential posets up to rank n.

The programs for A238752, there is no canonical definition to state claims against.
-/

/-! ## A238752.P9111619727497633446

`A008621(A117774(n+1)-A117760(n))`
-/

namespace A238752.P9111619727497633446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A117774 (n + 1) - A117760 n).toNat

end

end A238752.P9111619727497633446

/-! ## A238752.P17994527224732156933

`A065648(A052446(n+1))-A324229(n+1)`
-/

namespace A238752.P17994527224732156933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A052446 (n + 1)).toNat - A324229 (n + 1)

end

end A238752.P17994527224732156933

/-! ## A238752.P2308299523009931584

`and(A028310(A340022(n)), A340018(2*n+3))`
-/

namespace A238752.P2308299523009931584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 (A340022 n).toNat) (A340018 (2 * n + 3))

end

end A238752.P2308299523009931584

/-! ## A238752.P5293408346845209037

`∏[A271325(n!)]-A018783(A000094(n+1))`
-/

namespace A238752.P5293408346845209037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271325 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A018783 (A000094 (n + 1)).toNat

end

end A238752.P5293408346845209037

/-!
# A238754: Triangle read by rows: T(n,k) = A059383(n)/(A059383(k)*A059383(n-k)).

The programs for A238754, there is no canonical definition to state claims against.
-/

/-! ## A238754.P4477930956204666085

`A289630(A156939(n))`
-/

namespace A238754.P4477930956204666085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289630 (A156939 n).toNat

end

end A238754.P4477930956204666085

/-! ## A238754.P669084006154155129

`A059377(A309876(n*A061674(n)))`
-/

namespace A238754.P669084006154155129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (A309876 ((n : ℤ) * A061674 n).toNat).toNat

end

end A238754.P669084006154155129

/-! ## A238754.P15779124781906521988

`A059377(A007318(n)^A040534(n))`
-/

namespace A238754.P15779124781906521988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A040534 n : ℤ))).toNat

end

end A238754.P15779124781906521988

/-! ## A238754.P5791075614115173142

`A059377(A007318(n)^A280506(n+1))`
-/

namespace A238754.P5791075614115173142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059377 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A280506 (n + 1) : ℤ))).toNat

end

end A238754.P5791075614115173142

/-! ## A238754.P17296516941154219895

`A112996(A182779(n+1))`
-/

namespace A238754.P17296516941154219895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112996 (A182779 (n + 1)).toNat

end

end A238754.P17296516941154219895

/-!
# A238755: Second convolution of A065096.

The programs for A238755, the canonical program `A238755.P15434247612324085362` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238755 has offset 0).

The definition of A238755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238755.P3275251751948555289

`char[A090925(n+1)+1]*A110440(A167499(n)-2)`
-/

namespace A238755.P3275251751948555289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090925 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A110440 (A167499 n - 2).toNat

end

end A238755.P3275251751948555289

namespace A238755

/-- `char[A090925(n+1)+1]*A110440(A167499(n)-2)` -/
def P3275251751948555289.Spec : Prop :=
  ∀ n, P3275251751948555289.a n = A238755 n

end A238755

/-! ## A238755.P15434247612324085362

`A057427(A029578(n))*A110440(A167499(n)-2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A238755

/-- `A057427(A029578(n))*A110440(A167499(n)-2)` -/
def P15434247612324085362.Spec : Prop :=
  ∀ n, P15434247612324085362.a n = A238755 n

theorem P15434247612324085362.correct : P15434247612324085362.Spec := by
  intro n
  simp only [A238755]

end A238755

/-! ## A238755.P4402148842131378660

`A110440(A167499(n)-2)*A178489(A238504(n+1))`
-/

namespace A238755.P4402148842131378660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (A167499 n - 2).toNat * A178489 (A238504 (n + 1)).toNat

end

end A238755.P4402148842131378660

namespace A238755

/-- `A110440(A167499(n)-2)*A178489(A238504(n+1))` -/
def P4402148842131378660.Spec : Prop :=
  ∀ n, P4402148842131378660.a n = A238755 n

end A238755

/-! ## A238755.P10095869436790355032

`A110440(A167499(n)-2)*A124625(A089929(2*(n+1)))`
-/

namespace A238755.P10095869436790355032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110440 (A167499 n - 2).toNat * A124625 (A089929 (2 * (n + 1))).toNat

end

end A238755.P10095869436790355032

namespace A238755

/-- `A110440(A167499(n)-2)*A124625(A089929(2*(n+1)))` -/
def P10095869436790355032.Spec : Prop :=
  ∀ n, P10095869436790355032.a n = A238755 n

end A238755

/-! ## A238755.P1865617469251158773

`A110440(A167499(n)-2)%A001850(n)`
-/

namespace A238755.P1865617469251158773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110440 (A167499 n - 2).toNat) (A001850 n)

end

end A238755.P1865617469251158773

namespace A238755

/-- `A110440(A167499(n)-2)%A001850(n)` -/
def P1865617469251158773.Spec : Prop :=
  ∀ n, P1865617469251158773.a n = A238755 n

end A238755

/-!
# A238759: The number of P-positions in the game of Nim with up to five piles, allowing for piles of zero, such that the total number of objects in all piles is 2n.

The programs for A238759, there is no canonical definition to state claims against.
-/

/-! ## A238759.P2747790729451543757

`(n+1)*A018394(A131816(n))`
-/

namespace A238759.P2747790729451543757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A018394 (A131816 n).toNat

end

end A238759.P2747790729451543757

/-! ## A238759.P13776346826582312601

`lcm(n+1, A373948(A223263(n+1)))`
-/

namespace A238759.P13776346826582312601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A373948 (A223263 (n + 1)).toNat)

end

end A238759.P13776346826582312601

/-!
# A238760: Sum of column entries of the table with rows of prime numbers (2,3,0,0,...), (0,5,7,11,0,...), (0,0,13,17,19,23,0,...), (0,0,0,29,31,37,41,43,0,...), ...

The programs for A238760, there is no canonical definition to state claims against.
-/

/-! ## A238760.P1489275344131703879

`A366127(2*n+1)+A313155(A066189(n))`
-/

namespace A238760.P1489275344131703879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366127 (2 * n + 1) + A313155 (A066189 n).toNat

end

end A238760.P1489275344131703879

/-! ## A238760.P4362197708793620512

`A268115(A279558(n))+A062365(3*n+2)`
-/

namespace A238760.P4362197708793620512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268115 (A279558 n).toNat + A062365 (3 * n + 2)

end

end A238760.P4362197708793620512

/-!
# A238761: Subtriangle of the generalized ballot numbers, T(n,k) = A238762(2*k-1,2*n-1), 1<=k<=n, read by rows.

The programs for A238761, there is no canonical definition to state claims against.
-/

/-! ## A238761.P3154882093563423490

`C(row(n)+1+col(n), row(n)+1)*(row(n)+1-col(n))`
-/

namespace A238761.P3154882093563423490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n + 1) : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A238761.P3154882093563423490

/-! ## A238761.P7584745431014626689

`(C(comp[∑[n]]-n, 2)-n)*C(n+1-C(∑[char[∑[n+1]]], 2), ∑[char[∑[n]]])`
-/

namespace A238761.P7584745431014626689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.choose ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)).toNat (∑ j ∈ Finset.range (n + 1), f6 j) : ℤ)

end

end A238761.P7584745431014626689

/-! ## A238761.P10214019472098791748

`(C(comp[∑[n]]-n, 2)-n)*A178300(n+1)`
-/

namespace A238761.P10214019472098791748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A178300 (n + 1)

end

end A238761.P10214019472098791748

/-! ## A238761.P10231343474894708819

`(n+1-C(∑[char[∑[n+1]]], 2))*A009766(n)`
-/

namespace A238761.P10231343474894708819
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A009766 n

end

end A238761.P10231343474894708819

/-! ## A238761.P3050797966225332522

`A009766(n)*(A051162(n)+1)`
-/

namespace A238761.P3050797966225332522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * (A051162 n + 1)

end

end A238761.P3050797966225332522

/-! ## A238761.P17983869817364069976

`A009766(n)*A094727(n+1)`
-/

namespace A238761.P17983869817364069976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A094727 (n + 1)

end

end A238761.P17983869817364069976

/-! ## A238761.P3937655564108854207

`A004736(n+1)*A178300(n+1)`
-/

namespace A238761.P3937655564108854207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A178300 (n + 1)

end

end A238761.P3937655564108854207

/-! ## A238761.P11493799287870135898

`(A025581(n)+1)*A178300(n+1)`
-/

namespace A238761.P11493799287870135898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A178300 (n + 1)

end

end A238761.P11493799287870135898

/-! ## A238761.P2528246732758488489

`A178300(n+1)*A373214(n+1)`
-/

namespace A238761.P2528246732758488489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (n + 1) * A373214 (n + 1)

end

end A238761.P2528246732758488489

/-! ## A238761.P9443175229077628877

`A105725(n+1)/A077012(n+1)`
-/

namespace A238761.P9443175229077628877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105725 (n + 1) : ℚ) / (A077012 (n + 1) : ℚ)

end

end A238761.P9443175229077628877

/-!
# A238762: Triangle read by rows, generalized ballot numbers, 0<=k<=n.

The programs for A238762, there is no canonical definition to state claims against.
-/

/-! ## A238762.P13832884454100247519

`A224444(6*A246696(n))`
-/

namespace A238762.P13832884454100247519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224444 (6 * A246696 n).toNat

end

end A238762.P13832884454100247519

/-! ## A238762.P7282758444650070413

`A128174(n+1)*A181935(∑[(2*n)²-n])`
-/

namespace A238762.P7282758444650070413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A181935 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238762.P7282758444650070413

/-! ## A238762.P9967213357630986866

`A001222(A117983(abs(A053120(n))))`
-/

namespace A238762.P9967213357630986866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117983 |A053120 n|.toNat).toNat

end

end A238762.P9967213357630986866

/-! ## A238762.P10114656495615908036

`A115722(A013612(n)*A097591(n))`
-/

namespace A238762.P10114656495615908036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A013612 n * A097591 n).toNat

end

end A238762.P10114656495615908036

/-! ## A238762.P5075772041372591156

`A115722(lcm(A053120(n), A280101(n)))`
-/

namespace A238762.P5075772041372591156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (Int.lcm (A053120 n) (A280101 n))

end

end A238762.P5075772041372591156

/-!
# A238763: A Motzkin triangle read by rows, 0<=k<=n.

The programs for A238763, there is no canonical definition to state claims against.
-/

/-! ## A238763.P649131242976294934

`A064191(A061579(n))*A128174(n+1)`
-/

namespace A238763.P649131242976294934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064191 (A061579 n).toNat * A128174 (n + 1)

end

end A238763.P649131242976294934

/-! ## A238763.P3149602733365233757

`A326370(A196776(n+1)+1)`
-/

namespace A238763.P3149602733365233757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326370 (A196776 (n + 1) + 1).toNat

end

end A238763.P3149602733365233757

/-! ## A238763.P5005147161838825629

`A000120(A053121(n)*A327087(n+1))`
-/

namespace A238763.P5005147161838825629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053121 n * A327087 (n + 1)).toNat

end

end A238763.P5005147161838825629

/-! ## A238763.P9368161137930130332

`A174793(A147545(n+2)+1)*A228085(A271269(n+5))`
-/

namespace A238763.P9368161137930130332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174793 (A147545 (n + 2) + 1).toNat * A228085 (A271269 (n + 5)).toNat

end

end A238763.P9368161137930130332

/-! ## A238763.P9479958890759920283

`and(A082171(n), A367912(A001694(n+1)))`
-/

namespace A238763.P9479958890759920283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082171 n) (A367912 (A001694 (n + 1)).toNat)

end

end A238763.P9479958890759920283

/-!
# A238766: Number of ordered ways to write n = k + m (k > 0 and m > 0) such that prime(prime(k)) - prime(k) + 1, prime(prime(2*k+1)) - prime(2*k+1) + 1 and prime(prime(m)) - prime(m) + 1 are all prime.

The programs for A238766, there is no canonical definition to state claims against.
-/

/-! ## A238766.P10876447054751319543

`A001222(or(A026555(n+2), A026598(n)))`
-/

namespace A238766.P10876447054751319543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A026555 (n + 2)) (A026598 n)).toNat

end

end A238766.P10876447054751319543

/-!
# A238767: Number of n X n 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238767, there is no canonical definition to state claims against.
-/

/-! ## A238767.P16724976344296273980

`A238775((n+1)²+n²)`
-/

namespace A238767.P16724976344296273980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 ((n + 1) ^ 2 + n ^ 2)

end

end A238767.P16724976344296273980

/-!
# A238768: Number of n X 1 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238768, the canonical program `A238768.P18414015894875311036` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238768 has offset 1).

The definition of A238768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A238768.P12924120539385621081

`ogf((3+3x+2x^2)/(1-x-2x^2-2x^3))`
-/

namespace A238768.P12924120539385621081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 2] [1, -1, -2, -2] n

end

end A238768.P12924120539385621081

namespace A238768

/-- `ogf((3+3x+2x^2)/(1-x-2x^2-2x^3))` -/
def P12924120539385621081.Spec : Prop :=
  ∀ n, P12924120539385621081.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P18414015894875311036

`a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=6, a(2)=14`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238768

/-- `a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P18414015894875311036.Spec : Prop :=
  ∀ n, (P18414015894875311036.a n : ℤ) = A238768 (n + 1)

theorem P18414015894875311036.correct : P18414015894875311036.Spec := by
  intro n
  simp only [A238768, Nat.add_sub_cancel]

end A238768

/-! ## A238768.P17094382229765377202

`Δ[A239812(n+1)]`
-/

namespace A238768.P17094382229765377202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238768.P17094382229765377202

namespace A238768

/-- `Δ[A239812(n+1)]` -/
def P17094382229765377202.Spec : Prop :=
  ∀ n, P17094382229765377202.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P7807088297602659428

`A078006(n)+a(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A238768.P7807088297602659428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A078006 n + (a (n - 1) + a (n - 1))

end

end A238768.P7807088297602659428

namespace A238768

/-- `A078006(n)+a(n-1)+a(n-1)` -/
def P7807088297602659428.Spec : Prop :=
  ∀ n, P7807088297602659428.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P14589029179961204624

`A239812(n+1)+A077946(n)`
-/

namespace A238768.P14589029179961204624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (n + 1) + A077946 n

end

end A238768.P14589029179961204624

namespace A238768

/-- `A239812(n+1)+A077946(n)` -/
def P14589029179961204624.Spec : Prop :=
  ∀ n, P14589029179961204624.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P5740232377538252093

`abs(Δ[A077970(n)]-A078040(n))`
-/

namespace A238768.P5740232377538252093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A078040 n|

end

end A238768.P5740232377538252093

namespace A238768

/-- `abs(Δ[A077970(n)]-A078040(n))` -/
def P5740232377538252093.Spec : Prop :=
  ∀ n, P5740232377538252093.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P4516117376533626329

`A239812(n+1)+abs(A077970(n))`
-/

namespace A238768.P4516117376533626329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (n + 1) + |A077970 n|

end

end A238768.P4516117376533626329

namespace A238768

/-- `A239812(n+1)+abs(A077970(n))` -/
def P4516117376533626329.Spec : Prop :=
  ∀ n, P4516117376533626329.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P12866724779445797187

`A239812(n+2)-A239812(n+1)`
-/

namespace A238768.P12866724779445797187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (n + 2) - A239812 (n + 1)

end

end A238768.P12866724779445797187

namespace A238768

/-- `A239812(n+2)-A239812(n+1)` -/
def P12866724779445797187.Spec : Prop :=
  ∀ n, P12866724779445797187.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P11583064903848103301

`abs(Δ[A078040(n)])`
-/

namespace A238768.P11583064903848103301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A238768.P11583064903848103301

namespace A238768

/-- `abs(Δ[A078040(n)])` -/
def P11583064903848103301.Spec : Prop :=
  ∀ n, P11583064903848103301.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P9737911675750266428

`abs(A078040(n+1)-A078040(n))`
-/

namespace A238768.P9737911675750266428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078040 (n + 1) - A078040 n|

end

end A238768.P9737911675750266428

namespace A238768

/-- `abs(A078040(n+1)-A078040(n))` -/
def P9737911675750266428.Spec : Prop :=
  ∀ n, P9737911675750266428.a n = A238768 (n + 1)

end A238768

/-! ## A238768.P7537256130385661458

`Δ[A078006(n+4)/4]`
-/

namespace A238768.P7537256130385661458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078006 (n + 4) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238768.P7537256130385661458

namespace A238768

/-- `Δ[A078006(n+4)/4]` -/
def P7537256130385661458.Spec : Prop :=
  ∀ n, P7537256130385661458.a n = (A238768 (n + 1) : ℚ)

end A238768

/-!
# A238769: Number of nX2 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238769, there is no canonical definition to state claims against.
-/

/-! ## A238769.P5221480549293170979

`A238775(∑[n+1]+2)`
-/

namespace A238769.P5221480549293170979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A238769.P5221480549293170979

/-! ## A238769.P1920474854669814572

`record[A010054(n)*A238775(n+2)]`
-/

namespace A238769.P1920474854669814572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A238775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238769.P1920474854669814572

/-! ## A238769.P13488705472049586956

`A119335(n)*A238775(A000217(n+1)+2)`
-/

namespace A238769.P13488705472049586956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A238775 (A000217 (n + 1) + 2).toNat

end

end A238769.P13488705472049586956

/-! ## A238769.P4428435190537893368

`A238775(A000217(n+1)+2)%A000032(A004768(n))`
-/

namespace A238769.P4428435190537893368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238775 (A000217 (n + 1) + 2).toNat) (A000032 (A004768 n).toNat)

end

end A238769.P4428435190537893368

/-!
# A238770: Number of nX3 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238770, there is no canonical definition to state claims against.
-/

/-! ## A238770.P17338011822890822538

`A238775(∑[n+2]+4)`
-/

namespace A238770.P17338011822890822538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A238770.P17338011822890822538

/-! ## A238770.P8993306167954375902

`lcm(2, A238775(A167614(n+1)))`
-/

namespace A238770.P8993306167954375902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A238775 (A167614 (n + 1)).toNat)

end

end A238770.P8993306167954375902

/-! ## A238770.P12742912310185802765

`A238775(A167614(n+1))*A254730(n)`
-/

namespace A238770.P12742912310185802765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A167614 (n + 1)).toNat * A254730 n

end

end A238770.P12742912310185802765

/-! ## A238770.P14180893394201452681

`A238775(A167614(n+1))+A034559(n+1)`
-/

namespace A238770.P14180893394201452681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A167614 (n + 1)).toNat + A034559 (n + 1)

end

end A238770.P14180893394201452681

/-! ## A238770.P8925194028621390820

`A238775(A167614(n+1))%A269034(n+1)`
-/

namespace A238770.P8925194028621390820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238775 (A167614 (n + 1)).toNat) (A269034 (n + 1))

end

end A238770.P8925194028621390820

/-!
# A238771: Number of nX4 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238771, there is no canonical definition to state claims against.
-/

/-! ## A238771.P1414246362377189852

`A238775(A374004(n+1))`
-/

namespace A238771.P1414246362377189852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A374004 (n + 1)).toNat

end

end A238771.P1414246362377189852

/-! ## A238771.P8314011856040057495

`A238775(A141214(n)+7)`
-/

namespace A238771.P8314011856040057495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A141214 n + 7).toNat

end

end A238771.P8314011856040057495

/-! ## A238771.P5015045718474888326

`A238775(A052905(n)+9)`
-/

namespace A238771.P5015045718474888326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A052905 n + 9).toNat

end

end A238771.P5015045718474888326

/-! ## A238771.P6023595554226319329

`A238775(A167614(n+2)+1)`
-/

namespace A238771.P6023595554226319329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A167614 (n + 2) + 1).toNat

end

end A238771.P6023595554226319329

/-! ## A238771.P7186712397489039881

`A238775(A000217(n+3)+4)`
-/

namespace A238771.P7186712397489039881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A000217 (n + 3) + 4).toNat

end

end A238771.P7186712397489039881

/-!
# A238772: Number of nX5 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238772, there is no canonical definition to state claims against.
-/

/-! ## A238772.P12301066255598260321

`A238775(A374005(n+1))`
-/

namespace A238772.P12301066255598260321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A374005 (n + 1)).toNat

end

end A238772.P12301066255598260321

/-! ## A238772.P17053727740072006631

`A238775(A167499(n+3))`
-/

namespace A238772.P17053727740072006631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A167499 (n + 3)).toNat

end

end A238772.P17053727740072006631

/-! ## A238772.P3022507660527425556

`A238775(A000096(n+3)+6)`
-/

namespace A238772.P3022507660527425556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A000096 (n + 3) + 6).toNat

end

end A238772.P3022507660527425556

/-! ## A238772.P8177766435532862625

`A238775(Δ[A264443(n)])`
-/

namespace A238772.P8177766435532862625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (f1 (n + 1) - f1 n).toNat

end

end A238772.P8177766435532862625

/-! ## A238772.P12035842442002256690

`A238775(eq[4, A193592(n)])`
-/

namespace A238772.P12035842442002256690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238772.P12035842442002256690

/-!
# A238773: Number of nX6 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238773, there is no canonical definition to state claims against.
-/

/-! ## A238773.P15066564125940092376

`A238775(A374007(n+1))`
-/

namespace A238773.P15066564125940092376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A374007 (n + 1)).toNat

end

end A238773.P15066564125940092376

/-! ## A238773.P14118278812058434626

`A238775(eq[7, A131818(n+1)])`
-/

namespace A238773.P14118278812058434626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238773.P14118278812058434626

/-! ## A238773.P13283349142511547866

`A238775(eq[3, A219347(n)])`
-/

namespace A238773.P13283349142511547866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238773.P13283349142511547866

/-! ## A238773.P12282741495705355679

`A238775(eq[5, A193592(n)])`
-/

namespace A238773.P12282741495705355679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238773.P12282741495705355679

/-! ## A238773.P10947105549149641644

`A238775(eq[6, A200370(n+1)])`
-/

namespace A238773.P10947105549149641644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238773.P10947105549149641644

/-!
# A238774: Number of nX7 0..3 arrays with no element equal to the sum modulo 4 of elements to its left or elements above it.

The programs for A238774, there is no canonical definition to state claims against.
-/

/-! ## A238774.P11004491473690648614

`A238775(A374008(n+1))`
-/

namespace A238774.P11004491473690648614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (A374008 (n + 1)).toNat

end

end A238774.P11004491473690648614

/-! ## A238774.P9292509431991343849

`A238775(eq[6, A193592(n)])`
-/

namespace A238774.P9292509431991343849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238774.P9292509431991343849

/-! ## A238774.P470768537828989002

`A238775(eq[2, A219347(n)-2])`
-/

namespace A238774.P470768537828989002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A238774.P470768537828989002

/-!
# A238776: Primes p with prime(p) - p + 1 and prime(q) - q + 1 both prime, where q = prime(2*pi(p)+1) with pi(.) given by A000720.

The programs for A238776, there is no canonical definition to state claims against.
-/

/-! ## A238776.P7286366400328542353

`record[p?[A326067(A046025(n+1))]]`
-/

namespace A238776.P7286366400328542353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (A046025 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238776.P7286366400328542353

/-!
# A238777: a(n) = floor((5^n+1)/(2*3^n)).

The programs for A238777, the canonical program `A238777.P6042344452555576540` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A238777 has offset 1).

The definition of A238777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((5^(n+1)+1)/(2*3^(n+1)))` (program `A238777.P6042344452555576540`, by `A238777.P6042344452555576540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A238777.P6042344452555576540

`floor((5^(n+1)+1)/(2*3^(n+1)))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A238777

/-- `floor((5^(n+1)+1)/(2*3^(n+1)))` -/
def P6042344452555576540.Spec : Prop :=
  ∀ n, P6042344452555576540.a n = A238777 (n + 1)

theorem P6042344452555576540.correct : P6042344452555576540.Spec := by
  intro n
  simp only [A238777, Nat.add_sub_cancel]

end A238777

/-! ## A238777.P13954818864291464505

`ceil(A039302(n)/A152011(n)-A057427(n))`
-/

namespace A238777.P13954818864291464505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A039302 n : ℚ) / (A152011 n : ℚ) - (A057427 n : ℚ)⌉

end

end A238777.P13954818864291464505

namespace A238777

/-- `ceil(A039302(n)/A152011(n)-A057427(n))` -/
def P13954818864291464505.Spec : Prop :=
  ∀ n, P13954818864291464505.a n = A238777 (n + 1)

end A238777

/-! ## A238777.P14090430076155092421

`A056039(A094974(n+1))`
-/

namespace A238777.P14090430076155092421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (A094974 (n + 1)).toNat

end

end A238777.P14090430076155092421

namespace A238777

/-- `A056039(A094974(n+1))` -/
def P14090430076155092421.Spec : Prop :=
  ∀ n, P14090430076155092421.a n = A238777 (n + 1)

end A238777

/-! ## A238777.P10139729070036642421

`A101776(A171851(n+1))`
-/

namespace A238777.P10139729070036642421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A171851 (n + 1)).toNat

end

end A238777.P10139729070036642421

namespace A238777

/-- `A101776(A171851(n+1))` -/
def P10139729070036642421.Spec : Prop :=
  ∀ n, P10139729070036642421.a n = A238777 (n + 1)

end A238777

/-! ## A238777.P9884485142645864110

`A276581(A271929(n+1))`
-/

namespace A238777.P9884485142645864110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A271929 (n + 1)).toNat

end

end A238777.P9884485142645864110

namespace A238777

/-- `A276581(A271929(n+1))` -/
def P9884485142645864110.Spec : Prop :=
  ∀ n, P9884485142645864110.a n = A238777 (n + 1)

end A238777

/-!
# A238778: Sum of all primes p such that 2n - p is also a prime.

The programs for A238778, there is no canonical definition to state claims against.
-/

/-! ## A238778.P6326797725337615963

`(n+2)*A035026(n+2)`
-/

namespace A238778.P6326797725337615963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A035026 (n + 2)

end

end A238778.P6326797725337615963

/-! ## A238778.P5416206263834096892

`A008472(A238711(n+2))`
-/

namespace A238778.P5416206263834096892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A238711 (n + 2)).toNat

end

end A238778.P5416206263834096892

/-! ## A238778.P11339868847917800329

`A154786(n+2)+A061397(n+2)`
-/

namespace A238778.P11339868847917800329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154786 (n + 2) + A061397 (n + 2)

end

end A238778.P11339868847917800329

/-! ## A238778.P9669622317175568364

`(n+2)*A028310(A002372(n+2))`
-/

namespace A238778.P9669622317175568364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A028310 (A002372 (n + 2)).toNat

end

end A238778.P9669622317175568364

/-! ## A238778.P5234322256982501998

`A000038(n)+(n+2)*A002372(n+2)`
-/

namespace A238778.P5234322256982501998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (n + 2 : ℤ) * A002372 (n + 2)

end

end A238778.P5234322256982501998

/-! ## A238778.P8733491125022402284

`(n+2)*A002126(2*(n+2))`
-/

namespace A238778.P8733491125022402284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A002126 (2 * (n + 2))

end

end A238778.P8733491125022402284

/-! ## A238778.P11552362757752635407

`(n+2)*A073610(2*(n+2))`
-/

namespace A238778.P11552362757752635407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A073610 (2 * (n + 2))

end

end A238778.P11552362757752635407

/-!
# A238779: Number of palindromic partitions of n with greatest part of multiplicity 2.

The programs for A238779, there is no canonical definition to state claims against.
-/

/-! ## A238779.P13928221313834011281

`A238785(n+1)-A000009(n)`
-/

namespace A238779.P13928221313834011281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - A000009 n

end

end A238779.P13928221313834011281

/-! ## A238779.P12707347125930174386

`A238785(n+1)-abs(A081360(n))`
-/

namespace A238779.P12707347125930174386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - |A081360 n|

end

end A238779.P12707347125930174386

/-! ## A238779.P18094091684197810523

`A238785(n+1)-∑[A087897(n)]`
-/

namespace A238779.P18094091684197810523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238779.P18094091684197810523

/-! ## A238779.P3135031855222383792

`A238785(n+1)-A284593(∑[n])`
-/

namespace A238779.P3135031855222383792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - A284593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A238779.P3135031855222383792

/-! ## A238779.P2765945078702610471

`A238785(n+1)-(A111133(n)+1)`
-/

namespace A238779.P2765945078702610471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - (A111133 n + 1)

end

end A238779.P2765945078702610471

/-! ## A238779.P7807169994159796077

`A238785(n+1)-A035457(2*n)`
-/

namespace A238779.P7807169994159796077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238785 (n + 1) - A035457 (2 * n)

end

end A238779.P7807169994159796077

/-!
# A238781: Number of palindromic partitions of n whose least part has multiplicity 1.

The programs for A238781, there is no canonical definition to state claims against.
-/

/-! ## A238781.P10012265458415530623

`A351594(n+2)-A035363(n+1)`
-/

namespace A238781.P10012265458415530623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 (n + 2) - A035363 (n + 1)

end

end A238781.P10012265458415530623

/-! ## A238781.P15409605245964627877

`A238788(n+1)-A238782(n+1)`
-/

namespace A238781.P15409605245964627877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238788 (n + 1) - A238782 (n + 1)

end

end A238781.P15409605245964627877

/-! ## A238781.P7871611813669248669

`A351004(n+2)-A000041(A008619(n))`
-/

namespace A238781.P7871611813669248669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 (n + 2) - A000041 (A008619 n).toNat

end

end A238781.P7871611813669248669

/-! ## A238781.P13250874601325257685

`A238789(n+1)-(A238783(n+1)+A238782(n+1))`
-/

namespace A238781.P13250874601325257685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - (A238783 (n + 1) + A238782 (n + 1))

end

end A238781.P13250874601325257685

/-! ## A238781.P2117351897015964141

`A238790(n+1)-(A238784(n+1)+A238783(n+1))-A238782(n+1)`
-/

namespace A238781.P2117351897015964141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - (A238784 (n + 1) + A238783 (n + 1)) - A238782 (n + 1)

end

end A238781.P2117351897015964141

/-!
# A238782: Number of palindromic partitions of n whose least part has multiplicity 2.

The programs for A238782, there is no canonical definition to state claims against.
-/

/-! ## A238782.P11824891486630310084

`A000041(ceil(n/2)+1)-A238781(n+3)`
-/

namespace A238782.P11824891486630310084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (⌈(n : ℚ) / 2⌉ + 1).toNat - A238781 (n + 3)

end

end A238782.P11824891486630310084

/-! ## A238782.P10059633347219924573

`A238788(n+1)-A238781(n+1)`
-/

namespace A238782.P10059633347219924573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238788 (n + 1) - A238781 (n + 1)

end

end A238782.P10059633347219924573

/-! ## A238782.P16543626982142718304

`A238788(n+1)-(A351594(n+2)-A035363(n+1))`
-/

namespace A238782.P16543626982142718304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238788 (n + 1) - (A351594 (n + 2) - A035363 (n + 1))

end

end A238782.P16543626982142718304

/-! ## A238782.P12143186009130062541

`A238789(n+1)-(A238783(n+1)+A238781(n+1))`
-/

namespace A238782.P12143186009130062541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - (A238783 (n + 1) + A238781 (n + 1))

end

end A238782.P12143186009130062541

/-! ## A238782.P300716793163749903

`A238788(n+1)-(A351004(n+2)-A000041(A008619(n)))`
-/

namespace A238782.P300716793163749903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238788 (n + 1) - (A351004 (n + 2) - A000041 (A008619 n).toNat)

end

end A238782.P300716793163749903

/-! ## A238782.P1398430213448695103

`A238789(n+1)-A238783(n+1)-(A351594(n+2)-A035363(n+1))`
-/

namespace A238782.P1398430213448695103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - A238783 (n + 1) - (A351594 (n + 2) - A035363 (n + 1))

end

end A238782.P1398430213448695103

/-! ## A238782.P4855751870499049427

`A238790(n+1)-(A238784(n+1)+A238783(n+1))-A238781(n+1)`
-/

namespace A238782.P4855751870499049427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - (A238784 (n + 1) + A238783 (n + 1)) - A238781 (n + 1)

end

end A238782.P4855751870499049427

/-!
# A238783: Number of palindromic partitions of n whose least part has multiplicity 3.

The programs for A238783, there is no canonical definition to state claims against.
-/

/-! ## A238783.P3882699468211859240

`Δ[A000041(A004526(n)+1)-A238781(n+3)]`
-/

namespace A238783.P3882699468211859240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004526 n + 1).toNat - A238781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A238783.P3882699468211859240

/-! ## A238783.P11154561334083851059

`A238789(n+1)-A238788(n+1)`
-/

namespace A238783.P11154561334083851059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - A238788 (n + 1)

end

end A238783.P11154561334083851059

/-! ## A238783.P4659230319103109810

`A238789(n+1)-(A238782(n+1)+A238781(n+1))`
-/

namespace A238783.P4659230319103109810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - (A238782 (n + 1) + A238781 (n + 1))

end

end A238783.P4659230319103109810

/-! ## A238783.P4317164851261459393

`A238789(n+1)-(A238782(n+1)+A351594(n+2)-A035363(n+1))`
-/

namespace A238783.P4317164851261459393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - (A238782 (n + 1) + (A351594 (n + 2) - A035363 (n + 1)))

end

end A238783.P4317164851261459393

/-! ## A238783.P6494608149962635908

`A238790(n+1)-(A238788(n+1)+A238784(n+1))`
-/

namespace A238783.P6494608149962635908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - (A238788 (n + 1) + A238784 (n + 1))

end

end A238783.P6494608149962635908

/-! ## A238783.P11008533170922840958

`A238790(n+1)-A238784(n+1)-(A238782(n+1)+A238781(n+1))`
-/

namespace A238783.P11008533170922840958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - A238784 (n + 1) - (A238782 (n + 1) + A238781 (n + 1))

end

end A238783.P11008533170922840958

/-! ## A238783.P1768358696884291434

`A238790(n+1)-A238784(n+1)-(A238782(n+1)+A351594(n+2)-A035363(n+1))`
-/

namespace A238783.P1768358696884291434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - A238784 (n + 1) - (A238782 (n + 1) + (A351594 (n + 2) - A035363 (n + 1)))

end

end A238783.P1768358696884291434

/-!
# A238784: Number of palindromic partitions of n whose least part has multiplicity 4.

The programs for A238784, there is no canonical definition to state claims against.
-/

/-! ## A238784.P14303557519745987218

`A238790(n+1)-A238789(n+1)`
-/

namespace A238784.P14303557519745987218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - A238789 (n + 1)

end

end A238784.P14303557519745987218

/-! ## A238784.P9928555061213042253

`A238790(n+1)%A238789(-xor(n, -1))`
-/

namespace A238784.P9928555061213042253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238790 (n + 1)) (A238789 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A238784.P9928555061213042253

/-! ## A238784.P1052152351629726546

`A238790(A000027(n+1))%A238789(n+1)`
-/

namespace A238784.P1052152351629726546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238790 (A000027 (n + 1)).toNat) (A238789 (n + 1))

end

end A238784.P1052152351629726546

/-! ## A238784.P6112444456063988499

`A238790(A028310(n)+1)%A238789(n+1)`
-/

namespace A238784.P6112444456063988499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238790 (A028310 n + 1).toNat) (A238789 (n + 1))

end

end A238784.P6112444456063988499

/-! ## A238784.P17421593207314470923

`A238790(A008619(2*n))%A238789(n+1)`
-/

namespace A238784.P17421593207314470923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238790 (A008619 (2 * n)).toNat) (A238789 (n + 1))

end

end A238784.P17421593207314470923

/-! ## A238784.P7972035560322786516

`A238790(A004526(2*(n+1)))%A238789(n+1)`
-/

namespace A238784.P7972035560322786516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238790 (A004526 (2 * (n + 1))).toNat) (A238789 (n + 1))

end

end A238784.P7972035560322786516

/-! ## A238784.P1203615124430187344

`A238790(n+1)-(A238788(n+1)+A238783(n+1))`
-/

namespace A238784.P1203615124430187344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - (A238788 (n + 1) + A238783 (n + 1))

end

end A238784.P1203615124430187344

/-!
# A238785: Number of palindromic partitions of n whose greatest part has multiplicity <= 2.

The programs for A238785, there is no canonical definition to state claims against.
-/

/-! ## A238785.P13218156116551888543

`A238779(n+1)+A000009(n)`
-/

namespace A238785.P13218156116551888543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238779 (n + 1) + A000009 n

end

end A238785.P13218156116551888543

/-! ## A238785.P12663301736000857662

`A238779(n+1)+abs(A081360(n))`
-/

namespace A238785.P12663301736000857662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238779 (n + 1) + |A081360 n|

end

end A238785.P12663301736000857662

/-! ## A238785.P7544419536074436677

`A238779(n+1)+∑[A087897(n)]`
-/

namespace A238785.P7544419536074436677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238779 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238785.P7544419536074436677

/-! ## A238785.P6690129626750389470

`A284593(∑[n])+A238779(n+1)`
-/

namespace A238785.P6690129626750389470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f1 j) + A238779 (n + 1)

end

end A238785.P6690129626750389470

/-! ## A238785.P11035345387171639148

`A238779(n+1)+A111133(n)+1`
-/

namespace A238785.P11035345387171639148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238779 (n + 1) + (A111133 n + 1)

end

end A238785.P11035345387171639148

/-! ## A238785.P15107214864399099358

`A238779(n+1)+A035457(2*n)`
-/

namespace A238785.P15107214864399099358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238779 (n + 1) + A035457 (2 * n)

end

end A238785.P15107214864399099358

/-! ## A238785.P2379906613168854304

`A241701(A001840(n))+A238779(n+1)`
-/

namespace A238785.P2379906613168854304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A001840 n).toNat + A238779 (n + 1)

end

end A238785.P2379906613168854304

/-!
# A238786: Number of palindromic partitions of n whose greatest part has multiplicity <= 3.

The programs for A238786, there is no canonical definition to state claims against.
-/

/-! ## A238786.P1855770544366062357

`A238787(n+1)-A238780(n+1)`
-/

namespace A238786.P1855770544366062357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238787 (n + 1) - A238780 (n + 1)

end

end A238786.P1855770544366062357

/-!
# A238787: Number of palindromic partitions of n whose greatest part has multiplicity <= 4.

The programs for A238787, there is no canonical definition to state claims against.
-/

/-! ## A238787.P10326700749972859596

`A238786(n+1)+A238780(n+1)`
-/

namespace A238787.P10326700749972859596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238786 (n + 1) + A238780 (n + 1)

end

end A238787.P10326700749972859596

/-!
# A238788: Number of palindromic partitions of n whose least part has multiplicity <= 2.

The programs for A238788, there is no canonical definition to state claims against.
-/

/-! ## A238788.P7016102876756801393

`A238782(n+1)+A238781(n+1)`
-/

namespace A238788.P7016102876756801393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238782 (n + 1) + A238781 (n + 1)

end

end A238788.P7016102876756801393

/-! ## A238788.P9048797818395628447

`A238782(n+1)+A351594(n+2)-A035363(n+1)`
-/

namespace A238788.P9048797818395628447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238782 (n + 1) + (A351594 (n + 2) - A035363 (n + 1))

end

end A238788.P9048797818395628447

/-! ## A238788.P1628183458626793382

`A238781(n+1)+A000041(floor((n+1)/2)+1)-A238781(n+3)`
-/

namespace A238788.P1628183458626793382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (n + 1) + (A000041 (⌊(n + 1 : ℚ) / 2⌋ + 1).toNat - A238781 (n + 3))

end

end A238788.P1628183458626793382

/-! ## A238788.P7259726241874694458

`A238789(n+1)-A238783(n+1)`
-/

namespace A238788.P7259726241874694458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) - A238783 (n + 1)

end

end A238788.P7259726241874694458

/-! ## A238788.P418577597540772656

`A238782(n+1)+A351004(n+2)-A000041(A008619(n))`
-/

namespace A238788.P418577597540772656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238782 (n + 1) + (A351004 (n + 2) - A000041 (A008619 n).toNat)

end

end A238788.P418577597540772656

/-! ## A238788.P15916338367350174643

`A238790(n+1)-(A238784(n+1)+A238783(n+1))`
-/

namespace A238788.P15916338367350174643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - (A238784 (n + 1) + A238783 (n + 1))

end

end A238788.P15916338367350174643

/-!
# A238789: Number of palindromic partitions of n whose least part has multiplicity <= 3.

The programs for A238789, there is no canonical definition to state claims against.
-/

/-! ## A238789.P128242805943016373

`A238788(n+1)+A238783(n+1)`
-/

namespace A238789.P128242805943016373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238788 (n + 1) + A238783 (n + 1)

end

end A238789.P128242805943016373

/-! ## A238789.P9890564429361263276

`A238781(n+1)+A238783(n+1)+A238782(n+1)`
-/

namespace A238789.P9890564429361263276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (n + 1) + (A238783 (n + 1) + A238782 (n + 1))

end

end A238789.P9890564429361263276

/-! ## A238789.P17946154507698336393

`A238783(n+1)+A238782(n+1)+A351594(n+2)-A035363(n+1)`
-/

namespace A238789.P17946154507698336393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238783 (n + 1) + (A238782 (n + 1) + (A351594 (n + 2) - A035363 (n + 1)))

end

end A238789.P17946154507698336393

/-! ## A238789.P7208318529126896004

`A238790(n+1)-A238784(n+1)`
-/

namespace A238789.P7208318529126896004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238790 (n + 1) - A238784 (n + 1)

end

end A238789.P7208318529126896004

/-! ## A238789.P15770928511434771044

`A238788(n+1)+A089052(A007491(n+1)-A155123(n))`
-/

namespace A238789.P15770928511434771044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238788 (n + 1) + A089052 (A007491 (n + 1) - A155123 n).toNat

end

end A238789.P15770928511434771044

/-!
# A238790: Number of palindromic partitions of n whose least part has multiplicity <= 4.

The programs for A238790, there is no canonical definition to state claims against.
-/

/-! ## A238790.P15072414302563466837

`A238789(n+1)+A238784(n+1)`
-/

namespace A238790.P15072414302563466837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238789 (n + 1) + A238784 (n + 1)

end

end A238790.P15072414302563466837

/-! ## A238790.P17674154133568066572

`A238783(n+1)+A238788(n+1)+A238784(n+1)`
-/

namespace A238790.P17674154133568066572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238783 (n + 1) + (A238788 (n + 1) + A238784 (n + 1))

end

end A238790.P17674154133568066572

/-! ## A238790.P849100415595457389

`A238784(n+1)+A238781(n+1)+A238783(n+1)+A238782(n+1)`
-/

namespace A238790.P849100415595457389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238784 (n + 1) + (A238781 (n + 1) + (A238783 (n + 1) + A238782 (n + 1)))

end

end A238790.P849100415595457389

/-!
# A238791: Number of palindromic partitions of n such that the multiplicities of the least and greatest parts are equal.

The programs for A238791, there is no canonical definition to state claims against.
-/

/-! ## A238791.P7774523160353297711

`A322900(∑[A243966(n)+1])`
-/

namespace A238791.P7774523160353297711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243966 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A238791.P7774523160353297711

/-! ## A238791.P10308544966543338469

`A322900(A243966(n)+n+1)`
-/

namespace A238791.P10308544966543338469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 (A243966 n + (n + 1 : ℤ)).toNat

end

end A238791.P10308544966543338469

/-! ## A238791.P10764661367443546042

`A336355(A000105(n))+A322900(n+1)`
-/

namespace A238791.P10764661367443546042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A000105 n).toNat + A322900 (n + 1)

end

end A238791.P10764661367443546042

/-! ## A238791.P12812693869101484411

`A322900(A043317(n+1))`
-/

namespace A238791.P12812693869101484411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 (A043317 (n + 1)).toNat

end

end A238791.P12812693869101484411

/-! ## A238791.P10823641750746340164

`A322900(A044914(n+1))`
-/

namespace A238791.P10823641750746340164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 (A044914 (n + 1)).toNat

end

end A238791.P10823641750746340164

/-!
# A238794: Number T(n,k) of standard Young tableaux with n cells and k as last value in the first row; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A238794, there is no canonical definition to state claims against.
-/

/-! ## A238794.P2379320660095125737

`A000196(A257783(n)%A007670(n+1))`
-/

namespace A238794.P2379320660095125737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A257783 n) (A007670 (n + 1))).toNat

end

end A238794.P2379320660095125737

/-! ## A238794.P2357749672212247627

`A000196(A257783(n))%A048373(n+1)`
-/

namespace A238794.P2357749672212247627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A257783 n).toNat) (A048373 (n + 1))

end

end A238794.P2357749672212247627

/-! ## A238794.P13534748263962294233

`A000196(A257783(n)+A151811(2*(n+1)))`
-/

namespace A238794.P13534748263962294233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A257783 n + A151811 (2 * (n + 1))).toNat

end

end A238794.P13534748263962294233

/-! ## A238794.P16271382495785234202

`A000196(A257783(n))+A000038(A002379(n))`
-/

namespace A238794.P16271382495785234202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A257783 n).toNat + A000038 (A002379 n).toNat

end

end A238794.P16271382495785234202

/-! ## A238794.P10046977575207965154

`A003056(A370505(n)%A305260(3*n+4))`
-/

namespace A238794.P10046977575207965154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A370505 n) (A305260 (3 * n + 4))).toNat

end

end A238794.P10046977575207965154

/-!
# A238795: The unique set of eleven distinct positive odd numbers up to 105 the sum of whose reciprocals is 1.

The programs for A238795, there is no canonical definition to state claims against.
-/

/-! ## A238795.P16744134830279332133

`A211135(comp[5*n²])`
-/

namespace A238795.P16744134830279332133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211135 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A238795.P16744134830279332133

/-! ## A238795.P14183108662707414880

`or(1, A211135(A013919(n+1)))`
-/

namespace A238795.P14183108662707414880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A211135 (A013919 (n + 1)).toNat)

end

end A238795.P14183108662707414880

/-! ## A238795.P18045296272306281125

`record[A105597(n)*A211135(n+1)]`
-/

namespace A238795.P18045296272306281125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 n * A211135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238795.P18045296272306281125

/-! ## A238795.P1824333489774569378

`record[A071035(n+2)*A211135(n+1)]`
-/

namespace A238795.P1824333489774569378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (n + 2) * A211135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238795.P1824333489774569378

/-! ## A238795.P4525513331472750623

`record[A211135(n+1)/A204160(n+1)]`
-/

namespace A238795.P4525513331472750623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211135 (n + 1) : ℚ) / (A204160 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238795.P4525513331472750623

/-!
# A238796: Symmetric (0,1)-matrices of order n where the numbers of 1's is equal to the order n.

The programs for A238796, there is no canonical definition to state claims against.
-/

/-! ## A238796.P16987438376286998475

`A184948(A028310(∑[n²]))`
-/

namespace A238796.P16987438376286998475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184948 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A238796.P16987438376286998475

/-! ## A238796.P6870145590729144034

`A184948(A000330(n)+C(2, n))`
-/

namespace A238796.P6870145590729144034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184948 (A000330 n + (Nat.choose 2 n : ℤ)).toNat

end

end A238796.P6870145590729144034

/-! ## A238796.P10898037657469218203

`A184948(A000330(n)^ceil(n/98))`
-/

namespace A238796.P10898037657469218203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184948 (SequenceMachineLib.roundAway ((A000330 n : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ))).toNat

end

end A238796.P10898037657469218203

/-! ## A238796.P9678251290613203290

`A184948(C(A000330(n), ceil(n/98)))`
-/

namespace A238796.P9678251290613203290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184948 (Nat.choose (A000330 n).toNat ⌈(n : ℚ) / 98⌉.toNat)

end

end A238796.P9678251290613203290

/-! ## A238796.P5914827549944051030

`A184948(A000330(n)%(a(n-1)+2*n²))` with `a(0)=1`
-/

namespace A238796.P5914827549944051030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A184948 (Int.tmod (A000330 n) (a (n - 1) + (2 * n ^ 2 : ℤ))).toNat

end

end A238796.P5914827549944051030

/-!
# A238799: 

The programs for A238799, there is no canonical definition to state claims against.
-/

/-! ## A238799.P16621224064997530539

`(2*a(n-1)²+3)*a(n-1)` with `a(0)=1`
-/

namespace A238799.P16621224064997530539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1) ^ 2 + 3) * a (n - 1)

end

end A238799.P16621224064997530539

