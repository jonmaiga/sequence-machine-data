import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
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
# A387200: Coefficient of x^n in the expansion of (1+x^4+x^5)^n.

The programs for A387200, the canonical program `A387200.P4069040617093430319` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387200 has offset 0).

The definition of A387200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387200.P4069040617093430319

`∑{#}[floor(n/4), C(n, #)*C(#, n-4*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387200

/-- `∑{#}[floor(n/4), C(n, #)*C(#, n-4*#)]` -/
def P4069040617093430319.Spec : Prop :=
  ∀ n, (P4069040617093430319.a n : ℤ) = A387200 n

theorem P4069040617093430319.correct : P4069040617093430319.Spec := by
  intro n
  simp only [A387200]

end A387200

/-! ## A387200.P16034284455069192560

`∑{#}[n, (-1)^(n-#)*C(n, #)*A387125(#)]`
-/

namespace A387200.P16034284455069192560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A387125 k : ℚ)

end

end A387200.P16034284455069192560

namespace A387200

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A387125(#)]` -/
def P16034284455069192560.Spec : Prop :=
  ∀ n, P16034284455069192560.a n = (A387200 n : ℚ)

end A387200

/-!
# A387202: a(n) is the number of dissections of a (4*n+2)-gon into hexagons using strictly disjoint diagonals.

The programs for A387202, there is no canonical definition to state claims against.
-/

/-! ## A387202.P958918143236860593

`A053738(A151118(n))`
-/

namespace A387202.P958918143236860593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (A151118 n).toNat

end

end A387202.P958918143236860593

/-!
# A387204: a(n) = n*(n + 1)*(n^2 + 17*n + 54)/24.

The programs for A387204, the canonical program `A387204.P15110884007341773351` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387204 has offset 0).

The definition of A387204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387204.P15110884007341773351

`n*(n+1)*(n*(n+17)+54)/24`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387204

/-- `n*(n+1)*(n*(n+17)+54)/24` -/
def P15110884007341773351.Spec : Prop :=
  ∀ n, P15110884007341773351.a n = (A387204 n : ℚ)

end A387204

/-! ## A387204.P9096169943440995313

`n*(n+1)*(n²+17*n+54)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387204.P9096169943440995313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + 17 * n + 54) : ℚ) / 24

end

end A387204.P9096169943440995313

namespace A387204

/-- `n*(n+1)*(n²+17*n+54)/24` -/
def P9096169943440995313.Spec : Prop :=
  ∀ n, P9096169943440995313.a n = (A387204 n : ℚ)

end A387204

/-! ## A387204.P627372828427669261

`C(n+3, 4)+n*∑[n+2]`
-/

namespace A387204.P627372828427669261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387204.P627372828427669261

namespace A387204

/-- `C(n+3, 4)+n*∑[n+2]` -/
def P627372828427669261.Spec : Prop :=
  ∀ n, (P627372828427669261.a n : ℤ) = A387204 n

end A387204

/-! ## A387204.P8984237462588289380

`∑[∑[n+3]-1+a(n-1)]` with `a(0)=0`
-/

namespace A387204.P8984237462588289380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387204.P8984237462588289380

namespace A387204

/-- `∑[∑[n+3]-1+a(n-1)]` -/
def P8984237462588289380.Spec : Prop :=
  ∀ n, P8984237462588289380.a n = A387204 n

end A387204

/-! ## A387204.P9282756987403565883

`∑[∑[C(2+n, 2)]+n²]+n²-1`
-/

namespace A387204.P9282756987403565883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 : ℕ) : ℤ) - 1

end

end A387204.P9282756987403565883

namespace A387204

/-- `∑[∑[C(2+n, 2)]+n²]+n²-1` -/
def P9282756987403565883.Spec : Prop :=
  ∀ n, P9282756987403565883.a n = A387204 n

end A387204

/-! ## A387204.P184736498319414959

`∑[C(n+1, 2)+C(5+n, 3)-C(5+n, 2)]`
-/

namespace A387204.P184736498319414959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) + ((Nat.choose (5 + n) 3 : ℤ) - (Nat.choose (5 + n) 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387204.P184736498319414959

namespace A387204

/-- `∑[C(n+1, 2)+C(5+n, 3)-C(5+n, 2)]` -/
def P184736498319414959.Spec : Prop :=
  ∀ n, P184736498319414959.a n = A387204 n

end A387204

/-! ## A387204.P17831492400727736814

`∑[A005586(n)+∑[n]]`
-/

namespace A387204.P17831492400727736814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387204.P17831492400727736814

namespace A387204

/-- `∑[A005586(n)+∑[n]]` -/
def P17831492400727736814.Spec : Prop :=
  ∀ n, P17831492400727736814.a n = A387204 n

end A387204

/-! ## A387204.P9218927759941739038

`n/4*A023551(n+1)`
-/

namespace A387204.P9218927759941739038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A023551 (n + 1) : ℚ)

end

end A387204.P9218927759941739038

namespace A387204

/-- `n/4*A023551(n+1)` -/
def P9218927759941739038.Spec : Prop :=
  ∀ n, P9218927759941739038.a n = (A387204 n : ℚ)

end A387204

/-! ## A387204.P11661106580154001112

`∑[A323221(n)]-(n+1)²`
-/

namespace A387204.P11661106580154001112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A387204.P11661106580154001112

namespace A387204

/-- `∑[A323221(n)]-(n+1)²` -/
def P11661106580154001112.Spec : Prop :=
  ∀ n, P11661106580154001112.a n = A387204 n

end A387204

/-! ## A387204.P11711606780179157997

`A318054(n)+A210440(n)`
-/

namespace A387204.P11711606780179157997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318054 n + A210440 n

end

end A387204.P11711606780179157997

namespace A387204

/-- `A318054(n)+A210440(n)` -/
def P11711606780179157997.Spec : Prop :=
  ∀ n, P11711606780179157997.a n = A387204 n

end A387204

/-! ## A387204.P10411901316807715075

`A005587(n)-A140672(n)`
-/

namespace A387204.P10411901316807715075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 n - A140672 n

end

end A387204.P10411901316807715075

namespace A387204

/-- `A005587(n)-A140672(n)` -/
def P10411901316807715075.Spec : Prop :=
  ∀ n, P10411901316807715075.a n = A387204 n

end A387204

/-! ## A387204.P5614610852305747894

`A126420(n+1)+A058923(n)`
-/

namespace A387204.P5614610852305747894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1) + A058923 n

end

end A387204.P5614610852305747894

namespace A387204

/-- `A126420(n+1)+A058923(n)` -/
def P5614610852305747894.Spec : Prop :=
  ∀ n, P5614610852305747894.a n = A387204 n

end A387204

/-! ## A387204.P2176867960037385851

`A134481(n)+A055795(n+1)`
-/

namespace A387204.P2176867960037385851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A055795 (n + 1)

end

end A387204.P2176867960037385851

namespace A387204

/-- `A134481(n)+A055795(n+1)` -/
def P2176867960037385851.Spec : Prop :=
  ∀ n, P2176867960037385851.a n = A387204 n

end A387204

/-! ## A387204.P16673303933219708515

`A022815(n+1)-A080956(n)`
-/

namespace A387204.P16673303933219708515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1) - A080956 n

end

end A387204.P16673303933219708515

namespace A387204

/-- `A022815(n+1)-A080956(n)` -/
def P16673303933219708515.Spec : Prop :=
  ∀ n, P16673303933219708515.a n = A387204 n

end A387204

/-! ## A387204.P10826572264833537737

`A362153(n+1)-A145126(n)`
-/

namespace A387204.P10826572264833537737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362153 (n + 1) - A145126 n

end

end A387204.P10826572264833537737

namespace A387204

/-- `A362153(n+1)-A145126(n)` -/
def P10826572264833537737.Spec : Prop :=
  ∀ n, P10826572264833537737.a n = A387204 n

end A387204

/-! ## A387204.P4773388907588910987

`A052472(n+3)-A327032(n)`
-/

namespace A387204.P4773388907588910987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052472 (n + 3) - A327032 n

end

end A387204.P4773388907588910987

namespace A387204

/-- `A052472(n+3)-A327032(n)` -/
def P4773388907588910987.Spec : Prop :=
  ∀ n, P4773388907588910987.a n = A387204 n

end A387204

/-! ## A387204.P13391651513568990840

`A393148(n+4)-A000125(n)`
-/

namespace A387204.P13391651513568990840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393148 (n + 4) - A000125 n

end

end A387204.P13391651513568990840

namespace A387204

/-- `A393148(n+4)-A000125(n)` -/
def P13391651513568990840.Spec : Prop :=
  ∀ n, P13391651513568990840.a n = A387204 n

end A387204

/-! ## A387204.P1419343454241090590

`A000439(n+1)-A023551(n+1)`
-/

namespace A387204.P1419343454241090590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000439 (n + 1) - A023551 (n + 1)

end

end A387204.P1419343454241090590

namespace A387204

/-- `A000439(n+1)-A023551(n+1)` -/
def P1419343454241090590.Spec : Prop :=
  ∀ n, P1419343454241090590.a n = A387204 n

end A387204

/-! ## A387204.P6250790524250924896

`A252870(n+2)-(n+1)`
-/

namespace A387204.P6250790524250924896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252870 (n + 2) - (n + 1 : ℤ)

end

end A387204.P6250790524250924896

namespace A387204

/-- `A252870(n+2)-(n+1)` -/
def P6250790524250924896.Spec : Prop :=
  ∀ n, P6250790524250924896.a n = A387204 n

end A387204

/-!
# A387205: a(n) = (n - 1)!*(2 + Harmonic(n - 1)) if n >= 1, and a(0) = 1.

The programs for A387205, there is no canonical definition to state claims against.
-/

/-! ## A387205.P5515326358442557039

`A387152(∑[2+n]+3)`
-/

namespace A387205.P5515326358442557039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387152 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A387205.P5515326358442557039

/-! ## A387205.P16314825520401741933

`record[A387152(A340266(1+col(n)))]`
-/

namespace A387205.P16314825520401741933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387152 (A340266 (1 + SequenceMachineLib.triCol n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387205.P16314825520401741933

/-! ## A387205.P4484856920952589869

`xor(1, xor(1, A387152(A000217(n+2)+2)))`
-/

namespace A387205.P4484856920952589869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A387152 (A000217 (n + 2) + 2).toNat))

end

end A387205.P4484856920952589869

/-! ## A387205.P11192559650067035207

`A387152(A340266(n+1))^(A130706(n+1)+1)`
-/

namespace A387205.P11192559650067035207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387152 (A340266 (n + 1)).toNat : ℚ) ^ (A130706 (n + 1) + 1 : ℤ)

end

end A387205.P11192559650067035207

/-!
# A387208: Expansion of sqrt((1-x) / (1-9*x)^3).

The programs for A387208, the canonical program `A387208.P15601140722499105796` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387208 has offset 0).

The definition of A387208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387208.P15601140722499105796

`∑{#}[n, 2^#*(2*#+1)*C(2*#, #)*C(n, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387208

/-- `∑{#}[n, 2^#*(2*#+1)*C(2*#, #)*C(n, n-#)]` -/
def P15601140722499105796.Spec : Prop :=
  ∀ n, (P15601140722499105796.a n : ℤ) = A387208 n

theorem P15601140722499105796.correct : P15601140722499105796.Spec := by
  intro n
  simp only [A387208]

end A387208

/-! ## A387208.P4153041230332235216

`∑{#}[n, (-2)^#*9^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]`
-/

namespace A387208.P4153041230332235216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-2) ^ k : ℚ) * (9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) k : ℚ) / (1 - (2 * k : ℤ) : ℚ) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A387208.P4153041230332235216

namespace A387208

/-- `∑{#}[n, (-2)^#*9^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]` -/
def P4153041230332235216.Spec : Prop :=
  ∀ n, P4153041230332235216.a n = (A387208 n : ℚ)

end A387208

/-!
# A387209: Number of convex polygons with perimeter n on the regular triangular lattice, not counting rotations and reflections as distinct.

The programs for A387209, the canonical program `A387209.P14191999222405322353` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387209 has offset 0).

The definition of A387209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387209.P14191999222405322353

`A025828(n)+a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387209

/-- `A025828(n)+a(n-2)` -/
def P14191999222405322353.Spec : Prop :=
  ∀ n, P14191999222405322353.a n = A387209 n

theorem P14191999222405322353.correct : P14191999222405322353.Spec := by
  intro n
  simp only [A387209]

end A387209

/-! ## A387209.P6451440904349701704

`A029136(n)-gcd(n, 2*(n+1))+1`
-/

namespace A387209.P6451440904349701704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 n - (Nat.gcd n (2 * (n + 1)) : ℤ) + 1

end

end A387209.P6451440904349701704

namespace A387209

/-- `A029136(n)-gcd(n, 2*(n+1))+1` -/
def P6451440904349701704.Spec : Prop :=
  ∀ n, P6451440904349701704.a n = A387209 n

end A387209

/-! ## A387209.P9884810729091911343

`A029136(n)-A059841(n)`
-/

namespace A387209.P9884810729091911343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 n - A059841 n

end

end A387209.P9884810729091911343

namespace A387209

/-- `A029136(n)-A059841(n)` -/
def P9884810729091911343.Spec : Prop :=
  ∀ n, P9884810729091911343.a n = A387209 n

end A387209

/-! ## A387209.P14613576427236267644

`A029136(n)-A003415(gcd(n, 2*(n+1)))`
-/

namespace A387209.P14613576427236267644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 n - A003415 (Nat.gcd n (2 * (n + 1)))

end

end A387209.P14613576427236267644

namespace A387209

/-- `A029136(n)-A003415(gcd(n, 2*(n+1)))` -/
def P14613576427236267644.Spec : Prop :=
  ∀ n, P14613576427236267644.a n = A387209 n

end A387209

/-! ## A387209.P15344258441049504816

`A025853(2*n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A387209.P15344258441049504816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A025853 (2 * n) + a (n - 2)

end

end A387209.P15344258441049504816

namespace A387209

/-- `A025853(2*n)+a(n-2)` -/
def P15344258441049504816.Spec : Prop :=
  ∀ n, P15344258441049504816.a n = A387209 n

end A387209

/-!
# A387210: Expansion of sqrt((1-x) / (1-13*x)^3).

The programs for A387210, the canonical program `A387210.P12395324023153789770` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387210 has offset 0).

The definition of A387210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387210.P12395324023153789770

`∑{#}[n, 3^#*(2*#+1)*C(2*#, #)*C(n, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387210

/-- `∑{#}[n, 3^#*(2*#+1)*C(2*#, #)*C(n, n-#)]` -/
def P12395324023153789770.Spec : Prop :=
  ∀ n, (P12395324023153789770.a n : ℤ) = A387210 n

theorem P12395324023153789770.correct : P12395324023153789770.Spec := by
  intro n
  simp only [A387210]

end A387210

/-! ## A387210.P15474682754589511622

`∑{#}[n, (-3)^#*13^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]`
-/

namespace A387210.P15474682754589511622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-3) ^ k : ℚ) * (13 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) k : ℚ) / (1 - (2 * k : ℤ) : ℚ) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A387210.P15474682754589511622

namespace A387210

/-- `∑{#}[n, (-3)^#*13^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]` -/
def P15474682754589511622.Spec : Prop :=
  ∀ n, P15474682754589511622.a n = (A387210 n : ℚ)

end A387210

/-!
# A387211: Expansion of sqrt((1-2*x) / (1-6*x)^3).

The programs for A387211, the canonical program `A387211.P11179348071782314282` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387211 has offset 0).

The definition of A387211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387211.P11179348071782314282

`∑{#}[n, 2^(n-#)*(2*#+1)*C(2*#, #)*C(n, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387211

/-- `∑{#}[n, 2^(n-#)*(2*#+1)*C(2*#, #)*C(n, n-#)]` -/
def P11179348071782314282.Spec : Prop :=
  ∀ n, P11179348071782314282.a n = (A387211 n : ℚ)

end A387211

/-! ## A387211.P1456372037420965134

`∑{#}[n, (-1)^#*6^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]`
-/

namespace A387211.P1456372037420965134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-1) ^ k : ℚ) * (6 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) k : ℚ) / (1 - (2 * k : ℤ) : ℚ) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A387211.P1456372037420965134

namespace A387211

/-- `∑{#}[n, (-1)^#*6^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]` -/
def P1456372037420965134.Spec : Prop :=
  ∀ n, P1456372037420965134.a n = (A387211 n : ℚ)

end A387211

/-! ## A387211.P17955608733985145624

`∑{#}[n, C(n, #)*A163869(#)]`
-/

namespace A387211.P17955608733985145624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A163869 k

end

end A387211.P17955608733985145624

namespace A387211

/-- `∑{#}[n, C(n, #)*A163869(#)]` -/
def P17955608733985145624.Spec : Prop :=
  ∀ n, P17955608733985145624.a n = A387211 n

end A387211

/-!
# A387212: Expansion of sqrt((1-3*x) / (1-7*x)^3).

The programs for A387212, the canonical program `A387212.P10362564984655525920` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387212 has offset 0).

The definition of A387212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387212.P10362564984655525920

`∑{#}[n, 3^(n-#)*(2*#+1)*C(2*#, #)*C(n, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387212

/-- `∑{#}[n, 3^(n-#)*(2*#+1)*C(2*#, #)*C(n, n-#)]` -/
def P10362564984655525920.Spec : Prop :=
  ∀ n, P10362564984655525920.a n = (A387212 n : ℚ)

end A387212

/-! ## A387212.P11276986282504355422

`∑{#}[n, (-1)^#*7^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]`
-/

namespace A387212.P11276986282504355422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-1) ^ k : ℚ) * (7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (2 * k) k : ℚ) / (1 - (2 * k : ℤ) : ℚ) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A387212.P11276986282504355422

namespace A387212

/-- `∑{#}[n, (-1)^#*7^(n-#)*C(2*#, #)/(1-2*#)*C(n, n-#)]` -/
def P11276986282504355422.Spec : Prop :=
  ∀ n, P11276986282504355422.a n = (A387212 n : ℚ)

end A387212

/-! ## A387212.P18089258141326280980

`∑{#}[n, C(n, #)*A387211(#)]`
-/

namespace A387212.P18089258141326280980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A387211 k

end

end A387212.P18089258141326280980

namespace A387212

/-- `∑{#}[n, C(n, #)*A387211(#)]` -/
def P18089258141326280980.Spec : Prop :=
  ∀ n, P18089258141326280980.a n = A387212 n

end A387212

/-! ## A387212.P11304254850628004387

`A360318(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A387212.P11304254850628004387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A360318 n + 7 * a (n - 1)

end

end A387212.P11304254850628004387

namespace A387212

/-- `A360318(n)+7*a(n-1)` -/
def P11304254850628004387.Spec : Prop :=
  ∀ n, P11304254850628004387.a n = A387212 n

end A387212

/-!
# A387214: Sturmian word of slope log(3)/log(2) - 1.

The programs for A387214, the canonical program `A387214.P7687452421197629823` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387214 has offset 0).

The definition of A387214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387214.P7687452421197629823

`char[comp[floor(n*log2(3))]]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387214

/-- `char[comp[floor(n*log2(3))]]` -/
def P7687452421197629823.Spec : Prop :=
  ∀ n, (P7687452421197629823.a n : ℤ) = A387214 n

theorem P7687452421197629823.correct : P7687452421197629823.Spec := by
  intro n
  simp only [A387214]

end A387214

/-!
# A387215: a(n) is the smallest k such that, for any m >= k, m is a sum of exactly n distinct primes.

The programs for A387215, there is no canonical definition to state claims against.
-/

/-! ## A387215.P4211477471272172982

`A124884(n+3)+1`
-/

namespace A387215.P4211477471272172982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124884 (n + 3) + 1

end

end A387215.P4211477471272172982

/-!
# A387216: Numbers that have at least two prime factors (counting multiplicity) congruent to 1 mod 3.

The programs for A387216, the canonical program `A387216.P8636742261827410665` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387216 has offset 1).

The definition of A387216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387216.P8636742261827410665

`lt[1, A373591(1+n)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387216

/-- `lt[1, A373591(1+n)]+1` -/
def P8636742261827410665.Spec : Prop :=
  ∀ n, (P8636742261827410665.a n : ℤ) = A387216 (n + 1)

theorem P8636742261827410665.correct : P8636742261827410665.Spec := by
  intro n
  simp only [A387216, Nat.add_sub_cancel]

end A387216

/-! ## A387216.P5653110013640879245

`eq[0, A319986(n+1)%4]+1`
-/

namespace A387216.P5653110013640879245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319986 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387216.P5653110013640879245

namespace A387216

/-- `eq[0, A319986(n+1)%4]+1` -/
def P5653110013640879245.Spec : Prop :=
  ∀ n, (P5653110013640879245.a n : ℤ) = A387216 (n + 1)

end A387216

/-! ## A387216.P11263226985652021586

`lt[1, A373591(A004277(n))]`
-/

namespace A387216.P11263226985652021586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373591 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387216.P11263226985652021586

namespace A387216

/-- `lt[1, A373591(A004277(n))]` -/
def P11263226985652021586.Spec : Prop :=
  ∀ n, (P11263226985652021586.a n : ℤ) = A387216 (n + 1)

end A387216

/-! ## A387216.P9396177944953418802

`eq[0, A319986(A028310(n))%4]`
-/

namespace A387216.P9396177944953418802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319986 (A028310 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A387216.P9396177944953418802

namespace A387216

/-- `eq[0, A319986(A028310(n))%4]` -/
def P9396177944953418802.Spec : Prop :=
  ∀ n, (P9396177944953418802.a n : ℤ) = A387216 (n + 1)

end A387216

/-! ## A387216.P9160796240991492925

`lt[1, A001222(A248909(n+1))]+1`
-/

namespace A387216.P9160796240991492925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248909 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387216.P9160796240991492925

namespace A387216

/-- `lt[1, A001222(A248909(n+1))]+1` -/
def P9160796240991492925.Spec : Prop :=
  ∀ n, (P9160796240991492925.a n : ℤ) = A387216 (n + 1)

end A387216

/-!
# A387219: Product of the first n terms of the paperfolding sequence A034947, or the Kronecker symbol (-1|n!).

The programs for A387219, the canonical program `A387219.P4420504410131079771` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387219 has offset 1).

The definition of A387219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387219.P4420504410131079771

`(-1)^A255070(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387219

/-- `(-1)^A255070(n+1)` -/
def P4420504410131079771.Spec : Prop :=
  ∀ n, P4420504410131079771.a n = (A387219 (n + 1) : ℚ)

end A387219

/-! ## A387219.P13254281053553423080

`∏[Δ[xor(2*n, n)]%2]`
-/

namespace A387219.P13254281053553423080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387219.P13254281053553423080

namespace A387219

/-- `∏[Δ[xor(2*n, n)]%2]` -/
def P13254281053553423080.Spec : Prop :=
  ∀ n, P13254281053553423080.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P17357582229361556377

`(-1)^∑[char[or(n, n-1)+n]]`
-/

namespace A387219.P17357582229361556377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387219.P17357582229361556377

namespace A387219

/-- `(-1)^∑[char[or(n, n-1)+n]]` -/
def P17357582229361556377.Spec : Prop :=
  ∀ n, P17357582229361556377.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P1323015649395932996

`(-1)^∑[floor(n/(xor(n, n+1)+1))]`
-/

namespace A387219.P1323015649395932996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A387219.P1323015649395932996

namespace A387219

/-- `(-1)^∑[floor(n/(xor(n, n+1)+1))]` -/
def P1323015649395932996.Spec : Prop :=
  ∀ n, P1323015649395932996.a n = (A387219 (n + 1) : ℚ)

end A387219

/-! ## A387219.P3124619129236381912

`∏[(-1)^floor(n/(xor(n, n+1)+1))]`
-/

namespace A387219.P3124619129236381912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387219.P3124619129236381912

namespace A387219

/-- `∏[(-1)^floor(n/(xor(n, n+1)+1))]` -/
def P3124619129236381912.Spec : Prop :=
  ∀ n, P3124619129236381912.a n = (A387219 (n + 1) : ℚ)

end A387219

/-! ## A387219.P6435334863677032120

`(-1)^∑[char[and(n, n+1)+n]+1]`
-/

namespace A387219.P6435334863677032120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387219.P6435334863677032120

namespace A387219

/-- `(-1)^∑[char[and(n, n+1)+n]+1]` -/
def P6435334863677032120.Spec : Prop :=
  ∀ n, P6435334863677032120.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P18077456499943362196

`∏[Δ[A005811(n)]]`
-/

namespace A387219.P18077456499943362196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387219.P18077456499943362196

namespace A387219

/-- `∏[Δ[A005811(n)]]` -/
def P18077456499943362196.Spec : Prop :=
  ∀ n, P18077456499943362196.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P13734327955852769721

`∏[Δ[A088748(n)]]`
-/

namespace A387219.P13734327955852769721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387219.P13734327955852769721

namespace A387219

/-- `∏[Δ[A088748(n)]]` -/
def P13734327955852769721.Spec : Prop :=
  ∀ n, P13734327955852769721.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P15327051260420539272

`∏[A034947(n+1)]`
-/

namespace A387219.P15327051260420539272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387219.P15327051260420539272

namespace A387219

/-- `∏[A034947(n+1)]` -/
def P15327051260420539272.Spec : Prop :=
  ∀ n, P15327051260420539272.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P11931412813990228140

`∏[A112347(n+1)]`
-/

namespace A387219.P11931412813990228140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A387219.P11931412813990228140

namespace A387219

/-- `∏[A112347(n+1)]` -/
def P11931412813990228140.Spec : Prop :=
  ∀ n, P11931412813990228140.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P10736494310350960881

`A393435(A029578(n+1))`
-/

namespace A387219.P10736494310350960881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393435 (A029578 (n + 1)).toNat

end

end A387219.P10736494310350960881

namespace A387219

/-- `A393435(A029578(n+1))` -/
def P10736494310350960881.Spec : Prop :=
  ∀ n, P10736494310350960881.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P14560601320224581900

`A286299(n+1-A005811(n+1))`
-/

namespace A387219.P14560601320224581900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 ((n + 1 : ℤ) - A005811 (n + 1)).toNat

end

end A387219.P14560601320224581900

namespace A387219

/-- `A286299(n+1-A005811(n+1))` -/
def P14560601320224581900.Spec : Prop :=
  ∀ n, P14560601320224581900.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P9530514796711944420

`A034947(n+2-A005811(n+1))`
-/

namespace A387219.P9530514796711944420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 ((n + 2 : ℤ) - A005811 (n + 1)).toNat

end

end A387219.P9530514796711944420

namespace A387219

/-- `A034947(n+2-A005811(n+1))` -/
def P9530514796711944420.Spec : Prop :=
  ∀ n, P9530514796711944420.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P3072224820046179872

`A101455(n+2-A005811(n+1))`
-/

namespace A387219.P3072224820046179872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 ((n + 2 : ℤ) - A005811 (n + 1)).toNat

end

end A387219.P3072224820046179872

namespace A387219

/-- `A101455(n+2-A005811(n+1))` -/
def P3072224820046179872.Spec : Prop :=
  ∀ n, P3072224820046179872.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P11067255219469684683

`A112347(n+2-A005811(n+1))`
-/

namespace A387219.P11067255219469684683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 ((n + 2 : ℤ) - A005811 (n + 1)).toNat

end

end A387219.P11067255219469684683

namespace A387219

/-- `A112347(n+2-A005811(n+1))` -/
def P11067255219469684683.Spec : Prop :=
  ∀ n, P11067255219469684683.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P13647764391367172338

`A121238(n+2-A005811(n+1))`
-/

namespace A387219.P13647764391367172338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 ((n + 2 : ℤ) - A005811 (n + 1)).toNat

end

end A387219.P13647764391367172338

namespace A387219

/-- `A121238(n+2-A005811(n+1))` -/
def P13647764391367172338.Spec : Prop :=
  ∀ n, P13647764391367172338.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P5077148599616000709

`A209615(n+2-A005811(n+1))`
-/

namespace A387219.P5077148599616000709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 ((n + 2 : ℤ) - A005811 (n + 1)).toNat

end

end A387219.P5077148599616000709

namespace A387219

/-- `A209615(n+2-A005811(n+1))` -/
def P5077148599616000709.Spec : Prop :=
  ∀ n, P5077148599616000709.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P7572168657622229656

`A034947(n+2-A246960(n+1))`
-/

namespace A387219.P7572168657622229656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 ((n + 2 : ℤ) - A246960 (n + 1)).toNat

end

end A387219.P7572168657622229656

namespace A387219

/-- `A034947(n+2-A246960(n+1))` -/
def P7572168657622229656.Spec : Prop :=
  ∀ n, P7572168657622229656.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P16640983652296081833

`A286299(n+2-A088748(n+1))`
-/

namespace A387219.P16640983652296081833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286299 ((n + 2 : ℤ) - A088748 (n + 1)).toNat

end

end A387219.P16640983652296081833

namespace A387219

/-- `A286299(n+2-A088748(n+1))` -/
def P16640983652296081833.Spec : Prop :=
  ∀ n, P16640983652296081833.a n = A387219 (n + 1)

end A387219

/-! ## A387219.P10372408664127683130

`A209615(n+2-A246960(n+1))`
-/

namespace A387219.P10372408664127683130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 ((n + 2 : ℤ) - A246960 (n + 1)).toNat

end

end A387219.P10372408664127683130

namespace A387219

/-- `A209615(n+2-A246960(n+1))` -/
def P10372408664127683130.Spec : Prop :=
  ∀ n, P10372408664127683130.a n = A387219 (n + 1)

end A387219

/-!
# A387220: Arithmetic mean of number of lattice points strictly inside circle of radius n centered on origin, and number of points not outside that circle.

The programs for A387220, the canonical program `A387220.P18196060376439450765` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387220 has offset 1).

The definition of A387220 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256465, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387220.P13536839393086370206

`(A051132(n+1)+A000328(n+1))/2`
-/

namespace A387220.P13536839393086370206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051132 (n + 1) + A000328 (n + 1) : ℚ) / 2

end

end A387220.P13536839393086370206

namespace A387220

/-- `(A051132(n+1)+A000328(n+1))/2` -/
def P13536839393086370206.Spec : Prop :=
  ∀ n, P13536839393086370206.a n = (A387220 (n + 1) : ℚ)

end A387220

/-! ## A387220.P18196060376439450765

`A256465((n+1)²)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A387220

/-- `A256465((n+1)²)` -/
def P18196060376439450765.Spec : Prop :=
  ∀ n, P18196060376439450765.a n = A387220 (n + 1)

theorem P18196060376439450765.correct : P18196060376439450765.Spec := by
  intro n
  simp only [A387220, Nat.add_sub_cancel]

end A387220

/-! ## A387220.P3271962730071552955

`A256452(n+1)+A256452(n+1)+A051132(n+1)`
-/

namespace A387220.P3271962730071552955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1) + (A256452 (n + 1) + A051132 (n + 1))

end

end A387220.P3271962730071552955

namespace A387220

/-- `A256452(n+1)+A256452(n+1)+A051132(n+1)` -/
def P3271962730071552955.Spec : Prop :=
  ∀ n, P3271962730071552955.a n = A387220 (n + 1)

end A387220

/-! ## A387220.P2607083455965316194

`∑[ceil((A077770(n)+A047077(n))/2)]`
-/

namespace A387220.P2607083455965316194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077770 n + A047077 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387220.P2607083455965316194

namespace A387220

/-- `∑[ceil((A077770(n)+A047077(n))/2)]` -/
def P2607083455965316194.Spec : Prop :=
  ∀ n, P2607083455965316194.a n = A387220 (n + 1)

end A387220

/-! ## A387220.P1414699407174860055

`fp[-A305575(n)]`
-/

namespace A387220.P1414699407174860055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A305575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A387220.P1414699407174860055

namespace A387220

/-- `fp[-A305575(n)]` -/
def P1414699407174860055.Spec : Prop :=
  ∀ n, (P1414699407174860055.a n : ℤ) = A387220 (n + 1)

end A387220

/-! ## A387220.P8418878065535492376

`eq[A005887(n), A305576(n)]`
-/

namespace A387220.P8418878065535492376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387220.P8418878065535492376

namespace A387220

/-- `eq[A005887(n), A305576(n)]` -/
def P8418878065535492376.Spec : Prop :=
  ∀ n, (P8418878065535492376.a n : ℤ) = A387220 (n + 1)

end A387220

/-! ## A387220.P504827230168320377

`eq[A034433(n), A305576(n)]`
-/

namespace A387220.P504827230168320377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387220.P504827230168320377

namespace A387220

/-- `eq[A034433(n), A305576(n)]` -/
def P504827230168320377.Spec : Prop :=
  ∀ n, (P504827230168320377.a n : ℤ) = A387220 (n + 1)

end A387220

/-! ## A387220.P12327686330201178213

`eq[A045826(n), A305576(n)]`
-/

namespace A387220.P12327686330201178213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387220.P12327686330201178213

namespace A387220

/-- `eq[A045826(n), A305576(n)]` -/
def P12327686330201178213.Spec : Prop :=
  ∀ n, (P12327686330201178213.a n : ℤ) = A387220 (n + 1)

end A387220

/-! ## A387220.P16039968422141861044

`eq[A072070(n), A305576(n)]`
-/

namespace A387220.P16039968422141861044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387220.P16039968422141861044

namespace A387220

/-- `eq[A072070(n), A305576(n)]` -/
def P16039968422141861044.Spec : Prop :=
  ∀ n, (P16039968422141861044.a n : ℤ) = A387220 (n + 1)

end A387220

/-! ## A387220.P15391989994962887698

`eq[A131732(n), A305576(n)]`
-/

namespace A387220.P15391989994962887698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387220.P15391989994962887698

namespace A387220

/-- `eq[A131732(n), A305576(n)]` -/
def P15391989994962887698.Spec : Prop :=
  ∀ n, (P15391989994962887698.a n : ℤ) = A387220 (n + 1)

end A387220

/-!
# A387221: Even terms in A002181.

The programs for A387221, there is no canonical definition to state claims against.
-/

/-! ## A387221.P15460622018803681624

`∑[A143511(A243086(n))]`
-/

namespace A387221.P15460622018803681624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143511 (A243086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387221.P15460622018803681624

/-!
# A387222: Number of noncongruent points in a face-centered cubic lattice that intersect a sphere of radius n centered on a point in the lattice.

The programs for A387222, there is no canonical definition to state claims against.
-/

/-! ## A387222.P10546115018439671248

`A000164(2*n²)`
-/

namespace A387222.P10546115018439671248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (2 * n ^ 2)

end

end A387222.P10546115018439671248

/-! ## A387222.P16072150946184161788

`A335421(n)-A316866(A221234(n+1))`
-/

namespace A387222.P16072150946184161788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335421 n - A316866 (A221234 (n + 1)).toNat

end

end A387222.P16072150946184161788

/-!
# A387224: Number of dissections of a convex n-gon by strictly disjoint diagonals so as to create no triangles.

The programs for A387224, there is no canonical definition to state claims against.
-/

/-! ## A387224.P12686478943832717262

`A185711(A108985(n+1))`
-/

namespace A387224.P12686478943832717262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A108985 (n + 1)).toNat

end

end A387224.P12686478943832717262

/-!
# A387228: Expansion of sqrt((1-x) / (1-5*x)^5).

The programs for A387228, the canonical program `A387228.P4461337682587481902` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387228 has offset 0).

The definition of A387228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387228.P4461337682587481902

`∑{#}[n, (2*#+1)*(2*#+3)/3*C(2*#, #)*C(n+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387228

/-- `∑{#}[n, (2*#+1)*(2*#+3)/3*C(2*#, #)*C(n+1, n-#)]` -/
def P4461337682587481902.Spec : Prop :=
  ∀ n, P4461337682587481902.a n = (A387228 n : ℚ)

end A387228

/-! ## A387228.P6541808313867296877

`∑[∑[A377199(n)]]`
-/

namespace A387228.P6541808313867296877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387228.P6541808313867296877

namespace A387228

/-- `∑[∑[A377199(n)]]` -/
def P6541808313867296877.Spec : Prop :=
  ∀ n, P6541808313867296877.a n = A387228 n

end A387228

/-! ## A387228.P4942380917898939131

`A163869(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A387228.P4942380917898939131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163869 n + 5 * a (n - 1)

end

end A387228.P4942380917898939131

namespace A387228

/-- `A163869(n)+5*a(n-1)` -/
def P4942380917898939131.Spec : Prop :=
  ∀ n, P4942380917898939131.a n = A387228 n

end A387228

/-!
# A387229: Expansion of sqrt((1-x) / (1-9*x)^5).

The programs for A387229, the canonical program `A387229.P11479884872617052203` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387229 has offset 0).

The definition of A387229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387229.P11479884872617052203

`∑{#}[n, (-2)^#*9^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387229

/-- `∑{#}[n, (-2)^#*9^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]` -/
def P11479884872617052203.Spec : Prop :=
  ∀ n, P11479884872617052203.a n = (A387229 n : ℚ)

end A387229

/-!
# A387230: Expansion of sqrt((1-x) / (1-13*x)^5).

The programs for A387230, the canonical program `A387230.P3213488241250976433` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387230 has offset 0).

The definition of A387230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387230.P3213488241250976433

`∑{#}[n, (-3)^#*13^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387230

/-- `∑{#}[n, (-3)^#*13^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]` -/
def P3213488241250976433.Spec : Prop :=
  ∀ n, P3213488241250976433.a n = (A387230 n : ℚ)

end A387230

/-!
# A387231: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) > a(n-2), else it is coprime to a(n-1) if a(n-1) < a(n-2).

The programs for A387231, there is no canonical definition to state claims against.
-/

/-! ## A387231.P5135764833769757049

`A141285(A372683(n)+A069905(n))`
-/

namespace A387231.P5135764833769757049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A372683 n + A069905 n).toNat

end

end A387231.P5135764833769757049

/-!
# A387232: Lexicographically earliest infinite sequence of distinct positive numbers such that a(2*n) > a(2*n-1) and a(2*n) > a(2*n+1) and all neighboring terms are coprime.

The programs for A387232, there is no canonical definition to state claims against.
-/

/-! ## A387232.P18351025309808252771

`A093714(n+1)+A083916(A001006(n))`
-/

namespace A387232.P18351025309808252771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (n + 1) + A083916 (A001006 n).toNat

end

end A387232.P18351025309808252771

/-! ## A387232.P2259795143844997829

`A093714(n+1)+A002265(A185293(n))`
-/

namespace A387232.P2259795143844997829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (n + 1) + A002265 (A185293 n).toNat

end

end A387232.P2259795143844997829

/-! ## A387232.P17809032204380930424

`A365862(A009766(n))+A093714(n+1)`
-/

namespace A387232.P17809032204380930424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365862 (A009766 n).toNat + A093714 (n + 1)

end

end A387232.P17809032204380930424

/-!
# A387233: Expansion of sqrt((1-2*x) / (1-6*x)^5).

The programs for A387233, the canonical program `A387233.P29679302880781445` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387233 has offset 0).

The definition of A387233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387233.P29679302880781445

`∑{#}[n, (-1)^#*6^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387233

/-- `∑{#}[n, (-1)^#*6^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]` -/
def P29679302880781445.Spec : Prop :=
  ∀ n, P29679302880781445.a n = (A387233 n : ℚ)

end A387233

/-!
# A387234: Expansion of sqrt((1-3*x) / (1-7*x)^5).

The programs for A387234, the canonical program `A387234.P4658117801079228371` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387234 has offset 0).

The definition of A387234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387234.P4658117801079228371

`∑{#}[n, (-1)^#*7^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387234

/-- `∑{#}[n, (-1)^#*7^(n-#)*C(2*#, #)/(1-2*#)*C(n+1, n-#)]` -/
def P4658117801079228371.Spec : Prop :=
  ∀ n, P4658117801079228371.a n = (A387234 n : ℚ)

end A387234

/-!
# A387237: Expansion of 1/((1-x) * (1-5*x))^(5/2).

The programs for A387237, the canonical program `A387237.P1085921087124048914` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387237 has offset 0).

The definition of A387237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026377, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387237.P1085921087124048914

`C(n+4, 2)/6*A026377(n+2)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A387237

/-- `C(n+4, 2)/6*A026377(n+2)` -/
def P1085921087124048914.Spec : Prop :=
  ∀ n, P1085921087124048914.a n = (A387237 n : ℚ)

end A387237

/-! ## A387237.P8165464091070110092

`∑[∑[∑[A387228(n)]]]`
-/

namespace A387237.P8165464091070110092
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387237.P8165464091070110092

namespace A387237

/-- `∑[∑[∑[A387228(n)]]]` -/
def P8165464091070110092.Spec : Prop :=
  ∀ n, P8165464091070110092.a n = A387237 n

end A387237

/-!
# A387238: Expansion of 1/((1-x) * (1-5*x))^(7/2).

The programs for A387238, the canonical program `A387238.P7917916309582918680` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387238 has offset 0).

The definition of A387238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387238.P7917916309582918680

`C(n+6, 3)/20*A387239(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387238

/-- `C(n+6, 3)/20*A387239(n)` -/
def P7917916309582918680.Spec : Prop :=
  ∀ n, P7917916309582918680.a n = (A387238 n : ℚ)

end A387238

/-!
# A387239: a(n) = Sum_{k=0..n} binomial(n+3,k+3) * binomial(2*k+6,k+6).

The programs for A387239, the canonical program `A387239.P13476387756768924972` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387239 has offset 0).

The definition of A387239 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3, #+3)*C(2*#+6, #)]` (program `A387239.P13476387756768924972`, by `A387239.P13476387756768924972.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387239.P17922905513333789534

`∑{#}[floor(n/2), 3^(n-2*#)*C(n+3, n-2*#)*C(2*#+3, #)]`
-/

namespace A387239.P17922905513333789534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (3 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (Nat.choose (n + 3) ((n : ℤ) - (2 * k : ℤ)).toNat : ℚ) * (Nat.choose (2 * k + 3) k : ℚ)

end

end A387239.P17922905513333789534

namespace A387239

/-- `∑{#}[floor(n/2), 3^(n-2*#)*C(n+3, n-2*#)*C(2*#+3, #)]` -/
def P17922905513333789534.Spec : Prop :=
  ∀ n, P17922905513333789534.a n = (A387239 n : ℚ)

end A387239

/-! ## A387239.P13476387756768924972

`∑{#}[n, C(n+3, #+3)*C(2*#+6, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387239

/-- `∑{#}[n, C(n+3, #+3)*C(2*#+6, #)]` -/
def P13476387756768924972.Spec : Prop :=
  ∀ n, (P13476387756768924972.a n : ℤ) = A387239 n

theorem P13476387756768924972.correct : P13476387756768924972.Spec := by
  intro n
  simp only [A387239]

end A387239

/-! ## A387239.P13458091938892898097

`∑{#}[n, C(n+3, #+3)*C(2*#+6, #+6)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387239.P13458091938892898097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3) (k + 3) * Nat.choose (2 * k + 6) (k + 6)

end

end A387239.P13458091938892898097

namespace A387239

/-- `∑{#}[n, C(n+3, #+3)*C(2*#+6, #+6)]` -/
def P13458091938892898097.Spec : Prop :=
  ∀ n, (P13458091938892898097.a n : ℤ) = A387239 n

end A387239

/-! ## A387239.P14364957594033048548

`A126190(n+4)/2`
-/

namespace A387239.P14364957594033048548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126190 (n + 4) : ℚ) / 2

end

end A387239.P14364957594033048548

namespace A387239

/-- `A126190(n+4)/2` -/
def P14364957594033048548.Spec : Prop :=
  ∀ n, P14364957594033048548.a n = (A387239 n : ℚ)

end A387239

/-! ## A387239.P14441116683047448940

`A110165(A167614(n+2))`
-/

namespace A387239.P14441116683047448940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 (A167614 (n + 2)).toNat

end

end A387239.P14441116683047448940

namespace A387239

/-- `A110165(A167614(n+2))` -/
def P14441116683047448940.Spec : Prop :=
  ∀ n, P14441116683047448940.a n = A387239 n

end A387239

/-! ## A387239.P10590825871976202011

`A110165(eq[3, A144328(n+1)])`
-/

namespace A387239.P10590825871976202011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387239.P10590825871976202011

namespace A387239

/-- `A110165(eq[3, A144328(n+1)])` -/
def P10590825871976202011.Spec : Prop :=
  ∀ n, P10590825871976202011.a n = A387239 n

end A387239

/-! ## A387239.P14394221287596536914

`A026374(A137882(n+4)-1)`
-/

namespace A387239.P14394221287596536914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026374 (A137882 (n + 4) - 1).toNat

end

end A387239.P14394221287596536914

namespace A387239

/-- `A026374(A137882(n+4)-1)` -/
def P14394221287596536914.Spec : Prop :=
  ∀ n, P14394221287596536914.a n = A387239 n

end A387239

/-!
# A387241: a(n) is the number of 5 element sets of distinct integer sided rectangles that fill an n X n square.

The programs for A387241, there is no canonical definition to state claims against.
-/

/-! ## A387241.P9170664544220946402

`A385240(A052905(n+2)+1)`
-/

namespace A387241.P9170664544220946402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (A052905 (n + 2) + 1).toNat

end

end A387241.P9170664544220946402

/-! ## A387241.P11615010468805070468

`A385240(∑[comp[A384479(n+1)]+3]+7)`
-/

namespace A387241.P11615010468805070468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384479 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A387241.P11615010468805070468

/-!
# A387243: a(n) is the smallest positive k such that (k+n)^k < (k+1)^(k+1).

The programs for A387243, there is no canonical definition to state claims against.
-/

/-! ## A387243.P15493231059966149859

`A382131(1+n)-(n+1)`
-/

namespace A387243.P15493231059966149859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382131 (1 + n) - (n + 1 : ℤ)

end

end A387243.P15493231059966149859

/-! ## A387243.P2831966235659214112

`comp[A381767(n+1)-1]-n`
-/

namespace A387243.P2831966235659214112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381767 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A387243.P2831966235659214112

/-!
# A387244: Expansion of e.g.f. exp(x^2/(1-x)^4).

The programs for A387244, there is no canonical definition to state claims against.
-/

/-! ## A387244.P8227278206810211948

`A000120(A288269(n))*A052887(n)`
-/

namespace A387244.P8227278206810211948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A288269 n).toNat * A052887 n

end

end A387244.P8227278206810211948

/-! ## A387244.P15287302551189412796

`A052887(n)*A055642(A349562(n))`
-/

namespace A387244.P15287302551189412796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052887 n * A055642 (A349562 n).toNat

end

end A387244.P15287302551189412796

/-!
# A387245: Numbers k such that (the concatenation of the first k positive even numbers) + 1 is prime.

The programs for A387245, there is no canonical definition to state claims against.
-/

/-! ## A387245.P2426902434892733933

`A250120(n)+A075206(2^n+1)`
-/

namespace A387245.P2426902434892733933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A075206 (2 ^ n + 1)

end

end A387245.P2426902434892733933

/-!
# A387248: a(n) = 3/(n + 1) * Catalan(2*n).

The programs for A387248, the canonical program `A387248.P13420228551651377683` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387248 has offset 0).

The definition of A387248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387248.P13420228551651377683

`2*(4*n-1)*(4*n-3)/((n+1)*(2*n+1))*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387248

/-- `2*(4*n-1)*(4*n-3)/((n+1)*(2*n+1))*a(n-1)` -/
def P13420228551651377683.Spec : Prop :=
  ∀ n, P13420228551651377683.a n = (A387248 n : ℚ)

end A387248

/-! ## A387248.P1289297761517071355

`3/(n+1)*A000108(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387248.P1289297761517071355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (n + 1 : ℚ) * (A000108 (2 * n) : ℚ)

end

end A387248.P1289297761517071355

namespace A387248

/-- `3/(n+1)*A000108(2*n)` -/
def P1289297761517071355.Spec : Prop :=
  ∀ n, P1289297761517071355.a n = (A387248 n : ℚ)

end A387248

/-! ## A387248.P9835915461330343079

`3*A000108(2*n)/(n+1)`
-/

namespace A387248.P9835915461330343079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000108 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A387248.P9835915461330343079

namespace A387248

/-- `3*A000108(2*n)/(n+1)` -/
def P9835915461330343079.Spec : Prop :=
  ∀ n, P9835915461330343079.a n = (A387248 n : ℚ)

end A387248

/-! ## A387248.P15360802012248979283

`4*A000108(2*n)-A000108(2*n+1)`
-/

namespace A387248.P15360802012248979283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000108 (2 * n) - A000108 (2 * n + 1)

end

end A387248.P15360802012248979283

namespace A387248

/-- `4*A000108(2*n)-A000108(2*n+1)` -/
def P15360802012248979283.Spec : Prop :=
  ∀ n, P15360802012248979283.a n = A387248 n

end A387248

/-! ## A387248.P15726903582781325102

`6/((2*n+1)*(2*n+2))*C(4*n, 2*n)`
-/

namespace A387248.P15726903582781325102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / ((2 * n + 1) * (2 * n + 2) : ℚ) * (Nat.choose (4 * n) (2 * n) : ℚ)

end

end A387248.P15726903582781325102

namespace A387248

/-- `6/((2*n+1)*(2*n+2))*C(4*n, 2*n)` -/
def P15726903582781325102.Spec : Prop :=
  ∀ n, P15726903582781325102.a n = (A387248 n : ℚ)

end A387248

/-! ## A387248.P14617526389796586337

`A007054(2*n)`
-/

namespace A387248.P14617526389796586337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007054 (2 * n)

end

end A387248.P14617526389796586337

namespace A387248

/-- `A007054(2*n)` -/
def P14617526389796586337.Spec : Prop :=
  ∀ n, P14617526389796586337.a n = A387248 n

end A387248

/-! ## A387248.P13037612658267324403

`abs(A184881(2*n+1))`
-/

namespace A387248.P13037612658267324403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184881 (2 * n + 1)|

end

end A387248.P13037612658267324403

namespace A387248

/-- `abs(A184881(2*n+1))` -/
def P13037612658267324403.Spec : Prop :=
  ∀ n, P13037612658267324403.a n = A387248 n

end A387248

/-! ## A387248.P11049156665572454827

`A002421(2*(n+1))/2`
-/

namespace A387248.P11049156665572454827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 (2 * (n + 1)) : ℚ) / 2

end

end A387248.P11049156665572454827

namespace A387248

/-- `A002421(2*(n+1))/2` -/
def P11049156665572454827.Spec : Prop :=
  ∀ n, P11049156665572454827.a n = (A387248 n : ℚ)

end A387248

/-! ## A387248.P12639065729484672682

`A038629(2*n)/(2*n+1)`
-/

namespace A387248.P12639065729484672682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038629 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A387248.P12639065729484672682

namespace A387248

/-- `A038629(2*n)/(2*n+1)` -/
def P12639065729484672682.Spec : Prop :=
  ∀ n, P12639065729484672682.a n = (A387248 n : ℚ)

end A387248

/-! ## A387248.P7406870573210070292

`A008836(A075587(n+1))*A184881(2*n+1)`
-/

namespace A387248.P7406870573210070292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A075587 (n + 1)).toNat * A184881 (2 * n + 1)

end

end A387248.P7406870573210070292

namespace A387248

/-- `A008836(A075587(n+1))*A184881(2*n+1)` -/
def P7406870573210070292.Spec : Prop :=
  ∀ n, P7406870573210070292.a n = A387248 n

end A387248

/-!
# A387249: a(n) = 10/(n + 1) * Catalan(3*n).

The programs for A387249, the canonical program `A387249.P9723774275975948807` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387249 has offset 0).

The definition of A387249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387249.P10939986190762077148

`10/(n+1)*A000108(3*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387249.P10939986190762077148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / (n + 1 : ℚ) * (A000108 (3 * n) : ℚ)

end

end A387249.P10939986190762077148

namespace A387249

/-- `10/(n+1)*A000108(3*n)` -/
def P10939986190762077148.Spec : Prop :=
  ∀ n, P10939986190762077148.a n = (A387249 n : ℚ)

end A387249

/-! ## A387249.P9723774275975948807

`(3*n+2)/2*A007272(3*n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387249

/-- `(3*n+2)/2*A007272(3*n)` -/
def P9723774275975948807.Spec : Prop :=
  ∀ n, P9723774275975948807.a n = (A387249 n : ℚ)

end A387249

/-! ## A387249.P5690959522211517682

`10*A000108(3*n)/(n+1)`
-/

namespace A387249.P5690959522211517682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * A000108 (3 * n) : ℚ) / (n + 1 : ℚ)

end

end A387249.P5690959522211517682

namespace A387249

/-- `10*A000108(3*n)/(n+1)` -/
def P5690959522211517682.Spec : Prop :=
  ∀ n, P5690959522211517682.a n = (A387249 n : ℚ)

end A387249

/-! ## A387249.P12841624947861079499

`10/((n+1)*(3*n+1))*C(6*n, 3*n)`
-/

namespace A387249.P12841624947861079499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 / ((n + 1) * (3 * n + 1) : ℚ) * (Nat.choose (6 * n) (3 * n) : ℚ)

end

end A387249.P12841624947861079499

namespace A387249

/-- `10/((n+1)*(3*n+1))*C(6*n, 3*n)` -/
def P12841624947861079499.Spec : Prop :=
  ∀ n, P12841624947861079499.a n = (A387249 n : ℚ)

end A387249

/-! ## A387249.P8001466966196346233

`10*A028304(6*n)/(n+1)`
-/

namespace A387249.P8001466966196346233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((A028304 (6 * n) : ℚ) / (n + 1 : ℚ))

end

end A387249.P8001466966196346233

namespace A387249

/-- `10*A028304(6*n)/(n+1)` -/
def P8001466966196346233.Spec : Prop :=
  ∀ n, P8001466966196346233.a n = (A387249 n : ℚ)

end A387249

/-!
# A387250: a(n) = 105/(n + 1) * Catalan(4*n).

The programs for A387250, the canonical program `A387250.P1110462465994235292` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387250 has offset 0).

The definition of A387250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387250.P5306206765676576468

`105/(n+1)*A000108(4*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387250.P5306206765676576468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  105 / (n + 1 : ℚ) * (A000108 (4 * n) : ℚ)

end

end A387250.P5306206765676576468

namespace A387250

/-- `105/(n+1)*A000108(4*n)` -/
def P5306206765676576468.Spec : Prop :=
  ∀ n, P5306206765676576468.a n = (A387250 n : ℚ)

end A387250

/-! ## A387250.P1110462465994235292

`105/((n+1)*(4*n+1))*C(8*n, 4*n)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387250

/-- `105/((n+1)*(4*n+1))*C(8*n, 4*n)` -/
def P1110462465994235292.Spec : Prop :=
  ∀ n, P1110462465994235292.a n = (A387250 n : ℚ)

end A387250

/-!
# A387251: a(n) = 3^n*n^4.

The programs for A387251, the canonical program `A387251.P7654537576363240053` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387251 has offset 0).

The definition of A387251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n^4` (program `A387251.P7654537576363240053`, by `A387251.P7654537576363240053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387251.P7654537576363240053

`3^n*n^4`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387251

/-- `3^n*n^4` -/
def P7654537576363240053.Spec : Prop :=
  ∀ n, (P7654537576363240053.a n : ℤ) = A387251 n

theorem P7654537576363240053.correct : P7654537576363240053.Spec := by
  intro n
  simp only [A387251]

end A387251

/-! ## A387251.P8155785404431696863

`n*A168299(n)-n`
-/

namespace A387251.P8155785404431696863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168299 n - (n : ℤ)

end

end A387251.P8155785404431696863

namespace A387251

/-- `n*A168299(n)-n` -/
def P8155785404431696863.Spec : Prop :=
  ∀ n, P8155785404431696863.a n = A387251 n

theorem P8155785404431696863.correct : P8155785404431696863.Spec := by
  intro n
  simp only [A387251, Nat.add_sub_cancel, A387251.P8155785404431696863.a, A387251.P7654537576363240053.a, A168299, A168299.P11582015306639737325.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387251

/-! ## A387251.P17546457345732667074

`lcm(n, n*A062074(n))`
-/

namespace A387251.P17546457345732667074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A062074 n)

end

end A387251.P17546457345732667074

namespace A387251

/-- `lcm(n, n*A062074(n))` -/
def P17546457345732667074.Spec : Prop :=
  ∀ n, (P17546457345732667074.a n : ℤ) = A387251 n

end A387251

/-! ## A387251.P1330983268017145472

`record[A062074(col(n))*col(n)]`
-/

namespace A387251.P1330983268017145472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062074 (SequenceMachineLib.triCol n) * (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387251.P1330983268017145472

namespace A387251

/-- `record[A062074(col(n))*col(n)]` -/
def P1330983268017145472.Spec : Prop :=
  ∀ n, P1330983268017145472.a n = A387251 n

end A387251

/-! ## A387251.P7594424518095378287

`A000290(A000290(n))/3^-n`
-/

namespace A387251.P7594424518095378287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A000290 n).toNat : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A387251.P7594424518095378287

namespace A387251

/-- `A000290(A000290(n))/3^-n` -/
def P7594424518095378287.Spec : Prop :=
  ∀ n, P7594424518095378287.a n = (A387251 n : ℚ)

end A387251

/-! ## A387251.P7260358180984342304

`A127960(n)²/A000244(n)`
-/

namespace A387251.P7260358180984342304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 n ^ 2 : ℚ) / (A000244 n : ℚ)

end

end A387251.P7260358180984342304

namespace A387251

/-- `A127960(n)²/A000244(n)` -/
def P7260358180984342304.Spec : Prop :=
  ∀ n, P7260358180984342304.a n = (A387251 n : ℚ)

end A387251

/-! ## A387251.P5306308700938008444

`(n*A062074(n))%A343808(2*(n+1))`
-/

namespace A387251.P5306308700938008444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A062074 n) (A343808 (2 * (n + 1)))

end

end A387251.P5306308700938008444

namespace A387251

/-- `(n*A062074(n))%A343808(2*(n+1))` -/
def P5306308700938008444.Spec : Prop :=
  ∀ n, P5306308700938008444.a n = A387251 n

end A387251

/-! ## A387251.P6158243523928229040

`sqrt(A001016(n)*A001019(n))`
-/

namespace A387251.P6158243523928229040
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001016 n * A001019 n : ℝ)

end

end A387251.P6158243523928229040

namespace A387251

/-- `sqrt(A001016(n)*A001019(n))` -/
def P6158243523928229040.Spec : Prop :=
  ∀ n, P6158243523928229040.a n = (A387251 n : ℝ)

end A387251

/-!
# A387253: First differences of cubefree taxi-cab numbers.

The programs for A387253, there is no canonical definition to state claims against.
-/

/-! ## A387253.P392135609503619907

`A272885(n+2)-A272885(n+1)`
-/

namespace A387253.P392135609503619907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272885 (n + 2) - A272885 (n + 1)

end

end A387253.P392135609503619907

/-! ## A387253.P15442454341516225441

`Δ[A272885(1+n)]`
-/

namespace A387253.P15442454341516225441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272885 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387253.P15442454341516225441

/-! ## A387253.P631812703660573308

`Δ[record[A272885(A137735(n))]]`
-/

namespace A387253.P631812703660573308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272885 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387253.P631812703660573308

/-! ## A387253.P11287284855504616291

`Δ[record[A272885(A112383(n))]]`
-/

namespace A387253.P11287284855504616291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272885 (A112383 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387253.P11287284855504616291

/-! ## A387253.P17672826190607092794

`Δ[∩[A001235(n+1), A293648(n+1)]]`
-/

namespace A387253.P17672826190607092794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293648 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A387253.P17672826190607092794

/-!
# A387254: Squares of numbers that are neither prime powers nor powerful.

The programs for A387254, the canonical program `A387254.P610551468953722195` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387254 has offset 1).

The definition of A387254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387254.P18294540076583509419

`A389065(1+n)²`
-/

namespace A387254.P18294540076583509419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (1 + n) ^ 2

end

end A387254.P18294540076583509419

namespace A387254

/-- `A389065(1+n)²` -/
def P18294540076583509419.Spec : Prop :=
  ∀ n, P18294540076583509419.a n = A387254 (n + 1)

end A387254

/-! ## A387254.P11361771536578214426

`A389065(n+1)^2`
-/

namespace A387254.P11361771536578214426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1) ^ 2

end

end A387254.P11361771536578214426

namespace A387254

/-- `A389065(n+1)^2` -/
def P11361771536578214426.Spec : Prop :=
  ∀ n, P11361771536578214426.a n = A387254 (n + 1)

end A387254

/-! ## A387254.P610551468953722195

`filter[A002808(1+n), A051904(#)]²`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387254

/-- `filter[A002808(1+n), A051904(#)]²` -/
def P610551468953722195.Spec : Prop :=
  ∀ n, P610551468953722195.a n = A387254 (n + 1)

theorem P610551468953722195.correct : P610551468953722195.Spec := by
  intro n
  simp only [A387254, Nat.add_sub_cancel]

end A387254

/-! ## A387254.P8317671600908980188

`filter[A052485(n+1), A005171(#)]²`
-/

namespace A387254.P8317671600908980188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n) ^ 2

end

end A387254.P8317671600908980188

namespace A387254

/-- `filter[A052485(n+1), A005171(#)]²` -/
def P8317671600908980188.Spec : Prop :=
  ∀ n, P8317671600908980188.a n = A387254 (n + 1)

end A387254

/-! ## A387254.P5535526163485431441

`eq[3, A389146(n)]²`
-/

namespace A387254.P5535526163485431441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A387254.P5535526163485431441

namespace A387254

/-- `eq[3, A389146(n)]²` -/
def P5535526163485431441.Spec : Prop :=
  ∀ n, (P5535526163485431441.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P5355481582320390204

`(lt[A384050(n+1), n]+1)²`
-/

namespace A387254.P5355481582320390204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384050 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A387254.P5355481582320390204

namespace A387254

/-- `(lt[A384050(n+1), n]+1)²` -/
def P5355481582320390204.Spec : Prop :=
  ∀ n, (P5355481582320390204.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P1666970677743599255

`A000290(A389065(n+1))`
-/

namespace A387254.P1666970677743599255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A389065 (n + 1)).toNat

end

end A387254.P1666970677743599255

namespace A387254

/-- `A000290(A389065(n+1))` -/
def P1666970677743599255.Spec : Prop :=
  ∀ n, P1666970677743599255.a n = A387254 (n + 1)

end A387254

/-! ## A387254.P2615511649419235332

`∩[A387256(1+n), n²]`
-/

namespace A387254.P2615511649419235332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A387254.P2615511649419235332

namespace A387254

/-- `∩[A387256(1+n), n²]` -/
def P2615511649419235332.Spec : Prop :=
  ∀ n, (P2615511649419235332.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P9162268688540045854

`∩[n*n, A387256(n+1)]`
-/

namespace A387254.P9162268688540045854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387254.P9162268688540045854

namespace A387254

/-- `∩[n*n, A387256(n+1)]` -/
def P9162268688540045854.Spec : Prop :=
  ∀ n, (P9162268688540045854.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P9701903990149696132

`∩[A062312(n+1), A325240(n+1)]`
-/

namespace A387254.P9701903990149696132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387254.P9701903990149696132

namespace A387254

/-- `∩[A062312(n+1), A325240(n+1)]` -/
def P9701903990149696132.Spec : Prop :=
  ∀ n, (P9701903990149696132.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P771765789471075287

`∩[A131605(n+1), A325240(n+1)]`
-/

namespace A387254.P771765789471075287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387254.P771765789471075287

namespace A387254

/-- `∩[A131605(n+1), A325240(n+1)]` -/
def P771765789471075287.Spec : Prop :=
  ∀ n, (P771765789471075287.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P8767981833665351254

`∩[A161753(n+1), A325240(n+1)]`
-/

namespace A387254.P8767981833665351254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387254.P8767981833665351254

namespace A387254

/-- `∩[A161753(n+1), A325240(n+1)]` -/
def P8767981833665351254.Spec : Prop :=
  ∀ n, (P8767981833665351254.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P3670999380293916909

`∩[A038109(n+1), A062312(n+1)]`
-/

namespace A387254.P3670999380293916909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387254.P3670999380293916909

namespace A387254

/-- `∩[A038109(n+1), A062312(n+1)]` -/
def P3670999380293916909.Spec : Prop :=
  ∀ n, (P3670999380293916909.a n : ℤ) = A387254 (n + 1)

end A387254

/-! ## A387254.P16571619779810122877

`∩[A038109(n+1), A131605(n+1)]`
-/

namespace A387254.P16571619779810122877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387254.P16571619779810122877

namespace A387254

/-- `∩[A038109(n+1), A131605(n+1)]` -/
def P16571619779810122877.Spec : Prop :=
  ∀ n, (P16571619779810122877.a n : ℤ) = A387254 (n + 1)

end A387254

/-!
# A387255: Cubefull powers k^m, m > 1, of composite numbers k that are not powerful.

The programs for A387255, there is no canonical definition to state claims against.
-/

/-! ## A387255.P10988458192166683630

`∪[A387257(n+1), A388304(n+1)]`
-/

namespace A387255.P10988458192166683630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387255.P10988458192166683630

/-! ## A387255.P11976362970600073568

`∩[A036966(n+1), A391416(n+1)]`
-/

namespace A387255.P11976362970600073568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387255.P11976362970600073568

/-! ## A387255.P11858989228602249320

`∩[A372695(n+1), A391416(n+1)]`
-/

namespace A387255.P11858989228602249320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387255.P11858989228602249320

/-! ## A387255.P40651855414643379

`∩[A131605(n+1), A372695(n+1)]`
-/

namespace A387255.P40651855414643379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387255.P40651855414643379

/-! ## A387255.P11116158554836966167

`∩[A372695(n+1), A377702(n+1)]`
-/

namespace A387255.P11116158554836966167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387255.P11116158554836966167

/-! ## A387255.P17651447036140783807

`∩[A001597(n+1), A372695(n+1)]`
-/

namespace A387255.P17651447036140783807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387255.P17651447036140783807

/-!
# A387256: Powerful numbers that are neither cubefull nor prime powers.

The programs for A387256, there is no canonical definition to state claims against.
-/

/-! ## A387256.P17715219219306986675

`∪[A177492(n+1), A389558(n+1)]`
-/

namespace A387256.P17715219219306986675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P17715219219306986675

/-! ## A387256.P11499400400853599353

`∪[A387254(n+1), A389558(n+1)]`
-/

namespace A387256.P11499400400853599353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P11499400400853599353

/-! ## A387256.P12506160510248056444

`∪[A387254(n+1), A390539(n+1)]`
-/

namespace A387256.P12506160510248056444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P12506160510248056444

/-! ## A387256.P6824835789617269741

`∩[A286708(n+1), A325240(n+1)]`
-/

namespace A387256.P6824835789617269741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P6824835789617269741

/-! ## A387256.P1362565909526241578

`∩[A325240(n+1), A370266(n+1)]`
-/

namespace A387256.P1362565909526241578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P1362565909526241578

/-! ## A387256.P6459507139404724580

`∩[A228957(n+1), A325240(n+1)]`
-/

namespace A387256.P6459507139404724580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P6459507139404724580

/-! ## A387256.P14760495883151173781

`∩[A325240(n+1), A389414(n+1)]`
-/

namespace A387256.P14760495883151173781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P14760495883151173781

/-! ## A387256.P4658896896056284531

`∩[A325240(n+1), A392380(n+1)]`
-/

namespace A387256.P4658896896056284531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P4658896896056284531

/-! ## A387256.P372975549791080974

`∩[A036785(n+1), A325240(n+1)]`
-/

namespace A387256.P372975549791080974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P372975549791080974

/-! ## A387256.P1573707905273984615

`∩[A082295(n+1), A325240(n+1)]`
-/

namespace A387256.P1573707905273984615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P1573707905273984615

/-! ## A387256.P8410681855408650144

`∩[A325240(n+1), A361098(n+1)]`
-/

namespace A387256.P8410681855408650144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P8410681855408650144

/-! ## A387256.P1383517661395865963

`∩[A325240(n+1), A398375(n+1)]`
-/

namespace A387256.P1383517661395865963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P1383517661395865963

/-! ## A387256.P10546879472247709907

`filter[A325240(n+1), A355447(#)]`
-/

namespace A387256.P10546879472247709907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A387256.P10546879472247709907

/-! ## A387256.P16582564021477936866

`filter[A325240(n+1), A379958(#)]`
-/

namespace A387256.P16582564021477936866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A387256.P16582564021477936866

/-! ## A387256.P1800311857350247016

`filter[A325240(n+1), A380454(#)]`
-/

namespace A387256.P1800311857350247016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A387256.P1800311857350247016

/-! ## A387256.P15344224278254929512

`filter[A325240(n+2), A354108(#)]`
-/

namespace A387256.P15344224278254929512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A387256.P15344224278254929512

/-! ## A387256.P18431239740081857142

`∩[A325240(n+1), A375397(n+1)]`
-/

namespace A387256.P18431239740081857142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P18431239740081857142

/-! ## A387256.P16282011521136836948

`∩[A048111(n+1), A325240(n+1)]`
-/

namespace A387256.P16282011521136836948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387256.P16282011521136836948

/-! ## A387256.P3558568988192729963

`filter[A325240(n+1), A065202(#)]`
-/

namespace A387256.P3558568988192729963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A387256.P3558568988192729963

/-! ## A387256.P961247683024447004

`filter[A325240(n+1), A353625(#)]`
-/

namespace A387256.P961247683024447004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A387256.P961247683024447004

/-!
# A387257: Cubefull powers k^m, m > 1, such that k is neither squarefree nor perfect power.

The programs for A387257, there is no canonical definition to state claims against.
-/

/-! ## A387257.P485719000209168263

`∪[A383394(n+1), A388549(n+1)]`
-/

namespace A387257.P485719000209168263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P485719000209168263

/-! ## A387257.P3180881696169395358

`∩[A387255(n+1), A389551(n+1)]`
-/

namespace A387257.P3180881696169395358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P3180881696169395358

/-! ## A387257.P11793037543290193974

`∩[A036966(n+1), A389864(n+1)]`
-/

namespace A387257.P11793037543290193974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P11793037543290193974

/-! ## A387257.P10558015856204250481

`∩[A372695(n+1), A389864(n+1)]`
-/

namespace A387257.P10558015856204250481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P10558015856204250481

/-! ## A387257.P6978275726629165266

`∩[A387255(n+1), A389864(n+1)]`
-/

namespace A387257.P6978275726629165266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P6978275726629165266

/-! ## A387257.P10290760454214968986

`∩[A389551(n+1), A389864(n+1)]`
-/

namespace A387257.P10290760454214968986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P10290760454214968986

/-! ## A387257.P4134768371594935445

`∩[A366854(n+1), A389551(n+1)]`
-/

namespace A387257.P4134768371594935445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P4134768371594935445

/-! ## A387257.P16129458679978988160

`∩[A389551(n+1), A391416(n+1)]`
-/

namespace A387257.P16129458679978988160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P16129458679978988160

/-! ## A387257.P8573786163224998327

`∩[A131605(n+1), A389551(n+1)]`
-/

namespace A387257.P8573786163224998327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P8573786163224998327

/-! ## A387257.P16177230737276401085

`∩[A377702(n+1), A389551(n+1)]`
-/

namespace A387257.P16177230737276401085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P16177230737276401085

/-! ## A387257.P15324109553900378900

`∩[A001597(n+1), A389551(n+1)]`
-/

namespace A387257.P15324109553900378900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P15324109553900378900

/-! ## A387257.P6202082543319205620

`∩[A359280(n+1), A387255(n+1)]`
-/

namespace A387257.P6202082543319205620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387257.P6202082543319205620

/-!
# A387258: Lesser of sexy happy primes.

The programs for A387258, there is no canonical definition to state claims against.
-/

/-! ## A387258.P10622250007567674976

`A263770(A196423(n+2))`
-/

namespace A387258.P10622250007567674976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263770 (A196423 (n + 2)).toNat

end

end A387258.P10622250007567674976

/-!
# A387259: Number of unordered pairs of partitions of n with the same number of parts.

The programs for A387259, there is no canonical definition to state claims against.
-/

/-! ## A387259.P6520924939501210623

`A380126(n)-A380124(n)`
-/

namespace A387259.P6520924939501210623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380126 n - A380124 n

end

end A387259.P6520924939501210623

/-! ## A387259.P13986674970272634247

`(A238312(n)+A000041(n))/2`
-/

namespace A387259.P13986674970272634247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238312 n + A000041 n : ℚ) / 2

end

end A387259.P13986674970272634247

/-! ## A387259.P2807483904021787378

`A238312(n)+A380126(n)-A380125(n)`
-/

namespace A387259.P2807483904021787378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238312 n + (A380126 n - A380125 n)

end

end A387259.P2807483904021787378

/-! ## A387259.P14961972307854988510

`A003602(A000041(n)-1+A238312(n))`
-/

namespace A387259.P14961972307854988510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A000041 n - 1 + A238312 n).toNat

end

end A387259.P14961972307854988510

/-! ## A387259.P3634092461216287469

`A124762(A000013(n+1))+A100196(A319765(n))`
-/

namespace A387259.P3634092461216287469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A000013 (n + 1)).toNat + A100196 (A319765 n).toNat

end

end A387259.P3634092461216287469

/-!
# A387263: Partial sums of A247287.

The programs for A387263, the canonical program `A387263.P7341233109122044462` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387263 has offset 0).

The definition of A387263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387263.P7341233109122044462

`a(n-2)-(n+1)+A383527(n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387263

/-- `a(n-2)-(n+1)+A383527(n)` -/
def P7341233109122044462.Spec : Prop :=
  ∀ n, P7341233109122044462.a n = A387263 n

theorem P7341233109122044462.correct : P7341233109122044462.Spec := by
  intro n
  simp only [A387263]

end A387263

/-! ## A387263.P10620151256735796331

`(A385641(n)-C(n+2, 2))/2`
-/

namespace A387263.P10620151256735796331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385641 n - (Nat.choose (n + 2) 2 : ℤ) : ℚ) / 2

end

end A387263.P10620151256735796331

namespace A387263

/-- `(A385641(n)-C(n+2, 2))/2` -/
def P10620151256735796331.Spec : Prop :=
  ∀ n, P10620151256735796331.a n = (A387263 n : ℚ)

end A387263

/-! ## A387263.P8107673119136257626

`(∑{#}[n, (n-#+1)*A002426(#)-#]-(n+1))/2`
-/

namespace A387263.P8107673119136257626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), (((n : ℤ) - (k : ℤ) + 1) * A002426 k - (k : ℤ)) - (n + 1 : ℤ) : ℤ) : ℚ) / 2

end

end A387263.P8107673119136257626

namespace A387263

/-- `(∑{#}[n, (n-#+1)*A002426(#)-#]-(n+1))/2` -/
def P8107673119136257626.Spec : Prop :=
  ∀ n, P8107673119136257626.a n = (A387263 n : ℚ)

end A387263

/-! ## A387263.P13805610664829820093

`∑{#}[n, A391467(C(n+1, 2)+#)]`
-/

namespace A387263.P13805610664829820093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391467 (Nat.choose (n + 1) 2 + k)

end

end A387263.P13805610664829820093

namespace A387263

/-- `∑{#}[n, A391467(C(n+1, 2)+#)]` -/
def P13805610664829820093.Spec : Prop :=
  ∀ n, P13805610664829820093.a n = A387263 n

end A387263

/-! ## A387263.P12544637405152836524

`∑[A247287(n)]`
-/

namespace A387263.P12544637405152836524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387263.P12544637405152836524

namespace A387263

/-- `∑[A247287(n)]` -/
def P12544637405152836524.Spec : Prop :=
  ∀ n, P12544637405152836524.a n = A387263 n

end A387263

/-! ## A387263.P4562399059866161436

`∑[∑[A097861(n)]]`
-/

namespace A387263.P4562399059866161436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387263.P4562399059866161436

namespace A387263

/-- `∑[∑[A097861(n)]]` -/
def P4562399059866161436.Spec : Prop :=
  ∀ n, P4562399059866161436.a n = A387263 n

end A387263

/-! ## A387263.P11922401767407916993

`∑[∑[A257520(n)-1]]`
-/

namespace A387263.P11922401767407916993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387263.P11922401767407916993

namespace A387263

/-- `∑[∑[A257520(n)-1]]` -/
def P11922401767407916993.Spec : Prop :=
  ∀ n, P11922401767407916993.a n = A387263 n

end A387263

/-! ## A387263.P5013811118907640763

`∑[∑[∑[(n-1)*A086246(n)]]]`
-/

namespace A387263.P5013811118907640763
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A086246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387263.P5013811118907640763

namespace A387263

/-- `∑[∑[∑[(n-1)*A086246(n)]]]` -/
def P5013811118907640763.Spec : Prop :=
  ∀ n, P5013811118907640763.a n = A387263 n

end A387263

/-!
# A387264: Expansion of e.g.f. exp(x^3/(1-x)^4).

The programs for A387264, there is no canonical definition to state claims against.
-/

/-! ## A387264.P2491240534138256318

`A385903(n)+A000122(A024023(n))`
-/

namespace A387264.P2491240534138256318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385903 n + A000122 (A024023 n).toNat

end

end A387264.P2491240534138256318

/-! ## A387264.P2204853869777943407

`A388073(A133647(n))+A385903(n)`
-/

namespace A387264.P2204853869777943407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 (A133647 n).toNat + A385903 n

end

end A387264.P2204853869777943407

/-! ## A387264.P1973737332310507287

`A385903(n)+A010054(A384832(n+1))`
-/

namespace A387264.P1973737332310507287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385903 n + A010054 (A384832 (n + 1)).toNat

end

end A387264.P1973737332310507287

/-! ## A387264.P2575736474060194230

`A385903(n)+A176723(A001318(2*n))`
-/

namespace A387264.P2575736474060194230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385903 n + A176723 (A001318 (2 * n)).toNat

end

end A387264.P2575736474060194230

/-! ## A387264.P14961908403203339688

`A385903(n)+A008683(A186949(2*n))`
-/

namespace A387264.P14961908403203339688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385903 n + A008683 (A186949 (2 * n)).toNat

end

end A387264.P14961908403203339688

/-!
# A387265: Rectangular array (d(n,k)) read by falling antidiagonals: d(n,k)= denominator of q(n,k) in the array U(1), defined in Comments.

The programs for A387265, there is no canonical definition to state claims against.
-/

/-! ## A387265.P5995023374010674016

`A151800(A387266(n+1))`
-/

namespace A387265.P5995023374010674016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A387266 (n + 1)).toNat

end

end A387265.P5995023374010674016

/-! ## A387265.P8229034396923163276

`A003961(A387266(n+1))`
-/

namespace A387265.P8229034396923163276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A387266 (n + 1)).toNat

end

end A387265.P8229034396923163276

/-! ## A387265.P8164284011089036743

`A324886(A387266(n+1)+A243834(n))`
-/

namespace A387265.P8164284011089036743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A387266 (n + 1) + A243834 n).toNat

end

end A387265.P8164284011089036743

/-! ## A387265.P12033049747942153171

`A324886(A387266(n+1)%A053108(n+1))`
-/

namespace A387265.P12033049747942153171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (Int.tmod (A387266 (n + 1)) (A053108 (n + 1))).toNat

end

end A387265.P12033049747942153171

/-! ## A387265.P15062302440635180099

`A324886(A387266(n+1))%A256080(n+1)`
-/

namespace A387265.P15062302440635180099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324886 (A387266 (n + 1)).toNat) (A256080 (n + 1))

end

end A387265.P15062302440635180099

/-!
# A387266: Rectangular array (d(n,k)) read by falling antidiagonals: d(n,k) is the denominator array of q(n,k) in the array V(1), defined in Comments.

The programs for A387266, there is no canonical definition to state claims against.
-/

/-! ## A387266.P3376635753980762415

`A064989(A387265(1+n))`
-/

namespace A387266.P3376635753980762415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A387265 (1 + n)).toNat

end

end A387266.P3376635753980762415

/-!
# A387267: Number of dissections of a convex n-gon into quadrilaterals and pentagons by strictly disjoint diagonals.

The programs for A387267, there is no canonical definition to state claims against.
-/

/-! ## A387267.P18414889888412703105

`A327193(A000225(n)*A005424(n+1))`
-/

namespace A387267.P18414889888412703105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A000225 n * A005424 (n + 1)).toNat

end

end A387267.P18414889888412703105

/-!
# A387269: Numbers whose binary expansion consists of alternating runs of 1's and 0's where each run of 0's is exactly one longer than the preceding run of 1's, and the expansion ends with a 0-run.

The programs for A387269, there is no canonical definition to state claims against.
-/

/-! ## A387269.P9980334069313133739

`A213370(A387270(n+1))`
-/

namespace A387269.P9980334069313133739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (A387270 (n + 1)).toNat

end

end A387269.P9980334069313133739

/-! ## A387269.P6624920476585515016

`A166404(A387270(n+1))`
-/

namespace A387269.P6624920476585515016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A387270 (n + 1)).toNat

end

end A387269.P6624920476585515016

/-! ## A387269.P14891901291586219932

`A048735(2*A387270(n+1))`
-/

namespace A387269.P14891901291586219932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (2 * A387270 (n + 1)).toNat

end

end A387269.P14891901291586219932

/-!
# A387270: Numbers whose binary expansion consists of alternating runs of 1's and 0's where each run of 0's is exactly one shorter than the preceding run of 1's, and the expansion ends with a 0-run.

The programs for A387270, there is no canonical definition to state claims against.
-/

/-! ## A387270.P810155207626538618

`A166404(A387269(1+n))`
-/

namespace A387270.P810155207626538618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166404 (A387269 (1 + n)).toNat

end

end A387270.P810155207626538618

/-! ## A387270.P8770100799053065689

`A163617(A387269(n+1)/2)`
-/

namespace A387270.P8770100799053065689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (SequenceMachineLib.roundAway ((A387269 (n + 1) : ℚ) / 2)).toNat

end

end A387270.P8770100799053065689

/-!
# A387271: Positive integers whose ternary expansion has equal run-length multisets for digits 1 and 2.

The programs for A387271, there is no canonical definition to state claims against.
-/

/-! ## A387271.P10889093733704812922

`A039001(A000005(3^n)+1)`
-/

namespace A387271.P10889093733704812922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (A000005 (3 ^ n) + 1).toNat

end

end A387271.P10889093733704812922

/-! ## A387271.P10507182592330170803

`A039001(n+2)%A065118(n)`
-/

namespace A387271.P10507182592330170803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039001 (n + 2)) (A065118 n)

end

end A387271.P10507182592330170803

/-! ## A387271.P9569054927465417348

`A039001(A285801(n+2)^A345000(2*n+3))`
-/

namespace A387271.P9569054927465417348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039001 (SequenceMachineLib.roundAway ((A285801 (n + 2) : ℚ) ^ (A345000 (2 * n + 3) : ℤ))).toNat

end

end A387271.P9569054927465417348

/-!
# A387272: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n+2,k+2) * binomial(2*k+4,k+4).

The programs for A387272, the canonical program `A387272.P17600612268054563781` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387272 has offset 0).

The definition of A387272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387272.P17600612268054563781

`∑{#}[n, 2^(n-#)*C(n+2, #+2)*C(2*#+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387272

/-- `∑{#}[n, 2^(n-#)*C(n+2, #+2)*C(2*#+4, #)]` -/
def P17600612268054563781.Spec : Prop :=
  ∀ n, P17600612268054563781.a n = (A387272 n : ℚ)

end A387272

/-! ## A387272.P1153853174390191763

`∑{#}[n, 2^(n-#)*C(n+2, #+2)*C(2*#+4, #+4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387272.P1153853174390191763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 2) (k + 2) : ℚ) * (Nat.choose (2 * k + 4) (k + 4) : ℚ)

end

end A387272.P1153853174390191763

namespace A387272

/-- `∑{#}[n, 2^(n-#)*C(n+2, #+2)*C(2*#+4, #+4)]` -/
def P1153853174390191763.Spec : Prop :=
  ∀ n, P1153853174390191763.a n = (A387272 n : ℚ)

end A387272

/-! ## A387272.P361320114708603514

`A081671(2+n)-A005572(n+2)`
-/

namespace A387272.P361320114708603514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 (2 + n) - A005572 (n + 2)

end

end A387272.P361320114708603514

namespace A387272

/-- `A081671(2+n)-A005572(n+2)` -/
def P361320114708603514.Spec : Prop :=
  ∀ n, P361320114708603514.a n = A387272 n

end A387272

/-! ## A387272.P14249928684583830574

`A272867(A028552(n+1))`
-/

namespace A387272.P14249928684583830574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272867 (A028552 (n + 1)).toNat

end

end A387272.P14249928684583830574

namespace A387272

/-- `A272867(A028552(n+1))` -/
def P14249928684583830574.Spec : Prop :=
  ∀ n, P14249928684583830574.a n = A387272 n

end A387272

/-! ## A387272.P18057152062277804535

`A272867(A217748(n+4))`
-/

namespace A387272.P18057152062277804535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272867 (A217748 (n + 4)).toNat

end

end A387272.P18057152062277804535

namespace A387272

/-- `A272867(A217748(n+4))` -/
def P18057152062277804535.Spec : Prop :=
  ∀ n, P18057152062277804535.a n = A387272 n

end A387272

/-!
# A387273: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n+3,k+3) * binomial(2*k+6,k+6).

The programs for A387273, the canonical program `A387273.P3874794759900342417` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387273 has offset 0).

The definition of A387273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387273.P3874794759900342417

`∑{#}[n, 2^(n-#)*C(n+3, #+3)*C(2*#+6, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387273

/-- `∑{#}[n, 2^(n-#)*C(n+3, #+3)*C(2*#+6, #)]` -/
def P3874794759900342417.Spec : Prop :=
  ∀ n, P3874794759900342417.a n = (A387273 n : ℚ)

end A387273

/-! ## A387273.P9109289204843042882

`∑{#}[n, 2^(n-#)*C(n+3, #+3)*C(2*#+6, #+6)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387273.P9109289204843042882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 3) (k + 3) : ℚ) * (Nat.choose (2 * k + 6) (k + 6) : ℚ)

end

end A387273.P9109289204843042882

namespace A387273

/-- `∑{#}[n, 2^(n-#)*C(n+3, #+3)*C(2*#+6, #+6)]` -/
def P9109289204843042882.Spec : Prop :=
  ∀ n, P9109289204843042882.a n = (A387273 n : ℚ)

end A387273

/-!
# A387274: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n+4,k+4) * binomial(2*k+8,k+8).

The programs for A387274, the canonical program `A387274.P13671176549954873787` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387274 has offset 0).

The definition of A387274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387274.P13671176549954873787

`∑{#}[n, 2^(n-#)*C(n+4, #+4)*C(2*#+8, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387274

/-- `∑{#}[n, 2^(n-#)*C(n+4, #+4)*C(2*#+8, #)]` -/
def P13671176549954873787.Spec : Prop :=
  ∀ n, P13671176549954873787.a n = (A387274 n : ℚ)

end A387274

/-! ## A387274.P14744317794413736222

`∑{#}[n, 2^(n-#)*C(n+4, #+4)*C(2*#+8, #+8)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387274.P14744317794413736222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 4) (k + 4) : ℚ) * (Nat.choose (2 * k + 8) (k + 8) : ℚ)

end

end A387274.P14744317794413736222

namespace A387274

/-- `∑{#}[n, 2^(n-#)*C(n+4, #+4)*C(2*#+8, #+8)]` -/
def P14744317794413736222.Spec : Prop :=
  ∀ n, P14744317794413736222.a n = (A387274 n : ℚ)

end A387274

/-!
# A387275: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n+2,k+2) * binomial(2*k+4,k+4).

The programs for A387275, the canonical program `A387275.P7717052809318935915` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387275 has offset 0).

The definition of A387275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387275.P7717052809318935915

`∑{#}[n, 3^(n-#)*C(n+2, #+2)*C(2*#+4, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387275

/-- `∑{#}[n, 3^(n-#)*C(n+2, #+2)*C(2*#+4, #)]` -/
def P7717052809318935915.Spec : Prop :=
  ∀ n, P7717052809318935915.a n = (A387275 n : ℚ)

end A387275

/-! ## A387275.P13073975541192388361

`∑{#}[n, 3^(n-#)*C(n+2, #+2)*C(2*#+4, #+4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387275.P13073975541192388361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 2) (k + 2) : ℚ) * (Nat.choose (2 * k + 4) (k + 4) : ℚ)

end

end A387275.P13073975541192388361

namespace A387275

/-- `∑{#}[n, 3^(n-#)*C(n+2, #+2)*C(2*#+4, #+4)]` -/
def P13073975541192388361.Spec : Prop :=
  ∀ n, P13073975541192388361.a n = (A387275 n : ℚ)

end A387275

/-!
# A387276: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n+3,k+3) * binomial(2*k+6,k+6).

The programs for A387276, the canonical program `A387276.P14510471117205084937` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387276 has offset 0).

The definition of A387276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387276.P14510471117205084937

`∑{#}[n, 3^(n-#)*C(n+3, #+3)*C(2*#+6, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387276

/-- `∑{#}[n, 3^(n-#)*C(n+3, #+3)*C(2*#+6, #)]` -/
def P14510471117205084937.Spec : Prop :=
  ∀ n, P14510471117205084937.a n = (A387276 n : ℚ)

end A387276

/-! ## A387276.P15468044944697005153

`∑{#}[n, 3^(n-#)*C(n+3, #+3)*C(2*#+6, #+6)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387276.P15468044944697005153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 3) (k + 3) : ℚ) * (Nat.choose (2 * k + 6) (k + 6) : ℚ)

end

end A387276.P15468044944697005153

namespace A387276

/-- `∑{#}[n, 3^(n-#)*C(n+3, #+3)*C(2*#+6, #+6)]` -/
def P15468044944697005153.Spec : Prop :=
  ∀ n, P15468044944697005153.a n = (A387276 n : ℚ)

end A387276

/-! ## A387276.P5778724816786629436

`A028032(n)-A241467(A391052(n))`
-/

namespace A387276.P5778724816786629436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028032 n - A241467 (A391052 n).toNat

end

end A387276.P5778724816786629436

namespace A387276

/-- `A028032(n)-A241467(A391052(n))` -/
def P5778724816786629436.Spec : Prop :=
  ∀ n, P5778724816786629436.a n = A387276 n

end A387276

/-!
# A387277: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n+4,k+4) * binomial(2*k+8,k+8).

The programs for A387277, the canonical program `A387277.P5039938427119566175` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387277 has offset 0).

The definition of A387277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387277.P5039938427119566175

`∑{#}[n, 3^(n-#)*C(n+4, #+4)*C(2*#+8, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387277

/-- `∑{#}[n, 3^(n-#)*C(n+4, #+4)*C(2*#+8, #)]` -/
def P5039938427119566175.Spec : Prop :=
  ∀ n, P5039938427119566175.a n = (A387277 n : ℚ)

end A387277

/-! ## A387277.P15336462698407105222

`∑{#}[n, 3^(n-#)*C(n+4, #+4)*C(2*#+8, #+8)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387277.P15336462698407105222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 4) (k + 4) : ℚ) * (Nat.choose (2 * k + 8) (k + 8) : ℚ)

end

end A387277.P15336462698407105222

namespace A387277

/-- `∑{#}[n, 3^(n-#)*C(n+4, #+4)*C(2*#+8, #+8)]` -/
def P15336462698407105222.Spec : Prop :=
  ∀ n, P15336462698407105222.a n = (A387277 n : ℚ)

end A387277

/-!
# A387278: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n+1,k+1) * binomial(2*k+2,k+2).

The programs for A387278, the canonical program `A387278.P7616852590176473750` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387278 has offset 0).

The definition of A387278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387278.P7616852590176473750

`∑{#}[n, 3^(n-#)*C(n+1, #+1)*C(2*#+2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387278

/-- `∑{#}[n, 3^(n-#)*C(n+1, #+1)*C(2*#+2, #)]` -/
def P7616852590176473750.Spec : Prop :=
  ∀ n, P7616852590176473750.a n = (A387278 n : ℚ)

end A387278

/-! ## A387278.P16690616154539694177

`∑{#}[n, 3^(n-#)*C(n+1, #+1)*C(2*#+2, #+2)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387278.P16690616154539694177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) (k + 1) : ℚ) * (Nat.choose (2 * k + 2) (k + 2) : ℚ)

end

end A387278.P16690616154539694177

namespace A387278

/-- `∑{#}[n, 3^(n-#)*C(n+1, #+1)*C(2*#+2, #+2)]` -/
def P16690616154539694177.Spec : Prop :=
  ∀ n, P16690616154539694177.a n = (A387278 n : ℚ)

end A387278

/-! ## A387278.P15192920189958723784

`(1+n)*A182401(n)`
-/

namespace A387278.P15192920189958723784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A182401 n

end

end A387278.P15192920189958723784

namespace A387278

/-- `(1+n)*A182401(n)` -/
def P15192920189958723784.Spec : Prop :=
  ∀ n, P15192920189958723784.a n = A387278 n

end A387278

/-! ## A387278.P10317742664414978386

`(n+1)*A125906(∑[n])`
-/

namespace A387278.P10317742664414978386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A125906 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387278.P10317742664414978386

namespace A387278

/-- `(n+1)*A125906(∑[n])` -/
def P10317742664414978386.Spec : Prop :=
  ∀ n, P10317742664414978386.a n = A387278 n

end A387278

/-! ## A387278.P17332687640342063534

`∑{#}[n+1, C(n+1, #)*A344055(#)]`
-/

namespace A387278.P17332687640342063534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A344055 k

end

end A387278.P17332687640342063534

namespace A387278

/-- `∑{#}[n+1, C(n+1, #)*A344055(#)]` -/
def P17332687640342063534.Spec : Prop :=
  ∀ n, P17332687640342063534.a n = A387278 n

end A387278

/-! ## A387278.P2885618722046230519

`record[A010766(n+1)*A125906(n)]`
-/

namespace A387278.P2885618722046230519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A125906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387278.P2885618722046230519

namespace A387278

/-- `record[A010766(n+1)*A125906(n)]` -/
def P2885618722046230519.Spec : Prop :=
  ∀ n, P2885618722046230519.a n = A387278 n

end A387278

/-!
# A387279: Inverse Möbius transform of A006530.

The programs for A387279, the canonical program `A387279.P14968820305295738344` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387279 has offset 1).

The definition of A387279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387279.P14968820305295738344

`∑{d}[n+1, A006530(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A387279

/-- `∑{d}[n+1, A006530(#)]` -/
def P14968820305295738344.Spec : Prop :=
  ∀ n, P14968820305295738344.a n = A387279 (n + 1)

theorem P14968820305295738344.correct : P14968820305295738344.Spec := by
  intro n
  simp only [A387279, Nat.add_sub_cancel]

end A387279

/-! ## A387279.P5109507574572791387

`∑{d}[A003961(n+1), A117364(#)]`
-/

namespace A387279.P5109507574572791387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117364 d

end

end A387279.P5109507574572791387

namespace A387279

/-- `∑{d}[A003961(n+1), A117364(#)]` -/
def P5109507574572791387.Spec : Prop :=
  ∀ n, P5109507574572791387.a n = A387279 (n + 1)

end A387279

/-! ## A387279.P16941124252545578211

`∑{d}[∑{d}[n+1, A003972(#)], A117364(#)]`
-/

namespace A387279.P16941124252545578211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A003972 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117364 d

end

end A387279.P16941124252545578211

namespace A387279

/-- `∑{d}[∑{d}[n+1, A003972(#)], A117364(#)]` -/
def P16941124252545578211.Spec : Prop :=
  ∀ n, P16941124252545578211.a n = A387279 (n + 1)

end A387279

/-! ## A387279.P9139225684777398666

`∑{d}[2*A108228(n+1)+1, A117364(#)]`
-/

namespace A387279.P9139225684777398666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108228 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117364 d

end

end A387279.P9139225684777398666

namespace A387279

/-- `∑{d}[2*A108228(n+1)+1, A117364(#)]` -/
def P9139225684777398666.Spec : Prop :=
  ∀ n, P9139225684777398666.a n = A387279 (n + 1)

end A387279

/-! ## A387279.P12255419092052489964

`∑{d}[A045965(n+1)/A054977(n), A117364(#)]`
-/

namespace A387279.P12255419092052489964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045965 (n + 1) : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A117364 d

end

end A387279.P12255419092052489964

namespace A387279

/-- `∑{d}[A045965(n+1)/A054977(n), A117364(#)]` -/
def P12255419092052489964.Spec : Prop :=
  ∀ n, P12255419092052489964.a n = A387279 (n + 1)

end A387279

/-! ## A387279.P17157507178835295910

`∑{d}[A344587(n+1)+A336851(n+1), A117364(#)]`
-/

namespace A387279.P17157507178835295910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A336851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117364 d

end

end A387279.P17157507178835295910

namespace A387279

/-- `∑{d}[A344587(n+1)+A336851(n+1), A117364(#)]` -/
def P17157507178835295910.Spec : Prop :=
  ∀ n, P17157507178835295910.a n = A387279 (n + 1)

end A387279

/-! ## A387279.P6044538685905766083

`∑{d}[A003973(n+1)-A336851(n+1), A117364(#)]`
-/

namespace A387279.P6044538685905766083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A117364 d

end

end A387279.P6044538685905766083

namespace A387279

/-- `∑{d}[A003973(n+1)-A336851(n+1), A117364(#)]` -/
def P6044538685905766083.Spec : Prop :=
  ∀ n, P6044538685905766083.a n = A387279 (n + 1)

end A387279

/-!
# A387280: Expansion of 1/((1-2*x) * (1-6*x))^(5/2).

The programs for A387280, the canonical program `A387280.P6599556173688428075` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387280 has offset 0).

The definition of A387280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387280.P6599556173688428075

`C(n+4, 2)/6*A387272(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387280

/-- `C(n+4, 2)/6*A387272(n)` -/
def P6599556173688428075.Spec : Prop :=
  ∀ n, P6599556173688428075.a n = (A387280 n : ℚ)

end A387280

/-!
# A387281: Expansion of 1/((1-2*x) * (1-6*x))^(7/2).

The programs for A387281, the canonical program `A387281.P17144847056270702863` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387281 has offset 0).

The definition of A387281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387281.P17144847056270702863

`C(n+6, 3)/20*A387273(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387281

/-- `C(n+6, 3)/20*A387273(n)` -/
def P17144847056270702863.Spec : Prop :=
  ∀ n, P17144847056270702863.a n = (A387281 n : ℚ)

end A387281

/-!
# A387282: Expansion of 1/((1-2*x) * (1-6*x))^(9/2).

The programs for A387282, the canonical program `A387282.P15958896053585105479` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387282 has offset 0).

The definition of A387282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387282.P15958896053585105479

`C(n+8, 4)/70*A387274(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387282

/-- `C(n+8, 4)/70*A387274(n)` -/
def P15958896053585105479.Spec : Prop :=
  ∀ n, P15958896053585105479.a n = (A387282 n : ℚ)

end A387282

/-!
# A387283: Expansion of 1/((1-3*x) * (1-7*x))^(5/2).

The programs for A387283, the canonical program `A387283.P3729374584424355958` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387283 has offset 0).

The definition of A387283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387283.P3729374584424355958

`C(n+4, 2)/6*A387275(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387283

/-- `C(n+4, 2)/6*A387275(n)` -/
def P3729374584424355958.Spec : Prop :=
  ∀ n, P3729374584424355958.a n = (A387283 n : ℚ)

end A387283

/-!
# A387284: Expansion of 1/((1-3*x) * (1-7*x))^(7/2).

The programs for A387284, the canonical program `A387284.P8024694283845203984` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387284 has offset 0).

The definition of A387284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387284.P8024694283845203984

`C(n+6, 3)/20*A387276(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387284

/-- `C(n+6, 3)/20*A387276(n)` -/
def P8024694283845203984.Spec : Prop :=
  ∀ n, P8024694283845203984.a n = (A387284 n : ℚ)

end A387284

/-! ## A387284.P6976025213455445967

`A387238(n)/A387239(n)*A387276(n)`
-/

namespace A387284.P6976025213455445967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387238 n : ℚ) / (A387239 n : ℚ) * (A387276 n : ℚ)

end

end A387284.P6976025213455445967

namespace A387284

/-- `A387238(n)/A387239(n)*A387276(n)` -/
def P6976025213455445967.Spec : Prop :=
  ∀ n, P6976025213455445967.a n = (A387284 n : ℚ)

end A387284

/-!
# A387285: Expansion of 1/((1-3*x) * (1-7*x))^(9/2).

The programs for A387285, the canonical program `A387285.P3765056577454848147` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387285 has offset 0).

The definition of A387285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387285.P3765056577454848147

`C(n+8, 4)/70*A387277(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387285

/-- `C(n+8, 4)/70*A387277(n)` -/
def P3765056577454848147.Spec : Prop :=
  ∀ n, P3765056577454848147.a n = (A387285 n : ℚ)

end A387285

/-!
# A387286: Number of 2 X 2 square tiles in a discrete 4-dimensional hypercube of side length n.

The programs for A387286, the canonical program `A387286.P8488198872043102979` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387286 has offset 1).

The definition of A387286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387286.P8488198872043102979

`n²*(3*(n+1)²+2*(n+1))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387286

/-- `n²*(3*(n+1)²+2*(n+1))` -/
def P8488198872043102979.Spec : Prop :=
  ∀ n, (P8488198872043102979.a n : ℤ) = A387286 (n + 1)

theorem P8488198872043102979.correct : P8488198872043102979.Spec := by
  intro n
  simp only [A387286, Nat.add_sub_cancel]

end A387286

/-! ## A387286.P14060926461629944514

`∑[6+a(n-1)]*n²` with `a(0)=5`
-/

namespace A387286.P14060926461629944514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  6 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * n ^ 2

end

end A387286.P14060926461629944514

namespace A387286

/-- `∑[6+a(n-1)]*n²` -/
def P14060926461629944514.Spec : Prop :=
  ∀ n, (P14060926461629944514.a n : ℤ) = A387286 (n + 1)

end A387286

/-! ## A387286.P17722552064317754368

`∑[a(n-1)+6]*n*n` with `a(0)=5`
-/

namespace A387286.P17722552064317754368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * n * n

end

end A387286.P17722552064317754368

namespace A387286

/-- `∑[a(n-1)+6]*n*n` -/
def P17722552064317754368.Spec : Prop :=
  ∀ n, (P17722552064317754368.a n : ℤ) = A387286 (n + 1)

end A387286

/-! ## A387286.P2680593879812701584

`(∑[4*n]-C(n, 2))*∑[4*n]`
-/

namespace A387286.P2680593879812701584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A387286.P2680593879812701584

namespace A387286

/-- `(∑[4*n]-C(n, 2))*∑[4*n]` -/
def P2680593879812701584.Spec : Prop :=
  ∀ n, P2680593879812701584.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P5413958840602492414

`A011379(n)+A011379(n)*A016777(n+1)`
-/

namespace A387286.P5413958840602492414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + A011379 n * A016777 (n + 1)

end

end A387286.P5413958840602492414

namespace A387286

/-- `A011379(n)+A011379(n)*A016777(n+1)` -/
def P5413958840602492414.Spec : Prop :=
  ∀ n, P5413958840602492414.a n = A387286 (n + 1)

theorem P5413958840602492414.correct : P5413958840602492414.Spec := by
  intro n
  simp only [A387286, Nat.add_sub_cancel, A387286.P5413958840602492414.a, A387286.P8488198872043102979.a, A011379, A011379.P13170028565952122956.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387286

/-! ## A387286.P7959461939163507627

`A046092(n)+A000326(n)*A046092(n+1)`
-/

namespace A387286.P7959461939163507627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A000326 n * A046092 (n + 1)

end

end A387286.P7959461939163507627

namespace A387286

/-- `A046092(n)+A000326(n)*A046092(n+1)` -/
def P7959461939163507627.Spec : Prop :=
  ∀ n, P7959461939163507627.a n = A387286 (n + 1)

theorem P7959461939163507627.correct : P7959461939163507627.Spec := by
  intro n
  simp only [A387286, Nat.add_sub_cancel, A387286.P7959461939163507627.a, A387286.P8488198872043102979.a, A000326, A000326.P15785277619453972366.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A387286

/-! ## A387286.P6767736418137718682

`A172225(n+1)+A384288(n)+A172225(n+1)`
-/

namespace A387286.P6767736418137718682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (n + 1) + (A384288 n + A172225 (n + 1))

end

end A387286.P6767736418137718682

namespace A387286

/-- `A172225(n+1)+A384288(n)+A172225(n+1)` -/
def P6767736418137718682.Spec : Prop :=
  ∀ n, P6767736418137718682.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P16470510005626465059

`n²+n²*A270710(n+1)`
-/

namespace A387286.P16470510005626465059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n ^ 2 : ℤ) * A270710 (n + 1)

end

end A387286.P16470510005626465059

namespace A387286

/-- `n²+n²*A270710(n+1)` -/
def P16470510005626465059.Spec : Prop :=
  ∀ n, P16470510005626465059.a n = A387286 (n + 1)

theorem P16470510005626465059.correct : P16470510005626465059.Spec := by
  intro n
  simp only [A387286, Nat.add_sub_cancel, A387286.P16470510005626465059.a, A387286.P8488198872043102979.a, A270710, A270710.P7193795266762276404.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387286

/-! ## A387286.P686552024079895885

`n²*A056109(n+1)-n²`
-/

namespace A387286.P686552024079895885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A056109 (n + 1) - (n ^ 2 : ℤ)

end

end A387286.P686552024079895885

namespace A387286

/-- `n²*A056109(n+1)-n²` -/
def P686552024079895885.Spec : Prop :=
  ∀ n, P686552024079895885.a n = A387286 (n + 1)

theorem P686552024079895885.correct : P686552024079895885.Spec := by
  intro n
  simp only [A387286, Nat.add_sub_cancel, A387286.P686552024079895885.a, A387286.P8488198872043102979.a, A056109, A056109.P1021656474208167212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387286

/-! ## A387286.P8712540106111419086

`A002522(n)*A045944(n+1)-A045944(n+1)`
-/

namespace A387286.P8712540106111419086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A045944 (n + 1) - A045944 (n + 1)

end

end A387286.P8712540106111419086

namespace A387286

/-- `A002522(n)*A045944(n+1)-A045944(n+1)` -/
def P8712540106111419086.Spec : Prop :=
  ∀ n, P8712540106111419086.a n = A387286 (n + 1)

theorem P8712540106111419086.correct : P8712540106111419086.Spec := by
  intro n
  simp only [A387286, Nat.add_sub_cancel, A387286.P8712540106111419086.a, A387286.P8488198872043102979.a, A002522, A002522.P3778392011853271743.a, A045944, A045944.P1947840734344051753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387286

/-! ## A387286.P3700779983174224817

`∑[∑[record[A006370(n)²]]]`
-/

namespace A387286.P3700779983174224817
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387286.P3700779983174224817

namespace A387286

/-- `∑[∑[record[A006370(n)²]]]` -/
def P3700779983174224817.Spec : Prop :=
  ∀ n, P3700779983174224817.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P3149207109371564955

`∑[(A004538(2*n)-1)*n]`
-/

namespace A387286.P3149207109371564955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004538 (2 * n) - 1) * (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387286.P3149207109371564955

namespace A387286

/-- `∑[(A004538(2*n)-1)*n]` -/
def P3149207109371564955.Spec : Prop :=
  ∀ n, P3149207109371564955.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P5047125651808396934

`A389363(2*n+1)-A002620(2*n+1)`
-/

namespace A387286.P5047125651808396934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389363 (2 * n + 1) - A002620 (2 * n + 1)

end

end A387286.P5047125651808396934

namespace A387286

/-- `A389363(2*n+1)-A002620(2*n+1)` -/
def P5047125651808396934.Spec : Prop :=
  ∀ n, P5047125651808396934.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P15166967342725072425

`∑[∑[A055808(3*n)]]`
-/

namespace A387286.P15166967342725072425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387286.P15166967342725072425

namespace A387286

/-- `∑[∑[A055808(3*n)]]` -/
def P15166967342725072425.Spec : Prop :=
  ∀ n, P15166967342725072425.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P174588319028503313

`∑[∑[A004275(3*n)²]]`
-/

namespace A387286.P174588319028503313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (3 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387286.P174588319028503313

namespace A387286

/-- `∑[∑[A004275(3*n)²]]` -/
def P174588319028503313.Spec : Prop :=
  ∀ n, P174588319028503313.a n = A387286 (n + 1)

end A387286

/-! ## A387286.P4830563363226635544

`∑[∑[record[A106548(3*n+1)]]]`
-/

namespace A387286.P4830563363226635544
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106548 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387286.P4830563363226635544

namespace A387286

/-- `∑[∑[record[A106548(3*n+1)]]]` -/
def P4830563363226635544.Spec : Prop :=
  ∀ n, P4830563363226635544.a n = A387286 (n + 1)

end A387286

/-!
# A387287: Primes in the order of their first appearance among the factors of the averages of twin prime pairs.

The programs for A387287, there is no canonical definition to state claims against.
-/

/-! ## A387287.P10619350157860662815

`p?[A182483(n+2)]`
-/

namespace A387287.P10619350157860662815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182483 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A387287.P10619350157860662815

/-! ## A387287.P585357774924221589

`filter[A182483(2+n), A010051(#)]`
-/

namespace A387287.P585357774924221589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182483 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A387287.P585357774924221589

/-! ## A387287.P7241186574948372124

`filter[A182483(3+n), A080339(#)]`
-/

namespace A387287.P7241186574948372124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182483 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A387287.P7241186574948372124

/-!
# A387288: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(2*k,n-2*k).

The programs for A387288, the canonical program `A387288.P4525004925441548802` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387288 has offset 0).

The definition of A387288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n, #)*C(2*#, n-2*#)]` (program `A387288.P4525004925441548802`, by `A387288.P4525004925441548802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387288.P4525004925441548802

`∑{#}[floor(n/2), C(n, #)*C(2*#, n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387288

/-- `∑{#}[floor(n/2), C(n, #)*C(2*#, n-2*#)]` -/
def P4525004925441548802.Spec : Prop :=
  ∀ n, (P4525004925441548802.a n : ℤ) = A387288 n

theorem P4525004925441548802.correct : P4525004925441548802.Spec := by
  intro n
  simp only [A387288]

end A387288

/-! ## A387288.P14934059096515018980

`∑{#}[n, (-1)^(n-#)*C(n, #)*A378405(#)]`
-/

namespace A387288.P14934059096515018980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A378405 k : ℚ)

end

end A387288.P14934059096515018980

namespace A387288

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A378405(#)]` -/
def P14934059096515018980.Spec : Prop :=
  ∀ n, P14934059096515018980.a n = (A387288 n : ℚ)

end A387288

/-!
# A387298: Dirichlet g.f.: zeta(s) * zeta(6*s) / (zeta(3*s) * zeta(4*s)).

The programs for A387298, the canonical program `A387298.P16455645540899715742` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387298 has offset 1).

The definition of A387298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387298.P16455645540899715742

`∏{e}[1+n, A128834(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387298

/-- `∏{e}[1+n, A128834(#)]` -/
def P16455645540899715742.Spec : Prop :=
  ∀ n, P16455645540899715742.a n = A387298 (n + 1)

theorem P16455645540899715742.correct : P16455645540899715742.Spec := by
  intro n
  simp only [A387298, Nat.add_sub_cancel]

end A387298

/-! ## A387298.P9628429430123282618

`∏{e}[1+n, A163806(#)]`
-/

namespace A387298.P9628429430123282618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A163806 (Nat.factorization (f1 n) p)

end

end A387298.P9628429430123282618

namespace A387298

/-- `∏{e}[1+n, A163806(#)]` -/
def P9628429430123282618.Spec : Prop :=
  ∀ n, P9628429430123282618.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P13486428090961938035

`∏{e}[(n+1)/∏{p}[n+1, #], A010892(#)]`
-/

namespace A387298.P13486428090961938035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A010892 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A387298.P13486428090961938035

namespace A387298

/-- `∏{e}[(n+1)/∏{p}[n+1, #], A010892(#)]` -/
def P13486428090961938035.Spec : Prop :=
  ∀ n, P13486428090961938035.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P3111459148379054729

`A299406(A003557(n+1))`
-/

namespace A387298.P3111459148379054729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299406 (A003557 (n + 1)).toNat

end

end A387298.P3111459148379054729

namespace A387298

/-- `A299406(A003557(n+1))` -/
def P3111459148379054729.Spec : Prop :=
  ∀ n, P3111459148379054729.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P8623890399411918752

`∏{e}[A003557(n+1), A010892(#)]`
-/

namespace A387298.P8623890399411918752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A010892 (Nat.factorization (f1 n).natAbs p)

end

end A387298.P8623890399411918752

namespace A387298

/-- `∏{e}[A003557(n+1), A010892(#)]` -/
def P8623890399411918752.Spec : Prop :=
  ∀ n, P8623890399411918752.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P15033594633867091980

`A076479(n+1)*A332732(n+1)`
-/

namespace A387298.P15033594633867091980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A332732 (n + 1)

end

end A387298.P15033594633867091980

namespace A387298

/-- `A076479(n+1)*A332732(n+1)` -/
def P15033594633867091980.Spec : Prop :=
  ∀ n, P15033594633867091980.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P13239237870095133676

`A307427(n+1)*A332732(n+1)`
-/

namespace A387298.P13239237870095133676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307427 (n + 1) * A332732 (n + 1)

end

end A387298.P13239237870095133676

namespace A387298

/-- `A307427(n+1)*A332732(n+1)` -/
def P13239237870095133676.Spec : Prop :=
  ∀ n, P13239237870095133676.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P14267295920452714532

`∑{d}[n+1, A227291(#)*A299406((n+1)/#)]`
-/

namespace A387298.P14267295920452714532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A299406 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A387298.P14267295920452714532

namespace A387298

/-- `∑{d}[n+1, A227291(#)*A299406((n+1)/#)]` -/
def P14267295920452714532.Spec : Prop :=
  ∀ n, P14267295920452714532.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P17286982107048913482

`∑{d}[n+1, A322327(#)*A332732((n+1)/#)]`
-/

namespace A387298.P17286982107048913482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322327 d * A332732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A387298.P17286982107048913482

namespace A387298

/-- `∑{d}[n+1, A322327(#)*A332732((n+1)/#)]` -/
def P17286982107048913482.Spec : Prop :=
  ∀ n, P17286982107048913482.a n = A387298 (n + 1)

end A387298

/-! ## A387298.P16434517893000717206

`A391502(∏{e}[1+n, #!]+∏{e}[1+n, #])`
-/

namespace A387298.P16434517893000717206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) + ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A387298.P16434517893000717206

namespace A387298

/-- `A391502(∏{e}[1+n, #!]+∏{e}[1+n, #])` -/
def P16434517893000717206.Spec : Prop :=
  ∀ n, P16434517893000717206.a n = A387298 (n + 1)

end A387298

