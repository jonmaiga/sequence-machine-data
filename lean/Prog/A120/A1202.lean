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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
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
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
# A120200: a(1)=7; a(n)=floor((62+sum(a(1) to a(n-1)))/8).

The programs for A120200, there is no canonical definition to state claims against.
-/

/-! ## A120200.P16359579808073045786

`Δ[a(n-1)+A110656(a(n-1))+3]` with `a(0)=31`
-/

namespace A120200.P16359579808073045786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [31] fun n f1 =>
  f1 (n - 1) + (A110656 (f1 (n - 1)).toNat + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120200.P16359579808073045786

/-! ## A120200.P18324405573097662187

`Δ[A020719(floor(a(n-1)/(1-1/9)))]` with `a(0)=6`
-/

namespace A120200.P18324405573097662187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A020719 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 9)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120200.P18324405573097662187

/-! ## A120200.P9965645304005785630

`Δ[A020719((or(7, 9*a(n-1))-7)/8)]` with `a(0)=6`
-/

namespace A120200.P9965645304005785630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A020719 (SequenceMachineLib.roundAway ((Int.lor 7 (9 * f1 (n - 1)) - 7 : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120200.P9965645304005785630

/-! ## A120200.P5884152071538058849

`Δ[A057360(A319452(a(n-1)+7))]` with `a(0)=7`
-/

namespace A120200.P5884152071538058849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A057360 (A319452 (f1 (n - 1) + 7).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120200.P5884152071538058849

/-! ## A120200.P15574422179258736672

`A120196(n+9)%A049517(n+1)`
-/

namespace A120200.P15574422179258736672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120196 (n + 9)) (A049517 (n + 1))

end

end A120200.P15574422179258736672

/-!
# A120201: a(1)=8; a(n)=floor((71+sum(a(1) to a(n-1)))/8).

The programs for A120201, there is no canonical definition to state claims against.
-/

/-! ## A120201.P10151451513938886682

`A031285(A156351(round(ϕ*a(n-1))))` with `a(0)=8`
-/

namespace A120201.P10151451513938886682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A031285 (A156351 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A120201.P10151451513938886682

/-!
# A120202: a(n) = ceiling( Sum_{i=1..n-1} a(i)/9), a(1)=1.

The programs for A120202, the canonical program `A120202.P7254298515334679639` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120202 has offset 1).

The definition of A120202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120202.P7254298515334679639

`Δ[floor(10/9*a(n-1))]` with `a(0)=8, a(1)=9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120202

/-- `Δ[floor(10/9*a(n-1))]` -/
def P7254298515334679639.Spec : Prop :=
  ∀ n, P7254298515334679639.a n = A120202 (n + 1)

theorem P7254298515334679639.correct : P7254298515334679639.Spec := by
  intro n
  simp only [A120202, Nat.add_sub_cancel]

end A120202

/-! ## A120202.P4964907539319109117

`floor(A182362(A233583(n+1))/10)`
-/

namespace A120202.P4964907539319109117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182362 (A233583 (n + 1)).toNat : ℚ) / 10⌋

end

end A120202.P4964907539319109117

namespace A120202

/-- `floor(A182362(A233583(n+1))/10)` -/
def P4964907539319109117.Spec : Prop :=
  ∀ n, P4964907539319109117.a n = A120202 (n + 1)

end A120202

/-! ## A120202.P9079653421784014420

`Δ[A317591(n+1)]`
-/

namespace A120202.P9079653421784014420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120202.P9079653421784014420

namespace A120202

/-- `Δ[A317591(n+1)]` -/
def P9079653421784014420.Spec : Prop :=
  ∀ n, P9079653421784014420.a n = A120202 (n + 1)

end A120202

/-! ## A120202.P8890743455254634036

`floor(A317591(n+2)/10)`
-/

namespace A120202.P8890743455254634036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317591 (n + 2) : ℚ) / 10⌋

end

end A120202.P8890743455254634036

namespace A120202

/-- `floor(A317591(n+2)/10)` -/
def P8890743455254634036.Spec : Prop :=
  ∀ n, P8890743455254634036.a n = A120202 (n + 1)

end A120202

/-! ## A120202.P7609552362107470556

`A317591(n+2)-A317591(n+1)`
-/

namespace A120202.P7609552362107470556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317591 (n + 2) - A317591 (n + 1)

end

end A120202.P7609552362107470556

namespace A120202

/-- `A317591(n+2)-A317591(n+1)` -/
def P7609552362107470556.Spec : Prop :=
  ∀ n, P7609552362107470556.a n = A120202 (n + 1)

end A120202

/-! ## A120202.P11734583699160901975

`A245403(n+1)/10`
-/

namespace A120202.P11734583699160901975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245403 (n + 1) : ℚ) / 10

end

end A120202.P11734583699160901975

namespace A120202

/-- `A245403(n+1)/10` -/
def P11734583699160901975.Spec : Prop :=
  ∀ n, P11734583699160901975.a n = (A120202 (n + 1) : ℚ)

theorem P11734583699160901975.correct : P11734583699160901975.Spec := by
  intro n
  simp only [A120202, Nat.add_sub_cancel, A120202.P11734583699160901975.a, A120202.P7254298515334679639.f1, A120202.P7254298515334679639.a, A245403, A245403.P11721745227114113463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120202

/-! ## A120202.P11318424810983978519

`A059995(A245403(n+1))`
-/

namespace A120202.P11318424810983978519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A245403 (n + 1)).toNat

end

end A120202.P11318424810983978519

namespace A120202

/-- `A059995(A245403(n+1))` -/
def P11318424810983978519.Spec : Prop :=
  ∀ n, P11318424810983978519.a n = A120202 (n + 1)

end A120202

/-! ## A120202.P17384806920706480034

`A059995(A317591(n+2))`
-/

namespace A120202.P17384806920706480034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A317591 (n + 2)).toNat

end

end A120202.P17384806920706480034

namespace A120202

/-- `A059995(A317591(n+2))` -/
def P17384806920706480034.Spec : Prop :=
  ∀ n, P17384806920706480034.a n = A120202 (n + 1)

end A120202

/-!
# A120203: a(1) = 2; a(n) = floor( (19 + Sum_{i=1..n-1} a(i)) /9).

The programs for A120203, the canonical program `A120203.P9085672297939614789` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120203 has offset 1).

The definition of A120203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120203.P9085672297939614789

`Δ[floor(10/9*a(n-1))]` with `a(0)=19`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120203

/-- `Δ[floor(10/9*a(n-1))]` -/
def P9085672297939614789.Spec : Prop :=
  ∀ n, P9085672297939614789.a n = A120203 (n + 1)

theorem P9085672297939614789.correct : P9085672297939614789.Spec := by
  intro n
  simp only [A120203, Nat.add_sub_cancel]

end A120203

/-! ## A120203.P2794559271160717444

`Δ[floor(a(n-1)+(a(n-1)-1)/9)]` with `a(0)=20`
-/

namespace A120203.P2794559271160717444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) - 1 : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P2794559271160717444

namespace A120203

/-- `Δ[floor(a(n-1)+(a(n-1)-1)/9)]` -/
def P2794559271160717444.Spec : Prop :=
  ∀ n, P2794559271160717444.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P14501495929858677386

`Δ[floor(a(n-1)-(1-a(n-1))/9)]` with `a(0)=20`
-/

namespace A120203.P14501495929858677386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) - (1 - f1 (n - 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P14501495929858677386

namespace A120203

/-- `Δ[floor(a(n-1)-(1-a(n-1))/9)]` -/
def P14501495929858677386.Spec : Prop :=
  ∀ n, P14501495929858677386.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P13896888057634668359

`Δ[A235498(a(n-1))]` with `a(0)=13`
-/

namespace A120203.P13896888057634668359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  A235498 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P13896888057634668359

namespace A120203

/-- `Δ[A235498(a(n-1))]` -/
def P13896888057634668359.Spec : Prop :=
  ∀ n, P13896888057634668359.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P10226347434497037291

`Δ[A067251(a(n-1))]` with `a(0)=20`
-/

namespace A120203.P10226347434497037291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20] fun n f1 =>
  A067251 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P10226347434497037291

namespace A120203

/-- `Δ[A067251(a(n-1))]` -/
def P10226347434497037291.Spec : Prop :=
  ∀ n, P10226347434497037291.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P7749788070411074390

`Δ[A342851(a(n-1))]` with `a(0)=30`
-/

namespace A120203.P7749788070411074390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  A342851 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P7749788070411074390

namespace A120203

/-- `Δ[A342851(a(n-1))]` -/
def P7749788070411074390.Spec : Prop :=
  ∀ n, P7749788070411074390.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P15380227932945757500

`Δ[A008620(A002264(a(n-1)))+a(n-1)]` with `a(0)=10`
-/

namespace A120203.P15380227932945757500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A008620 (A002264 (f1 (n - 1)).toNat).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P15380227932945757500

namespace A120203

/-- `Δ[A008620(A002264(a(n-1)))+a(n-1)]` -/
def P15380227932945757500.Spec : Prop :=
  ∀ n, P15380227932945757500.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P15892258391360704217

`Δ[A020725(floor(a(n-1)/(1-1/10)))]` with `a(0)=10`
-/

namespace A120203.P15892258391360704217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A020725 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P15892258391360704217

namespace A120203

/-- `Δ[A020725(floor(a(n-1)/(1-1/10)))]` -/
def P15892258391360704217.Spec : Prop :=
  ∀ n, P15892258391360704217.a n = A120203 (n + 1)

end A120203

/-! ## A120203.P7927804055770693706

`Δ[A008620(A298786(a(n-1)))]` with `a(0)=9`
-/

namespace A120203.P7927804055770693706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A008620 (A298786 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120203.P7927804055770693706

namespace A120203

/-- `Δ[A008620(A298786(a(n-1)))]` -/
def P7927804055770693706.Spec : Prop :=
  ∀ n, P7927804055770693706.a n = A120203 (n + 1)

end A120203

/-!
# A120204: a(1) = 3; a(n) = floor((29 + Sum_{i=1..n-1} a(i))/9).

The programs for A120204, the canonical program `A120204.P4904388748526669837` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120204 has offset 1).

The definition of A120204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120204.P4904388748526669837

`Δ[floor(10/9*a(n-1))]` with `a(0)=29`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120204

/-- `Δ[floor(10/9*a(n-1))]` -/
def P4904388748526669837.Spec : Prop :=
  ∀ n, P4904388748526669837.a n = A120204 (n + 1)

theorem P4904388748526669837.correct : P4904388748526669837.Spec := by
  intro n
  simp only [A120204, Nat.add_sub_cancel]

end A120204

/-! ## A120204.P1622887487788474265

`Δ[round(a(n-1)+a(n-1)/9)]` with `a(0)=25`
-/

namespace A120204.P1622887487788474265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120204.P1622887487788474265

namespace A120204

/-- `Δ[round(a(n-1)+a(n-1)/9)]` -/
def P1622887487788474265.Spec : Prop :=
  ∀ n, P1622887487788474265.a n = A120204 (n + 1)

end A120204

/-! ## A120204.P4062514868498603260

`Δ[A235498(a(n-1))]` with `a(0)=23`
-/

namespace A120204.P4062514868498603260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [23] fun n f1 =>
  A235498 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120204.P4062514868498603260

namespace A120204

/-- `Δ[A235498(a(n-1))]` -/
def P4062514868498603260.Spec : Prop :=
  ∀ n, P4062514868498603260.a n = A120204 (n + 1)

end A120204

/-! ## A120204.P14486057978271773658

`Δ[A067251(a(n-1))]` with `a(0)=30`
-/

namespace A120204.P14486057978271773658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  A067251 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120204.P14486057978271773658

namespace A120204

/-- `Δ[A067251(a(n-1))]` -/
def P14486057978271773658.Spec : Prop :=
  ∀ n, P14486057978271773658.a n = A120204 (n + 1)

end A120204

/-! ## A120204.P5885487256737883644

`Δ[A342851(a(n-1)+1)]` with `a(0)=30`
-/

namespace A120204.P5885487256737883644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  A342851 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120204.P5885487256737883644

namespace A120204

/-- `Δ[A342851(a(n-1)+1)]` -/
def P5885487256737883644.Spec : Prop :=
  ∀ n, P5885487256737883644.a n = A120204 (n + 1)

end A120204

/-! ## A120204.P14105819921210528152

`Δ[A004086(A076641(a(n-1)+2))]` with `a(0)=10`
-/

namespace A120204.P14105819921210528152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A004086 (A076641 (f1 (n - 1) + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120204.P14105819921210528152

namespace A120204

/-- `Δ[A004086(A076641(a(n-1)+2))]` -/
def P14105819921210528152.Spec : Prop :=
  ∀ n, P14105819921210528152.a n = A120204 (n + 1)

end A120204

/-!
# A120205: a(1) = 4; a(n) = floor((39 + Sum_{i=1..n-1} a(i))/9).

The programs for A120205, the canonical program `A120205.P5934504507259741550` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120205 has offset 1).

The definition of A120205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120205.P5934504507259741550

`Δ[floor(10/9*a(n-1))]` with `a(0)=39`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120205

/-- `Δ[floor(10/9*a(n-1))]` -/
def P5934504507259741550.Spec : Prop :=
  ∀ n, P5934504507259741550.a n = A120205 (n + 1)

theorem P5934504507259741550.correct : P5934504507259741550.Spec := by
  intro n
  simp only [A120205, Nat.add_sub_cancel]

end A120205

/-! ## A120205.P2936021209568739794

`Δ[A342851(a(n-1))]` with `a(0)=50`
-/

namespace A120205.P2936021209568739794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50] fun n f1 =>
  A342851 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120205.P2936021209568739794

namespace A120205

/-- `Δ[A342851(a(n-1))]` -/
def P2936021209568739794.Spec : Prop :=
  ∀ n, P2936021209568739794.a n = A120205 (n + 1)

end A120205

/-! ## A120205.P13459195457953904915

`Δ[A067251(a(n-1)+4)]` with `a(0)=0`
-/

namespace A120205.P13459195457953904915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A067251 (f1 (n - 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120205.P13459195457953904915

namespace A120205

/-- `Δ[A067251(a(n-1)+4)]` -/
def P13459195457953904915.Spec : Prop :=
  ∀ n, P13459195457953904915.a n = A120205 (n + 1)

end A120205

/-! ## A120205.P13498117188562277029

`Δ[A020725(floor(a(n-1)/(1-1/10)))]` with `a(0)=30`
-/

namespace A120205.P13498117188562277029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [30] fun n f1 =>
  A020725 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120205.P13498117188562277029

namespace A120205

/-- `Δ[A020725(floor(a(n-1)/(1-1/10)))]` -/
def P13498117188562277029.Spec : Prop :=
  ∀ n, P13498117188562277029.a n = A120205 (n + 1)

end A120205

/-! ## A120205.P8975744604841113261

`A074279(A265062(n+4)+A216765(n+1))`
-/

namespace A120205.P8975744604841113261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A265062 (n + 4) + A216765 (n + 1)).toNat

end

end A120205.P8975744604841113261

namespace A120205

/-- `A074279(A265062(n+4)+A216765(n+1))` -/
def P8975744604841113261.Spec : Prop :=
  ∀ n, P8975744604841113261.a n = A120205 (n + 1)

end A120205

/-!
# A120206: a(1)=5; a(n)=floor((49+sum(a(1) to a(n-1)))/9).

The programs for A120206, there is no canonical definition to state claims against.
-/

/-! ## A120206.P5231371157233978443

`Δ[A067251(a(n-1)+5)]` with `a(0)=0`
-/

namespace A120206.P5231371157233978443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A067251 (f1 (n - 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120206.P5231371157233978443

/-! ## A120206.P6084615677746335200

`A360010(A398428(n+1))+4`
-/

namespace A120206.P6084615677746335200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A398428 (n + 1)).toNat + 4

end

end A120206.P6084615677746335200

/-! ## A120206.P18032274735897073873

`A204562(A204588(3*n+4)+A008439(n))`
-/

namespace A120206.P18032274735897073873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A204588 (3 * n + 4) + A008439 n).toNat

end

end A120206.P18032274735897073873

/-! ## A120206.P2371085802635506775

`A204551(A204588(3*n+4)+A025022(n+1))`
-/

namespace A120206.P2371085802635506775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A204588 (3 * n + 4) + A025022 (n + 1)).toNat

end

end A120206.P2371085802635506775

/-! ## A120206.P2044986618909809467

`A204562(A204588(3*n+4)+A204541(n+1))`
-/

namespace A120206.P2044986618909809467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A204588 (3 * n + 4) + A204541 (n + 1)).toNat

end

end A120206.P2044986618909809467

/-!
# A120207: a(1)=6; a(n)=floor((59+sum(a(1) to a(n-1)))/9).

The programs for A120207, the canonical program `A120207.P16371064018915675652` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120207 has offset 1).

The definition of A120207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120207.P16371064018915675652

`Δ[floor(a(n-1)+a(n-1)/9)]` with `a(0)=59`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120207

/-- `Δ[floor(a(n-1)+a(n-1)/9)]` -/
def P16371064018915675652.Spec : Prop :=
  ∀ n, P16371064018915675652.a n = A120207 (n + 1)

theorem P16371064018915675652.correct : P16371064018915675652.Spec := by
  intro n
  simp only [A120207, Nat.add_sub_cancel]

end A120207

/-! ## A120207.P16434972345192389373

`Δ[A067251(a(n-1))]` with `a(0)=60`
-/

namespace A120207.P16434972345192389373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [60] fun n f1 =>
  A067251 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120207.P16434972345192389373

namespace A120207

/-- `Δ[A067251(a(n-1))]` -/
def P16434972345192389373.Spec : Prop :=
  ∀ n, P16434972345192389373.a n = A120207 (n + 1)

end A120207

/-! ## A120207.P12976171929160360689

`Δ[A004086(A076641(a(n-1)+6))]` with `a(0)=0`
-/

namespace A120207.P12976171929160360689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A004086 (A076641 (f1 (n - 1) + 6).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120207.P12976171929160360689

namespace A120207

/-- `Δ[A004086(A076641(a(n-1)+6))]` -/
def P12976171929160360689.Spec : Prop :=
  ∀ n, P12976171929160360689.a n = A120207 (n + 1)

end A120207

/-! ## A120207.P3299148526931119931

`Δ[A020725(floor(a(n-1)/(1-1/10)))]` with `a(0)=50`
-/

namespace A120207.P3299148526931119931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [50] fun n f1 =>
  A020725 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120207.P3299148526931119931

namespace A120207

/-- `Δ[A020725(floor(a(n-1)/(1-1/10)))]` -/
def P3299148526931119931.Spec : Prop :=
  ∀ n, P3299148526931119931.a n = A120207 (n + 1)

end A120207

/-!
# A120208: a(1)=7; a(n)=floor((69+sum(a(1) to a(n-1)))/9).

The programs for A120208, there is no canonical definition to state claims against.
-/

/-! ## A120208.P4606243641482318363

`Δ[A235498(a(n-1))]` with `a(0)=63`
-/

namespace A120208.P4606243641482318363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [63] fun n f1 =>
  A235498 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120208.P4606243641482318363

/-! ## A120208.P165252193344701340

`Δ[A067251(a(n-1)+6)]` with `a(0)=10`
-/

namespace A120208.P165252193344701340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A067251 (f1 (n - 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120208.P165252193344701340

/-! ## A120208.P4062702795635625492

`Δ[A004086(A076641(a(n-1)+6))]` with `a(0)=10`
-/

namespace A120208.P4062702795635625492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A004086 (A076641 (f1 (n - 1) + 6).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120208.P4062702795635625492

/-! ## A120208.P5444863091466438075

`Δ[A020719(floor(a(n-1)/(1-1/10)))]` with `a(0)=6`
-/

namespace A120208.P5444863091466438075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A020719 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120208.P5444863091466438075

/-! ## A120208.P9784569466783521267

`Δ[A020725(floor(a(n-1)/(1-1/10)))]` with `a(0)=60`
-/

namespace A120208.P9784569466783521267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [60] fun n f1 =>
  A020725 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120208.P9784569466783521267

/-!
# A120209: a(1)=8; a(n)=floor((79+sum(a(1) to a(n-1)))/9).

The programs for A120209, there is no canonical definition to state claims against.
-/

/-! ## A120209.P11447743543209866003

`Δ[A067251(a(n-1)+8)]` with `a(0)=0`
-/

namespace A120209.P11447743543209866003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A067251 (f1 (n - 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120209.P11447743543209866003

/-! ## A120209.P6813317830559661898

`Δ[A342851(a(n-1)+9)]` with `a(0)=0`
-/

namespace A120209.P6813317830559661898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A342851 (f1 (n - 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120209.P6813317830559661898

/-! ## A120209.P456011902783900391

`Δ[A020719(floor(a(n-1)/(1-1/10)))]` with `a(0)=16`
-/

namespace A120209.P456011902783900391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16] fun n f1 =>
  A020719 ⌊(f1 (n - 1) : ℚ) / (1 - (1 : ℚ) / 10)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120209.P456011902783900391

/-!
# A120221: Continued fraction expansion of one minus the Minkowski-Bower constant.

The programs for A120221, there is no canonical definition to state claims against.
-/

/-! ## A120221.P8490879377332847441

`A048821(A289207(n))-A000007(n)`
-/

namespace A120221.P8490879377332847441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n).toNat - A000007 n

end

end A120221.P8490879377332847441

/-! ## A120221.P11441831565232371167

`A048821(A289207(n))*A057427(n)`
-/

namespace A120221.P11441831565232371167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n).toNat * A057427 n

end

end A120221.P11441831565232371167

/-! ## A120221.P12151574750260686227

`and(A003817(n), A048821(A289207(n)))`
-/

namespace A120221.P12151574750260686227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A048821 (A289207 n).toNat)

end

end A120221.P12151574750260686227

/-! ## A120221.P1930462535913733093

`char[A052938(n)]*A048821(A289207(n))`
-/

namespace A120221.P1930462535913733093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n).toNat

end

end A120221.P1930462535913733093

/-! ## A120221.P5794418459660958676

`char[A117910(n)]*A048821(A289207(n))`
-/

namespace A120221.P5794418459660958676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n).toNat

end

end A120221.P5794418459660958676

/-! ## A120221.P11651089888580839904

`A048821(A289207(n))-A000038(n)/2`
-/

namespace A120221.P11651089888580839904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048821 (A289207 n).toNat : ℚ) - (A000038 n : ℚ) / 2

end

end A120221.P11651089888580839904

/-! ## A120221.P13480269889184243307

`xor(A000007(2*n), A048821(A289207(n)))`
-/

namespace A120221.P13480269889184243307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A048821 (A289207 n).toNat)

end

end A120221.P13480269889184243307

/-! ## A120221.P16935675426103923447

`char[A000463(n+1)]*A048821(A289207(n))`
-/

namespace A120221.P16935675426103923447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n).toNat

end

end A120221.P16935675426103923447

/-! ## A120221.P13396803938162298905

`char[A003602(n+1)]*A048821(A289207(n))`
-/

namespace A120221.P13396803938162298905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n).toNat

end

end A120221.P13396803938162298905

/-! ## A120221.P9779404512179345762

`char[A048673(n+1)]*A048821(A289207(n))`
-/

namespace A120221.P9779404512179345762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A048821 (A289207 n).toNat

end

end A120221.P9779404512179345762

/-! ## A120221.P13035270848538747688

`ceil(n/A000041(n))*A048821(A289207(n))`
-/

namespace A120221.P13035270848538747688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A048821 (A289207 n).toNat

end

end A120221.P13035270848538747688

/-! ## A120221.P11187599883779545243

`and(1, A000040(n+1))*A048821(A289207(n))`
-/

namespace A120221.P11187599883779545243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A048821 (A289207 n).toNat

end

end A120221.P11187599883779545243

/-! ## A120221.P11702219785555675409

`A048821(A289207(n))-A000045(C(2, n+2))`
-/

namespace A120221.P11702219785555675409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A120221.P11702219785555675409

/-! ## A120221.P4657431499960784015

`A048821(A289207(n))+A008683(2*(n+1)²)`
-/

namespace A120221.P4657431499960784015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A120221.P4657431499960784015

/-! ## A120221.P5204101015388727491

`A048821(A289207(n))+(n-1)*A008683(∑[2*n+1])`
-/

namespace A120221.P5204101015388727491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n).toNat + ((n : ℤ) - 1) * A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120221.P5204101015388727491

/-! ## A120221.P8054061231902227241

`A048821(A289207(n))-A003966(A103517(n))`
-/

namespace A120221.P8054061231902227241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048821 (A289207 n).toNat - A003966 (A103517 n).toNat

end

end A120221.P8054061231902227241

/-! ## A120221.P5390618600436572876

`A008683(2*A000040(n+1))*A048821(A289207(n))`
-/

namespace A120221.P5390618600436572876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A048821 (A289207 n).toNat

end

end A120221.P5390618600436572876

/-!
# A120222: Numbers k such that 6+k and 6*k+1 are prime.

The programs for A120222, the canonical program `A120222.P17737264520806580361` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120222 has offset 1).

The definition of A120222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120222.P17737264520806580361

`p?[A024899(n+1)+6]-6`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A120222

/-- `p?[A024899(n+1)+6]-6` -/
def P17737264520806580361.Spec : Prop :=
  ∀ n, P17737264520806580361.a n = A120222 (n + 1)

theorem P17737264520806580361.correct : P17737264520806580361.Spec := by
  intro n
  simp only [A120222, Nat.add_sub_cancel]

end A120222

/-! ## A120222.P11018475700114488657

`∩[A024899(n+1), A086304(n+1)]`
-/

namespace A120222.P11018475700114488657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120222.P11018475700114488657

namespace A120222

/-- `∩[A024899(n+1), A086304(n+1)]` -/
def P11018475700114488657.Spec : Prop :=
  ∀ n, (P11018475700114488657.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P18125994157710834085

`∩[A024899(n+1), A118538(n+1)]`
-/

namespace A120222.P18125994157710834085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120222.P18125994157710834085

namespace A120222

/-- `∩[A024899(n+1), A118538(n+1)]` -/
def P18125994157710834085.Spec : Prop :=
  ∀ n, (P18125994157710834085.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P14846075831122026720

`∩[A086304(n+1), A364869(n+1)]`
-/

namespace A120222.P14846075831122026720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120222.P14846075831122026720

namespace A120222

/-- `∩[A086304(n+1), A364869(n+1)]` -/
def P14846075831122026720.Spec : Prop :=
  ∀ n, (P14846075831122026720.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P18285838573695724877

`∩[A118538(n+1), A364869(n+1)]`
-/

namespace A120222.P18285838573695724877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120222.P18285838573695724877

namespace A120222

/-- `∩[A118538(n+1), A364869(n+1)]` -/
def P18285838573695724877.Spec : Prop :=
  ∀ n, (P18285838573695724877.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P11381927358944859551

`filter[A086304(n+1), A167021(#)]`
-/

namespace A120222.P11381927358944859551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A120222.P11381927358944859551

namespace A120222

/-- `filter[A086304(n+1), A167021(#)]` -/
def P11381927358944859551.Spec : Prop :=
  ∀ n, P11381927358944859551.a n = A120222 (n + 1)

end A120222

/-! ## A120222.P15974605725185129940

`filter[A118538(n+3), A167021(#)]`
-/

namespace A120222.P15974605725185129940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A120222.P15974605725185129940

namespace A120222

/-- `filter[A118538(n+3), A167021(#)]` -/
def P15974605725185129940.Spec : Prop :=
  ∀ n, P15974605725185129940.a n = A120222 (n + 1)

end A120222

/-! ## A120222.P15507652951388765404

`eq[A066868(n+1), A072815(n)]`
-/

namespace A120222.P15507652951388765404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120222.P15507652951388765404

namespace A120222

/-- `eq[A066868(n+1), A072815(n)]` -/
def P15507652951388765404.Spec : Prop :=
  ∀ n, (P15507652951388765404.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P1227942043340958447

`A023448(p?[A024899(n+1)+6])`
-/

namespace A120222.P1227942043340958447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120222.P1227942043340958447

namespace A120222

/-- `A023448(p?[A024899(n+1)+6])` -/
def P1227942043340958447.Spec : Prop :=
  ∀ n, P1227942043340958447.a n = A120222 (n + 1)

end A120222

/-! ## A120222.P13720879380385535075

`eq[A001222(A016921(n)), A003415(n+6)]`
-/

namespace A120222.P13720879380385535075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016921 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120222.P13720879380385535075

namespace A120222

/-- `eq[A001222(A016921(n)), A003415(n+6)]` -/
def P13720879380385535075.Spec : Prop :=
  ∀ n, (P13720879380385535075.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P8227746784012654084

`eq[A326199(n+6), A326199(A016921(n))]`
-/

namespace A120222.P8227746784012654084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326199 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326199 (A016921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120222.P8227746784012654084

namespace A120222

/-- `eq[A326199(n+6), A326199(A016921(n))]` -/
def P8227746784012654084.Spec : Prop :=
  ∀ n, (P8227746784012654084.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P14967104703700417635

`eq[A344765(n+6), A344765(A008588(n)+1)]`
-/

namespace A120222.P14967104703700417635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (A008588 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120222.P14967104703700417635

namespace A120222

/-- `eq[A344765(n+6), A344765(A008588(n)+1)]` -/
def P14967104703700417635.Spec : Prop :=
  ∀ n, (P14967104703700417635.a n : ℤ) = A120222 (n + 1)

end A120222

/-! ## A120222.P12873435665826517630

`eq[A007920(A008458(n)), A014652(n+6)]`
-/

namespace A120222.P12873435665826517630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014652 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120222.P12873435665826517630

namespace A120222

/-- `eq[A007920(A008458(n)), A014652(n+6)]` -/
def P12873435665826517630.Spec : Prop :=
  ∀ n, (P12873435665826517630.a n : ℤ) = A120222 (n + 1)

end A120222

/-!
# A120223: a(n) is the minimal number k>1 such that n+k and n*k+1 are primes.

The programs for A120223, there is no canonical definition to state claims against.
-/

/-! ## A120223.P5119281092770863162

`A123317((n+1)²/∏{p}[n+1, #]+1)+1`
-/

namespace A120223.P5119281092770863162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123317 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + 1)).toNat + 1

end

end A120223.P5119281092770863162

/-! ## A120223.P8237347008613661008

`A007978((n+1)²*A135894(n))`
-/

namespace A120223.P8237347008613661008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (((n + 1) ^ 2 : ℤ) * A135894 n).toNat

end

end A120223.P8237347008613661008

/-! ## A120223.P6405257880411848222

`A337686((n+1)²*A135894(n))`
-/

namespace A120223.P6405257880411848222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (((n + 1) ^ 2 : ℤ) * A135894 n).toNat

end

end A120223.P6405257880411848222

/-! ## A120223.P7128032855722453618

`A007978(lcm((n+1)², A135894(n)))`
-/

namespace A120223.P7128032855722453618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (Int.lcm ((n + 1) ^ 2 : ℤ) (A135894 n))

end

end A120223.P7128032855722453618

/-! ## A120223.P17614102144711103268

`A144437(A260461(3*n+5))+A000034(n)`
-/

namespace A120223.P17614102144711103268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (A260461 (3 * n + 5)).toNat + A000034 n

end

end A120223.P17614102144711103268

/-!
# A120224: a(n) is the minimal number k>=n such that n+k and n*k+1 are primes.

The programs for A120224, there is no canonical definition to state claims against.
-/

/-! ## A120224.P12031613436935856616

`A120225(n+1)-floor(acot(n))`
-/

namespace A120224.P12031613436935856616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120225 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A120224.P12031613436935856616

/-! ## A120224.P10531885229846736942

`A120225(n*a(floor(acot(n)))+1)` with `a(0)=1`
-/

namespace A120224.P10531885229846736942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120225 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat + 1).toNat

end

end A120224.P10531885229846736942

/-! ## A120224.P8640562967850430906

`A120225(n%a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A120224.P8640562967850430906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A120225 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A120224.P8640562967850430906

/-! ## A120224.P15212589981404405958

`A120225(a(floor(char[2*n]/n))+n)` with `a(0)=1`
-/

namespace A120224.P15212589981404405958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120225 (a ⌊((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (n : ℚ)⌋.toNat + (n : ℤ)).toNat

end

end A120224.P15212589981404405958

/-! ## A120224.P18226669325278370916

`A181440(A120225(n+1))`
-/

namespace A120224.P18226669325278370916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A120225 (n + 1)).toNat

end

end A120224.P18226669325278370916

/-! ## A120224.P11338808573805225656

`A120225(n+1)-A000007(n)`
-/

namespace A120224.P11338808573805225656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120225 (n + 1) - A000007 n

end

end A120224.P11338808573805225656

/-! ## A120224.P8497211750865529809

`A120225(n+1)/A054977(n)`
-/

namespace A120224.P8497211750865529809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120225 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A120224.P8497211750865529809

/-!
# A120225: a(n) is the minimal number k>n such that n+k and n*k+1 are primes.

The programs for A120225, there is no canonical definition to state claims against.
-/

/-! ## A120225.P10992665614199270132

`lcm(gcd(2, n), A120224(n+1))`
-/

namespace A120225.P10992665614199270132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A120224 (n + 1))

end

end A120225.P10992665614199270132

/-! ## A120225.P11708541964156579914

`A120224(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A120225.P11708541964156579914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A120224 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A120225.P11708541964156579914

/-! ## A120225.P12984099681556507319

`floor(A120224(-xor(n, -1))+acot(n))`
-/

namespace A120225.P12984099681556507319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120224 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A120225.P12984099681556507319

/-! ## A120225.P512415158411564890

`A181440(A120224(n+1))`
-/

namespace A120225.P512415158411564890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A120224 (n + 1)).toNat

end

end A120225.P512415158411564890

/-! ## A120225.P6930893382767481114

`A120224(n+1)+A000007(n)`
-/

namespace A120225.P6930893382767481114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120224 (n + 1) + A000007 n

end

end A120225.P6930893382767481114

/-! ## A120225.P15464682327911520879

`A054977(n)*A120224(n+1)`
-/

namespace A120225.P15464682327911520879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A120224 (n + 1)

end

end A120225.P15464682327911520879

/-!
# A120226: Numbers k such that 4+k and 4*k+1 are prime.

The programs for A120226, the canonical program `A120226.P13386215019223714269` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120226 has offset 1).

The definition of A120226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120226.P13386215019223714269

`∩[A172367(n+1), A230076(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120226

/-- `∩[A172367(n+1), A230076(n+1)]` -/
def P13386215019223714269.Spec : Prop :=
  ∀ n, (P13386215019223714269.a n : ℤ) = A120226 (n + 1)

theorem P13386215019223714269.correct : P13386215019223714269.Spec := by
  intro n
  simp only [A120226, Nat.add_sub_cancel]

end A120226

/-! ## A120226.P6762491969712190290

`p?[A005098(n+1)+4]-4`
-/

namespace A120226.P6762491969712190290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A120226.P6762491969712190290

namespace A120226

/-- `p?[A005098(n+1)+4]-4` -/
def P6762491969712190290.Spec : Prop :=
  ∀ n, P6762491969712190290.a n = A120226 (n + 1)

end A120226

/-! ## A120226.P5636297657565781065

`∩[A005098(n+1), A172367(n+1)]`
-/

namespace A120226.P5636297657565781065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120226.P5636297657565781065

namespace A120226

/-- `∩[A005098(n+1), A172367(n+1)]` -/
def P5636297657565781065.Spec : Prop :=
  ∀ n, (P5636297657565781065.a n : ℤ) = A120226 (n + 1)

end A120226

/-! ## A120226.P4908986574136665184

`∩[A172367(n+1), A364868(n+1)]`
-/

namespace A120226.P4908986574136665184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120226.P4908986574136665184

namespace A120226

/-- `∩[A172367(n+1), A364868(n+1)]` -/
def P4908986574136665184.Spec : Prop :=
  ∀ n, (P4908986574136665184.a n : ℤ) = A120226 (n + 1)

end A120226

/-! ## A120226.P6512551290050313953

`∩[A172367(n+1), A380572(n+1)]`
-/

namespace A120226.P6512551290050313953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120226.P6512551290050313953

namespace A120226

/-- `∩[A172367(n+1), A380572(n+1)]` -/
def P6512551290050313953.Spec : Prop :=
  ∀ n, (P6512551290050313953.a n : ℤ) = A120226 (n + 1)

end A120226

/-! ## A120226.P8056046574164302605

`eq[n+3, A000010(A000005(2*n+2*n+1)+n+2)]`
-/

namespace A120226.P8056046574164302605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (2 * n + (2 * n + 1)) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120226.P8056046574164302605

namespace A120226

/-- `eq[n+3, A000010(A000005(2*n+2*n+1)+n+2)]` -/
def P8056046574164302605.Spec : Prop :=
  ∀ n, (P8056046574164302605.a n : ℤ) = A120226 (n + 1)

end A120226

/-! ## A120226.P9303416303782333951

`eq[n+3, A000010(A001222(2*n+2*n+1)+n+3)]`
-/

namespace A120226.P9303416303782333951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001222 (2 * n + (2 * n + 1)) + (n + 3 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120226.P9303416303782333951

namespace A120226

/-- `eq[n+3, A000010(A001222(2*n+2*n+1)+n+3)]` -/
def P9303416303782333951.Spec : Prop :=
  ∀ n, (P9303416303782333951.a n : ℤ) = A120226 (n + 1)

end A120226

/-! ## A120226.P8001158555950071447

`p?[A097362(A097363(n+1))]-4`
-/

namespace A120226.P8001158555950071447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A097363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A120226.P8001158555950071447

namespace A120226

/-- `p?[A097362(A097363(n+1))]-4` -/
def P8001158555950071447.Spec : Prop :=
  ∀ n, P8001158555950071447.a n = A120226 (n + 1)

end A120226

/-! ## A120226.P1276705955676228252

`p?[A111234(A089192(n+1))]-4`
-/

namespace A120226.P1276705955676228252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (A089192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A120226.P1276705955676228252

namespace A120226

/-- `p?[A111234(A089192(n+1))]-4` -/
def P1276705955676228252.Spec : Prop :=
  ∀ n, P1276705955676228252.a n = A120226 (n + 1)

end A120226

/-! ## A120226.P18254146437742456245

`p?[A131732(A097338(n+1))]-4`
-/

namespace A120226.P18254146437742456245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A097338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A120226.P18254146437742456245

namespace A120226

/-- `p?[A131732(A097338(n+1))]-4` -/
def P18254146437742456245.Spec : Prop :=
  ∀ n, P18254146437742456245.a n = A120226 (n + 1)

end A120226

/-! ## A120226.P2558035467392061197

`A025480(p?[A016813(A172367(n+1))])`
-/

namespace A120226.P2558035467392061197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A172367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120226.P2558035467392061197

namespace A120226

/-- `A025480(p?[A016813(A172367(n+1))])` -/
def P2558035467392061197.Spec : Prop :=
  ∀ n, P2558035467392061197.a n = A120226 (n + 1)

end A120226

/-! ## A120226.P13123763863757379548

`A124446(p?[A016813(A172367(n+1))])`
-/

namespace A120226.P13123763863757379548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A172367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A120226.P13123763863757379548

namespace A120226

/-- `A124446(p?[A016813(A172367(n+1))])` -/
def P13123763863757379548.Spec : Prop :=
  ∀ n, P13123763863757379548.a n = A120226 (n + 1)

end A120226

/-! ## A120226.P3938327163665113057

`eq[A001222(n+4), A051953(A008574(n)+1)]`
-/

namespace A120226.P3938327163665113057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A008574 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120226.P3938327163665113057

namespace A120226

/-- `eq[A001222(n+4), A051953(A008574(n)+1)]` -/
def P3938327163665113057.Spec : Prop :=
  ∀ n, (P3938327163665113057.a n : ℤ) = A120226 (n + 1)

end A120226

/-! ## A120226.P12393390127955306031

`eq[A051953(n+4), A051953(A008574(n)+1)]`
-/

namespace A120226.P12393390127955306031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A008574 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120226.P12393390127955306031

namespace A120226

/-- `eq[A051953(n+4), A051953(A008574(n)+1)]` -/
def P12393390127955306031.Spec : Prop :=
  ∀ n, (P12393390127955306031.a n : ℤ) = A120226 (n + 1)

end A120226

/-!
# A120227: Numbers k such that 5+k and 5*k+1 are prime.

The programs for A120227, the canonical program `A120227.P17218014583784792360` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120227 has offset 1).

The definition of A120227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120227.P17218014583784792360

`p?[A024894(n+1)+5]-5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120227

/-- `p?[A024894(n+1)+5]-5` -/
def P17218014583784792360.Spec : Prop :=
  ∀ n, P17218014583784792360.a n = A120227 (n + 1)

theorem P17218014583784792360.correct : P17218014583784792360.Spec := by
  intro n
  simp only [A120227, Nat.add_sub_cancel]

end A120227

/-! ## A120227.P13709077287574053586

`p?[A081759(n+1)+6]-5`
-/

namespace A120227.P13709077287574053586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A120227.P13709077287574053586

namespace A120227

/-- `p?[A081759(n+1)+6]-5` -/
def P13709077287574053586.Spec : Prop :=
  ∀ n, P13709077287574053586.a n = A120227 (n + 1)

theorem P13709077287574053586.correct : P13709077287574053586.Spec := by
  intro n
  simp only [A120227, Nat.add_sub_cancel, A120227.P13709077287574053586.f1, A120227.P13709077287574053586.a, A120227.P17218014583784792360.f1, A120227.P17218014583784792360.a, A024894, A024894.P2872051670384874786.f1, A024894.P2872051670384874786.a, A081759, A081759.P335554766721588986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A120227

/-! ## A120227.P16688873274946204929

`∩[A024894(n+1), A173064(n+3)]`
-/

namespace A120227.P16688873274946204929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120227.P16688873274946204929

namespace A120227

/-- `∩[A024894(n+1), A173064(n+3)]` -/
def P16688873274946204929.Spec : Prop :=
  ∀ n, (P16688873274946204929.a n : ℤ) = A120227 (n + 1)

end A120227

/-! ## A120227.P12556035213070711821

`eq[A001222(A090771(n+1)), A003415(n+5)]`
-/

namespace A120227.P12556035213070711821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A090771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120227.P12556035213070711821

namespace A120227

/-- `eq[A001222(A090771(n+1)), A003415(n+5)]` -/
def P12556035213070711821.Spec : Prop :=
  ∀ n, (P12556035213070711821.a n : ℤ) = A120227 (n + 1)

end A120227

/-! ## A120227.P1633259933594418781

`eq[A000005(A090771(n+1)), A305800(n+5)]`
-/

namespace A120227.P1633259933594418781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A090771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120227.P1633259933594418781

namespace A120227

/-- `eq[A000005(A090771(n+1)), A305800(n+5)]` -/
def P1633259933594418781.Spec : Prop :=
  ∀ n, (P1633259933594418781.a n : ℤ) = A120227 (n + 1)

end A120227

/-! ## A120227.P17253823444617547825

`eq[A088212(n+1), A343371(A090771(n+1))]`
-/

namespace A120227.P17253823444617547825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 (A090771 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120227.P17253823444617547825

namespace A120227

/-- `eq[A088212(n+1), A343371(A090771(n+1))]` -/
def P17253823444617547825.Spec : Prop :=
  ∀ n, (P17253823444617547825.a n : ℤ) = A120227 (n + 1)

end A120227

/-! ## A120227.P13323104252750354582

`eq[A001065(A090771(n+1)), A001065(n+5)]`
-/

namespace A120227.P13323104252750354582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A090771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120227.P13323104252750354582

namespace A120227

/-- `eq[A001065(A090771(n+1)), A001065(n+5)]` -/
def P13323104252750354582.Spec : Prop :=
  ∀ n, (P13323104252750354582.a n : ℤ) = A120227 (n + 1)

end A120227

/-! ## A120227.P4667428748430235097

`eq[A001222(A016861(n)), A046094(n+5)]`
-/

namespace A120227.P4667428748430235097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016861 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120227.P4667428748430235097

namespace A120227

/-- `eq[A001222(A016861(n)), A046094(n+5)]` -/
def P4667428748430235097.Spec : Prop :=
  ∀ n, (P4667428748430235097.a n : ℤ) = A120227 (n + 1)

end A120227

/-!
# A120228: Numbers k such that 8+k and 8*k+1 are prime.

The programs for A120228, the canonical program `A120228.P4195300899045194626` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120228 has offset 1).

The definition of A120228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120228.P4195300899045194626

`eq[A001222(n+8), A101264(4*n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120228

/-- `eq[A001222(n+8), A101264(4*n)]` -/
def P4195300899045194626.Spec : Prop :=
  ∀ n, (P4195300899045194626.a n : ℤ) = A120228 (n + 1)

theorem P4195300899045194626.correct : P4195300899045194626.Spec := by
  intro n
  simp only [A120228, Nat.add_sub_cancel]

end A120228

/-! ## A120228.P6535495529948064372

`eq[A000005(n+8), A336257(4*n)]`
-/

namespace A120228.P6535495529948064372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336257 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120228.P6535495529948064372

namespace A120228

/-- `eq[A000005(n+8), A336257(4*n)]` -/
def P6535495529948064372.Spec : Prop :=
  ∀ n, (P6535495529948064372.a n : ℤ) = A120228 (n + 1)

end A120228

/-! ## A120228.P11434470406234015001

`eq[A001065(n+8), A103961(A016813(n))]`
-/

namespace A120228.P11434470406234015001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120228.P11434470406234015001

namespace A120228

/-- `eq[A001065(n+8), A103961(A016813(n))]` -/
def P11434470406234015001.Spec : Prop :=
  ∀ n, (P11434470406234015001.a n : ℤ) = A120228 (n + 1)

end A120228

/-! ## A120228.P343777231552577925

`eq[A032742(8*(n+1)+1)-1, A048050(n+9)]+1`
-/

namespace A120228.P343777231552577925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (8 * (n + 1) + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120228.P343777231552577925

namespace A120228

/-- `eq[A032742(8*(n+1)+1)-1, A048050(n+9)]+1` -/
def P343777231552577925.Spec : Prop :=
  ∀ n, (P343777231552577925.a n : ℤ) = A120228 (n + 1)

end A120228

/-! ## A120228.P14230742912146423132

`eq[A001222(n+8), A032742(A017077(n))]`
-/

namespace A120228.P14230742912146423132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120228.P14230742912146423132

namespace A120228

/-- `eq[A001222(n+8), A032742(A017077(n))]` -/
def P14230742912146423132.Spec : Prop :=
  ∀ n, (P14230742912146423132.a n : ℤ) = A120228 (n + 1)

end A120228

/-!
# A120229: Split-floor-multiplier sequence (SFMS) using multipliers 1/3 and 3. The SFMS using multipliers r and s is here introduced: for every positive integer n and positive real number r, let [rn] abbreviate floor(rn). Then SFMS(r, s), where max {r, s} > 1, is the sequence a defined by a(n)=[rn] if [rn] > 0 and is not already in a and a(n) = [sn] otherwise.

The programs for A120229, the canonical program `A120229.P17111275470575324489` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120229 has offset 1).

The definition of A120229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120229.P17111275470575324489

`∏{p}[n+1, #^val(n+1, #²)]²*A007913(3*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120229

/-- `∏{p}[n+1, #^val(n+1, #²)]²*A007913(3*(n+1))` -/
def P17111275470575324489.Spec : Prop :=
  ∀ n, P17111275470575324489.a n = A120229 (n + 1)

theorem P17111275470575324489.correct : P17111275470575324489.Spec := by
  intro n
  simp only [A120229, Nat.add_sub_cancel]

end A120229

/-! ## A120229.P8474969257529745856

`A120230(n+1)*A307150(n+1)/A307266(n+1)`
-/

namespace A120229.P8474969257529745856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120230 (n + 1) * A307150 (n + 1) : ℚ) / (A307266 (n + 1) : ℚ)

end

end A120229.P8474969257529745856

namespace A120229

/-- `A120230(n+1)*A307150(n+1)/A307266(n+1)` -/
def P8474969257529745856.Spec : Prop :=
  ∀ n, P8474969257529745856.a n = (A120229 (n + 1) : ℚ)

end A120229

/-! ## A120229.P3659199022812005997

`gcd(∑[6*n], A307150(2*(n+1)))`
-/

namespace A120229.P3659199022812005997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A307150 (2 * (n + 1)))

end

end A120229.P3659199022812005997

namespace A120229

/-- `gcd(∑[6*n], A307150(2*(n+1)))` -/
def P3659199022812005997.Spec : Prop :=
  ∀ n, (P3659199022812005997.a n : ℤ) = A120229 (n + 1)

end A120229

/-! ## A120229.P12583793498484968499

`A307150((n+1)*2^(-1)^val(n+1, 2))`
-/

namespace A120229.P12583793498484968499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat

end

end A120229.P12583793498484968499

namespace A120229

/-- `A307150((n+1)*2^(-1)^val(n+1, 2))` -/
def P12583793498484968499.Spec : Prop :=
  ∀ n, P12583793498484968499.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P4416151312187435357

`A307150(2*(n+1)/(val(n+1, 2)%2+1)²)`
-/

namespace A120229.P4416151312187435357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) ^ 2 : ℕ) : ℚ))).toNat

end

end A120229.P4416151312187435357

namespace A120229

/-- `A307150(2*(n+1)/(val(n+1, 2)%2+1)²)` -/
def P4416151312187435357.Spec : Prop :=
  ∀ n, P4416151312187435357.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P3378960875580321353

`A307150(A073675(n+1))`
-/

namespace A120229.P3378960875580321353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (A073675 (n + 1)).toNat

end

end A120229.P3378960875580321353

namespace A120229

/-- `A307150(A073675(n+1))` -/
def P3378960875580321353.Spec : Prop :=
  ∀ n, P3378960875580321353.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P523868484884906758

`A307150(A118966(n+2)-1)`
-/

namespace A120229.P523868484884906758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (A118966 (n + 2) - 1).toNat

end

end A120229.P523868484884906758

namespace A120229

/-- `A307150(A118966(n+2)-1)` -/
def P523868484884906758.Spec : Prop :=
  ∀ n, P523868484884906758.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P1564441352982780509

`A307267(A307266(n+1))`
-/

namespace A120229.P1564441352982780509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A307266 (n + 1)).toNat

end

end A120229.P1564441352982780509

namespace A120229

/-- `A307267(A307266(n+1))` -/
def P1564441352982780509.Spec : Prop :=
  ∀ n, P1564441352982780509.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P9784125433725251515

`A307267(A073675(A120230(n+1)))`
-/

namespace A120229.P9784125433725251515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A073675 (A120230 (n + 1)).toNat).toNat

end

end A120229.P9784125433725251515

namespace A120229

/-- `A307267(A073675(A120230(n+1)))` -/
def P9784125433725251515.Spec : Prop :=
  ∀ n, P9784125433725251515.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P17338913126049785218

`A307150(A059897(∑[n+2]))`
-/

namespace A120229.P17338913126049785218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (A059897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120229.P17338913126049785218

namespace A120229

/-- `A307150(A059897(∑[n+2]))` -/
def P17338913126049785218.Spec : Prop :=
  ∀ n, P17338913126049785218.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P4151317777714257543

`A059897(∑[n+3]+1)`
-/

namespace A120229.P4151317777714257543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A120229.P4151317777714257543

namespace A120229

/-- `A059897(∑[n+3]+1)` -/
def P4151317777714257543.Spec : Prop :=
  ∀ n, P4151317777714257543.a n = A120229 (n + 1)

end A120229

/-! ## A120229.P13271588210787395383

`or(char[2], A059897(A167614(n+1)))`
-/

namespace A120229.P13271588210787395383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A059897 (A167614 (n + 1)).toNat)

end

end A120229.P13271588210787395383

namespace A120229

/-- `or(char[2], A059897(A167614(n+1)))` -/
def P13271588210787395383.Spec : Prop :=
  ∀ n, P13271588210787395383.a n = A120229 (n + 1)

end A120229

/-!
# A120230: Split-floor-multiplier sequence (SFMS) using multipliers 1/4 and 4. (SFMS is defined at A120229.)

The programs for A120230, the canonical program `A120230.P15130862558753472090` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120230 has offset 1).

The definition of A120230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120230.P772257200364728939

`A120229(n+1)*A307266(n+1)/A307150(n+1)`
-/

namespace A120230.P772257200364728939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120229 (n + 1) * A307266 (n + 1) : ℚ) / (A307150 (n + 1) : ℚ)

end

end A120230.P772257200364728939

namespace A120230

/-- `A120229(n+1)*A307266(n+1)/A307150(n+1)` -/
def P772257200364728939.Spec : Prop :=
  ∀ n, P772257200364728939.a n = (A120230 (n + 1) : ℚ)

end A120230

/-! ## A120230.P4757559955147405939

`A307266(A073675(n+1))`
-/

namespace A120230.P4757559955147405939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A073675 (n + 1)).toNat

end

end A120230.P4757559955147405939

namespace A120230

/-- `A307266(A073675(n+1))` -/
def P4757559955147405939.Spec : Prop :=
  ∀ n, P4757559955147405939.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P15130862558753472090

`A274611(A274611(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A120230

/-- `A274611(A274611(n+1))` -/
def P15130862558753472090.Spec : Prop :=
  ∀ n, P15130862558753472090.a n = A120230 (n + 1)

theorem P15130862558753472090.correct : P15130862558753472090.Spec := by
  intro n
  simp only [A120230, Nat.add_sub_cancel]

end A120230

/-! ## A120230.P4849103871724969285

`A307266(A118966(n+2)-1)`
-/

namespace A120230.P4849103871724969285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A118966 (n + 2) - 1).toNat

end

end A120230.P4849103871724969285

namespace A120230

/-- `A307266(A118966(n+2)-1)` -/
def P4849103871724969285.Spec : Prop :=
  ∀ n, P4849103871724969285.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P10347215911231123095

`A307267(A307150(n+1))`
-/

namespace A120230.P10347215911231123095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A307150 (n + 1)).toNat

end

end A120230.P10347215911231123095

namespace A120230

/-- `A307267(A307150(n+1))` -/
def P10347215911231123095.Spec : Prop :=
  ∀ n, P10347215911231123095.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P13094146300085883395

`A307267(A073675(A120229(n+1)))`
-/

namespace A120230.P13094146300085883395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A073675 (A120229 (n + 1)).toNat).toNat

end

end A120230.P13094146300085883395

namespace A120230

/-- `A307267(A073675(A120229(n+1)))` -/
def P13094146300085883395.Spec : Prop :=
  ∀ n, P13094146300085883395.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P6478870613959150720

`A307266(A059897(∑[n+2]))`
-/

namespace A120230.P6478870613959150720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A059897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120230.P6478870613959150720

namespace A120230

/-- `A307266(A059897(∑[n+2]))` -/
def P6478870613959150720.Spec : Prop :=
  ∀ n, P6478870613959150720.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P17566892243024745856

`A059897(∑[n+4]+3)`
-/

namespace A120230.P17566892243024745856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A120230.P17566892243024745856

namespace A120230

/-- `A059897(∑[n+4]+3)` -/
def P17566892243024745856.Spec : Prop :=
  ∀ n, P17566892243024745856.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P1054770586792390842

`A059897(Δ[A008778(n)]+6)%(n+4)²`
-/

namespace A120230.P1054770586792390842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059897 (f1 (n + 1) - f1 n + 6).toNat) ((n + 4) ^ 2 : ℤ)

end

end A120230.P1054770586792390842

namespace A120230

/-- `A059897(Δ[A008778(n)]+6)%(n+4)²` -/
def P1054770586792390842.Spec : Prop :=
  ∀ n, P1054770586792390842.a n = A120230 (n + 1)

end A120230

/-! ## A120230.P2798517183798382794

`(n+1)/2^val(n+1, 2)*A126006(2^val(n+1, 2))`
-/

namespace A120230.P2798517183798382794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A126006 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A120230.P2798517183798382794

namespace A120230

/-- `(n+1)/2^val(n+1, 2)*A126006(2^val(n+1, 2))` -/
def P2798517183798382794.Spec : Prop :=
  ∀ n, P2798517183798382794.a n = (A120230 (n + 1) : ℚ)

end A120230

/-!
# A120233: Split-floor-multiplier sequence (SFMS) using multipliers 3/4 and 4/3. (SFMS is defined at A120229.).

The programs for A120233, there is no canonical definition to state claims against.
-/

/-! ## A120233.P12450099966469802377

`A265667(∑[A088153(n)!])`
-/

namespace A120233.P12450099966469802377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120233.P12450099966469802377

/-! ## A120233.P14746669929491879549

`A265667(∑[A185035(n)!])`
-/

namespace A120233.P14746669929491879549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185035 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120233.P14746669929491879549

/-! ## A120233.P2617136111902518657

`A265667(∑[A185235(n)!])`
-/

namespace A120233.P2617136111902518657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120233.P2617136111902518657

/-! ## A120233.P7664713197307589442

`A338743(A249157(n+1)+2)`
-/

namespace A120233.P7664713197307589442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338743 (A249157 (n + 1) + 2).toNat

end

end A120233.P7664713197307589442

/-!
# A120234: Inverse of A120233.

The programs for A120234, there is no canonical definition to state claims against.
-/

/-! ## A120234.P15466871073649589130

`A083544(A237420(n)+A187829(n+1))`
-/

namespace A120234.P15466871073649589130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A237420 n + A187829 (n + 1)).toNat

end

end A120234.P15466871073649589130

/-! ## A120234.P14368444382399305550

`A194285(A209720(n+3))+floor(lcm(2, 3*n+1)/4)`
-/

namespace A120234.P14368444382399305550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A209720 (n + 3)).toNat + ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋

end

end A120234.P14368444382399305550

/-! ## A120234.P8048254699118607101

`A072411(A051437(n))+A056239(n+1)`
-/

namespace A120234.P8048254699118607101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A051437 n).toNat + A056239 (n + 1)

end

end A120234.P8048254699118607101

/-! ## A120234.P1966886693924070169

`A030300(A147036(n+1))+A006368(n)`
-/

namespace A120234.P1966886693924070169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A147036 (n + 1)).toNat + A006368 n

end

end A120234.P1966886693924070169

/-! ## A120234.P443828649698659322

`A097325(A135568(n))+A006368(n)`
-/

namespace A120234.P443828649698659322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A135568 n).toNat + A006368 n

end

end A120234.P443828649698659322

/-!
# A120241: a(n) = (n - 2^floor(log(n)/log(2)) + 1)-th integer among those positive integers not among the earlier terms of the sequence.

The programs for A120241, there is no canonical definition to state claims against.
-/

/-! ## A120241.P12374660555193175519

`A400366(A369901(n+1))`
-/

namespace A120241.P12374660555193175519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400366 (A369901 (n + 1)).toNat

end

end A120241.P12374660555193175519

/-!
# A120242: Inverse permutation to permutation sequence A120241.

The programs for A120242, there is no canonical definition to state claims against.
-/

/-! ## A120242.P6512419760128712999

`A212652(A082662(n+1))`
-/

namespace A120242.P6512419760128712999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A082662 (n + 1)).toNat

end

end A120242.P6512419760128712999

/-! ## A120242.P15218288775930132799

`and(A000203(2^n), A309079(A082662(n+1)))`
-/

namespace A120242.P15218288775930132799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (2 ^ n)) (A309079 (A082662 (n + 1)).toNat)

end

end A120242.P15218288775930132799

/-! ## A120242.P6769900903631275746

`A309079(A082662(n+1)%A178469(3*n+4))`
-/

namespace A120242.P6769900903631275746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309079 (Int.tmod (A082662 (n + 1)) (A178469 (3 * n + 4))).toNat

end

end A120242.P6769900903631275746

/-! ## A120242.P18144036451413448695

`A309079(A082662(n+1)%A117539(n))`
-/

namespace A120242.P18144036451413448695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309079 (Int.tmod (A082662 (n + 1)) (A117539 n)).toNat

end

end A120242.P18144036451413448695

/-! ## A120242.P1641300828001639334

`A309079(A082662(n+1))%A000040(2^n)`
-/

namespace A120242.P1641300828001639334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309079 (A082662 (n + 1)).toNat) (A000040 (2 ^ n))

end

end A120242.P1641300828001639334

/-!
# A120243: Numbers k such that {k*sqrt(2)} < 1/2, where { } = fractional part.

The programs for A120243, the canonical program `A120243.P8412210091431713488` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120243 has offset 1).

The definition of A120243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120243.P17894589596347624912

`eq[0, floor(sqrt(8)*(n+1))%2]+1`
-/

namespace A120243.P17894589596347624912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (8 : ℝ) * (n + 1 : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120243.P17894589596347624912

namespace A120243

/-- `eq[0, floor(sqrt(8)*(n+1))%2]+1` -/
def P17894589596347624912.Spec : Prop :=
  ∀ n, (P17894589596347624912.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P8561685572713863482

`A120750(Δ[n²])`
-/

namespace A120243.P8561685572713863482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120243.P8561685572713863482

namespace A120243

/-- `A120750(Δ[n²])` -/
def P8561685572713863482.Spec : Prop :=
  ∀ n, P8561685572713863482.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P17511348691991067016

`A120751(2*(n+1))`
-/

namespace A120243.P17511348691991067016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120751 (2 * (n + 1))

end

end A120243.P17511348691991067016

namespace A120243

/-- `A120751(2*(n+1))` -/
def P17511348691991067016.Spec : Prop :=
  ∀ n, P17511348691991067016.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P11126522919124551314

`eq[0, A197879(n+1)]+1`
-/

namespace A120243.P11126522919124551314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120243.P11126522919124551314

namespace A120243

/-- `eq[0, A197879(n+1)]+1` -/
def P11126522919124551314.Spec : Prop :=
  ∀ n, (P11126522919124551314.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P15335719933249020123

`lt[1, A024539(n+1)]+1`
-/

namespace A120243.P15335719933249020123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120243.P15335719933249020123

namespace A120243

/-- `lt[1, A024539(n+1)]+1` -/
def P15335719933249020123.Spec : Prop :=
  ∀ n, (P15335719933249020123.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P17481480195686572409

`lt[1, A068515(n+1)]+1`
-/

namespace A120243.P17481480195686572409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A120243.P17481480195686572409

namespace A120243

/-- `lt[1, A068515(n+1)]+1` -/
def P17481480195686572409.Spec : Prop :=
  ∀ n, (P17481480195686572409.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P3841464449828626339

`lt[A190544(n+1), 2]+1`
-/

namespace A120243.P3841464449828626339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A120243.P3841464449828626339

namespace A120243

/-- `lt[A190544(n+1), 2]+1` -/
def P3841464449828626339.Spec : Prop :=
  ∀ n, (P3841464449828626339.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P15204659021221017164

`eq[2, gcd(2, A121488(n+1))]+1`
-/

namespace A120243.P15204659021221017164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A121488 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A120243.P15204659021221017164

namespace A120243

/-- `eq[2, gcd(2, A121488(n+1))]+1` -/
def P15204659021221017164.Spec : Prop :=
  ∀ n, (P15204659021221017164.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P15274955697302444373

`A026252(A190486(n+1))`
-/

namespace A120243.P15274955697302444373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A190486 (n + 1)).toNat

end

end A120243.P15274955697302444373

namespace A120243

/-- `A026252(A190486(n+1))` -/
def P15274955697302444373.Spec : Prop :=
  ∀ n, P15274955697302444373.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P14285466764645599115

`A026249(A190763(n+1))`
-/

namespace A120243.P14285466764645599115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A190763 (n + 1)).toNat

end

end A120243.P14285466764645599115

namespace A120243

/-- `A026249(A190763(n+1))` -/
def P14285466764645599115.Spec : Prop :=
  ∀ n, P14285466764645599115.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P2248814841056134848

`A026249(A190765(n+1))`
-/

namespace A120243.P2248814841056134848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A190765 (n + 1)).toNat

end

end A120243.P2248814841056134848

namespace A120243

/-- `A026249(A190765(n+1))` -/
def P2248814841056134848.Spec : Prop :=
  ∀ n, P2248814841056134848.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P8864699985784711660

`lt[1, A040001(A198263(n)+1)]`
-/

namespace A120243.P8864699985784711660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A198263 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120243.P8864699985784711660

namespace A120243

/-- `lt[1, A040001(A198263(n)+1)]` -/
def P8864699985784711660.Spec : Prop :=
  ∀ n, (P8864699985784711660.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P8412210091431713488

`eq[1, A019426(A001951(2*n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120243

/-- `eq[1, A019426(A001951(2*n))]` -/
def P8412210091431713488.Spec : Prop :=
  ∀ n, (P8412210091431713488.a n : ℤ) = A120243 (n + 1)

theorem P8412210091431713488.correct : P8412210091431713488.Spec := by
  intro n
  simp only [A120243, Nat.add_sub_cancel]

end A120243

/-! ## A120243.P2034514759722999340

`lt[2, A020639(A198263(n)+2)]`
-/

namespace A120243.P2034514759722999340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A198263 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A120243.P2034514759722999340

namespace A120243

/-- `lt[2, A020639(A198263(n)+2)]` -/
def P2034514759722999340.Spec : Prop :=
  ∀ n, (P2034514759722999340.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P3939389589842507338

`eq[1, A019431(A195179(n)+n)]`
-/

namespace A120243.P3939389589842507338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A195179 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A120243.P3939389589842507338

namespace A120243

/-- `eq[1, A019431(A195179(n)+n)]` -/
def P3939389589842507338.Spec : Prop :=
  ∀ n, (P3939389589842507338.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P11919898279134953030

`eq[A106035(2*n), A144611(n)]`
-/

namespace A120243.P11919898279134953030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106035 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A120243.P11919898279134953030

namespace A120243

/-- `eq[A106035(2*n), A144611(n)]` -/
def P11919898279134953030.Spec : Prop :=
  ∀ n, (P11919898279134953030.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P1609305804150424527

`eq[2, A020639(A022842(n+1))]+1`
-/

namespace A120243.P1609305804150424527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022842 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A120243.P1609305804150424527

namespace A120243

/-- `eq[2, A020639(A022842(n+1))]+1` -/
def P1609305804150424527.Spec : Prop :=
  ∀ n, (P1609305804150424527.a n : ℤ) = A120243 (n + 1)

end A120243

/-! ## A120243.P10443263226673855960

`A190763(n+1)-A190486(n+1)`
-/

namespace A120243.P10443263226673855960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (n + 1) - A190486 (n + 1)

end

end A120243.P10443263226673855960

namespace A120243

/-- `A190763(n+1)-A190486(n+1)` -/
def P10443263226673855960.Spec : Prop :=
  ∀ n, P10443263226673855960.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P10629471801668177022

`A190486(n+1)-A190765(n+1)`
-/

namespace A120243.P10629471801668177022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190486 (n + 1) - A190765 (n + 1)

end

end A120243.P10629471801668177022

namespace A120243

/-- `A190486(n+1)-A190765(n+1)` -/
def P10629471801668177022.Spec : Prop :=
  ∀ n, P10629471801668177022.a n = A120243 (n + 1)

end A120243

/-! ## A120243.P9485671365862384907

`∪[A080754(n+1), A190546(n+1)]`
-/

namespace A120243.P9485671365862384907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120243.P9485671365862384907

namespace A120243

/-- `∪[A080754(n+1), A190546(n+1)]` -/
def P9485671365862384907.Spec : Prop :=
  ∀ n, (P9485671365862384907.a n : ℤ) = A120243 (n + 1)

end A120243

/-!
# A120244: a(1) = 1. a(m(m+1)/2 + k) = a(m) + k, 1 <= k <= m+1, m >= 1.

The programs for A120244, the canonical program `A120244.P12666156708168537595` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120244 has offset 1).

The definition of A120244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120244.P868941073319886267

`A002260(n+1)+a(comp[∑[n]]-(n+3))` with `a(0)=1`
-/

namespace A120244.P868941073319886267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002260 (n + 1) + a (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 3))

end

end A120244.P868941073319886267

namespace A120244

/-- `A002260(n+1)+a(comp[∑[n]]-(n+3))` -/
def P868941073319886267.Spec : Prop :=
  ∀ n, P868941073319886267.a n = A120244 (n + 1)

end A120244

/-! ## A120244.P12666156708168537595

`A002262(n)+a(A003056(n)-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120244

/-- `A002262(n)+a(A003056(n)-1)+1` -/
def P12666156708168537595.Spec : Prop :=
  ∀ n, P12666156708168537595.a n = A120244 (n + 1)

theorem P12666156708168537595.correct : P12666156708168537595.Spec := by
  intro n
  simp only [A120244, Nat.add_sub_cancel]

end A120244

/-! ## A120244.P8668783050925051933

`A002262(n)+a(A002024(n+1)-2)+1` with `a(0)=1`
-/

namespace A120244.P8668783050925051933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002262 n + (a (A002024 (n + 1) - 2).toNat + 1)

end

end A120244.P8668783050925051933

namespace A120244

/-- `A002262(n)+a(A002024(n+1)-2)+1` -/
def P8668783050925051933.Spec : Prop :=
  ∀ n, P8668783050925051933.a n = A120244 (n + 1)

end A120244

/-! ## A120244.P15539399834297774278

`A002262(n)+a(A003057(n+2)-3)+1` with `a(0)=1`
-/

namespace A120244.P15539399834297774278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002262 n + a (A003057 (n + 2) - 3).toNat + 1

end

end A120244.P15539399834297774278

namespace A120244

/-- `A002262(n)+a(A003057(n+2)-3)+1` -/
def P15539399834297774278.Spec : Prop :=
  ∀ n, P15539399834297774278.a n = A120244 (n + 1)

end A120244

/-! ## A120244.P803016502806307519

`A000005(A059268(n))+a(A003056(n)-1)` with `a(0)=1`
-/

namespace A120244.P803016502806307519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A059268 n).toNat + a (A003056 n - 1).toNat

end

end A120244.P803016502806307519

namespace A120244

/-- `A000005(A059268(n))+a(A003056(n)-1)` -/
def P803016502806307519.Spec : Prop :=
  ∀ n, P803016502806307519.a n = A120244 (n + 1)

end A120244

/-!
# A120245: a(1) = 1. a(m(m+1)/2 + k) = a(m) + a(k), 1 <= k <= m+1, m >= 1.

The programs for A120245, the canonical program `A120245.P7639101621087687490` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120245 has offset 1).

The definition of A120245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120245.P7639101621087687490

`a(A003056(n)-1)+a(A002262(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120245

/-- `a(A003056(n)-1)+a(A002262(n))` -/
def P7639101621087687490.Spec : Prop :=
  ∀ n, (P7639101621087687490.a n : ℤ) = A120245 (n + 1)

theorem P7639101621087687490.correct : P7639101621087687490.Spec := by
  intro n
  simp only [A120245, Nat.add_sub_cancel]

end A120245

/-! ## A120245.P13535420376284434379

`A318322(3*A100851(n))`
-/

namespace A120245.P13535420376284434379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318322 (3 * A100851 n).toNat

end

end A120245.P13535420376284434379

namespace A120245

/-- `A318322(3*A100851(n))` -/
def P13535420376284434379.Spec : Prop :=
  ∀ n, P13535420376284434379.a n = A120245 (n + 1)

end A120245

/-! ## A120245.P14345182025628458826

`A120244(n+1)-A120251(A002262(n)!)`
-/

namespace A120245.P14345182025628458826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120244 (n + 1) - A120251 (Nat.factorial (A002262 n).toNat)

end

end A120245.P14345182025628458826

namespace A120245

/-- `A120244(n+1)-A120251(A002262(n)!)` -/
def P14345182025628458826.Spec : Prop :=
  ∀ n, P14345182025628458826.a n = A120245 (n + 1)

end A120245

/-! ## A120245.P14466850451311260785

`A120244(n+1)-A120251(A025668(n+1)!)`
-/

namespace A120245.P14466850451311260785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120244 (n + 1) - A120251 (Nat.factorial (A025668 (n + 1)).toNat)

end

end A120245.P14466850451311260785

namespace A120245

/-- `A120244(n+1)-A120251(A025668(n+1)!)` -/
def P14466850451311260785.Spec : Prop :=
  ∀ n, P14466850451311260785.a n = A120245 (n + 1)

end A120245

/-! ## A120245.P8700078214069515763

`A120244(n+1)-A120251(A025675(n+1)!)`
-/

namespace A120245.P8700078214069515763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120244 (n + 1) - A120251 (Nat.factorial (A025675 (n + 1)).toNat)

end

end A120245.P8700078214069515763

namespace A120245

/-- `A120244(n+1)-A120251(A025675(n+1)!)` -/
def P8700078214069515763.Spec : Prop :=
  ∀ n, P8700078214069515763.a n = A120245 (n + 1)

end A120245

/-!
# A120246: a(1) = 1. a(m(m+1)/2 + k) = m + a(k), 1 <= k <= m+1, m >= 1.

The programs for A120246, the canonical program `A120246.P10095620787703275230` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120246 has offset 1).

The definition of A120246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120246.P11696200888895502737

`row(n)+a(col(n))` with `a(0)=1`
-/

namespace A120246.P11696200888895502737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n + a (SequenceMachineLib.triCol n)

end

end A120246.P11696200888895502737

namespace A120246

/-- `row(n)+a(col(n))` -/
def P11696200888895502737.Spec : Prop :=
  ∀ n, (P11696200888895502737.a n : ℤ) = A120246 (n + 1)

end A120246

/-! ## A120246.P15538821813801893152

`row(n)+a(log2(A059268(n)))` with `a(0)=1`
-/

namespace A120246.P15538821813801893152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triRow n + a (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A120246.P15538821813801893152

namespace A120246

/-- `row(n)+a(log2(A059268(n)))` -/
def P15538821813801893152.Spec : Prop :=
  ∀ n, (P15538821813801893152.a n : ℤ) = A120246 (n + 1)

end A120246

/-! ## A120246.P10095620787703275230

`A003056(n)+a(A002262(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120246

/-- `A003056(n)+a(A002262(n))` -/
def P10095620787703275230.Spec : Prop :=
  ∀ n, P10095620787703275230.a n = A120246 (n + 1)

theorem P10095620787703275230.correct : P10095620787703275230.Spec := by
  intro n
  simp only [A120246, Nat.add_sub_cancel]

end A120246

/-! ## A120246.P1660281047959431400

`A003056(n)+a(A048151(n))` with `a(0)=1`
-/

namespace A120246.P1660281047959431400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a (A048151 n).toNat

end

end A120246.P1660281047959431400

namespace A120246

/-- `A003056(n)+a(A048151(n))` -/
def P1660281047959431400.Spec : Prop :=
  ∀ n, P1660281047959431400.a n = A120246 (n + 1)

end A120246

/-! ## A120246.P6816733029867491317

`A003056(n)+a(log2(A059268(n)))` with `a(0)=1`
-/

namespace A120246.P6816733029867491317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A120246.P6816733029867491317

namespace A120246

/-- `A003056(n)+a(log2(A059268(n)))` -/
def P6816733029867491317.Spec : Prop :=
  ∀ n, P6816733029867491317.a n = A120246 (n + 1)

end A120246

/-! ## A120246.P510754732348081412

`a(A002262(n))+log2(A137688(n))` with `a(0)=1`
-/

namespace A120246.P510754732348081412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (A002262 n).toNat + Real.logb 2 (A137688 n : ℝ)

end

end A120246.P510754732348081412

namespace A120246

/-- `a(A002262(n))+log2(A137688(n))` -/
def P510754732348081412.Spec : Prop :=
  ∀ n, P510754732348081412.a n = (A120246 (n + 1) : ℝ)

end A120246

/-! ## A120246.P7477036464927673402

`Δ[A006463(n)]+a(A002262(n))` with `a(0)=1`
-/

namespace A120246.P7477036464927673402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (A002262 n).toNat

end

end A120246.P7477036464927673402

namespace A120246

/-- `Δ[A006463(n)]+a(A002262(n))` -/
def P7477036464927673402.Spec : Prop :=
  ∀ n, P7477036464927673402.a n = A120246 (n + 1)

end A120246

/-! ## A120246.P16984642326078793586

`A003056(n)+a(n-A057944(n))` with `a(0)=1`
-/

namespace A120246.P16984642326078793586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a ((n : ℤ) - A057944 n).toNat

end

end A120246.P16984642326078793586

namespace A120246

/-- `A003056(n)+a(n-A057944(n))` -/
def P16984642326078793586.Spec : Prop :=
  ∀ n, P16984642326078793586.a n = A120246 (n + 1)

end A120246

/-! ## A120246.P9284517892274477733

`A003056(n)+a(A057554(Δ[n²]))` with `a(0)=1`
-/

namespace A120246.P9284517892274477733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A120246.P9284517892274477733

namespace A120246

/-- `A003056(n)+a(A057554(Δ[n²]))` -/
def P9284517892274477733.Spec : Prop :=
  ∀ n, P9284517892274477733.a n = A120246 (n + 1)

end A120246

/-! ## A120246.P3087021816307779380

`A002024(n+1)+a(A002262(n))-1` with `a(0)=1`
-/

namespace A120246.P3087021816307779380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002024 (n + 1) + (a (A002262 n).toNat - 1)

end

end A120246.P3087021816307779380

namespace A120246

/-- `A002024(n+1)+a(A002262(n))-1` -/
def P3087021816307779380.Spec : Prop :=
  ∀ n, P3087021816307779380.a n = A120246 (n + 1)

end A120246

/-! ## A120246.P14656418504178441158

`A003056(n)+a(A002260(n+1)-1)` with `a(0)=1`
-/

namespace A120246.P14656418504178441158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a (A002260 (n + 1) - 1).toNat

end

end A120246.P14656418504178441158

namespace A120246

/-- `A003056(n)+a(A002260(n+1)-1)` -/
def P14656418504178441158.Spec : Prop :=
  ∀ n, P14656418504178441158.a n = A120246 (n + 1)

theorem P14656418504178441158.correct : P14656418504178441158.Spec := by
  intro n
  simp only [A120246, Nat.add_sub_cancel, A120246.P14656418504178441158.a, A120246.P10095620787703275230.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A120246

/-! ## A120246.P5184378261068371538

`A330709(2*n)+a(A330709(2*n+1))` with `a(0)=1`
-/

namespace A120246.P5184378261068371538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A330709 (2 * n) + a (A330709 (2 * n + 1)).toNat

end

end A120246.P5184378261068371538

namespace A120246

/-- `A330709(2*n)+a(A330709(2*n+1))` -/
def P5184378261068371538.Spec : Prop :=
  ∀ n, P5184378261068371538.a n = A120246 (n + 1)

end A120246

/-!
# A120247: Triangle of Hankel transforms of binomial(n+k, k).

The programs for A120247, there is no canonical definition to state claims against.
-/

/-! ## A120247.P4236178889317424608

`A073165(n)/A133112(n+1)*A120257(n)`
-/

namespace A120247.P4236178889317424608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073165 n : ℚ) / (A133112 (n + 1) : ℚ) * (A120257 n : ℚ)

end

end A120247.P4236178889317424608

/-!
# A120249: Numerator of cfenc[n] (see definition in comments).

The programs for A120249, there is no canonical definition to state claims against.
-/

/-! ## A120249.P11297933413575826379

`A120250(A003961(n+1))`
-/

namespace A120249.P11297933413575826379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A003961 (n + 1)).toNat

end

end A120249.P11297933413575826379

/-! ## A120249.P12049340230861641323

`A120250(A045965(n+1))`
-/

namespace A120249.P12049340230861641323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A045965 (n + 1)).toNat

end

end A120249.P12049340230861641323

/-! ## A120249.P13629606781472752289

`A120250(A253885(n)+1)`
-/

namespace A120249.P13629606781472752289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A253885 n + 1).toNat

end

end A120249.P13629606781472752289

/-! ## A120249.P13091195087309124343

`A120250(or(1, A253885(n)))`
-/

namespace A120249.P13091195087309124343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (Int.lor 1 (A253885 n)).toNat

end

end A120249.P13091195087309124343

/-! ## A120249.P14867709091585729981

`A120250(xor(1, A253885(n)))`
-/

namespace A120249.P14867709091585729981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (Int.xor 1 (A253885 n)).toNat

end

end A120249.P14867709091585729981

/-! ## A120249.P1941466797452029105

`A120251(n+1)+A001511(n+1)*A120250(n+1)`
-/

namespace A120249.P1941466797452029105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120251 (n + 1) + A001511 (n + 1) * A120250 (n + 1)

end

end A120249.P1941466797452029105

/-!
# A120250: Denominator of cfenc(n) (see definition in comments).

The programs for A120250, there is no canonical definition to state claims against.
-/

/-! ## A120250.P15585270207236937630

`A120249(A064989(n+1))`
-/

namespace A120250.P15585270207236937630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A064989 (n + 1)).toNat

end

end A120250.P15585270207236937630

/-! ## A120250.P11908083913970243605

`A120249(A285728(2*(n+1)))`
-/

namespace A120250.P11908083913970243605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A285728 (2 * (n + 1))).toNat

end

end A120250.P11908083913970243605

/-! ## A120250.P1359329034714735685

`A120249(A200746(n+1)/(n+1))`
-/

namespace A120250.P1359329034714735685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A120250.P1359329034714735685

/-! ## A120250.P17912223207396175892

`A120249(A252463((n+1)/2^val(n+1, 2)))`
-/

namespace A120250.P17912223207396175892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A252463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A120250.P17912223207396175892

/-! ## A120250.P11179894923523882734

`A120249(A319627(n+1)*A330749(n+1))`
-/

namespace A120250.P11179894923523882734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A319627 (n + 1) * A330749 (n + 1)).toNat

end

end A120250.P11179894923523882734

/-! ## A120250.P9647462765763538801

`A120249(A353749(n+1)/A000010(n+1))`
-/

namespace A120250.P9647462765763538801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (SequenceMachineLib.roundAway ((A353749 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))).toNat

end

end A120250.P9647462765763538801

/-! ## A120250.P9307287879717187431

`A120249(A353791(n+1)/A003958(n+1))`
-/

namespace A120250.P9307287879717187431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (SequenceMachineLib.roundAway ((A353791 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A120250.P9307287879717187431

/-! ## A120250.P10528491473811454718

`A120249(2*(n+1))-A120249(n+1)`
-/

namespace A120250.P10528491473811454718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (2 * (n + 1)) - A120249 (n + 1)

end

end A120250.P10528491473811454718

/-! ## A120250.P3626604079303440587

`abs(A120249(A045965(n+1))-A120249(n+1))`
-/

namespace A120250.P3626604079303440587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A120249 (A045965 (n + 1)).toNat - A120249 (n + 1)|

end

end A120250.P3626604079303440587

/-! ## A120250.P18026803410095039124

`A120249(A000265(n+1))-A120251(n+1)`
-/

namespace A120250.P18026803410095039124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A000265 (n + 1)).toNat - A120251 (n + 1)

end

end A120250.P18026803410095039124

/-!
# A120251: A120249[n] modulo A120250[n].

The programs for A120251, there is no canonical definition to state claims against.
-/

/-! ## A120251.P8752310244609508885

`A120249(n+1)%A120250(n+1)`
-/

namespace A120251.P8752310244609508885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120249 (n + 1)) (A120250 (n + 1))

end

end A120251.P8752310244609508885

/-! ## A120251.P11063351759424989205

`A120250(3*(n+1))%A120250(n+1)`
-/

namespace A120251.P11063351759424989205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120250 (3 * (n + 1))) (A120250 (n + 1))

end

end A120251.P11063351759424989205

/-! ## A120251.P25520159757601508

`A120250(A064989(n+1))-char[2^n-1]`
-/

namespace A120251.P25520159757601508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A064989 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A120251.P25520159757601508

/-! ## A120251.P1027568874315468866

`A120249((n+1)/2^val(n+1, 2))-A120250(n+1)`
-/

namespace A120251.P1027568874315468866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat - A120250 (n + 1)

end

end A120251.P1027568874315468866

/-! ## A120251.P12074202846422352962

`A120249(A000265(n+1))-A120250(n+1)`
-/

namespace A120251.P12074202846422352962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A000265 (n + 1)).toNat - A120250 (n + 1)

end

end A120251.P12074202846422352962

/-! ## A120251.P3559602478430091455

`A120249(n+1)-A001511(n+1)*A120250(n+1)`
-/

namespace A120251.P3559602478430091455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (n + 1) - A001511 (n + 1) * A120250 (n + 1)

end

end A120251.P3559602478430091455

/-! ## A120251.P7748217317542549543

`A120250(A064989(n+1))%A000041(A036044(n))`
-/

namespace A120251.P7748217317542549543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120250 (A064989 (n + 1)).toNat) (A000041 (A036044 n).toNat)

end

end A120251.P7748217317542549543

/-!
# A120252: Number of primitive triangles with integer sides a<=b<=c and inradius n; primitive means gcd(a, b, c, n) = 1.

The programs for A120252, there is no canonical definition to state claims against.
-/

/-! ## A120252.P8768596327564187310

`∑{d}[n+1, A008683(#)*A120062((n+1)/#)]`
-/

namespace A120252.P8768596327564187310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A120062 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A120252.P8768596327564187310

/-!
# A120253: Number of subsets of integers in the interval [n^2+1, (n+1)^2-1] whose product is twice a square.

The programs for A120253, there is no canonical definition to state claims against.
-/

/-! ## A120253.P1955756235907705915

`2^A120254(n+1)`
-/

namespace A120253.P1955756235907705915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A120254 (n + 1) : ℤ)

end

end A120253.P1955756235907705915

/-! ## A120253.P8709112523030823563

`2^ceil(log2(A099500(n+1)))`
-/

namespace A120253.P8709112523030823563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (A099500 (n + 1) : ℝ)⌉ : ℤ)

end

end A120253.P8709112523030823563

/-! ## A120253.P18317641304261058943

`4^(A120254(n-log2(1/2))/2)`
-/

namespace A120253.P18317641304261058943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ ((A120254 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2 : ℝ)

end

end A120253.P18317641304261058943

/-! ## A120253.P16991453976740325571

`2^(2*(n+1)-A143346(n+1))`
-/

namespace A120253.P16991453976740325571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - A143346 (n + 1) : ℤ)

end

end A120253.P16991453976740325571

/-! ## A120253.P9087901903614579673

`A000079(A120254(n+1))`
-/

namespace A120253.P9087901903614579673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A120254 (n + 1)).toNat

end

end A120253.P9087901903614579673

/-! ## A120253.P3366441537534977265

`A011782(A120254(n+1)+1)`
-/

namespace A120253.P3366441537534977265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A120254 (n + 1) + 1).toNat

end

end A120253.P3366441537534977265

/-! ## A120253.P10725699483483810986

`A131577(A120254(n+1)+1)`
-/

namespace A120253.P10725699483483810986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A120254 (n + 1) + 1).toNat

end

end A120253.P10725699483483810986

/-! ## A120253.P3703390344045613356

`A016116(2*A120254(n+1))`
-/

namespace A120253.P3703390344045613356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A120254 (n + 1)).toNat

end

end A120253.P3703390344045613356

/-! ## A120253.P346770761689978382

`A000079(ceil(log2(A099500(n+1))))`
-/

namespace A120253.P346770761689978382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈Real.logb 2 (A099500 (n + 1) : ℝ)⌉.toNat

end

end A120253.P346770761689978382

/-! ## A120253.P15440321291550969407

`A059268(2*A120254(n+1)²)`
-/

namespace A120253.P15440321291550969407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A120254 (n + 1) ^ 2).toNat

end

end A120253.P15440321291550969407

/-!
# A120254: Number of independent nonempty subsets of integers in the interval [n^2+1, (n+1)^2-1] whose product is a square. Independence is over GF(2^m).

The programs for A120254, there is no canonical definition to state claims against.
-/

/-! ## A120254.P6428783939688506137

`2*(n+1)-A143346(n+1)`
-/

namespace A120254.P6428783939688506137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A143346 (n + 1)

end

end A120254.P6428783939688506137

/-! ## A120254.P17287086078284529971

`A004197(A143346(n+1)+∑[n])`
-/

namespace A120254.P17287086078284529971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A143346 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A120254.P17287086078284529971

/-! ## A120254.P1388288642918559425

`A025581(A143346(n+1)+∑[n])`
-/

namespace A120254.P1388288642918559425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A143346 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A120254.P1388288642918559425

/-! ## A120254.P14702532358831522920

`Δ[A002378(n)]%A143346(n+1)`
-/

namespace A120254.P14702532358831522920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A143346 (n + 1))

end

end A120254.P14702532358831522920

/-! ## A120254.P1158810126781740563

`Δ[A027688(n)]%A143346(n+1)`
-/

namespace A120254.P1158810126781740563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A143346 (n + 1))

end

end A120254.P1158810126781740563

/-! ## A120254.P10182097116579647424

`A005408(n)+1-A143346(n+1)`
-/

namespace A120254.P10182097116579647424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A143346 (n + 1))

end

end A120254.P10182097116579647424

/-! ## A120254.P15311396644230673153

`A005843(n)+2-A143346(n+1)`
-/

namespace A120254.P15311396644230673153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A143346 (n + 1))

end

end A120254.P15311396644230673153

/-! ## A120254.P14501431613557951887

`A004277(n+1)%A143346(n+1)`
-/

namespace A120254.P14501431613557951887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (n + 1)) (A143346 (n + 1))

end

end A120254.P14501431613557951887

/-! ## A120254.P7115192315670998467

`A005843(n+1)%A143346(n+1)`
-/

namespace A120254.P7115192315670998467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1)) (A143346 (n + 1))

end

end A120254.P7115192315670998467

/-! ## A120254.P13978324600325531362

`A163300(n+1)%A143346(n+1)`
-/

namespace A120254.P13978324600325531362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163300 (n + 1)) (A143346 (n + 1))

end

end A120254.P13978324600325531362

/-!
# A120256: a(n) = number of terms in the n-th row of A120255(n) = number of terms in A001177 equal to n.

The programs for A120256, the canonical program `A120256.P10376864766072904395` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120256 has offset 1).

The definition of A120256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120256.P10376864766072904395

`∑{d}[n+1, A008683(#)*A063375((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A120256

/-- `∑{d}[n+1, A008683(#)*A063375((n+1)/#)]` -/
def P10376864766072904395.Spec : Prop :=
  ∀ n, P10376864766072904395.a n = A120256 (n + 1)

theorem P10376864766072904395.correct : P10376864766072904395.Spec := by
  intro n
  simp only [A120256, Nat.add_sub_cancel]

end A120256

/-! ## A120256.P11289521769388736802

`A000975(gcd(A023645(n+1), A061713(n)))`
-/

namespace A120256.P11289521769388736802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (Int.gcd (A023645 (n + 1)) (A061713 n))

end

end A120256.P11289521769388736802

namespace A120256

/-- `A000975(gcd(A023645(n+1), A061713(n)))` -/
def P11289521769388736802.Spec : Prop :=
  ∀ n, P11289521769388736802.a n = A120256 (n + 1)

end A120256

/-! ## A120256.P6800825753044599647

`lcm(A064372(n+1), A345182(A077168(n)))`
-/

namespace A120256.P6800825753044599647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064372 (n + 1)) (A345182 (A077168 n).toNat)

end

end A120256.P6800825753044599647

namespace A120256

/-- `lcm(A064372(n+1), A345182(A077168(n)))` -/
def P6800825753044599647.Spec : Prop :=
  ∀ n, (P6800825753044599647.a n : ℤ) = A120256 (n + 1)

end A120256

/-! ## A120256.P8283429417964034781

`A255361(A079908(n)+A000217(2*(n+2)))`
-/

namespace A120256.P8283429417964034781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 (A079908 n + A000217 (2 * (n + 2))).toNat

end

end A120256.P8283429417964034781

namespace A120256

/-- `A255361(A079908(n)+A000217(2*(n+2)))` -/
def P8283429417964034781.Spec : Prop :=
  ∀ n, P8283429417964034781.a n = A120256 (n + 1)

end A120256

/-! ## A120256.P14341189721445235334

`A014626(A345182(n+1)%A005298(n+2))`
-/

namespace A120256.P14341189721445235334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 (Int.tmod (A345182 (n + 1)) (A005298 (n + 2))).toNat

end

end A120256.P14341189721445235334

namespace A120256

/-- `A014626(A345182(n+1)%A005298(n+2))` -/
def P14341189721445235334.Spec : Prop :=
  ∀ n, P14341189721445235334.a n = A120256 (n + 1)

end A120256

/-!
# A120258: Triangle of central coefficients of generalized Pascal-Narayana triangles.

The programs for A120258, there is no canonical definition to state claims against.
-/

/-! ## A120258.P15445239460789324343

`A103905(∑[1-char[∑[n]]]+1)`
-/

namespace A120258.P15445239460789324343
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103905 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A120258.P15445239460789324343

/-! ## A120258.P12896089518667663986

`and(-1, A103905(A122797(n+1)))`
-/

namespace A120258.P12896089518667663986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A103905 (A122797 (n + 1)).toNat)

end

end A120258.P12896089518667663986

/-! ## A120258.P18387171994096510156

`A103905(A122797(n+1))%A017057(n)`
-/

namespace A120258.P18387171994096510156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103905 (A122797 (n + 1)).toNat) (A017057 n)

end

end A120258.P18387171994096510156

/-! ## A120258.P15688391702411068684

`gcd(A000038(n), A103905(A122797(n+1)))`
-/

namespace A120258.P15688391702411068684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103905 (A122797 (n + 1)).toNat)

end

end A120258.P15688391702411068684

/-! ## A120258.P16400576316232379373

`A020985(n)²*A103905(A122797(n+1))`
-/

namespace A120258.P16400576316232379373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A103905 (A122797 (n + 1)).toNat

end

end A120258.P16400576316232379373

/-! ## A120258.P3685663632419049013

`A007318(∑[n])*A103905(A122797(n+1))`
-/

namespace A120258.P3685663632419049013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A103905 (A122797 (n + 1)).toNat

end

end A120258.P3685663632419049013

/-! ## A120258.P3977788792345697465

`A103905(A122797(n+1))+A008683(8*(n+1))`
-/

namespace A120258.P3977788792345697465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103905 (A122797 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A120258.P3977788792345697465

/-! ## A120258.P2620019373541515977

`A103905(A122797(n+1))+n*val(A000040(n+1), 2)`
-/

namespace A120258.P2620019373541515977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103905 (A122797 (n + 1)).toNat + (n * SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A120258.P2620019373541515977

/-! ## A120258.P18254332762440892599

`A007318((n%2)^n)+A103905(A122797(n+1))-1`
-/

namespace A120258.P18254332762440892599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n % 2) ^ n) + (A103905 (A122797 (n + 1)).toNat - 1)

end

end A120258.P18254332762440892599

/-!
# A120259: Row sums of number triangle A120258.

The programs for A120259, there is no canonical definition to state claims against.
-/

/-! ## A120259.P13748143189795028064

`A318052(2*n+1)+n!`
-/

namespace A120259.P13748143189795028064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318052 (2 * n + 1) + (Nat.factorial n : ℤ)

end

end A120259.P13748143189795028064

/-! ## A120259.P18392621058714317782

`∑[A325971(A108996(n))]`
-/

namespace A120259.P18392621058714317782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (A108996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120259.P18392621058714317782

/-!
# A120260: Diagonal sums of number triangle A120258.

The programs for A120260, there is no canonical definition to state claims against.
-/

/-! ## A120260.P4198777317434019093

`A109497(A054090(∑[n+2]))`
-/

namespace A120260.P4198777317434019093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A054090 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A120260.P4198777317434019093

/-! ## A120260.P13032799389807967266

`A008620(p?[A008629(n)]*A008624(n))`
-/

namespace A120260.P13032799389807967266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A008624 n).toNat

end

end A120260.P13032799389807967266

/-! ## A120260.P3869444448359241938

`A220658(A177483(n)+A000265(n+1))`
-/

namespace A120260.P3869444448359241938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A177483 n + A000265 (n + 1)).toNat

end

end A120260.P3869444448359241938

/-! ## A120260.P8257656301731222958

`A110656(A215335(n+1)+A134378(n))`
-/

namespace A120260.P8257656301731222958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A215335 (n + 1) + A134378 n).toNat

end

end A120260.P8257656301731222958

/-!
# A120262: Sequence relating to the benzene ring.

The programs for A120262, the canonical program `A120262.P3018896563762648066` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120262 has offset 0).

The definition of A120262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120262.P3018896563762648066

`ogf((1-3x+4x^3-x^4-6x^5)/(1-5x+6x^2+5x^3-14x^4+4x^6))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A120262

/-- `ogf((1-3x+4x^3-x^4-6x^5)/(1-5x+6x^2+5x^3-14x^4+4x^6))` -/
def P3018896563762648066.Spec : Prop :=
  ∀ n, P3018896563762648066.a n = A120262 n

theorem P3018896563762648066.correct : P3018896563762648066.Spec := by
  intro n
  simp only [A120262]

end A120262

/-!
# A120263: Ratio of the numerator of n*HarmonicNumber[n] to the numerator of HarmonicNumber[n]: A096617(n)/A001008(n).

The programs for A120263, the canonical program `A120263.P6050525716603868642` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120263 has offset 1).

The definition of A120263 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120263.P6050525716603868642

`A096617(n+1)/A001008(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A120263

/-- `A096617(n+1)/A001008(n+1)` -/
def P6050525716603868642.Spec : Prop :=
  ∀ n, P6050525716603868642.a n = (A120263 (n + 1) : ℚ)

end A120263

/-! ## A120263.P4640904800225366878

`A096617(n+1)*A110566(n+1)/A025529(n+1)`
-/

namespace A120263.P4640904800225366878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) * A110566 (n + 1) : ℚ) / (A025529 (n + 1) : ℚ)

end

end A120263.P4640904800225366878

namespace A120263

/-- `A096617(n+1)*A110566(n+1)/A025529(n+1)` -/
def P4640904800225366878.Spec : Prop :=
  ∀ n, P4640904800225366878.a n = (A120263 (n + 1) : ℚ)

end A120263

/-! ## A120263.P1543598622139553249

`ceil(ratio[A110566(A101279(2*n+1))])`
-/

namespace A120263.P1543598622139553249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A120263.P1543598622139553249

namespace A120263

/-- `ceil(ratio[A110566(A101279(2*n+1))])` -/
def P1543598622139553249.Spec : Prop :=
  ∀ n, P1543598622139553249.a n = A120263 (n + 1)

end A120263

/-! ## A120263.P3016952428549621128

`ceil(A110566(n+1)/A110566(A233583(n+1)))`
-/

namespace A120263.P3016952428549621128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110566 (n + 1) : ℚ) / (A110566 (A233583 (n + 1)).toNat : ℚ)⌉

end

end A120263.P3016952428549621128

namespace A120263

/-- `ceil(A110566(n+1)/A110566(A233583(n+1)))` -/
def P3016952428549621128.Spec : Prop :=
  ∀ n, P3016952428549621128.a n = A120263 (n + 1)

end A120263

/-! ## A120263.P11702548688469630111

`ceil(A335024(A233583(n+1))/A014683(n+1))`
-/

namespace A120263.P11702548688469630111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A335024 (A233583 (n + 1)).toNat : ℚ) / (A014683 (n + 1) : ℚ)⌉

end

end A120263.P11702548688469630111

namespace A120263

/-- `ceil(A335024(A233583(n+1))/A014683(n+1))` -/
def P11702548688469630111.Spec : Prop :=
  ∀ n, P11702548688469630111.a n = A120263 (n + 1)

end A120263

/-! ## A120263.P18085264157522923133

`ceil(A335024(A233583(n+1))/A048671(n+1))`
-/

namespace A120263.P18085264157522923133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A335024 (A233583 (n + 1)).toNat : ℚ) / (A048671 (n + 1) : ℚ)⌉

end

end A120263.P18085264157522923133

namespace A120263

/-- `ceil(A335024(A233583(n+1))/A048671(n+1))` -/
def P18085264157522923133.Spec : Prop :=
  ∀ n, P18085264157522923133.a n = A120263 (n + 1)

end A120263

/-! ## A120263.P9502962022400608391

`ceil(ratio[A110566(A233583(n+1))])`
-/

namespace A120263.P9502962022400608391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A120263.P9502962022400608391

namespace A120263

/-- `ceil(ratio[A110566(A233583(n+1))])` -/
def P9502962022400608391.Spec : Prop :=
  ∀ n, P9502962022400608391.a n = A120263 (n + 1)

end A120263

/-! ## A120263.P17260213194904474362

`floor(A027611(n+1)/A128438(n+1))`
-/

namespace A120263.P17260213194904474362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027611 (n + 1) : ℚ) / (A128438 (n + 1) : ℚ)⌋

end

end A120263.P17260213194904474362

namespace A120263

/-- `floor(A027611(n+1)/A128438(n+1))` -/
def P17260213194904474362.Spec : Prop :=
  ∀ n, P17260213194904474362.a n = A120263 (n + 1)

end A120263

/-! ## A120263.P11368110018257604561

`A027611(n+1)/A002944(n+1)*A110566(n+1)`
-/

namespace A120263.P11368110018257604561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) : ℚ) / (A002944 (n + 1) : ℚ) * (A110566 (n + 1) : ℚ)

end

end A120263.P11368110018257604561

namespace A120263

/-- `A027611(n+1)/A002944(n+1)*A110566(n+1)` -/
def P11368110018257604561.Spec : Prop :=
  ∀ n, P11368110018257604561.a n = (A120263 (n + 1) : ℚ)

end A120263

/-! ## A120263.P5152056811583113974

`gcd(n+1, A096617(n+1))`
-/

namespace A120263.P5152056811583113974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A096617 (n + 1))

end

end A120263.P5152056811583113974

namespace A120263

/-- `gcd(n+1, A096617(n+1))` -/
def P5152056811583113974.Spec : Prop :=
  ∀ n, (P5152056811583113974.a n : ℤ) = A120263 (n + 1)

end A120263

/-! ## A120263.P9154703248768417889

`gcd(A096617(n+1), A103517(n))`
-/

namespace A120263.P9154703248768417889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096617 (n + 1)) (A103517 n)

end

end A120263.P9154703248768417889

namespace A120263

/-- `gcd(A096617(n+1), A103517(n))` -/
def P9154703248768417889.Spec : Prop :=
  ∀ n, (P9154703248768417889.a n : ℤ) = A120263 (n + 1)

end A120263

/-! ## A120263.P966628037767775071

`A000027(n+1)/gcd(A000027(n+1), A002805(n+1))`
-/

namespace A120263.P966628037767775071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A002805 (n + 1)) : ℚ)

end

end A120263.P966628037767775071

namespace A120263

/-- `A000027(n+1)/gcd(A000027(n+1), A002805(n+1))` -/
def P966628037767775071.Spec : Prop :=
  ∀ n, P966628037767775071.a n = (A120263 (n + 1) : ℚ)

end A120263

/-! ## A120263.P14691943003440825998

`lcm(A000265(n+1), A002805(n+1))/A002805(n+1)`
-/

namespace A120263.P14691943003440825998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000265 (n + 1)) (A002805 (n + 1)) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A120263.P14691943003440825998

namespace A120263

/-- `lcm(A000265(n+1), A002805(n+1))/A002805(n+1)` -/
def P14691943003440825998.Spec : Prop :=
  ∀ n, P14691943003440825998.a n = (A120263 (n + 1) : ℚ)

end A120263

/-! ## A120263.P15917952296443148260

`gcd(n+1, A124837(A028310(n)))`
-/

namespace A120263.P15917952296443148260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A124837 (A028310 n).toNat)

end

end A120263.P15917952296443148260

namespace A120263

/-- `gcd(n+1, A124837(A028310(n)))` -/
def P15917952296443148260.Spec : Prop :=
  ∀ n, (P15917952296443148260.a n : ℤ) = A120263 (n + 1)

end A120263

/-! ## A120263.P15465826644923044691

`gcd(A119786(n+1), A121254(n+1))`
-/

namespace A120263.P15465826644923044691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119786 (n + 1)) (A121254 (n + 1))

end

end A120263.P15465826644923044691

namespace A120263

/-- `gcd(A119786(n+1), A121254(n+1))` -/
def P15465826644923044691.Spec : Prop :=
  ∀ n, (P15465826644923044691.a n : ℤ) = A120263 (n + 1)

end A120263

/-! ## A120263.P4607342410567320060

`lcm(A002805(n+2), n+1)/A002805(n+2)`
-/

namespace A120263.P4607342410567320060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002805 (n + 2)) (n + 1 : ℤ) : ℚ) / (A002805 (n + 2) : ℚ)

end

end A120263.P4607342410567320060

namespace A120263

/-- `lcm(A002805(n+2), n+1)/A002805(n+2)` -/
def P4607342410567320060.Spec : Prop :=
  ∀ n, P4607342410567320060.a n = (A120263 (n + 1) : ℚ)

end A120263

/-! ## A120263.P3021177505996550475

`gcd(A005408(A025480(n)), A160048(n+1))`
-/

namespace A120263.P3021177505996550475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 (A025480 n).toNat) (A160048 (n + 1))

end

end A120263.P3021177505996550475

namespace A120263

/-- `gcd(A005408(A025480(n)), A160048(n+1))` -/
def P3021177505996550475.Spec : Prop :=
  ∀ n, (P3021177505996550475.a n : ℤ) = A120263 (n + 1)

end A120263

/-!
# A120265: a(n) = numerator(Sum_{k=1..n} 1/k!).

The programs for A120265, there is no canonical definition to state claims against.
-/

/-! ## A120265.P10918078957650962453

`A061354(n+1)-A061355(n+1)`
-/

namespace A120265.P10918078957650962453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061354 (n + 1) - A061355 (n + 1)

end

end A120265.P10918078957650962453

/-! ## A120265.P15436664463500675546

`A002627(1+n)/A093101(n+1)`
-/

namespace A120265.P15436664463500675546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002627 (1 + n) : ℚ) / (A093101 (n + 1) : ℚ)

end

end A120265.P15436664463500675546

/-! ## A120265.P3841573484356580735

`A061354(n+1)-A093101(n)*A123899(n)`
-/

namespace A120265.P3841573484356580735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061354 (n + 1) - A093101 n * A123899 n

end

end A120265.P3841573484356580735

/-! ## A120265.P9314965649532843774

`(A000522(n+1)-A000142(n+1))/A093101(n+1)`
-/

namespace A120265.P9314965649532843774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 (n + 1) - A000142 (n + 1) : ℚ) / (A093101 (n + 1) : ℚ)

end

end A120265.P9314965649532843774

/-! ## A120265.P11219211138759162137

`A061354(n+1)-A000142(n+1)/A093101(n+1)`
-/

namespace A120265.P11219211138759162137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061354 (n + 1) : ℚ) - (A000142 (n + 1) : ℚ) / (A093101 (n + 1) : ℚ)

end

end A120265.P11219211138759162137

/-! ## A120265.P9980636621790006432

`A000522(n+1)/A093101(n+1)-A061355(n+1)`
-/

namespace A120265.P9980636621790006432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 (n + 1) : ℚ) / (A093101 (n + 1) : ℚ) - (A061355 (n + 1) : ℚ)

end

end A120265.P9980636621790006432

/-! ## A120265.P15375512567201186461

`A002627(n+1)/gcd(A000142(n+1), A002627(n+1))`
-/

namespace A120265.P15375512567201186461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002627 (n + 1) : ℚ) / (Int.gcd (A000142 (n + 1)) (A002627 (n + 1)) : ℚ)

end

end A120265.P15375512567201186461

/-!
# A120266: Numerator of Sum_{k=0..n} n^k/k!.

The programs for A120266, there is no canonical definition to state claims against.
-/

/-! ## A120266.P15468236554962073649

`(n+1)!/A214402(n+1)*∑{#}[n+1, (n+1)^#/#!]`
-/

namespace A120266.P15468236554962073649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A214402 (n + 1) : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((n + 1) ^ k : ℚ) / (Nat.factorial k : ℚ))

end

end A120266.P15468236554962073649

/-! ## A120266.P3109502849412982934

`A063170(n+1)/A214402(n+1)`
-/

namespace A120266.P3109502849412982934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063170 (n + 1) : ℚ) / (A214402 (n + 1) : ℚ)

end

end A120266.P3109502849412982934

/-! ## A120266.P7636962592742157662

`A214401(n+1)+A120267(n+1)`
-/

namespace A120266.P7636962592742157662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214401 (n + 1) + A120267 (n + 1)

end

end A120266.P7636962592742157662

/-! ## A120266.P11252381515144724605

`A090878(n+1)/gcd(A000142(n), A090878(n+1))`
-/

namespace A120266.P11252381515144724605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090878 (n + 1) : ℚ) / (Int.gcd (A000142 n) (A090878 (n + 1)) : ℚ)

end

end A120266.P11252381515144724605

/-! ## A120266.P10404616715112315936

`A051696(n+1)/A214402(n+1)*A090878(n+1)`
-/

namespace A120266.P10404616715112315936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A214402 (n + 1) : ℚ) * (A090878 (n + 1) : ℚ)

end

end A120266.P10404616715112315936

/-! ## A120266.P7044158309215260705

`A090878(n+1)/gcd(A095996(n+1), A214402(n+1))`
-/

namespace A120266.P7044158309215260705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090878 (n + 1) : ℚ) / (Int.gcd (A095996 (n + 1)) (A214402 (n + 1)) : ℚ)

end

end A120266.P7044158309215260705

/-!
# A120267: Numerator of Sum_{k=1..n} n^k/k!.

The programs for A120267, there is no canonical definition to state claims against.
-/

/-! ## A120267.P11707114569059854543

`(n+1)*A119029(n+1)`
-/

namespace A120267.P11707114569059854543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119029 (n + 1)

end

end A120267.P11707114569059854543

/-! ## A120267.P12401811277109814002

`A119029(1+n)*(n+1)`
-/

namespace A120267.P12401811277109814002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119029 (1 + n) * (n + 1 : ℤ)

end

end A120267.P12401811277109814002

/-! ## A120267.P16007865075846674292

`A120266(n+1)-A214401(n+1)`
-/

namespace A120267.P16007865075846674292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120266 (n + 1) - A214401 (n + 1)

end

end A120267.P16007865075846674292

/-! ## A120267.P8968576277721066775

`∑{digits}[A094026(A004273(n+1)), A119029((n+1)/#)]`
-/

namespace A120267.P8968576277721066775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A004273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A119029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (x : ℚ))).toNat).sum

end

end A120267.P8968576277721066775

/-! ## A120267.P16815095322381133488

`A120266(n+1)-record[A227550(n)]/A214402(n+1)`
-/

namespace A120267.P16815095322381133488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227550 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120266 (n + 1) : ℚ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A214402 (n + 1) : ℚ)

end

end A120267.P16815095322381133488

/-! ## A120267.P5640678945755136275

`A063170(n+1)/A214402(n+1)-A214401(n+1)`
-/

namespace A120267.P5640678945755136275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063170 (n + 1) : ℚ) / (A214402 (n + 1) : ℚ) - (A214401 (n + 1) : ℚ)

end

end A120267.P5640678945755136275

/-!
# A120268: Numerator of Sum_{k=1..n} 1/(2*k-1)^2.

The programs for A120268, there is no canonical definition to state claims against.
-/

/-! ## A120268.P12110001767703175785

`lcm(Δ[A003188(n)], A002554(n+1))`
-/

namespace A120268.P12110001767703175785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A002554 (n + 1))

end

end A120268.P12110001767703175785

/-! ## A120268.P10221525990610494598

`abs(A002554(n+1))*A006519(n+1)`
-/

namespace A120268.P10221525990610494598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002554 (n + 1)| * A006519 (n + 1)

end

end A120268.P10221525990610494598

/-! ## A120268.P15828465479934146064

`abs(A002554(n+1)*A118830(n+1))`
-/

namespace A120268.P15828465479934146064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002554 (n + 1) * A118830 (n + 1)|

end

end A120268.P15828465479934146064

/-! ## A120268.P8707972759918756485

`A008683(4*(n+1))-A002554(n+1)*A118830(n+1)`
-/

namespace A120268.P8707972759918756485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A002554 (n + 1) * A118830 (n + 1)

end

end A120268.P8707972759918756485

/-! ## A120268.P4947919994354625396

`A290870(A001055(n+1)+1)-A002554(n+1)*A118830(n+1)`
-/

namespace A120268.P4947919994354625396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (A001055 (n + 1) + 1).toNat - A002554 (n + 1) * A118830 (n + 1)

end

end A120268.P4947919994354625396

/-! ## A120268.P5197270613142747053

`A173945(n+2)/4`
-/

namespace A120268.P5197270613142747053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173945 (n + 2) : ℚ) / 4

end

end A120268.P5197270613142747053

/-!
# A120271: a(n) = numerator(Sum_{k=1..n} 1/(prime(k)-1)).

The programs for A120271, there is no canonical definition to state claims against.
-/

/-! ## A120271.P17814499661847884619

`A078456(n+1)/A135212(n+1)`
-/

namespace A120271.P17814499661847884619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078456 (n + 1) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A120271.P17814499661847884619

/-! ## A120271.P11848532286701829788

`(A067549(n+1)-∏[A006093(n+1)])/A135212(n+1)`
-/

namespace A120271.P11848532286701829788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A067549 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A120271.P11848532286701829788

/-! ## A120271.P7652912099747801780

`(A067549(n+1)-∏[A000040(n+1)-1])/A135212(n+1)`
-/

namespace A120271.P7652912099747801780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A067549 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A120271.P7652912099747801780

/-! ## A120271.P9496891028708710777

`A078456(n+1)/gcd(A078456(n+1), A078456(n+2))`
-/

namespace A120271.P9496891028708710777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078456 (n + 1) : ℚ) / (Int.gcd (A078456 (n + 1)) (A078456 (n + 2)) : ℚ)

end

end A120271.P9496891028708710777

/-! ## A120271.P12587004395790562752

`A078456(n+1)/(A006093(n+1)/A128646(n+1)*A005867(n))`
-/

namespace A120271.P12587004395790562752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078456 (n + 1) : ℚ) / ((A006093 (n + 1) : ℚ) / (A128646 (n + 1) : ℚ) * (A005867 n : ℚ))

end

end A120271.P12587004395790562752

/-!
# A120272: Numerator of Sum_{k=1..n} k/prime(k).

The programs for A120272, there is no canonical definition to state claims against.
-/

/-! ## A120272.P14231342257184198077

`A258851(A002110(n))`
-/

namespace A120272.P14231342257184198077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A002110 n).toNat

end

end A120272.P14231342257184198077

/-! ## A120272.P17687626196343965389

`∑[n/A008578(n+1)]*A002110(n)`
-/

namespace A120272.P17687626196343965389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008578 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002110 n : ℚ)

end

end A120272.P17687626196343965389

/-! ## A120272.P10935805971446181131

`A351953(∑[lcm(n, 1-a(n-1))+n])` with `a(0)=0, a(1)=1`
-/

namespace A120272.P10935805971446181131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Int.lcm (n : ℤ) (1 - (f1 (n - 1) : ℤ)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120272.P10935805971446181131

/-! ## A120272.P16883586746424876176

`A351953(A007489(n))`
-/

namespace A120272.P16883586746424876176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351953 (A007489 n).toNat

end

end A120272.P16883586746424876176

/-!
# A120273: Absolute value of the numerator of Sum_{i=1..n} (-1)^i * i/prime(i).

The programs for A120273, there is no canonical definition to state claims against.
-/

/-! ## A120273.P12188155374863293069

`A319627(∏{p}[∑[(1-3^n)²], #])`
-/

namespace A120273.P12188155374863293069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (3 ^ n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319627 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A120273.P12188155374863293069

/-!
# A120274: Largest prime factor of the odd Catalan number A038003(n).

The programs for A120274, there is no canonical definition to state claims against.
-/

/-! ## A120274.P14762597003697886249

`2^(n+3)-A268607(n+3)`
-/

namespace A120274.P14762597003697886249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A268607 (n + 3)

end

end A120274.P14762597003697886249

/-! ## A120274.P12717646932595606383

`A151799(2^(n+3)-1)`
-/

namespace A120274.P12717646932595606383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (2 ^ (n + 3) - 1)

end

end A120274.P12717646932595606383

/-! ## A120274.P15444958822663627477

`record[A151799(2^∑[1-a(n-1)]-1)]` with `a(0)=3, a(1)=1, a(2)=-1`
-/

namespace A120274.P15444958822663627477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, -1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120274.P15444958822663627477

/-! ## A120274.P13279080259246941897

`or(1, A151799(A126646(n+2)))`
-/

namespace A120274.P13279080259246941897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151799 (A126646 (n + 2)).toNat)

end

end A120274.P13279080259246941897

/-! ## A120274.P3678006589274854991

`A151799(A000225(n+3))%A322679(n+1)`
-/

namespace A120274.P3678006589274854991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151799 (A000225 (n + 3)).toNat) (A322679 (n + 1))

end

end A120274.P3678006589274854991

/-!
# A120275: Smallest prime factor of the odd Catalan number A038003(n).

The programs for A120275, there is no canonical definition to state claims against.
-/

/-! ## A120275.P1947801570509083809

`a(n-1)` with `a(0)=5, a(1)=3, a(2)=3, a(3)=7, a(4)=3, a(5)=3, a(6)=7, a(7)=3`
-/

namespace A120275.P1947801570509083809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3, 3, 7, 3, 3, 7, 3] fun n a =>
  a (n - 1)

end

end A120275.P1947801570509083809

/-!
# A120278: a(n) = Sum_{m=1..n} Sum_{k=1..m} C(2*k,k), where C(2*k,k) = (2*k)!/(k!)^2 = A000984(k).

The programs for A120278, the canonical program `A120278.P15344238521992007135` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120278 has offset 1).

The definition of A120278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120278.P10668750949460951158

`∑[∑[∏[4-2/(n+1)]]]`
-/

namespace A120278.P10668750949460951158
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120278.P10668750949460951158

namespace A120278

/-- `∑[∑[∏[4-2/(n+1)]]]` -/
def P10668750949460951158.Spec : Prop :=
  ∀ n, P10668750949460951158.a n = (A120278 (n + 1) : ℚ)

end A120278

/-! ## A120278.P15344238521992007135

`∑[A054114(n)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120278

/-- `∑[A054114(n)]+1` -/
def P15344238521992007135.Spec : Prop :=
  ∀ n, P15344238521992007135.a n = A120278 (n + 1)

theorem P15344238521992007135.correct : P15344238521992007135.Spec := by
  intro n
  simp only [A120278, Nat.add_sub_cancel]

end A120278

/-! ## A120278.P5478272919047083141

`2*A143954(n+2)`
-/

namespace A120278.P5478272919047083141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143954 (n + 2)

end

end A120278.P5478272919047083141

namespace A120278

/-- `2*A143954(n+2)` -/
def P5478272919047083141.Spec : Prop :=
  ∀ n, P5478272919047083141.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P15568236725740318377

`2*∑[∑[A001700(n)]]`
-/

namespace A120278.P15568236725740318377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120278.P15568236725740318377

namespace A120278

/-- `2*∑[∑[A001700(n)]]` -/
def P15568236725740318377.Spec : Prop :=
  ∀ n, P15568236725740318377.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P14651038658149388403

`2*∑[A079309(n+1)]`
-/

namespace A120278.P14651038658149388403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120278.P14651038658149388403

namespace A120278

/-- `2*∑[A079309(n+1)]` -/
def P14651038658149388403.Spec : Prop :=
  ∀ n, P14651038658149388403.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P2079097313086707822

`lcm(2, ∑[A066796(n+1)])`
-/

namespace A120278.P2079097313086707822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120278.P2079097313086707822

namespace A120278

/-- `lcm(2, ∑[A066796(n+1)])` -/
def P2079097313086707822.Spec : Prop :=
  ∀ n, (P2079097313086707822.a n : ℤ) = A120278 (n + 1)

end A120278

/-! ## A120278.P9317221070333627043

`∑[A006134(n+1)]-(n+1)`
-/

namespace A120278.P9317221070333627043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A120278.P9317221070333627043

namespace A120278

/-- `∑[A006134(n+1)]-(n+1)` -/
def P9317221070333627043.Spec : Prop :=
  ∀ n, P9317221070333627043.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P16534720111672616564

`2*∑[∑[(2*n+1)*A000108(n)]]`
-/

namespace A120278.P16534720111672616564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120278.P16534720111672616564

namespace A120278

/-- `2*∑[∑[(2*n+1)*A000108(n)]]` -/
def P16534720111672616564.Spec : Prop :=
  ∀ n, P16534720111672616564.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P2685415700867441744

`A143954(n+1)+A143954(n+1)+A066796(n+1)`
-/

namespace A120278.P2685415700867441744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143954 (n + 1) + (A143954 (n + 1) + A066796 (n + 1))

end

end A120278.P2685415700867441744

namespace A120278

/-- `A143954(n+1)+A143954(n+1)+A066796(n+1)` -/
def P2685415700867441744.Spec : Prop :=
  ∀ n, P2685415700867441744.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P14067691238935316324

`∑[∑[A000984(n+1)]]%A183636(n+1)`
-/

namespace A120278.P14067691238935316324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A183636 (n + 1))

end

end A120278.P14067691238935316324

namespace A120278

/-- `∑[∑[A000984(n+1)]]%A183636(n+1)` -/
def P14067691238935316324.Spec : Prop :=
  ∀ n, P14067691238935316324.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P12096078462142468830

`A213853(∑[n+1]+2)`
-/

namespace A120278.P12096078462142468830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213853 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A120278.P12096078462142468830

namespace A120278

/-- `A213853(∑[n+1]+2)` -/
def P12096078462142468830.Spec : Prop :=
  ∀ n, P12096078462142468830.a n = A120278 (n + 1)

end A120278

/-! ## A120278.P10062573749045716759

`2*∑[∑[C(Δ[n²], n)]]`
-/

namespace A120278.P10062573749045716759
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120278.P10062573749045716759

namespace A120278

/-- `2*∑[∑[C(Δ[n²], n)]]` -/
def P10062573749045716759.Spec : Prop :=
  ∀ n, (P10062573749045716759.a n : ℤ) = A120278 (n + 1)

end A120278

/-! ## A120278.P14293740461350428851

`∑[C(2*(n+1), n+1)]+a(n-1)` with `a(0)=2`
-/

namespace A120278.P14293740461350428851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A120278.P14293740461350428851

namespace A120278

/-- `∑[C(2*(n+1), n+1)]+a(n-1)` -/
def P14293740461350428851.Spec : Prop :=
  ∀ n, (P14293740461350428851.a n : ℤ) = A120278 (n + 1)

end A120278

/-!
# A120279: a(n) = Sum[Sum[(i+j)!/i!/j!,{i,1,j}],{j,1,n}].

The programs for A120279, the canonical program `A120279.P18169380529767619493` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120279 has offset 1).

The definition of A120279 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079309, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A120279.P18169380529767619493

`A079309(n+2)-(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A120279

/-- `A079309(n+2)-(n+2)` -/
def P18169380529767619493.Spec : Prop :=
  ∀ n, P18169380529767619493.a n = A120279 (n + 1)

theorem P18169380529767619493.correct : P18169380529767619493.Spec := by
  intro n
  simp only [A120279, Nat.add_sub_cancel]

end A120279

/-! ## A120279.P902775961557314521

`A066796(n+2)/2-(n+2)`
-/

namespace A120279.P902775961557314521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066796 (n + 2) : ℚ) / 2 - (n + 2 : ℚ)

end

end A120279.P902775961557314521

namespace A120279

/-- `A066796(n+2)/2-(n+2)` -/
def P902775961557314521.Spec : Prop :=
  ∀ n, P902775961557314521.a n = (A120279 (n + 1) : ℚ)

end A120279

/-! ## A120279.P16585947109419932866

`∑[∏[4-2/(n+1)]/2]+∏[4-2/(n+2)]-(n+2)`
-/

namespace A120279.P16585947109419932866
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∏ j ∈ Finset.range (n + 1), f3 j - (n + 2 : ℚ))

end

end A120279.P16585947109419932866

namespace A120279

/-- `∑[∏[4-2/(n+1)]/2]+∏[4-2/(n+2)]-(n+2)` -/
def P16585947109419932866.Spec : Prop :=
  ∀ n, P16585947109419932866.a n = (A120279 (n + 1) : ℚ)

end A120279

/-! ## A120279.P3049641627002213586

`∑[A010763(n+1)]`
-/

namespace A120279.P3049641627002213586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P3049641627002213586

namespace A120279

/-- `∑[A010763(n+1)]` -/
def P3049641627002213586.Spec : Prop :=
  ∀ n, P3049641627002213586.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P11998199899674087543

`∑[∑[A024482(n+2)]]`
-/

namespace A120279.P11998199899674087543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P11998199899674087543

namespace A120279

/-- `∑[∑[A024482(n+2)]]` -/
def P11998199899674087543.Spec : Prop :=
  ∀ n, P11998199899674087543.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P5545574092855883665

`∑[∑[A097613(n+2)]]`
-/

namespace A120279.P5545574092855883665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P5545574092855883665

namespace A120279

/-- `∑[∑[A097613(n+2)]]` -/
def P5545574092855883665.Spec : Prop :=
  ∀ n, P5545574092855883665.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P4971892388998125014

`∑[A001700(n+1)-1]`
-/

namespace A120279.P4971892388998125014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P4971892388998125014

namespace A120279

/-- `∑[A001700(n+1)-1]` -/
def P4971892388998125014.Spec : Prop :=
  ∀ n, P4971892388998125014.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P9640827048911975628

`∑[A088218(n+2)-1]`
-/

namespace A120279.P9640827048911975628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P9640827048911975628

namespace A120279

/-- `∑[A088218(n+2)-1]` -/
def P9640827048911975628.Spec : Prop :=
  ∀ n, P9640827048911975628.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P17633777482386760868

`∑[A112849(n+2)-2]`
-/

namespace A120279.P17633777482386760868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112849 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P17633777482386760868

namespace A120279

/-- `∑[A112849(n+2)-2]` -/
def P17633777482386760868.Spec : Prop :=
  ∀ n, P17633777482386760868.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P8715291635978094446

`∑[A260878(n+2)-2]`
-/

namespace A120279.P8715291635978094446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P8715291635978094446

namespace A120279

/-- `∑[A260878(n+2)-2]` -/
def P8715291635978094446.Spec : Prop :=
  ∀ n, P8715291635978094446.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P1880243410691111917

`∑[A014495(2*n+3)]`
-/

namespace A120279.P1880243410691111917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P1880243410691111917

namespace A120279

/-- `∑[A014495(2*n+3)]` -/
def P1880243410691111917.Spec : Prop :=
  ∀ n, P1880243410691111917.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P7657185571485743830

`∑[A047171(2*n+3)]`
-/

namespace A120279.P7657185571485743830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047171 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P7657185571485743830

namespace A120279

/-- `∑[A047171(2*n+3)]` -/
def P7657185571485743830.Spec : Prop :=
  ∀ n, P7657185571485743830.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P12861499485049215309

`∑[A115112(n+2)/2]`
-/

namespace A120279.P12861499485049215309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115112 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P12861499485049215309

namespace A120279

/-- `∑[A115112(n+2)/2]` -/
def P12861499485049215309.Spec : Prop :=
  ∀ n, P12861499485049215309.a n = (A120279 (n + 1) : ℚ)

end A120279

/-! ## A120279.P10386750971489164960

`∑[∑[A026010(2*n+1)]]`
-/

namespace A120279.P10386750971489164960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P10386750971489164960

namespace A120279

/-- `∑[∑[A026010(2*n+1)]]` -/
def P10386750971489164960.Spec : Prop :=
  ∀ n, P10386750971489164960.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P15274642266984723485

`∑[∑[A051924(n+2)/2]]`
-/

namespace A120279.P15274642266984723485
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051924 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P15274642266984723485

namespace A120279

/-- `∑[∑[A051924(n+2)/2]]` -/
def P15274642266984723485.Spec : Prop :=
  ∀ n, P15274642266984723485.a n = (A120279 (n + 1) : ℚ)

end A120279

/-! ## A120279.P5785584178090814525

`∑[A001405(2*n+3)-1]`
-/

namespace A120279.P5785584178090814525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P5785584178090814525

namespace A120279

/-- `∑[A001405(2*n+3)-1]` -/
def P5785584178090814525.Spec : Prop :=
  ∀ n, P5785584178090814525.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P8076628350147507508

`∑[A048775(n+1)+1+n]`
-/

namespace A120279.P8076628350147507508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048775 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P8076628350147507508

namespace A120279

/-- `∑[A048775(n+1)+1+n]` -/
def P8076628350147507508.Spec : Prop :=
  ∀ n, P8076628350147507508.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P17664145171019005997

`∑[∑[A191782(2*n+1)+1]]`
-/

namespace A120279.P17664145171019005997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191782 (2 * n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P17664145171019005997

namespace A120279

/-- `∑[∑[A191782(2*n+1)+1]]` -/
def P17664145171019005997.Spec : Prop :=
  ∀ n, P17664145171019005997.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P12457925753446037174

`∑[∑[A001791(n+1)+A001700(n)]]`
-/

namespace A120279.P12457925753446037174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) + A001700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P12457925753446037174

namespace A120279

/-- `∑[∑[A001791(n+1)+A001700(n)]]` -/
def P12457925753446037174.Spec : Prop :=
  ∀ n, P12457925753446037174.a n = A120279 (n + 1)

end A120279

/-! ## A120279.P12284119393578634647

`∑[A108958(n+2)+A000225(n+1)]`
-/

namespace A120279.P12284119393578634647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108958 (n + 2) + A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120279.P12284119393578634647

namespace A120279

/-- `∑[A108958(n+2)+A000225(n+1)]` -/
def P12284119393578634647.Spec : Prop :=
  ∀ n, P12284119393578634647.a n = A120279 (n + 1)

end A120279

/-!
# A120280: Row 4 of array in A105272.

The programs for A120280, there is no canonical definition to state claims against.
-/

/-! ## A120280.P8055580881305419248

`A105272(∑[n+3]+7)`
-/

namespace A120280.P8055580881305419248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A120280.P8055580881305419248

/-! ## A120280.P7701618185841116854

`or(char[5], A105272(A167614(n+2)+1))`
-/

namespace A120280.P7701618185841116854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A105272 (A167614 (n + 2) + 1).toNat)

end

end A120280.P7701618185841116854

/-! ## A120280.P1771375193218053560

`A105272(A055999(n)+10)%A000045(n+5)`
-/

namespace A120280.P1771375193218053560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105272 (A055999 n + 10).toNat) (A000045 (n + 5))

end

end A120280.P1771375193218053560

/-!
# A120281: Logarithmic numbers A002104[p+1] divided by p=Prime[n].

The programs for A120281, there is no canonical definition to state claims against.
-/

/-! ## A120281.P17050475776935469065

`A002104(p?[round(8*n/7)]+1)/A008578(n+2)`
-/

namespace A120281.P17050475776935469065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002104 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat : ℚ) / (A008578 (n + 2) : ℚ)

end

end A120281.P17050475776935469065

/-! ## A120281.P8421923234776728014

`A002104(A008864(n+1))/Δ[A007504(n)]`
-/

namespace A120281.P8421923234776728014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002104 (A008864 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A120281.P8421923234776728014

/-! ## A120281.P16344701039850976567

`A002104(A008864(n+1))/p?[A259153(n)]`
-/

namespace A120281.P16344701039850976567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002104 (A008864 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A120281.P16344701039850976567

/-! ## A120281.P6428800989064591708

`A002104(A008864(n+1))/sqrt(A001248(n+1))`
-/

namespace A120281.P6428800989064591708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002104 (A008864 (n + 1)).toNat : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)

end

end A120281.P6428800989064591708

/-! ## A120281.P934724233924520810

`A002104(A008864(n+1))/p?[A018252(n+1)-7]`
-/

namespace A120281.P934724233924520810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002104 (A008864 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A120281.P934724233924520810

/-!
# A120282: Numerator of the coefficients of k^2 term at Sum[Sum[(i-j)^(2n),{i,1,k}],{j,1,k}].

The programs for A120282, there is no canonical definition to state claims against.
-/

/-! ## A120282.P13151885286034128210

`A027643(2*n+3)`
-/

namespace A120282.P13151885286034128210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027643 (2 * n + 3)

end

end A120282.P13151885286034128210

/-! ## A120282.P16372482722829463734

`A100615(comp[2*(n+1)]+3)`
-/

namespace A120282.P16372482722829463734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100615 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A120282.P16372482722829463734

/-! ## A120282.P4442262159007763949

`(-1)^n*A132094(n+1)`
-/

namespace A120282.P4442262159007763949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132094 (n + 1)

end

end A120282.P4442262159007763949

/-! ## A120282.P10789293259837838822

`or(1, A100615(A103517(n)))`
-/

namespace A120282.P10789293259837838822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100615 (A103517 n).toNat)

end

end A120282.P10789293259837838822

/-! ## A120282.P3960451852111539603

`A100615(A103517(n))+A077896(2*n+1)`
-/

namespace A120282.P3960451852111539603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100615 (A103517 n).toNat + A077896 (2 * n + 1)

end

end A120282.P3960451852111539603

/-!
# A120283: Numerator of the coefficients of the k^2 terms of Sum[Sum[(i+j)^(2n),{i,1,k}],{j,1,k}].

The programs for A120283, there is no canonical definition to state claims against.
-/

/-! ## A120283.P16802044273844071462

`A100615(2*(n+1))`
-/

namespace A120283.P16802044273844071462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100615 (2 * (n + 1))

end

end A120283.P16802044273844071462

/-! ## A120283.P9383215493046789591

`or(1, A100615(A004277(n+1)))`
-/

namespace A120283.P9383215493046789591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100615 (A004277 (n + 1)).toNat)

end

end A120283.P9383215493046789591

/-! ## A120283.P152564460404658517

`or(1, A100615(A317108(n+1)))`
-/

namespace A120283.P152564460404658517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100615 (A317108 (n + 1)).toNat)

end

end A120283.P152564460404658517

/-! ## A120283.P12153504888657597776

`or(1, A100615(A004275(n+2)))`
-/

namespace A120283.P12153504888657597776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100615 (A004275 (n + 2)).toNat)

end

end A120283.P12153504888657597776

/-! ## A120283.P9664882469942328397

`A100615(A317108(n+1))/A001222(A002476(n+1))`
-/

namespace A120283.P9664882469942328397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100615 (A317108 (n + 1)).toNat : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A120283.P9664882469942328397

/-!
# A120284: Numerator of absolute value of Sum_{k=1..n} (-1)^(k+1)*(2*k+1)*(Sum_{i=1..k} 1/i).

The programs for A120284, there is no canonical definition to state claims against.
-/

/-! ## A120284.P11216956928519906555

`A227117(n+1)+A067366(A056411(n+1))`
-/

namespace A120284.P11216956928519906555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227117 (n + 1) + A067366 (A056411 (n + 1)).toNat

end

end A120284.P11216956928519906555

/-!
# A120285: Numerator of harmonic number H(p-1) = Sum_{k=1..p-1} 1/k for prime p.

The programs for A120285, the canonical program `A120285.P11971560500796594752` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120285 has offset 1).

The definition of A120285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120285.P11971560500796594752

`A001008(A000040(n+1)-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A120285

/-- `A001008(A000040(n+1)-1)` -/
def P11971560500796594752.Spec : Prop :=
  ∀ n, P11971560500796594752.a n = A120285 (n + 1)

theorem P11971560500796594752.correct : P11971560500796594752.Spec := by
  intro n
  simp only [A120285, Nat.add_sub_cancel]

end A120285

/-! ## A120285.P12957814229274983687

`A001008(eq[1, ∑{e}[n+1, #]])`
-/

namespace A120285.P12957814229274983687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A120285.P12957814229274983687

namespace A120285

/-- `A001008(eq[1, ∑{e}[n+1, #]])` -/
def P12957814229274983687.Spec : Prop :=
  ∀ n, P12957814229274983687.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P996610526242007110

`A001008(lt[0, ∑{p}[1+n, C(#, n)]])`
-/

namespace A120285.P996610526242007110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A120285.P996610526242007110

namespace A120285

/-- `A001008(lt[0, ∑{p}[1+n, C(#, n)]])` -/
def P996610526242007110.Spec : Prop :=
  ∀ n, P996610526242007110.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P11092248017800693442

`A001008(eq[1, log2(∏{e}[n+1, 2^#])])`
-/

namespace A120285.P11092248017800693442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f3 n), 2 ^ Nat.factorization (f3 n) p : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A120285.P11092248017800693442

namespace A120285

/-- `A001008(eq[1, log2(∏{e}[n+1, 2^#])])` -/
def P11092248017800693442.Spec : Prop :=
  ∀ n, P11092248017800693442.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P8697280044740076323

`A001008(eq[3, ∏{e}[n+1, C(#+2, 2)]])`
-/

namespace A120285.P8697280044740076323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose (Nat.factorization (f3 n) p + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A120285.P8697280044740076323

namespace A120285

/-- `A001008(eq[3, ∏{e}[n+1, C(#+2, 2)]])` -/
def P8697280044740076323.Spec : Prop :=
  ∀ n, P8697280044740076323.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P16753435491861142804

`A001008(eq[1, val(∏{e}[n+1, 2^#], 2)])`
-/

namespace A120285.P16753435491861142804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f3 n), 2 ^ Nat.factorization (f3 n) p) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A120285.P16753435491861142804

namespace A120285

/-- `A001008(eq[1, val(∏{e}[n+1, 2^#], 2)])` -/
def P16753435491861142804.Spec : Prop :=
  ∀ n, P16753435491861142804.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P7984559563563992738

`A001008(eq[1, ∑{d}[n+1, #]-(1+n)])`
-/

namespace A120285.P7984559563563992738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (1 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120285.P7984559563563992738

namespace A120285

/-- `A001008(eq[1, ∑{d}[n+1, #]-(1+n)])` -/
def P7984559563563992738.Spec : Prop :=
  ∀ n, P7984559563563992738.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P2269106292201482052

`A001008(eq[1, ∑{p}[n+1, val(n+1, #)]])`
-/

namespace A120285.P2269106292201482052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A120285.P2269106292201482052

namespace A120285

/-- `A001008(eq[1, ∑{p}[n+1, val(n+1, #)]])` -/
def P2269106292201482052.Spec : Prop :=
  ∀ n, P2269106292201482052.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P520148681579677547

`A001008(eq[1, ∑{e}[xor(2*n, -2), #]-1])`
-/

namespace A120285.P520148681579677547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A120285.P520148681579677547

namespace A120285

/-- `A001008(eq[1, ∑{e}[xor(2*n, -2), #]-1])` -/
def P520148681579677547.Spec : Prop :=
  ∀ n, P520148681579677547.a n = A120285 (n + 1)

end A120285

/-! ## A120285.P5879813662893720202

`A001008(record[ceil((n+1)*∏{p}[n+1, #/(n+3)])])`
-/

namespace A120285.P5879813662893720202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 3 : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A120285.P5879813662893720202

namespace A120285

/-- `A001008(record[ceil((n+1)*∏{p}[n+1, #/(n+3)])])` -/
def P5879813662893720202.Spec : Prop :=
  ∀ n, P5879813662893720202.a n = A120285 (n + 1)

end A120285

/-!
# A120286: Numerator of 1/n^2 + 2/(n-1)^2 + 3/(n-2)^2 +...+ (n-1)/2^2 + n.

The programs for A120286, there is no canonical definition to state claims against.
-/

/-! ## A120286.P4618913812018225982

`A000265(A060944(n+1)/ceil(lcm(2, n+1)/4))`
-/

namespace A120286.P4618913812018225982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A060944 (n + 1) : ℚ) / (⌈(Nat.lcm 2 (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A120286.P4618913812018225982

/-!
# A120293: Absolute value of numerator of determinant of n X n matrix with M(i,j) = (i+1)/(i+2) if i=j otherwise 1.

The programs for A120293, there is no canonical definition to state claims against.
-/

/-! ## A120293.P11684138337641203541

`A220137(lt[A350571(n+3), 2])`
-/

namespace A120293.P11684138337641203541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350571 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220137 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A120293.P11684138337641203541

/-!
# A120294: Numerator of determinant of n X n matrix with elements M[j,j] = (i+j)/(i+j-1).

The programs for A120294, there is no canonical definition to state claims against.
-/

/-! ## A120294.P9246245687754456259

`ratio[lcm(a(n-1), A006530(n²+1))]` with `a(0)=1, a(1)=2`
-/

namespace A120294.P9246245687754456259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A006530 (n ^ 2 + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A120294.P9246245687754456259

/-! ## A120294.P14702760958965850243

`A281793((n+1)*A249066(n+1))`
-/

namespace A120294.P14702760958965850243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 ((n + 1 : ℤ) * A249066 (n + 1)).toNat

end

end A120294.P14702760958965850243

/-! ## A120294.P15014934067832441642

`A249066(n+1)*A250069(n+1)+1`
-/

namespace A120294.P15014934067832441642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249066 (n + 1) * A250069 (n + 1) + 1

end

end A120294.P15014934067832441642

/-! ## A120294.P1960089653116667101

`gcd(1-A242012(n+1), A014442(n+1))`
-/

namespace A120294.P1960089653116667101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A242012 (n + 1)) (A014442 (n + 1))

end

end A120294.P1960089653116667101

/-! ## A120294.P13540889617967426482

`A014442(n+1)^floor(1/A252890(n+1))`
-/

namespace A120294.P13540889617967426482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014442 (n + 1) : ℚ) ^ (⌊1 / (A252890 (n + 1) : ℚ)⌋ : ℤ)

end

end A120294.P13540889617967426482

/-!
# A120295: Absolute value of the largest coefficient of Product[(1-x^k)^k,{k,1,n}].

The programs for A120295, there is no canonical definition to state claims against.
-/

/-! ## A120295.P9620208473673691817

`A127379(∑[n^n])`
-/

namespace A120295.P9620208473673691817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A120295.P9620208473673691817

/-!
# A120297: Sum of all matrix elements of n X n matrix M(i,j) = Fibonacci(i+j-1).

The programs for A120297, the canonical program `A120297.P9281654738352181791` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120297 has offset 1).

The definition of A120297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A120297.P2206022993664257127

`ogf((1+2x^2-x^3)/(1-5x+7x^2-x^3-3x^4+x^5))`
-/

namespace A120297.P2206022993664257127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, -1] [1, -5, 7, -1, -3, 1] n

end

end A120297.P2206022993664257127

namespace A120297

/-- `ogf((1+2x^2-x^3)/(1-5x+7x^2-x^3-3x^4+x^5))` -/
def P2206022993664257127.Spec : Prop :=
  ∀ n, P2206022993664257127.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P9281654738352181791

`A000045(2*(n+1)+3)-2*A000045(n+4)+2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A120297

/-- `A000045(2*(n+1)+3)-2*A000045(n+4)+2` -/
def P9281654738352181791.Spec : Prop :=
  ∀ n, P9281654738352181791.a n = A120297 (n + 1)

theorem P9281654738352181791.correct : P9281654738352181791.Spec := by
  intro n
  simp only [A120297, Nat.add_sub_cancel]

end A120297

/-! ## A120297.P9349017547000659289

`A227356(Δ[n²])`
-/

namespace A120297.P9349017547000659289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227356 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120297.P9349017547000659289

namespace A120297

/-- `A227356(Δ[n²])` -/
def P9349017547000659289.Spec : Prop :=
  ∀ n, P9349017547000659289.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P12750570783717474185

`A213577(n+1)+A014286(n)`
-/

namespace A120297.P12750570783717474185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213577 (n + 1) + A014286 n

end

end A120297.P12750570783717474185

namespace A120297

/-- `A213577(n+1)+A014286(n)` -/
def P12750570783717474185.Spec : Prop :=
  ∀ n, P12750570783717474185.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P4352660960768716448

`∑[A094586(n+1)-A000045(n)]`
-/

namespace A120297.P4352660960768716448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094586 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120297.P4352660960768716448

namespace A120297

/-- `∑[A094586(n+1)-A000045(n)]` -/
def P4352660960768716448.Spec : Prop :=
  ∀ n, P4352660960768716448.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P5071097277325246201

`∑[A000045(n+2)*A014739(n)]`
-/

namespace A120297.P5071097277325246201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A014739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120297.P5071097277325246201

namespace A120297

/-- `∑[A000045(n+2)*A014739(n)]` -/
def P5071097277325246201.Spec : Prop :=
  ∀ n, P5071097277325246201.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P4060485413019261177

`A023860(2*n+1)+A014286(n)`
-/

namespace A120297.P4060485413019261177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * n + 1) + A014286 n

end

end A120297.P4060485413019261177

namespace A120297

/-- `A023860(2*n+1)+A014286(n)` -/
def P4060485413019261177.Spec : Prop :=
  ∀ n, P4060485413019261177.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P6423966191744871497

`A027937(n+1)-2*A001924(n)`
-/

namespace A120297.P6423966191744871497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027937 (n + 1) - 2 * A001924 n

end

end A120297.P6423966191744871497

namespace A120297

/-- `A027937(n+1)-2*A001924(n)` -/
def P6423966191744871497.Spec : Prop :=
  ∀ n, P6423966191744871497.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P12969981086624312466

`A023860(2*n+1)+∑[A045925(n)]`
-/

namespace A120297.P12969981086624312466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120297.P12969981086624312466

namespace A120297

/-- `A023860(2*n+1)+∑[A045925(n)]` -/
def P12969981086624312466.Spec : Prop :=
  ∀ n, P12969981086624312466.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P8557210049824757254

`record[A227356(n+1)/A227339(n+1)]`
-/

namespace A120297.P8557210049824757254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227356 (n + 1) : ℚ) / (A227339 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120297.P8557210049824757254

namespace A120297

/-- `record[A227356(n+1)/A227339(n+1)]` -/
def P8557210049824757254.Spec : Prop :=
  ∀ n, P8557210049824757254.a n = (A120297 (n + 1) : ℚ)

end A120297

/-! ## A120297.P4182589070349871709

`record[A212804(2*n)-A019274(n+1)]`
-/

namespace A120297.P4182589070349871709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) - A019274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A120297.P4182589070349871709

namespace A120297

/-- `record[A212804(2*n)-A019274(n+1)]` -/
def P4182589070349871709.Spec : Prop :=
  ∀ n, P4182589070349871709.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P2818739741462535278

`A227356(2*n+1)+A000007(n+1)`
-/

namespace A120297.P2818739741462535278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227356 (2 * n + 1) + A000007 (n + 1)

end

end A120297.P2818739741462535278

namespace A120297

/-- `A227356(2*n+1)+A000007(n+1)` -/
def P2818739741462535278.Spec : Prop :=
  ∀ n, P2818739741462535278.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P17062384510634119215

`A001911(2*(n+1))-A168193(n+1)`
-/

namespace A120297.P17062384510634119215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (2 * (n + 1)) - A168193 (n + 1)

end

end A120297.P17062384510634119215

namespace A120297

/-- `A001911(2*(n+1))-A168193(n+1)` -/
def P17062384510634119215.Spec : Prop :=
  ∀ n, P17062384510634119215.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P18306329366495587137

`A020743(2*n)-2*A020695(n+1)`
-/

namespace A120297.P18306329366495587137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 (2 * n) - 2 * A020695 (n + 1)

end

end A120297.P18306329366495587137

namespace A120297

/-- `A020743(2*n)-2*A020695(n+1)` -/
def P18306329366495587137.Spec : Prop :=
  ∀ n, P18306329366495587137.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P322280410345802565

`A000071(n+2)²+A000071(n+3)²`
-/

namespace A120297.P322280410345802565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) ^ 2 + A000071 (n + 3) ^ 2

end

end A120297.P322280410345802565

namespace A120297

/-- `A000071(n+2)²+A000071(n+3)²` -/
def P322280410345802565.Spec : Prop :=
  ∀ n, P322280410345802565.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P2106430961093275335

`∑[A000045(n+1)]²+∑[A000045(n)]²`
-/

namespace A120297.P2106430961093275335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A120297.P2106430961093275335

namespace A120297

/-- `∑[A000045(n+1)]²+∑[A000045(n)]²` -/
def P2106430961093275335.Spec : Prop :=
  ∀ n, P2106430961093275335.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P12751504926402497074

`∑[(A000032(n+2)-2)*A000045(n+2)]`
-/

namespace A120297.P12751504926402497074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 2) - 2) * A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120297.P12751504926402497074

namespace A120297

/-- `∑[(A000032(n+2)-2)*A000045(n+2)]` -/
def P12751504926402497074.Spec : Prop :=
  ∀ n, P12751504926402497074.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P9281072888385107938

`A001911(2*(n+1))-A238374(2*n+1)`
-/

namespace A120297.P9281072888385107938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (2 * (n + 1)) - A238374 (2 * n + 1)

end

end A120297.P9281072888385107938

namespace A120297

/-- `A001911(2*(n+1))-A238374(2*n+1)` -/
def P9281072888385107938.Spec : Prop :=
  ∀ n, P9281072888385107938.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P799929387717779578

`A227356(2*(n+1))-A129361(2*n+1)`
-/

namespace A120297.P799929387717779578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227356 (2 * (n + 1)) - A129361 (2 * n + 1)

end

end A120297.P799929387717779578

namespace A120297

/-- `A227356(2*(n+1))-A129361(2*n+1)` -/
def P799929387717779578.Spec : Prop :=
  ∀ n, P799929387717779578.a n = A120297 (n + 1)

end A120297

/-! ## A120297.P543987870301264968

`A000126(2*(n+1))-A192760(n+1)+n`
-/

namespace A120297.P543987870301264968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (2 * (n + 1)) - A192760 (n + 1) + (n : ℤ)

end

end A120297.P543987870301264968

namespace A120297

/-- `A000126(2*(n+1))-A192760(n+1)+n` -/
def P543987870301264968.Spec : Prop :=
  ∀ n, P543987870301264968.a n = A120297 (n + 1)

end A120297

/-!
# A120298: Largest prime factor of the n-th central factorial number A001819(n).

The programs for A120298, there is no canonical definition to state claims against.
-/

/-! ## A120298.P11905191303004440927

`p?[or(A002701(n+2), A153727(n))]`
-/

namespace A120298.P11905191303004440927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002701 (n + 2)) (A153727 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120298.P11905191303004440927

/-!
# A120299: Largest prime factor of Stirling numbers of first kind s(n,2) = A000254(n).

The programs for A120299, the canonical program `A120299.P7279371353307129310` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A120299 has offset 2).

The definition of A120299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A120299.P7279371353307129310

`A308971(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A120299

/-- `A308971(n+2)` -/
def P7279371353307129310.Spec : Prop :=
  ∀ n, P7279371353307129310.a n = A120299 (n + 2)

theorem P7279371353307129310.correct : P7279371353307129310.Spec := by
  intro n
  simp only [A120299, Nat.add_sub_cancel]

end A120299

/-! ## A120299.P4060085878509607872

`A308968(∑[A308967(n+2)]+1)`
-/

namespace A120299.P4060085878509607872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308968 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A120299.P4060085878509607872

namespace A120299

/-- `A308968(∑[A308967(n+2)]+1)` -/
def P4060085878509607872.Spec : Prop :=
  ∀ n, P4060085878509607872.a n = A120299 (n + 2)

end A120299

/-! ## A120299.P9822710329139326384

`∏{e}[A020707(n), A308971(#)]`
-/

namespace A120299.P9822710329139326384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A308971 (Nat.factorization (f1 n).natAbs p)

end

end A120299.P9822710329139326384

namespace A120299

/-- `∏{e}[A020707(n), A308971(#)]` -/
def P9822710329139326384.Spec : Prop :=
  ∀ n, P9822710329139326384.a n = A120299 (n + 2)

end A120299

/-! ## A120299.P1842700079475201959

`p?[A308971(abs(xor(n, -1)))]`
-/

namespace A120299.P1842700079475201959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308971 |Int.xor (n : ℤ) (-1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120299.P1842700079475201959

namespace A120299

/-- `p?[A308971(abs(xor(n, -1)))]` -/
def P1842700079475201959.Spec : Prop :=
  ∀ n, P1842700079475201959.a n = A120299 (n + 2)

end A120299

/-! ## A120299.P11908105516478615365

`p?[A308971(A028310(n))]`
-/

namespace A120299.P11908105516478615365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308971 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A120299.P11908105516478615365

namespace A120299

/-- `p?[A308971(A028310(n))]` -/
def P11908105516478615365.Spec : Prop :=
  ∀ n, P11908105516478615365.a n = A120299 (n + 2)

end A120299

