import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A083900: Number of divisors of n with largest digit <= 5 (base 10).

The programs for A083900, the canonical program `A083900.P8267360639211876912` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083900 has offset 1).

The definition of A083900 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083892, A083899, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083900.P8267360639211876912

`A083899(n+1)+A083892(n+1)`

The canonical program, it is in `Seq.B003.C001`.
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

end A083900

/-!
# A083901: Number of divisors of n with largest digit <= 6 (base 10).

The programs for A083901, the canonical program `A083901.P13271728194704751477` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083901 has offset 1).

The definition of A083901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083893, A083900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083901.P13271728194704751477

`A083900(n+1)+A083893(n+1)`

The canonical program, it is in `Seq.B004.C001`.
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

The programs for A083902, the canonical program `A083902.P16661972985477975009` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083902 has offset 1).

The definition of A083902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083894, A083901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083902.P16661972985477975009

`A083901(n+1)+A083894(n+1)`

The canonical program, it is in `Seq.B005.C000`.
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

The programs for A083904, the canonical program `A083904.P1743701123662090987` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083904 has offset 1).

The definition of A083904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083904.P1743701123662090987

`n%2+3*a(floor((n-1)/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A083904.P15803608258741481803

`A005836(lt[n, 2*and(n, 2*n)]-2*(n+1))`
-/

namespace A083904.P15803608258741481803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 2 * (n + 1))

end

end A083904.P15803608258741481803

namespace A083904

/-- `A005836(lt[n, 2*and(n, 2*n)]-2*(n+1))` -/
def P15803608258741481803.Spec : Prop :=
  ∀ n, P15803608258741481803.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P9022231119160829750

`A005836(lt[n, 2*and(n, 2*n)]%(2*(n+1)))`
-/

namespace A083904.P9022231119160829750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n % (2 * (n + 1)))

end

end A083904.P9022231119160829750

namespace A083904

/-- `A005836(lt[n, 2*and(n, 2*n)]%(2*(n+1)))` -/
def P9022231119160829750.Spec : Prop :=
  ∀ n, P9022231119160829750.a n = A083904 (n + 1)

end A083904

/-! ## A083904.P5277140252278998884

`A005836(A080079(n+1))`
-/

namespace A083904.P5277140252278998884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A080079 (n + 1)).toNat

end

end A083904.P5277140252278998884

namespace A083904

/-- `A005836(A080079(n+1))` -/
def P5277140252278998884.Spec : Prop :=
  ∀ n, P5277140252278998884.a n = A083904 (n + 1)

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

/-! ## A083904.P18225015118567541713

`A005836(n+2-A006257(n+1))`
-/

namespace A083904.P18225015118567541713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 ((n + 2 : ℤ) - A006257 (n + 1)).toNat

end

end A083904.P18225015118567541713

namespace A083904

/-- `A005836(n+2-A006257(n+1))` -/
def P18225015118567541713.Spec : Prop :=
  ∀ n, P18225015118567541713.a n = A083904 (n + 1)

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

/-!
# A083905: G.f.: 1/(1-x) * sum(k>=0, (-1)^k*x^2^(k+1)/(1+x^2^k)).

The programs for A083905, the canonical program `A083905.P18110451528529699075` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083905 has offset 1).

The definition of A083905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083905.P18110451528529699075

`n%2-a(floor((n-1)/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A083905

/-- `n%2-a(floor((n-1)/2))` -/
def P18110451528529699075.Spec : Prop :=
  ∀ n, P18110451528529699075.a n = A083905 (n + 1)

theorem P18110451528529699075.correct : P18110451528529699075.Spec := by
  intro n
  simp only [A083905, Nat.add_sub_cancel]

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

theorem P4347646514975845108.correct : P4347646514975845108.Spec := by
  intro n
  simp only [A083905, Nat.add_sub_cancel, A083905.P4347646514975845108.a, A083905.P18110451528529699075.a, SequenceMachineLib.memo_apply]
  try simp

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

/-! ## A083905.P6777605636858218612

`A030300(n+1)-A065359(n+1)`
-/

namespace A083905.P6777605636858218612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (n + 1) - A065359 (n + 1)

end

end A083905.P6777605636858218612

namespace A083905

/-- `A030300(n+1)-A065359(n+1)` -/
def P6777605636858218612.Spec : Prop :=
  ∀ n, P6777605636858218612.a n = A083905 (n + 1)

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

/-! ## A083905.P483106579385291947

`A131852(A374625(n+1))`
-/

namespace A083905.P483106579385291947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A374625 (n + 1)).toNat

end

end A083905.P483106579385291947

namespace A083905

/-- `A131852(A374625(n+1))` -/
def P483106579385291947.Spec : Prop :=
  ∀ n, P483106579385291947.a n = A083905 (n + 1)

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

/-! ## A083906.P2507809876714314188

`A124758(A334437(n)%A334409(n+1))`
-/

namespace A083906.P2507809876714314188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (Int.tmod (A334437 n) (A334409 (n + 1))).toNat

end

end A083906.P2507809876714314188

/-! ## A083906.P11539238962989383240

`A124758(lcm(A334437(n), A351241(n+1)))`
-/

namespace A083906.P11539238962989383240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (Int.lcm (A334437 n) (A351241 (n + 1)))

end

end A083906.P11539238962989383240

/-! ## A083906.P9967516817208194878

`A124758(A351241(n+1)+A295897(n+1))`
-/

namespace A083906.P9967516817208194878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A351241 (n + 1) + A295897 (n + 1)).toNat

end

end A083906.P9967516817208194878

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
# A083907: a(1) = 1; for n>1, a(n) = n*a(n-1) if GCD(n,a(n-1)) = 1 else a(n) = a(n-1).

The programs for A083907, there is no canonical definition to state claims against.
-/

/-! ## A083907.P9307970607509823987

`∏[gcd(n+1, n!+1)]`
-/

namespace A083907.P9307970607509823987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083907.P9307970607509823987

/-! ## A083907.P992350742677324570

`∏[∏{d}[∑{p}[n+1, C(#, n)], #]]`
-/

namespace A083907.P992350742677324570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083907.P992350742677324570

/-! ## A083907.P8817661059800439936

`∏[∏{p}[∑{p}[n+1, C(#, n)], #]]`
-/

namespace A083907.P8817661059800439936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083907.P8817661059800439936

/-! ## A083907.P9575703492048612306

`∏[∏{p}[∏{p}[n+1, C(#, n)], #]]`
-/

namespace A083907.P9575703492048612306
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083907.P9575703492048612306

/-! ## A083907.P9359888844448417465

`lcm(a(n-1), ∏{p}[n+1, #])` with `a(0)=1`
-/

namespace A083907.P9359888844448417465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A083907.P9359888844448417465

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

/-! ## A083909.P11762001479779391963

`A002283(2*n+1)-A002283(n)`
-/

namespace A083909.P11762001479779391963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (2 * n + 1) - A002283 n

end

end A083909.P11762001479779391963

/-! ## A083909.P2156133095615687154

`A011557(2*n+1)-A011557(n)`
-/

namespace A083909.P2156133095615687154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (2 * n + 1) - A011557 n

end

end A083909.P2156133095615687154

/-! ## A083909.P2569917206890222285

`A000533(2*n+1)-A062397(n)`
-/

namespace A083909.P2569917206890222285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (2 * n + 1) - A062397 n

end

end A083909.P2569917206890222285

/-! ## A083909.P16318596032015977640

`A062397(2*n+1)-A062397(n)`
-/

namespace A083909.P16318596032015977640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 (2 * n + 1) - A062397 n

end

end A083909.P16318596032015977640

/-! ## A083909.P11869207185337731654

`A133472(2*n+1)-A133472(n)`
-/

namespace A083909.P11869207185337731654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133472 (2 * n + 1) - A133472 n

end

end A083909.P11869207185337731654

/-! ## A083909.P504974422880378050

`A253213(2*n+1)-A253213(n)`
-/

namespace A083909.P504974422880378050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253213 (2 * n + 1) - A253213 n

end

end A083909.P504974422880378050

/-!
# A083910: Number of divisors of n that are congruent to 0 modulo 10.

The programs for A083910, the canonical program `A083910.P1777275044733097431` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083910 has offset 1).

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

end A083910

/-! ## A083910.P1777275044733097431

`∑{d}[n+1, C(gcd(10, #), 10)]`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A083910.P15910543676108011575

`A306509(n+1)%A118762(n+1)`
-/

namespace A083910.P15910543676108011575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306509 (n + 1)) (A118762 (n + 1))

end

end A083910.P15910543676108011575

namespace A083910

/-- `A306509(n+1)%A118762(n+1)` -/
def P15910543676108011575.Spec : Prop :=
  ∀ n, P15910543676108011575.a n = A083910 (n + 1)

end A083910

/-! ## A083910.P16024765715735850839

`∑{d}[n+1, A122840(#)*A268199((n+1)/#-1)]`
-/

namespace A083910.P16024765715735850839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122840 d * A268199 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A083910.P16024765715735850839

namespace A083910

/-- `∑{d}[n+1, A122840(#)*A268199((n+1)/#-1)]` -/
def P16024765715735850839.Spec : Prop :=
  ∀ n, P16024765715735850839.a n = A083910 (n + 1)

end A083910

/-!
# A083911: Number of divisors of n that are congruent to 1 modulo 10.

The programs for A083911, the canonical program `A083911.P7693470357739100101` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083911 has offset 1).

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

end A083911

/-! ## A083911.P4930570540995765095

`A001876((n+1)/2^val(n+1, 2))`
-/

namespace A083911.P4930570540995765095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083911.P4930570540995765095

namespace A083911

/-- `A001876((n+1)/2^val(n+1, 2))` -/
def P4930570540995765095.Spec : Prop :=
  ∀ n, P4930570540995765095.a n = A083911 (n + 1)

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

/-! ## A083911.P7693470357739100101

`A001876(A000265(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A083911

/-- `A001876(A000265(n+1))` -/
def P7693470357739100101.Spec : Prop :=
  ∀ n, P7693470357739100101.a n = A083911 (n + 1)

theorem P7693470357739100101.correct : P7693470357739100101.Spec := by
  intro n
  simp only [A083911, Nat.add_sub_cancel]

end A083911

/-! ## A083911.P10955876094171126189

`A001876(A132740(n+1))`
-/

namespace A083911.P10955876094171126189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A132740 (n + 1)).toNat

end

end A083911.P10955876094171126189

namespace A083911

/-- `A001876(A132740(n+1))` -/
def P10955876094171126189.Spec : Prop :=
  ∀ n, P10955876094171126189.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P2267788436971738890

`A083912(2*A000265(n+1))`
-/

namespace A083911.P2267788436971738890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * A000265 (n + 1)).toNat

end

end A083911.P2267788436971738890

namespace A083911

/-- `A083912(2*A000265(n+1))` -/
def P2267788436971738890.Spec : Prop :=
  ∀ n, P2267788436971738890.a n = A083911 (n + 1)

end A083911

/-! ## A083911.P15006565176628415028

`A083912(2*A132740(n+1))`
-/

namespace A083911.P15006565176628415028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (2 * A132740 (n + 1)).toNat

end

end A083911.P15006565176628415028

namespace A083911

/-- `A083912(2*A132740(n+1))` -/
def P15006565176628415028.Spec : Prop :=
  ∀ n, P15006565176628415028.a n = A083911 (n + 1)

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

The programs for A083912, the canonical program `A083912.P10595039226711258511` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083912 has offset 1).

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

end A083912

/-! ## A083912.P10595039226711258511

`A001876(∑[n]%(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083912

/-- `A001876(∑[n]%(n+1))` -/
def P10595039226711258511.Spec : Prop :=
  ∀ n, P10595039226711258511.a n = A083912 (n + 1)

theorem P10595039226711258511.correct : P10595039226711258511.Spec := by
  intro n
  simp only [A083912, Nat.add_sub_cancel]

end A083912

/-! ## A083912.P9616105835770321190

`A001876(n+1-gcd(n+1, ∑[n]))`
-/

namespace A083912.P9616105835770321190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1 - Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083912.P9616105835770321190

namespace A083912

/-- `A001876(n+1-gcd(n+1, ∑[n]))` -/
def P9616105835770321190.Spec : Prop :=
  ∀ n, P9616105835770321190.a n = A083912 (n + 1)

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

/-! ## A083912.P8211179244858585776

`A001876(A142150(n+1))`
-/

namespace A083912.P8211179244858585776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A142150 (n + 1)).toNat

end

end A083912.P8211179244858585776

namespace A083912

/-- `A001876(A142150(n+1))` -/
def P8211179244858585776.Spec : Prop :=
  ∀ n, P8211179244858585776.a n = A083912 (n + 1)

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

The programs for A083913, the canonical program `A083913.P9028729068411083889` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083913 has offset 1).

The definition of A083913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083913.P9028729068411083889

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`

The canonical program, it is in `Seq.B008.C000`.
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

/-! ## A083913.P6443158497652296409

`A001878(A000265(n+1))`
-/

namespace A083913.P6443158497652296409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A000265 (n + 1)).toNat

end

end A083913.P6443158497652296409

namespace A083913

/-- `A001878(A000265(n+1))` -/
def P6443158497652296409.Spec : Prop :=
  ∀ n, P6443158497652296409.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P1553540307469215574

`A001878(A132740(n+1))`
-/

namespace A083913.P1553540307469215574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A132740 (n + 1)).toNat

end

end A083913.P1553540307469215574

namespace A083913

/-- `A001878(A132740(n+1))` -/
def P1553540307469215574.Spec : Prop :=
  ∀ n, P1553540307469215574.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P2056428119184511216

`A001878(A153733(n)+1)`
-/

namespace A083913.P2056428119184511216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A153733 n + 1).toNat

end

end A083913.P2056428119184511216

namespace A083913

/-- `A001878(A153733(n)+1)` -/
def P2056428119184511216.Spec : Prop :=
  ∀ n, P2056428119184511216.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P4478792528854169123

`A001878(or(1, A153733(n)))`
-/

namespace A083913.P4478792528854169123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (Int.lor 1 (A153733 n)).toNat

end

end A083913.P4478792528854169123

namespace A083913

/-- `A001878(or(1, A153733(n)))` -/
def P4478792528854169123.Spec : Prop :=
  ∀ n, P4478792528854169123.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P1864015803000284897

`A001878(2*A025480(n)+1)`
-/

namespace A083913.P1864015803000284897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (2 * A025480 n + 1).toNat

end

end A083913.P1864015803000284897

namespace A083913

/-- `A001878(2*A025480(n)+1)` -/
def P1864015803000284897.Spec : Prop :=
  ∀ n, P1864015803000284897.a n = A083913 (n + 1)

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

/-! ## A083913.P478801456116175332

`A001878((n+1)/A006519(n+1))`
-/

namespace A083913.P478801456116175332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A083913.P478801456116175332

namespace A083913

/-- `A001878((n+1)/A006519(n+1))` -/
def P478801456116175332.Spec : Prop :=
  ∀ n, P478801456116175332.a n = A083913 (n + 1)

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

/-! ## A083913.P7119946867088068574

`A001878(A005408(A025480(n)))`
-/

namespace A083913.P7119946867088068574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A005408 (A025480 n).toNat).toNat

end

end A083913.P7119946867088068574

namespace A083913

/-- `A001878(A005408(A025480(n)))` -/
def P7119946867088068574.Spec : Prop :=
  ∀ n, P7119946867088068574.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P15278565746140264245

`A001878(A131738(A153733(n)))`
-/

namespace A083913.P15278565746140264245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A131738 (A153733 n).toNat).toNat

end

end A083913.P15278565746140264245

namespace A083913

/-- `A001878(A131738(A153733(n)))` -/
def P15278565746140264245.Spec : Prop :=
  ∀ n, P15278565746140264245.a n = A083913 (n + 1)

end A083913

/-! ## A083913.P7255682942737091172

`A001878(A025480(n)+A025480(n)+1)`
-/

namespace A083913.P7255682942737091172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A025480 n + (A025480 n + 1)).toNat

end

end A083913.P7255682942737091172

namespace A083913

/-- `A001878(A025480(n)+A025480(n)+1)` -/
def P7255682942737091172.Spec : Prop :=
  ∀ n, P7255682942737091172.a n = A083913 (n + 1)

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

The programs for A083914, the canonical program `A083914.P15521831857978958629` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083914 has offset 1).

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

end A083914

/-! ## A083914.P10869845889708116950

`A001877(gcd(n+1, ∑[char[2*n]]))`
-/

namespace A083914.P10869845889708116950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083914.P10869845889708116950

namespace A083914

/-- `A001877(gcd(n+1, ∑[char[2*n]]))` -/
def P10869845889708116950.Spec : Prop :=
  ∀ n, P10869845889708116950.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P15521831857978958629

`A001877(n+1-lcm(2, n+1)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A083914

/-- `A001877(n+1-lcm(2, n+1)/2)` -/
def P15521831857978958629.Spec : Prop :=
  ∀ n, P15521831857978958629.a n = A083914 (n + 1)

theorem P15521831857978958629.correct : P15521831857978958629.Spec := by
  intro n
  simp only [A083914, Nat.add_sub_cancel]

end A083914

/-! ## A083914.P7701188200692973724

`A001877(A152271(n))`
-/

namespace A083914.P7701188200692973724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A152271 n).toNat

end

end A083914.P7701188200692973724

namespace A083914

/-- `A001877(A152271(n))` -/
def P7701188200692973724.Spec : Prop :=
  ∀ n, P7701188200692973724.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P5125293895113029707

`A001877(∑[A001057(n)])`
-/

namespace A083914.P5125293895113029707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083914.P5125293895113029707

namespace A083914

/-- `A001877(∑[A001057(n)])` -/
def P5125293895113029707.Spec : Prop :=
  ∀ n, P5125293895113029707.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P15381157527293823408

`A001877(A000217(n)%(n+1))`
-/

namespace A083914.P15381157527293823408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Int.tmod (A000217 n) (n + 1 : ℤ)).toNat

end

end A083914.P15381157527293823408

namespace A083914

/-- `A001877(A000217(n)%(n+1))` -/
def P15381157527293823408.Spec : Prop :=
  ∀ n, P15381157527293823408.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P12688668254496622014

`A001877(A002411(n)%(n+1))`
-/

namespace A083914.P12688668254496622014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (Int.tmod (A002411 n) (n + 1 : ℤ)).toNat

end

end A083914.P12688668254496622014

namespace A083914

/-- `A001877(A002411(n)%(n+1))` -/
def P12688668254496622014.Spec : Prop :=
  ∀ n, P12688668254496622014.a n = A083914 (n + 1)

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

/-! ## A083914.P15786566724113436214

`A001877(A142150(n+1))`
-/

namespace A083914.P15786566724113436214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A142150 (n + 1)).toNat

end

end A083914.P15786566724113436214

namespace A083914

/-- `A001877(A142150(n+1))` -/
def P15786566724113436214.Spec : Prop :=
  ∀ n, P15786566724113436214.a n = A083914 (n + 1)

end A083914

/-! ## A083914.P6138154558131228912

`A001877(A166514(n+1))`
-/

namespace A083914.P6138154558131228912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A166514 (n + 1)).toNat

end

end A083914.P6138154558131228912

namespace A083914

/-- `A001877(A166514(n+1))` -/
def P6138154558131228912.Spec : Prop :=
  ∀ n, P6138154558131228912.a n = A083914 (n + 1)

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

The programs for A083915, the canonical program `A083915.P1694659271945774476` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083915 has offset 1).

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

end A083915

/-! ## A083915.P1694659271945774476

`∑{d}[n+1, val(#²+5, 10)]`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A083915.P16342321376723894049

`A320003(A081032(n+1))`
-/

namespace A083915.P16342321376723894049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A081032 (n + 1)).toNat

end

end A083915.P16342321376723894049

namespace A083915

/-- `A320003(A081032(n+1))` -/
def P16342321376723894049.Spec : Prop :=
  ∀ n, P16342321376723894049.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P7754903684127457328

`A320003(A060106(n+1)+1)`
-/

namespace A083915.P7754903684127457328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A060106 (n + 1) + 1).toNat

end

end A083915.P7754903684127457328

namespace A083915

/-- `A320003(A060106(n+1)+1)` -/
def P7754903684127457328.Spec : Prop :=
  ∀ n, P7754903684127457328.a n = A083915 (n + 1)

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

/-! ## A083915.P8516558620728445386

`A320003(A047263(n+2))`
-/

namespace A083915.P8516558620728445386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A047263 (n + 2)).toNat

end

end A083915.P8516558620728445386

namespace A083915

/-- `A320003(A047263(n+2))` -/
def P8516558620728445386.Spec : Prop :=
  ∀ n, P8516558620728445386.a n = A083915 (n + 1)

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

/-! ## A083915.P2078657087105068182

`A083910((n+1)/2^val(n+1, 2)+(n+1)/xor(n, or(n, n+1)))`
-/

namespace A083915.P2078657087105068182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A083915.P2078657087105068182

namespace A083915

/-- `A083910((n+1)/2^val(n+1, 2)+(n+1)/xor(n, or(n, n+1)))` -/
def P2078657087105068182.Spec : Prop :=
  ∀ n, P2078657087105068182.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P10564412077963795326

`A083910((n+1)/round(xor(n, n+1)/2)+(n+1)/2^val(n+1, 2))`
-/

namespace A083915.P10564412077963795326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A083915.P10564412077963795326

namespace A083915

/-- `A083910((n+1)/round(xor(n, n+1)/2)+(n+1)/2^val(n+1, 2))` -/
def P10564412077963795326.Spec : Prop :=
  ∀ n, P10564412077963795326.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P16737297605200059288

`A083910(2*(n+1)/(xor(n, n+1)+1)+(n+1)/xor(n, or(n, n+1)))`
-/

namespace A083915.P16737297605200059288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A083915.P16737297605200059288

namespace A083915

/-- `A083910(2*(n+1)/(xor(n, n+1)+1)+(n+1)/xor(n, or(n, n+1)))` -/
def P16737297605200059288.Spec : Prop :=
  ∀ n, P16737297605200059288.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P18041927055980762140

`A083910(2*(n+1)/(xor(n, n+1)+1)+(n+1)/round(xor(n, n+1)/2))`
-/

namespace A083915.P18041927055980762140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ) + (n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A083915.P18041927055980762140

namespace A083915

/-- `A083910(2*(n+1)/(xor(n, n+1)+1)+(n+1)/round(xor(n, n+1)/2))` -/
def P18041927055980762140.Spec : Prop :=
  ∀ n, P18041927055980762140.a n = A083915 (n + 1)

end A083915

/-! ## A083915.P17936650243723162303

`A083910(2*A000265(n+1))`
-/

namespace A083915.P17936650243723162303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083910 (2 * A000265 (n + 1)).toNat

end

end A083915.P17936650243723162303

namespace A083915

/-- `A083910(2*A000265(n+1))` -/
def P17936650243723162303.Spec : Prop :=
  ∀ n, P17936650243723162303.a n = A083915 (n + 1)

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

/-! ## A083916.P16838479130577092913

`A001878(gcd(xor(1, -n), ∑[n]))`
-/

namespace A083916.P16838479130577092913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A083916.P16838479130577092913

namespace A083916

/-- `A001878(gcd(xor(1, -n), ∑[n]))` -/
def P16838479130577092913.Spec : Prop :=
  ∀ n, P16838479130577092913.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P15331062513401760292

`A001878(gcd(n+1, ceil(n/2)))`
-/

namespace A083916.P15331062513401760292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

end

end A083916.P15331062513401760292

namespace A083916

/-- `A001878(gcd(n+1, ceil(n/2)))` -/
def P15331062513401760292.Spec : Prop :=
  ∀ n, P15331062513401760292.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P8615252703746528418

`A001878(n%2*ceil(n/2))`
-/

namespace A083916.P8615252703746528418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (((n % 2 : ℕ) : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A083916.P8615252703746528418

namespace A083916

/-- `A001878(n%2*ceil(n/2))` -/
def P8615252703746528418.Spec : Prop :=
  ∀ n, P8615252703746528418.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P2893836819162654152

`A001878(A152271(n))`
-/

namespace A083916.P2893836819162654152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A152271 n).toNat

end

end A083916.P2893836819162654152

namespace A083916

/-- `A001878(A152271(n))` -/
def P2893836819162654152.Spec : Prop :=
  ∀ n, P2893836819162654152.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P18185743600678189107

`A001878(∑[A001057(n)])`
-/

namespace A083916.P18185743600678189107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083916.P18185743600678189107

namespace A083916

/-- `A001878(∑[A001057(n)])` -/
def P18185743600678189107.Spec : Prop :=
  ∀ n, P18185743600678189107.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P16906370670418435793

`A001878(Δ[A000217(floor(n/2))])`
-/

namespace A083916.P16906370670418435793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (f1 (n + 1) - f1 n).toNat

end

end A083916.P16906370670418435793

namespace A083916

/-- `A001878(Δ[A000217(floor(n/2))])` -/
def P16906370670418435793.Spec : Prop :=
  ∀ n, P16906370670418435793.a n = A083916 (n + 1)

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

/-! ## A083916.P11955056341832063117

`A001878(n+1-(n+1)/A000034(n))`
-/

namespace A083916.P11955056341832063117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A083916.P11955056341832063117

namespace A083916

/-- `A001878(n+1-(n+1)/A000034(n))` -/
def P11955056341832063117.Spec : Prop :=
  ∀ n, P11955056341832063117.a n = A083916 (n + 1)

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

/-! ## A083916.P7539049989564433714

`A001878(Δ[A166515(n)])`
-/

namespace A083916.P7539049989564433714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (f1 (n + 1) - f1 n).toNat

end

end A083916.P7539049989564433714

namespace A083916

/-- `A001878(Δ[A166515(n)])` -/
def P7539049989564433714.Spec : Prop :=
  ∀ n, P7539049989564433714.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P4877182609531339974

`A001878(A142150(n+1))`
-/

namespace A083916.P4877182609531339974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A142150 (n + 1)).toNat

end

end A083916.P4877182609531339974

namespace A083916

/-- `A001878(A142150(n+1))` -/
def P4877182609531339974.Spec : Prop :=
  ∀ n, P4877182609531339974.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P3327252184099370420

`A001878(A166514(n+1))`
-/

namespace A083916.P3327252184099370420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A166514 (n + 1)).toNat

end

end A083916.P3327252184099370420

namespace A083916

/-- `A001878(A166514(n+1))` -/
def P3327252184099370420.Spec : Prop :=
  ∀ n, P3327252184099370420.a n = A083916 (n + 1)

end A083916

/-! ## A083916.P12446348158966678924

`A001878(A166515(n+1)-A166515(n))`
-/

namespace A083916.P12446348158966678924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A166515 (n + 1) - A166515 n).toNat

end

end A083916.P12446348158966678924

namespace A083916

/-- `A001878(A166515(n+1)-A166515(n))` -/
def P12446348158966678924.Spec : Prop :=
  ∀ n, P12446348158966678924.a n = A083916 (n + 1)

end A083916

/-!
# A083917: Number of divisors of n that are congruent to 7 modulo 10.

The programs for A083917, the canonical program `A083917.P4566676204785968317` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083917 has offset 1).

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

end A083917

/-! ## A083917.P4566676204785968317

`∑{d}[n+1, val(#%10+3, 10)]`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A083917.P11130698397002932468

`A001877(A000265(n+1))`
-/

namespace A083917.P11130698397002932468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A000265 (n + 1)).toNat

end

end A083917.P11130698397002932468

namespace A083917

/-- `A001877(A000265(n+1))` -/
def P11130698397002932468.Spec : Prop :=
  ∀ n, P11130698397002932468.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P14228173298490162610

`A001877(A132740(n+1))`
-/

namespace A083917.P14228173298490162610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A132740 (n + 1)).toNat

end

end A083917.P14228173298490162610

namespace A083917

/-- `A001877(A132740(n+1))` -/
def P14228173298490162610.Spec : Prop :=
  ∀ n, P14228173298490162610.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P2105280724702026892

`A001877(2*A025480(n)+1)`
-/

namespace A083917.P2105280724702026892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (2 * A025480 n + 1).toNat

end

end A083917.P2105280724702026892

namespace A083917

/-- `A001877(2*A025480(n)+1)` -/
def P2105280724702026892.Spec : Prop :=
  ∀ n, P2105280724702026892.a n = A083917 (n + 1)

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

end A083917

/-! ## A083917.P8630868144628683219

`A001877((n+1)/A006519(n+1))`
-/

namespace A083917.P8630868144628683219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A083917.P8630868144628683219

namespace A083917

/-- `A001877((n+1)/A006519(n+1))` -/
def P8630868144628683219.Spec : Prop :=
  ∀ n, P8630868144628683219.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P17469413230681863909

`A001877(A005408(A025480(n)))`
-/

namespace A083917.P17469413230681863909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A005408 (A025480 n).toNat).toNat

end

end A083917.P17469413230681863909

namespace A083917

/-- `A001877(A005408(A025480(n)))` -/
def P17469413230681863909.Spec : Prop :=
  ∀ n, P17469413230681863909.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P15319073026818221644

`A001877(A025480(n)+A025480(n)+1)`
-/

namespace A083917.P15319073026818221644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (A025480 n + (A025480 n + 1)).toNat

end

end A083917.P15319073026818221644

namespace A083917

/-- `A001877(A025480(n)+A025480(n)+1)` -/
def P15319073026818221644.Spec : Prop :=
  ∀ n, P15319073026818221644.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P12424543687302277004

`A083914(2*A000265(n+1))`
-/

namespace A083917.P12424543687302277004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * A000265 (n + 1)).toNat

end

end A083917.P12424543687302277004

namespace A083917

/-- `A083914(2*A000265(n+1))` -/
def P12424543687302277004.Spec : Prop :=
  ∀ n, P12424543687302277004.a n = A083917 (n + 1)

end A083917

/-! ## A083917.P3167906388694140130

`A083914(lcm(2, A000265(n+1)))`
-/

namespace A083917.P3167906388694140130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (Int.lcm 2 (A000265 (n + 1)))

end

end A083917.P3167906388694140130

namespace A083917

/-- `A083914(lcm(2, A000265(n+1)))` -/
def P3167906388694140130.Spec : Prop :=
  ∀ n, P3167906388694140130.a n = A083917 (n + 1)

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

The programs for A083918, the canonical program `A083918.P6152787378875264210` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083918 has offset 1).

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

end A083918

/-! ## A083918.P6152787378875264210

`Δ[A218447(floor(n/2))]`

The canonical program, it is in `Seq.B001.C002`.
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

/-! ## A083918.P16584688239575861528

`A001899(gcd(n+1, ∑[gcd(2, n)]))`
-/

namespace A083918.P16584688239575861528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083918.P16584688239575861528

namespace A083918

/-- `A001899(gcd(n+1, ∑[gcd(2, n)]))` -/
def P16584688239575861528.Spec : Prop :=
  ∀ n, P16584688239575861528.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P4227179310537881149

`A001899(A152271(n))`
-/

namespace A083918.P4227179310537881149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A152271 n).toNat

end

end A083918.P4227179310537881149

namespace A083918

/-- `A001899(A152271(n))` -/
def P4227179310537881149.Spec : Prop :=
  ∀ n, P4227179310537881149.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P1901349334970012543

`A001899(∑[A001057(n)])`
-/

namespace A083918.P1901349334970012543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083918.P1901349334970012543

namespace A083918

/-- `A001899(∑[A001057(n)])` -/
def P1901349334970012543.Spec : Prop :=
  ∀ n, P1901349334970012543.a n = A083918 (n + 1)

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

/-! ## A083918.P12901956907505949578

`A001899(A142150(n+1))`
-/

namespace A083918.P12901956907505949578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A142150 (n + 1)).toNat

end

end A083918.P12901956907505949578

namespace A083918

/-- `A001899(A142150(n+1))` -/
def P12901956907505949578.Spec : Prop :=
  ∀ n, P12901956907505949578.a n = A083918 (n + 1)

end A083918

/-! ## A083918.P7944248161250294856

`A001899(A166514(n+1))`
-/

namespace A083918.P7944248161250294856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A166514 (n + 1)).toNat

end

end A083918.P7944248161250294856

namespace A083918

/-- `A001899(A166514(n+1))` -/
def P7944248161250294856.Spec : Prop :=
  ∀ n, P7944248161250294856.a n = A083918 (n + 1)

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

The programs for A083919, the canonical program `A083919.P9599260367588607406` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083919 has offset 1).

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

end A083919

/-! ## A083919.P9599260367588607406

`∑{d}[n+1, C(#%10, 9)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A083919

/-- `∑{d}[n+1, C(#%10, 9)]` -/
def P9599260367588607406.Spec : Prop :=
  ∀ n, (P9599260367588607406.a n : ℤ) = A083919 (n + 1)

theorem P9599260367588607406.correct : P9599260367588607406.Spec := by
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

/-! ## A083919.P4062458465321863825

`A001899(A000265(n+1))`
-/

namespace A083919.P4062458465321863825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A000265 (n + 1)).toNat

end

end A083919.P4062458465321863825

namespace A083919

/-- `A001899(A000265(n+1))` -/
def P4062458465321863825.Spec : Prop :=
  ∀ n, P4062458465321863825.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P7444274181909856835

`A001899(A132740(n+1))`
-/

namespace A083919.P7444274181909856835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A132740 (n + 1)).toNat

end

end A083919.P7444274181909856835

namespace A083919

/-- `A001899(A132740(n+1))` -/
def P7444274181909856835.Spec : Prop :=
  ∀ n, P7444274181909856835.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P7833158524456899428

`A001899(A153733(n)+1)`
-/

namespace A083919.P7833158524456899428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A153733 n + 1).toNat

end

end A083919.P7833158524456899428

namespace A083919

/-- `A001899(A153733(n)+1)` -/
def P7833158524456899428.Spec : Prop :=
  ∀ n, P7833158524456899428.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P14597894575500612808

`A001899(2*A025480(n)+1)`
-/

namespace A083919.P14597894575500612808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (2 * A025480 n + 1).toNat

end

end A083919.P14597894575500612808

namespace A083919

/-- `A001899(2*A025480(n)+1)` -/
def P14597894575500612808.Spec : Prop :=
  ∀ n, P14597894575500612808.a n = A083919 (n + 1)

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

/-! ## A083919.P10869721700565035120

`A001899((n+1)/A006519(n+1))`
-/

namespace A083919.P10869721700565035120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A083919.P10869721700565035120

namespace A083919

/-- `A001899((n+1)/A006519(n+1))` -/
def P10869721700565035120.Spec : Prop :=
  ∀ n, P10869721700565035120.a n = A083919 (n + 1)

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

/-! ## A083919.P6839128226317099980

`A001899(A005408(A025480(n)))`
-/

namespace A083919.P6839128226317099980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A005408 (A025480 n).toNat).toNat

end

end A083919.P6839128226317099980

namespace A083919

/-- `A001899(A005408(A025480(n)))` -/
def P6839128226317099980.Spec : Prop :=
  ∀ n, P6839128226317099980.a n = A083919 (n + 1)

end A083919

/-! ## A083919.P5207049611969913156

`A001899(A025480(n)+A025480(n)+1)`
-/

namespace A083919.P5207049611969913156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A025480 n + (A025480 n + 1)).toNat

end

end A083919.P5207049611969913156

namespace A083919

/-- `A001899(A025480(n)+A025480(n)+1)` -/
def P5207049611969913156.Spec : Prop :=
  ∀ n, P5207049611969913156.a n = A083919 (n + 1)

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

/-!
# A083920: Number of nontriangular numbers <= n.

The programs for A083920, the canonical program `A083920.P13248752610546876947` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083920 has offset 0).

The definition of A083920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083920.P13248752610546876947

`n-floor(sqrt(2*n+1)-1/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A083920

/-- `n-floor(sqrt(2*n+1)-1/2)` -/
def P13248752610546876947.Spec : Prop :=
  ∀ n, P13248752610546876947.a n = A083920 n

theorem P13248752610546876947.correct : P13248752610546876947.Spec := by
  intro n
  simp only [A083920]

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

/-! ## A083920.P4244512868721264691

`-(∑[char[∑[n]]]+xor(n, -1))`
-/

namespace A083920.P4244512868721264691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.xor (n : ℤ) (-1))

end

end A083920.P4244512868721264691

namespace A083920

/-- `-(∑[char[∑[n]]]+xor(n, -1))` -/
def P4244512868721264691.Spec : Prop :=
  ∀ n, P4244512868721264691.a n = A083920 n

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

/-! ## A083920.P11335232410040962078

`∑[2-A035214(n)]`
-/

namespace A083920.P11335232410040962078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P11335232410040962078

namespace A083920

/-- `∑[2-A035214(n)]` -/
def P11335232410040962078.Spec : Prop :=
  ∀ n, P11335232410040962078.a n = A083920 n

end A083920

/-! ## A083920.P136395185756709056

`∑[1-A106459(n)²]`
-/

namespace A083920.P136395185756709056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106459 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P136395185756709056

namespace A083920

/-- `∑[1-A106459(n)²]` -/
def P136395185756709056.Spec : Prop :=
  ∀ n, P136395185756709056.a n = A083920 n

end A083920

/-! ## A083920.P4595782823094067633

`∑[char[A014132(n+1)]]`
-/

namespace A083920.P4595782823094067633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P4595782823094067633

namespace A083920

/-- `∑[char[A014132(n+1)]]` -/
def P4595782823094067633.Spec : Prop :=
  ∀ n, (P4595782823094067633.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P6723150427190784438

`∑[char[A132128(n+2)]]`
-/

namespace A083920.P6723150427190784438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132128 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083920.P6723150427190784438

namespace A083920

/-- `∑[char[A132128(n+2)]]` -/
def P6723150427190784438.Spec : Prop :=
  ∀ n, (P6723150427190784438.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P12651853466452308872

`Δ[A125811(n)]`
-/

namespace A083920.P12651853466452308872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083920.P12651853466452308872

namespace A083920

/-- `Δ[A125811(n)]` -/
def P12651853466452308872.Spec : Prop :=
  ∀ n, P12651853466452308872.a n = A083920 n

end A083920

/-! ## A083920.P7709508145414311791

`A080344(A061885(n))`
-/

namespace A083920.P7709508145414311791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 (A061885 n).toNat

end

end A083920.P7709508145414311791

namespace A083920

/-- `A080344(A061885(n))` -/
def P7709508145414311791.Spec : Prop :=
  ∀ n, P7709508145414311791.a n = A083920 n

end A083920

/-! ## A083920.P389849146939600528

`A336861(A001614(n+1))`
-/

namespace A083920.P389849146939600528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336861 (A001614 (n + 1)).toNat

end

end A083920.P389849146939600528

namespace A083920

/-- `A336861(A001614(n+1))` -/
def P389849146939600528.Spec : Prop :=
  ∀ n, P389849146939600528.a n = A083920 n

end A083920

/-! ## A083920.P15379506256468388220

`A123579(A111138(n+1))`
-/

namespace A083920.P15379506256468388220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (A111138 (n + 1)).toNat

end

end A083920.P15379506256468388220

namespace A083920

/-- `A123579(A111138(n+1))` -/
def P15379506256468388220.Spec : Prop :=
  ∀ n, P15379506256468388220.a n = A083920 n

end A083920

/-! ## A083920.P16989042830951990267

`A117370(A395360(n+2))`
-/

namespace A083920.P16989042830951990267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117370 (A395360 (n + 2)).toNat

end

end A083920.P16989042830951990267

namespace A083920

/-- `A117370(A395360(n+2))` -/
def P16989042830951990267.Spec : Prop :=
  ∀ n, P16989042830951990267.a n = A083920 n

end A083920

/-! ## A083920.P17837034146639191354

`val(A344068(n), 9)`
-/

namespace A083920.P17837034146639191354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344068 n).toNat 9

end

end A083920.P17837034146639191354

namespace A083920

/-- `val(A344068(n), 9)` -/
def P17837034146639191354.Spec : Prop :=
  ∀ n, (P17837034146639191354.a n : ℤ) = A083920 n

end A083920

/-! ## A083920.P10533287711161226154

`A124757(A089633(n+1))`
-/

namespace A083920.P10533287711161226154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A089633 (n + 1)).toNat

end

end A083920.P10533287711161226154

namespace A083920

/-- `A124757(A089633(n+1))` -/
def P10533287711161226154.Spec : Prop :=
  ∀ n, P10533287711161226154.a n = A083920 n

end A083920

/-! ## A083920.P12685389297825493405

`A340068(A173786(n))`
-/

namespace A083920.P12685389297825493405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340068 (A173786 n).toNat

end

end A083920.P12685389297825493405

namespace A083920

/-- `A340068(A173786(n))` -/
def P12685389297825493405.Spec : Prop :=
  ∀ n, P12685389297825493405.a n = A083920 n

end A083920

/-!
# A083921: Start with (1,2) and then concatenate 2^n+1 previous terms, n>=0 and add 2 if a(2^n+1)=1 or add 1 if a(2^n+1)=2.

The programs for A083921, the canonical program `A083921.P10190222312316042375` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083921 has offset 1).

The definition of A083921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083921.P10190222312316042375

`gcd(2, A082691(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083921

/-- `gcd(2, A082691(n+1))` -/
def P10190222312316042375.Spec : Prop :=
  ∀ n, (P10190222312316042375.a n : ℤ) = A083921 (n + 1)

theorem P10190222312316042375.correct : P10190222312316042375.Spec := by
  intro n
  simp only [A083921, Nat.add_sub_cancel]

end A083921

/-! ## A083921.P2482369630369064407

`gcd(1-a(n-1), A308186(n+1))` with `a(0)=1`
-/

namespace A083921.P2482369630369064407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (1 - (a (n - 1) : ℤ)) (A308186 (n + 1))

end

end A083921.P2482369630369064407

namespace A083921

/-- `gcd(1-a(n-1), A308186(n+1))` -/
def P2482369630369064407.Spec : Prop :=
  ∀ n, (P2482369630369064407.a n : ℤ) = A083921 (n + 1)

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

/-! ## A083921.P14562049915093228090

`A134451(A082691(n+1)+2)`
-/

namespace A083921.P14562049915093228090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A082691 (n + 1) + 2).toNat

end

end A083921.P14562049915093228090

namespace A083921

/-- `A134451(A082691(n+1)+2)` -/
def P14562049915093228090.Spec : Prop :=
  ∀ n, P14562049915093228090.a n = A083921 (n + 1)

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

/-! ## A083921.P998929147807884331

`A040001(A082691(n+1)+n+n)`
-/

namespace A083921.P998929147807884331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A082691 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A083921.P998929147807884331

namespace A083921

/-- `A040001(A082691(n+1)+n+n)` -/
def P998929147807884331.Spec : Prop :=
  ∀ n, P998929147807884331.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P2741832137253340155

`(A082691(n+1)+A004768(n))%2+1`
-/

namespace A083921.P2741832137253340155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082691 (n + 1) + A004768 n) 2 + 1

end

end A083921.P2741832137253340155

namespace A083921

/-- `(A082691(n+1)+A004768(n))%2+1` -/
def P2741832137253340155.Spec : Prop :=
  ∀ n, P2741832137253340155.a n = A083921 (n + 1)

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

/-! ## A083921.P7646688400715897862

`A260295(and(a(n-1), A308185(n+1)))` with `a(0)=1`
-/

namespace A083921.P7646688400715897862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260295 (Int.land (a (n - 1)) (A308185 (n + 1))).toNat

end

end A083921.P7646688400715897862

namespace A083921

/-- `A260295(and(a(n-1), A308185(n+1)))` -/
def P7646688400715897862.Spec : Prop :=
  ∀ n, P7646688400715897862.a n = A083921 (n + 1)

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

/-! ## A083921.P13438937705143433574

`A040001(A008574(n)-A082691(n+1))`
-/

namespace A083921.P13438937705143433574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A008574 n - A082691 (n + 1)).toNat

end

end A083921.P13438937705143433574

namespace A083921

/-- `A040001(A008574(n)-A082691(n+1))` -/
def P13438937705143433574.Spec : Prop :=
  ∀ n, P13438937705143433574.a n = A083921 (n + 1)

end A083921

/-! ## A083921.P7413913966136759983

`A040001(xor(A008574(n), A082691(n+1)))`
-/

namespace A083921.P7413913966136759983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.xor (A008574 n) (A082691 (n + 1))).toNat

end

end A083921.P7413913966136759983

namespace A083921

/-- `A040001(xor(A008574(n), A082691(n+1)))` -/
def P7413913966136759983.Spec : Prop :=
  ∀ n, P7413913966136759983.a n = A083921 (n + 1)

end A083921

/-!
# A083922: Partial sums of A083921.

The programs for A083922, the canonical program `A083922.P13071502860721527938` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083922 has offset 1).

The definition of A083922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083922.P13071502860721527938

`∑[A083921(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A083922

/-- `∑[A083921(n+1)]` -/
def P13071502860721527938.Spec : Prop :=
  ∀ n, P13071502860721527938.a n = A083922 (n + 1)

theorem P13071502860721527938.correct : P13071502860721527938.Spec := by
  intro n
  simp only [A083922, Nat.add_sub_cancel]

end A083922

/-! ## A083922.P6361561396061130945

`∑[gcd(2, A082691(n+1))]`
-/

namespace A083922.P6361561396061130945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A082691 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P6361561396061130945

namespace A083922

/-- `∑[gcd(2, A082691(n+1))]` -/
def P6361561396061130945.Spec : Prop :=
  ∀ n, (P6361561396061130945.a n : ℤ) = A083922 (n + 1)

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

/-! ## A083923.P1766074542236792731

`char[eq[1, A057515(n)]]`
-/

namespace A083923.P1766074542236792731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A083923.P1766074542236792731

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

/-! ## A083924.P11719326106888475543

`A083923(A057163(n))`
-/

namespace A083924.P11719326106888475543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A057163 n).toNat

end

end A083924.P11719326106888475543

namespace A083924

/-- `A083923(A057163(n))` -/
def P11719326106888475543.Spec : Prop :=
  ∀ n, P11719326106888475543.a n = A083924 n

end A083924

/-! ## A083924.P7920813244571094271

`A083923(A057501(n))`
-/

namespace A083924.P7920813244571094271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A057501 n).toNat

end

end A083924.P7920813244571094271

namespace A083924

/-- `A083923(A057501(n))` -/
def P7920813244571094271.Spec : Prop :=
  ∀ n, P7920813244571094271.a n = A083924 n

end A083924

/-! ## A083924.P16759580557525742068

`A083923(A057503(n))`
-/

namespace A083924.P16759580557525742068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A057503 n).toNat

end

end A083924.P16759580557525742068

namespace A083924

/-- `A083923(A057503(n))` -/
def P16759580557525742068.Spec : Prop :=
  ∀ n, P16759580557525742068.a n = A083924 n

end A083924

/-! ## A083924.P4724298552047011096

`A083923(A057505(n))`
-/

namespace A083924.P4724298552047011096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A057505 n).toNat

end

end A083924.P4724298552047011096

namespace A083924

/-- `A083923(A057505(n))` -/
def P4724298552047011096.Spec : Prop :=
  ∀ n, P4724298552047011096.a n = A083924 n

end A083924

/-! ## A083924.P5429918599626443098

`A083923(A069767(n))`
-/

namespace A083924.P5429918599626443098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A069767 n).toNat

end

end A083924.P5429918599626443098

namespace A083924

/-- `A083923(A069767(n))` -/
def P5429918599626443098.Spec : Prop :=
  ∀ n, P5429918599626443098.a n = A083924 n

end A083924

/-! ## A083924.P3056950371656152252

`A083923(A069768(n))`
-/

namespace A083924.P3056950371656152252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A069768 n).toNat

end

end A083924.P3056950371656152252

namespace A083924

/-- `A083923(A069768(n))` -/
def P3056950371656152252.Spec : Prop :=
  ∀ n, P3056950371656152252.a n = A083924 n

end A083924

/-! ## A083924.P4569332327545700383

`A083923(A069770(n))`
-/

namespace A083924.P4569332327545700383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A069770 n).toNat

end

end A083924.P4569332327545700383

namespace A083924

/-- `A083923(A069770(n))` -/
def P4569332327545700383.Spec : Prop :=
  ∀ n, P4569332327545700383.a n = A083924 n

end A083924

/-! ## A083924.P12505286953994873447

`A083923(A069774(n))`
-/

namespace A083924.P12505286953994873447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A069774 n).toNat

end

end A083924.P12505286953994873447

namespace A083924

/-- `A083923(A069774(n))` -/
def P12505286953994873447.Spec : Prop :=
  ∀ n, P12505286953994873447.a n = A083924 n

end A083924

/-! ## A083924.P11175287501365605532

`A083923(A069889(n))`
-/

namespace A083924.P11175287501365605532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A069889 n).toNat

end

end A083924.P11175287501365605532

namespace A083924

/-- `A083923(A069889(n))` -/
def P11175287501365605532.Spec : Prop :=
  ∀ n, P11175287501365605532.a n = A083924 n

end A083924

/-! ## A083924.P339448888869245671

`A083923(A071655(n))`
-/

namespace A083924.P339448888869245671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A071655 n).toNat

end

end A083924.P339448888869245671

namespace A083924

/-- `A083923(A071655(n))` -/
def P339448888869245671.Spec : Prop :=
  ∀ n, P339448888869245671.a n = A083924 n

end A083924

/-! ## A083924.P8391128242620057497

`A083923(A071657(n))`
-/

namespace A083924.P8391128242620057497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A071657 n).toNat

end

end A083924.P8391128242620057497

namespace A083924

/-- `A083923(A071657(n))` -/
def P8391128242620057497.Spec : Prop :=
  ∀ n, P8391128242620057497.a n = A083924 n

end A083924

/-! ## A083924.P14811187993897920148

`A083923(A071659(n))`
-/

namespace A083924.P14811187993897920148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A071659 n).toNat

end

end A083924.P14811187993897920148

namespace A083924

/-- `A083923(A071659(n))` -/
def P14811187993897920148.Spec : Prop :=
  ∀ n, P14811187993897920148.a n = A083924 n

end A083924

/-! ## A083924.P9231952492721413145

`A083923(A072090(n))`
-/

namespace A083924.P9231952492721413145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A072090 n).toNat

end

end A083924.P9231952492721413145

namespace A083924

/-- `A083923(A072090(n))` -/
def P9231952492721413145.Spec : Prop :=
  ∀ n, P9231952492721413145.a n = A083924 n

end A083924

/-! ## A083924.P14932824660975624794

`A083923(A072092(n))`
-/

namespace A083924.P14932824660975624794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A072092 n).toNat

end

end A083924.P14932824660975624794

namespace A083924

/-- `A083923(A072092(n))` -/
def P14932824660975624794.Spec : Prop :=
  ∀ n, P14932824660975624794.a n = A083924 n

end A083924

/-! ## A083924.P6704442051892558510

`A083923(A072094(n))`
-/

namespace A083924.P6704442051892558510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A072094 n).toNat

end

end A083924.P6704442051892558510

namespace A083924

/-- `A083923(A072094(n))` -/
def P6704442051892558510.Spec : Prop :=
  ∀ n, P6704442051892558510.a n = A083924 n

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

/-! ## A083925.P7914556897479737037

`A083926(A069768(n*A083923(n)))`
-/

namespace A083925.P7914556897479737037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A069768 ((n : ℤ) * A083923 n).toNat).toNat

end

end A083925.P7914556897479737037

/-! ## A083925.P4818608176649451489

`A083926(A069770(n*A083923(n)))`
-/

namespace A083925.P4818608176649451489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A069770 ((n : ℤ) * A083923 n).toNat).toNat

end

end A083925.P4818608176649451489

/-! ## A083925.P10397949719039543522

`A083926(A074679(n*A083923(n)))`
-/

namespace A083925.P10397949719039543522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A074679 ((n : ℤ) * A083923 n).toNat).toNat

end

end A083925.P10397949719039543522

/-! ## A083925.P16385710805167831696

`A083926(A057162(n))`
-/

namespace A083925.P16385710805167831696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A057162 n).toNat

end

end A083925.P16385710805167831696

/-! ## A083925.P9204884291833696675

`A083926(A057502(n))`
-/

namespace A083925.P9204884291833696675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A057502 n).toNat

end

end A083925.P9204884291833696675

/-! ## A083925.P1278134198747418312

`A083926(A069768(n))`
-/

namespace A083925.P1278134198747418312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A069768 n).toNat

end

end A083925.P1278134198747418312

/-! ## A083925.P4174686032963539746

`A083926(A069770(n))`
-/

namespace A083925.P4174686032963539746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A069770 n).toNat

end

end A083925.P4174686032963539746

/-! ## A083925.P6367117018580914951

`A083926(A069773(n))`
-/

namespace A083925.P6367117018580914951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A069773 n).toNat

end

end A083925.P6367117018580914951

/-! ## A083925.P6440036174833739509

`A083926(A071656(n))`
-/

namespace A083925.P6440036174833739509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A071656 n).toNat

end

end A083925.P6440036174833739509

/-! ## A083925.P16427372223266855075

`A083926(A071658(n))`
-/

namespace A083925.P16427372223266855075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A071658 n).toNat

end

end A083925.P16427372223266855075

/-! ## A083925.P17136527694204691275

`A083926(A071660(n))`
-/

namespace A083925.P17136527694204691275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A071660 n).toNat

end

end A083925.P17136527694204691275

/-! ## A083925.P7123534452041048741

`A083926(A072091(n))`
-/

namespace A083925.P7123534452041048741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A072091 n).toNat

end

end A083925.P7123534452041048741

/-! ## A083925.P17208435234640822950

`A083926(A072093(n))`
-/

namespace A083925.P17208435234640822950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A072093 n).toNat

end

end A083925.P17208435234640822950

/-! ## A083925.P8450833837447564080

`A083926(A072095(n))`
-/

namespace A083925.P8450833837447564080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A072095 n).toNat

end

end A083925.P8450833837447564080

/-! ## A083925.P10253006043411568064

`A083926(A073269(n))`
-/

namespace A083925.P10253006043411568064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A073269 n).toNat

end

end A083925.P10253006043411568064

/-! ## A083925.P16934475496469042266

`A083926(A074679(n))`
-/

namespace A083925.P16934475496469042266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A074679 n).toNat

end

end A083925.P16934475496469042266

/-! ## A083925.P5755845500418111960

`A083926(A082346(n))`
-/

namespace A083925.P5755845500418111960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 (A082346 n).toNat

end

end A083925.P5755845500418111960

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

/-! ## A083926.P9279498119161295238

`A083925(A057501(n))`
-/

namespace A083926.P9279498119161295238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A057501 n).toNat

end

end A083926.P9279498119161295238

/-! ## A083926.P12675741852132759918

`A083925(A069767(n))`
-/

namespace A083926.P12675741852132759918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A069767 n).toNat

end

end A083926.P12675741852132759918

/-! ## A083926.P10152958106555254951

`A083925(A069770(n))`
-/

namespace A083926.P10152958106555254951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A069770 n).toNat

end

end A083926.P10152958106555254951

/-! ## A083926.P2596104414209828083

`A083925(A069774(n))`
-/

namespace A083926.P2596104414209828083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A069774 n).toNat

end

end A083926.P2596104414209828083

/-! ## A083926.P6438540788933291894

`A083925(A071655(n))`
-/

namespace A083926.P6438540788933291894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A071655 n).toNat

end

end A083926.P6438540788933291894

/-! ## A083926.P11474152783542968675

`A083925(A071657(n))`
-/

namespace A083926.P11474152783542968675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A071657 n).toNat

end

end A083926.P11474152783542968675

/-! ## A083926.P7805080068986926394

`A083925(A071659(n))`
-/

namespace A083926.P7805080068986926394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A071659 n).toNat

end

end A083926.P7805080068986926394

/-! ## A083926.P16821488627674383919

`A083925(A072090(n))`
-/

namespace A083926.P16821488627674383919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A072090 n).toNat

end

end A083926.P16821488627674383919

/-! ## A083926.P14268348829972622824

`A083925(A072092(n))`
-/

namespace A083926.P14268348829972622824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A072092 n).toNat

end

end A083926.P14268348829972622824

/-! ## A083926.P8162644158382375264

`A083925(A072094(n))`
-/

namespace A083926.P8162644158382375264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A072094 n).toNat

end

end A083926.P8162644158382375264

/-! ## A083926.P8071751928258352648

`A083925(A073270(n))`
-/

namespace A083926.P8071751928258352648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A073270 n).toNat

end

end A083926.P8071751928258352648

/-! ## A083926.P17577796656296898590

`A083925(A074680(n))`
-/

namespace A083926.P17577796656296898590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A074680 n).toNat

end

end A083926.P17577796656296898590

/-! ## A083926.P12890280064478963801

`A083925(A082345(n))`
-/

namespace A083926.P12890280064478963801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A082345 n).toNat

end

end A083926.P12890280064478963801

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

/-! ## A083926.P1833617225262865074

`A083925(A129610(n))`
-/

namespace A083926.P1833617225262865074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A129610 n).toNat

end

end A083926.P1833617225262865074

/-! ## A083926.P4544967866124318093

`A083925(A129612(n))`
-/

namespace A083926.P4544967866124318093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083925 (A129612 n).toNat

end

end A083926.P4544967866124318093

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

/-! ## A083927.P6423463354913022504

`A083935(A130395(n))`
-/

namespace A083927.P6423463354913022504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 (A130395 n).toNat

end

end A083927.P6423463354913022504

/-! ## A083927.P9376318824864758819

`char[A000005(A264355(n+1))]*A264394(n)`
-/

namespace A083927.P9376318824864758819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A264355 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A264394 n

end

end A083927.P9376318824864758819

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

/-! ## A083927.P9620737416331737351

`A083935(A122336(n))`
-/

namespace A083927.P9620737416331737351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 (A122336 n).toNat

end

end A083927.P9620737416331737351

/-! ## A083927.P7829304000829238147

`A083935(A102799(n+1))`
-/

namespace A083927.P7829304000829238147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083935 (A102799 (n + 1)).toNat

end

end A083927.P7829304000829238147

/-! ## A083927.P12532898069329641216

`and(A136665(n+1), A324642(n+1))`
-/

namespace A083927.P12532898069329641216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136665 (n + 1)) (A324642 (n + 1))

end

end A083927.P12532898069329641216

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

/-! ## A083928.P5601001107089910381

`A083929(A082326(n))`
-/

namespace A083928.P5601001107089910381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A082326 n).toNat

end

end A083928.P5601001107089910381

/-! ## A083928.P8434793862637856061

`A083929(A085174(n))`
-/

namespace A083928.P8434793862637856061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A085174 n).toNat

end

end A083928.P8434793862637856061

/-! ## A083928.P8235746643450596296

`A083929(A130987(n))`
-/

namespace A083928.P8235746643450596296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083929 (A130987 n).toNat

end

end A083928.P8235746643450596296

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

/-! ## A083929.P11280307306995367478

`A083927(A083926(A069770(n)))`
-/

namespace A083929.P11280307306995367478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A083926 (A069770 n).toNat).toNat

end

end A083929.P11280307306995367478

/-! ## A083929.P8913936385415754475

`A083927(A083926(A074679(n)))`
-/

namespace A083929.P8913936385415754475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A083926 (A074679 n).toNat).toNat

end

end A083929.P8913936385415754475

/-! ## A083929.P11818751549196552833

`A083927(A057163(A083926(A057163(n))))`
-/

namespace A083929.P11818751549196552833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A057163 (A083926 (A057163 n).toNat).toNat).toNat

end

end A083929.P11818751549196552833

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

/-! ## A083929.P11866966080166930625

`A083928(A082325(n))`
-/

namespace A083929.P11866966080166930625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A082325 n).toNat

end

end A083929.P11866966080166930625

/-! ## A083929.P13806118587214017220

`A083928(A085173(n))`
-/

namespace A083929.P13806118587214017220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A085173 n).toNat

end

end A083929.P13806118587214017220

/-! ## A083929.P7594736879508065297

`A083928(A125980(n))`
-/

namespace A083929.P7594736879508065297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083928 (A125980 n).toNat

end

end A083929.P7594736879508065297

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

/-! ## A083931.P17099938411846418576

`A000695(2*A057520(n))`
-/

namespace A083931.P17099938411846418576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (2 * A057520 n).toNat

end

end A083931.P17099938411846418576

/-! ## A083931.P17047456601770735409

`A000695(A194045(n)/2)`
-/

namespace A083931.P17047456601770735409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A083931.P17047456601770735409

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

/-! ## A083931.P126340858786275167

`A000695(A005843(A057520(n)))`
-/

namespace A083931.P126340858786275167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A005843 (A057520 n).toNat).toNat

end

end A083931.P126340858786275167

/-! ## A083931.P17506094129627737525

`A000695(A078898(A194045(n)))`
-/

namespace A083931.P17506094129627737525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A078898 (A194045 n).toNat).toNat

end

end A083931.P17506094129627737525

/-! ## A083931.P11205336240315230439

`A000695(A057520(n)+A057520(n))`
-/

namespace A083931.P11205336240315230439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A057520 n + A057520 n).toNat

end

end A083931.P11205336240315230439

/-! ## A083931.P5648545029992244076

`and(A083932(n), A088556(n+1))`
-/

namespace A083931.P5648545029992244076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083932 n) (A088556 (n + 1))

end

end A083931.P5648545029992244076

/-! ## A083931.P13200931258231008644

`and(A083932(n), A155721(n+1))`
-/

namespace A083931.P13200931258231008644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083932 n) (A155721 (n + 1))

end

end A083931.P13200931258231008644

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

/-! ## A083932.P169641968212934627

`12*A000695(A057520(n))`
-/

namespace A083932.P169641968212934627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000695 (A057520 n).toNat

end

end A083932.P169641968212934627

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

/-! ## A083932.P2455902613718944214

`A001196(2*A057520(n))`
-/

namespace A083932.P2455902613718944214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (2 * A057520 n).toNat

end

end A083932.P2455902613718944214

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

/-! ## A083934.P14782703995078219384

`eq[0, A309952(A072800(n))]`
-/

namespace A083934.P14782703995078219384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A072800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083934.P14782703995078219384

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

/-! ## A083935.P2581840573120002604

`A083927(A130396(n))`
-/

namespace A083935.P2581840573120002604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A130396 n).toNat

end

end A083935.P2581840573120002604

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

/-! ## A083935.P3996163125028645905

`A083927(A122335(n))`
-/

namespace A083935.P3996163125028645905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083927 (A122335 n).toNat

end

end A083935.P3996163125028645905

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

/-! ## A083936.P203302951896078902

`A057547(A057123(n))%A085441(n+1)`
-/

namespace A083936.P203302951896078902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057547 (A057123 n).toNat) (A085441 (n + 1))

end

end A083936.P203302951896078902

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

/-! ## A083937.P11804675755073637573

`A014486(A000108(A072643(n))+n)`
-/

namespace A083937.P11804675755073637573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A000108 (A072643 n).toNat + (n : ℤ)).toNat

end

end A083937.P11804675755073637573

/-! ## A083937.P8829873807730767364

`A014486(A057548(n))-A014486(n)`
-/

namespace A083937.P8829873807730767364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057548 n).toNat - A014486 n

end

end A083937.P8829873807730767364

/-! ## A083937.P875066144909919364

`A014486(A057508(A085223(A057508(n))))`
-/

namespace A083937.P875066144909919364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A057508 (A085223 (A057508 n).toNat).toNat).toNat

end

end A083937.P875066144909919364

/-! ## A083937.P7829783293678301979

`A014486(A069770(A057548(n)))`
-/

namespace A083937.P7829783293678301979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A069770 (A057548 n).toNat).toNat

end

end A083937.P7829783293678301979

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

/-! ## A083938.P1631408368605101694

`A072764(eq[A072764(n), A072766(n)])`
-/

namespace A083938.P1631408368605101694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072764 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A083938.P1631408368605101694

/-! ## A083938.P1990771250557620922

`A072766(A110654(comp[2*(n+1)]²))`
-/

namespace A083938.P1990771250557620922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072766 (A110654 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2)).toNat

end

end A083938.P1990771250557620922

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

/-! ## A083939.P5961704162313761309

`A194045(A083938(n))/A020639(2*(n+1))`
-/

namespace A083939.P5961704162313761309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 (A083938 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A083939.P5961704162313761309

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

/-! ## A083941.P17643778928489899953

`A014486(eq[n, A057163(n)])`
-/

namespace A083941.P17643778928489899953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083941.P17643778928489899953

/-! ## A083941.P9308806677200676946

`A014486(eq[n, A057164(A057505(n))])`
-/

namespace A083941.P9308806677200676946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A057505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083941.P9308806677200676946

/-! ## A083941.P17684187583236833524

`A020639(2*(n+1))*A057520(A083940(n))`
-/

namespace A083941.P17684187583236833524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) * A057520 (A083940 n).toNat

end

end A083941.P17684187583236833524

/-!
# A083942: Positions of breadth-first-wise encodings (A002542) of the complete binary trees (A084107) in A014486.

The programs for A083942, there is no canonical definition to state claims against.
-/

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

/-! ## A083942.P2189277744774905448

`A166588(2^(n+1))-2`
-/

namespace A083942.P2189277744774905448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 ^ (n + 1)) - 2

end

end A083942.P2189277744774905448

/-!
# A083943: A generalized Jacobsthal sequence.

The programs for A083943, the canonical program `A083943.P8663718937523010052` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083943 has offset 0).

The definition of A083943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083943.P8663718937523010052

`a(n-1)+2*a(n-2)-2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A083943

/-- `a(n-1)+2*a(n-2)-2` -/
def P8663718937523010052.Spec : Prop :=
  ∀ n, P8663718937523010052.a n = A083943 n

theorem P8663718937523010052.correct : P8663718937523010052.Spec := by
  intro n
  simp only [A083943]

end A083943

/-! ## A083943.P16328443156470811947

`1-Δ[round(2^n/3)]`
-/

namespace A083943.P16328443156470811947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A083943.P16328443156470811947

namespace A083943

/-- `1-Δ[round(2^n/3)]` -/
def P16328443156470811947.Spec : Prop :=
  ∀ n, P16328443156470811947.a n = A083943 n

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

/-! ## A083943.P12065091043771848965

`floor(a(n-2)-2^(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A083943.P12065091043771848965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A083943.P12065091043771848965

namespace A083943

/-- `floor(a(n-2)-2^(n-2))` -/
def P12065091043771848965.Spec : Prop :=
  ∀ n, P12065091043771848965.a n = A083943 n

end A083943

/-! ## A083943.P11391919944644075266

`ceil(a(n-2)-2^(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A083943.P11391919944644075266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

end

end A083943.P11391919944644075266

namespace A083943

/-- `ceil(a(n-2)-2^(n-2))` -/
def P11391919944644075266.Spec : Prop :=
  ∀ n, P11391919944644075266.a n = A083943 n

end A083943

/-! ## A083943.P14121147946079409042

`round(a(n-2)-2^(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A083943.P14121147946079409042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A083943.P14121147946079409042

namespace A083943

/-- `round(a(n-2)-2^(n-2))` -/
def P14121147946079409042.Spec : Prop :=
  ∀ n, P14121147946079409042.a n = A083943 n

end A083943

/-! ## A083943.P904460863539856202

`or(1, a(n-2)-2^(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A083943.P904460863539856202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)))

end

end A083943.P904460863539856202

namespace A083943

/-- `or(1, a(n-2)-2^(n-2))` -/
def P904460863539856202.Spec : Prop :=
  ∀ n, P904460863539856202.a n = A083943 n

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

/-! ## A083943.P16303403157248970734

`or(A000975(n)-A000225(n), A000225(n)²)`
-/

namespace A083943.P16303403157248970734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 n - A000225 n) (A000225 n ^ 2)

end

end A083943.P16303403157248970734

namespace A083943

/-- `or(A000975(n)-A000225(n), A000225(n)²)` -/
def P16303403157248970734.Spec : Prop :=
  ∀ n, P16303403157248970734.a n = A083943 n

end A083943

/-!
# A083944: A generalized Jacobsthal sequence.

The programs for A083944, the canonical program `A083944.P8877717128862183118` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083944 has offset 0).

The definition of A083944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083944.P8877717128862183118

`a(n-1)+2*a(n-2)-3` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A083944

/-- `a(n-1)+2*a(n-2)-3` -/
def P8877717128862183118.Spec : Prop :=
  ∀ n, P8877717128862183118.a n = A083944 n

theorem P8877717128862183118.correct : P8877717128862183118.Spec := by
  intro n
  simp only [A083944]

end A083944

/-! ## A083944.P17311838125967062419

`(9-2^(n+2)-5*(-1)^n)/6`
-/

namespace A083944.P17311838125967062419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - (2 ^ (n + 2) : ℤ) - 5 * (-1) ^ n : ℚ) / 6

end

end A083944.P17311838125967062419

namespace A083944

/-- `(9-2^(n+2)-5*(-1)^n)/6` -/
def P17311838125967062419.Spec : Prop :=
  ∀ n, P17311838125967062419.a n = (A083944 n : ℚ)

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

/-! ## A083944.P8843410310532215803

`3-2^n-a(n-1)` with `a(0)=0`
-/

namespace A083944.P8843410310532215803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - (2 ^ n : ℤ) - a (n - 1)

end

end A083944.P8843410310532215803

namespace A083944

/-- `3-2^n-a(n-1)` -/
def P8843410310532215803.Spec : Prop :=
  ∀ n, P8843410310532215803.a n = A083944 n

end A083944

/-! ## A083944.P7146276028835717411

`a(n-2)-Δ[2*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A083944.P7146276028835717411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A083944.P7146276028835717411

namespace A083944

/-- `a(n-2)-Δ[2*a(n-1)]` -/
def P7146276028835717411.Spec : Prop :=
  ∀ n, P7146276028835717411.a n = A083944 n

end A083944

/-! ## A083944.P10319095972715626652

`a(n-2)-record[2*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A083944.P10319095972715626652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A083944.P10319095972715626652

namespace A083944

/-- `a(n-2)-record[2*a(n-2)]` -/
def P10319095972715626652.Spec : Prop :=
  ∀ n, P10319095972715626652.a n = A083944 n

end A083944

/-! ## A083944.P3263682248930420626

`2*a(n-2)-(3-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A083944.P3263682248930420626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 2) - (3 - a (n - 1))

end

end A083944.P3263682248930420626

namespace A083944

/-- `2*a(n-2)-(3-a(n-1))` -/
def P3263682248930420626.Spec : Prop :=
  ∀ n, P3263682248930420626.a n = A083944 n

end A083944

/-! ## A083944.P15479708259698523031

`a(n-2)+a(n-1)+a(n-2)-3` with `a(0)=0, a(1)=1`
-/

namespace A083944.P15479708259698523031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2) - 3)

end

end A083944.P15479708259698523031

namespace A083944

/-- `a(n-2)+a(n-1)+a(n-2)-3` -/
def P15479708259698523031.Spec : Prop :=
  ∀ n, P15479708259698523031.a n = A083944 n

end A083944

/-! ## A083944.P6500962997438717708

`a(n-1)-(3-a(n-2)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A083944.P6500962997438717708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (3 - a (n - 2) - a (n - 2))

end

end A083944.P6500962997438717708

namespace A083944

/-- `a(n-1)-(3-a(n-2)-a(n-2))` -/
def P6500962997438717708.Spec : Prop :=
  ∀ n, P6500962997438717708.a n = A083944 n

theorem P6500962997438717708.correct : P6500962997438717708.Spec := by
  intro n
  simp only [A083944, Nat.add_sub_cancel, A083944.P6500962997438717708.a, A083944.P8877717128862183118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083944

/-! ## A083944.P4888567271566776653

`1-A097072(n)`
-/

namespace A083944.P4888567271566776653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A097072 n

end

end A083944.P4888567271566776653

namespace A083944

/-- `1-A097072(n)` -/
def P4888567271566776653.Spec : Prop :=
  ∀ n, P4888567271566776653.a n = A083944 n

end A083944

/-! ## A083944.P3237598606667422819

`2-A155944(n+1)`
-/

namespace A083944.P3237598606667422819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A155944 (n + 1)

end

end A083944.P3237598606667422819

namespace A083944

/-- `2-A155944(n+1)` -/
def P3237598606667422819.Spec : Prop :=
  ∀ n, P3237598606667422819.a n = A083944 n

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

/-! ## A083944.P13690059474460464792

`A010673(n)-A000975(n)`
-/

namespace A083944.P13690059474460464792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A000975 n

end

end A083944.P13690059474460464792

namespace A083944

/-- `A010673(n)-A000975(n)` -/
def P13690059474460464792.Spec : Prop :=
  ∀ n, P13690059474460464792.a n = A083944 n

end A083944

/-! ## A083944.P9445077396449030852

`A010674(n)-A014113(n)`
-/

namespace A083944.P9445077396449030852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n - A014113 n

end

end A083944.P9445077396449030852

namespace A083944

/-- `A010674(n)-A014113(n)` -/
def P9445077396449030852.Spec : Prop :=
  ∀ n, P9445077396449030852.a n = A083944 n

end A083944

/-! ## A083944.P7562437981613538395

`A010693(n)-A052953(n)`
-/

namespace A083944.P7562437981613538395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n - A052953 n

end

end A083944.P7562437981613538395

namespace A083944

/-- `A010693(n)-A052953(n)` -/
def P7562437981613538395.Spec : Prop :=
  ∀ n, P7562437981613538395.a n = A083944 n

end A083944

/-! ## A083944.P11692400049164545626

`A005578(n)-A099430(n)`
-/

namespace A083944.P11692400049164545626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - A099430 n

end

end A083944.P11692400049164545626

namespace A083944

/-- `A005578(n)-A099430(n)` -/
def P11692400049164545626.Spec : Prop :=
  ∀ n, P11692400049164545626.a n = A083944 n

end A083944

/-!
# A083945: Least integer coefficients of A(x), where 1<=a(n)<=5, such that A(x)^(1/5) consists entirely of integer coefficients.

The programs for A083945, there is no canonical definition to state claims against.
-/

/-! ## A083945.P4411439513272968976

`A109626(∑[n+5]+6)`
-/

namespace A083945.P4411439513272968976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A083945.P4411439513272968976

/-!
# A083946: Least integer coefficients of A(x), where 1<=a(n)<=6, such that A(x)^(1/6) consists entirely of integer coefficients.

The programs for A083946, there is no canonical definition to state claims against.
-/

/-! ## A083946.P12466656910369012127

`A109626(A000096(n+5)-4)`
-/

namespace A083946.P12466656910369012127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000096 (n + 5) - 4).toNat

end

end A083946.P12466656910369012127

/-! ## A083946.P6736869776686918334

`A109626(A000124(n+6)-6)`
-/

namespace A083946.P6736869776686918334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000124 (n + 6) - 6).toNat

end

end A083946.P6736869776686918334

/-! ## A083946.P2721134970613118118

`A109626(eq[5, A025581(n)]+1)`
-/

namespace A083946.P2721134970613118118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083946.P2721134970613118118

/-! ## A083946.P8207218202107999339

`A141524(A090461(n+4)+1)`
-/

namespace A083946.P8207218202107999339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141524 (A090461 (n + 4) + 1).toNat

end

end A083946.P8207218202107999339

/-! ## A083946.P142368301986227886

`A109626(eq[6, A200370(n+1)])`
-/

namespace A083946.P142368301986227886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083946.P142368301986227886

/-!
# A083947: Integer coefficients of A(x), where 1<=a(n)<=7, such that A(x)^(1/7) consists entirely of integer coefficients.

The programs for A083947, there is no canonical definition to state claims against.
-/

/-! ## A083947.P18441415807937466030

`A109626(A055999(n+4))`
-/

namespace A083947.P18441415807937466030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A055999 (n + 4)).toNat

end

end A083947.P18441415807937466030

/-! ## A083947.P17455525311245436860

`A109626(A052905(n+4)-1)`
-/

namespace A083947.P17455525311245436860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A052905 (n + 4) - 1).toNat

end

end A083947.P17455525311245436860

/-! ## A083947.P17049696637905434699

`gcd(A053567(n+1), A208155(A141213(n)))`
-/

namespace A083947.P17049696637905434699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053567 (n + 1)) (A208155 (A141213 n).toNat)

end

end A083947.P17049696637905434699

/-! ## A083947.P9570417788320921103

`or(7^((n^6)%7), A167163(A089152(n+1)))`
-/

namespace A083947.P9570417788320921103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (7 ^ (n ^ 6 % 7) : ℤ) (A167163 (A089152 (n + 1)).toNat)

end

end A083947.P9570417788320921103

/-!
# A083948: Integer coefficients of A(x), where 1<=a(n)<=8, such that A(x)^(1/8) consists entirely of integer coefficients.

The programs for A083948, there is no canonical definition to state claims against.
-/

/-! ## A083948.P15637021768423175998

`A109626(eq[7, A025581(n)]+1)`
-/

namespace A083948.P15637021768423175998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083948.P15637021768423175998

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

/-! ## A083949.P360907324131720362

`A109626(A000217(n+8)+n+1)`
-/

namespace A083949.P360907324131720362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A083949.P360907324131720362

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

/-! ## A083952.P15558921249867743152

`and(A083953(3*n+1), A108115(n))`
-/

namespace A083952.P15558921249867743152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083953 (3 * n + 1)) (A108115 n)

end

end A083952.P15558921249867743152

/-! ## A083952.P11016016916906575490

`2-A108340(n)`
-/

namespace A083952.P11016016916906575490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A108340 n

end

end A083952.P11016016916906575490

/-! ## A083952.P1047706009917066502

`A176059(A108115(n)²)-1`
-/

namespace A083952.P1047706009917066502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A108115 n ^ 2).toNat - 1

end

end A083952.P1047706009917066502

/-! ## A083952.P9716047948226806017

`2-A000035(A108115(n)²)`
-/

namespace A083952.P9716047948226806017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000035 (A108115 n ^ 2).toNat

end

end A083952.P9716047948226806017

/-! ## A083952.P13645506057672074987

`and(A108115(n), A305880(2*A108115(n)))`
-/

namespace A083952.P13645506057672074987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108115 n) (A305880 (2 * A108115 n).toNat)

end

end A083952.P13645506057672074987

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

/-! ## A083953.P1308644742305640278

`A010123((2*n+1)*A108913(n))`
-/

namespace A083953.P1308644742305640278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 ((2 * n + 1 : ℤ) * A108913 n).toNat

end

end A083953.P1308644742305640278

/-! ## A083953.P8517090078314825107

`A010123(lcm(A108913(n), A304042(n)))`
-/

namespace A083953.P8517090078314825107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (Int.lcm (A108913 n) (A304042 n))

end

end A083953.P8517090078314825107

/-! ## A083953.P10840113958918894503

`A000032(A020639(2*(n+1))-A108913(n))`
-/

namespace A083953.P10840113958918894503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A020639 (2 * (n + 1)) - A108913 n).toNat

end

end A083953.P10840113958918894503

/-! ## A083953.P8428295289298550500

`A109626(∑[n+3]+1)`
-/

namespace A083953.P8428295289298550500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A083953.P8428295289298550500

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

/-! ## A083954.P5560460267974640436

`A110630(A052938(n)-A057979(n))`
-/

namespace A083954.P5560460267974640436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110630 (A052938 n - A057979 n).toNat

end

end A083954.P5560460267974640436

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

/-! ## A083954.P374772936600983430

`A109626(n*(n+9)/2+7)`
-/

namespace A083954.P374772936600983430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 9 : ℚ) / 2) + 7)).toNat

end

end A083954.P374772936600983430

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

/-! ## A083956.P6381123588326065988

`A365645(A001227(3^n))`
-/

namespace A083956.P6381123588326065988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365645 (A001227 (3 ^ n)).toNat

end

end A083956.P6381123588326065988

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

/-! ## A083958.P7446994754362262520

`A083959(A032555(n+1))`
-/

namespace A083958.P7446994754362262520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083959 (A032555 (n + 1)).toNat

end

end A083958.P7446994754362262520

/-! ## A083958.P5057700728377677470

`A083959(A032559(n+1))`
-/

namespace A083958.P5057700728377677470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083959 (A032559 (n + 1)).toNat

end

end A083958.P5057700728377677470

/-! ## A083958.P9142801223127702431

`A083959(A066492(n+1))`
-/

namespace A083958.P9142801223127702431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083959 (A066492 (n + 1)).toNat

end

end A083958.P9142801223127702431

/-! ## A083958.P15971263911556539774

`A083959(A077739(n+1))`
-/

namespace A083958.P15971263911556539774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083959 (A077739 (n + 1)).toNat

end

end A083958.P15971263911556539774

/-!
# A083960: Smallest palindromic multiple of (n with trailing 0's omitted, A004151) using only nonzero digits of n; all digits must appear; or 0 if no such number exists.

The programs for A083960, there is no canonical definition to state claims against.
-/

/-! ## A083960.P2080096101532213777

`(n+1)/10^val(n+1, 10)*A083961((n+1)/10^val(n+1, 10))`
-/

namespace A083960.P2080096101532213777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ) * (A083961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat : ℚ)

end

end A083960.P2080096101532213777

/-! ## A083960.P1748956757654774581

`(n+1)*10^-val(n+1, 10)*A083961((n+1)*10^-val(n+1, 10))`
-/

namespace A083960.P1748956757654774581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 10 : ℤ) : ℤ) * (A083961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (10 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 10 : ℤ) : ℤ))).toNat : ℚ)

end

end A083960.P1748956757654774581

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

/-! ## A083960.P10726208373289294115

`A004151(A077741(n+1))`
-/

namespace A083960.P10726208373289294115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A077741 (n + 1)).toNat

end

end A083960.P10726208373289294115

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

/-! ## A083961.P13843106209376849365

`A083960(n+1)/A004719(n+1)`
-/

namespace A083961.P13843106209376849365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083960 (n + 1) : ℚ) / (A004719 (n + 1) : ℚ)

end

end A083961.P13843106209376849365

/-! ## A083961.P10267337613216797413

`A061906(n+1)/A061816(n+1)*A083960(n+1)`
-/

namespace A083961.P10267337613216797413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061906 (n + 1) : ℚ) / (A061816 (n + 1) : ℚ) * (A083960 (n + 1) : ℚ)

end

end A083961.P10267337613216797413

/-!
# A083962: Smallest palindromic multiple of n containing the digit string of a(n-1); or 0 if no such number exists.

The programs for A083962, there is no canonical definition to state claims against.
-/

/-! ## A083962.P3038815669519070886

`(n+1)*A083963(n+1)`
-/

namespace A083962.P3038815669519070886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083963 (n + 1)

end

end A083962.P3038815669519070886

/-!
# A083963: a(n) = A083962(n)/n.

The programs for A083963, there is no canonical definition to state claims against.
-/

/-! ## A083963.P13556111795982409435

`A083962(n+1)/(n+1)`
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

/-! ## A083964.P14782882166955663734

`A083965(n+1)*A185782(A000124(n))`
-/

namespace A083964.P14782882166955663734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083965 (n + 1) * A185782 (A000124 n).toNat

end

end A083964.P14782882166955663734

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

/-! ## A083967.P549724497227579712

`∪[A044896(n+1), A214527(A044912(n+1))]`
-/

namespace A083967.P549724497227579712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214527 (A044912 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083967.P549724497227579712

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

/-! ## A083967.P15921512292922009362

`∩[A068520(n+1), A279000(n+1)]`
-/

namespace A083967.P15921512292922009362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083967.P15921512292922009362

/-! ## A083967.P8450918574017634846

`∩[A279000(n+1), A387911(n+1)]`
-/

namespace A083967.P8450918574017634846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083967.P8450918574017634846

/-!
# A083968: Smallest palindromic prime beginning with numbers whose most significant digits are 1,3,7 or 9, or (palindromic prime beginning with n in possible cases).

The programs for A083968, there is no canonical definition to state claims against.
-/

/-! ## A083968.P2809238328893517811

`A082769(comp[30*n])`
-/

namespace A083968.P2809238328893517811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082769 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A083968.P2809238328893517811

/-! ## A083968.P5359067031977620828

`A082769(n+1)+char[27]`
-/

namespace A083968.P5359067031977620828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082769 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A083968.P5359067031977620828

/-! ## A083968.P12042061655706664548

`A089744(comp[Δ[A052735(n)]])`
-/

namespace A083968.P12042061655706664548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A083968.P12042061655706664548

/-! ## A083968.P3048249009636373167

`A178780(n)+A082769(n+1)`
-/

namespace A083968.P3048249009636373167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A082769 (n + 1)

end

end A083968.P3048249009636373167

/-! ## A083968.P14380549170628071203

`A178798(n)+A082769(n+1)`
-/

namespace A083968.P14380549170628071203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A082769 (n + 1)

end

end A083968.P14380549170628071203

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

/-!
# A083982: Smallest palindromic prime containing the digit string of n.

The programs for A083982, there is no canonical definition to state claims against.
-/

/-! ## A083982.P9939026973743401652

`p?[A085054(A037124(n+1))]`
-/

namespace A083982.P9939026973743401652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085054 (A037124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083982.P9939026973743401652

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

/-! ## A083982.P9782147245745564744

`A085054(C(A037124(n+1), A265525(n)))`
-/

namespace A083982.P9782147245745564744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085054 (Nat.choose (A037124 (n + 1)).toNat (A265525 n).toNat)

end

end A083982.P9782147245745564744

/-! ## A083982.P12924134647429806026

`A085054(C(A037124(n+1), A331472(n)))`
-/

namespace A083982.P12924134647429806026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085054 (Nat.choose (A037124 (n + 1)).toNat (A331472 n).toNat)

end

end A083982.P12924134647429806026

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

/-! ## A083984.P13146657746480044826

`A118759(A038187(n+2))`
-/

namespace A083984.P13146657746480044826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A038187 (n + 2)).toNat

end

end A083984.P13146657746480044826

/-! ## A083984.P6900635048996867394

`filter[A038187(n+1), A377191(#)]`
-/

namespace A083984.P6900635048996867394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A083984.P6900635048996867394

/-!
# A083985: If k is a number with exactly two distinct decimal digits, say a and b, neither of which is 0 (i.e., a member of A101594), define the self-complement of k, SC(k), to be the number obtained by replacing a with b and vice versa. Then a(n) = gcd(A101594(n), SC(A101594(n))).

The programs for A083985, there is no canonical definition to state claims against.
-/

/-! ## A083985.P27657324411682897

`A055483(A101594(n+1)%A002189(n))`
-/

namespace A083985.P27657324411682897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (Int.tmod (A101594 (n + 1)) (A002189 n)).toNat

end

end A083985.P27657324411682897

/-! ## A083985.P14293612869558689796

`A055483(A125290(n+1)%A002189(n))`
-/

namespace A083985.P14293612869558689796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (Int.tmod (A125290 (n + 1)) (A002189 n)).toNat

end

end A083985.P14293612869558689796

/-! ## A083985.P15869888716185506622

`A055483(∩[A125290(n+1), A359983(n+1)])`
-/

namespace A083985.P15869888716185506622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359983 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A083985.P15869888716185506622

/-! ## A083985.P4388675478751567224

`A055483(lt[A108377(n), A020485(n)])`
-/

namespace A083985.P4388675478751567224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A083985.P4388675478751567224

/-! ## A083985.P17494338123629639203

`A055483(A125290(n+1)^A358105(n+1))`
-/

namespace A083985.P17494338123629639203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (SequenceMachineLib.roundAway ((A125290 (n + 1) : ℚ) ^ (A358105 (n + 1) : ℤ))).toNat

end

end A083985.P17494338123629639203

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
# A083990: Primes arising in A083989.

The programs for A083990, there is no canonical definition to state claims against.
-/

/-! ## A083990.P6468544182884490105

`p?[A111708(A083989(n+1))+1]`
-/

namespace A083990.P6468544182884490105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111708 (A083989 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A083990.P6468544182884490105

/-!
# A083991: Members of A083989 whose 10's complement is also a member of A083989.

The programs for A083991, there is no canonical definition to state claims against.
-/

/-! ## A083991.P2898566240284414179

`A060653(A372082(n+1))`
-/

namespace A083991.P2898566240284414179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A372082 (n + 1)).toNat

end

end A083991.P2898566240284414179

/-! ## A083991.P1729381125722467439

`filter[A372082(n+1), A179770(#)]`
-/

namespace A083991.P1729381125722467439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A083991.P1729381125722467439

/-! ## A083991.P9735504079313250125

`filter[A372082(n+1), A179775(#)]`
-/

namespace A083991.P9735504079313250125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A083991.P9735504079313250125

/-! ## A083991.P3775681093685840068

`filter[A372082(n+1), A307183(#)]`
-/

namespace A083991.P3775681093685840068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307183 (f1 j).toNat = 1) n)

end

end A083991.P3775681093685840068

