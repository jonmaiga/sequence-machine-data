import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A083900: Number of divisors of n with largest digit <= 5 (base 10).

The programs for A083900, the canonical program `A083900.P8267360639211876912` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083900 has offset 1).

The definition of A083900 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083892, A083899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083900.P8267360639211876912

`A083899(n+1)+A083892(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083900

/-- `A083899(n+1)+A083892(n+1)` -/
def P8267360639211876912.Spec : Prop :=
  ∀ n, P8267360639211876912.a n = A083900 (n + 1)

theorem P8267360639211876912.correct : P8267360639211876912.Spec := by
  intro n
  simp only [A083900, Nat.add_sub_cancel]

end A083900

/-! ## A083900.P5655283102292467734

`A083901(n+1)-A083893(n+1)`
-/

namespace A083900.P5655283102292467734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) - A083893 (n + 1)

end

end A083900.P5655283102292467734

namespace A083900

/-- `A083901(n+1)-A083893(n+1)` -/
def P5655283102292467734.Spec : Prop :=
  ∀ n, P5655283102292467734.a n = A083900 (n + 1)

theorem P5655283102292467734.correct : P5655283102292467734.Spec := by
  intro n
  simp only [A083900, Nat.add_sub_cancel, A083900.P5655283102292467734.a, A083900.P8267360639211876912.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A083901, A083901.P13271728194704751477.a, A000035, A000035.P2023072528413494694.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083900

/-! ## A083900.P12282900447091177103

`A083901(n+1)-∑{d}[n+1, val(A054055(#), 6)]`
-/

namespace A083900.P12282900447091177103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083901 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 6 : ℕ) : ℤ)

end

end A083900.P12282900447091177103

namespace A083900

/-- `A083901(n+1)-∑{d}[n+1, val(A054055(#), 6)]` -/
def P12282900447091177103.Spec : Prop :=
  ∀ n, P12282900447091177103.a n = A083900 (n + 1)

theorem P12282900447091177103.correct : P12282900447091177103.Spec := by
  intro n
  simp only [A083900, Nat.add_sub_cancel, A083900.P12282900447091177103.f1, A083900.P12282900447091177103.a, A083900.P8267360639211876912.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A083901, A083901.P13271728194704751477.a, A000035, A000035.P2023072528413494694.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083900

/-! ## A083900.P3224313367067088929

`A083891(n+1)+A083898(n+1)+A083892(n+1)`
-/

namespace A083900.P3224313367067088929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (n + 1) + (A083898 (n + 1) + A083892 (n + 1))

end

end A083900.P3224313367067088929

namespace A083900

/-- `A083891(n+1)+A083898(n+1)+A083892(n+1)` -/
def P3224313367067088929.Spec : Prop :=
  ∀ n, P3224313367067088929.a n = A083900 (n + 1)

end A083900

/-! ## A083900.P7987939355124593536

`A083902(n+1)-(A083894(n+1)+A083893(n+1))`
-/

namespace A083900.P7987939355124593536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (n + 1) - (A083894 (n + 1) + A083893 (n + 1))

end

end A083900.P7987939355124593536

namespace A083900

/-- `A083902(n+1)-(A083894(n+1)+A083893(n+1))` -/
def P7987939355124593536.Spec : Prop :=
  ∀ n, P7987939355124593536.a n = A083900 (n + 1)

theorem P7987939355124593536.correct : P7987939355124593536.Spec := by
  intro n
  simp only [A083900, Nat.add_sub_cancel, A083900.P7987939355124593536.a, A083900.P8267360639211876912.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A083894, A083894.P7732345531771942104.f1, A083894.P7732345531771942104.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A083902, A083902.P16661972985477975009.a, A000035, A000035.P2023072528413494694.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A083901, A083901.P13271728194704751477.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083900

/-! ## A083900.P1163307097735353358

`A083892(n+1)+A083890(n+1)+A083897(n+1)+A083891(n+1)`
-/

namespace A083900.P1163307097735353358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (n + 1) + (A083890 (n + 1) + (A083897 (n + 1) + A083891 (n + 1)))

end

end A083900.P1163307097735353358

namespace A083900

/-- `A083892(n+1)+A083890(n+1)+A083897(n+1)+A083891(n+1)` -/
def P1163307097735353358.Spec : Prop :=
  ∀ n, P1163307097735353358.a n = A083900 (n + 1)

end A083900

/-! ## A083900.P11141079723051787312

`A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)`
-/

namespace A083900.P11141079723051787312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1) + A083891 (n + 1) + A083892 (n + 1)

end

end A083900.P11141079723051787312

namespace A083900

/-- `A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)` -/
def P11141079723051787312.Spec : Prop :=
  ∀ n, P11141079723051787312.a n = A083900 (n + 1)

end A083900

/-! ## A083900.P17692240058231448966

`A083892(n+1)+∑{d}[2*(n+1), A000035(A089898(#))]`
-/

namespace A083900.P17692240058231448966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000035 (A089898 d).toNat

end

end A083900.P17692240058231448966

namespace A083900

/-- `A083892(n+1)+∑{d}[2*(n+1), A000035(A089898(#))]` -/
def P17692240058231448966.Spec : Prop :=
  ∀ n, P17692240058231448966.a n = A083900 (n + 1)

theorem P17692240058231448966.correct : P17692240058231448966.Spec := by
  intro n
  simp only [A083900, Nat.add_sub_cancel, A083900.P17692240058231448966.f1, A083900.P17692240058231448966.a, A083900.P8267360639211876912.a, A000035, A000035.P2023072528413494694.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A089898, A089898.P14690586977798270718.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083900

/-!
# A083901: Number of divisors of n with largest digit <= 6 (base 10).

The programs for A083901, the canonical program `A083901.P13271728194704751477` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083901 has offset 1).

The definition of A083901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083893, A083900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083901.P13271728194704751477

`A083900(n+1)+A083893(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083901

/-- `A083900(n+1)+A083893(n+1)` -/
def P13271728194704751477.Spec : Prop :=
  ∀ n, P13271728194704751477.a n = A083901 (n + 1)

theorem P13271728194704751477.correct : P13271728194704751477.Spec := by
  intro n
  simp only [A083901, Nat.add_sub_cancel]

end A083901

/-! ## A083901.P16665461980030833561

`A083902(n+1)-A083894(n+1)`
-/

namespace A083901.P16665461980030833561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (n + 1) - A083894 (n + 1)

end

end A083901.P16665461980030833561

namespace A083901

/-- `A083902(n+1)-A083894(n+1)` -/
def P16665461980030833561.Spec : Prop :=
  ∀ n, P16665461980030833561.a n = A083901 (n + 1)

theorem P16665461980030833561.correct : P16665461980030833561.Spec := by
  intro n
  simp only [A083901, Nat.add_sub_cancel, A083901.P16665461980030833561.a, A083901.P13271728194704751477.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A083894, A083894.P7732345531771942104.f1, A083894.P7732345531771942104.a, A083900, A083900.P8267360639211876912.a, A083902, A083902.P16661972985477975009.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A000035, A000035.P2023072528413494694.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083901

/-! ## A083901.P13293181685256075867

`A083900(n+1)+∑{d}[n+1, val(A054055(#), 6)]`
-/

namespace A083901.P13293181685256075867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083900 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 6 : ℕ) : ℤ)

end

end A083901.P13293181685256075867

namespace A083901

/-- `A083900(n+1)+∑{d}[n+1, val(A054055(#), 6)]` -/
def P13293181685256075867.Spec : Prop :=
  ∀ n, P13293181685256075867.a n = A083901 (n + 1)

theorem P13293181685256075867.correct : P13293181685256075867.Spec := by
  intro n
  simp only [A083901, Nat.add_sub_cancel, A083901.P13293181685256075867.f1, A083901.P13293181685256075867.a, A083901.P13271728194704751477.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A083900, A083900.P8267360639211876912.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A000035, A000035.P2023072528413494694.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083901

/-! ## A083901.P5852713481776917771

`A083892(n+1)+A083899(n+1)+A083893(n+1)`
-/

namespace A083901.P5852713481776917771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083892 (n + 1) + (A083899 (n + 1) + A083893 (n + 1))

end

end A083901.P5852713481776917771

namespace A083901

/-- `A083892(n+1)+A083899(n+1)+A083893(n+1)` -/
def P5852713481776917771.Spec : Prop :=
  ∀ n, P5852713481776917771.a n = A083901 (n + 1)

theorem P5852713481776917771.correct : P5852713481776917771.Spec := by
  intro n
  simp only [A083901, Nat.add_sub_cancel, A083901.P5852713481776917771.a, A083901.P13271728194704751477.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A083900, A083900.P8267360639211876912.a, A000035, A000035.P2023072528413494694.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083901

/-! ## A083901.P5073000475127772368

`A083903(n+1)-(A083895(n+1)+A083894(n+1))`
-/

namespace A083901.P5073000475127772368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083903 (n + 1) - (A083895 (n + 1) + A083894 (n + 1))

end

end A083901.P5073000475127772368

namespace A083901

/-- `A083903(n+1)-(A083895(n+1)+A083894(n+1))` -/
def P5073000475127772368.Spec : Prop :=
  ∀ n, P5073000475127772368.a n = A083901 (n + 1)

end A083901

/-! ## A083901.P2111854899399137107

`A083893(n+1)+A083891(n+1)+A083898(n+1)+A083892(n+1)`
-/

namespace A083901.P2111854899399137107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (n + 1) + (A083891 (n + 1) + (A083898 (n + 1) + A083892 (n + 1)))

end

end A083901.P2111854899399137107

namespace A083901

/-- `A083893(n+1)+A083891(n+1)+A083898(n+1)+A083892(n+1)` -/
def P2111854899399137107.Spec : Prop :=
  ∀ n, P2111854899399137107.a n = A083901 (n + 1)

end A083901

/-! ## A083901.P3400764030568152992

`A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)`
-/

namespace A083901.P3400764030568152992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1) + A083891 (n + 1) + A083892 (n + 1) + A083893 (n + 1)

end

end A083901.P3400764030568152992

namespace A083901

/-- `A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)` -/
def P3400764030568152992.Spec : Prop :=
  ∀ n, P3400764030568152992.a n = A083901 (n + 1)

end A083901

/-!
# A083902: Number of divisors of n with the largest digit of the divisor <= 7 (base 10).

The programs for A083902, the canonical program `A083902.P16661972985477975009` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083902 has offset 1).

The definition of A083902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083894, A083901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083902.P16661972985477975009

`A083901(n+1)+A083894(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083902

/-- `A083901(n+1)+A083894(n+1)` -/
def P16661972985477975009.Spec : Prop :=
  ∀ n, P16661972985477975009.a n = A083902 (n + 1)

theorem P16661972985477975009.correct : P16661972985477975009.Spec := by
  intro n
  simp only [A083902, Nat.add_sub_cancel]

end A083902

/-! ## A083902.P3408168630143962353

`A083903(n+1)-A083895(n+1)`
-/

namespace A083902.P3408168630143962353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083903 (n + 1) - A083895 (n + 1)

end

end A083902.P3408168630143962353

namespace A083902

/-- `A083903(n+1)-A083895(n+1)` -/
def P3408168630143962353.Spec : Prop :=
  ∀ n, P3408168630143962353.a n = A083902 (n + 1)

end A083902

/-! ## A083902.P12633627131777635584

`A083893(n+1)+A083900(n+1)+A083894(n+1)`
-/

namespace A083902.P12633627131777635584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (n + 1) + (A083900 (n + 1) + A083894 (n + 1))

end

end A083902.P12633627131777635584

namespace A083902

/-- `A083893(n+1)+A083900(n+1)+A083894(n+1)` -/
def P12633627131777635584.Spec : Prop :=
  ∀ n, P12633627131777635584.a n = A083902 (n + 1)

theorem P12633627131777635584.correct : P12633627131777635584.Spec := by
  intro n
  simp only [A083902, Nat.add_sub_cancel, A083902.P12633627131777635584.a, A083902.P16661972985477975009.a, A083893, A083893.P9603508304266071704.f1, A083893.P9603508304266071704.a, A083894, A083894.P7732345531771942104.f1, A083894.P7732345531771942104.a, A083900, A083900.P8267360639211876912.a, A083901, A083901.P13271728194704751477.a, A054055, A054055.P9530533000838630807.f2, A054055.P9530533000838630807.f1, A054055.P9530533000838630807.f3, A054055.P9530533000838630807.a, A083892, A083892.P11017636912069521889.f1, A083892.P11017636912069521889.a, A083899, A083899.P5886603955733939361.f1, A083899.P5886603955733939361.a, A000035, A000035.P2023072528413494694.a, A089898, A089898.P14690586977798270718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083902

/-! ## A083902.P15312574245519712018

`A000005(n+1)-(A083896(n+1)+A083895(n+1))`
-/

namespace A083902.P15312574245519712018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A083896 (n + 1) + A083895 (n + 1))

end

end A083902.P15312574245519712018

namespace A083902

/-- `A000005(n+1)-(A083896(n+1)+A083895(n+1))` -/
def P15312574245519712018.Spec : Prop :=
  ∀ n, P15312574245519712018.a n = A083902 (n + 1)

end A083902

/-! ## A083902.P15636574616555896674

`A032741(n+1)+1-(A083896(n+1)+A083895(n+1))`
-/

namespace A083902.P15636574616555896674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - (A083896 (n + 1) + A083895 (n + 1))

end

end A083902.P15636574616555896674

namespace A083902

/-- `A032741(n+1)+1-(A083896(n+1)+A083895(n+1))` -/
def P15636574616555896674.Spec : Prop :=
  ∀ n, P15636574616555896674.a n = A083902 (n + 1)

end A083902

/-! ## A083902.P4843260913424490956

`∑{d}[n+1, 1-A000010(#)]+n+1-(A083896(n+1)+A083895(n+1))`
-/

namespace A083902.P4843260913424490956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ) - (A083896 (n + 1) + A083895 (n + 1))

end

end A083902.P4843260913424490956

namespace A083902

/-- `∑{d}[n+1, 1-A000010(#)]+n+1-(A083896(n+1)+A083895(n+1))` -/
def P4843260913424490956.Spec : Prop :=
  ∀ n, P4843260913424490956.a n = A083902 (n + 1)

end A083902

/-! ## A083902.P2748301445615115937

`A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)+A083894(n+1)`
-/

namespace A083902.P2748301445615115937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1) + A083891 (n + 1) + A083892 (n + 1) + A083893 (n + 1) + A083894 (n + 1)

end

end A083902.P2748301445615115937

namespace A083902

/-- `A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)+A083894(n+1)` -/
def P2748301445615115937.Spec : Prop :=
  ∀ n, P2748301445615115937.a n = A083902 (n + 1)

end A083902

/-!
# A083903: Number of divisors of n with largest digit <= 8 (base 10).

The programs for A083903, there is no canonical definition to state claims against.
-/

/-! ## A083903.P1901432135498584595

`A083902(n+1)+A083895(n+1)`
-/

namespace A083903.P1901432135498584595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083902 (n + 1) + A083895 (n + 1)

end

end A083903.P1901432135498584595

/-! ## A083903.P1275582010600774007

`A000005(n+1)-A083896(n+1)`
-/

namespace A083903.P1275582010600774007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083896 (n + 1)

end

end A083903.P1275582010600774007

/-! ## A083903.P4372466007183013562

`∏{e}[n+1, #+1]-A083896(n+1)`
-/

namespace A083903.P4372466007183013562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A083896 (n + 1)

end

end A083903.P4372466007183013562

/-! ## A083903.P17850075498451075047

`Δ[A006218(n)]-A083896(n+1)`
-/

namespace A083903.P17850075498451075047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083896 (n + 1)

end

end A083903.P17850075498451075047

/-! ## A083903.P629143901164933874

`Δ[A054519(n)]-A083896(n+1)`
-/

namespace A083903.P629143901164933874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083896 (n + 1)

end

end A083903.P629143901164933874

/-! ## A083903.P2707184220039720376

`A032741(n+1)+1-A083896(n+1)`
-/

namespace A083903.P2707184220039720376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A083896 (n + 1)

end

end A083903.P2707184220039720376

/-! ## A083903.P10425859575802909827

`A334954(n+1)-(A083896(n+1)+1)`
-/

namespace A083903.P10425859575802909827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A083896 (n + 1) + 1)

end

end A083903.P10425859575802909827

/-! ## A083903.P6389726001032040538

`A062249(n+1)-(A083896(n+1)+n+1)`
-/

namespace A083903.P6389726001032040538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - (A083896 (n + 1) + (n + 1 : ℤ))

end

end A083903.P6389726001032040538

/-! ## A083903.P4588361115125529616

`A083894(n+1)+A083901(n+1)+A083895(n+1)`
-/

namespace A083903.P4588361115125529616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (n + 1) + (A083901 (n + 1) + A083895 (n + 1))

end

end A083903.P4588361115125529616

/-! ## A083903.P8504051678853187295

`A083888(n+1)+A083889(n+1)+A083890(n+1)+A083891(n+1)+A083892(n+1)+A083893(n+1)+A083894(n+1)+A083895(n+1)`
-/

namespace A083903.P8504051678853187295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) + A083889 (n + 1) + A083890 (n + 1) + A083891 (n + 1) + A083892 (n + 1) + A083893 (n + 1) + A083894 (n + 1) + A083895 (n + 1)

end

end A083903.P8504051678853187295

/-!
# A083904: Expansion of g.f. 1/(1-x) * Sum_{k>=0} 3^k * x^2^(k+1)/(1+x^2^k).

The programs for A083904, the canonical program `A083904.P1743701123662090987` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083904 has offset 1).

The definition of A083904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083904.P1743701123662090987

`n%2+3*a(floor((n-1)/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083904

/-- `n%2+3*a(floor((n-1)/2))` -/
def P1743701123662090987.Spec : Prop :=
  ∀ n, (P1743701123662090987.a n : ℤ) = A083904 (n + 1)

theorem P1743701123662090987.correct : P1743701123662090987.Spec := by
  intro n
  simp only [A083904, Nat.add_sub_cancel]

end A083904

/-! ## A083904.P11492296611308860726

`3^floor(log2(n+1))-A153775(n+1)`
-/

namespace A083904.P11492296611308860726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.log 2 (n + 1) : ℤ) - A153775 (n + 1)

end

end A083904.P11492296611308860726

namespace A083904

/-- `3^floor(log2(n+1))-A153775(n+1)` -/
def P11492296611308860726.Spec : Prop :=
  ∀ n, P11492296611308860726.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P1539026730511829680

`A005836(∑[n*char[2^n]]%(n+1)+1)`
-/

namespace A083904.P1539026730511829680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1)

end

end A083904.P1539026730511829680

namespace A083904

/-- `A005836(∑[n*char[2^n]]%(n+1)+1)` -/
def P1539026730511829680.Spec : Prop :=
  ∀ n, P1539026730511829680.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P18089489015023903950

`∑[ceil(3^val(n+1, 2)/2)]-A147991(n+1)`
-/

namespace A083904.P18089489015023903950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147991 (n + 1)

end

end A083904.P18089489015023903950

namespace A083904

/-- `∑[ceil(3^val(n+1, 2)/2)]-A147991(n+1)` -/
def P18089489015023903950.Spec : Prop :=
  ∀ n, P18089489015023903950.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P9615449485827566340

`∑[A259346(n+1)-ceil(3^val(n+1, 2)/2)]`
-/

namespace A083904.P9615449485827566340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (n + 1) - ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083904.P9615449485827566340

namespace A083904

/-- `∑[A259346(n+1)-ceil(3^val(n+1, 2)/2)]` -/
def P9615449485827566340.Spec : Prop :=
  ∀ n, P9615449485827566340.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P4611605269906007562

`A132140(n+1)-A191110(n+1)`
-/

namespace A083904.P4611605269906007562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132140 (n + 1) - A191110 (n + 1)

end

end A083904.P4611605269906007562

namespace A083904

/-- `A132140(n+1)-A191110(n+1)` -/
def P4611605269906007562.Spec : Prop :=
  ∀ n, P4611605269906007562.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P10905392171728914958

`A005836(n+2)-A147991(n+1)`
-/

namespace A083904.P10905392171728914958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - A147991 (n + 1)

end

end A083904.P10905392171728914958

namespace A083904

/-- `A005836(n+2)-A147991(n+1)` -/
def P10905392171728914958.Spec : Prop :=
  ∀ n, P10905392171728914958.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P3147585841397955670

`A005836(n+2)+A005836(n+2)-A191109(n+2)`
-/

namespace A083904.P3147585841397955670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) + (A005836 (n + 2) - A191109 (n + 2))

end

end A083904.P3147585841397955670

namespace A083904

/-- `A005836(n+2)+A005836(n+2)-A191109(n+2)` -/
def P3147585841397955670.Spec : Prop :=
  ∀ n, P3147585841397955670.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P9025194534734704167

`A005823(n+2)-A032924(2*(n+1))`
-/

namespace A083904.P9025194534734704167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 2) - A032924 (2 * (n + 1))

end

end A083904.P9025194534734704167

namespace A083904

/-- `A005823(n+2)-A032924(2*(n+1))` -/
def P9025194534734704167.Spec : Prop :=
  ∀ n, P9025194534734704167.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P8136852400751109943

`A107680(2*n+1)-A005836(n+2)`
-/

namespace A083904.P8136852400751109943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107680 (2 * n + 1) - A005836 (n + 2)

end

end A083904.P8136852400751109943

namespace A083904

/-- `A107680(2*n+1)-A005836(n+2)` -/
def P8136852400751109943.Spec : Prop :=
  ∀ n, P8136852400751109943.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P15291857595686252489

`A107681(A054429(n+2))`
-/

namespace A083904.P15291857595686252489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (A054429 (n + 2)).toNat

end

end A083904.P15291857595686252489

namespace A083904

/-- `A107681(A054429(n+2))` -/
def P15291857595686252489.Spec : Prop :=
  ∀ n, P15291857595686252489.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P6806124434280522365

`A008344(A147991(n+1))`
-/

namespace A083904.P6806124434280522365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (A147991 (n + 1)).toNat

end

end A083904.P6806124434280522365

namespace A083904

/-- `A008344(A147991(n+1))` -/
def P6806124434280522365.Spec : Prop :=
  ∀ n, P6806124434280522365.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P7143960488978577227

`A060373(A153775(n+1))`
-/

namespace A083904.P7143960488978577227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (A153775 (n + 1)).toNat

end

end A083904.P7143960488978577227

namespace A083904

/-- `A060373(A153775(n+1))` -/
def P7143960488978577227.Spec : Prop :=
  ∀ n, P7143960488978577227.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P1918183247480995658

`A060373(A032924(n+1))`
-/

namespace A083904.P1918183247480995658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (A032924 (n + 1)).toNat

end

end A083904.P1918183247480995658

namespace A083904

/-- `A060373(A032924(n+1))` -/
def P1918183247480995658.Spec : Prop :=
  ∀ n, P1918183247480995658.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P16037478351603345944

`A352501(A005836(n+2))-1`
-/

namespace A083904.P16037478351603345944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352501 (A005836 (n + 2)).toNat - 1

end

end A083904.P16037478351603345944

namespace A083904

/-- `A352501(A005836(n+2))-1` -/
def P16037478351603345944.Spec : Prop :=
  ∀ n, P16037478351603345944.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P4680666053314589103

`A256293(A005823(n+2))`
-/

namespace A083904.P4680666053314589103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256293 (A005823 (n + 2)).toNat

end

end A083904.P4680666053314589103

namespace A083904

/-- `A256293(A005823(n+2))` -/
def P4680666053314589103.Spec : Prop :=
  ∀ n, P4680666053314589103.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P269430618076120789

`filter[A256293(n+1), A039966(#)]`
-/

namespace A083904.P269430618076120789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A083904.P269430618076120789

namespace A083904

/-- `filter[A256293(n+1), A039966(#)]` -/
def P269430618076120789.Spec : Prop :=
  ∀ n, P269430618076120789.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P2944419084927975676

`filter[A008343(n+2), A039966(#)]`
-/

namespace A083904.P2944419084927975676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008343 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A083904.P2944419084927975676

namespace A083904

/-- `filter[A008343(n+2), A039966(#)]` -/
def P2944419084927975676.Spec : Prop :=
  ∀ n, P2944419084927975676.a n = A083904 (n + 1)

end A083904

/-!
# A083905: G.f.: 1/(1-x) * sum(k>=0, (-1)^k*x^2^(k+1)/(1+x^2^k)).

The programs for A083905, the canonical program `A083905.P6777605636858218612` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083905 has offset 1).

The definition of A083905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083905.P6777605636858218612

`A030300(n+1)-A065359(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083905

/-- `A030300(n+1)-A065359(n+1)` -/
def P6777605636858218612.Spec : Prop :=
  ∀ n, P6777605636858218612.a n = A083905 (n + 1)

theorem P6777605636858218612.correct : P6777605636858218612.Spec := by
  intro n
  simp only [A083905, Nat.add_sub_cancel]

end A083905

/-! ## A083905.P18110451528529699075

`n%2-a(floor((n-1)/2))` with `a(0)=0`
-/

namespace A083905.P18110451528529699075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℤ) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A083905.P18110451528529699075

namespace A083905

/-- `n%2-a(floor((n-1)/2))` -/
def P18110451528529699075.Spec : Prop :=
  ∀ n, P18110451528529699075.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P4347646514975845108

`and(1, n)-a(floor((n-1)/2))` with `a(0)=0`
-/

namespace A083905.P4347646514975845108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 1 n : ℤ) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A083905.P4347646514975845108

namespace A083905

/-- `and(1, n)-a(floor((n-1)/2))` -/
def P4347646514975845108.Spec : Prop :=
  ∀ n, P4347646514975845108.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P1870015894390187157

`2-(a(floor((n-1)/2))+gcd(2, n))` with `a(0)=0`
-/

namespace A083905.P1870015894390187157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (Nat.gcd 2 n : ℤ))

end

end A083905.P1870015894390187157

namespace A083905

/-- `2-(a(floor((n-1)/2))+gcd(2, n))` -/
def P1870015894390187157.Spec : Prop :=
  ∀ n, P1870015894390187157.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P8009072033233441839

`Δ[floor(n/2)]-a(floor((n-1)/2))` with `a(0)=0, a(1)=1`
-/

namespace A083905.P8009072033233441839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (n + 1) - f1 n - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A083905.P8009072033233441839

namespace A083905

/-- `Δ[floor(n/2)]-a(floor((n-1)/2))` -/
def P8009072033233441839.Spec : Prop :=
  ∀ n, P8009072033233441839.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P12149634450896136644

`∑[-(a(floor((n-1)/2))+a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A083905.P12149634450896136644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -(f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083905.P12149634450896136644

namespace A083905

/-- `∑[-(a(floor((n-1)/2))+a(n-1))]` -/
def P12149634450896136644.Spec : Prop :=
  ∀ n, P12149634450896136644.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P10824005244817836299

`∑[ceil(atan(-A290099(n+1)))]`
-/

namespace A083905.P10824005244817836299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (-A290099 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083905.P10824005244817836299

namespace A083905

/-- `∑[ceil(atan(-A290099(n+1)))]` -/
def P10824005244817836299.Spec : Prop :=
  ∀ n, P10824005244817836299.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P3381694446503040251

`1-a(ceil(n/2)-1)-A059841(n)` with `a(0)=0`
-/

namespace A083905.P3381694446503040251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (⌈(n : ℚ) / 2⌉ - 1).toNat - A059841 n

end

end A083905.P3381694446503040251

namespace A083905

/-- `1-a(ceil(n/2)-1)-A059841(n)` -/
def P3381694446503040251.Spec : Prop :=
  ∀ n, P3381694446503040251.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P11195922507072324994

`A065359(A035327(n+1))`
-/

namespace A083905.P11195922507072324994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A035327 (n + 1)).toNat

end

end A083905.P11195922507072324994

namespace A083905

/-- `A065359(A035327(n+1))` -/
def P11195922507072324994.Spec : Prop :=
  ∀ n, P11195922507072324994.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P1727175934375711731

`A139351(A006257(n+1))-A139351(n+1)`
-/

namespace A083905.P1727175934375711731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A006257 (n + 1)).toNat - A139351 (n + 1)

end

end A083905.P1727175934375711731

namespace A083905

/-- `A139351(A006257(n+1))-A139351(n+1)` -/
def P1727175934375711731.Spec : Prop :=
  ∀ n, P1727175934375711731.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P18338009553529188759

`∑[ceil(atan(A290099(2*(n+1))))]`
-/

namespace A083905.P18338009553529188759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A290099 (2 * (n + 1)) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083905.P18338009553529188759

namespace A083905

/-- `∑[ceil(atan(A290099(2*(n+1))))]` -/
def P18338009553529188759.Spec : Prop :=
  ∀ n, P18338009553529188759.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P6432953728181578023

`A065368(A083904(n+1))`
-/

namespace A083905.P6432953728181578023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065368 (A083904 (n + 1)).toNat

end

end A083905.P6432953728181578023

namespace A083905

/-- `A065368(A083904(n+1))` -/
def P6432953728181578023.Spec : Prop :=
  ∀ n, P6432953728181578023.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P12228641606534869672

`A085144(A088697(n+1))`
-/

namespace A083905.P12228641606534869672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A088697 (n + 1)).toNat

end

end A083905.P12228641606534869672

namespace A083905

/-- `A085144(A088697(n+1))` -/
def P12228641606534869672.Spec : Prop :=
  ∀ n, P12228641606534869672.a n = A083905 (n + 1)

end A083905

/-! ## A083905.P13227555650178958463

`A131852(A147992(n+1))`
-/

namespace A083905.P13227555650178958463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A147992 (n + 1)).toNat

end

end A083905.P13227555650178958463

namespace A083905

/-- `A131852(A147992(n+1))` -/
def P13227555650178958463.Spec : Prop :=
  ∀ n, P13227555650178958463.a n = A083905 (n + 1)

end A083905

/-!
# A083906: Table read by rows: T(n, k) is the number of length n binary words with exactly k inversions.

The programs for A083906, there is no canonical definition to state claims against.
-/

/-! ## A083906.P4710533896373657090

`A124758(A334437(n)*A351241(n+1))`
-/

namespace A083906.P4710533896373657090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A334437 n * A351241 (n + 1)).toNat

end

end A083906.P4710533896373657090

/-! ## A083906.P9317685320904546939

`A167489(lt[A344180(2*n+1), A340792(n+1)])`
-/

namespace A083906.P9317685320904546939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083906.P9317685320904546939

/-!
# A083909: Numbers of the form 10^(m-k)*(10^(m+k+1)-10^k), m, k >= 0.

The programs for A083909, there is no canonical definition to state claims against.
-/

/-! ## A083909.P15819331648012110672

`∑[10^n]*Δ[10^n]`
-/

namespace A083909.P15819331648012110672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A083909.P15819331648012110672

/-! ## A083909.P1937192860483442917

`record[Δ[10^(n/gcd(2, n))]]`
-/

namespace A083909.P1937192860483442917
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 : ℝ) ^ ((n : ℚ) / (Nat.gcd 2 n : ℚ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083909.P1937192860483442917

/-! ## A083909.P13628380213008081489

`lcm(9*10^n, ∑[9*10^n])`
-/

namespace A083909.P13628380213008081489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * 10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 * 10 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083909.P13628380213008081489

/-! ## A083909.P6354479950332047527

`A181965(n)+1`
-/

namespace A083909.P6354479950332047527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181965 n + 1

end

end A083909.P6354479950332047527

/-! ## A083909.P5453872807779094104

`record[9*A282416(n)]`
-/

namespace A083909.P5453872807779094104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A282416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083909.P5453872807779094104

/-! ## A083909.P16677042828301380378

`A037182(n+1)/5`
-/

namespace A083909.P16677042828301380378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037182 (n + 1) : ℚ) / 5

end

end A083909.P16677042828301380378

/-! ## A083909.P4821496729516803717

`A013715(n)-10^n`
-/

namespace A083909.P4821496729516803717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013715 n - (10 ^ n : ℤ)

end

end A083909.P4821496729516803717

/-! ## A083909.P9394828587802245305

`record[Δ[A011557(lcm(2, n)/2)]]`
-/

namespace A083909.P9394828587802245305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083909.P9394828587802245305

/-! ## A083909.P11685392548950950194

`A178500(2*n+1)-Δ[(10^n-1)/9]`
-/

namespace A083909.P11685392548950950194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178500 (2 * n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A083909.P11685392548950950194

/-! ## A083909.P14281037941392297290

`record[Δ[A011557(A026741(n))]]`
-/

namespace A083909.P14281037941392297290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083909.P14281037941392297290

/-!
# A083910: Number of divisors of n that are congruent to 0 modulo 10.

The programs for A083910, the canonical program `A083910.P1777275044733097431` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083910 has offset 1).

The definition of A083910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083910.P524315189480405541

`A000005(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083910.P524315189480405541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083910.P524315189480405541

namespace A083910

/-- `A000005(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P524315189480405541.Spec : Prop :=
  ∀ n, P524315189480405541.a n = A083910 (n + 1)

theorem P524315189480405541.correct : P524315189480405541.Spec := by
  intro n
  simp only [A083910, Nat.add_sub_cancel, A083910.P524315189480405541.a, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A000005, A000005.P16091521709108585461.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083910

/-! ## A083910.P1777275044733097431

`∑{d}[n+1, C(gcd(10, #), 10)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083910

/-- `∑{d}[n+1, C(gcd(10, #), 10)]` -/
def P1777275044733097431.Spec : Prop :=
  ∀ n, (P1777275044733097431.a n : ℤ) = A083910 (n + 1)

theorem P1777275044733097431.correct : P1777275044733097431.Spec := by
  intro n
  simp only [A083910, Nat.add_sub_cancel]

end A083910

/-! ## A083910.P10925395517994950743

`∑{d}[n+1, val(#, lcm(10, #))]`
-/

namespace A083910.P10925395517994950743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation d (Nat.lcm 10 d)

end

end A083910.P10925395517994950743

namespace A083910

/-- `∑{d}[n+1, val(#, lcm(10, #))]` -/
def P10925395517994950743.Spec : Prop :=
  ∀ n, (P10925395517994950743.a n : ℤ) = A083910 (n + 1)

end A083910

/-! ## A083910.P18135543358046141963

`val(n+1, 2)*∑{d}[n+1, val(#²+5, 10)]`
-/

namespace A083910.P18135543358046141963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 * (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2 + 5) 10)

end

end A083910.P18135543358046141963

namespace A083910

/-- `val(n+1, 2)*∑{d}[n+1, val(#²+5, 10)]` -/
def P18135543358046141963.Spec : Prop :=
  ∀ n, (P18135543358046141963.a n : ℤ) = A083910 (n + 1)

end A083910

/-! ## A083910.P2414282956305350202

`log2((2^val(n+1, 2))^∑{d}[n+1, val(#²+5, 10)])`
-/

namespace A083910.P2414282956305350202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ SequenceMachineLib.valuation (n + 1) 2) ^ (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2 + 5) 10) : ℝ)

end

end A083910.P2414282956305350202

namespace A083910

/-- `log2((2^val(n+1, 2))^∑{d}[n+1, val(#²+5, 10)])` -/
def P2414282956305350202.Spec : Prop :=
  ∀ n, P2414282956305350202.a n = (A083910 (n + 1) : ℝ)

end A083910

/-! ## A083910.P10968425743187982770

`Δ[A006218(floor(n/10))]`
-/

namespace A083910.P10968425743187982770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083910.P10968425743187982770

namespace A083910

/-- `Δ[A006218(floor(n/10))]` -/
def P10968425743187982770.Spec : Prop :=
  ∀ n, P10968425743187982770.a n = A083910 (n + 1)

end A083910

/-! ## A083910.P83933715718216180

`∑{d}[n+1, val(A138420(val(#, 10)+1), 6)]`
-/

namespace A083910.P83933715718216180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A138420 (SequenceMachineLib.valuation d 10 + 1)).toNat 6

end

end A083910.P83933715718216180

namespace A083910

/-- `∑{d}[n+1, val(A138420(val(#, 10)+1), 6)]` -/
def P83933715718216180.Spec : Prop :=
  ∀ n, (P83933715718216180.a n : ℤ) = A083910 (n + 1)

end A083910

/-! ## A083910.P18160856985570405927

`A007814(n+1)*A083915(n+1)`
-/

namespace A083910.P18160856985570405927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A083915 (n + 1)

end

end A083910.P18160856985570405927

namespace A083910

/-- `A007814(n+1)*A083915(n+1)` -/
def P18160856985570405927.Spec : Prop :=
  ∀ n, P18160856985570405927.a n = A083910 (n + 1)

end A083910

/-! ## A083910.P10130435061492992415

`Δ[A059995(n)]*A000005(A059995(n)+1)`
-/

namespace A083910.P10130435061492992415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000005 (A059995 n + 1).toNat

end

end A083910.P10130435061492992415

namespace A083910

/-- `Δ[A059995(n)]*A000005(A059995(n)+1)` -/
def P10130435061492992415.Spec : Prop :=
  ∀ n, P10130435061492992415.a n = A083910 (n + 1)

end A083910

/-! ## A083910.P2696759737495492400

`A211272(n+1)%A118762(n+1)`
-/

namespace A083910.P2696759737495492400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211272 (n + 1)) (A118762 (n + 1))

end

end A083910.P2696759737495492400

namespace A083910

/-- `A211272(n+1)%A118762(n+1)` -/
def P2696759737495492400.Spec : Prop :=
  ∀ n, P2696759737495492400.a n = A083910 (n + 1)

end A083910

/-!
# A083911: Number of divisors of n that are congruent to 1 modulo 10.

The programs for A083911, the canonical program `A083911.P4930570540995765095` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083911 has offset 1).

The definition of A083911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083911.P3672460991612052534

`A000005(n+1)-A083910(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083911.P3672460991612052534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083911.P3672460991612052534

namespace A083911

/-- `A000005(n+1)-A083910(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P3672460991612052534.Spec : Prop :=
  ∀ n, P3672460991612052534.a n = A083911 (n + 1)

theorem P3672460991612052534.correct : P3672460991612052534.Spec := by
  intro n
  simp only [A083911, Nat.add_sub_cancel, A083911.P3672460991612052534.a, A083911.P4930570540995765095.a, A000005, A000005.P16091521709108585461.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A079998, A079998.P5984370107414098605.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083911

/-! ## A083911.P4930570540995765095

`A001876((n+1)/2^val(n+1, 2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083911

/-- `A001876((n+1)/2^val(n+1, 2))` -/
def P4930570540995765095.Spec : Prop :=
  ∀ n, P4930570540995765095.a n = A083911 (n + 1)

theorem P4930570540995765095.correct : P4930570540995765095.Spec := by
  intro n
  simp only [A083911, Nat.add_sub_cancel]

end A083911

/-! ## A083911.P2178505244518468238

`A364043((n+1)/2^val(n+1, 2))`
-/

namespace A083911.P2178505244518468238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083911.P2178505244518468238

namespace A083911

/-- `A364043((n+1)/2^val(n+1, 2))` -/
def P2178505244518468238.Spec : Prop :=
  ∀ n, P2178505244518468238.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P2269044567881030634

`A083912(2*(n+1)/2^val(n+1, 2))`
-/

namespace A083911.P2269044567881030634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A083911.P2269044567881030634

namespace A083911

/-- `A083912(2*(n+1)/2^val(n+1, 2))` -/
def P2269044567881030634.Spec : Prop :=
  ∀ n, P2269044567881030634.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P9809280337065526062

`A284097((n+1)/(2^val(n+1, 2)*5^val(n+1, 5)))%10`
-/

namespace A083911.P9809280337065526062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))).toNat) 10

end

end A083911.P9809280337065526062

namespace A083911

/-- `A284097((n+1)/(2^val(n+1, 2)*5^val(n+1, 5)))%10` -/
def P9809280337065526062.Spec : Prop :=
  ∀ n, P9809280337065526062.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P10699375915244275500

`A330348(A132740(n+1))`
-/

namespace A083911.P10699375915244275500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A132740 (n + 1)).toNat

end

end A083911.P10699375915244275500

namespace A083911

/-- `A330348(A132740(n+1))` -/
def P10699375915244275500.Spec : Prop :=
  ∀ n, P10699375915244275500.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P16217043636400187873

`A364043(n+1)+A083916(n+1)`
-/

namespace A083911.P16217043636400187873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364043 (n + 1) + A083916 (n + 1)

end

end A083911.P16217043636400187873

namespace A083911

/-- `A364043(n+1)+A083916(n+1)` -/
def P16217043636400187873.Spec : Prop :=
  ∀ n, P16217043636400187873.a n = A083911 (n + 1)

theorem P16217043636400187873.correct : P16217043636400187873.Spec := by
  intro n
  simp only [A083911, Nat.add_sub_cancel, A083911.P16217043636400187873.a, A083911.P4930570540995765095.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A364043, A364043.P10368916526282945248.a, A079998, A079998.P5984370107414098605.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083911

/-! ## A083911.P5749016793237964997

`A083912(2*(n+1))-A083916(n+1)`
-/

namespace A083911.P5749016793237964997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * (n + 1)) - A083916 (n + 1)

end

end A083911.P5749016793237964997

namespace A083911

/-- `A083912(2*(n+1))-A083916(n+1)` -/
def P5749016793237964997.Spec : Prop :=
  ∀ n, P5749016793237964997.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P14727851895208402984

`A364043(2*(n+1))+A001878(n+1)`
-/

namespace A083911.P14727851895208402984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364043 (2 * (n + 1)) + A001878 (n + 1)

end

end A083911.P14727851895208402984

namespace A083911

/-- `A364043(2*(n+1))+A001878(n+1)` -/
def P14727851895208402984.Spec : Prop :=
  ∀ n, P14727851895208402984.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P13692053231841351584

`A007954(A364135(A378513(A364135(n+1))))`
-/

namespace A083911.P13692053231841351584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A364135 (A378513 (A364135 (n + 1)).toNat).toNat).toNat

end

end A083911.P13692053231841351584

namespace A083911

/-- `A007954(A364135(A378513(A364135(n+1))))` -/
def P13692053231841351584.Spec : Prop :=
  ∀ n, P13692053231841351584.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P5293220493799217247

`A062078(A364135(A378513(A364135(A350494(n+1)))))`
-/

namespace A083911.P5293220493799217247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062078 (A364135 (A378513 (A364135 (A350494 (n + 1)).toNat).toNat).toNat).toNat

end

end A083911.P5293220493799217247

namespace A083911

/-- `A062078(A364135(A378513(A364135(A350494(n+1)))))` -/
def P5293220493799217247.Spec : Prop :=
  ∀ n, P5293220493799217247.a n = A083911 (n + 1)

end A083911

/-!
# A083912: Number of divisors of n that are congruent to 2 modulo 10.

The programs for A083912, the canonical program `A083912.P10595039226711258511` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083912 has offset 1).

The definition of A083912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083912.P8542524959313194591

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083912.P8542524959313194591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083912.P8542524959313194591

namespace A083912

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P8542524959313194591.Spec : Prop :=
  ∀ n, P8542524959313194591.a n = A083912 (n + 1)

theorem P8542524959313194591.correct : P8542524959313194591.Spec := by
  intro n
  simp only [A083912, Nat.add_sub_cancel, A083912.P8542524959313194591.a, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A000005, A000005.P16091521709108585461.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A079998, A079998.P5984370107414098605.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083912

/-! ## A083912.P10595039226711258511

`A001876(∑[n]%(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083912

/-- `A001876(∑[n]%(n+1))` -/
def P10595039226711258511.Spec : Prop :=
  ∀ n, P10595039226711258511.a n = A083912 (n + 1)

theorem P10595039226711258511.correct : P10595039226711258511.Spec := by
  intro n
  simp only [A083912, Nat.add_sub_cancel]

end A083912

/-! ## A083912.P16627567141454827907

`A001876(floor((n+1)/2))-a(n-1)` with `a(0)=0`
-/

namespace A083912.P16627567141454827907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001876 ⌊(n + 1 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A083912.P16627567141454827907

namespace A083912

/-- `A001876(floor((n+1)/2))-a(n-1)` -/
def P16627567141454827907.Spec : Prop :=
  ∀ n, P16627567141454827907.a n = A083912 (n + 1)

end A083912

/-! ## A083912.P15091459073410479162

`A364044(n+1)+A083917(n+1)`
-/

namespace A083912.P15091459073410479162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364044 (n + 1) + A083917 (n + 1)

end

end A083912.P15091459073410479162

namespace A083912

/-- `A364044(n+1)+A083917(n+1)` -/
def P15091459073410479162.Spec : Prop :=
  ∀ n, P15091459073410479162.a n = A083912 (n + 1)

theorem P15091459073410479162.correct : P15091459073410479162.Spec := by
  intro n
  simp only [A083912, Nat.add_sub_cancel, A083912.P15091459073410479162.a, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A364044, A364044.P5969540682914640508.f1, A364044.P5969540682914640508.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083912

/-! ## A083912.P14406027341992947599

`∑{d}[n+1, A000035(#-1)*A079998((n+1)/#-1)]`
-/

namespace A083912.P14406027341992947599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (d - 1) * A079998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A083912.P14406027341992947599

namespace A083912

/-- `∑{d}[n+1, A000035(#-1)*A079998((n+1)/#-1)]` -/
def P14406027341992947599.Spec : Prop :=
  ∀ n, P14406027341992947599.a n = A083912 (n + 1)

end A083912

/-! ## A083912.P3214325936847068714

`A001877(n+1)-A001877(A000265(n+1))`
-/

namespace A083912.P3214325936847068714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (n + 1) - A001877 (A000265 (n + 1)).toNat

end

end A083912.P3214325936847068714

namespace A083912

/-- `A001877(n+1)-A001877(A000265(n+1))` -/
def P3214325936847068714.Spec : Prop :=
  ∀ n, P3214325936847068714.a n = A083912 (n + 1)

end A083912

/-! ## A083912.P15257771308387901190

`A001877(n+1)-A001877(A132740(n+1))`
-/

namespace A083912.P15257771308387901190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (n + 1) - A001877 (A132740 (n + 1)).toNat

end

end A083912.P15257771308387901190

namespace A083912

/-- `A001877(n+1)-A001877(A132740(n+1))` -/
def P15257771308387901190.Spec : Prop :=
  ∀ n, P15257771308387901190.a n = A083912 (n + 1)

end A083912

/-! ## A083912.P10367100807452091592

`Δ[A218444(A004526(n))]`
-/

namespace A083912.P10367100807452091592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218444 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083912.P10367100807452091592

namespace A083912

/-- `Δ[A218444(A004526(n))]` -/
def P10367100807452091592.Spec : Prop :=
  ∀ n, P10367100807452091592.a n = A083912 (n + 1)

end A083912

/-! ## A083912.P16028797724116084130

`A083914(2*(n+1))-A083917(n+1)`
-/

namespace A083912.P16028797724116084130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * (n + 1)) - A083917 (n + 1)

end

end A083912.P16028797724116084130

namespace A083912

/-- `A083914(2*(n+1))-A083917(n+1)` -/
def P16028797724116084130.Spec : Prop :=
  ∀ n, P16028797724116084130.a n = A083912 (n + 1)

end A083912

/-!
# A083913: Number of divisors of n that are congruent to 3 modulo 10.

The programs for A083913, the canonical program `A083913.P9028729068411083889` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083913 has offset 1).

The definition of A083913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083913.P9028729068411083889

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083913

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P9028729068411083889.Spec : Prop :=
  ∀ n, P9028729068411083889.a n = A083913 (n + 1)

theorem P9028729068411083889.correct : P9028729068411083889.Spec := by
  intro n
  simp only [A083913, Nat.add_sub_cancel]

end A083913

/-! ## A083913.P1570986512954617093

`A001878((n+1)/2^val(n+1, 2))`
-/

namespace A083913.P1570986512954617093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083913.P1570986512954617093

namespace A083913

/-- `A001878((n+1)/2^val(n+1, 2))` -/
def P1570986512954617093.Spec : Prop :=
  ∀ n, P1570986512954617093.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P6941334249723213395

`A364045((n+1)/2^val(n+1, 2))`
-/

namespace A083913.P6941334249723213395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083913.P6941334249723213395

namespace A083913

/-- `A364045((n+1)/2^val(n+1, 2))` -/
def P6941334249723213395.Spec : Prop :=
  ∀ n, P6941334249723213395.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P3689409938022129895

`A364045(n+1)+A083918(n+1)`
-/

namespace A083913.P3689409938022129895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364045 (n + 1) + A083918 (n + 1)

end

end A083913.P3689409938022129895

namespace A083913

/-- `A364045(n+1)+A083918(n+1)` -/
def P3689409938022129895.Spec : Prop :=
  ∀ n, P3689409938022129895.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P1448096227716109491

`A001878(n+1)-A083918(n+1)`
-/

namespace A083913.P1448096227716109491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A083918 (n + 1)

end

end A083913.P1448096227716109491

namespace A083913

/-- `A001878(n+1)-A083918(n+1)` -/
def P1448096227716109491.Spec : Prop :=
  ∀ n, P1448096227716109491.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P283566219884560192

`∑{d}[A000265(n+1), A079998(#+2)]`
-/

namespace A083913.P283566219884560192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A079998 (d + 2)

end

end A083913.P283566219884560192

namespace A083913

/-- `∑{d}[A000265(n+1), A079998(#+2)]` -/
def P283566219884560192.Spec : Prop :=
  ∀ n, P283566219884560192.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P13598535873017961689

`∑{d}[n+1, #%gcd(2, A259754(#+1))]`
-/

namespace A083913.P13598535873017961689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Int.gcd 2 (A259754 (d + 1))

end

end A083913.P13598535873017961689

namespace A083913

/-- `∑{d}[n+1, #%gcd(2, A259754(#+1))]` -/
def P13598535873017961689.Spec : Prop :=
  ∀ n, (P13598535873017961689.a n : ℤ) = A083913 (n + 1)

end A083913

/-! ## A083913.P17125418559492287752

`A001878(n+1)-A001899(A142150(n+1))`
-/

namespace A083913.P17125418559492287752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A001899 (A142150 (n + 1)).toNat

end

end A083913.P17125418559492287752

namespace A083913

/-- `A001878(n+1)-A001899(A142150(n+1))` -/
def P17125418559492287752.Spec : Prop :=
  ∀ n, P17125418559492287752.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P2110329917316184946

`A364045(2*(n+1))+A001899(n+1)`
-/

namespace A083913.P2110329917316184946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364045 (2 * (n + 1)) + A001899 (n + 1)

end

end A083913.P2110329917316184946

namespace A083913

/-- `A364045(2*(n+1))+A001899(n+1)` -/
def P2110329917316184946.Spec : Prop :=
  ∀ n, P2110329917316184946.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P11956101840159988952

`A001878(2*(n+1))-A001899(n+1)`
-/

namespace A083913.P11956101840159988952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (2 * (n + 1)) - A001899 (n + 1)

end

end A083913.P11956101840159988952

namespace A083913

/-- `A001878(2*(n+1))-A001899(n+1)` -/
def P11956101840159988952.Spec : Prop :=
  ∀ n, P11956101840159988952.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P16559274974373316588

`A083916(2*(n+1))-A083918(n+1)`
-/

namespace A083913.P16559274974373316588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (2 * (n + 1)) - A083918 (n + 1)

end

end A083913.P16559274974373316588

namespace A083913

/-- `A083916(2*(n+1))-A083918(n+1)` -/
def P16559274974373316588.Spec : Prop :=
  ∀ n, P16559274974373316588.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P1409701767048092847

`A364419(A191871(n+1))`
-/

namespace A083913.P1409701767048092847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364419 (A191871 (n + 1)).toNat

end

end A083913.P1409701767048092847

namespace A083913

/-- `A364419(A191871(n+1))` -/
def P1409701767048092847.Spec : Prop :=
  ∀ n, P1409701767048092847.a n = A083913 (n + 1)

end A083913

/-!
# A083914: Number of divisors of n that are congruent to 4 modulo 10.

The programs for A083914, the canonical program `A083914.P12576532045050114773` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083914 has offset 1).

The definition of A083914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083914.P9938495828732292751

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083914.P9938495828732292751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083914.P9938495828732292751

namespace A083914

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P9938495828732292751.Spec : Prop :=
  ∀ n, P9938495828732292751.a n = A083914 (n + 1)

theorem P9938495828732292751.correct : P9938495828732292751.Spec := by
  intro n
  simp only [A083914, Nat.add_sub_cancel, A083914.P9938495828732292751.a, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A000005, A000005.P16091521709108585461.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A047412, A047412.P4762915060399373107.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083914

/-! ## A083914.P12576532045050114773

`Δ[A218445(floor(n/2))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083914

/-- `Δ[A218445(floor(n/2))]` -/
def P12576532045050114773.Spec : Prop :=
  ∀ n, P12576532045050114773.a n = A083914 (n + 1)

theorem P12576532045050114773.correct : P12576532045050114773.Spec := by
  intro n
  simp only [A083914, Nat.add_sub_cancel]

end A083914

/-! ## A083914.P12413735772193936806

`A001877(gcd(1+n, ∑[char[2*n]]))`
-/

namespace A083914.P12413735772193936806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Nat.gcd (1 + n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083914.P12413735772193936806

namespace A083914

/-- `A001877(gcd(1+n, ∑[char[2*n]]))` -/
def P12413735772193936806.Spec : Prop :=
  ∀ n, P12413735772193936806.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P7274838616961339644

`Δ[A218447(n)]-∑{d}[n+1, C(#%10, 9)]`
-/

namespace A083914.P7274838616961339644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218447 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ d ∈ Nat.divisors (f2 n), Nat.choose (d % 10) 9 : ℕ) : ℤ)

end

end A083914.P7274838616961339644

namespace A083914

/-- `Δ[A218447(n)]-∑{d}[n+1, C(#%10, 9)]` -/
def P7274838616961339644.Spec : Prop :=
  ∀ n, P7274838616961339644.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P14137262440195661006

`A364046(n+1)+A083919(n+1)`
-/

namespace A083914.P14137262440195661006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364046 (n + 1) + A083919 (n + 1)

end

end A083914.P14137262440195661006

namespace A083914

/-- `A364046(n+1)+A083919(n+1)` -/
def P14137262440195661006.Spec : Prop :=
  ∀ n, P14137262440195661006.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P17581500737372145190

`A001899(n+1)-A001899(A000265(n+1))`
-/

namespace A083914.P17581500737372145190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (n + 1) - A001899 (A000265 (n + 1)).toNat

end

end A083914.P17581500737372145190

namespace A083914

/-- `A001899(n+1)-A001899(A000265(n+1))` -/
def P17581500737372145190.Spec : Prop :=
  ∀ n, P17581500737372145190.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P12290859348428301303

`A001899(n+1)-A001899(A132740(n+1))`
-/

namespace A083914.P12290859348428301303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (n + 1) - A001899 (A132740 (n + 1)).toNat

end

end A083914.P12290859348428301303

namespace A083914

/-- `A001899(n+1)-A001899(A132740(n+1))` -/
def P12290859348428301303.Spec : Prop :=
  ∀ n, P12290859348428301303.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P14307279543047239171

`A083918(2*(n+1))-A083919(n+1)`
-/

namespace A083914.P14307279543047239171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (2 * (n + 1)) - A083919 (n + 1)

end

end A083914.P14307279543047239171

namespace A083914

/-- `A083918(2*(n+1))-A083919(n+1)` -/
def P14307279543047239171.Spec : Prop :=
  ∀ n, P14307279543047239171.a n = A083914 (n + 1)

end A083914

/-!
# A083915: Number of divisors of n that are congruent to 5 modulo 10.

The programs for A083915, the canonical program `A083915.P1694659271945774476` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083915 has offset 1).

The definition of A083915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083915.P16816417910204379857

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083915.P16816417910204379857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083915.P16816417910204379857

namespace A083915

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P16816417910204379857.Spec : Prop :=
  ∀ n, P16816417910204379857.a n = A083915 (n + 1)

theorem P16816417910204379857.correct : P16816417910204379857.Spec := by
  intro n
  simp only [A083915, Nat.add_sub_cancel, A083915.P16816417910204379857.a, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A000005, A000005.P16091521709108585461.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083915

/-! ## A083915.P1694659271945774476

`∑{d}[n+1, val(#²+5, 10)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083915

/-- `∑{d}[n+1, val(#²+5, 10)]` -/
def P1694659271945774476.Spec : Prop :=
  ∀ n, (P1694659271945774476.a n : ℤ) = A083915 (n + 1)

theorem P1694659271945774476.correct : P1694659271945774476.Spec := by
  intro n
  simp only [A083915, Nat.add_sub_cancel]

end A083915

/-! ## A083915.P10767481730383021042

`∑{d}[n+1, (#%2)%gcd(5, #)]`
-/

namespace A083915.P10767481730383021042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % 2 % Nat.gcd 5 d

end

end A083915.P10767481730383021042

namespace A083915

/-- `∑{d}[n+1, (#%2)%gcd(5, #)]` -/
def P10767481730383021042.Spec : Prop :=
  ∀ n, (P10767481730383021042.a n : ℤ) = A083915 (n + 1)

end A083915

/-! ## A083915.P3926281000524632641

`Δ[A060831(floor(n/5))]`
-/

namespace A083915.P3926281000524632641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 ⌊(n : ℚ) / 5⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083915.P3926281000524632641

namespace A083915

/-- `Δ[A060831(floor(n/5))]` -/
def P3926281000524632641.Spec : Prop :=
  ∀ n, P3926281000524632641.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P9030625668348979111

`A091954(Δ[floor(n/5)²]+1)`
-/

namespace A083915.P9030625668348979111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (f1 (n + 1) - f1 n + 1).toNat

end

end A083915.P9030625668348979111

namespace A083915

/-- `A091954(Δ[floor(n/5)²]+1)` -/
def P9030625668348979111.Spec : Prop :=
  ∀ n, P9030625668348979111.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P1606130056259197053

`A320003(∑[A130782(n)])`
-/

namespace A083915.P1606130056259197053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083915.P1606130056259197053

namespace A083915

/-- `A320003(∑[A130782(n)])` -/
def P1606130056259197053.Spec : Prop :=
  ∀ n, P1606130056259197053.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P4247241593433550718

`A183063(A354092(n+1))`
-/

namespace A083915.P4247241593433550718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A354092 (n + 1)).toNat

end

end A083915.P4247241593433550718

namespace A083915

/-- `A183063(A354092(n+1))` -/
def P4247241593433550718.Spec : Prop :=
  ∀ n, P4247241593433550718.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P11587333684811724612

`∑{d}[A000265(n+1), A079998(#)]`
-/

namespace A083915.P11587333684811724612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A079998 d

end

end A083915.P11587333684811724612

namespace A083915

/-- `∑{d}[A000265(n+1), A079998(#)]` -/
def P11587333684811724612.Spec : Prop :=
  ∀ n, P11587333684811724612.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P17725521424096673937

`∑{d}[A000265(n+1), A050782(val(#, 5))]`
-/

namespace A083915.P17725521424096673937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050782 (SequenceMachineLib.valuation d 5)

end

end A083915.P17725521424096673937

namespace A083915

/-- `∑{d}[A000265(n+1), A050782(val(#, 5))]` -/
def P17725521424096673937.Spec : Prop :=
  ∀ n, P17725521424096673937.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P9279692295844942908

`A083910(2*(n+1)/2^val(n+1, 2))`
-/

namespace A083915.P9279692295844942908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A083915.P9279692295844942908

namespace A083915

/-- `A083910(2*(n+1)/2^val(n+1, 2))` -/
def P9279692295844942908.Spec : Prop :=
  ∀ n, P9279692295844942908.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P2428147306226661595

`A083910(2*(n+1))-A083910(n+1)`
-/

namespace A083915.P2428147306226661595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (2 * (n + 1)) - A083910 (n + 1)

end

end A083915.P2428147306226661595

namespace A083915

/-- `A083910(2*(n+1))-A083910(n+1)` -/
def P2428147306226661595.Spec : Prop :=
  ∀ n, P2428147306226661595.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P987260374457552739

`A054844(n+1)-A001227(5*(n+1))`
-/

namespace A083915.P987260374457552739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A001227 (5 * (n + 1))

end

end A083915.P987260374457552739

namespace A083915

/-- `A054844(n+1)-A001227(5*(n+1))` -/
def P987260374457552739.Spec : Prop :=
  ∀ n, P987260374457552739.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P1934964523774666381

`A001222(∏{d}[A000265(n+1), gcd(5, #)])`
-/

namespace A083915.P1934964523774666381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd 5 d)

end

end A083915.P1934964523774666381

namespace A083915

/-- `A001222(∏{d}[A000265(n+1), gcd(5, #)])` -/
def P1934964523774666381.Spec : Prop :=
  ∀ n, P1934964523774666381.a n = A083915 (n + 1)

end A083915

/-!
# A083916: Number of divisors of n that are congruent to 6 modulo 10.

The programs for A083916, the canonical program `A083916.P17944496947031591987` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083916 has offset 1).

The definition of A083916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083916.P15428211835473530708

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083916.P15428211835473530708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083916.P15428211835473530708

namespace A083916

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)` -/
def P15428211835473530708.Spec : Prop :=
  ∀ n, P15428211835473530708.a n = A083916 (n + 1)

theorem P15428211835473530708.correct : P15428211835473530708.Spec := by
  intro n
  simp only [A083916, Nat.add_sub_cancel, A083916.P15428211835473530708.a, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A000005, A000005.P16091521709108585461.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083916

/-! ## A083916.P17944496947031591987

`Δ[A218446(floor(n/2))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083916

/-- `Δ[A218446(floor(n/2))]` -/
def P17944496947031591987.Spec : Prop :=
  ∀ n, P17944496947031591987.a n = A083916 (n + 1)

theorem P17944496947031591987.correct : P17944496947031591987.Spec := by
  intro n
  simp only [A083916, Nat.add_sub_cancel]

end A083916

/-! ## A083916.P13697015598664177210

`A001878(∑[n]%(n+1))`
-/

namespace A083916.P13697015598664177210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A083916.P13697015598664177210

namespace A083916

/-- `A001878(∑[n]%(n+1))` -/
def P13697015598664177210.Spec : Prop :=
  ∀ n, P13697015598664177210.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P165298613463613266

`A083911(n+1)-A364043(n+1)`
-/

namespace A083916.P165298613463613266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (n + 1) - A364043 (n + 1)

end

end A083916.P165298613463613266

namespace A083916

/-- `A083911(n+1)-A364043(n+1)` -/
def P165298613463613266.Spec : Prop :=
  ∀ n, P165298613463613266.a n = A083916 (n + 1)

theorem P165298613463613266.correct : P165298613463613266.Spec := by
  intro n
  simp only [A083916, Nat.add_sub_cancel, A083916.P165298613463613266.a, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083911, A083911.P4930570540995765095.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A364043, A364043.P10368916526282945248.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083916

/-! ## A083916.P13201377841822369630

`A083912(2*(n+1))-A083911(n+1)`
-/

namespace A083916.P13201377841822369630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * (n + 1)) - A083911 (n + 1)

end

end A083916.P13201377841822369630

namespace A083916

/-- `A083912(2*(n+1))-A083911(n+1)` -/
def P13201377841822369630.Spec : Prop :=
  ∀ n, P13201377841822369630.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P13085264680557188511

`A001876(n+1)-A001876(A000265(n+1))`
-/

namespace A083916.P13085264680557188511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1) - A001876 (A000265 (n + 1)).toNat

end

end A083916.P13085264680557188511

namespace A083916

/-- `A001876(n+1)-A001876(A000265(n+1))` -/
def P13085264680557188511.Spec : Prop :=
  ∀ n, P13085264680557188511.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P16723710865364302723

`A001876(n+1)-A001876(A132740(n+1))`
-/

namespace A083916.P16723710865364302723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1) - A001876 (A132740 (n + 1)).toNat

end

end A083916.P16723710865364302723

namespace A083916

/-- `A001876(n+1)-A001876(A132740(n+1))` -/
def P16723710865364302723.Spec : Prop :=
  ∀ n, P16723710865364302723.a n = A083916 (n + 1)

end A083916

/-!
# A083917: Number of divisors of n that are congruent to 7 modulo 10.

The programs for A083917, the canonical program `A083917.P4566676204785968317` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083917 has offset 1).

The definition of A083917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083917.P16626049806192692233

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083917.P16626049806192692233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083917.P16626049806192692233

namespace A083917

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083918(n+1)-A083919(n+1)` -/
def P16626049806192692233.Spec : Prop :=
  ∀ n, P16626049806192692233.a n = A083917 (n + 1)

theorem P16626049806192692233.correct : P16626049806192692233.Spec := by
  intro n
  simp only [A083917, Nat.add_sub_cancel, A083917.P16626049806192692233.a, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A000005, A000005.P16091521709108585461.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083917

/-! ## A083917.P4566676204785968317

`∑{d}[n+1, val(#%10+3, 10)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083917

/-- `∑{d}[n+1, val(#%10+3, 10)]` -/
def P4566676204785968317.Spec : Prop :=
  ∀ n, (P4566676204785968317.a n : ℤ) = A083917 (n + 1)

theorem P4566676204785968317.correct : P4566676204785968317.Spec := by
  intro n
  simp only [A083917, Nat.add_sub_cancel]

end A083917

/-! ## A083917.P12877500860235846329

`∑{d}[n+1, A215887(val(#+3, 10))]`
-/

namespace A083917.P12877500860235846329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215887 (SequenceMachineLib.valuation (d + 3) 10)

end

end A083917.P12877500860235846329

namespace A083917

/-- `∑{d}[n+1, A215887(val(#+3, 10))]` -/
def P12877500860235846329.Spec : Prop :=
  ∀ n, P12877500860235846329.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P13553087900801136887

`A001877((n+1)/2^val(n+1, 2))`
-/

namespace A083917.P13553087900801136887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083917.P13553087900801136887

namespace A083917

/-- `A001877((n+1)/2^val(n+1, 2))` -/
def P13553087900801136887.Spec : Prop :=
  ∀ n, P13553087900801136887.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P18436381173963969699

`∑{d}[(n+1)/(2^val(n+1, 2)*5^val(n+1, 5)), A198517(#)]`
-/

namespace A083917.P18436381173963969699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A198517 d

end

end A083917.P18436381173963969699

namespace A083917

/-- `∑{d}[(n+1)/(2^val(n+1, 2)*5^val(n+1, 5)), A198517(#)]` -/
def P18436381173963969699.Spec : Prop :=
  ∀ n, P18436381173963969699.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P1203077135817932529

`A001877(n+1)-A083912(n+1)`
-/

namespace A083917.P1203077135817932529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (n + 1) - A083912 (n + 1)

end

end A083917.P1203077135817932529

namespace A083917

/-- `A001877(n+1)-A083912(n+1)` -/
def P1203077135817932529.Spec : Prop :=
  ∀ n, P1203077135817932529.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P9288373840558218984

`A083912(n+1)-A364044(n+1)`
-/

namespace A083917.P9288373840558218984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (n + 1) - A364044 (n + 1)

end

end A083917.P9288373840558218984

namespace A083917

/-- `A083912(n+1)-A364044(n+1)` -/
def P9288373840558218984.Spec : Prop :=
  ∀ n, P9288373840558218984.a n = A083917 (n + 1)

theorem P9288373840558218984.correct : P9288373840558218984.Spec := by
  intro n
  simp only [A083917, Nat.add_sub_cancel, A083917.P9288373840558218984.a, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A364044, A364044.P5969540682914640508.f1, A364044.P5969540682914640508.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A079998, A079998.P5984370107414098605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083917

/-! ## A083917.P8336095047034735609

`A083914(2*(n+1)/2^val(n+1, 2))`
-/

namespace A083917.P8336095047034735609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A083917.P8336095047034735609

namespace A083917

/-- `A083914(2*(n+1)/2^val(n+1, 2))` -/
def P8336095047034735609.Spec : Prop :=
  ∀ n, P8336095047034735609.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P16786566727993302018

`A001877(2*(n+1))-A001876(n+1)`
-/

namespace A083917.P16786566727993302018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (2 * (n + 1)) - A001876 (n + 1)

end

end A083917.P16786566727993302018

namespace A083917

/-- `A001877(2*(n+1))-A001876(n+1)` -/
def P16786566727993302018.Spec : Prop :=
  ∀ n, P16786566727993302018.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P11216650537405463807

`A083914(2*(n+1))-A083912(n+1)`
-/

namespace A083917.P11216650537405463807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * (n + 1)) - A083912 (n + 1)

end

end A083917.P11216650537405463807

namespace A083917

/-- `A083914(2*(n+1))-A083912(n+1)` -/
def P11216650537405463807.Spec : Prop :=
  ∀ n, P11216650537405463807.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P3018733742630873100

`A001876(n+1)-A364044(2*(n+1))`
-/

namespace A083917.P3018733742630873100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1) - A364044 (2 * (n + 1))

end

end A083917.P3018733742630873100

namespace A083917

/-- `A001876(n+1)-A364044(2*(n+1))` -/
def P3018733742630873100.Spec : Prop :=
  ∀ n, P3018733742630873100.a n = A083917 (n + 1)

end A083917

/-!
# A083918: Number of divisors of n that are congruent to 8 modulo 10.

The programs for A083918, the canonical program `A083918.P6152787378875264210` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083918 has offset 1).

The definition of A083918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083918.P220987427274733620

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083919(n+1)`
-/

namespace A083918.P220987427274733620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083919 (n + 1)

end

end A083918.P220987427274733620

namespace A083918

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083919(n+1)` -/
def P220987427274733620.Spec : Prop :=
  ∀ n, P220987427274733620.a n = A083918 (n + 1)

theorem P220987427274733620.correct : P220987427274733620.Spec := by
  intro n
  simp only [A083918, Nat.add_sub_cancel, A083918.P220987427274733620.a, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A000005, A000005.P16091521709108585461.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083919, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083918

/-! ## A083918.P4467092305248405649

`∑{d}[(C(1+n, 2)-(n+1))%(n+1), C(#, 4)%5]`
-/

namespace A083918.P4467092305248405649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (1 + n) 2 : ℤ) - (n + 1 : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.choose d 4 % 5

end

end A083918.P4467092305248405649

namespace A083918

/-- `∑{d}[(C(1+n, 2)-(n+1))%(n+1), C(#, 4)%5]` -/
def P4467092305248405649.Spec : Prop :=
  ∀ n, (P4467092305248405649.a n : ℤ) = A083918 (n + 1)

end A083918

/-! ## A083918.P6152787378875264210

`Δ[A218447(floor(n/2))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A083918

/-- `Δ[A218447(floor(n/2))]` -/
def P6152787378875264210.Spec : Prop :=
  ∀ n, P6152787378875264210.a n = A083918 (n + 1)

theorem P6152787378875264210.correct : P6152787378875264210.Spec := by
  intro n
  simp only [A083918, Nat.add_sub_cancel]

end A083918

/-! ## A083918.P5564319152301332296

`A001899(∑[n]%(n+1))`
-/

namespace A083918.P5564319152301332296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A083918.P5564319152301332296

namespace A083918

/-- `A001899(∑[n]%(n+1))` -/
def P5564319152301332296.Spec : Prop :=
  ∀ n, P5564319152301332296.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P7077934684840233715

`A083913(n+1)-A364045(n+1)`
-/

namespace A083918.P7077934684840233715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (n + 1) - A364045 (n + 1)

end

end A083918.P7077934684840233715

namespace A083918

/-- `A083913(n+1)-A364045(n+1)` -/
def P7077934684840233715.Spec : Prop :=
  ∀ n, P7077934684840233715.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P15698456919682037779

`A001878(n+1)-A001878(A000265(n+1))`
-/

namespace A083918.P15698456919682037779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A001878 (A000265 (n + 1)).toNat

end

end A083918.P15698456919682037779

namespace A083918

/-- `A001878(n+1)-A001878(A000265(n+1))` -/
def P15698456919682037779.Spec : Prop :=
  ∀ n, P15698456919682037779.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P4822315098067956823

`A001878(n+1)-A001878(A132740(n+1))`
-/

namespace A083918.P4822315098067956823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (n + 1) - A001878 (A132740 (n + 1)).toNat

end

end A083918.P4822315098067956823

namespace A083918

/-- `A001878(n+1)-A001878(A132740(n+1))` -/
def P4822315098067956823.Spec : Prop :=
  ∀ n, P4822315098067956823.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P50891991167602299

`A083916(2*(n+1))-A083913(n+1)`
-/

namespace A083918.P50891991167602299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083916 (2 * (n + 1)) - A083913 (n + 1)

end

end A083918.P50891991167602299

namespace A083918

/-- `A083916(2*(n+1))-A083913(n+1)` -/
def P50891991167602299.Spec : Prop :=
  ∀ n, P50891991167602299.a n = A083918 (n + 1)

end A083918

/-!
# A083919: Number of divisors of n that are congruent to 9 modulo 10.

The programs for A083919, the canonical program `A083919.P3421633539975014325` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083919 has offset 1).

The definition of A083919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083919.P12861191612655900850

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)`
-/

namespace A083919.P12861191612655900850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083913 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1)

end

end A083919.P12861191612655900850

namespace A083919

/-- `A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083913(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)` -/
def P12861191612655900850.Spec : Prop :=
  ∀ n, P12861191612655900850.a n = A083919 (n + 1)

theorem P12861191612655900850.correct : P12861191612655900850.Spec := by
  intro n
  simp only [A083919, Nat.add_sub_cancel, A083919.P12861191612655900850.a, A083919.P3421633539975014325.f1, A083919.P3421633539975014325.a, A000005, A000005.P16091521709108585461.a, A083910, A083910.P1777275044733097431.f1, A083910.P1777275044733097431.a, A083911, A083911.P4930570540995765095.a, A083912, A083912.P10595039226711258511.f1, A083912.P10595039226711258511.a, A083913, A083913.P9028729068411083889.a, A083914, A083914.P12576532045050114773.f1, A083914.P12576532045050114773.a, A083915, A083915.P1694659271945774476.f1, A083915.P1694659271945774476.a, A083916, A083916.P17944496947031591987.f1, A083916.P17944496947031591987.a, A083917, A083917.P4566676204785968317.f1, A083917.P4566676204785968317.a, A083918, A083918.P6152787378875264210.f1, A083918.P6152787378875264210.a, A001876, A001876.P1528332183595955459.f1, A001876.P1528332183595955459.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A218445, A218445.P17304662535675583263.f1, A218445.P17304662535675583263.a, A218446, A218446.P16595335050583582027.f1, A218446.P16595335050583582027.a, A218447, A218447.P6360476239130993311.f2, A218447.P6360476239130993311.f1, A218447.P6360476239130993311.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A001878, A001878.P13516976986806296717.f1, A001878.P13516976986806296717.a, A051731, A051731.P11318043630102858095.a, A079998, A079998.P5984370107414098605.a, A000007, A000007.P6599383543502402472.a, A047412, A047412.P4762915060399373107.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083919

/-! ## A083919.P3421633539975014325

`∑{d}[1+n, C(#%10, 9)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083919

/-- `∑{d}[1+n, C(#%10, 9)]` -/
def P3421633539975014325.Spec : Prop :=
  ∀ n, (P3421633539975014325.a n : ℤ) = A083919 (n + 1)

theorem P3421633539975014325.correct : P3421633539975014325.Spec := by
  intro n
  simp only [A083919, Nat.add_sub_cancel]

end A083919

/-! ## A083919.P8223393177933072584

`A001899(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A083919.P8223393177933072584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A083919.P8223393177933072584

namespace A083919

/-- `A001899(2*(n+1)/(xor(n, n+1)+1))` -/
def P8223393177933072584.Spec : Prop :=
  ∀ n, P8223393177933072584.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P15412922098988319491

`A083914(n+1)-A364046(n+1)`
-/

namespace A083919.P15412922098988319491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (n + 1) - A364046 (n + 1)

end

end A083919.P15412922098988319491

namespace A083919

/-- `A083914(n+1)-A364046(n+1)` -/
def P15412922098988319491.Spec : Prop :=
  ∀ n, P15412922098988319491.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P14650231832584369645

`∑{d}[A000265(n+1), A079998(#+1)]`
-/

namespace A083919.P14650231832584369645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A079998 (d + 1)

end

end A083919.P14650231832584369645

namespace A083919

/-- `∑{d}[A000265(n+1), A079998(#+1)]` -/
def P14650231832584369645.Spec : Prop :=
  ∀ n, P14650231832584369645.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P12843843116381323743

`A083918((n+1)/2^val(n+1, 2)+(n+1)/2^val(n+1, 2))`
-/

namespace A083919.P12843843116381323743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083919.P12843843116381323743

namespace A083919

/-- `A083918((n+1)/2^val(n+1, 2)+(n+1)/2^val(n+1, 2))` -/
def P12843843116381323743.Spec : Prop :=
  ∀ n, P12843843116381323743.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P16119606748145832980

`A001899(2*(n+1))-A001877(n+1)`
-/

namespace A083919.P16119606748145832980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (2 * (n + 1)) - A001877 (n + 1)

end

end A083919.P16119606748145832980

namespace A083919

/-- `A001899(2*(n+1))-A001877(n+1)` -/
def P16119606748145832980.Spec : Prop :=
  ∀ n, P16119606748145832980.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P16086238064579742495

`A083918(2*(n+1))-A083914(n+1)`
-/

namespace A083919.P16086238064579742495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083918 (2 * (n + 1)) - A083914 (n + 1)

end

end A083919.P16086238064579742495

namespace A083919

/-- `A083918(2*(n+1))-A083914(n+1)` -/
def P16086238064579742495.Spec : Prop :=
  ∀ n, P16086238064579742495.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P13379646157273952382

`A001877(n+1)-A364046(2*(n+1))`
-/

namespace A083919.P13379646157273952382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (n + 1) - A364046 (2 * (n + 1))

end

end A083919.P13379646157273952382

namespace A083919

/-- `A001877(n+1)-A364046(2*(n+1))` -/
def P13379646157273952382.Spec : Prop :=
  ∀ n, P13379646157273952382.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P4506288490282014495

`A083896(n+1)`
-/

namespace A083919.P4506288490282014495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (n + 1)

end

end A083919.P4506288490282014495

namespace A083919

/-- `A083896(n+1)` -/
def P4506288490282014495.Spec : Prop :=
  ∀ n, P4506288490282014495.a n = A083919 (n + 1)

end A083919

/-!
# A083920: Number of nontriangular numbers <= n.

The programs for A083920, the canonical program `A083920.P13248752610546876947` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083920 has offset 0).

The definition of A083920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083920.P13248752610546876947

`n-floor(sqrt(2*n+1)-1/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083920

/-- `n-floor(sqrt(2*n+1)-1/2)` -/
def P13248752610546876947.Spec : Prop :=
  ∀ n, P13248752610546876947.a n = A083920 n

theorem P13248752610546876947.correct : P13248752610546876947.Spec := by
  intro n
  simp only [A083920]

end A083920

/-! ## A083920.P4748228435728407743

`fp[comp[∑[n]]]`
-/

namespace A083920.P4748228435728407743
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0

end

end A083920.P4748228435728407743

namespace A083920

/-- `fp[comp[∑[n]]]` -/
def P4748228435728407743.Spec : Prop :=
  ∀ n, (P4748228435728407743.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P17496132355441216429

`n-row(n)`
-/

namespace A083920.P17496132355441216429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.triRow n : ℤ)

end

end A083920.P17496132355441216429

namespace A083920

/-- `n-row(n)` -/
def P17496132355441216429.Spec : Prop :=
  ∀ n, P17496132355441216429.a n = A083920 n

end A083920

/-! ## A083920.P3947591044186172518

`∑[xor(1, char[∑[n]])]`
-/

namespace A083920.P3947591044186172518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P3947591044186172518

namespace A083920

/-- `∑[xor(1, char[∑[n]])]` -/
def P3947591044186172518.Spec : Prop :=
  ∀ n, (P3947591044186172518.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P6321636957983034488

`∑[char[comp[C(n, 2)]]]`
-/

namespace A083920.P6321636957983034488
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P6321636957983034488

namespace A083920

/-- `∑[char[comp[C(n, 2)]]]` -/
def P6321636957983034488.Spec : Prop :=
  ∀ n, (P6321636957983034488.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P15540296763796087826

`∑[gcd(col(n), T(n-1,k-1))]` with `a(0)=0`
-/

namespace A083920.P15540296763796087826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.gcd (SequenceMachineLib.triCol n) (SequenceMachineLib.triUpLeft f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P15540296763796087826

namespace A083920

/-- `∑[gcd(col(n), T(n-1,k-1))]` -/
def P15540296763796087826.Spec : Prop :=
  ∀ n, (P15540296763796087826.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P16430585201706963987

`n+1-fp[∑[n]]`
-/

namespace A083920.P16430585201706963987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => n < f1 j) 0 : ℤ)

end

end A083920.P16430585201706963987

namespace A083920

/-- `n+1-fp[∑[n]]` -/
def P16430585201706963987.Spec : Prop :=
  ∀ n, P16430585201706963987.a n = A083920 n

end A083920

/-! ## A083920.P11607375070732907795

`n-(fp[∑[n]]-1)`
-/

namespace A083920.P11607375070732907795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun j => n < f1 j) 0 : ℤ) - 1)

end

end A083920.P11607375070732907795

namespace A083920

/-- `n-(fp[∑[n]]-1)` -/
def P11607375070732907795.Spec : Prop :=
  ∀ n, P11607375070732907795.a n = A083920 n

end A083920

/-! ## A083920.P3668034125002170512

`col(n)+C(row(n), 2)`
-/

namespace A083920.P3668034125002170512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triRow n) 2

end

end A083920.P3668034125002170512

namespace A083920

/-- `col(n)+C(row(n), 2)` -/
def P3668034125002170512.Spec : Prop :=
  ∀ n, (P3668034125002170512.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P16605123433646688230

`∑[1-char[∑[lcm(n, n)]]]`
-/

namespace A083920.P16605123433646688230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P16605123433646688230

namespace A083920

/-- `∑[1-char[∑[lcm(n, n)]]]` -/
def P16605123433646688230.Spec : Prop :=
  ∀ n, P16605123433646688230.a n = A083920 n

end A083920

/-! ## A083920.P15895467084473076009

`∑[char[lt[3*T(n-1,k), 14]]]` with `a(0)=16`
-/

namespace A083920.P15895467084473076009
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f3 =>
  3 * SequenceMachineLib.triUp f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P15895467084473076009

namespace A083920

/-- `∑[char[lt[3*T(n-1,k), 14]]]` -/
def P15895467084473076009.Spec : Prop :=
  ∀ n, (P15895467084473076009.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P16819481661905833641

`(2*(n+1))%comp[∑[n]]`
-/

namespace A083920.P16819481661905833641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A083920.P16819481661905833641

namespace A083920

/-- `(2*(n+1))%comp[∑[n]]` -/
def P16819481661905833641.Spec : Prop :=
  ∀ n, (P16819481661905833641.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P6630418012574689701

`2*(n+1)-comp[C(n, 2)]`
-/

namespace A083920.P6630418012574689701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A083920.P6630418012574689701

namespace A083920

/-- `2*(n+1)-comp[C(n, 2)]` -/
def P6630418012574689701.Spec : Prop :=
  ∀ n, P6630418012574689701.a n = A083920 n

end A083920

/-! ## A083920.P8278644812658485649

`floor((a(a(n-1))+n)/2)` with `a(0)=0`
-/

namespace A083920.P8278644812658485649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (a (n - 1)).toNat + (n : ℤ) : ℚ) / 2⌋

end

end A083920.P8278644812658485649

namespace A083920

/-- `floor((a(a(n-1))+n)/2)` -/
def P8278644812658485649.Spec : Prop :=
  ∀ n, P8278644812658485649.a n = A083920 n

end A083920

/-! ## A083920.P4683552950376541772

`floor(n-(n-a(a(n-1)))/2)` with `a(0)=0`
-/

namespace A083920.P4683552950376541772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) - ((n : ℤ) - a (a (n - 1)).toNat : ℚ) / 2⌋

end

end A083920.P4683552950376541772

namespace A083920

/-- `floor(n-(n-a(a(n-1)))/2)` -/
def P4683552950376541772.Spec : Prop :=
  ∀ n, P4683552950376541772.a n = A083920 n

end A083920

/-! ## A083920.P16677291085899042771

`floor(∪[2*n+1, n²+n]/2)`
-/

namespace A083920.P16677291085899042771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 2⌋

end

end A083920.P16677291085899042771

namespace A083920

/-- `floor(∪[2*n+1, n²+n]/2)` -/
def P16677291085899042771.Spec : Prop :=
  ∀ n, P16677291085899042771.a n = A083920 n

end A083920

/-! ## A083920.P13541877923479883096

`a(a(n-1))+n-(a(n-1)+1)` with `a(0)=0`
-/

namespace A083920.P13541877923479883096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (a (n - 1)).toNat + (n : ℤ) - (a (n - 1) + 1)

end

end A083920.P13541877923479883096

namespace A083920

/-- `a(a(n-1))+n-(a(n-1)+1)` -/
def P13541877923479883096.Spec : Prop :=
  ∀ n, P13541877923479883096.a n = A083920 n

end A083920

/-! ## A083920.P11142717249562180566

`a(a(n-1))-(a(n-1)-n)-1` with `a(0)=0`
-/

namespace A083920.P11142717249562180566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (a (n - 1)).toNat - (a (n - 1) - (n : ℤ)) - 1

end

end A083920.P11142717249562180566

namespace A083920

/-- `a(a(n-1))-(a(n-1)-n)-1` -/
def P11142717249562180566.Spec : Prop :=
  ∀ n, P11142717249562180566.a n = A083920 n

end A083920

/-! ## A083920.P12513829533945073503

`∑[log2(A238303(n))]`
-/

namespace A083920.P12513829533945073503
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A238303 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P12513829533945073503

namespace A083920

/-- `∑[log2(A238303(n))]` -/
def P12513829533945073503.Spec : Prop :=
  ∀ n, P12513829533945073503.a n = (A083920 n : ℝ)

end A083920

/-! ## A083920.P14228417439693345259

`∑[1-A010054(n)]`
-/

namespace A083920.P14228417439693345259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P14228417439693345259

namespace A083920

/-- `∑[1-A010054(n)]` -/
def P14228417439693345259.Spec : Prop :=
  ∀ n, P14228417439693345259.a n = A083920 n

end A083920

/-!
# A083921: Start with (1,2) and then concatenate 2^n+1 previous terms, n>=0 and add 2 if a(2^n+1)=1 or add 1 if a(2^n+1)=2.

The programs for A083921, the canonical program `A083921.P13464134972850750362` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083921 has offset 1).

The definition of A083921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083921.P13464134972850750362

`gcd(2, A082691(1+n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083921

/-- `gcd(2, A082691(1+n))` -/
def P13464134972850750362.Spec : Prop :=
  ∀ n, (P13464134972850750362.a n : ℤ) = A083921 (n + 1)

theorem P13464134972850750362.correct : P13464134972850750362.Spec := by
  intro n
  simp only [A083921, Nat.add_sub_cancel]

end A083921

/-! ## A083921.P9795936498999768687

`(1+A082691(n+1))%2+1`
-/

namespace A083921.P9795936498999768687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + A082691 (n + 1)) 2 + 1

end

end A083921.P9795936498999768687

namespace A083921

/-- `(1+A082691(n+1))%2+1` -/
def P9795936498999768687.Spec : Prop :=
  ∀ n, P9795936498999768687.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P10084513325683272152

`gcd(a(n-1)+1, A308186(n+1))` with `a(0)=1`
-/

namespace A083921.P10084513325683272152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A308186 (n + 1))

end

end A083921.P10084513325683272152

namespace A083921

/-- `gcd(a(n-1)+1, A308186(n+1))` -/
def P10084513325683272152.Spec : Prop :=
  ∀ n, (P10084513325683272152.a n : ℤ) = A083921 (n + 1)

end A083921

/-! ## A083921.P14973149107403182844

`and(a(n-1), A308185(n+1))+1` with `a(0)=1`
-/

namespace A083921.P14973149107403182844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1)) (A308185 (n + 1)) + 1

end

end A083921.P14973149107403182844

namespace A083921

/-- `and(a(n-1), A308185(n+1))+1` -/
def P14973149107403182844.Spec : Prop :=
  ∀ n, P14973149107403182844.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P14904426112909297497

`A308186(abs(or(n+1, 1-a(n-1))))` with `a(0)=1`
-/

namespace A083921.P14904426112909297497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A308186 |Int.lor (n + 1 : ℤ) (1 - a (n - 1))|.toNat

end

end A083921.P14904426112909297497

namespace A083921

/-- `A308186(abs(or(n+1, 1-a(n-1))))` -/
def P14904426112909297497.Spec : Prop :=
  ∀ n, P14904426112909297497.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P17969064173058443348

`A022927(A082691(n+1))`
-/

namespace A083921.P17969064173058443348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 (A082691 (n + 1)).toNat

end

end A083921.P17969064173058443348

namespace A083921

/-- `A022927(A082691(n+1))` -/
def P17969064173058443348.Spec : Prop :=
  ∀ n, P17969064173058443348.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P5191424575295876163

`A134451(A082691(n+1)²)`
-/

namespace A083921.P5191424575295876163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A082691 (n + 1) ^ 2).toNat

end

end A083921.P5191424575295876163

namespace A083921

/-- `A134451(A082691(n+1)²)` -/
def P5191424575295876163.Spec : Prop :=
  ∀ n, P5191424575295876163.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P4916599202045360642

`A000034(A082691(n+1)+1)`
-/

namespace A083921.P4916599202045360642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A082691 (n + 1) + 1).toNat

end

end A083921.P4916599202045360642

namespace A083921

/-- `A000034(A082691(n+1)+1)` -/
def P4916599202045360642.Spec : Prop :=
  ∀ n, P4916599202045360642.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P7100320676295045413

`A084642(A082691(n+1)+1)`
-/

namespace A083921.P7100320676295045413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (A082691 (n + 1) + 1).toNat

end

end A083921.P7100320676295045413

namespace A083921

/-- `A084642(A082691(n+1)+1)` -/
def P7100320676295045413.Spec : Prop :=
  ∀ n, P7100320676295045413.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P8312893798700771177

`A001511(A082691(n+1)²+2)`
-/

namespace A083921.P8312893798700771177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A082691 (n + 1) ^ 2 + 2).toNat

end

end A083921.P8312893798700771177

namespace A083921

/-- `A001511(A082691(n+1)²+2)` -/
def P8312893798700771177.Spec : Prop :=
  ∀ n, P8312893798700771177.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P13600542395340240814

`A040001(A082691(n+1)+2*n)`
-/

namespace A083921.P13600542395340240814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A082691 (n + 1) + (2 * n : ℤ)).toNat

end

end A083921.P13600542395340240814

namespace A083921

/-- `A040001(A082691(n+1)+2*n)` -/
def P13600542395340240814.Spec : Prop :=
  ∀ n, P13600542395340240814.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P17839462865896658103

`gcd(A000040(a(n-1)), A308186(n+1))` with `a(0)=1`
-/

namespace A083921.P17839462865896658103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A000040 (a (n - 1))) (A308186 (n + 1))

end

end A083921.P17839462865896658103

namespace A083921

/-- `gcd(A000040(a(n-1)), A308186(n+1))` -/
def P17839462865896658103.Spec : Prop :=
  ∀ n, (P17839462865896658103.a n : ℤ) = A083921 (n + 1)

end A083921

/-! ## A083921.P5713253825595984575

`A007318((a(n-1)+1)*A308186(n+1))` with `a(0)=1`
-/

namespace A083921.P5713253825595984575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 ((a (n - 1) + 1) * A308186 (n + 1)).toNat

end

end A083921.P5713253825595984575

namespace A083921

/-- `A007318((a(n-1)+1)*A308186(n+1))` -/
def P5713253825595984575.Spec : Prop :=
  ∀ n, P5713253825595984575.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P4721894515330986236

`a(a(n-1)*A288932(n+2))` with `a(0)=1, a(1)=2`
-/

namespace A083921.P4721894515330986236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ((a (n - 1) : ℤ) * A288932 (n + 2)).toNat

end

end A083921.P4721894515330986236

namespace A083921

/-- `a(a(n-1)*A288932(n+2))` -/
def P4721894515330986236.Spec : Prop :=
  ∀ n, (P4721894515330986236.a n : ℤ) = A083921 (n + 1)

end A083921

/-! ## A083921.P6799433512272462347

`runs[fp[A083922(n+1)]]`
-/

namespace A083921.P6799433512272462347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083922 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A083921.P6799433512272462347

namespace A083921

/-- `runs[fp[A083922(n+1)]]` -/
def P6799433512272462347.Spec : Prop :=
  ∀ n, (P6799433512272462347.a n : ℤ) = A083921 (n + 1)

end A083921

/-!
# A083922: Partial sums of A083921.

The programs for A083922, the canonical program `A083922.P14895508839936074918` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083922 has offset 1).

The definition of A083922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083922.P14895508839936074918

`∑[A083921(1+n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083922

/-- `∑[A083921(1+n)]` -/
def P14895508839936074918.Spec : Prop :=
  ∀ n, P14895508839936074918.a n = A083922 (n + 1)

theorem P14895508839936074918.correct : P14895508839936074918.Spec := by
  intro n
  simp only [A083922, Nat.add_sub_cancel]

end A083922

/-! ## A083922.P14479697425985815144

`∑[gcd(2, A082691(1+n))]`
-/

namespace A083922.P14479697425985815144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A082691 (1 + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P14479697425985815144

namespace A083922

/-- `∑[gcd(2, A082691(1+n))]` -/
def P14479697425985815144.Spec : Prop :=
  ∀ n, (P14479697425985815144.a n : ℤ) = A083922 (n + 1)

end A083922

/-! ## A083922.P3181460600363738205

`∑[gcd(a(n-1)+1, A308186(n+1))]` with `a(0)=1`
-/

namespace A083922.P3181460600363738205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd (f1 (n - 1) + 1 : ℤ) (A308186 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P3181460600363738205

namespace A083922

/-- `∑[gcd(a(n-1)+1, A308186(n+1))]` -/
def P3181460600363738205.Spec : Prop :=
  ∀ n, (P3181460600363738205.a n : ℤ) = A083922 (n + 1)

end A083922

/-! ## A083922.P5562366440924315423

`∑[and(a(n-1), A308185(n+1))+1]` with `a(0)=1`
-/

namespace A083922.P5562366440924315423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (f1 (n - 1)) (A308185 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P5562366440924315423

namespace A083922

/-- `∑[and(a(n-1), A308185(n+1))+1]` -/
def P5562366440924315423.Spec : Prop :=
  ∀ n, P5562366440924315423.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P16415146423080563969

`∑[A022927(A082691(n+1))]`
-/

namespace A083922.P16415146423080563969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 (A082691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P16415146423080563969

namespace A083922

/-- `∑[A022927(A082691(n+1))]` -/
def P16415146423080563969.Spec : Prop :=
  ∀ n, P16415146423080563969.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P16904904230468535963

`∑[A000034(A082691(n+1)+1)]`
-/

namespace A083922.P16904904230468535963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A082691 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P16904904230468535963

namespace A083922

/-- `∑[A000034(A082691(n+1)+1)]` -/
def P16904904230468535963.Spec : Prop :=
  ∀ n, P16904904230468535963.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P3141672774624056348

`∑[A084642(A082691(n+1)+1)]`
-/

namespace A083922.P3141672774624056348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (A082691 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P3141672774624056348

namespace A083922

/-- `∑[A084642(A082691(n+1)+1)]` -/
def P3141672774624056348.Spec : Prop :=
  ∀ n, P3141672774624056348.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P185465371853441103

`∑[A134451(A082691(n+1)+2*n)]`
-/

namespace A083922.P185465371853441103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A082691 (n + 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P185465371853441103

namespace A083922

/-- `∑[A134451(A082691(n+1)+2*n)]` -/
def P185465371853441103.Spec : Prop :=
  ∀ n, P185465371853441103.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P8085827729425444598

`∑[A134451(A082691(n+1)+n+n)]`
-/

namespace A083922.P8085827729425444598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A082691 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P8085827729425444598

namespace A083922

/-- `∑[A134451(A082691(n+1)+n+n)]` -/
def P8085827729425444598.Spec : Prop :=
  ∀ n, P8085827729425444598.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P1098001082068220569

`∑[(A082691(n+1)+A004768(n))%2+1]`
-/

namespace A083922.P1098001082068220569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082691 (n + 1) + A004768 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P1098001082068220569

namespace A083922

/-- `∑[(A082691(n+1)+A004768(n))%2+1]` -/
def P1098001082068220569.Spec : Prop :=
  ∀ n, P1098001082068220569.a n = A083922 (n + 1)

end A083922

/-! ## A083922.P18348656761225593881

`∑[a(a(n-1)*A288932(n+2))%3]` with `a(0)=1, a(1)=2`
-/

namespace A083922.P18348656761225593881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 ((f1 (n - 1) : ℤ) * A288932 (n + 2)).toNat % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P18348656761225593881

namespace A083922

/-- `∑[a(a(n-1)*A288932(n+2))%3]` -/
def P18348656761225593881.Spec : Prop :=
  ∀ n, (P18348656761225593881.a n : ℤ) = A083922 (n + 1)

end A083922

/-!
# A083923: Characteristic function for A057548.

The programs for A083923, there is no canonical definition to state claims against.
-/

/-! ## A083923.P10581202831099669493

`char[A057548(n)]`
-/

namespace A083923.P10581202831099669493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P10581202831099669493

/-! ## A083923.P11496705852346772918

`dr(A057122(n)%20)`
-/

namespace A083923.P11496705852346772918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A057122 n) 20)

end

end A083923.P11496705852346772918

/-! ## A083923.P6663917998725953038

`col(C(2, A057515(n)))`
-/

namespace A083923.P6663917998725953038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.choose 2 (A057515 n).toNat)

end

end A083923.P6663917998725953038

/-! ## A083923.P1195931359498143701

`char[record[A057161(n+1)]]`
-/

namespace A083923.P1195931359498143701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P1195931359498143701

/-! ## A083923.P7809139389961478106

`char[record[A057501(n+1)]]`
-/

namespace A083923.P7809139389961478106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P7809139389961478106

/-! ## A083923.P15844001731652677570

`char[record[A057502(n+1)]]`
-/

namespace A083923.P15844001731652677570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P15844001731652677570

/-! ## A083923.P14945177079027468294

`char[record[A057504(n+1)]]`
-/

namespace A083923.P14945177079027468294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P14945177079027468294

/-! ## A083923.P7663420612265880226

`char[record[A069767(n+1)]]`
-/

namespace A083923.P7663420612265880226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P7663420612265880226

/-! ## A083923.P2395583554033863300

`char[record[A069770(n+1)]]`
-/

namespace A083923.P2395583554033863300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P2395583554033863300

/-! ## A083923.P2372898755682741305

`char[record[A069774(n+1)]]`
-/

namespace A083923.P2372898755682741305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P2372898755682741305

/-! ## A083923.P494153921013594528

`char[record[A071655(n+1)]]`
-/

namespace A083923.P494153921013594528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071655 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P494153921013594528

/-! ## A083923.P11722235585224066020

`char[record[A071657(n+1)]]`
-/

namespace A083923.P11722235585224066020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P11722235585224066020

/-! ## A083923.P12194849529898862557

`char[record[A071659(n+1)]]`
-/

namespace A083923.P12194849529898862557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071659 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P12194849529898862557

/-! ## A083923.P11428122123987704958

`char[record[A072090(n+1)]]`
-/

namespace A083923.P11428122123987704958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072090 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P11428122123987704958

/-! ## A083923.P5833964438487343394

`char[record[A072092(n+1)]]`
-/

namespace A083923.P5833964438487343394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P5833964438487343394

/-! ## A083923.P2634660528202787536

`char[record[A072094(n+1)]]`
-/

namespace A083923.P2634660528202787536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P2634660528202787536

/-! ## A083923.P12898525722048320849

`char[record[A072095(n+1)]]`
-/

namespace A083923.P12898525722048320849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072095 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P12898525722048320849

/-! ## A083923.P14504237701885191104

`char[record[A073269(n+1)]]`
-/

namespace A083923.P14504237701885191104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073269 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P14504237701885191104

/-! ## A083923.P10586514882763291310

`char[record[A073270(n+1)]]`
-/

namespace A083923.P10586514882763291310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083923.P10586514882763291310

/-! ## A083923.P8828658014423758684

`∑{d}[A057515(n), A008683(#)]`
-/

namespace A083923.P8828658014423758684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A083923.P8828658014423758684

/-!
# A083924: Characteristic function for A072795.

The programs for A083924, the canonical program `A083924.P11615432141212161959` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083924 has offset 0).

The definition of A083924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083924.P11615432141212161959

`char[A072795(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083924

/-- `char[A072795(n)]` -/
def P11615432141212161959.Spec : Prop :=
  ∀ n, (P11615432141212161959.a n : ℤ) = A083924 n

theorem P11615432141212161959.correct : P11615432141212161959.Spec := by
  intro n
  simp only [A083924]

end A083924

/-! ## A083924.P7777045318219545319

`char[comp[A081291(n)]]`
-/

namespace A083924.P7777045318219545319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081291 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A083924.P7777045318219545319

namespace A083924

/-- `char[comp[A081291(n)]]` -/
def P7777045318219545319.Spec : Prop :=
  ∀ n, (P7777045318219545319.a n : ℤ) = A083924 n

end A083924

/-! ## A083924.P16057796045076806609

`(A072800(n)%4)%3`
-/

namespace A083924.P16057796045076806609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A072800 n) 4) 3

end

end A083924.P16057796045076806609

namespace A083924

/-- `(A072800(n)%4)%3` -/
def P16057796045076806609.Spec : Prop :=
  ∀ n, P16057796045076806609.a n = A083924 n

end A083924

/-! ## A083924.P828034301987565533

`1-a(floor((n-1)/A057501(n)))` with `a(0)=0, a(1)=1`
-/

namespace A083924.P828034301987565533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - a ⌊((n : ℤ) - 1 : ℚ) / (A057501 n : ℚ)⌋.toNat

end

end A083924.P828034301987565533

namespace A083924

/-- `1-a(floor((n-1)/A057501(n)))` -/
def P828034301987565533.Spec : Prop :=
  ∀ n, P828034301987565533.a n = A083924 n

end A083924

/-! ## A083924.P17948141789005482847

`char[fp[A085167(n)]]`
-/

namespace A083924.P17948141789005482847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085167 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A083924.P17948141789005482847

namespace A083924

/-- `char[fp[A085167(n)]]` -/
def P17948141789005482847.Spec : Prop :=
  ∀ n, (P17948141789005482847.a n : ℤ) = A083924 n

end A083924

/-! ## A083924.P8632362239356893624

`char[A080067(n)]`
-/

namespace A083924.P8632362239356893624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083924.P8632362239356893624

namespace A083924

/-- `char[A080067(n)]` -/
def P8632362239356893624.Spec : Prop :=
  ∀ n, (P8632362239356893624.a n : ℤ) = A083924 n

end A083924

/-! ## A083924.P10436894169021880930

`A083923(A057161(n))`
-/

namespace A083924.P10436894169021880930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A057161 n).toNat

end

end A083924.P10436894169021880930

namespace A083924

/-- `A083923(A057161(n))` -/
def P10436894169021880930.Spec : Prop :=
  ∀ n, P10436894169021880930.a n = A083924 n

end A083924

/-! ## A083924.P12518115121216073663

`A010051(A395051(n))`
-/

namespace A083924.P12518115121216073663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A395051 n).toNat

end

end A083924.P12518115121216073663

namespace A083924

/-- `A010051(A395051(n))` -/
def P12518115121216073663.Spec : Prop :=
  ∀ n, P12518115121216073663.a n = A083924 n

end A083924

/-! ## A083924.P12939476254103938317

`A244215(A057549(n))`
-/

namespace A083924.P12939476254103938317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 (A057549 n).toNat

end

end A083924.P12939476254103938317

namespace A083924

/-- `A244215(A057549(n))` -/
def P12939476254103938317.Spec : Prop :=
  ∀ n, P12939476254103938317.a n = A083924 n

end A083924

/-! ## A083924.P9427709704203260342

`A085199(A080300(A085191(A057164(n))))`
-/

namespace A083924.P9427709704203260342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 (A080300 (A085191 (A057164 n).toNat).toNat).toNat

end

end A083924.P9427709704203260342

namespace A083924

/-- `A085199(A080300(A085191(A057164(n))))` -/
def P9427709704203260342.Spec : Prop :=
  ∀ n, P9427709704203260342.a n = A083924 n

end A083924

/-! ## A083924.P17416408057441014065

`A003815(A072800(n))`
-/

namespace A083924.P17416408057441014065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A072800 n).toNat

end

end A083924.P17416408057441014065

namespace A083924

/-- `A003815(A072800(n))` -/
def P17416408057441014065.Spec : Prop :=
  ∀ n, P17416408057441014065.a n = A083924 n

end A083924

/-! ## A083924.P11547643961869787845

`A265333(A059985(n))`
-/

namespace A083924.P11547643961869787845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 (A059985 n).toNat

end

end A083924.P11547643961869787845

namespace A083924

/-- `A265333(A059985(n))` -/
def P11547643961869787845.Spec : Prop :=
  ∀ n, P11547643961869787845.a n = A083924 n

end A083924

/-! ## A083924.P8745025854019703313

`char[A072764(∑[n+1])]`
-/

namespace A083924.P8745025854019703313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A083924.P8745025854019703313

namespace A083924

/-- `char[A072764(∑[n+1])]` -/
def P8745025854019703313.Spec : Prop :=
  ∀ n, (P8745025854019703313.a n : ℤ) = A083924 n

end A083924

/-! ## A083924.P10355382329239267643

`A131719(A071155(n))`
-/

namespace A083924.P10355382329239267643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (A071155 n).toNat

end

end A083924.P10355382329239267643

namespace A083924

/-- `A131719(A071155(n))` -/
def P10355382329239267643.Spec : Prop :=
  ∀ n, P10355382329239267643.a n = A083924 n

end A083924

/-!
# A083925: Inverse function of N -> N injection A057548.

The programs for A083925, there is no canonical definition to state claims against.
-/

/-! ## A083925.P13389863541883618188

`(∑[A083923(n)]-1)*A083923(n)`
-/

namespace A083925.P13389863541883618188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 1) * A083923 n

end

end A083925.P13389863541883618188

/-! ## A083925.P8504818630536381801

`A083926(A057162(n*A083923(n)))`
-/

namespace A083925.P8504818630536381801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A057162 ((n : ℤ) * A083923 n).toNat).toNat

end

end A083925.P8504818630536381801

/-! ## A083925.P16385710805167831696

`A083926(A057162(n))`
-/

namespace A083925.P16385710805167831696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A057162 n).toNat

end

end A083925.P16385710805167831696

/-! ## A083925.P1477500767191271010

`A057163(A083926(A057163(n)))`
-/

namespace A083925.P1477500767191271010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A083926 (A057163 n).toNat).toNat

end

end A083925.P1477500767191271010

/-!
# A083926: Inverse function of N -> N injection A072795.

The programs for A083926, there is no canonical definition to state claims against.
-/

/-! ## A083926.P12537244757183706829

`A083925(A057161(n))`
-/

namespace A083926.P12537244757183706829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A057161 n).toNat

end

end A083926.P12537244757183706829

/-! ## A083926.P408615212455635212

`A057163(A083925(A057163(n)))`
-/

namespace A083926.P408615212455635212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A083925 (A057163 n).toNat).toNat

end

end A083926.P408615212455635212

/-! ## A083926.P4076058966880253837

`A071662(A057505(A083925(A057505(n))))`
-/

namespace A083926.P4076058966880253837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071662 (A057505 (A083925 (A057505 n).toNat).toNat).toNat

end

end A083926.P4076058966880253837

/-!
# A083927: Inverse function of N -> N injection A057123.

The programs for A083927, there is no canonical definition to state claims against.
-/

/-! ## A083927.P4997279003458111283

`A083935(A074683(n))`
-/

namespace A083927.P4997279003458111283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 (A074683 n).toNat

end

end A083927.P4997279003458111283

/-! ## A083927.P16657755941388950934

`A083929(A057548(n))`
-/

namespace A083927.P16657755941388950934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A057548 n).toNat

end

end A083927.P16657755941388950934

/-! ## A083927.P4641852011423165569

`char[A358783(n+2)]*A335449(n+2)`
-/

namespace A083927.P4641852011423165569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358783 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A335449 (n + 2)

end

end A083927.P4641852011423165569

/-! ## A083927.P12532898069329641216

`and(A136665(n+1), A324642(n+1))`
-/

namespace A083927.P12532898069329641216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136665 (n + 1)) (A324642 (n + 1))

end

end A083927.P12532898069329641216

/-! ## A083927.P16213095776155134595

`A383470(n+1)%A066743(n+1)`
-/

namespace A083927.P16213095776155134595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383470 (n + 1)) (A066743 (n + 1))

end

end A083927.P16213095776155134595

/-!
# A083928: Inverse function of N -> N injection A080298.

The programs for A083928, there is no canonical definition to state claims against.
-/

/-! ## A083928.P3969493281620711471

`floor(sqrt(n*char[A080298(n)]/5))`
-/

namespace A083928.P3969493281620711471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℚ) / 5 : ℝ)⌋

end

end A083928.P3969493281620711471

/-! ## A083928.P12295901051477678788

`ceil(n*char[A080298(n+1)]/24)`
-/

namespace A083928.P12295901051477678788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080298 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℚ) / 24⌉

end

end A083928.P12295901051477678788

/-! ## A083928.P18153185460335868323

`∑{e}[1-n*char[A080298(floor(n/3))], #]`
-/

namespace A083928.P18153185460335868323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080298 ⌊(n : ℚ) / 3⌋.toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A083928.P18153185460335868323

/-! ## A083928.P13059666861092143156

`A083929(A069787(n))`
-/

namespace A083928.P13059666861092143156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A069787 n).toNat

end

end A083928.P13059666861092143156

/-! ## A083928.P1573308380604084779

`char[A080298(n)]*A008618(n)`
-/

namespace A083928.P1573308380604084779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008618 n

end

end A083928.P1573308380604084779

/-! ## A083928.P17119803320886396968

`A126309(n*char[A080298(n)])`
-/

namespace A083928.P17119803320886396968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126309 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A083928.P17119803320886396968

/-! ## A083928.P16499367872856926969

`A213911(n*char[A080298(n)])`
-/

namespace A083928.P16499367872856926969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A083928.P16499367872856926969

/-! ## A083928.P10767385371837369614

`A057163(A083929(A057506(n)))`
-/

namespace A083928.P10767385371837369614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A083929 (A057506 n).toNat).toNat

end

end A083928.P10767385371837369614

/-! ## A083928.P8721487039250916898

`A057505(A083929(A071661(n)))`
-/

namespace A083928.P8721487039250916898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A083929 (A071661 n).toNat).toNat

end

end A083928.P8721487039250916898

/-! ## A083928.P17719720018523038783

`A057506(A083929(A071666(n)))`
-/

namespace A083928.P17719720018523038783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A083929 (A071666 n).toNat).toNat

end

end A083928.P17719720018523038783

/-!
# A083929: Inverse function of N -> N injection A083930.

The programs for A083929, there is no canonical definition to state claims against.
-/

/-! ## A083929.P7014947652378945094

`A083927(A083925(n))`
-/

namespace A083929.P7014947652378945094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A083925 n).toNat

end

end A083929.P7014947652378945094

/-! ## A083929.P7766308111948397807

`A083926(A083927(A072795(n)))`
-/

namespace A083929.P7766308111948397807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A083927 (A072795 n).toNat).toNat

end

end A083929.P7766308111948397807

/-! ## A083929.P3190571720070169958

`A083928(A130988(n))`
-/

namespace A083929.P3190571720070169958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A130988 n).toNat

end

end A083929.P3190571720070169958

/-! ## A083929.P11475327385047241166

`A083928(A069787(n))`
-/

namespace A083929.P11475327385047241166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A069787 n).toNat

end

end A083929.P11475327385047241166

/-!
# A083930: Map from binary trees of size n to the set of corresponding trivalent plane trees (tpt) represented as size 2n+1 general trees.

The programs for A083930, there is no canonical definition to state claims against.
-/

/-! ## A083930.P14884002604907915596

`A057548(A057123(n))-floor(acot(n))`
-/

namespace A083930.P14884002604907915596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A057123 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A083930.P14884002604907915596

/-! ## A083930.P9025367504550919477

`A057548(A057123(n))-A000007(n)`
-/

namespace A083930.P9025367504550919477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A057123 n).toNat - A000007 n

end

end A083930.P9025367504550919477

/-! ## A083930.P9737751926208173583

`A057427(n)*A057548(A057123(n))`
-/

namespace A083930.P9737751926208173583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A057548 (A057123 n).toNat

end

end A083930.P9737751926208173583

/-! ## A083930.P7071063690010014637

`A057548(A057123(n))*A178334(n)`
-/

namespace A083930.P7071063690010014637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057548 (A057123 n).toNat * A178334 n

end

end A083930.P7071063690010014637

/-! ## A083930.P15687146043086836587

`A057548(A057123(n))%A100430(n)`
-/

namespace A083930.P15687146043086836587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057548 (A057123 n).toNat) (A100430 n)

end

end A083930.P15687146043086836587

/-!
# A083931: a(n) = A000695(A014486(n)).

The programs for A083931, there is no canonical definition to state claims against.
-/

/-! ## A083931.P14778417177703954351

`A000695(A014486(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083931.P14778417177703954351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A014486 n).toNat

end

end A083931.P14778417177703954351

/-! ## A083931.P17246323261356828043

`A083932(n)/3`
-/

namespace A083931.P17246323261356828043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083932 n : ℚ) / 3

end

end A083931.P17246323261356828043

/-! ## A083931.P11567397172888718475

`2*A062880(A057520(n))`
-/

namespace A083931.P11567397172888718475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062880 (A057520 n).toNat

end

end A083931.P11567397172888718475

/-! ## A083931.P10251108324337129158

`2*A062880(A014486(n)/2)`
-/

namespace A083931.P10251108324337129158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062880 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A083931.P10251108324337129158

/-! ## A083931.P5224443089527465356

`A098871(A014486(n)+1)-2`
-/

namespace A083931.P5224443089527465356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (A014486 n + 1).toNat - 2

end

end A083931.P5224443089527465356

/-! ## A083931.P3416437055721835320

`A098871(2*A057520(n))-1`
-/

namespace A083931.P3416437055721835320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (2 * A057520 n).toNat - 1

end

end A083931.P3416437055721835320

/-! ## A083931.P9293355228652198185

`A098871(A194045(n)/2)-1`
-/

namespace A083931.P9293355228652198185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat - 1

end

end A083931.P9293355228652198185

/-! ## A083931.P4711041715109741182

`A001196(2*A057520(n))/3`
-/

namespace A083931.P4711041715109741182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 (2 * A057520 n).toNat : ℚ) / 3

end

end A083931.P4711041715109741182

/-! ## A083931.P7177114503550623988

`A001196(A194045(n)/2)/3`
-/

namespace A083931.P7177114503550623988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001196 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat : ℚ) / 3

end

end A083931.P7177114503550623988

/-! ## A083931.P11251715439486100296

`A062880(A014486(n))/A040000(n)`
-/

namespace A083931.P11251715439486100296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062880 (A014486 n).toNat : ℚ) / (A040000 n : ℚ)

end

end A083931.P11251715439486100296

/-! ## A083931.P5648545029992244076

`and(A083932(n), A088556(n+1))`
-/

namespace A083931.P5648545029992244076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083932 n) (A088556 (n + 1))

end

end A083931.P5648545029992244076

/-!
# A083932: A014486-encoding of the Catalan mountain ranges with only even-length slopes allowed.

The programs for A083932, there is no canonical definition to state claims against.
-/

/-! ## A083932.P12883740122633807704

`3*A083931(n)`
-/

namespace A083932.P12883740122633807704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083931 n

end

end A083932.P12883740122633807704

/-! ## A083932.P16677564508379700973

`A008585(A083931(n))`
-/

namespace A083932.P16677564508379700973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A083931 n).toNat

end

end A083932.P16677564508379700973

/-! ## A083932.P2951687992001588926

`6*A062880(A057520(n))`
-/

namespace A083932.P2951687992001588926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A062880 (A057520 n).toNat

end

end A083932.P2951687992001588926

/-! ## A083932.P13658977575137083381

`A001196(A014486(n))`
-/

namespace A083932.P13658977575137083381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (A014486 n).toNat

end

end A083932.P13658977575137083381

/-! ## A083932.P7425461587948931411

`A332206(A194045(n))`
-/

namespace A083932.P7425461587948931411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 (A194045 n).toNat

end

end A083932.P7425461587948931411

/-! ## A083932.P17922538027518452331

`3*A000695(A194045(n)/2)`
-/

namespace A083932.P17922538027518452331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A083932.P17922538027518452331

/-! ## A083932.P9952583569770645452

`3*A000695(∑[A085192(n)]-A085192(n))`
-/

namespace A083932.P9952583569770645452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 (∑ j ∈ Finset.range (n + 1), f1 j - A085192 n).toNat

end

end A083932.P9952583569770645452

/-! ## A083932.P10333015503887637668

`A014486(A083934(n))`
-/

namespace A083932.P10333015503887637668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A083934 n).toNat

end

end A083932.P10333015503887637668

/-!
# A083933: A063171-encoding of A083923-trees.

The programs for A083933, there is no canonical definition to state claims against.
-/

/-! ## A083933.P6333407856059038142

`A007088(A083932(n))`
-/

namespace A083933.P6333407856059038142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A083932 n).toNat

end

end A083933.P6333407856059038142

/-! ## A083933.P8087044109327554906

`11*A063010(A014486(n))`
-/

namespace A083933.P8087044109327554906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A063010 (A014486 n).toNat

end

end A083933.P8087044109327554906

/-! ## A083933.P15615403480876725233

`A063171(A083934(n))`
-/

namespace A083933.P15615403480876725233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A083934 n).toNat

end

end A083933.P15615403480876725233

/-! ## A083933.P10341670763668227543

`11*A007088(A083931(n))`
-/

namespace A083933.P10341670763668227543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A007088 (A083931 n).toNat

end

end A083933.P10341670763668227543

/-! ## A083933.P6532139857577744973

`A080317(A082356(n))`
-/

namespace A083933.P6532139857577744973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080317 (A082356 n).toNat

end

end A083933.P6532139857577744973

/-!
# A083934: A014486-indices of A083932-trees.

The programs for A083934, there is no canonical definition to state claims against.
-/

/-! ## A083934.P17204402857246830105

`A080300(A083932(n))`
-/

namespace A083934.P17204402857246830105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A083932 n).toNat

end

end A083934.P17204402857246830105

/-! ## A083934.P15381019658635947926

`A074683(A057123(n))`
-/

namespace A083934.P15381019658635947926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A057123 n).toNat

end

end A083934.P15381019658635947926

/-! ## A083934.P5299083341063531768

`A130922(A057123(A057164(n)))`
-/

namespace A083934.P5299083341063531768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130922 (A057123 (A057164 n).toNat).toNat

end

end A083934.P5299083341063531768

/-! ## A083934.P10572151654799116293

`eq[0, A309952(A014486(n))]`
-/

namespace A083934.P10572151654799116293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A014486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083934.P10572151654799116293

/-!
# A083935: Inverse function of N -> N injection A083934.

The programs for A083935, there is no canonical definition to state claims against.
-/

/-! ## A083935.P3301058099491965126

`A083927(A074684(n))`
-/

namespace A083935.P3301058099491965126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A074684 n).toNat

end

end A083935.P3301058099491965126

/-! ## A083935.P12993905166969091442

`A083929(A085169(A057548(n)))`
-/

namespace A083935.P12993905166969091442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A085169 (A057548 n).toNat).toNat

end

end A083935.P12993905166969091442

/-! ## A083935.P1590839697346427068

`A282355((2*n+1)*char[A083934(n)])`
-/

namespace A083935.P1590839697346427068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083934 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 ((2 * n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A083935.P1590839697346427068

/-! ## A083935.P15080665617857225507

`A083928(A309102(n+1))`
-/

namespace A083935.P15080665617857225507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A309102 (n + 1)).toNat

end

end A083935.P15080665617857225507

/-! ## A083935.P13204237084052865614

`A083928(A250179(n+1))`
-/

namespace A083935.P13204237084052865614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A250179 (n + 1)).toNat

end

end A083935.P13204237084052865614

/-!
# A083936: A014486-encodings of trivalent plane trees (tpt) represented as (embedded into) a subset of general plane trees.

The programs for A083936, there is no canonical definition to state claims against.
-/

/-! ## A083936.P12888079129861498905

`A014486(A083930(n))`
-/

namespace A083936.P12888079129861498905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A083930 n).toNat

end

end A083936.P12888079129861498905

/-! ## A083936.P14395658519490796346

`A057547(A057123(n))-A000038(n)`
-/

namespace A083936.P14395658519490796346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 (A057123 n).toNat - A000038 n

end

end A083936.P14395658519490796346

/-! ## A083936.P8177432418191713874

`A057427(n)*A057547(A057123(n))`
-/

namespace A083936.P8177432418191713874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A057547 (A057123 n).toNat

end

end A083936.P8177432418191713874

/-! ## A083936.P10940556164128476799

`A057547(A057123(n))*A178334(n)`
-/

namespace A083936.P10940556164128476799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 (A057123 n).toNat * A178334 n

end

end A083936.P10940556164128476799

/-! ## A083936.P7052508650082929693

`lcm(A057547(A057123(n)), A193582(n))`
-/

namespace A083936.P7052508650082929693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057547 (A057123 n).toNat) (A193582 n)

end

end A083936.P7052508650082929693

/-!
# A083937: A014486-encodings of the plane binary trees and plane general trees whose left(most) subtree is just a "stick": \.

The programs for A083937, there is no canonical definition to state claims against.
-/

/-! ## A083937.P3235892093745564027

`A014486(A072795(n))`
-/

namespace A083937.P3235892093745564027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A072795 n).toNat

end

end A083937.P3235892093745564027

/-! ## A083937.P331272360141740556

`A057547(n)-A014486(n)`
-/

namespace A083937.P331272360141740556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 n - A014486 n

end

end A083937.P331272360141740556

/-! ## A083937.P11034817675359069177

`A057547(n)-2*A057520(n)`
-/

namespace A083937.P11034817675359069177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 n - 2 * A057520 n

end

end A083937.P11034817675359069177

/-! ## A083937.P5387004074548427088

`A057547(n)-(A085224(n)-2)/4`
-/

namespace A083937.P5387004074548427088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057547 n : ℚ) - (A085224 n - 2 : ℚ) / 4

end

end A083937.P5387004074548427088

/-! ## A083937.P8829873807730767364

`A014486(A057548(n))-A014486(n)`
-/

namespace A083937.P8829873807730767364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057548 n).toNat - A014486 n

end

end A083937.P8829873807730767364

/-! ## A083937.P16151195043409215231

`eq[A080116(n), A090996(n)]`
-/

namespace A083937.P16151195043409215231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083937.P16151195043409215231

/-! ## A083937.P6994383358825863791

`filter[A004754(n+1), A080116(#)]`
-/

namespace A083937.P6994383358825863791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A083937.P6994383358825863791

/-! ## A083937.P1550918292503548417

`filter[A159615(n+1), A080116(#)]`
-/

namespace A083937.P1550918292503548417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A083937.P1550918292503548417

/-! ## A083937.P6807933862315828149

`filter[A171757(n+1), A080116(#)]`
-/

namespace A083937.P6807933862315828149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A083937.P6807933862315828149

/-! ## A083937.P10021288218536565798

`filter[A171781(n+1), A080116(#)]`
-/

namespace A083937.P10021288218536565798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A083937.P10021288218536565798

/-! ## A083937.P12131289332357711388

`filter[A004761(n+2), A080116(#)]`
-/

namespace A083937.P12131289332357711388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A083937.P12131289332357711388

/-! ## A083937.P782584788371429894

`∩[A004754(n+1), A014486(n)]`
-/

namespace A083937.P782584788371429894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083937.P782584788371429894

/-! ## A083937.P14685308372490916823

`∩[A159615(n+1), A014486(n)]`
-/

namespace A083937.P14685308372490916823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083937.P14685308372490916823

/-! ## A083937.P17431480356264346822

`∩[A171757(n+1), A014486(n)]`
-/

namespace A083937.P17431480356264346822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083937.P17431480356264346822

/-! ## A083937.P9758840338393939319

`∩[A171781(n+1), A014486(n)]`
-/

namespace A083937.P9758840338393939319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083937.P9758840338393939319

/-! ## A083937.P8124069380396380074

`filter[A389907(2*(n+1)), A080116(#)]`
-/

namespace A083937.P8124069380396380074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389907 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A083937.P8124069380396380074

/-!
# A083938: A014486-indices of binary trees whose left and right subtree are identical.

The programs for A083938, there is no canonical definition to state claims against.
-/

/-! ## A083938.P8914767330206189249

`A072764(∑[A004275(comp[2*(n+1)])])`
-/

namespace A083938.P8914767330206189249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083938.P8914767330206189249

/-! ## A083938.P868076461189341688

`A072766(A110654(comp[2*(1+n)]²))`
-/

namespace A083938.P868076461189341688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (1 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 (A110654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A083938.P868076461189341688

/-! ## A083938.P2014949108547254709

`eq[n, A069770(n)]`
-/

namespace A083938.P2014949108547254709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083938.P2014949108547254709

/-! ## A083938.P14123292272962522825

`A057502(eq[A057502(n), A057510(n)])`
-/

namespace A083938.P14123292272962522825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A083938.P14123292272962522825

/-! ## A083938.P4340325369901691596

`A131141(A083940(n))`
-/

namespace A083938.P4340325369901691596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (A083940 n).toNat

end

end A083938.P4340325369901691596

/-!
# A083939: A014486-encoding of binary trees whose left and right subtree are identical.

The programs for A083939, there is no canonical definition to state claims against.
-/

/-! ## A083939.P16318704232199299910

`A014486(A083938(n))`
-/

namespace A083939.P16318704232199299910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A083938 n).toNat

end

end A083939.P16318704232199299910

/-! ## A083939.P4149330422056536987

`A040000(n)*A057520(A083938(n))`
-/

namespace A083939.P4149330422056536987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A057520 (A083938 n).toNat

end

end A083939.P4149330422056536987

/-! ## A083939.P9716330679340501019

`A000032(C(2, 2*n+1))*A057520(A083938(n))`
-/

namespace A083939.P9716330679340501019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (2 * n + 1)) * A057520 (A083938 n).toNat

end

end A083939.P9716330679340501019

/-! ## A083939.P17003150132888410945

`A020639(A000010(n+2))*A057520(A083938(n))`
-/

namespace A083939.P17003150132888410945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A057520 (A083938 n).toNat

end

end A083939.P17003150132888410945

/-!
# A083940: A014486-indices of symmetric binary trees.

The programs for A083940, there is no canonical definition to state claims against.
-/

/-! ## A083940.P4518515949585892636

`eq[n, A057163(n)]`
-/

namespace A083940.P4518515949585892636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083940.P4518515949585892636

/-! ## A083940.P8862577535521565573

`eq[n, A057164(A057505(n))]`
-/

namespace A083940.P8862577535521565573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083940.P8862577535521565573

/-! ## A083940.P16439390384175128487

`eq[n, A057506(A057164(n))]`
-/

namespace A083940.P16439390384175128487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083940.P16439390384175128487

/-! ## A083940.P15767177198059779378

`eq[A071651(n), A071653(n)]`
-/

namespace A083940.P15767177198059779378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083940.P15767177198059779378

/-! ## A083940.P635489637686184559

`A131141(A083938(n))`
-/

namespace A083940.P635489637686184559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (A083938 n).toNat

end

end A083940.P635489637686184559

/-!
# A083941: A014486-encoding of symmetric binary trees.

The programs for A083941, there is no canonical definition to state claims against.
-/

/-! ## A083941.P3407715405778450875

`A014486(A083940(n))`
-/

namespace A083941.P3407715405778450875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A083940 n).toNat

end

end A083941.P3407715405778450875

/-! ## A083941.P8475127744532364579

`A040000(n)*A057520(A083940(n))`
-/

namespace A083941.P8475127744532364579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A057520 (A083940 n).toNat

end

end A083941.P8475127744532364579

/-!
# A083942: Positions of breadth-first-wise encodings (A002542) of the complete binary trees (A084107) in A014486.

The programs for A083942, there is no canonical definition to state claims against.
-/

/-! ## A083942.P8255009606203562242

`abs(A099324(2^n))`
-/

namespace A083942.P8255009606203562242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099324 (2 ^ n)|

end

end A083942.P8255009606203562242

/-! ## A083942.P4096123428636607394

`A014138(2^n-1)`
-/

namespace A083942.P4096123428636607394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (2 ^ n - 1)

end

end A083942.P4096123428636607394

/-! ## A083942.P16252312831923909862

`A155587(2^n)-2`
-/

namespace A083942.P16252312831923909862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (2 ^ n) - 2

end

end A083942.P16252312831923909862

/-! ## A083942.P3573933557963846186

`A014137(2^n-1)-1`
-/

namespace A083942.P3573933557963846186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (2 ^ n - 1) - 1

end

end A083942.P3573933557963846186

/-!
# A083943: A generalized Jacobsthal sequence.

The programs for A083943, the canonical program `A083943.P8663718937523010052` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083943 has offset 0).

The definition of A083943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083943.P8418859847911198521

`ogf((x-3x^2)/(1-2x-x^2+2x^3))`
-/

namespace A083943.P8418859847911198521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -2, -1, 2] n

end

end A083943.P8418859847911198521

namespace A083943

/-- `ogf((x-3x^2)/(1-2x-x^2+2x^3))` -/
def P8418859847911198521.Spec : Prop :=
  ∀ n, P8418859847911198521.a n = A083943 n

end A083943

/-! ## A083943.P8663718937523010052

`a(n-1)+2*a(n-2)-2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083943

/-- `a(n-1)+2*a(n-2)-2` -/
def P8663718937523010052.Spec : Prop :=
  ∀ n, P8663718937523010052.a n = A083943 n

theorem P8663718937523010052.correct : P8663718937523010052.Spec := by
  intro n
  simp only [A083943]

end A083943

/-! ## A083943.P10677022021261181647

`1-2^n/3-2*(-1)^n/3`
-/

namespace A083943.P10677022021261181647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ n : ℚ) / 3 - (2 * (-1) ^ n : ℚ) / 3

end

end A083943.P10677022021261181647

namespace A083943

/-- `1-2^n/3-2*(-1)^n/3` -/
def P10677022021261181647.Spec : Prop :=
  ∀ n, P10677022021261181647.a n = (A083943 n : ℚ)

theorem P10677022021261181647.correct : P10677022021261181647.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083943, Nat.add_sub_cancel, A083943.P10677022021261181647.a, A083943.P8663718937523010052.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083943, Nat.add_sub_cancel, A083943.P10677022021261181647.a, A083943.P8663718937523010052.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083943

/-! ## A083943.P2476434265061059599

`∑[ogf((-x+3x^2)/(-1+x+2x^2))]`
-/

namespace A083943.P2476434265061059599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083943.P2476434265061059599

namespace A083943

/-- `∑[ogf((-x+3x^2)/(-1+x+2x^2))]` -/
def P2476434265061059599.Spec : Prop :=
  ∀ n, P2476434265061059599.a n = A083943 n

end A083943

/-! ## A083943.P200997200143594423

`ceil(n%2-2^n/3)`
-/

namespace A083943.P200997200143594423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n % 2 : ℕ) : ℚ) - (2 ^ n : ℚ) / 3⌉

end

end A083943.P200997200143594423

namespace A083943

/-- `ceil(n%2-2^n/3)` -/
def P200997200143594423.Spec : Prop :=
  ∀ n, P200997200143594423.a n = A083943 n

end A083943

/-! ## A083943.P1715558623787611718

`ceil(and(1, n)-2^n/3)`
-/

namespace A083943.P1715558623787611718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n : ℚ) - (2 ^ n : ℚ) / 3⌉

end

end A083943.P1715558623787611718

namespace A083943

/-- `ceil(and(1, n)-2^n/3)` -/
def P1715558623787611718.Spec : Prop :=
  ∀ n, P1715558623787611718.a n = A083943 n

end A083943

/-! ## A083943.P1366029736279119272

`a(n-2)-2^(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A083943.P1366029736279119272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A083943.P1366029736279119272

namespace A083943

/-- `a(n-2)-2^(n-2)` -/
def P1366029736279119272.Spec : Prop :=
  ∀ n, P1366029736279119272.a n = (A083943 n : ℚ)

end A083943

/-! ## A083943.P14829415271894423004

`(2-Δ[2^n-xor(1, n)])/3`
-/

namespace A083943.P14829415271894423004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.xor 1 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n) : ℚ) / 3

end

end A083943.P14829415271894423004

namespace A083943

/-- `(2-Δ[2^n-xor(1, n)])/3` -/
def P14829415271894423004.Spec : Prop :=
  ∀ n, P14829415271894423004.a n = (A083943 n : ℚ)

end A083943

/-! ## A083943.P11430920264507091976

`floor(a(n-1)-2*(1-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083943.P11430920264507091976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 2))

end

end A083943.P11430920264507091976

namespace A083943

/-- `floor(a(n-1)-2*(1-a(n-2)))` -/
def P11430920264507091976.Spec : Prop :=
  ∀ n, P11430920264507091976.a n = A083943 n

theorem P11430920264507091976.correct : P11430920264507091976.Spec := by
  intro n
  simp only [A083943, Nat.add_sub_cancel, A083943.P11430920264507091976.a, A083943.P8663718937523010052.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083943

/-! ## A083943.P10393533104798733815

`2*(a(n-2)-(2-a(n-1))/2)` with `a(0)=0, a(1)=1`
-/

namespace A083943.P10393533104798733815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 2) - (2 - a (n - 1)) / 2)

end

end A083943.P10393533104798733815

namespace A083943

/-- `2*(a(n-2)-(2-a(n-1))/2)` -/
def P10393533104798733815.Spec : Prop :=
  ∀ n, P10393533104798733815.a n = (A083943 n : ℚ)

end A083943

/-! ## A083943.P193838614256912602

`a(n-2)+a(n-1)+a(n-2)-2` with `a(0)=0, a(1)=1`
-/

namespace A083943.P193838614256912602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) + a (n - 2) - 2

end

end A083943.P193838614256912602

namespace A083943

/-- `a(n-2)+a(n-1)+a(n-2)-2` -/
def P193838614256912602.Spec : Prop :=
  ∀ n, P193838614256912602.a n = A083943 n

end A083943

/-! ## A083943.P764036820162023710

`Δ[n-A001045(n)]`
-/

namespace A083943.P764036820162023710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083943.P764036820162023710

namespace A083943

/-- `Δ[n-A001045(n)]` -/
def P764036820162023710.Spec : Prop :=
  ∀ n, P764036820162023710.a n = A083943 n

end A083943

/-! ## A083943.P3663972129031320773

`Δ[n-A128209(n)]`
-/

namespace A083943.P3663972129031320773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083943.P3663972129031320773

namespace A083943

/-- `Δ[n-A128209(n)]` -/
def P3663972129031320773.Spec : Prop :=
  ∀ n, P3663972129031320773.a n = A083943 n

end A083943

/-! ## A083943.P3796883966589725664

`Δ[n-A153643(n)]`
-/

namespace A083943.P3796883966589725664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083943.P3796883966589725664

namespace A083943

/-- `Δ[n-A153643(n)]` -/
def P3796883966589725664.Spec : Prop :=
  ∀ n, P3796883966589725664.a n = A083943 n

end A083943

/-! ## A083943.P14328663066639795984

`Δ[n-A167030(n)]`
-/

namespace A083943.P14328663066639795984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A167030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083943.P14328663066639795984

namespace A083943

/-- `Δ[n-A167030(n)]` -/
def P14328663066639795984.Spec : Prop :=
  ∀ n, P14328663066639795984.a n = A083943 n

end A083943

/-! ## A083943.P11520791902906505870

`(2-A269019(n))/3`
-/

namespace A083943.P11520791902906505870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A269019 n : ℚ) / 3

end

end A083943.P11520791902906505870

namespace A083943

/-- `(2-A269019(n))/3` -/
def P11520791902906505870.Spec : Prop :=
  ∀ n, P11520791902906505870.a n = (A083943 n : ℚ)

theorem P11520791902906505870.correct : P11520791902906505870.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083943, Nat.add_sub_cancel, A083943.P11520791902906505870.a, A083943.P8663718937523010052.a, A269019, A269019.P9311159951334276451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083943, Nat.add_sub_cancel, A083943.P11520791902906505870.a, A083943.P8663718937523010052.a, A269019, A269019.P9311159951334276451.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A083943

/-! ## A083943.P9080090646891470185

`(A000045(n+1)-A093121(n))/A000045(n+1)`
-/

namespace A083943.P9080090646891470185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A093121 n : ℚ) / (A000045 (n + 1) : ℚ)

end

end A083943.P9080090646891470185

namespace A083943

/-- `(A000045(n+1)-A093121(n))/A000045(n+1)` -/
def P9080090646891470185.Spec : Prop :=
  ∀ n, P9080090646891470185.a n = (A083943 n : ℚ)

end A083943

/-! ## A083943.P13244993181211454681

`(A011782(n)-A054881(n))/A011782(n)`
-/

namespace A083943.P13244993181211454681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n - A054881 n : ℚ) / (A011782 n : ℚ)

end

end A083943.P13244993181211454681

namespace A083943

/-- `(A011782(n)-A054881(n))/A011782(n)` -/
def P13244993181211454681.Spec : Prop :=
  ∀ n, P13244993181211454681.a n = (A083943 n : ℚ)

end A083943

/-! ## A083943.P4354845050349446020

`or(1-A005578(n), A000225(n)²)`
-/

namespace A083943.P4354845050349446020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A005578 n) (A000225 n ^ 2)

end

end A083943.P4354845050349446020

namespace A083943

/-- `or(1-A005578(n), A000225(n)²)` -/
def P4354845050349446020.Spec : Prop :=
  ∀ n, P4354845050349446020.a n = A083943 n

end A083943

/-!
# A083944: A generalized Jacobsthal sequence.

The programs for A083944, the canonical program `A083944.P8877717128862183118` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083944 has offset 0).

The definition of A083944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083944.P7134723819990666337

`ogf((x-4x^2)/(1-2x-x^2+2x^3))`
-/

namespace A083944.P7134723819990666337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -4] [1, -2, -1, 2] n

end

end A083944.P7134723819990666337

namespace A083944

/-- `ogf((x-4x^2)/(1-2x-x^2+2x^3))` -/
def P7134723819990666337.Spec : Prop :=
  ∀ n, P7134723819990666337.a n = A083944 n

end A083944

/-! ## A083944.P8877717128862183118

`a(n-1)+2*a(n-2)-3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A083944

/-- `a(n-1)+2*a(n-2)-3` -/
def P8877717128862183118.Spec : Prop :=
  ∀ n, P8877717128862183118.a n = A083944 n

theorem P8877717128862183118.correct : P8877717128862183118.Spec := by
  intro n
  simp only [A083944]

end A083944

/-! ## A083944.P13640234161596985287

`3/2-2^(n+1)/3-5*(-1)^n/6`
-/

namespace A083944.P13640234161596985287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 - (2 ^ (n + 1) : ℚ) / 3 - (5 * (-1) ^ n : ℚ) / 6

end

end A083944.P13640234161596985287

namespace A083944

/-- `3/2-2^(n+1)/3-5*(-1)^n/6` -/
def P13640234161596985287.Spec : Prop :=
  ∀ n, P13640234161596985287.a n = (A083944 n : ℚ)

theorem P13640234161596985287.correct : P13640234161596985287.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083944, Nat.add_sub_cancel, A083944.P13640234161596985287.a, A083944.P8877717128862183118.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083944, Nat.add_sub_cancel, A083944.P13640234161596985287.a, A083944.P8877717128862183118.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A083944

/-! ## A083944.P12957043251907262587

`∑[ogf((-x+4x^2)/(-1+x+2x^2))]`
-/

namespace A083944.P12957043251907262587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -4] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083944.P12957043251907262587

namespace A083944

/-- `∑[ogf((-x+4x^2)/(-1+x+2x^2))]` -/
def P12957043251907262587.Spec : Prop :=
  ∀ n, P12957043251907262587.a n = A083944 n

end A083944

/-! ## A083944.P17308787439200574637

`3-(a(n-1)+2^n)` with `a(0)=0`
-/

namespace A083944.P17308787439200574637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - (a (n - 1) + (2 ^ n : ℤ))

end

end A083944.P17308787439200574637

namespace A083944

/-- `3-(a(n-1)+2^n)` -/
def P17308787439200574637.Spec : Prop :=
  ∀ n, P17308787439200574637.a n = A083944 n

end A083944

/-! ## A083944.P11474099358702014972

`a(n-2)-2^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A083944.P11474099358702014972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083944.P11474099358702014972

namespace A083944

/-- `a(n-2)-2^(n-1)` -/
def P11474099358702014972.Spec : Prop :=
  ∀ n, P11474099358702014972.a n = (A083944 n : ℚ)

end A083944

/-! ## A083944.P4753047474504234200

`2*(a(n-2)-(3-a(n-1))/2)` with `a(0)=0, a(1)=1`
-/

namespace A083944.P4753047474504234200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 2) - (3 - a (n - 1)) / 2)

end

end A083944.P4753047474504234200

namespace A083944

/-- `2*(a(n-2)-(3-a(n-1))/2)` -/
def P4753047474504234200.Spec : Prop :=
  ∀ n, P4753047474504234200.a n = (A083944 n : ℚ)

end A083944

/-! ## A083944.P11740749073188838716

`a(n-2)+a(n-1)+a(n-2)-3` with `a(0)=0, a(1)=1`
-/

namespace A083944.P11740749073188838716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + a (n - 1) + a (n - 2) - 3

end

end A083944.P11740749073188838716

namespace A083944

/-- `a(n-2)+a(n-1)+a(n-2)-3` -/
def P11740749073188838716.Spec : Prop :=
  ∀ n, P11740749073188838716.a n = A083944 n

end A083944

/-! ## A083944.P10937144911572040795

`xor(1, 1-A000975(n))`
-/

namespace A083944.P10937144911572040795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A000975 n)

end

end A083944.P10937144911572040795

namespace A083944

/-- `xor(1, 1-A000975(n))` -/
def P10937144911572040795.Spec : Prop :=
  ∀ n, P10937144911572040795.a n = A083944 n

end A083944

/-! ## A083944.P8394724772937575433

`xor(1, 1-∑[A001045(n)])`
-/

namespace A083944.P8394724772937575433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083944.P8394724772937575433

namespace A083944

/-- `xor(1, 1-∑[A001045(n)])` -/
def P8394724772937575433.Spec : Prop :=
  ∀ n, P8394724772937575433.a n = A083944 n

end A083944

/-! ## A083944.P2847583709276247220

`xor(1, 2-A005578(n+1))`
-/

namespace A083944.P2847583709276247220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 - A005578 (n + 1))

end

end A083944.P2847583709276247220

namespace A083944

/-- `xor(1, 2-A005578(n+1))` -/
def P2847583709276247220.Spec : Prop :=
  ∀ n, P2847583709276247220.a n = A083944 n

end A083944

/-! ## A083944.P14072710529279411694

`(A016116(n+1)-A083333(n))/A016116(n)`
-/

namespace A083944.P14072710529279411694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) - A083333 n : ℚ) / (A016116 n : ℚ)

end

end A083944.P14072710529279411694

namespace A083944

/-- `(A016116(n+1)-A083333(n))/A016116(n)` -/
def P14072710529279411694.Spec : Prop :=
  ∀ n, P14072710529279411694.a n = (A083944 n : ℚ)

end A083944

/-!
# A083945: Least integer coefficients of A(x), where 1<=a(n)<=5, such that A(x)^(1/5) consists entirely of integer coefficients.

The programs for A083945, there is no canonical definition to state claims against.
-/

/-! ## A083945.P2410311863363473589

`A109626(∑[5+n]+6)`
-/

namespace A083945.P2410311863363473589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A083945.P2410311863363473589

/-!
# A083946: Least integer coefficients of A(x), where 1<=a(n)<=6, such that A(x)^(1/6) consists entirely of integer coefficients.

The programs for A083946, there is no canonical definition to state claims against.
-/

/-! ## A083946.P16753110891469629407

`A109626(A155212(n+2)+3)`
-/

namespace A083946.P16753110891469629407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A155212 (n + 2) + 3).toNat

end

end A083946.P16753110891469629407

/-! ## A083946.P8207218202107999339

`A141524(A090461(n+4)+1)`
-/

namespace A083946.P8207218202107999339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141524 (A090461 (n + 4) + 1).toNat

end

end A083946.P8207218202107999339

/-!
# A083947: Integer coefficients of A(x), where 1<=a(n)<=7, such that A(x)^(1/7) consists entirely of integer coefficients.

The programs for A083947, there is no canonical definition to state claims against.
-/

/-! ## A083947.P10533761327086179571

`A109626(C(n+7, 2)+n+1)`
-/

namespace A083947.P10533761327086179571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (Nat.choose (n + 7) 2 + (n + 1))

end

end A083947.P10533761327086179571

/-!
# A083948: Integer coefficients of A(x), where 1<=a(n)<=8, such that A(x)^(1/8) consists entirely of integer coefficients.

The programs for A083948, there is no canonical definition to state claims against.
-/

/-! ## A083948.P14022598973879799234

`A109626(A155212(n+4)+1)`
-/

namespace A083948.P14022598973879799234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A155212 (n + 4) + 1).toNat

end

end A083948.P14022598973879799234

/-!
# A083949: Integer coefficients of A(x), where 1<=a(n)<=9, such that A(x)^(1/9) consists entirely of integer coefficients.

The programs for A083949, there is no canonical definition to state claims against.
-/

/-! ## A083949.P5138430725578562521

`A109626(A155212(n+5))`
-/

namespace A083949.P5138430725578562521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A155212 (n + 5)).toNat

end

end A083949.P5138430725578562521

/-! ## A083949.P11136529604981936483

`dr(A173682(A249157(n+1)))`
-/

namespace A083949.P11136529604981936483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A173682 (A249157 (n + 1)).toNat)

end

end A083949.P11136529604981936483

/-! ## A083949.P930241751840970899

`dr(lcm(A008452(n), A295824(n+1)))`
-/

namespace A083949.P930241751840970899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lcm (A008452 n) (A295824 (n + 1)) : ℤ)

end

end A083949.P930241751840970899

/-! ## A083949.P14549949282680002960

`dr(A000038(A249157(n+1))-A022733(n))`
-/

namespace A083949.P14549949282680002960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000038 (A249157 (n + 1)).toNat - A022733 n)

end

end A083949.P14549949282680002960

/-! ## A083949.P16457794383363082541

`A253298(A037207(n))`
-/

namespace A083949.P16457794383363082541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253298 (A037207 n).toNat

end

end A083949.P16457794383363082541

/-!
# A083950: Integer coefficients of A(x), where 1<=a(n)<=10, such that A(x)^(1/10) consists entirely of integer coefficients.

The programs for A083950, there is no canonical definition to state claims against.
-/

/-! ## A083950.P15763591843644082765

`A109626(A000217(n+9)+n+1)`
-/

namespace A083950.P15763591843644082765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A083950.P15763591843644082765

/-!
# A083951: Least increasing integer coefficients such that A(x)^(1/3) has only integer coefficients.

The programs for A083951, there is no canonical definition to state claims against.
-/

/-! ## A083951.P4866376226940673947

`eq[2, A071558(A095270(2*n+1))]+1`
-/

namespace A083951.P4866376226940673947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A095270 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083951.P4866376226940673947

/-!
# A083952: Integer coefficients a(n) of A(x), where a(n) = 1 or 2 for all n, such that A(x)^(1/2) has only integer coefficients.

The programs for A083952, there is no canonical definition to state claims against.
-/

/-! ## A083952.P6336232820970349155

`gcd(2, A108115(n))`
-/

namespace A083952.P6336232820970349155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A108115 n)

end

end A083952.P6336232820970349155

/-! ## A083952.P10714648906090833937

`A001511(A108115(n))`
-/

namespace A083952.P10714648906090833937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A108115 n).toNat

end

end A083952.P10714648906090833937

/-! ## A083952.P18016022121166478185

`A040001(A108115(n)+2)`
-/

namespace A083952.P18016022121166478185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A108115 n + 2).toNat

end

end A083952.P18016022121166478185

/-! ## A083952.P9194981692540931872

`A000629(val(A108115(n), 2))`
-/

namespace A083952.P9194981692540931872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (SequenceMachineLib.valuation (A108115 n).toNat 2)

end

end A083952.P9194981692540931872

/-! ## A083952.P10069154088503022943

`A108078(val(A108115(n), 2))`
-/

namespace A083952.P10069154088503022943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108078 (SequenceMachineLib.valuation (A108115 n).toNat 2)

end

end A083952.P10069154088503022943

/-! ## A083952.P10152094652028008904

`A108081(val(A108115(n), 2))`
-/

namespace A083952.P10152094652028008904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108081 (SequenceMachineLib.valuation (A108115 n).toNat 2)

end

end A083952.P10152094652028008904

/-! ## A083952.P11794374857156246370

`A108084(val(A108115(n), 2))`
-/

namespace A083952.P11794374857156246370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108084 (SequenceMachineLib.valuation (A108115 n).toNat 2)

end

end A083952.P11794374857156246370

/-! ## A083952.P12565424067837018548

`A108085(val(A108115(n), 2))`
-/

namespace A083952.P12565424067837018548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108085 (SequenceMachineLib.valuation (A108115 n).toNat 2)

end

end A083952.P12565424067837018548

/-! ## A083952.P7519349531525103619

`A108115(val(A108115(n), 2))`
-/

namespace A083952.P7519349531525103619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108115 (SequenceMachineLib.valuation (A108115 n).toNat 2)

end

end A083952.P7519349531525103619

/-! ## A083952.P2030417815114690893

`A108115(n)%A040002(n)`
-/

namespace A083952.P2030417815114690893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108115 n) (A040002 n)

end

end A083952.P2030417815114690893

/-! ## A083952.P3039598727715951778

`and(A108115(n), A122553(n))`
-/

namespace A083952.P3039598727715951778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108115 n) (A122553 n)

end

end A083952.P3039598727715951778

/-! ## A083952.P2263458601434225842

`and(A108115(n), A158799(n))`
-/

namespace A083952.P2263458601434225842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108115 n) (A158799 n)

end

end A083952.P2263458601434225842

/-! ## A083952.P1030524488320862427

`and(A108115(n), A176059(n))`
-/

namespace A083952.P1030524488320862427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108115 n) (A176059 n)

end

end A083952.P1030524488320862427

/-! ## A083952.P14122482552771561623

`A000035(A108115(n)+1)+1`
-/

namespace A083952.P14122482552771561623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A108115 n + 1).toNat + 1

end

end A083952.P14122482552771561623

/-! ## A083952.P741798459210253993

`A176059(A108115(n)+2)-1`
-/

namespace A083952.P741798459210253993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A108115 n + 2).toNat - 1

end

end A083952.P741798459210253993

/-! ## A083952.P6188682517722342374

`and(A108077(A108077(n+1)), A108115(n))`
-/

namespace A083952.P6188682517722342374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108077 (A108077 (n + 1)).toNat) (A108115 n)

end

end A083952.P6188682517722342374

/-! ## A083952.P5251864794543467422

`A283556(xor(A108115(n)+1, A108115(n)))`
-/

namespace A083952.P5251864794543467422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283556 (Int.xor (A108115 n + 1) (A108115 n)).toNat

end

end A083952.P5251864794543467422

/-! ## A083952.P16300488764488050690

`2-char[A108783(n+1)]`
-/

namespace A083952.P16300488764488050690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A083952.P16300488764488050690

/-! ## A083952.P11016016916906575490

`2-A108340(n)`
-/

namespace A083952.P11016016916906575490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108340 n

end

end A083952.P11016016916906575490

/-! ## A083952.P4999993878622696979

`∑{#}[n, A084202(#)*A084202(n-#)]`
-/

namespace A083952.P4999993878622696979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A084202 k * A084202 (n - k)

end

end A083952.P4999993878622696979

/-!
# A083953: Least integer coefficients of A(x), where 1<=a(n)<=3, such that A(x)^(1/3) consists entirely of integer coefficients.

The programs for A083953, there is no canonical definition to state claims against.
-/

/-! ## A083953.P3107909463644949082

`dr(gcd(12, A108913(n)))`
-/

namespace A083953.P3107909463644949082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 12 (A108913 n) : ℤ)

end

end A083953.P3107909463644949082

/-! ## A083953.P9277150081192397147

`A000032(2-A108913(n))`
-/

namespace A083953.P9277150081192397147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 - A108913 n).toNat

end

end A083953.P9277150081192397147

/-! ## A083953.P1308644742305640278

`A010123((2*n+1)*A108913(n))`
-/

namespace A083953.P1308644742305640278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 ((2 * n + 1 : ℤ) * A108913 n).toNat

end

end A083953.P1308644742305640278

/-! ## A083953.P5538142786226964414

`A109626(1+∑[n+3])`
-/

namespace A083953.P5538142786226964414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083953.P5538142786226964414

/-!
# A083954: Least integer coefficients of A(x), where 1<=a(n)<=4, such that A(x)^(1/4) consists entirely of integer coefficients.

The programs for A083954, there is no canonical definition to state claims against.
-/

/-! ## A083954.P16054020293321461608

`A110630(A071054(n)-A004442(n))`
-/

namespace A083954.P16054020293321461608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110630 (A071054 n - A004442 n).toNat

end

end A083954.P16054020293321461608

/-! ## A083954.P13887797203888453680

`lcm(A000034(n)², A110630(A004525(n)))`
-/

namespace A083954.P13887797203888453680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n ^ 2) (A110630 (A004525 n).toNat)

end

end A083954.P13887797203888453680

/-! ## A083954.P11776903004716764621

`A000034(n)*A110630(A057979(n+1))`
-/

namespace A083954.P11776903004716764621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A110630 (A057979 (n + 1)).toNat

end

end A083954.P11776903004716764621

/-! ## A083954.P5182955549252278856

`A109626(∑[n+4]+3)`
-/

namespace A083954.P5182955549252278856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A083954.P5182955549252278856

/-!
# A083956: a(n) = sum of all cyclic permutation of concatenation of first n numbers. In each case the digits of a number are kept together for n>9.

The programs for A083956, there is no canonical definition to state claims against.
-/

/-! ## A083956.P14478521896030893576

`record[(n+1)*A127805(n)]`
-/

namespace A083956.P14478521896030893576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083956.P14478521896030893576

/-! ## A083956.P4412274717917418091

`∑[A000005(4^n)-n]*∑[10^n]`
-/

namespace A083956.P4412274717917418091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 ^ n) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A083956.P4412274717917418091

/-! ## A083956.P1502604321979537550

`A365645(A219324(n+1))`
-/

namespace A083956.P1502604321979537550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365645 (A219324 (n + 1)).toNat

end

end A083956.P1502604321979537550

/-! ## A083956.P4234859420293534637

`record[A127805(n)]*A025747(n)`
-/

namespace A083956.P4234859420293534637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A025747 n

end

end A083956.P4234859420293534637

/-!
# A083958: Smallest multiple of n using all digits of (n-1) at least once and no others; or 0 if no such number exists.

The programs for A083958, there is no canonical definition to state claims against.
-/

/-! ## A083958.P1361744383449223110

`A083959(∑[A287377(n)])`
-/

namespace A083958.P1361744383449223110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083958.P1361744383449223110

/-!
# A083960: Smallest palindromic multiple of (n with trailing 0's omitted, A004151) using only nonzero digits of n; all digits must appear; or 0 if no such number exists.

The programs for A083960, there is no canonical definition to state claims against.
-/

/-! ## A083960.P1953972230543882767

`(n+1)*10^-val(n+1, 10)*A083961(n+1)`
-/

namespace A083960.P1953972230543882767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 10 : ℤ) : ℤ) * (A083961 (n + 1) : ℚ)

end

end A083960.P1953972230543882767

/-! ## A083960.P2080096101532213777

`(n+1)/10^val(n+1, 10)*A083961((n+1)/10^val(n+1, 10))`
-/

namespace A083960.P2080096101532213777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ) * (A083961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat : ℚ)

end

end A083960.P2080096101532213777

/-! ## A083960.P4925716337240805744

`A004151(n+1)*A083961(n+1)`
-/

namespace A083960.P4925716337240805744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1) * A083961 (n + 1)

end

end A083960.P4925716337240805744

/-! ## A083960.P12952402974078519205

`A004719(n+1)*A083961(n+1)`
-/

namespace A083960.P12952402974078519205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1) * A083961 (n + 1)

end

end A083960.P12952402974078519205

/-! ## A083960.P18229067078060296324

`(1+n)/(A199344(n)-n)*A083961(n+1)`
-/

namespace A083960.P18229067078060296324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A199344 n - (n : ℤ) : ℚ) * (A083961 (n + 1) : ℚ)

end

end A083960.P18229067078060296324

/-!
# A083961: a(n) = A083960(n) / A004151(n).

The programs for A083961, there is no canonical definition to state claims against.
-/

/-! ## A083961.P5131198100066601536

`A083960(n+1)/A004151(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083961.P5131198100066601536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083960 (n + 1) : ℚ) / (A004151 (n + 1) : ℚ)

end

end A083961.P5131198100066601536

/-! ## A083961.P5400563576725051879

`A083960(n+1)/((n+1)*10^-val(n+1, 10))`
-/

namespace A083961.P5400563576725051879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083960 (n + 1) : ℚ) / ((n + 1 : ℚ) * (10 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 10 : ℤ) : ℤ))

end

end A083961.P5400563576725051879

/-! ## A083961.P13843106209376849365

`A083960(n+1)/A004719(n+1)`
-/

namespace A083961.P13843106209376849365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083960 (n + 1) : ℚ) / (A004719 (n + 1) : ℚ)

end

end A083961.P13843106209376849365

/-! ## A083961.P12401737854546044231

`A083960(n+1)/A004086(A004086(1+n))`
-/

namespace A083961.P12401737854546044231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083960 (n + 1) : ℚ) / (A004086 (A004086 (1 + n)).toNat : ℚ)

end

end A083961.P12401737854546044231

/-! ## A083961.P8116705586076467029

`A083960(n+1)/A083822(A083822(n+1))`
-/

namespace A083961.P8116705586076467029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083960 (n + 1) : ℚ) / (A083822 (A083822 (n + 1)).toNat : ℚ)

end

end A083961.P8116705586076467029

/-!
# A083962: Smallest palindromic multiple of n containing the digit string of a(n-1); or 0 if no such number exists.

The programs for A083962, there is no canonical definition to state claims against.
-/

/-! ## A083962.P8928998834166046250

`(1+n)*A083963(n+1)`
-/

namespace A083962.P8928998834166046250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A083963 (n + 1)

end

end A083962.P8928998834166046250

/-!
# A083963: a(n) = A083962(n)/n.

The programs for A083963, there is no canonical definition to state claims against.
-/

/-! ## A083963.P13556111795982409435

`A083962(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083963.P13556111795982409435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083962 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083963.P13556111795982409435

/-!
# A083964: Smallest palindromic multiple of 2*n-1 beginning with the digit string of 2*n-1; or 0 if no such number exists.

The programs for A083964, there is no canonical definition to state claims against.
-/

/-! ## A083964.P9209849615663370854

`A083965(1+n)*A185782(A000124(n))`
-/

namespace A083964.P9209849615663370854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083965 (1 + n) * A185782 (A000124 n).toNat

end

end A083964.P9209849615663370854

/-! ## A083964.P6468065462717402229

`A083965(n+1)*A283002(A283002(n+1)-n)`
-/

namespace A083964.P6468065462717402229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083965 (n + 1) * A283002 (A283002 (n + 1) - (n : ℤ)).toNat

end

end A083964.P6468065462717402229

/-! ## A083964.P2950008090647716209

`A083960(a(n-1)+2)` with `a(0)=1`
-/

namespace A083964.P2950008090647716209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083960 (a (n - 1) + 2).toNat

end

end A083964.P2950008090647716209

/-!
# A083966: Numbers n such that the concatenation 2n3n5n7 is prime.

The programs for A083966, there is no canonical definition to state claims against.
-/

/-! ## A083966.P7769765863349301671

`eq[A035203(A318636(3*n+1)), A067742(n+5)]`
-/

namespace A083966.P7769765863349301671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (A318636 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083966.P7769765863349301671

/-!
# A083967: Integers with the property that there exists a nontrivial partition such that the digit sum of both partitions is equal.

The programs for A083967, there is no canonical definition to state claims against.
-/

/-! ## A083967.P11573250556552858930

`∪[A108203(n+1), A290725(n+1)]`
-/

namespace A083967.P11573250556552858930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083967.P11573250556552858930

/-! ## A083967.P9107713659534935566

`∪[A108203(n+1), A352438(n+10)]`
-/

namespace A083967.P9107713659534935566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083967.P9107713659534935566

/-! ## A083967.P4624205940276280920

`∩[A068520(n+1), A292988(n+1)]`
-/

namespace A083967.P4624205940276280920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083967.P4624205940276280920

/-! ## A083967.P18299553824135199251

`A282151(n+1)-A284775(A115205(n))`
-/

namespace A083967.P18299553824135199251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282151 (n + 1) - A284775 (A115205 n).toNat

end

end A083967.P18299553824135199251

/-! ## A083967.P7889670648785269426

`A064544(lt[A129528(n), A065070(3*n+1)])`
-/

namespace A083967.P7889670648785269426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065070 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083967.P7889670648785269426

/-!
# A083970: Numbers n such that concatenation (reverse of n) and n is divisible by n.

The programs for A083970, there is no canonical definition to state claims against.
-/

/-! ## A083970.P2524007411337617401

`eq[0, A084342(n+1)]+1`
-/

namespace A083970.P2524007411337617401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083970.P2524007411337617401

/-! ## A083970.P3594790290438335039

`record[gcd(n+1, A071273(n+1))]`
-/

namespace A083970.P3594790290438335039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071273 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083970.P3594790290438335039

/-! ## A083970.P12463988425809548226

`eq[2, A000010(a(A084342(n)))]` with `a(0)=3`
-/

namespace A083970.P12463988425809548226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A084342 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083970.P12463988425809548226

/-! ## A083970.P3766791259904673902

`eq[2, A000045(a(A084342(n)))]` with `a(0)=3`
-/

namespace A083970.P3766791259904673902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A084342 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083970.P3766791259904673902

/-! ## A083970.P17219288471356233086

`record[gcd(A000027(n+1), A084342(n+1))]`
-/

namespace A083970.P17219288471356233086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A084342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083970.P17219288471356233086

/-! ## A083970.P7108711962050171669

`eq[2, A000040(a(A084342(n)))]` with `a(0)=1`
-/

namespace A083970.P7108711962050171669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A084342 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083970.P7108711962050171669

/-! ## A083970.P4883376014968159596

`eq[A000038(n), A084342(A008706(2*n))]`
-/

namespace A083970.P4883376014968159596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084342 (A008706 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083970.P4883376014968159596

/-! ## A083970.P4938381297891704640

`record[(n+1)/A000045(A084342(n+1)+2)]`
-/

namespace A083970.P4938381297891704640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000045 (A084342 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083970.P4938381297891704640

/-! ## A083970.P8820494737374363376

`record[n+1-A000045(n)*A084342(n+1)]`
-/

namespace A083970.P8820494737374363376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000045 n * A084342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083970.P8820494737374363376

/-!
# A083971: Reverse of k concatenated with k, divided by k, where k = A083970(n).

The programs for A083971, there is no canonical definition to state claims against.
-/

/-! ## A083971.P5380244423805316998

`A071273(A083970(n+1))/A083970(n+1)`
-/

namespace A083971.P5380244423805316998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071273 (A083970 (n + 1)).toNat : ℚ) / (A083970 (n + 1) : ℚ)

end

end A083971.P5380244423805316998

/-! ## A083971.P2464139347637592696

`A071273(n+1)/A001222(A237913(n+1))`
-/

namespace A083971.P2464139347637592696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071273 (n + 1) : ℚ) / (A001222 (A237913 (n + 1)).toNat : ℚ)

end

end A083971.P2464139347637592696

/-! ## A083971.P14334146157903502095

`11*A071274(n+1)/A001222(A237913(n+1))`
-/

namespace A083971.P14334146157903502095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * A071274 (n + 1) : ℚ) / (A001222 (A237913 (n + 1)).toNat : ℚ)

end

end A083971.P14334146157903502095

/-! ## A083971.P6116110195846747451

`11*(A110725(n+1)-A066492(n+1))/A001222(A237913(n+1))`
-/

namespace A083971.P6116110195846747451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (A110725 (n + 1) - A066492 (n + 1)) : ℚ) / (A001222 (A237913 (n + 1)).toNat : ℚ)

end

end A083971.P6116110195846747451

/-!
# A083982: Smallest palindromic prime containing the digit string of n.

The programs for A083982, there is no canonical definition to state claims against.
-/

/-! ## A083982.P13786936257562101473

`p?[gcd(A056967(n+1), A085054(n+1))]`
-/

namespace A083982.P13786936257562101473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056967 (n + 1)) (A085054 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083982.P13786936257562101473

/-! ## A083982.P11514448612779000432

`A085054(C(A037124(n+1), A004086(n)))`
-/

namespace A083982.P11514448612779000432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085054 (Nat.choose (A037124 (n + 1)).toNat (A004086 n).toNat)

end

end A083982.P11514448612779000432

/-! ## A083982.P881126151065014684

`A085054(A062399(n+1))`
-/

namespace A083982.P881126151065014684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085054 (A062399 (n + 1)).toNat

end

end A083982.P881126151065014684

/-! ## A083982.P17556291243208879224

`A085054(A032555(n+1))`
-/

namespace A083982.P17556291243208879224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085054 (A032555 (n + 1)).toNat

end

end A083982.P17556291243208879224

/-!
# A083983: If k is a number with exactly two distinct decimal digits, say a and b, neither of which is 0 (i.e., a member of A101594), define the self-complement of k, SC(k), to be the number obtained by replacing a with b and vice versa. E.g. SC(232233) = 323322. Sequence contains primes p such that SC(p) is also a prime.

The programs for A083983, there is no canonical definition to state claims against.
-/

/-! ## A083983.P13583380280485788449

`∩[A030291(n+1), A108388(n+1)]`
-/

namespace A083983.P13583380280485788449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083983.P13583380280485788449

/-! ## A083983.P8738061320181049720

`∩[A108388(n+1), A235154(n+1)]`
-/

namespace A083983.P8738061320181049720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083983.P8738061320181049720

/-! ## A083983.P6747114362170726862

`∩[A083984(n+1), A108388(n+1)]`
-/

namespace A083983.P6747114362170726862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083983.P6747114362170726862

/-! ## A083983.P10241856747413964673

`∩[A101594(n+1), A108388(n+1)]`
-/

namespace A083983.P10241856747413964673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083983.P10241856747413964673

/-! ## A083983.P15417856713712831010

`∩[A031955(n+1), A108388(n+1)]`
-/

namespace A083983.P15417856713712831010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083983.P15417856713712831010

/-!
# A083984: If k is a number with exactly two distinct decimal digits, say a and b, neither of which is 0 (i.e., a member of A101594), define the self-complement of k, SC(k), to be the number obtained by replacing a with b and vice versa. E.g. SC(232233) = 323322. Sequence contains numbers n such that n and SC(n) are relatively prime.

The programs for A083984, there is no canonical definition to state claims against.
-/

/-! ## A083984.P2904255428483285713

`record[A101594(n+2)/A083985(n+2)]`
-/

namespace A083984.P2904255428483285713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101594 (n + 2) : ℚ) / (A083985 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083984.P2904255428483285713

/-! ## A083984.P12295326222363887164

`filter[A236403(n+1), A055483(#)]`
-/

namespace A083984.P12295326222363887164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A055483 (f1 j).toNat = 1) n)

end

end A083984.P12295326222363887164

/-! ## A083984.P12687951835012883156

`∩[A226778(n+1), A236403(n+1)]`
-/

namespace A083984.P12687951835012883156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083984.P12687951835012883156

/-! ## A083984.P5401806218683174957

`∩[A236403(n+1), A287513(n+1)]`
-/

namespace A083984.P5401806218683174957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083984.P5401806218683174957

/-! ## A083984.P1671733314042197014

`A038187(n+2)`
-/

namespace A083984.P1671733314042197014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 2)

end

end A083984.P1671733314042197014

/-!
# A083985: If k is a number with exactly two distinct decimal digits, say a and b, neither of which is 0 (i.e., a member of A101594), define the self-complement of k, SC(k), to be the number obtained by replacing a with b and vice versa. Then a(n) = gcd(A101594(n), SC(A101594(n))).

The programs for A083985, there is no canonical definition to state claims against.
-/

/-! ## A083985.P13628507792568266358

`A055483(A125290(n+1)%A345803(2*(n+1)))`
-/

namespace A083985.P13628507792568266358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (Int.tmod (A125290 (n + 1)) (A345803 (2 * (n + 1)))).toNat

end

end A083985.P13628507792568266358

/-! ## A083985.P27657324411682897

`A055483(A101594(n+1)%A002189(n))`
-/

namespace A083985.P27657324411682897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (Int.tmod (A101594 (n + 1)) (A002189 n)).toNat

end

end A083985.P27657324411682897

/-! ## A083985.P6067715866313823374

`A055483(A101594(n+1))`
-/

namespace A083985.P6067715866313823374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A101594 (n + 1)).toNat

end

end A083985.P6067715866313823374

/-!
# A083986: If k is a number with exactly two distinct decimal digits, say a and b, neither of which is 0 (i.e., a member of A101594), define the self-complement of k, SC(k), to be the number obtained by replacing a with b and vice versa. Then a(n) = lcm(A101594(n), SC(A101594(n))).

The programs for A083986, there is no canonical definition to state claims against.
-/

/-! ## A083986.P11518265552302840535

`lcm(A004086(A332795(2*n+5)), A332795(2*n+5))`
-/

namespace A083986.P11518265552302840535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004086 (A332795 (2 * n + 5)).toNat) (A332795 (2 * n + 5))

end

end A083986.P11518265552302840535

/-!
# A083987: a(n) = n-th partial concatenation of A051883 divided by n.

The programs for A083987, there is no canonical definition to state claims against.
-/

/-! ## A083987.P6704436231357141413

`A214437(∑[A053501(n)])/(n+1)`
-/

namespace A083987.P6704436231357141413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053501 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (n + 1 : ℚ)

end

end A083987.P6704436231357141413

/-! ## A083987.P10547755620781630326

`A214437(A061378(n)+1)/(n+1)`
-/

namespace A083987.P10547755620781630326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214437 (A061378 n + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A083987.P10547755620781630326

/-! ## A083987.P18371756437826827130

`A214437(A062003(n+1))/(n+1)`
-/

namespace A083987.P18371756437826827130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214437 (A062003 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A083987.P18371756437826827130

/-! ## A083987.P11892041205812611572

`A214437(A351870(n)+1)/(n+1)`
-/

namespace A083987.P11892041205812611572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214437 (A351870 n + 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A083987.P11892041205812611572

/-! ## A083987.P17167475922085161481

`A214437(A053501(n)+n)/(n+1)`
-/

namespace A083987.P17167475922085161481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214437 (A053501 n + (n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A083987.P17167475922085161481

/-!
# A083988: Primes p such that concatenation p, 0, R(p) is also a prime (of course a palindromic prime).

The programs for A083988, there is no canonical definition to state claims against.
-/

/-! ## A083988.P17273854394448891225

`A091578(A132946(n))`
-/

namespace A083988.P17273854394448891225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091578 (A132946 n).toNat

end

end A083988.P17273854394448891225

/-!
# A083989: Concatenation of prime k and its 10's complement is a prime.

The programs for A083989, there is no canonical definition to state claims against.
-/

/-! ## A083989.P5804591084724910494

`p?[eq[2, A000005(A111708(n)+1)]]`
-/

namespace A083989.P5804591084724910494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A111708 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083989.P5804591084724910494

/-! ## A083989.P4661193712575278230

`record[p?[A195112(n+1)-11]]`
-/

namespace A083989.P4661193712575278230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195112 (n + 1) - 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083989.P4661193712575278230

/-! ## A083989.P18319219051801819435

`record[p?[A230877(A108579(n+1))]]`
-/

namespace A083989.P18319219051801819435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 (A108579 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083989.P18319219051801819435

/-! ## A083989.P13398865979160127137

`p?[lt[A095767(n+2), A095772(n+4)]]`
-/

namespace A083989.P13398865979160127137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095767 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095772 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A083989.P13398865979160127137

/-! ## A083989.P11123885947386182046

`record[A027746(A374639(2*n+1))]`
-/

namespace A083989.P11123885947386182046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A374639 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083989.P11123885947386182046

/-!
# A083991: Members of A083989 whose 10's complement is also a member of A083989.

The programs for A083991, there is no canonical definition to state claims against.
-/

/-! ## A083991.P17963788915953231856

`A372082(n+1)`
-/

namespace A083991.P17963788915953231856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372082 (n + 1)

end

end A083991.P17963788915953231856

