import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A390700: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(2*k,2*(n-k)).

The programs for A390700, the canonical program `A390700.P7648296389720274603` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390700 has offset 0).

The definition of A390700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*2^#*C(2*#, 2*(n-#))]` (program `A390700.P7648296389720274603`, by `A390700.P7648296389720274603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390700.P7648296389720274603

`∑{#}[n, (#+1)*2^#*C(2*#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390700

/-- `∑{#}[n, (#+1)*2^#*C(2*#, 2*(n-#))]` -/
def P7648296389720274603.Spec : Prop :=
  ∀ n, (P7648296389720274603.a n : ℤ) = A390700 n

theorem P7648296389720274603.correct : P7648296389720274603.Spec := by
  intro n
  simp only [A390700]

end A390700

/-! ## A390700.P7708038810517728906

`ogf((1-4x+24x^3+4x^4)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))`
-/

namespace A390700.P7708038810517728906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 0, 24, 4] [1, -8, 16, -16, 72, -32, 64, -64, 16] n

end

end A390700.P7708038810517728906

namespace A390700

/-- `ogf((1-4x+24x^3+4x^4)/(1-8x+16x^2-16x^3+72x^4-32x^5+64x^6-64x^7+16x^8))` -/
def P7708038810517728906.Spec : Prop :=
  ∀ n, P7708038810517728906.a n = A390700 n

end A390700

/-!
# A390702: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k+1,n-3*k).

The programs for A390702, the canonical program `A390702.P15889859950021941802` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390702 has offset 0).

The definition of A390702 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(2*n-3*#+1, n-3*#)]` (program `A390702.P15889859950021941802`, by `A390702.P15889859950021941802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390702.P15889859950021941802

`∑{#}[floor(n/3), C(2*n-3*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390702

/-- `∑{#}[floor(n/3), C(2*n-3*#+1, n-3*#)]` -/
def P15889859950021941802.Spec : Prop :=
  ∀ n, (P15889859950021941802.a n : ℤ) = A390702 n

theorem P15889859950021941802.correct : P15889859950021941802.Spec := by
  intro n
  simp only [A390702]

end A390702

/-! ## A390702.P15138468614094955446

`∑{#}[n, (-3)^#*C(2*n+#+4, n-#)]`
-/

namespace A390702.P15138468614094955446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3) ^ k * (Nat.choose (2 * n + k + 4) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390702.P15138468614094955446

namespace A390702

/-- `∑{#}[n, (-3)^#*C(2*n+#+4, n-#)]` -/
def P15138468614094955446.Spec : Prop :=
  ∀ n, P15138468614094955446.a n = A390702 n

end A390702

/-! ## A390702.P17449640288418190123

`2*A105872(n)-A391033(n)`
-/

namespace A390702.P17449640288418190123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105872 n - A391033 n

end

end A390702.P17449640288418190123

namespace A390702

/-- `2*A105872(n)-A391033(n)` -/
def P17449640288418190123.Spec : Prop :=
  ∀ n, P17449640288418190123.a n = A390702 n

end A390702

/-! ## A390702.P3573151036809230216

`A105872(n+1)-A371758(n+1)`
-/

namespace A390702.P3573151036809230216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 (n + 1) - A371758 (n + 1)

end

end A390702.P3573151036809230216

namespace A390702

/-- `A105872(n+1)-A371758(n+1)` -/
def P3573151036809230216.Spec : Prop :=
  ∀ n, P3573151036809230216.a n = A390702 n

end A390702

/-! ## A390702.P9514461958173910655

`A105872(n+1)-(A371871(n+1)+A105872(n))`
-/

namespace A390702.P9514461958173910655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 (n + 1) - (A371871 (n + 1) + A105872 n)

end

end A390702.P9514461958173910655

namespace A390702

/-- `A105872(n+1)-(A371871(n+1)+A105872(n))` -/
def P9514461958173910655.Spec : Prop :=
  ∀ n, P9514461958173910655.a n = A390702 n

end A390702

/-! ## A390702.P1490549268743970595

`A118923(A132209(n+1))`
-/

namespace A390702.P1490549268743970595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A132209 (n + 1)).toNat

end

end A390702.P1490549268743970595

namespace A390702

/-- `A118923(A132209(n+1))` -/
def P1490549268743970595.Spec : Prop :=
  ∀ n, P1490549268743970595.a n = A390702 n

end A390702

/-! ## A390702.P16641355712594587427

`A118923(A142463(n+1))`
-/

namespace A390702.P16641355712594587427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A142463 (n + 1)).toNat

end

end A390702.P16641355712594587427

namespace A390702

/-- `A118923(A142463(n+1))` -/
def P16641355712594587427.Spec : Prop :=
  ∀ n, P16641355712594587427.a n = A390702 n

end A390702

/-!
# A390703: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k+1,n-3*k).

The programs for A390703, the canonical program `A390703.P7492093467020151163` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390703 has offset 0).

The definition of A390703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(3*n-3*#+1, n-3*#)]` (program `A390703.P7492093467020151163`, by `A390703.P7492093467020151163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390703.P12391569368802852751

`∑{#}[n, (-3)^#*C(3*n+#+4, n-#)]`
-/

namespace A390703.P12391569368802852751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3) ^ k * (Nat.choose (3 * n + k + 4) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390703.P12391569368802852751

namespace A390703

/-- `∑{#}[n, (-3)^#*C(3*n+#+4, n-#)]` -/
def P12391569368802852751.Spec : Prop :=
  ∀ n, P12391569368802852751.a n = A390703 n

end A390703

/-! ## A390703.P7492093467020151163

`∑{#}[floor(n/3), C(3*n-3*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390703

/-- `∑{#}[floor(n/3), C(3*n-3*#+1, n-3*#)]` -/
def P7492093467020151163.Spec : Prop :=
  ∀ n, (P7492093467020151163.a n : ℤ) = A390703 n

theorem P7492093467020151163.correct : P7492093467020151163.Spec := by
  intro n
  simp only [A390703]

end A390703

/-! ## A390703.P12535263514966758197

`A118923(A081270(n))`
-/

namespace A390703.P12535263514966758197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A081270 n).toNat

end

end A390703.P12535263514966758197

namespace A390703

/-- `A118923(A081270(n))` -/
def P12535263514966758197.Spec : Prop :=
  ∀ n, P12535263514966758197.a n = A390703 n

end A390703

/-!
# A390704: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k+1,n-3*k).

The programs for A390704, the canonical program `A390704.P1219021193118863963` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390704 has offset 0).

The definition of A390704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(4*n-3*#+1, n-3*#)]` (program `A390704.P1219021193118863963`, by `A390704.P1219021193118863963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390704.P12297090016620583907

`∑{#}[n, (-3)^#*C(4*n+#+4, n-#)]`
-/

namespace A390704.P12297090016620583907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-3) ^ k * (Nat.choose (4 * n + k + 4) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A390704.P12297090016620583907

namespace A390704

/-- `∑{#}[n, (-3)^#*C(4*n+#+4, n-#)]` -/
def P12297090016620583907.Spec : Prop :=
  ∀ n, P12297090016620583907.a n = A390704 n

end A390704

/-! ## A390704.P1219021193118863963

`∑{#}[floor(n/3), C(4*n-3*#+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390704

/-- `∑{#}[floor(n/3), C(4*n-3*#+1, n-3*#)]` -/
def P1219021193118863963.Spec : Prop :=
  ∀ n, (P1219021193118863963.a n : ℤ) = A390704 n

theorem P1219021193118863963.correct : P1219021193118863963.Spec := by
  intro n
  simp only [A390704]

end A390704

/-! ## A390704.P6939525136805000669

`A390706(n+1)-A390708(n+1)`
-/

namespace A390704.P6939525136805000669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390706 (n + 1) - A390708 (n + 1)

end

end A390704.P6939525136805000669

namespace A390704

/-- `A390706(n+1)-A390708(n+1)` -/
def P6939525136805000669.Spec : Prop :=
  ∀ n, P6939525136805000669.a n = A390704 n

end A390704

/-! ## A390704.P3966210560551822910

`A118923(A139272(n+1))`
-/

namespace A390704.P3966210560551822910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A139272 (n + 1)).toNat

end

end A390704.P3966210560551822910

namespace A390704

/-- `A118923(A139272(n+1))` -/
def P3966210560551822910.Spec : Prop :=
  ∀ n, P3966210560551822910.a n = A390704 n

end A390704

/-!
# A390705: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k-2,n-3*k).

The programs for A390705, the canonical program `A390705.P5918374623501927276` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390705 has offset 0).

The definition of A390705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390705.P5918374623501927276

`∑{#}[n, (-3)^#*C(3*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390705

/-- `∑{#}[n, (-3)^#*C(3*n+#+1, n-#)]` -/
def P5918374623501927276.Spec : Prop :=
  ∀ n, P5918374623501927276.a n = A390705 n

theorem P5918374623501927276.correct : P5918374623501927276.Spec := by
  intro n
  simp only [A390705]

end A390705

/-! ## A390705.P8647917582083926388

`A118923(A022266(n))`
-/

namespace A390705.P8647917582083926388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A022266 n).toNat

end

end A390705.P8647917582083926388

namespace A390705

/-- `A118923(A022266(n))` -/
def P8647917582083926388.Spec : Prop :=
  ∀ n, P8647917582083926388.a n = A390705 n

end A390705

/-!
# A390706: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k-2,n-3*k).

The programs for A390706, the canonical program `A390706.P12342318390078141540` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390706 has offset 0).

The definition of A390706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390706.P12342318390078141540

`∑{#}[n, (-3)^#*C(4*n+#+1, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390706

/-- `∑{#}[n, (-3)^#*C(4*n+#+1, n-#)]` -/
def P12342318390078141540.Spec : Prop :=
  ∀ n, P12342318390078141540.a n = A390706 n

theorem P12342318390078141540.correct : P12342318390078141540.Spec := by
  intro n
  simp only [A390706]

end A390706

/-! ## A390706.P9907121155819091014

`A118923(A139274(n))`
-/

namespace A390706.P9907121155819091014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A139274 n).toNat

end

end A390706.P9907121155819091014

namespace A390706

/-- `A118923(A139274(n))` -/
def P9907121155819091014.Spec : Prop :=
  ∀ n, P9907121155819091014.a n = A390706 n

end A390706

/-!
# A390707: a(n) = Sum_{k=0..floor(n/3)} binomial(3*n-3*k-3,n-3*k).

The programs for A390707, the canonical program `A390707.P17643125787436916235` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390707 has offset 0).

The definition of A390707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390707.P17643125787436916235

`∑{#}[n, (-3)^#*C(3*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390707

/-- `∑{#}[n, (-3)^#*C(3*n+#, n-#)]` -/
def P17643125787436916235.Spec : Prop :=
  ∀ n, P17643125787436916235.a n = A390707 n

theorem P17643125787436916235.correct : P17643125787436916235.Spec := by
  intro n
  simp only [A390707]

end A390707

/-! ## A390707.P11873059536128172532

`A118923(A117625(n))`
-/

namespace A390707.P11873059536128172532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A117625 n).toNat

end

end A390707.P11873059536128172532

namespace A390707

/-- `A118923(A117625(n))` -/
def P11873059536128172532.Spec : Prop :=
  ∀ n, P11873059536128172532.a n = A390707 n

end A390707

/-!
# A390708: a(n) = Sum_{k=0..floor(n/3)} binomial(4*n-3*k-3,n-3*k).

The programs for A390708, the canonical program `A390708.P15591992637539902566` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390708 has offset 0).

The definition of A390708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390708.P15591992637539902566

`∑{#}[n, (-3)^#*C(4*n+#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390708

/-- `∑{#}[n, (-3)^#*C(4*n+#, n-#)]` -/
def P15591992637539902566.Spec : Prop :=
  ∀ n, P15591992637539902566.a n = A390708 n

theorem P15591992637539902566.correct : P15591992637539902566.Spec := by
  intro n
  simp only [A390708]

end A390708

/-! ## A390708.P3882551740046288055

`A118923(A383464(n))`
-/

namespace A390708.P3882551740046288055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A383464 n).toNat

end

end A390708.P3882551740046288055

namespace A390708

/-- `A118923(A383464(n))` -/
def P3882551740046288055.Spec : Prop :=
  ∀ n, P3882551740046288055.a n = A390708 n

end A390708

/-! ## A390708.P11221000061613370000

`A118923(A139272(n)+1)`
-/

namespace A390708.P11221000061613370000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A139272 n + 1).toNat

end

end A390708.P11221000061613370000

namespace A390708

/-- `A118923(A139272(n)+1)` -/
def P11221000061613370000.Spec : Prop :=
  ∀ n, P11221000061613370000.a n = A390708 n

end A390708

/-!
# A390709: a(n) = Sum_{k=0..n} (2*k+1) * binomial(4*n-2*k+1,n-k)/(4*n-2*k+1).

The programs for A390709, the canonical program `A390709.P11448936396755043345` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390709 has offset 0).

The definition of A390709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390709.P11448936396755043345

`∑{#}[n, (2*#+1)*C(4*n-2*#+1, n-#)/(4*n-2*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390709

/-- `∑{#}[n, (2*#+1)*C(4*n-2*#+1, n-#)/(4*n-2*#+1)]` -/
def P11448936396755043345.Spec : Prop :=
  ∀ n, P11448936396755043345.a n = (A390709 n : ℚ)

end A390709

/-!
# A390710: a(n) = Sum_{k=0..n} (5*k+1) * binomial(4*n+k+1,n-k)/(4*n+k+1).

The programs for A390710, the canonical program `A390710.P8235247127294637038` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390710 has offset 0).

The definition of A390710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390710.P8235247127294637038

`∑{#}[n, (5*#+1)*C(4*n+#+1, n-#)/(4*n+#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390710

/-- `∑{#}[n, (5*#+1)*C(4*n+#+1, n-#)/(4*n+#+1)]` -/
def P8235247127294637038.Spec : Prop :=
  ∀ n, P8235247127294637038.a n = (A390710 n : ℚ)

end A390710

/-!
# A390711: a(n) = Sum_{k=0..n} (2*k+1) * binomial(5*n-3*k+1,n-k)/(5*n-3*k+1).

The programs for A390711, the canonical program `A390711.P12828385308770240169` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390711 has offset 0).

The definition of A390711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390711.P12828385308770240169

`∑{#}[n, (2*#+1)*C(5*n-3*#+1, n-#)/(5*n-3*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390711

/-- `∑{#}[n, (2*#+1)*C(5*n-3*#+1, n-#)/(5*n-3*#+1)]` -/
def P12828385308770240169.Spec : Prop :=
  ∀ n, P12828385308770240169.a n = (A390711 n : ℚ)

end A390711

/-!
# A390712: a(n) = Sum_{k=0..n} (3*k+1) * binomial(5*n-2*k+1,n-k)/(5*n-2*k+1).

The programs for A390712, the canonical program `A390712.P4935687547568923164` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390712 has offset 0).

The definition of A390712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390712.P4935687547568923164

`∑{#}[n, (3*#+1)*C(5*n-2*#+1, n-#)/(5*n-2*#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390712

/-- `∑{#}[n, (3*#+1)*C(5*n-2*#+1, n-#)/(5*n-2*#+1)]` -/
def P4935687547568923164.Spec : Prop :=
  ∀ n, P4935687547568923164.a n = (A390712 n : ℚ)

end A390712

/-!
# A390713: a(0) = 1; a(n) = Sum_{k=0..n} k * binomial(4*n-2*k,n-k)/(2*n-k).

The programs for A390713, there is no canonical definition to state claims against.
-/

/-! ## A390713.P10913701675732707542

`A187180(A088088(n)+A063834(n))`
-/

namespace A390713.P10913701675732707542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A088088 n + A063834 n).toNat

end

end A390713.P10913701675732707542

/-! ## A390713.P4984227033022353774

`∑[A008615(A389653(n)+A001764(n))]`
-/

namespace A390713.P4984227033022353774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A389653 n + A001764 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390713.P4984227033022353774

/-!
# A390714: a(0) = 1; a(n) = 5 * Sum_{k=0..n} k * binomial(4*n+k,n-k)/(4*n+k).

The programs for A390714, there is no canonical definition to state claims against.
-/

/-! ## A390714.P8139281676005213673

`A365773(n)-A037203(A365773(n))`
-/

namespace A390714.P8139281676005213673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365773 n - A037203 (A365773 n).toNat

end

end A390714.P8139281676005213673

/-!
# A390715: a(0) = 1; a(n) = 2 * Sum_{k=0..n} k * binomial(5*n-3*k,n-k)/(5*n-3*k).

The programs for A390715, there is no canonical definition to state claims against.
-/

/-! ## A390715.P16218100744142124211

`A008619(A192942(n)/2)`
-/

namespace A390715.P16218100744142124211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A192942 n : ℚ) / 2)).toNat

end

end A390715.P16218100744142124211

/-! ## A390715.P14646825276542348252

`A080513(A192950(n)-A124010(n+1))`
-/

namespace A390715.P14646825276542348252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A192950 n - A124010 (n + 1)).toNat

end

end A390715.P14646825276542348252

/-!
# A390716: a(0) = 1; a(n) = 3 * Sum_{k=0..n} k * binomial(5*n-2*k,n-k)/(5*n-2*k).

The programs for A390716, there is no canonical definition to state claims against.
-/

/-! ## A390716.P1122581679180971644

`A004213(n)-A121902(A155639(n))`
-/

namespace A390716.P1122581679180971644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004213 n - A121902 (A155639 n).toNat

end

end A390716.P1122581679180971644

/-! ## A390716.P16169837644264102234

`A003159(or(A058843(n+1), A384265(n)))`
-/

namespace A390716.P16169837644264102234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (Int.lor (A058843 (n + 1)) (A384265 n)).toNat

end

end A390716.P16169837644264102234

/-!
# A390717: Indices in Recamán's sequence A005132 which are the result of a record number of addition steps.

The programs for A390717, there is no canonical definition to state claims against.
-/

/-! ## A390717.P16606681995775031499

`A331670(1+n)+n`
-/

namespace A390717.P16606681995775031499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331670 (1 + n) + (n : ℤ)

end

end A390717.P16606681995775031499

/-!
# A390718: Numbers k whose sum of prime factors (with multiplicity) is a power of 2.

The programs for A390718, the canonical program `A390718.P13136824727992401142` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390718 has offset 1).

The definition of A390718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390718.P13136824727992401142

`eq[1, A000120(A001414(n+1))]+1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390718

/-- `eq[1, A000120(A001414(n+1))]+1` -/
def P13136824727992401142.Spec : Prop :=
  ∀ n, (P13136824727992401142.a n : ℤ) = A390718 (n + 1)

theorem P13136824727992401142.correct : P13136824727992401142.Spec := by
  intro n
  simp only [A390718, Nat.add_sub_cancel]

end A390718

/-! ## A390718.P8543343853396931099

`eq[1, A331856(A001414(n+1)²)]+1`
-/

namespace A390718.P8543343853396931099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A001414 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390718.P8543343853396931099

namespace A390718

/-- `eq[1, A331856(A001414(n+1)²)]+1` -/
def P8543343853396931099.Spec : Prop :=
  ∀ n, (P8543343853396931099.a n : ℤ) = A390718 (n + 1)

end A390718

/-!
# A390719: a(n) = Sum_{k=0..n} (k+2) * binomial(3*n-2*k+2,n-k)/(3*n-2*k+2).

The programs for A390719, the canonical program `A390719.P11137268641620348495` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390719 has offset 0).

The definition of A390719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390719.P11137268641620348495

`∑{#}[n, (#+2)*C(3*n-2*#+2, n-#)/(3*n-2*#+2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390719

/-- `∑{#}[n, (#+2)*C(3*n-2*#+2, n-#)/(3*n-2*#+2)]` -/
def P11137268641620348495.Spec : Prop :=
  ∀ n, P11137268641620348495.a n = (A390719 n : ℚ)

end A390719

/-! ## A390719.P5058207406644761480

`A006013(n)+Δ[A098746(n)]`
-/

namespace A390719.P5058207406644761480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + (f1 (n + 1) - f1 n)

end

end A390719.P5058207406644761480

namespace A390719

/-- `A006013(n)+Δ[A098746(n)]` -/
def P5058207406644761480.Spec : Prop :=
  ∀ n, P5058207406644761480.a n = A390719 n

end A390719

/-! ## A390719.P2267068375239935950

`∑[A007226(n)-A098746(n)]`
-/

namespace A390719.P2267068375239935950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n - A098746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390719.P2267068375239935950

namespace A390719

/-- `∑[A007226(n)-A098746(n)]` -/
def P2267068375239935950.Spec : Prop :=
  ∀ n, P2267068375239935950.a n = A390719 n

end A390719

/-! ## A390719.P6984698911100999609

`A098746(n+1)+A006013(n)-A098746(n)`
-/

namespace A390719.P6984698911100999609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 1) + (A006013 n - A098746 n)

end

end A390719.P6984698911100999609

namespace A390719

/-- `A098746(n+1)+A006013(n)-A098746(n)` -/
def P6984698911100999609.Spec : Prop :=
  ∀ n, P6984698911100999609.a n = A390719 n

end A390719

/-! ## A390719.P1086425952575804285

`∑[A391178(n)-Δ[A001764(n)]]`
-/

namespace A390719.P1086425952575804285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391178 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390719.P1086425952575804285

namespace A390719

/-- `∑[A391178(n)-Δ[A001764(n)]]` -/
def P1086425952575804285.Spec : Prop :=
  ∀ n, P1086425952575804285.a n = A390719 n

end A390719

/-! ## A390719.P3111901644250437656

`A098746(n+2)-A001764(1+n)`
-/

namespace A390719.P3111901644250437656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098746 (n + 2) - A001764 (1 + n)

end

end A390719.P3111901644250437656

namespace A390719

/-- `A098746(n+2)-A001764(1+n)` -/
def P3111901644250437656.Spec : Prop :=
  ∀ n, P3111901644250437656.a n = A390719 n

end A390719

/-!
# A390720: a(n) = Sum_{k=0..n} (k+2) * binomial(4*n-3*k+2,n-k)/(4*n-3*k+2).

The programs for A390720, the canonical program `A390720.P13987373585340440930` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390720 has offset 0).

The definition of A390720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390720.P13987373585340440930

`∑{#}[n, (#+2)*C(4*n-3*#+2, n-#)/(4*n-3*#+2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390720

/-- `∑{#}[n, (#+2)*C(4*n-3*#+2, n-#)/(4*n-3*#+2)]` -/
def P13987373585340440930.Spec : Prop :=
  ∀ n, P13987373585340440930.a n = (A390720 n : ℚ)

end A390720

/-! ## A390720.P1659126813185611951

`A130458(n+2)-A002293(n+1)`
-/

namespace A390720.P1659126813185611951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130458 (n + 2) - A002293 (n + 1)

end

end A390720.P1659126813185611951

namespace A390720

/-- `A130458(n+2)-A002293(n+1)` -/
def P1659126813185611951.Spec : Prop :=
  ∀ n, P1659126813185611951.a n = A390720 n

end A390720

/-!
# A390721: a(n) = Sum_{k=0..n} (k+2) * binomial(5*n-4*k+2,n-k)/(5*n-4*k+2).

The programs for A390721, the canonical program `A390721.P5589404111996306396` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390721 has offset 0).

The definition of A390721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390721.P5589404111996306396

`∑{#}[n, (#+2)*C(5*n-4*#+2, n-#)/(5*n-4*#+2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390721

/-- `∑{#}[n, (#+2)*C(5*n-4*#+2, n-#)/(5*n-4*#+2)]` -/
def P5589404111996306396.Spec : Prop :=
  ∀ n, P5589404111996306396.a n = (A390721 n : ℚ)

end A390721

/-! ## A390721.P3878259328957505378

`A186182(n+2)-A002294(n+1)`
-/

namespace A390721.P3878259328957505378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186182 (n + 2) - A002294 (n + 1)

end

end A390721.P3878259328957505378

namespace A390721

/-- `A186182(n+2)-A002294(n+1)` -/
def P3878259328957505378.Spec : Prop :=
  ∀ n, P3878259328957505378.a n = A390721 n

end A390721

/-!
# A390723: Triangle read by rows: T(n, k) = (-1)^(n-k)*Stirling1(n, k)*CatalanNumber(k).

The programs for A390723, the canonical program `A390723.P607277619158912559` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390723 has offset 0).

The definition of A390723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390723.P607277619158912559

`A000108(col(n))*A132393(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390723

/-- `A000108(col(n))*A132393(n)` -/
def P607277619158912559.Spec : Prop :=
  ∀ n, P607277619158912559.a n = A390723 n

theorem P607277619158912559.correct : P607277619158912559.Spec := by
  intro n
  simp only [A390723]

end A390723

/-! ## A390723.P14044179894604042445

`A000108(col(n))*abs(A048994(n))`
-/

namespace A390723.P14044179894604042445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.triCol n) * |A048994 n|

end

end A390723.P14044179894604042445

namespace A390723

/-- `A000108(col(n))*abs(A048994(n))` -/
def P14044179894604042445.Spec : Prop :=
  ∀ n, P14044179894604042445.a n = A390723 n

end A390723

/-! ## A390723.P5633066468059257551

`A000108(A002262(n))*A132393(n)`
-/

namespace A390723.P5633066468059257551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A132393 n

end

end A390723.P5633066468059257551

namespace A390723

/-- `A000108(A002262(n))*A132393(n)` -/
def P5633066468059257551.Spec : Prop :=
  ∀ n, P5633066468059257551.a n = A390723 n

end A390723

/-! ## A390723.P5863706041446612582

`A000108(A144328(n+1))*A132393(n)`
-/

namespace A390723.P5863706041446612582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A132393 n

end

end A390723.P5863706041446612582

namespace A390723

/-- `A000108(A144328(n+1))*A132393(n)` -/
def P5863706041446612582.Spec : Prop :=
  ∀ n, P5863706041446612582.a n = A390723 n

end A390723

/-! ## A390723.P15997231809989354981

`A180013(n+1)/A002024(n+1)*A120588(A002260(n+1))`
-/

namespace A390723.P15997231809989354981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A120588 (A002260 (n + 1)).toNat : ℚ)

end

end A390723.P15997231809989354981

namespace A390723

/-- `A180013(n+1)/A002024(n+1)*A120588(A002260(n+1))` -/
def P15997231809989354981.Spec : Prop :=
  ∀ n, P15997231809989354981.a n = (A390723 n : ℚ)

end A390723

/-!
# A390724: Triangle read by rows: T(n, k) = Stirling2(n, k)*CatalanNumber(k).

The programs for A390724, the canonical program `A390724.P14749098958855767615` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390724 has offset 0).

The definition of A390724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390724.P14749098958855767615

`A048993(C(row(n)+1, 2)+col(n))*A000108(col(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390724

/-- `A048993(C(row(n)+1, 2)+col(n))*A000108(col(n))` -/
def P14749098958855767615.Spec : Prop :=
  ∀ n, P14749098958855767615.a n = A390724 n

theorem P14749098958855767615.correct : P14749098958855767615.Spec := by
  intro n
  simp only [A390724]

end A390724

/-! ## A390724.P16506169495580265088

`A000108(col(n))*A048993(n)`
-/

namespace A390724.P16506169495580265088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.triCol n) * A048993 n

end

end A390724.P16506169495580265088

namespace A390724

/-- `A000108(col(n))*A048993(n)` -/
def P16506169495580265088.Spec : Prop :=
  ∀ n, P16506169495580265088.a n = A390724 n

end A390724

/-! ## A390724.P10032212923704831388

`A000108(A002262(n))*A048993(n)`
-/

namespace A390724.P10032212923704831388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A048993 n

end

end A390724.P10032212923704831388

namespace A390724

/-- `A000108(A002262(n))*A048993(n)` -/
def P10032212923704831388.Spec : Prop :=
  ∀ n, P10032212923704831388.a n = A390724 n

end A390724

/-! ## A390724.P417505644179747632

`A048993(n)*A120588(A002260(n+1))`
-/

namespace A390724.P417505644179747632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A120588 (A002260 (n + 1)).toNat

end

end A390724.P417505644179747632

namespace A390724

/-- `A048993(n)*A120588(A002260(n+1))` -/
def P417505644179747632.Spec : Prop :=
  ∀ n, P417505644179747632.a n = A390724 n

end A390724

/-! ## A390724.P6872343932322171646

`A000108(A144328(n+1))*A048993(n)`
-/

namespace A390724.P6872343932322171646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A048993 n

end

end A390724.P6872343932322171646

namespace A390724

/-- `A000108(A144328(n+1))*A048993(n)` -/
def P6872343932322171646.Spec : Prop :=
  ∀ n, P6872343932322171646.a n = A390724 n

end A390724

/-! ## A390724.P13923969215922453583

`A000108(A002260(n+1)-1)*A048993(n)`
-/

namespace A390724.P13923969215922453583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1) - 1).toNat * A048993 n

end

end A390724.P13923969215922453583

namespace A390724

/-- `A000108(A002260(n+1)-1)*A048993(n)` -/
def P13923969215922453583.Spec : Prop :=
  ∀ n, P13923969215922453583.a n = A390724 n

end A390724

/-! ## A390724.P11390005233310665950

`A000108(A130270(n+1))*A048993(n)`
-/

namespace A390724.P11390005233310665950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A130270 (n + 1)).toNat * A048993 n

end

end A390724.P11390005233310665950

namespace A390724

/-- `A000108(A130270(n+1))*A048993(n)` -/
def P11390005233310665950.Spec : Prop :=
  ∀ n, P11390005233310665950.a n = A390724 n

end A390724

/-!
# A390725: Triangle read by rows: T(n, k) = Lah(n, k)*CatalanNumber(k), and Lah = A271703.

The programs for A390725, the canonical program `A390725.P3655368959115818733` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390725 has offset 0).

The definition of A390725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271703, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390725.P3655368959115818733

`A271703(C(row(n)+1, 2)+col(n))*A000108(col(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390725

/-- `A271703(C(row(n)+1, 2)+col(n))*A000108(col(n))` -/
def P3655368959115818733.Spec : Prop :=
  ∀ n, P3655368959115818733.a n = A390725 n

theorem P3655368959115818733.correct : P3655368959115818733.Spec := by
  intro n
  simp only [A390725]

end A390725

/-! ## A390725.P10686227554690611401

`A000108(col(n))*A271703(n)`
-/

namespace A390725.P10686227554690611401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.triCol n) * A271703 n

end

end A390725.P10686227554690611401

namespace A390725

/-- `A000108(col(n))*A271703(n)` -/
def P10686227554690611401.Spec : Prop :=
  ∀ n, P10686227554690611401.a n = A390725 n

end A390725

/-! ## A390725.P2084391966824759075

`A000108(A002262(n))*A271703(n)`
-/

namespace A390725.P2084391966824759075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A271703 n

end

end A390725.P2084391966824759075

namespace A390725

/-- `A000108(A002262(n))*A271703(n)` -/
def P2084391966824759075.Spec : Prop :=
  ∀ n, P2084391966824759075.a n = A390725 n

end A390725

/-!
# A390726: a(n) = (-1)^n*Stirling1(2*n, n)*(2*n)!/(n+1)!.

The programs for A390726, the canonical program `A390726.P4831482524478559460` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390726 has offset 0).

The definition of A390726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390726.P4831482524478559460

`n!*A390276(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390726

/-- `n!*A390276(n)` -/
def P4831482524478559460.Spec : Prop :=
  ∀ n, P4831482524478559460.a n = A390726 n

theorem P4831482524478559460.correct : P4831482524478559460.Spec := by
  intro n
  simp only [A390726]

end A390726

/-! ## A390726.P10276235512439929206

`A187646(n)*A001761(n)`
-/

namespace A390726.P10276235512439929206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187646 n * A001761 n

end

end A390726.P10276235512439929206

namespace A390726

/-- `A187646(n)*A001761(n)` -/
def P10276235512439929206.Spec : Prop :=
  ∀ n, P10276235512439929206.a n = A390726 n

theorem P10276235512439929206.correct : P10276235512439929206.Spec := by
  intro n
  simp only [A390726, Nat.add_sub_cancel, A390726.P10276235512439929206.a, A390726.P4831482524478559460.a, A001761, A001761.P10294266062950325525.a, A187646, A187646.P7424978621160234457.a, A390276, A390276.P6787046283391767139.a, A000108, A000108.P17551949696095299361.a, A132393, A132393.P16977614496851767761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390726

/-! ## A390726.P4721516213876908292

`A001761(n)*A187646(n)`
-/

namespace A390726.P4721516213876908292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001761 n * A187646 n

end

end A390726.P4721516213876908292

namespace A390726

/-- `A001761(n)*A187646(n)` -/
def P4721516213876908292.Spec : Prop :=
  ∀ n, P4721516213876908292.a n = A390726 n

theorem P4721516213876908292.correct : P4721516213876908292.Spec := by
  intro n
  simp only [A390726, Nat.add_sub_cancel, A390726.P4721516213876908292.a, A390726.P4831482524478559460.a, A001761, A001761.P10294266062950325525.a, A187646, A187646.P7424978621160234457.a, A390276, A390276.P6787046283391767139.a, A000108, A000108.P17551949696095299361.a, A132393, A132393.P16977614496851767761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390726

/-! ## A390726.P4894568766434574819

`A000108(n)*A376873(n)`
-/

namespace A390726.P4894568766434574819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A376873 n

end

end A390726.P4894568766434574819

namespace A390726

/-- `A000108(n)*A376873(n)` -/
def P4894568766434574819.Spec : Prop :=
  ∀ n, P4894568766434574819.a n = A390726 n

theorem P4894568766434574819.correct : P4894568766434574819.Spec := by
  intro n
  simp only [A390726, Nat.add_sub_cancel, A390726.P4894568766434574819.a, A390726.P4831482524478559460.a, A000108, A000108.P17551949696095299361.a, A376873, A376873.P11691204924923537932.a, A390276, A390276.P6787046283391767139.a, A187646, A187646.P7424978621160234457.a, A132393, A132393.P16977614496851767761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390726

/-! ## A390726.P10301691658767729398

`A000142(n)*A390276(n)`
-/

namespace A390726.P10301691658767729398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A390276 n

end

end A390726.P10301691658767729398

namespace A390726

/-- `A000142(n)*A390276(n)` -/
def P10301691658767729398.Spec : Prop :=
  ∀ n, P10301691658767729398.a n = A390726 n

end A390726

/-!
# A390727: a(n) = Stirling2(2*n, n)*(2*n)!/(n+1)!.

The programs for A390727, the canonical program `A390727.P12780344943874454581` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390727 has offset 0).

The definition of A390727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390727.P12780344943874454581

`n!*A390277(n)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390727

/-- `n!*A390277(n)` -/
def P12780344943874454581.Spec : Prop :=
  ∀ n, P12780344943874454581.a n = A390727 n

theorem P12780344943874454581.correct : P12780344943874454581.Spec := by
  intro n
  simp only [A390727]

end A390727

/-! ## A390727.P3296689551522490190

`A007820(n)*A001761(n)`
-/

namespace A390727.P3296689551522490190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007820 n * A001761 n

end

end A390727.P3296689551522490190

namespace A390727

/-- `A007820(n)*A001761(n)` -/
def P3296689551522490190.Spec : Prop :=
  ∀ n, P3296689551522490190.a n = A390727 n

theorem P3296689551522490190.correct : P3296689551522490190.Spec := by
  intro n
  simp only [A390727, Nat.add_sub_cancel, A390727.P3296689551522490190.a, A390727.P12780344943874454581.a, A001761, A001761.P10294266062950325525.a, A007820, A007820.P11140449158159564831.f1, A007820.P11140449158159564831.a, A390277, A390277.P8298929856633889392.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390727

/-! ## A390727.P567131033803803744

`A048993(C(2*n+1, 2)+n)*A001761(n)`
-/

namespace A390727.P567131033803803744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Nat.choose (2 * n + 1) 2 + n) * A001761 n

end

end A390727.P567131033803803744

namespace A390727

/-- `A048993(C(2*n+1, 2)+n)*A001761(n)` -/
def P567131033803803744.Spec : Prop :=
  ∀ n, P567131033803803744.a n = A390727 n

end A390727

/-! ## A390727.P14401789218486832618

`A288312(n)/(n+1)`
-/

namespace A390727.P14401789218486832618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288312 n : ℚ) / (n + 1 : ℚ)

end

end A390727.P14401789218486832618

namespace A390727

/-- `A288312(n)/(n+1)` -/
def P14401789218486832618.Spec : Prop :=
  ∀ n, P14401789218486832618.a n = (A390727 n : ℚ)

end A390727

/-! ## A390727.P6375794120889721573

`1/n!*∑{#}[n, C(n, #)*(-1)^#*(n-#)^(2*n)]*A001761(n)`
-/

namespace A390727.P6375794120889721573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * (-1) ^ k * ((n : ℤ) - (k : ℤ)) ^ (2 * n) : ℤ) : ℚ) * (A001761 n : ℚ)

end

end A390727.P6375794120889721573

namespace A390727

/-- `1/n!*∑{#}[n, C(n, #)*(-1)^#*(n-#)^(2*n)]*A001761(n)` -/
def P6375794120889721573.Spec : Prop :=
  ∀ n, P6375794120889721573.a n = (A390727 n : ℚ)

end A390727

/-!
# A390731: Numbers k not in A000961 such that A001414(k) is in A000961.

The programs for A390731, there is no canonical definition to state claims against.
-/

/-! ## A390731.P5683163069947307094

`A024619(lt[A157127(2*n), A123289(n)])`
-/

namespace A390731.P5683163069947307094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157127 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123289 (n + 32)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390731.P5683163069947307094

/-!
# A390732: a(n) = Sum_{k=0..n} (k+1) * 2^(n-k) * binomial(2*k,2*(n-k)).

The programs for A390732, the canonical program `A390732.P11062027711697703705` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390732 has offset 0).

The definition of A390732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390732.P166385436958136055

`∑{#}[n, (#+1)*2^(n-#)*C(2*#, 2*(n-#))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390732.P166385436958136055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) (2 * ((n : ℤ) - (k : ℤ))).toNat : ℚ)

end

end A390732.P166385436958136055

namespace A390732

/-- `∑{#}[n, (#+1)*2^(n-#)*C(2*#, 2*(n-#))]` -/
def P166385436958136055.Spec : Prop :=
  ∀ n, P166385436958136055.a n = (A390732 n : ℚ)

end A390732

/-! ## A390732.P11062027711697703705

`ogf((1-2x-3x^2+12x^3+4x^4)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390732

/-- `ogf((1-2x-3x^2+12x^3+4x^4)/(1-4x-2x^2+4x^3+33x^4+8x^5-8x^6-32x^7+16x^8))` -/
def P11062027711697703705.Spec : Prop :=
  ∀ n, P11062027711697703705.a n = A390732 n

theorem P11062027711697703705.correct : P11062027711697703705.Spec := by
  intro n
  simp only [A390732]

end A390732

/-!
# A390740: a(n) = Sum_{k=0..n} (-1)^k * (2*k+1) * binomial(4*n-2*k+1,n-k)/(4*n-2*k+1).

The programs for A390740, there is no canonical definition to state claims against.
-/

/-! ## A390740.P16865661504437072899

`abs(A156065(2*n))`
-/

namespace A390740.P16865661504437072899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156065 (2 * n)|

end

end A390740.P16865661504437072899

/-! ## A390740.P15614962968855892465

`gcd(A014376(n), A156065(2*n))`
-/

namespace A390740.P15614962968855892465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014376 n) (A156065 (2 * n))

end

end A390740.P15614962968855892465

/-!
# A390741: a(n) = Sum_{k=0..n} (-1)^k * (k+1) * binomial(5*n-4*k+1,n-k)/(5*n-4*k+1).

The programs for A390741, there is no canonical definition to state claims against.
-/

/-! ## A390741.P3696484894490703417

`A289435(A385835(n)+1)`
-/

namespace A390741.P3696484894490703417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A385835 n + 1).toNat

end

end A390741.P3696484894490703417

/-!
# A390742: a(n) = Sum_{k=0..n} (-1)^k * (2*k+1) * binomial(5*n-3*k+1,n-k)/(5*n-3*k+1).

The programs for A390742, there is no canonical definition to state claims against.
-/

/-! ## A390742.P16800124972472294043

`∑{d}[A389326(n), A223707(#)]`
-/

namespace A390742.P16800124972472294043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A223707 d

end

end A390742.P16800124972472294043

/-!
# A390743: a(n) = Sum_{k=0..n} (-1)^k * (3*k+1) * binomial(5*n-2*k+1,n-k)/(5*n-2*k+1).

The programs for A390743, there is no canonical definition to state claims against.
-/

/-! ## A390743.P18086781167447660889

`A375888(a(n-1))/n^(-1)` with `a(0)=1, a(1)=0`
-/

namespace A390743.P18086781167447660889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (A375888 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / (n : ℚ) ^ (-1 : ℤ)

end

end A390743.P18086781167447660889

/-!
# A390744: a(n) = Sum_{k=0..n} (-1)^k * (4*k+1) * binomial(5*n-k+1,n-k)/(5*n-k+1).

The programs for A390744, the canonical program `A390744.P13459626470136669785` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390744 has offset 0).

The definition of A390744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390744.P13459626470136669785

`∑{#}[n, (-1)^#*(4*#+1)*C(5*n-#+1, n-#)/(5*n-#+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390744

/-- `∑{#}[n, (-1)^#*(4*#+1)*C(5*n-#+1, n-#)/(5*n-#+1)]` -/
def P13459626470136669785.Spec : Prop :=
  ∀ n, P13459626470136669785.a n = (A390744 n : ℚ)

end A390744

/-! ## A390744.P2504243109440858919

`A008621(A002294(n))-A046929(2*n+1)`
-/

namespace A390744.P2504243109440858919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A002294 n).toNat - A046929 (2 * n + 1)

end

end A390744.P2504243109440858919

namespace A390744

/-- `A008621(A002294(n))-A046929(2*n+1)` -/
def P2504243109440858919.Spec : Prop :=
  ∀ n, P2504243109440858919.a n = A390744 n

end A390744

/-!
# A390745: Numbers k such that there exists a unique integer composition whose first sums are the k-th composition in standard order.

The programs for A390745, there is no canonical definition to state claims against.
-/

/-! ## A390745.P2108071179627139307

`(eq[1, A390675(n+1)]+1)*2`
-/

namespace A390745.P2108071179627139307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * 2

end

end A390745.P2108071179627139307

/-! ## A390745.P12263479439724660722

`eq[1, A391642(n+1)]+1`
-/

namespace A390745.P12263479439724660722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390745.P12263479439724660722

/-! ## A390745.P2685384072831172842

`eq[3, A391621(n+1)]+1`
-/

namespace A390745.P2685384072831172842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390745.P2685384072831172842

/-! ## A390745.P2887460938816156629

`eq[1, A391642(A028310(n))]`
-/

namespace A390745.P2887460938816156629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390745.P2887460938816156629

/-! ## A390745.P4614023401844769074

`A014681(eq[1, A391642(n+1)])`
-/

namespace A390745.P4614023401844769074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A390745.P4614023401844769074

/-! ## A390745.P12848618023687062225

`eq[3, A391621(A000007(n)+n)]`
-/

namespace A390745.P12848618023687062225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390745.P12848618023687062225

/-! ## A390745.P12232345513112977754

`lt[A103840(A391642(n+1)*A391642(n+1)), 1]+1`
-/

namespace A390745.P12232345513112977754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (A391642 (n + 1) * A391642 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390745.P12232345513112977754

/-! ## A390745.P2677711472046222353

`filter[A302042(n+1), A391642(#)]`
-/

namespace A390745.P2677711472046222353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391642 (f1 j).toNat = 1) n)

end

end A390745.P2677711472046222353

/-! ## A390745.P3746309391330784635

`filter[A065037(n+1), A391642(#)]`
-/

namespace A390745.P3746309391330784635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391642 (f1 j).toNat = 1) n)

end

end A390745.P3746309391330784635

/-!
# A390746: Number of strict integer partitions of n > 0 such that the least part plus the greatest part is odd.

The programs for A390746, there is no canonical definition to state claims against.
-/

/-! ## A390746.P9375780616807833369

`A000009(n+1)-A391227(n+1)`
-/

namespace A390746.P9375780616807833369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A391227 (n + 1)

end

end A390746.P9375780616807833369

/-! ## A390746.P1430025454959097724

`A117409(n+3)-A391227(n+1)`
-/

namespace A390746.P1430025454959097724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 3) - A391227 (n + 1)

end

end A390746.P1430025454959097724

/-! ## A390746.P17935841636234054184

`A026832(n+1)+A026833(n+1)-A391227(n+1)`
-/

namespace A390746.P17935841636234054184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 (n + 1) + (A026833 (n + 1) - A391227 (n + 1))

end

end A390746.P17935841636234054184

/-! ## A390746.P7835657903314524768

`A067659(n+1)+A067661(n+1)-A391227(n+1)`
-/

namespace A390746.P7835657903314524768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 1) + (A067661 (n + 1) - A391227 (n + 1))

end

end A390746.P7835657903314524768

/-! ## A390746.P310953468019198962

`A391231(n+1)-A391233(n+1)`
-/

namespace A390746.P310953468019198962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391231 (n + 1) - A391233 (n + 1)

end

end A390746.P310953468019198962

/-! ## A390746.P7519851038392177298

`A391228(n+1)+A391231(n+1)-A391227(n+1)`
-/

namespace A390746.P7519851038392177298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391228 (n + 1) + (A391231 (n + 1) - A391227 (n + 1))

end

end A390746.P7519851038392177298

/-!
# A390747: Numbers k such that there is no nonnegative integer sequence whose first sums are the k-th composition in standard order.

The programs for A390747, there is no canonical definition to state claims against.
-/

/-! ## A390747.P17124329707724992896

`eq[0, A391621(1+n)]+1`
-/

namespace A390747.P17124329707724992896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390747.P17124329707724992896

/-! ## A390747.P12814398466980080714

`lt[A391621(n+1), 1]+1`
-/

namespace A390747.P12814398466980080714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390747.P12814398466980080714

/-! ## A390747.P14721277857841807605

`eq[0, A391621(A028310(n))]`
-/

namespace A390747.P14721277857841807605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391621 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390747.P14721277857841807605

/-!
# A390748: Zumkeller numbers that are not oblong numbers.

The programs for A390748, there is no canonical definition to state claims against.
-/

/-! ## A390748.P14603252273076032399

`∩[A083207(n+1), A308874(n+1)]`
-/

namespace A390748.P14603252273076032399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390748.P14603252273076032399

/-! ## A390748.P17345170767255042671

`∩[A049068(n+1), A083207(n+1)]`
-/

namespace A390748.P17345170767255042671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390748.P17345170767255042671

/-! ## A390748.P17927437521471641254

`∩[A078358(n+1), A083207(n+1)]`
-/

namespace A390748.P17927437521471641254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390748.P17927437521471641254

/-! ## A390748.P10580807714506095529

`filter[A049068(n+1), A179527(#)]`
-/

namespace A390748.P10580807714506095529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A390748.P10580807714506095529

/-! ## A390748.P9079686408339882540

`filter[A078358(n+1), A179527(#)]`
-/

namespace A390748.P9079686408339882540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A390748.P9079686408339882540

/-! ## A390748.P3961855498435066999

`filter[A083207(n+1), A267683(#)]`
-/

namespace A390748.P3961855498435066999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A390748.P3961855498435066999

/-! ## A390748.P1826129483942501240

`filter[A083207(n+1), A267810(#)]`
-/

namespace A390748.P1826129483942501240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267810 (f1 j).toNat = 1) n)

end

end A390748.P1826129483942501240

/-! ## A390748.P8544193828933972043

`filter[A083207(n+1), A267813(#)]`
-/

namespace A390748.P8544193828933972043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A390748.P8544193828933972043

/-! ## A390748.P13672127747763459664

`filter[A308874(n+1), A179527(#)]`
-/

namespace A390748.P13672127747763459664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A390748.P13672127747763459664

/-!
# A390749: Number of permutations p of [n] satisfying Sum_{i=1..n} (p(i)-i)^2 = 2*n.

The programs for A390749, there is no canonical definition to state claims against.
-/

/-! ## A390749.P9922000661719307578

`A360247(A274538(n))-A109754(A000005(n+1))`
-/

namespace A390749.P9922000661719307578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A274538 n).toNat - A109754 (A000005 (n + 1)).toNat

end

end A390749.P9922000661719307578

/-!
# A390752: The Euler totient of the smallest number whose square is divisible by n.

The programs for A390752, the canonical program `A390752.P14431979490250258811` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390752 has offset 1).

The definition of A390752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390752.P14431979490250258811

`A000010(A019554(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390752

/-- `A000010(A019554(n+1))` -/
def P14431979490250258811.Spec : Prop :=
  ∀ n, P14431979490250258811.a n = A390752 (n + 1)

theorem P14431979490250258811.correct : P14431979490250258811.Spec := by
  intro n
  simp only [A390752, Nat.add_sub_cancel]

end A390752

/-! ## A390752.P16361091105866404339

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/((1+n)*∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A390752.P16361091105866404339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / (((1 + n) * (∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) : ℕ) : ℚ)

end

end A390752.P16361091105866404339

namespace A390752

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/((1+n)*∏{p}[n+1, #^val(n+1, #²)])` -/
def P16361091105866404339.Spec : Prop :=
  ∀ n, P16361091105866404339.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P9791110838714533916

`Δ[A002088(n)]/∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A390752.P9791110838714533916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

end

end A390752.P9791110838714533916

namespace A390752

/-- `Δ[A002088(n)]/∏{p}[n+1, #^val(n+1, #²)]` -/
def P9791110838714533916.Spec : Prop :=
  ∀ n, P9791110838714533916.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P16821799320185954022

`A000010((1+n)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A390752.P16821799320185954022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((1 + n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A390752.P16821799320185954022

namespace A390752

/-- `A000010((1+n)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P16821799320185954022.Spec : Prop :=
  ∀ n, P16821799320185954022.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P13446518030018790024

`A039649((n+1)/∏{p}[n+1, #^val(n+1, #²)])-1`
-/

namespace A390752.P13446518030018790024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat - 1

end

end A390752.P13446518030018790024

namespace A390752

/-- `A039649((n+1)/∏{p}[n+1, #^val(n+1, #²)])-1` -/
def P13446518030018790024.Spec : Prop :=
  ∀ n, P13446518030018790024.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P10968645331509799660

`A346612(A350390(n+1))`
-/

namespace A390752.P10968645331509799660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (A350390 (n + 1)).toNat

end

end A390752.P10968645331509799660

namespace A390752

/-- `A346612(A350390(n+1))` -/
def P10968645331509799660.Spec : Prop :=
  ∀ n, P10968645331509799660.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P1948023199999938763

`A173557(n+1)*A295657(n+1)`
-/

namespace A390752.P1948023199999938763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A295657 (n + 1)

end

end A390752.P1948023199999938763

namespace A390752

/-- `A173557(n+1)*A295657(n+1)` -/
def P1948023199999938763.Spec : Prop :=
  ∀ n, P1948023199999938763.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P18397225705453086086

`A000010((n+1)/A000188(n+1))`
-/

namespace A390752.P18397225705453086086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A390752.P18397225705453086086

namespace A390752

/-- `A000010((n+1)/A000188(n+1))` -/
def P18397225705453086086.Spec : Prop :=
  ∀ n, P18397225705453086086.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P15713439312599655788

`A152958(n+1)/A069290(n+1)`
-/

namespace A390752.P15713439312599655788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152958 (n + 1) : ℚ) / (A069290 (n + 1) : ℚ)

end

end A390752.P15713439312599655788

namespace A390752

/-- `A152958(n+1)/A069290(n+1)` -/
def P15713439312599655788.Spec : Prop :=
  ∀ n, P15713439312599655788.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P10961377475204766840

`A327171(n+1)/A019554(n+1)`
-/

namespace A390752.P10961377475204766840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ)

end

end A390752.P10961377475204766840

namespace A390752

/-- `A327171(n+1)/A019554(n+1)` -/
def P10961377475204766840.Spec : Prop :=
  ∀ n, P10961377475204766840.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P14601572905616507214

`A002618(n+1)/A355264(n+1)`
-/

namespace A390752.P14601572905616507214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A355264 (n + 1) : ℚ)

end

end A390752.P14601572905616507214

namespace A390752

/-- `A002618(n+1)/A355264(n+1)` -/
def P14601572905616507214.Spec : Prop :=
  ∀ n, P14601572905616507214.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P8707854662477096254

`A299822(n+1)/A355261(n+1)`
-/

namespace A390752.P8707854662477096254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (A355261 (n + 1) : ℚ)

end

end A390752.P8707854662477096254

namespace A390752

/-- `A299822(n+1)/A355261(n+1)` -/
def P8707854662477096254.Spec : Prop :=
  ∀ n, P8707854662477096254.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P3330812121371877146

`A152958(n+1)/A000203(A000188(n+1))`
-/

namespace A390752.P3330812121371877146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152958 (n + 1) : ℚ) / (A000203 (A000188 (n + 1)).toNat : ℚ)

end

end A390752.P3330812121371877146

namespace A390752

/-- `A152958(n+1)/A000203(A000188(n+1))` -/
def P3330812121371877146.Spec : Prop :=
  ∀ n, P3330812121371877146.a n = (A390752 (n + 1) : ℚ)

end A390752

/-! ## A390752.P7165815824976296896

`A000010(A064549(n+1)/A355261(n+1))`
-/

namespace A390752.P7165815824976296896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A355261 (n + 1) : ℚ))).toNat

end

end A390752.P7165815824976296896

namespace A390752

/-- `A000010(A064549(n+1)/A355261(n+1))` -/
def P7165815824976296896.Spec : Prop :=
  ∀ n, P7165815824976296896.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P8371733423812290137

`A390753((1+n)*∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A390752.P8371733423812290137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 ((1 + n) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)))

end

end A390752.P8371733423812290137

namespace A390752

/-- `A390753((1+n)*∏{p}[n+1, #^val(n+1, #²)])` -/
def P8371733423812290137.Spec : Prop :=
  ∀ n, P8371733423812290137.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P6319856682082983500

`A390753(A355264(n+1))`
-/

namespace A390752.P6319856682082983500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 (A355264 (n + 1)).toNat

end

end A390752.P6319856682082983500

namespace A390752

/-- `A390753(A355264(n+1))` -/
def P6319856682082983500.Spec : Prop :=
  ∀ n, P6319856682082983500.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P4736175105154011381

`A390753((n+1)*A000188(n+1))`
-/

namespace A390752.P4736175105154011381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A390752.P4736175105154011381

namespace A390752

/-- `A390753((n+1)*A000188(n+1))` -/
def P4736175105154011381.Spec : Prop :=
  ∀ n, P4736175105154011381.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P7905912685883522925

`A000010(A019555((n+1)*A000188(n+1)))`
-/

namespace A390752.P7905912685883522925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019555 ((n + 1 : ℤ) * A000188 (n + 1)).toNat).toNat

end

end A390752.P7905912685883522925

namespace A390752

/-- `A000010(A019555((n+1)*A000188(n+1)))` -/
def P7905912685883522925.Spec : Prop :=
  ∀ n, P7905912685883522925.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P9374471059837298875

`A095026(A000217((n+1)/A000188(n+1)))`
-/

namespace A390752.P9374471059837298875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095026 (A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat).toNat

end

end A390752.P9374471059837298875

namespace A390752

/-- `A095026(A000217((n+1)/A000188(n+1)))` -/
def P9374471059837298875.Spec : Prop :=
  ∀ n, P9374471059837298875.a n = A390752 (n + 1)

end A390752

/-! ## A390752.P1353921421825022314

`A000010(A327172(A327171(n+1)))`
-/

namespace A390752.P1353921421825022314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A327172 (A327171 (n + 1)).toNat).toNat

end

end A390752.P1353921421825022314

namespace A390752

/-- `A000010(A327172(A327171(n+1)))` -/
def P1353921421825022314.Spec : Prop :=
  ∀ n, P1353921421825022314.a n = A390752 (n + 1)

end A390752

/-!
# A390753: The Euler totient of the smallest number whose cube is divisible by n.

The programs for A390753, the canonical program `A390753.P10861819180200692561` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390753 has offset 1).

The definition of A390753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390753.P10861819180200692561

`A000010(A019555(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A390753

/-- `A000010(A019555(n+1))` -/
def P10861819180200692561.Spec : Prop :=
  ∀ n, P10861819180200692561.a n = A390753 (n + 1)

theorem P10861819180200692561.correct : P10861819180200692561.Spec := by
  intro n
  simp only [A390753, Nat.add_sub_cancel]

end A390753

/-! ## A390753.P4972496274851708793

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A000189(n+1)`
-/

namespace A390753.P4972496274851708793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / (A000189 (n + 1) : ℚ)

end

end A390753.P4972496274851708793

namespace A390753

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A000189(n+1)` -/
def P4972496274851708793.Spec : Prop :=
  ∀ n, P4972496274851708793.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P4347295988096023946

`Δ[A002088(n)]/A000189(n+1)`
-/

namespace A390753.P4347295988096023946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000189 (n + 1) : ℚ)

end

end A390753.P4347295988096023946

namespace A390753

/-- `Δ[A002088(n)]/A000189(n+1)` -/
def P4347295988096023946.Spec : Prop :=
  ∀ n, P4347295988096023946.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P15914738834939193233

`A000010(A254733(1+n)-(n+1))`
-/

namespace A390753.P15914738834939193233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A254733 (1 + n) - (n + 1 : ℤ)).toNat

end

end A390753.P15914738834939193233

namespace A390753

/-- `A000010(A254733(1+n)-(n+1))` -/
def P15914738834939193233.Spec : Prop :=
  ∀ n, P15914738834939193233.a n = A390753 (n + 1)

end A390753

/-! ## A390753.P7536728903550147370

`A000010((1+n)/A000189(n+1))`
-/

namespace A390753.P7536728903550147370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((1 + n : ℚ) / (A000189 (n + 1) : ℚ))).toNat

end

end A390753.P7536728903550147370

namespace A390753

/-- `A000010((1+n)/A000189(n+1))` -/
def P7536728903550147370.Spec : Prop :=
  ∀ n, P7536728903550147370.a n = A390753 (n + 1)

theorem P7536728903550147370.correct : P7536728903550147370.Spec := by
  intro n
  simp only [A390753, Nat.add_sub_cancel, A390753.P7536728903550147370.a, A390753.P10861819180200692561.a, A000010, A000010.P4673923239450215316.a, A000189, A000189.P4125001561914309349.a, A019555, A019555.P8996553868709767269.a, A003557, A003557.P6364735403900941810.a, A053149, A053149.P4125189005957149122.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048798, A048798.P11871248388947828360.a, A011262, A011262.P4477044997236671341.a, A050985, A050985.P12411912326700818488.f1, A050985.P12411912326700818488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A390753

/-! ## A390753.P10913960799492626679

`(n-A219428(n+1))/A000189(n+1)`
-/

namespace A390753.P10913960799492626679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A000189 (n + 1) : ℚ)

end

end A390753.P10913960799492626679

namespace A390753

/-- `(n-A219428(n+1))/A000189(n+1)` -/
def P10913960799492626679.Spec : Prop :=
  ∀ n, P10913960799492626679.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P12555725753166088878

`(A121048(n+1)-(n+1))/A000189(n+1)`
-/

namespace A390753.P12555725753166088878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121048 (n + 1) - (n + 1 : ℤ) : ℚ) / (A000189 (n + 1) : ℚ)

end

end A390753.P12555725753166088878

namespace A390753

/-- `(A121048(n+1)-(n+1))/A000189(n+1)` -/
def P12555725753166088878.Spec : Prop :=
  ∀ n, P12555725753166088878.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P8398692106989818444

`floor(A002618(n+1)/(n+1))/A000189(n+1)`
-/

namespace A390753.P8398692106989818444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A002618 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / (A000189 (n + 1) : ℚ)

end

end A390753.P8398692106989818444

namespace A390753

/-- `floor(A002618(n+1)/(n+1))/A000189(n+1)` -/
def P8398692106989818444.Spec : Prop :=
  ∀ n, P8398692106989818444.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P14851118075171594344

`A000010(A053150(n+1)*A056552(n+1))`
-/

namespace A390753.P14851118075171594344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053150 (n + 1) * A056552 (n + 1)).toNat

end

end A390753.P14851118075171594344

namespace A390753

/-- `A000010(A053150(n+1)*A056552(n+1))` -/
def P14851118075171594344.Spec : Prop :=
  ∀ n, P14851118075171594344.a n = A390753 (n + 1)

end A390753

/-! ## A390753.P16084608569499639906

`A390754(n+1)/A000290(root(A053149(1+n), 3))`
-/

namespace A390753.P16084608569499639906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A000290 (SequenceMachineLib.roundAway ((A053149 (1 + n) : ℝ) ^ (1 / (3 : ℝ)))).toNat : ℚ)

end

end A390753.P16084608569499639906

namespace A390753

/-- `A390754(n+1)/A000290(root(A053149(1+n), 3))` -/
def P16084608569499639906.Spec : Prop :=
  ∀ n, P16084608569499639906.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P837858288058759199

`A390754(n+1)/(A019555(n+1)*A019555(n+1))`
-/

namespace A390753.P837858288058759199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390754 (n + 1) : ℚ) / (A019555 (n + 1) * A019555 (n + 1) : ℚ)

end

end A390753.P837858288058759199

namespace A390753

/-- `A390754(n+1)/(A019555(n+1)*A019555(n+1))` -/
def P837858288058759199.Spec : Prop :=
  ∀ n, P837858288058759199.a n = (A390753 (n + 1) : ℚ)

end A390753

/-! ## A390753.P16310888328746031664

`A390752(A019555((n+1)²))`
-/

namespace A390753.P16310888328746031664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390752 (A019555 ((n + 1) ^ 2)).toNat

end

end A390753.P16310888328746031664

namespace A390753

/-- `A390752(A019555((n+1)²))` -/
def P16310888328746031664.Spec : Prop :=
  ∀ n, P16310888328746031664.a n = A390753 (n + 1)

end A390753

/-! ## A390753.P18274081253594788792

`A390752(A390754(n+1)/A390752(n+1))`
-/

namespace A390753.P18274081253594788792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390752 (SequenceMachineLib.roundAway ((A390754 (n + 1) : ℚ) / (A390752 (n + 1) : ℚ))).toNat

end

end A390753.P18274081253594788792

namespace A390753

/-- `A390752(A390754(n+1)/A390752(n+1))` -/
def P18274081253594788792.Spec : Prop :=
  ∀ n, P18274081253594788792.a n = A390753 (n + 1)

end A390753

/-!
# A390754: The Euler totient of the smallest cube divisible by n.

The programs for A390754, the canonical program `A390754.P7808372230478735667` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390754 has offset 1).

The definition of A390754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A390754

/-- `A000010(A053149(n+1))` -/
def P7808372230478735667.Spec : Prop :=
  ∀ n, P7808372230478735667.a n = A390754 (n + 1)

theorem P7808372230478735667.correct : P7808372230478735667.Spec := by
  intro n
  simp only [A390754, Nat.add_sub_cancel]

end A390754

/-! ## A390754.P5128108036385649680

`A053191(A019555(n+1))`
-/

namespace A390754.P5128108036385649680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053191 (A019555 (n + 1)).toNat

end

end A390754.P5128108036385649680

namespace A390754

/-- `A053191(A019555(n+1))` -/
def P5128108036385649680.Spec : Prop :=
  ∀ n, P5128108036385649680.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P11495696549845068592

`A000010(n+1)*A048798(n+1)`
-/

namespace A390754.P11495696549845068592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A048798 (n + 1)

end

end A390754.P11495696549845068592

namespace A390754

/-- `A000010(n+1)*A048798(n+1)` -/
def P11495696549845068592.Spec : Prop :=
  ∀ n, P11495696549845068592.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P123474018164668293

`A000290(root(A053149(1+n), 3))*A390753(n+1)`
-/

namespace A390754.P123474018164668293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A053149 (1 + n) : ℝ) ^ (1 / (3 : ℝ)))).toNat * A390753 (n + 1)

end

end A390754.P123474018164668293

namespace A390754

/-- `A000290(root(A053149(1+n), 3))*A390753(n+1)` -/
def P123474018164668293.Spec : Prop :=
  ∀ n, P123474018164668293.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P8869543461658509892

`A019555(n+1)*A019555(n+1)*A390753(n+1)`
-/

namespace A390754.P8869543461658509892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1) * A019555 (n + 1) * A390753 (n + 1)

end

end A390754.P8869543461658509892

namespace A390754

/-- `A019555(n+1)*A019555(n+1)*A390753(n+1)` -/
def P8869543461658509892.Spec : Prop :=
  ∀ n, P8869543461658509892.a n = A390754 (n + 1)

end A390754

/-! ## A390754.P15391026293941876893

`A053149(n+1)/A356193(n+1)*A390756(n+1)`
-/

namespace A390754.P15391026293941876893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A356193 (n + 1) : ℚ) * (A390756 (n + 1) : ℚ)

end

end A390754.P15391026293941876893

namespace A390754

/-- `A053149(n+1)/A356193(n+1)*A390756(n+1)` -/
def P15391026293941876893.Spec : Prop :=
  ∀ n, P15391026293941876893.a n = (A390754 (n + 1) : ℚ)

end A390754

/-!
# A390755: The Euler totient of the smallest powerful number divisible by n.

The programs for A390755, the canonical program `A390755.P10814338958508066738` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390755 has offset 1).

The definition of A390755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390755.P10814338958508066738

`A000010(A197863(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A390755

/-- `A000010(A197863(n+1))` -/
def P10814338958508066738.Spec : Prop :=
  ∀ n, P10814338958508066738.a n = A390755 (n + 1)

theorem P10814338958508066738.correct : P10814338958508066738.Spec := by
  intro n
  simp only [A390755, Nat.add_sub_cancel]

end A390755

/-! ## A390755.P3226832115451678317

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])`
-/

namespace A390755.P3226832115451678317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f3 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℚ)

end

end A390755.P3226832115451678317

namespace A390755

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])` -/
def P3226832115451678317.Spec : Prop :=
  ∀ n, P3226832115451678317.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P15159806397605151953

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A057521(n+1)`
-/

namespace A390755.P15159806397605151953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / (A057521 (n + 1) : ℚ)

end

end A390755.P15159806397605151953

namespace A390755

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/A057521(n+1)` -/
def P15159806397605151953.Spec : Prop :=
  ∀ n, P15159806397605151953.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P11166271252306422671

`Δ[A002088(n)]*A055231(n+1)`
-/

namespace A390755.P11166271252306422671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055231 (n + 1)

end

end A390755.P11166271252306422671

namespace A390755

/-- `Δ[A002088(n)]*A055231(n+1)` -/
def P11166271252306422671.Spec : Prop :=
  ∀ n, P11166271252306422671.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P14279725007773335154

`Δ[A005728(n)]*A055231(n+1)`
-/

namespace A390755.P14279725007773335154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A055231 (n + 1)

end

end A390755.P14279725007773335154

namespace A390755

/-- `Δ[A005728(n)]*A055231(n+1)` -/
def P14279725007773335154.Spec : Prop :=
  ∀ n, P14279725007773335154.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P17555469532547630836

`A000010(1+n)*A055231(n+1)`
-/

namespace A390755.P17555469532547630836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 + n) * A055231 (n + 1)

end

end A390755.P17555469532547630836

namespace A390755

/-- `A000010(1+n)*A055231(n+1)` -/
def P17555469532547630836.Spec : Prop :=
  ∀ n, P17555469532547630836.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P9833950938372830663

`A254503(n+1)*A380161(n+1)`
-/

namespace A390755.P9833950938372830663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (n + 1) * A380161 (n + 1)

end

end A390755.P9833950938372830663

namespace A390755

/-- `A254503(n+1)*A380161(n+1)` -/
def P9833950938372830663.Spec : Prop :=
  ∀ n, P9833950938372830663.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P1132713508199146385

`A002618(n+1)/A057521(n+1)`
-/

namespace A390755.P1132713508199146385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A057521 (n + 1) : ℚ)

end

end A390755.P1132713508199146385

namespace A390755

/-- `A002618(n+1)/A057521(n+1)` -/
def P1132713508199146385.Spec : Prop :=
  ∀ n, P1132713508199146385.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P1515813797770788335

`A299822(n+1)/A071773(n+1)`
-/

namespace A390755.P1515813797770788335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A390755.P1515813797770788335

namespace A390755

/-- `A299822(n+1)/A071773(n+1)` -/
def P1515813797770788335.Spec : Prop :=
  ∀ n, P1515813797770788335.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P13372561387393876824

`A327171(n+1)/A055229(n+1)`
-/

namespace A390755.P13372561387393876824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327171 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A390755.P13372561387393876824

namespace A390755

/-- `A327171(n+1)/A055229(n+1)` -/
def P13372561387393876824.Spec : Prop :=
  ∀ n, P13372561387393876824.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P12021858414120418058

`gcd(A327171(n+1), A390756(n+1))`
-/

namespace A390755.P12021858414120418058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327171 (n + 1)) (A390756 (n + 1))

end

end A390755.P12021858414120418058

namespace A390755

/-- `gcd(A327171(n+1), A390756(n+1))` -/
def P12021858414120418058.Spec : Prop :=
  ∀ n, (P12021858414120418058.a n : ℤ) = A390755 (n + 1)

end A390755

/-! ## A390755.P9265262167590979945

`A000010(n+1)*A007913(n+1)/A055229(n+1)`
-/

namespace A390755.P9265262167590979945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A007913 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A390755.P9265262167590979945

namespace A390755

/-- `A000010(n+1)*A007913(n+1)/A055229(n+1)` -/
def P9265262167590979945.Spec : Prop :=
  ∀ n, P9265262167590979945.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P12963107830507983464

`A197863(n+1)/A356193(n+1)*A390756(n+1)`
-/

namespace A390755.P12963107830507983464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A356193 (n + 1) : ℚ) * (A390756 (n + 1) : ℚ)

end

end A390755.P12963107830507983464

namespace A390755

/-- `A197863(n+1)/A356193(n+1)*A390756(n+1)` -/
def P12963107830507983464.Spec : Prop :=
  ∀ n, P12963107830507983464.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P2696647114919640367

`A000010(lcm(1+n, ∏{p}[1+n, #²]))`
-/

namespace A390755.P2696647114919640367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm (1 + n) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2))

end

end A390755.P2696647114919640367

namespace A390755

/-- `A000010(lcm(1+n, ∏{p}[1+n, #²]))` -/
def P2696647114919640367.Spec : Prop :=
  ∀ n, P2696647114919640367.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P3281893231520937755

`A390756((n+1)²)/(n+1)`
-/

namespace A390755.P3281893231520937755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390756 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A390755.P3281893231520937755

namespace A390755

/-- `A390756((n+1)²)/(n+1)` -/
def P3281893231520937755.Spec : Prop :=
  ∀ n, P3281893231520937755.a n = (A390755 (n + 1) : ℚ)

end A390755

/-! ## A390755.P8819427166144113088

`A076685((n+1)*A055231(n+1))`
-/

namespace A390755.P8819427166144113088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390755.P8819427166144113088

namespace A390755

/-- `A076685((n+1)*A055231(n+1))` -/
def P8819427166144113088.Spec : Prop :=
  ∀ n, P8819427166144113088.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P17503015968914352750

`A254503((n+1)*A055231(n+1))`
-/

namespace A390755.P17503015968914352750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390755.P17503015968914352750

namespace A390755

/-- `A254503((n+1)*A055231(n+1))` -/
def P17503015968914352750.Spec : Prop :=
  ∀ n, P17503015968914352750.a n = A390755 (n + 1)

end A390755

/-! ## A390755.P15487599726727861404

`A380160((n+1)*A055231(n+1))`
-/

namespace A390755.P15487599726727861404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380160 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390755.P15487599726727861404

namespace A390755

/-- `A380160((n+1)*A055231(n+1))` -/
def P15487599726727861404.Spec : Prop :=
  ∀ n, P15487599726727861404.a n = A390755 (n + 1)

end A390755

/-!
# A390756: The Euler totient of the smallest cubefull number divisible by n.

The programs for A390756, the canonical program `A390756.P11425298169468382512` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390756 has offset 1).

The definition of A390756 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390756.P11425298169468382512

`A000010(A356193(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390756

/-- `A000010(A356193(n+1))` -/
def P11425298169468382512.Spec : Prop :=
  ∀ n, P11425298169468382512.a n = A390756 (n + 1)

theorem P11425298169468382512.correct : P11425298169468382512.Spec := by
  intro n
  simp only [A390756, Nat.add_sub_cancel]

end A390756

/-! ## A390756.P5882423467993036822

`lcm(n+1, ∏{p}[n+1, #^3])/(n+1)*A000010(n+1)`
-/

namespace A390756.P5882423467993036822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3) : ℚ) / (n + 1 : ℚ) * (A000010 (n + 1) : ℚ)

end

end A390756.P5882423467993036822

namespace A390756

/-- `lcm(n+1, ∏{p}[n+1, #^3])/(n+1)*A000010(n+1)` -/
def P5882423467993036822.Spec : Prop :=
  ∀ n, P5882423467993036822.a n = (A390756 (n + 1) : ℚ)

end A390756

/-! ## A390756.P17287549449389241774

`A000010(n+1)*A360541(n+1)`
-/

namespace A390756.P17287549449389241774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A360541 (n + 1)

end

end A390756.P17287549449389241774

namespace A390756

/-- `A000010(n+1)*A360541(n+1)` -/
def P17287549449389241774.Spec : Prop :=
  ∀ n, P17287549449389241774.a n = A390756 (n + 1)

end A390756

/-! ## A390756.P99115726024755531

`lcm(n-A219428(n+1), A053191(A007947(n+1)))`
-/

namespace A390756.P99115726024755531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A219428 (n + 1)) (A053191 (A007947 (n + 1)).toNat)

end

end A390756.P99115726024755531

namespace A390756

/-- `lcm(n-A219428(n+1), A053191(A007947(n+1)))` -/
def P99115726024755531.Spec : Prop :=
  ∀ n, (P99115726024755531.a n : ℤ) = A390756 (n + 1)

end A390756

/-! ## A390756.P15077657019785016826

`A007947(A360539(n+1))*A380160((n+1)*A055231(n+1))`
-/

namespace A390756.P15077657019785016826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A360539 (n + 1)).toNat * A380160 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390756.P15077657019785016826

namespace A390756

/-- `A007947(A360539(n+1))*A380160((n+1)*A055231(n+1))` -/
def P15077657019785016826.Spec : Prop :=
  ∀ n, P15077657019785016826.a n = A390756 (n + 1)

end A390756

/-! ## A390756.P13939356390932459292

`A360539(A350390(n+1))*A380160((n+1)*A055231(n+1))`
-/

namespace A390756.P13939356390932459292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A350390 (n + 1)).toNat * A380160 ((n + 1 : ℤ) * A055231 (n + 1)).toNat

end

end A390756.P13939356390932459292

namespace A390756

/-- `A360539(A350390(n+1))*A380160((n+1)*A055231(n+1))` -/
def P13939356390932459292.Spec : Prop :=
  ∀ n, P13939356390932459292.a n = A390756 (n + 1)

end A390756

/-!
# A390757: Numbers k such that (23^k - 4^k)/19 is prime.

The programs for A390757, there is no canonical definition to state claims against.
-/

/-! ## A390757.P2745097537095541046

`A068845((2*n+1)*A001358(n+2))`
-/

namespace A390757.P2745097537095541046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068845 ((2 * n + 1 : ℤ) * A001358 (n + 2)).toNat

end

end A390757.P2745097537095541046

/-!
# A390758: Primes == 1 (mod 16), for which the octonic Gauss sum is greater than the quartic one.

The programs for A390758, there is no canonical definition to state claims against.
-/

/-! ## A390758.P10804537454623968260

`A094407(floor((4*n+3)/3)%A274560(2*n+1))`
-/

namespace A390758.P10804537454623968260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (Int.tmod ⌊(4 * n + 3 : ℚ) / 3⌋ (A274560 (2 * n + 1))).toNat

end

end A390758.P10804537454623968260

/-! ## A390758.P1124805291999168427

`A094407(lt[A181063(n+1), A195316(3*n+1)])`
-/

namespace A390758.P1124805291999168427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195316 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390758.P1124805291999168427

/-!
# A390760: Odd composite numbers that are squarefree or prime powers.

The programs for A390760, there is no canonical definition to state claims against.
-/

/-! ## A390760.P6400801269898203480

`∩[2*n+1, A340656(n+1)]`
-/

namespace A390760.P6400801269898203480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390760.P6400801269898203480

/-! ## A390760.P8569759967511474340

`∩[2*n+1, A388427(n+1)]`
-/

namespace A390760.P8569759967511474340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390760.P8569759967511474340

/-! ## A390760.P13478680818231081583

`lt[A340655(n+1)-(-1)^n+1, 1]+1`
-/

namespace A390760.P13478680818231081583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340655 (n + 1) - (-1) ^ n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390760.P13478680818231081583

/-! ## A390760.P10295980704897320253

`filter[A340656(n+1), A000035(#)]`
-/

namespace A390760.P10295980704897320253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A390760.P10295980704897320253

/-! ## A390760.P11344335316655366391

`filter[A340656(n+1), A001511(#)]`
-/

namespace A390760.P11344335316655366391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001511 (f1 j).toNat = 1) n)

end

end A390760.P11344335316655366391

/-! ## A390760.P2452322010832303699

`filter[A388427(n+1), A000035(#)]`
-/

namespace A390760.P2452322010832303699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A390760.P2452322010832303699

/-! ## A390760.P10993830430046707913

`filter[A340656(n+1), A266070(#)]`
-/

namespace A390760.P10993830430046707913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A390760.P10993830430046707913

/-! ## A390760.P15275242169573141942

`filter[A340656(n+1), A266611(#)]`
-/

namespace A390760.P15275242169573141942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A390760.P15275242169573141942

/-! ## A390760.P3950695323249240478

`filter[A340656(n+1), A266719(#)]`
-/

namespace A390760.P3950695323249240478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A390760.P3950695323249240478

/-! ## A390760.P12158585128036568882

`filter[A340656(n+1), A296066(#)]`
-/

namespace A390760.P12158585128036568882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A390760.P12158585128036568882

/-!
# A390762: Number of ways to write n as (p-1)^2 + (q-1)^2 + (r-1)^2/2 + (s-1)^2/4 with p <= q, where each of p,q,r,s is either 1 or an odd prime.

The programs for A390762, there is no canonical definition to state claims against.
-/

/-! ## A390762.P15241168279395287980

`A046951(1+∑[A000009(3*n+2)])`
-/

namespace A390762.P15241168279395287980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (1 + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390762.P15241168279395287980

/-! ## A390762.P16220847929225192787

`A055642(A085207(2*n)^A023416(n))`
-/

namespace A390762.P16220847929225192787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A085207 (2 * n) : ℚ) ^ (A023416 n : ℤ))).toNat

end

end A390762.P16220847929225192787

/-! ## A390762.P14995263953358604291

`A227739(A171175(2*(n+1))^A023416(n))`
-/

namespace A390762.P14995263953358604291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (SequenceMachineLib.roundAway ((A171175 (2 * (n + 1)) : ℚ) ^ (A023416 n : ℤ))).toNat

end

end A390762.P14995263953358604291

/-! ## A390762.P3948609943287610904

`A036225(A071563(n+1))`
-/

namespace A390762.P3948609943287610904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 (A071563 (n + 1)).toNat

end

end A390762.P3948609943287610904

/-! ## A390762.P5337982267422952430

`A026141(A059190(n+2))`
-/

namespace A390762.P5337982267422952430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (A059190 (n + 2)).toNat

end

end A390762.P5337982267422952430

/-!
# A390763: a(n) is the number of 5 element sets of distinct integer-sided trapezoids each of area less than 3*n^2 whose base angles are 60 degrees that fill a regular hexagon of side n units.

The programs for A390763, there is no canonical definition to state claims against.
-/

/-! ## A390763.P16770554401597753031

`n*ceil(log2(A396892(n+5)/log(3)))`
-/

namespace A390763.P16770554401597753031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.logb 2 ((A396892 (n + 5) : ℝ) / Real.log (3 : ℝ))⌉

end

end A390763.P16770554401597753031

/-! ## A390763.P17961712977050805468

`∑[A277899(A078008(2*n))]*n`
-/

namespace A390763.P17961712977050805468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277899 (A078008 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ)

end

end A390763.P17961712977050805468

/-!
# A390764: Number of digits in base-6 representation of n.

The programs for A390764, the canonical program `A390764.P16801981462856601229` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390764 has offset 0).

The definition of A390764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390764.P85863527403101151

`∑[char[6*T(n-1,k)]]` with `a(0)=6`
-/

namespace A390764.P85863527403101151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  6 * SequenceMachineLib.triUp f2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P85863527403101151

namespace A390764

/-- `∑[char[6*T(n-1,k)]]` -/
def P85863527403101151.Spec : Prop :=
  ∀ n, (P85863527403101151.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P454406238016350739

`∑[char[6*T(n-1,k-1)]]` with `a(0)=6`
-/

namespace A390764.P454406238016350739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  6 * SequenceMachineLib.triUpLeft f2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P454406238016350739

namespace A390764

/-- `∑[char[6*T(n-1,k-1)]]` -/
def P454406238016350739.Spec : Prop :=
  ∀ n, (P454406238016350739.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P16956853391329881914

`∑[char[6*T(n-2,k)]]` with `a(0)=6`
-/

namespace A390764.P16956853391329881914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  6 * SequenceMachineLib.triUp2 f2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P16956853391329881914

namespace A390764

/-- `∑[char[6*T(n-2,k)]]` -/
def P16956853391329881914.Spec : Prop :=
  ∀ n, (P16956853391329881914.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P6063343585611563081

`∑[char[6*T(n-2,k-1)]]` with `a(0)=6`
-/

namespace A390764.P6063343585611563081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  6 * SequenceMachineLib.triUp2Left f2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P6063343585611563081

namespace A390764

/-- `∑[char[6*T(n-2,k-1)]]` -/
def P6063343585611563081.Spec : Prop :=
  ∀ n, (P6063343585611563081.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P4757233387184095902

`∑[char[and(6^n, -2)]]`
-/

namespace A390764.P4757233387184095902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 ^ n : ℤ) (-2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P4757233387184095902

namespace A390764

/-- `∑[char[and(6^n, -2)]]` -/
def P4757233387184095902.Spec : Prop :=
  ∀ n, (P4757233387184095902.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P16801981462856601229

`fp[6^(n+1)]+1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390764

/-- `fp[6^(n+1)]+1` -/
def P16801981462856601229.Spec : Prop :=
  ∀ n, (P16801981462856601229.a n : ℤ) = A390764 n

theorem P16801981462856601229.correct : P16801981462856601229.Spec := by
  intro n
  simp only [A390764]

end A390764

/-! ## A390764.P9554723992264691669

`1+∑[char[6^(n+1)]]`
-/

namespace A390764.P9554723992264691669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P9554723992264691669

namespace A390764

/-- `1+∑[char[6^(n+1)]]` -/
def P9554723992264691669.Spec : Prop :=
  ∀ n, (P9554723992264691669.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P9448651851987860715

`abs(fp[6^(n-1)]-1)`
-/

namespace A390764.P9448651851987860715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0 : ℤ) - 1|

end

end A390764.P9448651851987860715

namespace A390764

/-- `abs(fp[6^(n-1)]-1)` -/
def P9448651851987860715.Spec : Prop :=
  ∀ n, P9448651851987860715.a n = A390764 n

end A390764

/-! ## A390764.P12480742269594491118

`∑[char[(6^n)%(12^n)]]`
-/

namespace A390764.P12480742269594491118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n % 12 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P12480742269594491118

namespace A390764

/-- `∑[char[(6^n)%(12^n)]]` -/
def P12480742269594491118.Spec : Prop :=
  ∀ n, (P12480742269594491118.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P3401523561403417970

`∑[char[6*a(n-1)]]` with `a(0)=0, a(1)=6`
-/

namespace A390764.P3401523561403417970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  6 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P3401523561403417970

namespace A390764

/-- `∑[char[6*a(n-1)]]` -/
def P3401523561403417970.Spec : Prop :=
  ∀ n, (P3401523561403417970.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P3977468860917212366

`∑[char[6^n*A057427(n)]]`
-/

namespace A390764.P3977468860917212366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A057427 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P3977468860917212366

namespace A390764

/-- `∑[char[6^n*A057427(n)]]` -/
def P3977468860917212366.Spec : Prop :=
  ∀ n, (P3977468860917212366.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P10222000213884469747

`∑[char[6^n]]^(A040000(n)-1)`
-/

namespace A390764.P10222000213884469747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A040000 n - 1 : ℤ)

end

end A390764.P10222000213884469747

namespace A390764

/-- `∑[char[6^n]]^(A040000(n)-1)` -/
def P10222000213884469747.Spec : Prop :=
  ∀ n, P10222000213884469747.a n = (A390764 n : ℚ)

end A390764

/-! ## A390764.P4215883617504275348

`∑[char[A002017(abs(3-n))*6^n]]`
-/

namespace A390764.P4215883617504275348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 |3 - (n : ℤ)|.toNat * (6 ^ n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390764.P4215883617504275348

namespace A390764

/-- `∑[char[A002017(abs(3-n))*6^n]]` -/
def P4215883617504275348.Spec : Prop :=
  ∀ n, (P4215883617504275348.a n : ℤ) = A390764 n

end A390764

/-! ## A390764.P15402339348237832577

`A055642(A007092(n))`
-/

namespace A390764.P15402339348237832577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007092 n).toNat

end

end A390764.P15402339348237832577

namespace A390764

/-- `A055642(A007092(n))` -/
def P15402339348237832577.Spec : Prop :=
  ∀ n, P15402339348237832577.a n = A390764 n

end A390764

/-! ## A390764.P8921914971022220151

`A055642(record[A019516(n)])`
-/

namespace A390764.P8921914971022220151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A390764.P8921914971022220151

namespace A390764

/-- `A055642(record[A019516(n)])` -/
def P8921914971022220151.Spec : Prop :=
  ∀ n, P8921914971022220151.a n = A390764 n

end A390764

/-! ## A390764.P1841173618671895983

`A055642(A084984(n+1))`
-/

namespace A390764.P1841173618671895983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A084984 (n + 1)).toNat

end

end A390764.P1841173618671895983

namespace A390764

/-- `A055642(A084984(n+1))` -/
def P1841173618671895983.Spec : Prop :=
  ∀ n, P1841173618671895983.a n = A390764 n

end A390764

/-! ## A390764.P3120911945846591276

`A055642(A202267(n+1))`
-/

namespace A390764.P3120911945846591276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A202267 (n + 1)).toNat

end

end A390764.P3120911945846591276

namespace A390764

/-- `A055642(A202267(n+1))` -/
def P3120911945846591276.Spec : Prop :=
  ∀ n, P3120911945846591276.a n = A390764 n

end A390764

/-! ## A390764.P12981941118342799144

`A390767(A007092(n)+1)`
-/

namespace A390764.P12981941118342799144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (A007092 n + 1).toNat

end

end A390764.P12981941118342799144

namespace A390764

/-- `A390767(A007092(n)+1)` -/
def P12981941118342799144.Spec : Prop :=
  ∀ n, P12981941118342799144.a n = A390764 n

end A390764

/-! ## A390764.P9309694087666109698

`A055642(A037468(n))`
-/

namespace A390764.P9309694087666109698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A037468 n).toNat

end

end A390764.P9309694087666109698

namespace A390764

/-- `A055642(A037468(n))` -/
def P9309694087666109698.Spec : Prop :=
  ∀ n, P9309694087666109698.a n = A390764 n

end A390764

/-! ## A390764.P9672544822362244634

`A000196(A108582((n+1)²))`
-/

namespace A390764.P9672544822362244634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A108582 ((n + 1) ^ 2)).toNat

end

end A390764.P9672544822362244634

namespace A390764

/-- `A000196(A108582((n+1)²))` -/
def P9672544822362244634.Spec : Prop :=
  ∀ n, P9672544822362244634.a n = A390764 n

end A390764

/-!
# A390765: Number of digits in base-7 representation of n.

The programs for A390765, the canonical program `A390765.P2882205278536713732` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390765 has offset 0).

The definition of A390765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390765.P7151511440534951981

`fp[7^(n+1)]+1`
-/

namespace A390765.P7151511440534951981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f1 j) 0 + 1

end

end A390765.P7151511440534951981

namespace A390765

/-- `fp[7^(n+1)]+1` -/
def P7151511440534951981.Spec : Prop :=
  ∀ n, (P7151511440534951981.a n : ℤ) = A390765 n

end A390765

/-! ## A390765.P5198318436611909364

`abs(fp[7^(n-1)]-1)`
-/

namespace A390765.P5198318436611909364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0 : ℤ) - 1|

end

end A390765.P5198318436611909364

namespace A390765

/-- `abs(fp[7^(n-1)]-1)` -/
def P5198318436611909364.Spec : Prop :=
  ∀ n, P5198318436611909364.a n = A390765 n

end A390765

/-! ## A390765.P10299364497850214873

`dr(fp[7^(n-1)]-1)`
-/

namespace A390765.P10299364497850214873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((SequenceMachineLib.nth (fun j => (n : ℚ) < f1 j) 0 : ℤ) - 1)

end

end A390765.P10299364497850214873

namespace A390765

/-- `dr(fp[7^(n-1)]-1)` -/
def P10299364497850214873.Spec : Prop :=
  ∀ n, (P10299364497850214873.a n : ℤ) = A390765 n

end A390765

/-! ## A390765.P1257338843837978908

`char[7^n]+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A390765.P1257338843837978908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A390765.P1257338843837978908

namespace A390765

/-- `char[7^n]+a(n-1)` -/
def P1257338843837978908.Spec : Prop :=
  ∀ n, (P1257338843837978908.a n : ℤ) = A390765 n

end A390765

/-! ## A390765.P14097263126325476496

`a(floor(n/7))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A390765.P14097263126325476496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  a ⌊(n : ℚ) / 7⌋.toNat + 1

end

end A390765.P14097263126325476496

namespace A390765

/-- `a(floor(n/7))+1` -/
def P14097263126325476496.Spec : Prop :=
  ∀ n, (P14097263126325476496.a n : ℤ) = A390765 n

end A390765

/-! ## A390765.P2882205278536713732

`∑{digits}[A007093(n), A054123(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A390765

/-- `∑{digits}[A007093(n), A054123(#)]` -/
def P2882205278536713732.Spec : Prop :=
  ∀ n, P2882205278536713732.a n = A390765 n

theorem P2882205278536713732.correct : P2882205278536713732.Spec := by
  intro n
  simp only [A390765]

end A390765

/-! ## A390765.P15023653847888865822

`A055642(A007093(n))`
-/

namespace A390765.P15023653847888865822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007093 n).toNat

end

end A390765.P15023653847888865822

namespace A390765

/-- `A055642(A007093(n))` -/
def P15023653847888865822.Spec : Prop :=
  ∀ n, P15023653847888865822.a n = A390765 n

end A390765

/-! ## A390765.P2951897533706560763

`A055642(record[A256308(n)])`
-/

namespace A390765.P2951897533706560763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A390765.P2951897533706560763

namespace A390765

/-- `A055642(record[A256308(n)])` -/
def P2951897533706560763.Spec : Prop :=
  ∀ n, P2951897533706560763.a n = A390765 n

end A390765

/-! ## A390765.P4286462096884079121

`A055642(A028374(n+1))`
-/

namespace A390765.P4286462096884079121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A028374 (n + 1)).toNat

end

end A390765.P4286462096884079121

namespace A390765

/-- `A055642(A028374(n+1))` -/
def P4286462096884079121.Spec : Prop :=
  ∀ n, P4286462096884079121.a n = A390765 n

end A390765

/-! ## A390765.P920257762248241006

`A055642(A037472(n))`
-/

namespace A390765.P920257762248241006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A037472 n).toNat

end

end A390765.P920257762248241006

namespace A390765

/-- `A055642(A037472(n))` -/
def P920257762248241006.Spec : Prop :=
  ∀ n, P920257762248241006.a n = A390765 n

end A390765

/-! ## A390765.P2718620963872489801

`A178487(A091719(n)+A066096(3*n+1))`
-/

namespace A390765.P2718620963872489801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A091719 n + A066096 (3 * n + 1)).toNat

end

end A390765.P2718620963872489801

namespace A390765

/-- `A178487(A091719(n)+A066096(3*n+1))` -/
def P2718620963872489801.Spec : Prop :=
  ∀ n, P2718620963872489801.a n = A390765 n

end A390765

/-! ## A390765.P15205599917479795459

`A111651(A111651(A131507(n²)))`
-/

namespace A390765.P15205599917479795459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A111651 (A131507 (n ^ 2)).toNat).toNat

end

end A390765.P15205599917479795459

namespace A390765

/-- `A111651(A111651(A131507(n²)))` -/
def P15205599917479795459.Spec : Prop :=
  ∀ n, P15205599917479795459.a n = A390765 n

end A390765

/-!
# A390766: Number of digits in base-8 representation of n.

The programs for A390766, the canonical program `A390766.P3448197139807937500` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390766 has offset 0).

The definition of A390766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390766.P15959417164313846918

`ceil(log2(or(2, n))/3)`
-/

namespace A390766.P15959417164313846918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.lor 2 n : ℝ) / 3⌉

end

end A390766.P15959417164313846918

namespace A390766

/-- `ceil(log2(or(2, n))/3)` -/
def P15959417164313846918.Spec : Prop :=
  ∀ n, P15959417164313846918.a n = A390766 n

end A390766

/-! ## A390766.P12889276767603627135

`floor(log2(or(2, n))/3)+1`
-/

namespace A390766.P12889276767603627135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Nat.lor 2 n : ℝ) / 3⌋ + 1

end

end A390766.P12889276767603627135

namespace A390766

/-- `floor(log2(or(2, n))/3)+1` -/
def P12889276767603627135.Spec : Prop :=
  ∀ n, P12889276767603627135.a n = A390766 n

end A390766

/-! ## A390766.P3448197139807937500

`ceil(ceil(abs(log2(n+γ)))/3)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390766

/-- `ceil(ceil(abs(log2(n+γ)))/3)` -/
def P3448197139807937500.Spec : Prop :=
  ∀ n, P3448197139807937500.a n = A390766 n

theorem P3448197139807937500.correct : P3448197139807937500.Spec := by
  intro n
  simp only [A390766]

end A390766

/-! ## A390766.P757446467709536338

`floor((2+log2(record[xor(2, n)]))/3)`
-/

namespace A390766.P757446467709536338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)) / 3⌋

end

end A390766.P757446467709536338

namespace A390766

/-- `floor((2+log2(record[xor(2, n)]))/3)` -/
def P757446467709536338.Spec : Prop :=
  ∀ n, P757446467709536338.a n = A390766 n

end A390766

/-! ## A390766.P10396069275863087928

`char[8^n]+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A390766.P10396069275863087928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A390766.P10396069275863087928

namespace A390766

/-- `char[8^n]+a(n-1)` -/
def P10396069275863087928.Spec : Prop :=
  ∀ n, (P10396069275863087928.a n : ℤ) = A390766 n

end A390766

/-! ## A390766.P8378706052089489481

`round((∑[char[and(n, 1-n)]]+1)/3)`
-/

namespace A390766.P8378706052089489481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3)

end

end A390766.P8378706052089489481

namespace A390766

/-- `round((∑[char[and(n, 1-n)]]+1)/3)` -/
def P8378706052089489481.Spec : Prop :=
  ∀ n, P8378706052089489481.a n = A390766 n

end A390766

/-! ## A390766.P7554789308388604830

`floor(∑{e}[and(n, -a(n-1)), #]/3)+1` with `a(0)=1`
-/

namespace A390766.P7554789308388604830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (n : ℤ) (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ) / 3⌋ + 1

end

end A390766.P7554789308388604830

namespace A390766

/-- `floor(∑{e}[and(n, -a(n-1)), #]/3)+1` -/
def P7554789308388604830.Spec : Prop :=
  ∀ n, P7554789308388604830.a n = A390766 n

end A390766

/-! ## A390766.P10250013969870889003

`floor(∑[(char[2^n]*(2*a(n-1)-1))^n/3])` with `a(0)=1`
-/

namespace A390766.P10250013969870889003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) * (2 * f1 (n - 1) - 1)) ^ n / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A390766.P10250013969870889003

namespace A390766

/-- `floor(∑[(char[2^n]*(2*a(n-1)-1))^n/3])` -/
def P10250013969870889003.Spec : Prop :=
  ∀ n, P10250013969870889003.a n = A390766 n

end A390766

/-! ## A390766.P10625546600846796196

`A070939(floor(root(n, 3)))`
-/

namespace A390766.P10625546600846796196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ⌊(n : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A390766.P10625546600846796196

namespace A390766

/-- `A070939(floor(root(n, 3)))` -/
def P10625546600846796196.Spec : Prop :=
  ∀ n, P10625546600846796196.a n = A390766 n

end A390766

/-! ## A390766.P10165105256045416937

`A110591(floor(root(n, 3)²))`
-/

namespace A390766.P10165105256045416937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 ⌊((n : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌋.toNat

end

end A390766.P10165105256045416937

namespace A390766

/-- `A110591(floor(root(n, 3)²))` -/
def P10165105256045416937.Spec : Prop :=
  ∀ n, P10165105256045416937.a n = A390766 n

end A390766

/-! ## A390766.P4309895842695124126

`floor((2+A070939(n))/3)`
-/

namespace A390766.P4309895842695124126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + A070939 n : ℚ) / 3⌋

end

end A390766.P4309895842695124126

namespace A390766

/-- `floor((2+A070939(n))/3)` -/
def P4309895842695124126.Spec : Prop :=
  ∀ n, P4309895842695124126.a n = A390766 n

end A390766

/-! ## A390766.P15869628522154204246

`round(log(sqrt(A280510(n+1))))`
-/

namespace A390766.P15869628522154204246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A280510 (n + 1) : ℝ)))

end

end A390766.P15869628522154204246

namespace A390766

/-- `round(log(sqrt(A280510(n+1))))` -/
def P15869628522154204246.Spec : Prop :=
  ∀ n, P15869628522154204246.a n = A390766 n

end A390766

/-! ## A390766.P4093815174142447947

`A157685(ceil(abs(log2(n+γ)))+2)`
-/

namespace A390766.P4093815174142447947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (⌈|Real.logb 2 ((n : ℝ) + Real.eulerMascheroniConstant)|⌉ + 2).toNat

end

end A390766.P4093815174142447947

namespace A390766

/-- `A157685(ceil(abs(log2(n+γ)))+2)` -/
def P4093815174142447947.Spec : Prop :=
  ∀ n, P4093815174142447947.a n = A390766 n

end A390766

/-! ## A390766.P4881626034111887241

`A055642(A007094(n))`
-/

namespace A390766.P4881626034111887241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007094 n).toNat

end

end A390766.P4881626034111887241

namespace A390766

/-- `A055642(A007094(n))` -/
def P4881626034111887241.Spec : Prop :=
  ∀ n, P4881626034111887241.a n = A390766 n

end A390766

/-! ## A390766.P9654517342755972828

`A055642(xor(A003159(n+1), A206437(n+1)))`
-/

namespace A390766.P9654517342755972828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.xor (A003159 (n + 1)) (A206437 (n + 1))).toNat

end

end A390766.P9654517342755972828

namespace A390766

/-- `A055642(xor(A003159(n+1), A206437(n+1)))` -/
def P9654517342755972828.Spec : Prop :=
  ∀ n, P9654517342755972828.a n = A390766 n

end A390766

/-!
# A390767: Number of digits in base-9 representation of n.

The programs for A390767, the canonical program `A390767.P7294743232023992105` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390767 has offset 0).

The definition of A390767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390767.P5623989338599024085

`char[9^n]+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A390767.P5623989338599024085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A390767.P5623989338599024085

namespace A390767

/-- `char[9^n]+a(n-1)` -/
def P5623989338599024085.Spec : Prop :=
  ∀ n, (P5623989338599024085.a n : ℤ) = A390767 n

end A390767

/-! ## A390767.P7294743232023992105

`A081604(floor(sqrt(n)))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390767

/-- `A081604(floor(sqrt(n)))` -/
def P7294743232023992105.Spec : Prop :=
  ∀ n, P7294743232023992105.a n = A390767 n

theorem P7294743232023992105.correct : P7294743232023992105.Spec := by
  intro n
  simp only [A390767]

end A390767

/-! ## A390767.P8403530710407373601

`ceil(A081604(n)/2)`
-/

namespace A390767.P8403530710407373601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081604 n : ℚ) / 2⌉

end

end A390767.P8403530710407373601

namespace A390767

/-- `ceil(A081604(n)/2)` -/
def P8403530710407373601.Spec : Prop :=
  ∀ n, P8403530710407373601.a n = A390767 n

end A390767

/-! ## A390767.P11909699440417018458

`row(row(row(A064235(n+1))))`
-/

namespace A390767.P11909699440417018458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (SequenceMachineLib.triRow (A064235 (n + 1)).toNat))

end

end A390767.P11909699440417018458

namespace A390767

/-- `row(row(row(A064235(n+1))))` -/
def P11909699440417018458.Spec : Prop :=
  ∀ n, (P11909699440417018458.a n : ℤ) = A390767 n

end A390767

/-! ## A390767.P10535777645565599875

`A389231(∑[char[3*T(n-1,k)]])` with `a(0)=1, a(1)=3`
-/

namespace A390767.P10535777645565599875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  3 * SequenceMachineLib.triUp f2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389231 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390767.P10535777645565599875

namespace A390767

/-- `A389231(∑[char[3*T(n-1,k)]])` -/
def P10535777645565599875.Spec : Prop :=
  ∀ n, P10535777645565599875.a n = A390767 n

end A390767

/-! ## A390767.P11486955397187428964

`floor(∑[char[A048883(n+1)]]/2)+1`
-/

namespace A390767.P11486955397187428964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ + 1

end

end A390767.P11486955397187428964

namespace A390767

/-- `floor(∑[char[A048883(n+1)]]/2)+1` -/
def P11486955397187428964.Spec : Prop :=
  ∀ n, P11486955397187428964.a n = A390767 n

end A390767

/-! ## A390767.P14993979454218824727

`round(∑[char[A117940(3*n+1)]]/2)`
-/

namespace A390767.P14993979454218824727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117940 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A390767.P14993979454218824727

namespace A390767

/-- `round(∑[char[A117940(3*n+1)]]/2)` -/
def P14993979454218824727.Spec : Prop :=
  ∀ n, P14993979454218824727.a n = A390767 n

end A390767

/-! ## A390767.P5207201431282168891

`∑{digits}[A007095(n), A242784(#)]`
-/

namespace A390767.P5207201431282168891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A242784 x).sum

end

end A390767.P5207201431282168891

namespace A390767

/-- `∑{digits}[A007095(n), A242784(#)]` -/
def P5207201431282168891.Spec : Prop :=
  ∀ n, P5207201431282168891.a n = A390767 n

end A390767

/-! ## A390767.P2777223973194812554

`A055642(A007095(n))`
-/

namespace A390767.P2777223973194812554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007095 n).toNat

end

end A390767.P2777223973194812554

namespace A390767

/-- `A055642(A007095(n))` -/
def P2777223973194812554.Spec : Prop :=
  ∀ n, P2777223973194812554.a n = A390767 n

end A390767

/-! ## A390767.P3012896319096939154

`A055642(record[A222210(n)])`
-/

namespace A390767.P3012896319096939154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A390767.P3012896319096939154

namespace A390767

/-- `A055642(record[A222210(n)])` -/
def P3012896319096939154.Spec : Prop :=
  ∀ n, P3012896319096939154.a n = A390767 n

end A390767

/-!
# A390768: Binary length of A139391(n) - binary length of n.

The programs for A390768, the canonical program `A390768.P10875789156720310825` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390768 has offset 1).

The definition of A390768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390768.P10875789156720310825

`A000523(A139391(n+1))-A000523(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A390768

/-- `A000523(A139391(n+1))-A000523(n+1)` -/
def P10875789156720310825.Spec : Prop :=
  ∀ n, P10875789156720310825.a n = A390768 (n + 1)

theorem P10875789156720310825.correct : P10875789156720310825.Spec := by
  intro n
  simp only [A390768, Nat.add_sub_cancel]

end A390768

/-!
# A390769: Least even positive integer k that does not appear in the first n prime gaps.

The programs for A390769, there is no canonical definition to state claims against.
-/

/-! ## A390769.P13782393972156889361

`fp[A066493(n+1)-1]+1`
-/

namespace A390769.P13782393972156889361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A390769.P13782393972156889361

/-!
# A390774: Numbers whose final digit is at most 3.

The programs for A390774, the canonical program `A390774.P16721911205656791466` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390774 has offset 0).

The definition of A390774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390774.P16721911205656791466

`10*floor(n/4)+n%4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390774

/-- `10*floor(n/4)+n%4` -/
def P16721911205656791466.Spec : Prop :=
  ∀ n, P16721911205656791466.a n = A390774 n

theorem P16721911205656791466.correct : P16721911205656791466.Spec := by
  intro n
  simp only [A390774]

end A390774

/-! ## A390774.P2626243495701600213

`ogf((x+x^2+x^3+7x^4)/(1-x-x^4+x^5))`
-/

namespace A390774.P2626243495701600213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 7] [1, -1, 0, 0, -1, 1] n

end

end A390774.P2626243495701600213

namespace A390774

/-- `ogf((x+x^2+x^3+7x^4)/(1-x-x^4+x^5))` -/
def P2626243495701600213.Spec : Prop :=
  ∀ n, P2626243495701600213.a n = A390774 n

end A390774

/-! ## A390774.P16977446357652743833

`6*floor(n/4)+n`
-/

namespace A390774.P16977446357652743833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n : ℚ) / 4⌋ + (n : ℤ)

end

end A390774.P16977446357652743833

namespace A390774

/-- `6*floor(n/4)+n` -/
def P16977446357652743833.Spec : Prop :=
  ∀ n, P16977446357652743833.a n = A390774 n

end A390774

/-! ## A390774.P18041353323681024677

`record[n-C(n%10, 4)]`
-/

namespace A390774.P18041353323681024677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (n % 10) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390774.P18041353323681024677

namespace A390774

/-- `record[n-C(n%10, 4)]` -/
def P18041353323681024677.Spec : Prop :=
  ∀ n, P18041353323681024677.a n = A390774 n

end A390774

/-! ## A390774.P7440484098116599202

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A390774.P7440484098116599202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 7] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390774.P7440484098116599202

namespace A390774

/-- `∑[floor(a(n-4))]` -/
def P7440484098116599202.Spec : Prop :=
  ∀ n, (P7440484098116599202.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P4360492750075839863

`∑[a(n-4)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=7`
-/

namespace A390774.P4360492750075839863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 7] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390774.P4360492750075839863

namespace A390774

/-- `∑[a(n-4)^a(n-1)]` -/
def P4360492750075839863.Spec : Prop :=
  ∀ n, (P4360492750075839863.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P14103745303078583873

`∪[A017305(n), A391163(n)]`
-/

namespace A390774.P14103745303078583873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P14103745303078583873

namespace A390774

/-- `∪[A017305(n), A391163(n)]` -/
def P14103745303078583873.Spec : Prop :=
  ∀ n, (P14103745303078583873.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P11396702433669885117

`∪[A235089(n+1), A391163(n)]`
-/

namespace A390774.P11396702433669885117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P11396702433669885117

namespace A390774

/-- `∪[A235089(n+1), A391163(n)]` -/
def P11396702433669885117.Spec : Prop :=
  ∀ n, (P11396702433669885117.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P18425601798615318278

`∪[A277590(n+1), A391163(n)]`
-/

namespace A390774.P18425601798615318278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P18425601798615318278

namespace A390774

/-- `∪[A277590(n+1), A391163(n)]` -/
def P18425601798615318278.Spec : Prop :=
  ∀ n, (P18425601798615318278.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P17700366970385045087

`A235499(A001068(n))`
-/

namespace A390774.P17700366970385045087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 (A001068 n).toNat

end

end A390774.P17700366970385045087

namespace A390774

/-- `A235499(A001068(n))` -/
def P17700366970385045087.Spec : Prop :=
  ∀ n, P17700366970385045087.a n = A390774 n

end A390774

/-! ## A390774.P12490070319274136532

`A293292(A047201(n+1))`
-/

namespace A390774.P12490070319274136532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (A047201 (n + 1)).toNat

end

end A390774.P12490070319274136532

namespace A390774

/-- `A293292(A047201(n+1))` -/
def P12490070319274136532.Spec : Prop :=
  ∀ n, P12490070319274136532.a n = A390774 n

end A390774

/-! ## A390774.P7242089754301175136

`∩[A293292(n+1), A235499(n)]`
-/

namespace A390774.P7242089754301175136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P7242089754301175136

namespace A390774

/-- `∩[A293292(n+1), A235499(n)]` -/
def P7242089754301175136.Spec : Prop :=
  ∀ n, (P7242089754301175136.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P9402860703220261683

`A391164(A047246(n+1))`
-/

namespace A390774.P9402860703220261683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A047246 (n + 1)).toNat

end

end A390774.P9402860703220261683

namespace A390774

/-- `A391164(A047246(n+1))` -/
def P9402860703220261683.Spec : Prop :=
  ∀ n, P9402860703220261683.a n = A390774 n

end A390774

/-! ## A390774.P8873625678469196314

`∩[A235499(n), A391164(n)]`
-/

namespace A390774.P8873625678469196314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P8873625678469196314

namespace A390774

/-- `∩[A235499(n), A391164(n)]` -/
def P8873625678469196314.Spec : Prop :=
  ∀ n, (P8873625678469196314.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P9987324568446573773

`A001068(A047476(n+1))`
-/

namespace A390774.P9987324568446573773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A047476 (n + 1)).toNat

end

end A390774.P9987324568446573773

namespace A390774

/-- `A001068(A047476(n+1))` -/
def P9987324568446573773.Spec : Prop :=
  ∀ n, P9987324568446573773.a n = A390774 n

end A390774

/-! ## A390774.P12179442191717720702

`∩[A235499(n), A272576(n)]`
-/

namespace A390774.P12179442191717720702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P12179442191717720702

namespace A390774

/-- `∩[A235499(n), A272576(n)]` -/
def P12179442191717720702.Spec : Prop :=
  ∀ n, (P12179442191717720702.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P11043161161514315416

`A391164(A272576(2*n)-n)`
-/

namespace A390774.P11043161161514315416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A272576 (2 * n) - (n : ℤ)).toNat

end

end A390774.P11043161161514315416

namespace A390774

/-- `A391164(A272576(2*n)-n)` -/
def P11043161161514315416.Spec : Prop :=
  ∀ n, P11043161161514315416.a n = A390774 n

end A390774

/-! ## A390774.P7188765706474018906

`∩[A293292(n+1), A001068(n)]`
-/

namespace A390774.P7188765706474018906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390774.P7188765706474018906

namespace A390774

/-- `∩[A293292(n+1), A001068(n)]` -/
def P7188765706474018906.Spec : Prop :=
  ∀ n, (P7188765706474018906.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P7708219385689850370

`eq[A058207(n), A081594(n)]`
-/

namespace A390774.P7708219385689850370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390774.P7708219385689850370

namespace A390774

/-- `eq[A058207(n), A081594(n)]` -/
def P7708219385689850370.Spec : Prop :=
  ∀ n, (P7708219385689850370.a n : ℤ) = A390774 n

end A390774

/-! ## A390774.P1667867563869070681

`eq[A081597(n), A286717(n)]`
-/

namespace A390774.P1667867563869070681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390774.P1667867563869070681

namespace A390774

/-- `eq[A081597(n), A286717(n)]` -/
def P1667867563869070681.Spec : Prop :=
  ∀ n, (P1667867563869070681.a n : ℤ) = A390774 n

end A390774

/-!
# A390775: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k,2*(n-3*k)).

The programs for A390775, the canonical program `A390775.P15664665695904206775` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390775 has offset 0).

The definition of A390775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390775.P15664665695904206775

`4*a(n-3)-4*a(n-6)+12*a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390775

/-- `4*a(n-3)-4*a(n-6)+12*a(n-7)` -/
def P15664665695904206775.Spec : Prop :=
  ∀ n, P15664665695904206775.a n = A390775 n

theorem P15664665695904206775.correct : P15664665695904206775.Spec := by
  intro n
  simp only [A390775]

end A390775

/-! ## A390775.P3295195797134045612

`ogf((1-2x^3)/(1-4x^3+4x^6-12x^7))`
-/

namespace A390775.P3295195797134045612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2] [1, 0, 0, -4, 0, 0, 4, -12] n

end

end A390775.P3295195797134045612

namespace A390775

/-- `ogf((1-2x^3)/(1-4x^3+4x^6-12x^7))` -/
def P3295195797134045612.Spec : Prop :=
  ∀ n, P3295195797134045612.a n = A390775 n

end A390775

/-! ## A390775.P17414911878351923611

`∑{#}[floor(n/3), 2^#*3^(n-3*#)*C(#, 2*(n-3*#))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390775.P17414911878351923611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose k (2 * ((n : ℤ) - (3 * k : ℤ))).toNat : ℚ)

end

end A390775.P17414911878351923611

namespace A390775

/-- `∑{#}[floor(n/3), 2^#*3^(n-3*#)*C(#, 2*(n-3*#))]` -/
def P17414911878351923611.Spec : Prop :=
  ∀ n, P17414911878351923611.a n = (A390775 n : ℚ)

end A390775

/-! ## A390775.P8489847127819082808

`A391960(n)/A055642(A001787(n))`
-/

namespace A390775.P8489847127819082808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391960 n : ℚ) / (A055642 (A001787 n).toNat : ℚ)

end

end A390775.P8489847127819082808

namespace A390775

/-- `A391960(n)/A055642(A001787(n))` -/
def P8489847127819082808.Spec : Prop :=
  ∀ n, P8489847127819082808.a n = (A390775 n : ℚ)

end A390775

/-! ## A390775.P3776275867279518049

`A391960(n)/A055642(A210478(n+1))`
-/

namespace A390775.P3776275867279518049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391960 n : ℚ) / (A055642 (A210478 (n + 1)).toNat : ℚ)

end

end A390775.P3776275867279518049

namespace A390775

/-- `A391960(n)/A055642(A210478(n+1))` -/
def P3776275867279518049.Spec : Prop :=
  ∀ n, P3776275867279518049.a n = (A390775 n : ℚ)

end A390775

/-!
# A390776: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (2*k+1) * binomial(4*n+2,n-k).

The programs for A390776, the canonical program `A390776.P6028077901672792130` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390776 has offset 0).

The definition of A390776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390776.P6028077901672792130

`1/(2*n+1)*∑{#}[n, (2*#+1)*C(4*n+2, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390776

/-- `1/(2*n+1)*∑{#}[n, (2*#+1)*C(4*n+2, n-#)]` -/
def P6028077901672792130.Spec : Prop :=
  ∀ n, P6028077901672792130.a n = (A390776 n : ℚ)

end A390776

/-! ## A390776.P11847401967090786304

`A369930(Δ[n²])`
-/

namespace A390776.P11847401967090786304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A390776.P11847401967090786304

namespace A390776

/-- `A369930(Δ[n²])` -/
def P11847401967090786304.Spec : Prop :=
  ∀ n, P11847401967090786304.a n = A390776 n

end A390776

/-! ## A390776.P177055597331484309

`A369592(3*n+n+1)`
-/

namespace A390776.P177055597331484309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (3 * n + (n + 1))

end

end A390776.P177055597331484309

namespace A390776

/-- `A369592(3*n+n+1)` -/
def P177055597331484309.Spec : Prop :=
  ∀ n, P177055597331484309.a n = A390776 n

end A390776

/-! ## A390776.P2037062518151389662

`2*A107026(n)-A002293(n)`
-/

namespace A390776.P2037062518151389662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107026 n - A002293 n

end

end A390776.P2037062518151389662

namespace A390776

/-- `2*A107026(n)-A002293(n)` -/
def P2037062518151389662.Spec : Prop :=
  ∀ n, P2037062518151389662.a n = A390776 n

end A390776

/-! ## A390776.P4524961465857380459

`max(A369930(2*n), A369930(2*n+1))`
-/

namespace A390776.P4524961465857380459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A369930 (2 * n)) (A369930 (2 * n + 1))

end

end A390776.P4524961465857380459

namespace A390776

/-- `max(A369930(2*n), A369930(2*n+1))` -/
def P4524961465857380459.Spec : Prop :=
  ∀ n, P4524961465857380459.a n = A390776 n

end A390776

/-! ## A390776.P8263027335654277419

`min(A369930(2*n+1), A369930(2*(n+1)))`
-/

namespace A390776.P8263027335654277419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A369930 (2 * n + 1)) (A369930 (2 * (n + 1)))

end

end A390776.P8263027335654277419

namespace A390776

/-- `min(A369930(2*n+1), A369930(2*(n+1)))` -/
def P8263027335654277419.Spec : Prop :=
  ∀ n, P8263027335654277419.a n = A390776 n

end A390776

/-!
# A390777: a(n) = (1/(5*n+2)) * Sum_{k=0..n} (5*k+2) * binomial(5*n+2,n-k).

The programs for A390777, the canonical program `A390777.P18126300597503514431` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390777 has offset 0).

The definition of A390777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390777.P18126300597503514431

`1/(5*n+2)*∑{#}[n, (5*#+2)*C(5*n+2, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390777

/-- `1/(5*n+2)*∑{#}[n, (5*#+2)*C(5*n+2, n-#)]` -/
def P18126300597503514431.Spec : Prop :=
  ∀ n, P18126300597503514431.a n = (A390777 n : ℚ)

end A390777

/-!
# A390778: a(n) = (1/(4*n+3)) * Sum_{k=0..n} (4*k+3) * binomial(4*n+3,n-k).

The programs for A390778, the canonical program `A390778.P13163887958506458635` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390778 has offset 0).

The definition of A390778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390778.P13163887958506458635

`1/(4*n+3)*∑{#}[n, (4*#+3)*C(4*n+3, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390778

/-- `1/(4*n+3)*∑{#}[n, (4*#+3)*C(4*n+3, n-#)]` -/
def P13163887958506458635.Spec : Prop :=
  ∀ n, P13163887958506458635.a n = (A390778 n : ℚ)

end A390778

/-! ## A390778.P3935693697233417889

`A369592(2+n*4)`
-/

namespace A390778.P3935693697233417889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369592 (2 + n * 4)

end

end A390778.P3935693697233417889

namespace A390778

/-- `A369592(2+n*4)` -/
def P3935693697233417889.Spec : Prop :=
  ∀ n, P3935693697233417889.a n = A390778 n

end A390778

/-! ## A390778.P14708230802696479307

`A391209(n+1)+A006632(n+1)`
-/

namespace A390778.P14708230802696479307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391209 (n + 1) + A006632 (n + 1)

end

end A390778.P14708230802696479307

namespace A390778

/-- `A391209(n+1)+A006632(n+1)` -/
def P14708230802696479307.Spec : Prop :=
  ∀ n, P14708230802696479307.a n = A390778 n

end A390778

/-! ## A390778.P9472219668882530347

`A047100(A139273(n+1))`
-/

namespace A390778.P9472219668882530347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (A139273 (n + 1)).toNat

end

end A390778.P9472219668882530347

namespace A390778

/-- `A047100(A139273(n+1))` -/
def P9472219668882530347.Spec : Prop :=
  ∀ n, P9472219668882530347.a n = A390778 n

end A390778

/-! ## A390778.P390874579285820005

`A047100(A001107(2*(n+1))/2)`
-/

namespace A390778.P390874579285820005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047100 (SequenceMachineLib.roundAway ((A001107 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A390778.P390874579285820005

namespace A390778

/-- `A047100(A001107(2*(n+1))/2)` -/
def P390874579285820005.Spec : Prop :=
  ∀ n, P390874579285820005.a n = A390778 n

end A390778

/-!
# A390779: a(n) = (1/(5*n+3)) * Sum_{k=0..n} (5*k+3) * binomial(5*n+3,n-k).

The programs for A390779, the canonical program `A390779.P8501806211211727126` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390779 has offset 0).

The definition of A390779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390779.P8501806211211727126

`1/(5*n+3)*∑{#}[n, (5*#+3)*C(5*n+3, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390779

/-- `1/(5*n+3)*∑{#}[n, (5*#+3)*C(5*n+3, n-#)]` -/
def P8501806211211727126.Spec : Prop :=
  ∀ n, P8501806211211727126.a n = (A390779 n : ℚ)

end A390779

/-! ## A390779.P13471920315782079399

`abs(A047120(∑[25*n+4]+1)-1)+1`
-/

namespace A390779.P13471920315782079399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047120 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1| + 1

end

end A390779.P13471920315782079399

namespace A390779

/-- `abs(A047120(∑[25*n+4]+1)-1)+1` -/
def P13471920315782079399.Spec : Prop :=
  ∀ n, P13471920315782079399.a n = A390779 n

end A390779

/-!
# A390780: a(n) = (1/(5*n+4)) * Sum_{k=0..n} (5*k+4) * binomial(5*n+4,n-k).

The programs for A390780, the canonical program `A390780.P1792684530616127446` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390780 has offset 0).

The definition of A390780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390780.P1792684530616127446

`1/(5*n+4)*∑{#}[n, (5*#+4)*C(5*n+4, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390780

/-- `1/(5*n+4)*∑{#}[n, (5*#+4)*C(5*n+4, n-#)]` -/
def P1792684530616127446.Spec : Prop :=
  ∀ n, P1792684530616127446.a n = (A390780 n : ℚ)

end A390780

/-!
# A390781: a(n) = Sum_{k=0..floor(n/3)} (k+1) * 2^k * 3^(n-3*k) * binomial(2*k,2*(n-3*k)).

The programs for A390781, the canonical program `A390781.P9370297839202100607` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390781 has offset 0).

The definition of A390781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390781.P9370297839202100607

`∑{#}[floor(n/3), (#+1)*2^#*3^(n-3*#)*C(2*#, 2*(n-3*#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390781

/-- `∑{#}[floor(n/3), (#+1)*2^#*3^(n-3*#)*C(2*#, 2*(n-3*#))]` -/
def P9370297839202100607.Spec : Prop :=
  ∀ n, P9370297839202100607.a n = (A390781 n : ℚ)

end A390781

/-! ## A390781.P9240255830841589615

`A055642(A000701(3*n+1))*A390619(n)`
-/

namespace A390781.P9240255830841589615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000701 (3 * n + 1)).toNat * A390619 n

end

end A390781.P9240255830841589615

namespace A390781

/-- `A055642(A000701(3*n+1))*A390619(n)` -/
def P9240255830841589615.Spec : Prop :=
  ∀ n, P9240255830841589615.a n = A390781 n

end A390781

/-! ## A390781.P8725588820666720470

`A124768(A113118(n+1))*A390619(n)`
-/

namespace A390781.P8725588820666720470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A113118 (n + 1)).toNat * A390619 n

end

end A390781.P8725588820666720470

namespace A390781

/-- `A124768(A113118(n+1))*A390619(n)` -/
def P8725588820666720470.Spec : Prop :=
  ∀ n, P8725588820666720470.a n = A390781 n

end A390781

/-! ## A390781.P1680820387639132862

`A001221(A215727(n+2))*A390619(n)`
-/

namespace A390781.P1680820387639132862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A215727 (n + 2)).toNat * A390619 n

end

end A390781.P1680820387639132862

namespace A390781

/-- `A001221(A215727(n+2))*A390619(n)` -/
def P1680820387639132862.Spec : Prop :=
  ∀ n, P1680820387639132862.a n = A390781 n

end A390781

/-!
# A390782: Number of n X n grids with 4 non-attacking kings on each row.

The programs for A390782, there is no canonical definition to state claims against.
-/

/-! ## A390782.P9328136205468671130

`A245321(A069646(n))`
-/

namespace A390782.P9328136205468671130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245321 (A069646 n).toNat

end

end A390782.P9328136205468671130

/-! ## A390782.P4366910686441528871

`A210635(A106433(n))`
-/

namespace A390782.P4366910686441528871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210635 (A106433 n).toNat

end

end A390782.P4366910686441528871

/-! ## A390782.P17053278543505264964

`A138554(C(A326471(n), n))`
-/

namespace A390782.P17053278543505264964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (Nat.choose (A326471 n).toNat n)

end

end A390782.P17053278543505264964

/-! ## A390782.P2713800761937925796

`A261222(C(A308991(n), n))`
-/

namespace A390782.P2713800761937925796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261222 (Nat.choose (A308991 n).toNat n)

end

end A390782.P2713800761937925796

/-! ## A390782.P9729158054516041671

`A006325(gcd(A189842(n+1)+1, n))`
-/

namespace A390782.P9729158054516041671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (Int.gcd (A189842 (n + 1) + 1) (n : ℤ))

end

end A390782.P9729158054516041671

/-!
# A390786: a(n) is the least k such that the number of integers between (1/5)*prime(k) and (1/5)*prime(k+1) is n.

The programs for A390786, there is no canonical definition to state claims against.
-/

/-! ## A390786.P6991024286645416365

`∩[A005669(n+1), A193767(n+1)]`
-/

namespace A390786.P6991024286645416365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390786.P6991024286645416365

/-!
# A390787: a(n) is the least k such that there are exactly n integers between (1/6)*prime(k) and (1/6)*prime(k+1).

The programs for A390787, there is no canonical definition to state claims against.
-/

/-! ## A390787.P13823124847786714910

`A144309(3*n+1)-A010815(A038761(n))`
-/

namespace A390787.P13823124847786714910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144309 (3 * n + 1) - A010815 (A038761 n).toNat

end

end A390787.P13823124847786714910

/-!
# A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

The programs for A390788, the canonical program `A390788.P4885482979136990160` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390788 has offset 1).

The definition of A390788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390788.P4885482979136990160

`lt[A056139(2*(n+1)), 0]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390788

/-- `lt[A056139(2*(n+1)), 0]+1` -/
def P4885482979136990160.Spec : Prop :=
  ∀ n, (P4885482979136990160.a n : ℤ) = A390788 (n + 1)

theorem P4885482979136990160.correct : P4885482979136990160.Spec := by
  intro n
  simp only [A390788, Nat.add_sub_cancel]

end A390788

/-! ## A390788.P15687314557564700582

`lt[A051697(1+2*n)-n, n]`
-/

namespace A390788.P15687314557564700582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (1 + 2 * n) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A390788.P15687314557564700582

namespace A390788

/-- `lt[A051697(1+2*n)-n, n]` -/
def P15687314557564700582.Spec : Prop :=
  ∀ n, (P15687314557564700582.a n : ℤ) = A390788 (n + 1)

end A390788

/-! ## A390788.P15724184769091829022

`lt[2*n+1, A210882(2*n+1)]`
-/

namespace A390788.P15724184769091829022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A390788.P15724184769091829022

namespace A390788

/-- `lt[2*n+1, A210882(2*n+1)]` -/
def P15724184769091829022.Spec : Prop :=
  ∀ n, (P15724184769091829022.a n : ℤ) = A390788 (n + 1)

end A390788

/-! ## A390788.P2262913164324830330

`record[A025480(A264722(n+1))]`
-/

namespace A390788.P2262913164324830330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A264722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390788.P2262913164324830330

namespace A390788

/-- `record[A025480(A264722(n+1))]` -/
def P2262913164324830330.Spec : Prop :=
  ∀ n, P2262913164324830330.a n = A390788 (n + 1)

end A390788

/-! ## A390788.P3324326034438027658

`lt[0, A056139(A210882(2*(n+1)))]`
-/

namespace A390788.P3324326034438027658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (A210882 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A390788.P3324326034438027658

namespace A390788

/-- `lt[0, A056139(A210882(2*(n+1)))]` -/
def P3324326034438027658.Spec : Prop :=
  ∀ n, (P3324326034438027658.a n : ℤ) = A390788 (n + 1)

end A390788

/-! ## A390788.P13157858810551732622

`lt[A051699(A004442(2*n+1)), A051699(2*n+1)]`
-/

namespace A390788.P13157858810551732622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A004442 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390788.P13157858810551732622

namespace A390788

/-- `lt[A051699(A004442(2*n+1)), A051699(2*n+1)]` -/
def P13157858810551732622.Spec : Prop :=
  ∀ n, (P13157858810551732622.a n : ℤ) = A390788 (n + 1)

end A390788

/-!
# A390789: Numbers k such that 2*k - (greatest prime < 2*k) = (least prime > 2*k) - 2*k.

The programs for A390789, the canonical program `A390789.P6926022290511936465` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390789 has offset 1).

The definition of A390789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390789.P6926022290511936465

`A072568(1+n)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390789

/-- `A072568(1+n)/2` -/
def P6926022290511936465.Spec : Prop :=
  ∀ n, P6926022290511936465.a n = (A390789 (n + 1) : ℚ)

end A390789

/-! ## A390789.P9085182983499710105

`eq[2*n, A210882(2*n+1)]`
-/

namespace A390789.P9085182983499710105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390789.P9085182983499710105

namespace A390789

/-- `eq[2*n, A210882(2*n+1)]` -/
def P9085182983499710105.Spec : Prop :=
  ∀ n, (P9085182983499710105.a n : ℤ) = A390789 (n + 1)

end A390789

/-! ## A390789.P12568353259658163861

`A001281(A072568(1+n))`
-/

namespace A390789.P12568353259658163861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A072568 (1 + n)).toNat

end

end A390789.P12568353259658163861

namespace A390789

/-- `A001281(A072568(1+n))` -/
def P12568353259658163861.Spec : Prop :=
  ∀ n, P12568353259658163861.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P11867753372173018376

`A006370(A072568(n+1))`
-/

namespace A390789.P11867753372173018376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A072568 (n + 1)).toNat

end

end A390789.P11867753372173018376

namespace A390789

/-- `A006370(A072568(n+1))` -/
def P11867753372173018376.Spec : Prop :=
  ∀ n, P11867753372173018376.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P7235898931324196773

`record[A025480(A024675(n+1))]`
-/

namespace A390789.P7235898931324196773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A024675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390789.P7235898931324196773

namespace A390789

/-- `record[A025480(A024675(n+1))]` -/
def P7235898931324196773.Spec : Prop :=
  ∀ n, P7235898931324196773.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P13935203406432298247

`record[A290988(A145025(n+1))]`
-/

namespace A390789.P13935203406432298247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290988 (A145025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390789.P13935203406432298247

namespace A390789

/-- `record[A290988(A145025(n+1))]` -/
def P13935203406432298247.Spec : Prop :=
  ∀ n, P13935203406432298247.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P7358111460789027521

`A004526(1+A072568(n+1))`
-/

namespace A390789.P7358111460789027521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 + A072568 (n + 1)).toNat

end

end A390789.P7358111460789027521

namespace A390789

/-- `A004526(1+A072568(n+1))` -/
def P7358111460789027521.Spec : Prop :=
  ∀ n, P7358111460789027521.a n = A390789 (n + 1)

end A390789

/-! ## A390789.P9256616773255337977

`A008619(A072568(n+1)-1)`
-/

namespace A390789.P9256616773255337977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A072568 (n + 1) - 1).toNat

end

end A390789.P9256616773255337977

namespace A390789

/-- `A008619(A072568(n+1)-1)` -/
def P9256616773255337977.Spec : Prop :=
  ∀ n, P9256616773255337977.a n = A390789 (n + 1)

end A390789

/-!
# A390790: Numbers k such that 2*k - (greatest prime < 2*k) > (least prime > 2*k) - 2*k.

The programs for A390790, the canonical program `A390790.P12942896360737542177` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390790 has offset 1).

The definition of A390790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390790.P12942896360737542177

`lt[A210882(2*(n+1)), A000027(2*n+3)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390790

/-- `lt[A210882(2*(n+1)), A000027(2*n+3)]+1` -/
def P12942896360737542177.Spec : Prop :=
  ∀ n, (P12942896360737542177.a n : ℤ) = A390790 (n + 1)

theorem P12942896360737542177.correct : P12942896360737542177.Spec := by
  intro n
  simp only [A390790, Nat.add_sub_cancel]

end A390790

/-! ## A390790.P1203396259773195344

`A104279(n+1)-A335520(A145596(n+2))`
-/

namespace A390790.P1203396259773195344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) - A335520 (A145596 (n + 2)).toNat

end

end A390790.P1203396259773195344

namespace A390790

/-- `A104279(n+1)-A335520(A145596(n+2))` -/
def P1203396259773195344.Spec : Prop :=
  ∀ n, P1203396259773195344.a n = A390790 (n + 1)

end A390790

/-! ## A390790.P16193640493152919490

`A104279(n+1)-A335520(A025162(3*n+5))`
-/

namespace A390790.P16193640493152919490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) - A335520 (A025162 (3 * n + 5)).toNat

end

end A390790.P16193640493152919490

namespace A390790

/-- `A104279(n+1)-A335520(A025162(3*n+5))` -/
def P16193640493152919490.Spec : Prop :=
  ∀ n, P16193640493152919490.a n = A390790 (n + 1)

end A390790

/-!
# A390791: Number of Hamiltonian paths from vertex (1, 1) to (3, 2*n+2) on the product graph C_4 X P_{2*n+2}, using (row, column) numbering.

The programs for A390791, there is no canonical definition to state claims against.
-/

/-! ## A390791.P15468290688462120671

`ogf((6-26x-4x^2)/(1-21x+26x^2-44x^3+8x^4))`
-/

namespace A390791.P15468290688462120671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -26, -4] [1, -21, 26, -44, 8] n

end

end A390791.P15468290688462120671

/-!
# A390793: Number of ways to write n as x^4 + y^2 + 2*z^2 + (p-1)^2/2, where x,y,z are in the set {m >= 0: 2*m is practical}, and p is either 1 or an odd prime.

The programs for A390793, there is no canonical definition to state claims against.
-/

/-! ## A390793.P12662653969305908827

`A262857(n)+A121373(A163205(2*n+5))`
-/

namespace A390793.P12662653969305908827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262857 n + A121373 (A163205 (2 * n + 5)).toNat

end

end A390793.P12662653969305908827

/-! ## A390793.P10014664684950578527

`A376451(A324525(n+2))+A262857(n)`
-/

namespace A390793.P10014664684950578527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376451 (A324525 (n + 2)).toNat + A262857 n

end

end A390793.P10014664684950578527

/-!
# A390794: Numbers of the form p^2 - b^2 where p is prime and b > 0.

The programs for A390794, there is no canonical definition to state claims against.
-/

/-! ## A390794.P10144249374060465713

`lt[A378087(A102454(2*(n+2))), 1]`
-/

namespace A390794.P10144249374060465713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (A102454 (2 * (n + 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A390794.P10144249374060465713

/-! ## A390794.P5072593845418061929

`A318990(n+1)-A228100(A000108(n))`
-/

namespace A390794.P5072593845418061929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318990 (n + 1) - A228100 (A000108 n).toNat

end

end A390794.P5072593845418061929

/-!
# A390798: a(n) = Sum_{k=0..n} (3*k+2) * binomial(5*n-2*k+2,n-k)/(5*n-2*k+2).

The programs for A390798, the canonical program `A390798.P17280161579122307682` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390798 has offset 0).

The definition of A390798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390798.P17280161579122307682

`∑{#}[n, (3*#+2)*C(5*n-2*#+2, n-#)/(5*n-2*#+2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390798

/-- `∑{#}[n, (3*#+2)*C(5*n-2*#+2, n-#)/(5*n-2*#+2)]` -/
def P17280161579122307682.Spec : Prop :=
  ∀ n, P17280161579122307682.a n = (A390798 n : ℚ)

end A390798

/-!
# A390799: Number of ways to write n as (p-1)^4/16 + (q-1)^2/2 + u^2 + 3*v^2, where each of p and q is 1 or an odd prime, and u and v are in the set {m >= 0: 2*m is practical} with u > 0.

The programs for A390799, there is no canonical definition to state claims against.
-/

/-! ## A390799.P10895284148638708291

`A090046(A068639(n)+A005418(n+1))`
-/

namespace A390799.P10895284148638708291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090046 (A068639 n + A005418 (n + 1)).toNat

end

end A390799.P10895284148638708291

