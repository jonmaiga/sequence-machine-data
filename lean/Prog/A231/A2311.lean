import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A231100: Even legs of primitive Pythagorean triples (with multiplicity) sorted with respect to increasing hypotenuse.

The programs for A231100, there is no canonical definition to state claims against.
-/

/-! ## A231100.P9686159695278744742

`sqrt(A020882(n+1)²-A180620(n+1)²)`
-/

namespace A231100.P9686159695278744742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A020882 (n + 1) ^ 2 - A180620 (n + 1) ^ 2 : ℝ)

end

end A231100.P9686159695278744742

/-! ## A231100.P1156394183062889718

`A093507(n+1)-(A180620(n+1)+A020882(n+1))`
-/

namespace A231100.P1156394183062889718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093507 (n + 1) - (A180620 (n + 1) + A020882 (n + 1))

end

end A231100.P1156394183062889718

/-! ## A231100.P18353525866604371283

`A088557(A298042(n+1)^A251072(n))`
-/

namespace A231100.P18353525866604371283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088557 (SequenceMachineLib.roundAway ((A298042 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A231100.P18353525866604371283

/-! ## A231100.P13906500687790268315

`A088557(A251072(n)²*A298042(n+1))`
-/

namespace A231100.P13906500687790268315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088557 (A251072 n ^ 2 * A298042 (n + 1)).toNat

end

end A231100.P13906500687790268315

/-! ## A231100.P18002348457384129361

`A297878(n+1)*A309500(A016027(n+1))`
-/

namespace A231100.P18002348457384129361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297878 (n + 1) * A309500 (A016027 (n + 1)).toNat

end

end A231100.P18002348457384129361

/-!
# A231101: a(n) = 3*a(n-3) + a(n-2), a(0)=3, a(1)=0, a(2)=2.

The programs for A231101, the canonical program `A231101.P14730558680183375184` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231101 has offset 0).

The definition of A231101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-3)+a(n-2)` (program `A231101.P14730558680183375184`, by `A231101.P14730558680183375184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231101.P14730558680183375184

`3*a(n-3)+a(n-2)` with `a(0)=3, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231101

/-- `3*a(n-3)+a(n-2)` -/
def P14730558680183375184.Spec : Prop :=
  ∀ n, (P14730558680183375184.a n : ℤ) = A231101 n

theorem P14730558680183375184.correct : P14730558680183375184.Spec := by
  intro n
  simp only [A231101]

end A231101

/-! ## A231101.P97343316711171777

`a(n-2)-3*floor(-a(n-3))` with `a(0)=3, a(1)=0, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A231101.P97343316711171777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 2) - 3 * (-a (n - 3))

end

end A231101.P97343316711171777

namespace A231101

/-- `a(n-2)-3*floor(-a(n-3))` -/
def P97343316711171777.Spec : Prop :=
  ∀ n, P97343316711171777.a n = A231101 n

end A231101

/-! ## A231101.P4494687534205755006

`4*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A231101.P4494687534205755006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  4 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A231101.P4494687534205755006

namespace A231101

/-- `4*a(n-3)-(a(n-3)-a(n-2))` -/
def P4494687534205755006.Spec : Prop :=
  ∀ n, P4494687534205755006.a n = A231101 n

end A231101

/-! ## A231101.P7732969148185850822

`a(n-2)+a(n-3)+a(n-3)+a(n-3)` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A231101.P7732969148185850822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 2] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 3) + a (n - 3)))

end

end A231101.P7732969148185850822

namespace A231101

/-- `a(n-2)+a(n-3)+a(n-3)+a(n-3)` -/
def P7732969148185850822.Spec : Prop :=
  ∀ n, (P7732969148185850822.a n : ℤ) = A231101 n

end A231101

/-! ## A231101.P18259722699862276205

`ogf((-3+x^2)/(-1+x^2+3x^3))`
-/

namespace A231101.P18259722699862276205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, 0, -1, -3] n

end

end A231101.P18259722699862276205

namespace A231101

/-- `ogf((-3+x^2)/(-1+x^2+3x^3))` -/
def P18259722699862276205.Spec : Prop :=
  ∀ n, P18259722699862276205.a n = A231101 n

end A231101

/-!
# A231102: Number of n X n 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231102, there is no canonical definition to state claims against.
-/

/-! ## A231102.P13559238641450208810

`A231108(∑[4*n]+1)`
-/

namespace A231102.P13559238641450208810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231102.P13559238641450208810

/-! ## A231102.P10814815292312272784

`lcm(2, A231108(A001844(n)))`
-/

namespace A231102.P10814815292312272784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231108 (A001844 n).toNat)

end

end A231102.P10814815292312272784

/-! ## A231102.P13077754261799036949

`A231108(A001844(n))+A185284(n)`
-/

namespace A231102.P13077754261799036949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A001844 n).toNat + A185284 n

end

end A231102.P13077754261799036949

/-! ## A231102.P4072347002233577875

`A231108(A001844(n))+A034443(n+1)`
-/

namespace A231102.P4072347002233577875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A001844 n).toNat + A034443 (n + 1)

end

end A231102.P4072347002233577875

/-! ## A231102.P13595319430107642883

`A003639(n+1)*A231108(A001844(n))`
-/

namespace A231102.P13595319430107642883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003639 (n + 1) * A231108 (A001844 n).toNat

end

end A231102.P13595319430107642883

/-!
# A231103: Number of n X 3 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231103, the canonical program `A231103.P15351130568241488870` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231103 has offset 1).

The definition of A231103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231103.P15351130568241488870

`round(5^n/3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231103

/-- `round(5^n/3)` -/
def P15351130568241488870.Spec : Prop :=
  ∀ n, P15351130568241488870.a n = A231103 (n + 1)

theorem P15351130568241488870.correct : P15351130568241488870.Spec := by
  intro n
  simp only [A231103, Nat.add_sub_cancel]

end A231103

/-! ## A231103.P4509956411163393639

`ogf(2x/(1-4x-5x^2))`
-/

namespace A231103.P4509956411163393639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, -5] n

end

end A231103.P4509956411163393639

namespace A231103

/-- `ogf(2x/(1-4x-5x^2))` -/
def P4509956411163393639.Spec : Prop :=
  ∀ n, P4509956411163393639.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P12380547636674626435

`ceil(xor(1, 5^n)/3)`
-/

namespace A231103.P12380547636674626435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (5 ^ n) : ℚ) / 3⌉

end

end A231103.P12380547636674626435

namespace A231103

/-- `ceil(xor(1, 5^n)/3)` -/
def P12380547636674626435.Spec : Prop :=
  ∀ n, P12380547636674626435.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P9658709231534061864

`floor(xor(3, 5^n)/3)`
-/

namespace A231103.P9658709231534061864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (5 ^ n) : ℚ) / 3⌋

end

end A231103.P9658709231534061864

namespace A231103

/-- `floor(xor(3, 5^n)/3)` -/
def P9658709231534061864.Spec : Prop :=
  ∀ n, P9658709231534061864.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P10392346021859035507

`xor(2, 5*a(n-1))` with `a(0)=0`
-/

namespace A231103.P10392346021859035507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 2 (5 * a (n - 1))

end

end A231103.P10392346021859035507

namespace A231103

/-- `xor(2, 5*a(n-1))` -/
def P10392346021859035507.Spec : Prop :=
  ∀ n, (P10392346021859035507.a n : ℤ) = A231103 (n + 1)

end A231103

/-! ## A231103.P209332850612326300

`xor(2, lcm(5, a(n-1)))` with `a(0)=0`
-/

namespace A231103.P209332850612326300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 2 (Nat.lcm 5 (a (n - 1)))

end

end A231103.P209332850612326300

namespace A231103

/-- `xor(2, lcm(5, a(n-1)))` -/
def P209332850612326300.Spec : Prop :=
  ∀ n, (P209332850612326300.a n : ℤ) = A231103 (n + 1)

end A231103

/-! ## A231103.P18226497024891373187

`floor((tan(1)+5^n)/3)`
-/

namespace A231103.P18226497024891373187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tan (1 : ℝ) + (5 ^ n : ℝ)) / 3⌋

end

end A231103.P18226497024891373187

namespace A231103

/-- `floor((tan(1)+5^n)/3)` -/
def P18226497024891373187.Spec : Prop :=
  ∀ n, P18226497024891373187.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P2221063600277160150

`floor(5^n/3)+n%2`
-/

namespace A231103.P2221063600277160150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 3⌋ + ((n % 2 : ℕ) : ℤ)

end

end A231103.P2221063600277160150

namespace A231103

/-- `floor(5^n/3)+n%2` -/
def P2221063600277160150.Spec : Prop :=
  ∀ n, P2221063600277160150.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P6065475650511838772

`2*5^(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A231103.P6065475650511838772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A231103.P6065475650511838772

namespace A231103

/-- `2*5^(n-1)-a(n-1)` -/
def P6065475650511838772.Spec : Prop :=
  ∀ n, P6065475650511838772.a n = (A231103 (n + 1) : ℚ)

end A231103

/-! ## A231103.P4298424193636146150

`4*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A231103.P4298424193636146150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2)

end

end A231103.P4298424193636146150

namespace A231103

/-- `4*a(n-1)+5*a(n-2)` -/
def P4298424193636146150.Spec : Prop :=
  ∀ n, (P4298424193636146150.a n : ℤ) = A231103 (n + 1)

end A231103

/-! ## A231103.P6669062585138969126

`2*A015531(n)`
-/

namespace A231103.P6669062585138969126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015531 n

end

end A231103.P6669062585138969126

namespace A231103

/-- `2*A015531(n)` -/
def P6669062585138969126.Spec : Prop :=
  ∀ n, P6669062585138969126.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P7699797961809747128

`A274072(n)/3`
-/

namespace A231103.P7699797961809747128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274072 n : ℚ) / 3

end

end A231103.P7699797961809747128

namespace A231103

/-- `A274072(n)/3` -/
def P7699797961809747128.Spec : Prop :=
  ∀ n, P7699797961809747128.a n = (A231103 (n + 1) : ℚ)

end A231103

/-! ## A231103.P5994411035821041609

`abs(1-A083085(n))`
-/

namespace A231103.P5994411035821041609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A083085 n|

end

end A231103.P5994411035821041609

namespace A231103

/-- `abs(1-A083085(n))` -/
def P5994411035821041609.Spec : Prop :=
  ∀ n, P5994411035821041609.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P16891821655833965966

`A123010(n+2)/2`
-/

namespace A231103.P16891821655833965966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123010 (n + 2) : ℚ) / 2

end

end A231103.P16891821655833965966

namespace A231103

/-- `A123010(n+2)/2` -/
def P16891821655833965966.Spec : Prop :=
  ∀ n, P16891821655833965966.a n = (A231103 (n + 1) : ℚ)

end A231103

/-! ## A231103.P12497028978385764264

`A132158(3*n)/3`
-/

namespace A231103.P12497028978385764264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132158 (3 * n) : ℚ) / 3

end

end A231103.P12497028978385764264

namespace A231103

/-- `A132158(3*n)/3` -/
def P12497028978385764264.Spec : Prop :=
  ∀ n, P12497028978385764264.a n = (A231103 (n + 1) : ℚ)

end A231103

/-! ## A231103.P13551983301412683185

`2*xor(1, A109500(n))`
-/

namespace A231103.P13551983301412683185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 1 (A109500 n)

end

end A231103.P13551983301412683185

namespace A231103

/-- `2*xor(1, A109500(n))` -/
def P13551983301412683185.Spec : Prop :=
  ∀ n, P13551983301412683185.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P11124918881723606384

`abs(2*(1-A166122(n)))`
-/

namespace A231103.P11124918881723606384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - A166122 n)|

end

end A231103.P11124918881723606384

namespace A231103

/-- `abs(2*(1-A166122(n)))` -/
def P11124918881723606384.Spec : Prop :=
  ∀ n, P11124918881723606384.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P15988075763446254656

`ceil((A024049(n)+n/(n+1)-1)/3)`
-/

namespace A231103.P15988075763446254656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A024049 n : ℚ) + (n : ℚ) / (n + 1 : ℚ) - 1) / 3⌉

end

end A231103.P15988075763446254656

namespace A231103

/-- `ceil((A024049(n)+n/(n+1)-1)/3)` -/
def P15988075763446254656.Spec : Prop :=
  ∀ n, P15988075763446254656.a n = A231103 (n + 1)

end A231103

/-! ## A231103.P14945601011832052536

`(5^n-(-1)^n)/(A019590(n+4)+3)`
-/

namespace A231103.P14945601011832052536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (-1) ^ n : ℚ) / (A019590 (n + 4) + 3 : ℚ)

end

end A231103.P14945601011832052536

namespace A231103

/-- `(5^n-(-1)^n)/(A019590(n+4)+3)` -/
def P14945601011832052536.Spec : Prop :=
  ∀ n, P14945601011832052536.a n = (A231103 (n + 1) : ℚ)

end A231103

/-! ## A231103.P3350909581031377825

`A030517(n+1)-A054884(n)`
-/

namespace A231103.P3350909581031377825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030517 (n + 1) - A054884 n

end

end A231103.P3350909581031377825

namespace A231103

/-- `A030517(n+1)-A054884(n)` -/
def P3350909581031377825.Spec : Prop :=
  ∀ n, P3350909581031377825.a n = A231103 (n + 1)

end A231103

/-!
# A231104: Number of n X 4 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231104, the canonical program `A231104.P5173735788925881787` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231104 has offset 1).

The definition of A231104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231104.P8858902717774114014

`ogf(6x/(1-8x-9x^2))`
-/

namespace A231104.P8858902717774114014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -8, -9] n

end

end A231104.P8858902717774114014

namespace A231104

/-- `ogf(6x/(1-8x-9x^2))` -/
def P8858902717774114014.Spec : Prop :=
  ∀ n, P8858902717774114014.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P5173735788925881787

`xor(6, 9*a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231104

/-- `xor(6, 9*a(n-1))` -/
def P5173735788925881787.Spec : Prop :=
  ∀ n, (P5173735788925881787.a n : ℤ) = A231104 (n + 1)

theorem P5173735788925881787.correct : P5173735788925881787.Spec := by
  intro n
  simp only [A231104, Nat.add_sub_cancel]

end A231104

/-! ## A231104.P2506770540913901440

`8*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A231104.P2506770540913901440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  8 * a (n - 1) + 9 * a (n - 2)

end

end A231104.P2506770540913901440

namespace A231104

/-- `8*a(n-1)+9*a(n-2)` -/
def P2506770540913901440.Spec : Prop :=
  ∀ n, (P2506770540913901440.a n : ℤ) = A231104 (n + 1)

end A231104

/-! ## A231104.P7853871723576406402

`6*A015577(n)`
-/

namespace A231104.P7853871723576406402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015577 n

end

end A231104.P7853871723576406402

namespace A231104

/-- `6*A015577(n)` -/
def P7853871723576406402.Spec : Prop :=
  ∀ n, P7853871723576406402.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P16565119940332929134

`2*A178543(2*n)`
-/

namespace A231104.P16565119940332929134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178543 (2 * n)

end

end A231104.P16565119940332929134

namespace A231104

/-- `2*A178543(2*n)` -/
def P16565119940332929134.Spec : Prop :=
  ∀ n, P16565119940332929134.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P3040781683599035974

`3*A383324(2*n)`
-/

namespace A231104.P3040781683599035974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A383324 (2 * n)

end

end A231104.P3040781683599035974

namespace A231104

/-- `3*A383324(2*n)` -/
def P3040781683599035974.Spec : Prop :=
  ∀ n, P3040781683599035974.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P15748643393181368531

`A015441(2*n+1)-A102900(n)`
-/

namespace A231104.P15748643393181368531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n + 1) - A102900 n

end

end A231104.P15748643393181368531

namespace A231104

/-- `A015441(2*n+1)-A102900(n)` -/
def P15748643393181368531.Spec : Prop :=
  ∀ n, P15748643393181368531.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P2778437550241517860

`A232015(2*n+1)+A102900(n+1)`
-/

namespace A231104.P2778437550241517860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 (2 * n + 1) + A102900 (n + 1)

end

end A231104.P2778437550241517860

namespace A231104

/-- `A232015(2*n+1)+A102900(n+1)` -/
def P2778437550241517860.Spec : Prop :=
  ∀ n, P2778437550241517860.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P2404825344618587007

`2*(A177881(2*n+1)-A177881(2*n))`
-/

namespace A231104.P2404825344618587007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A177881 (2 * n + 1) - A177881 (2 * n))

end

end A231104.P2404825344618587007

namespace A231104

/-- `2*(A177881(2*n+1)-A177881(2*n))` -/
def P2404825344618587007.Spec : Prop :=
  ∀ n, P2404825344618587007.a n = A231104 (n + 1)

end A231104

/-! ## A231104.P8656057129612633653

`3*round(9^n/5)`
-/

namespace A231104.P8656057129612633653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((9 ^ n : ℚ) / 5)

end

end A231104.P8656057129612633653

namespace A231104

/-- `3*round(9^n/5)` -/
def P8656057129612633653.Spec : Prop :=
  ∀ n, P8656057129612633653.a n = A231104 (n + 1)

end A231104

/-!
# A231105: Number of n X 5 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231105, there is no canonical definition to state claims against.
-/

/-! ## A231105.P15119576361219286337

`A231108(Δ[A264443(n)])`
-/

namespace A231105.P15119576361219286337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (f1 (n + 1) - f1 n).toNat

end

end A231105.P15119576361219286337

/-! ## A231105.P395263245800417730

`A231108(A056115(n)+11)`
-/

namespace A231105.P395263245800417730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A056115 n + 11).toNat

end

end A231105.P395263245800417730

/-! ## A231105.P15872981862556182075

`A231108(eq[3, A152157(n)])`
-/

namespace A231105.P15872981862556182075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231105.P15872981862556182075

/-! ## A231105.P9597848729142300819

`A231108(eq[4, A193592(n)])`
-/

namespace A231105.P9597848729142300819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231105.P9597848729142300819

/-! ## A231105.P13941374327073685124

`A231108(eq[5, A239144(n)])`
-/

namespace A231105.P13941374327073685124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231105.P13941374327073685124

/-!
# A231106: Number of n X 6 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231106, there is no canonical definition to state claims against.
-/

/-! ## A231106.P4908853041561873450

`A231108(A052905(n+3))`
-/

namespace A231106.P4908853041561873450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A052905 (n + 3)).toNat

end

end A231106.P4908853041561873450

/-! ## A231106.P8992095360365537011

`A231108(eq[3, A219347(n)])`
-/

namespace A231106.P8992095360365537011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231106.P8992095360365537011

/-! ## A231106.P1328511344811139001

`A231108(eq[5, A193592(n)])`
-/

namespace A231106.P1328511344811139001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231106.P1328511344811139001

/-! ## A231106.P4022264780039488148

`A231108(eq[8, A258709(n)])`
-/

namespace A231106.P4022264780039488148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231106.P4022264780039488148

/-! ## A231106.P7763708582566064434

`A231108(Δ[Δ[A006504(n+1)]])`
-/

namespace A231106.P7763708582566064434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (f1 (n + 1) - f1 n).toNat

end

end A231106.P7763708582566064434

/-!
# A231107: Number of nX7 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231107, there is no canonical definition to state claims against.
-/

/-! ## A231107.P4688717081108446136

`A231108(A055999(n+4))`
-/

namespace A231107.P4688717081108446136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A055999 (n + 4)).toNat

end

end A231107.P4688717081108446136

/-! ## A231107.P12754241605272813464

`A231108(eq[4, A219347(n)])`
-/

namespace A231107.P12754241605272813464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231107.P12754241605272813464

/-! ## A231107.P6837166773810962676

`A231108(eq[6, A193592(n)])`
-/

namespace A231107.P6837166773810962676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231107.P6837166773810962676

/-! ## A231107.P10637992105460931668

`A231108(eq[7, A152157(n)])`
-/

namespace A231107.P10637992105460931668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231107.P10637992105460931668

/-! ## A231107.P14716829769608417246

`A231108(eq[10, A185782(n+1)])`
-/

namespace A231107.P14716829769608417246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231107.P14716829769608417246

/-!
# A231109: Number of 3Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231109, there is no canonical definition to state claims against.
-/

/-! ## A231109.P9515829478902430886

`A231108(∑[n+2]+4)`
-/

namespace A231109.P9515829478902430886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231109.P9515829478902430886

/-! ## A231109.P2690606113568888422

`lcm(2, A231108(A167614(n+1)))`
-/

namespace A231109.P2690606113568888422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231108 (A167614 (n + 1)).toNat)

end

end A231109.P2690606113568888422

/-! ## A231109.P14506393948355091550

`A057427(n)*A231108(A167614(n+1))`
-/

namespace A231109.P14506393948355091550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231108 (A167614 (n + 1)).toNat

end

end A231109.P14506393948355091550

/-! ## A231109.P13263381017224340381

`A007318(C(2, n))*A231108(A167614(n+1))`
-/

namespace A231109.P13263381017224340381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A231108 (A167614 (n + 1)).toNat

end

end A231109.P13263381017224340381

/-! ## A231109.P818073274082904783

`A231108(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A231109.P818073274082904783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A231109.P818073274082904783

/-!
# A231110: Number of 4Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231110, there is no canonical definition to state claims against.
-/

/-! ## A231110.P10675158543676938042

`A231108(A141214(n)+7)`
-/

namespace A231110.P10675158543676938042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A141214 n + 7).toNat

end

end A231110.P10675158543676938042

/-! ## A231110.P13008027339974666595

`A231108(A052905(n)+9)`
-/

namespace A231110.P13008027339974666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A052905 n + 9).toNat

end

end A231110.P13008027339974666595

/-! ## A231110.P792718972785382071

`A231108(A055999(n)+10)`
-/

namespace A231110.P792718972785382071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A055999 n + 10).toNat

end

end A231110.P792718972785382071

/-! ## A231110.P1607696474597646788

`A231108(A167614(n+2)+1)`
-/

namespace A231110.P1607696474597646788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A167614 (n + 2) + 1).toNat

end

end A231110.P1607696474597646788

/-! ## A231110.P12808197209659521228

`A231108(A000124(n+3)+3)`
-/

namespace A231110.P12808197209659521228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A000124 (n + 3) + 3).toNat

end

end A231110.P12808197209659521228

/-!
# A231111: Number of 5Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231111, there is no canonical definition to state claims against.
-/

/-! ## A231111.P8686757786808834118

`A231108(C(n+5, 2)+5)`
-/

namespace A231111.P8686757786808834118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (Nat.choose (n + 5) 2 + 5)

end

end A231111.P8686757786808834118

/-! ## A231111.P6257266364868038398

`A231108(A155212(n)+13)`
-/

namespace A231111.P6257266364868038398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A155212 n + 13).toNat

end

end A231111.P6257266364868038398

/-! ## A231111.P1912165450746921264

`A231108(A056000(n)+15)`
-/

namespace A231111.P1912165450746921264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A056000 n + 15).toNat

end

end A231111.P1912165450746921264

/-! ## A231111.P204325543068167947

`A231108(eq[7, A066657(n)])`
-/

namespace A231111.P204325543068167947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231111.P204325543068167947

/-! ## A231111.P13228507857047796508

`A231108(A051936(n+4)+14)`
-/

namespace A231111.P13228507857047796508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A051936 (n + 4) + 14).toNat

end

end A231111.P13228507857047796508

/-!
# A231112: Number of 6Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231112, there is no canonical definition to state claims against.
-/

/-! ## A231112.P12253686663931470057

`A231108(A056115(n)+21)`
-/

namespace A231112.P12253686663931470057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A056115 n + 21).toNat

end

end A231112.P12253686663931470057

/-! ## A231112.P10868665395884295664

`A231108(A167499(n+4)+1)`
-/

namespace A231112.P10868665395884295664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A167499 (n + 4) + 1).toNat

end

end A231112.P10868665395884295664

/-! ## A231112.P14653076418934965828

`A231108(A167614(n+4)+3)`
-/

namespace A231112.P14653076418934965828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A167614 (n + 4) + 3).toNat

end

end A231112.P14653076418934965828

/-! ## A231112.P5237468825565552309

`A231108(eq[6, A130270(n+1)])`
-/

namespace A231112.P5237468825565552309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231112.P5237468825565552309

/-! ## A231112.P17679016412234444467

`A231108(eq[7, A131818(n+1)])`
-/

namespace A231112.P17679016412234444467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231112.P17679016412234444467

/-!
# A231113: Number of 7Xn 0..3 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, no adjacent elements equal, and upper left element zero.

The programs for A231113, there is no canonical definition to state claims against.
-/

/-! ## A231113.P3633900546390733720

`A231108(A056119(n)+28)`
-/

namespace A231113.P3633900546390733720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A056119 n + 28).toNat

end

end A231113.P3633900546390733720

/-! ## A231113.P13703157293163993383

`A231108(eq[11, A066657(n)])`
-/

namespace A231113.P13703157293163993383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231113.P13703157293163993383

/-! ## A231113.P13633495213436666003

`A231108(A167499(n+5)+2)`
-/

namespace A231113.P13633495213436666003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A167499 (n + 5) + 2).toNat

end

end A231113.P13633495213436666003

/-! ## A231113.P13152984646934082848

`A231108(A000124(n+6)+6)`
-/

namespace A231113.P13152984646934082848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (A000124 (n + 6) + 6).toNat

end

end A231113.P13152984646934082848

/-! ## A231113.P2797487376251547987

`A231108(eq[8, A131818(n+1)])`
-/

namespace A231113.P2797487376251547987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231113.P2797487376251547987

/-!
# A231114: Numbers k dividing u(k), where the Lucas sequence is defined u(i) = u(i-1) - 4*u(i-2) with initial conditions u(0)=0, u(1)=1.

The programs for A231114, there is no canonical definition to state claims against.
-/

/-! ## A231114.P800916575737785106

`record[gcd(A091574(n), A106853(n))]`
-/

namespace A231114.P800916575737785106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091574 n) (A106853 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231114.P800916575737785106

/-! ## A231114.P3694212099156440309

`record[A015965(n+1)/A351241(n+1)]`
-/

namespace A231114.P3694212099156440309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015965 (n + 1) : ℚ) / (A351241 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231114.P3694212099156440309

/-!
# A231117: Number of positive integers <= n and relatively prime to n which are squarefree if and only if n is squarefree.

The programs for A231117, there is no canonical definition to state claims against.
-/

/-! ## A231117.P8746599892828268148

`A008966(n+1)*A073311(n+1)+A107078(n+1)*A073312(n+1)`
-/

namespace A231117.P8746599892828268148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A073311 (n + 1) + A107078 (n + 1) * A073312 (n + 1)

end

end A231117.P8746599892828268148

/-! ## A231117.P18205805627609627575

`A169646(n+1)-A286134(A000013(A035316(n+1)))`
-/

namespace A231117.P18205805627609627575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169646 (n + 1) - A286134 (A000013 (A035316 (n + 1)).toNat).toNat

end

end A231117.P18205805627609627575

/-! ## A231117.P10575585337980682628

`gcd(A039969(A100314(n)), A169646(n+1))`
-/

namespace A231117.P10575585337980682628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039969 (A100314 n).toNat) (A169646 (n + 1))

end

end A231117.P10575585337980682628

/-!
# A231120: Primes q of the form q = p^2 + 4 (p prime) such that r = q^2 + 4 and t = r^2 + 4 are also prime.

The programs for A231120, there is no canonical definition to state claims against.
-/

/-! ## A231120.P9180766029271963411

`A116887(n+1)²+4`
-/

namespace A231120.P9180766029271963411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116887 (n + 1) ^ 2 + 4

end

end A231120.P9180766029271963411

/-!
# A231121: Denominators of coefficients of expansion of arctan(x)^3.

The programs for A231121, there is no canonical definition to state claims against.
-/

/-! ## A231121.P9017275838698809445

`A142048(∑[n+2]+3)`
-/

namespace A231121.P9017275838698809445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142048 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A231121.P9017275838698809445

/-! ## A231121.P14845734459459893005

`A142048(A089071(n+4))%A338607(n+1)`
-/

namespace A231121.P14845734459459893005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142048 (A089071 (n + 4)).toNat) (A338607 (n + 1))

end

end A231121.P14845734459459893005

/-!
# A231122: Numbers k >= 0 such that 2^k is number of ways to write n as n = x*y, where x, y = squarefree numbers, 1 <= x <= n, 1 <= y <= n, or -1 if no such k exists.

The programs for A231122, there is no canonical definition to state claims against.
-/

/-! ## A231122.P4807280662183088903

`∑{d}[∏{e}[n+1, (-C(2, #))^#], A317241(#)]-1`
-/

namespace A231122.P4807280662183088903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p) : ℤ)) ^ Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317241 d - 1

end

end A231122.P4807280662183088903

/-! ## A231122.P13640786045589982740

`A344606(n+1)-(10%floor(∏{e}[(n+1)², 2-acot(#)])+1)`
-/

namespace A231122.P13640786045589982740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1) - (Int.tmod 10 ⌊∏ p ∈ Nat.primeFactors (f1 n), (2 - SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))⌋ + 1)

end

end A231122.P13640786045589982740

/-! ## A231122.P14081828505990150691

`A344606(n+1)-A318809(n+1)`
-/

namespace A231122.P14081828505990150691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1) - A318809 (n + 1)

end

end A231122.P14081828505990150691

/-! ## A231122.P5476028659844326068

`A344606(n+1)-A300831(∑{e}[n+1, #]!/∏{e}[n+1, #!])`
-/

namespace A231122.P5476028659844326068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1) - A300831 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat

end

end A231122.P5476028659844326068

/-! ## A231122.P3436503187784678397

`A344606(n+1)-A008480(A008480(n+1))`
-/

namespace A231122.P3436503187784678397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1) - A008480 (A008480 (n + 1)).toNat

end

end A231122.P3436503187784678397

/-! ## A231122.P9730246642570752162

`gcd(A230594(n+1), A345164(n+1))-A318809(n+1)`
-/

namespace A231122.P9730246642570752162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A230594 (n + 1)) (A345164 (n + 1)) : ℤ) - A318809 (n + 1)

end

end A231122.P9730246642570752162

/-! ## A231122.P17847787585763316592

`val(A250120(A124859(n+1))+1, 2)-1`
-/

namespace A231122.P17847787585763316592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A250120 (A124859 (n + 1)).toNat + 1).toNat 2 : ℤ) - 1

end

end A231122.P17847787585763316592

/-!
# A231123: Array T(n,k) read by antidiagonals: T(n,k) = sum(i=0...n, (-1)^(n+i) * C(n+i,2i) * n/(2i+1) * k^(2i+1) ), n>0, k>1.

The programs for A231123, there is no canonical definition to state claims against.
-/

/-! ## A231123.P388052664336016574

`ceil(ϕ^A245980(2*(n+2)))`
-/

namespace A231123.P388052664336016574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (A245980 (2 * (n + 2)) : ℤ)⌉

end

end A231123.P388052664336016574

/-!
# A231124: Number of (n+1)X(n+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231124, there is no canonical definition to state claims against.
-/

/-! ## A231124.P5555771432934820801

`A231131(∑[4*n]+1)`
-/

namespace A231124.P5555771432934820801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231124.P5555771432934820801

/-! ## A231124.P8610549237547582475

`A007318(∑[n])*A231131(A001844(n))`
-/

namespace A231124.P8610549237547582475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A231131 (A001844 n).toNat

end

end A231124.P8610549237547582475

/-! ## A231124.P8194627354661434502

`A231131(A001844(n))/A007318(∑[n+1])`
-/

namespace A231124.P8194627354661434502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231131 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A231124.P8194627354661434502

/-! ## A231124.P186102833220551942

`char[A001222(n+1)]*A231131(A001844(n))`
-/

namespace A231124.P186102833220551942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231131 (A001844 n).toNat

end

end A231124.P186102833220551942

/-! ## A231124.P11385420959703046660

`A014963(14*(n+1))*A231131(A001844(n))`
-/

namespace A231124.P11385420959703046660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (14 * (n + 1)) * A231131 (A001844 n).toNat

end

end A231124.P11385420959703046660

/-!
# A231125: Number of (n+1) X (2+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231125, there is no canonical definition to state claims against.
-/

/-! ## A231125.P2208028623293431134

`A231131(∑[n+1]+2)`
-/

namespace A231125.P2208028623293431134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231125.P2208028623293431134

/-! ## A231125.P3974516180280563469

`lcm(2, A231131(A000096(n)+3))`
-/

namespace A231125.P3974516180280563469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231131 (A000096 n + 3).toNat)

end

end A231125.P3974516180280563469

/-! ## A231125.P4109954861962950871

`record[A231131(abs(A201163(n)))]`
-/

namespace A231125.P4109954861962950871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231125.P4109954861962950871

/-! ## A231125.P5515954044176093889

`record[A231131(Δ[A003453(n+5)])]`
-/

namespace A231125.P5515954044176093889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231125.P5515954044176093889

/-! ## A231125.P17399459005129002907

`record[A231131(A000096(val(n+1, 2)+1))]`
-/

namespace A231125.P17399459005129002907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231125.P17399459005129002907

/-!
# A231126: Number of (n+1) X (3+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231126, there is no canonical definition to state claims against.
-/

/-! ## A231126.P5611213041895327486

`sqrt(A231319(n+1)/6)`
-/

namespace A231126.P5611213041895327486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A231319 (n + 1) : ℚ) / 6 : ℝ)

end

end A231126.P5611213041895327486

/-! ## A231126.P5327982984700741140

`A231131(∑[n+2]+4)`
-/

namespace A231126.P5327982984700741140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231126.P5327982984700741140

/-! ## A231126.P18016588370235184954

`A231137(∑[n+2]+4)`
-/

namespace A231126.P18016588370235184954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231126.P18016588370235184954

/-! ## A231126.P18307805298245325947

`lcm(2, A231131(A167614(n+1)))`
-/

namespace A231126.P18307805298245325947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231131 (A167614 (n + 1)).toNat)

end

end A231126.P18307805298245325947

/-! ## A231126.P13351268742364083965

`A231131(A167614(n+1))+A178798(n)`
-/

namespace A231126.P13351268742364083965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167614 (n + 1)).toNat + A178798 n

end

end A231126.P13351268742364083965

/-!
# A231127: Number of (n+1)X(4+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231127, there is no canonical definition to state claims against.
-/

/-! ## A231127.P12724492651036564316

`A231131(A374004(n+1))`
-/

namespace A231127.P12724492651036564316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A374004 (n + 1)).toNat

end

end A231127.P12724492651036564316

/-! ## A231127.P580459259779985987

`A231131(A141214(n)+7)`
-/

namespace A231127.P580459259779985987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A141214 n + 7).toNat

end

end A231127.P580459259779985987

/-! ## A231127.P7453452645486628510

`A231131(A052905(n)+9)`
-/

namespace A231127.P7453452645486628510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A052905 n + 9).toNat

end

end A231127.P7453452645486628510

/-! ## A231127.P5473782132377014949

`A231131(A167614(n+2)+1)`
-/

namespace A231127.P5473782132377014949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167614 (n + 2) + 1).toNat

end

end A231127.P5473782132377014949

/-! ## A231127.P9990571452988987294

`A231131(A000217(n+3)+4)`
-/

namespace A231127.P9990571452988987294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A000217 (n + 3) + 4).toNat

end

end A231127.P9990571452988987294

/-!
# A231128: Number of (n+1)X(5+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231128, there is no canonical definition to state claims against.
-/

/-! ## A231128.P6340617953121401465

`sqrt(A231321(n+1)/6)`
-/

namespace A231128.P6340617953121401465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A231321 (n + 1) : ℚ) / 6 : ℝ)

end

end A231128.P6340617953121401465

/-! ## A231128.P10597734311258792712

`A231131(A374005(n+1))`
-/

namespace A231128.P10597734311258792712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A374005 (n + 1)).toNat

end

end A231128.P10597734311258792712

/-! ## A231128.P6091700931574708467

`A231131(A167499(n+3))`
-/

namespace A231128.P6091700931574708467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167499 (n + 3)).toNat

end

end A231128.P6091700931574708467

/-! ## A231128.P761932875181857043

`A231131(A141214(n+1)+8)`
-/

namespace A231128.P761932875181857043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A141214 (n + 1) + 8).toNat

end

end A231128.P761932875181857043

/-! ## A231128.P17467394774408494915

`A231137(A141214(n+1)+8)`
-/

namespace A231128.P17467394774408494915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A141214 (n + 1) + 8).toNat

end

end A231128.P17467394774408494915

/-!
# A231129: Number of (n+1)X(6+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231129, there is no canonical definition to state claims against.
-/

/-! ## A231129.P18225906579584207665

`A231131(A374007(n+1))`
-/

namespace A231129.P18225906579584207665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A374007 (n + 1)).toNat

end

end A231129.P18225906579584207665

/-! ## A231129.P1870062327222715614

`A231131(A167499(n+4)+1)`
-/

namespace A231129.P1870062327222715614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167499 (n + 4) + 1).toNat

end

end A231129.P1870062327222715614

/-! ## A231129.P4183377438868926410

`A231131(A167614(n+4)+3)`
-/

namespace A231129.P4183377438868926410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167614 (n + 4) + 3).toNat

end

end A231129.P4183377438868926410

/-! ## A231129.P7094460500482067932

`A231131(eq[7, A131818(n+1)])`
-/

namespace A231129.P7094460500482067932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231129.P7094460500482067932

/-! ## A231129.P8322260290524860172

`A231131(A052905(n+3))`
-/

namespace A231129.P8322260290524860172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A052905 (n + 3)).toNat

end

end A231129.P8322260290524860172

/-!
# A231130: Number of (n+1)X(7+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231130, there is no canonical definition to state claims against.
-/

/-! ## A231130.P10700064942988378523

`A231131(A374008(n+1))`
-/

namespace A231130.P10700064942988378523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A374008 (n + 1)).toNat

end

end A231130.P10700064942988378523

/-! ## A231130.P12560262598635472279

`A231131(A167499(n+5)+2)`
-/

namespace A231130.P12560262598635472279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167499 (n + 5) + 2).toNat

end

end A231130.P12560262598635472279

/-! ## A231130.P2656055618162732031

`A231131(A167614(n+5)+4)`
-/

namespace A231130.P2656055618162732031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231131 (A167614 (n + 5) + 4).toNat

end

end A231130.P2656055618162732031

/-! ## A231130.P407720419619437981

`A231137(A167614(n+5)+4)`
-/

namespace A231130.P407720419619437981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A167614 (n + 5) + 4).toNat

end

end A231130.P407720419619437981

/-!
# A231131: T(n,k) = Number of (n+1) X (k+1) white-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231131, there is no canonical definition to state claims against.
-/

/-! ## A231131.P1691295008231848783

`A231324(n+1)/(6*A231137(n+1))`
-/

namespace A231131.P1691295008231848783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231324 (n + 1) : ℚ) / (6 * A231137 (n + 1) : ℚ)

end

end A231131.P1691295008231848783

/-! ## A231131.P9288190964296541891

`A231324(n+1)/A008458(A231137(n+1))`
-/

namespace A231131.P9288190964296541891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231324 (n + 1) : ℚ) / (A008458 (A231137 (n + 1)).toNat : ℚ)

end

end A231131.P9288190964296541891

/-! ## A231131.P14212034611637923012

`A112689(A231324(n+1)/A231137(n+1))`
-/

namespace A231131.P14212034611637923012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (SequenceMachineLib.roundAway ((A231324 (n + 1) : ℚ) / (A231137 (n + 1) : ℚ))).toNat

end

end A231131.P14212034611637923012

/-! ## A231131.P16300993144811334121

`A214394(A231324(n+1)/A231137(n+1))`
-/

namespace A231131.P16300993144811334121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (SequenceMachineLib.roundAway ((A231324 (n + 1) : ℚ) / (A231137 (n + 1) : ℚ))).toNat

end

end A231131.P16300993144811334121

/-! ## A231131.P14257008347834547075

`A382770(A200713(n+1))`
-/

namespace A231131.P14257008347834547075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382770 (A200713 (n + 1)).toNat

end

end A231131.P14257008347834547075

/-!
# A231133: Number of (n+1)X(n+1) black-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231133, there is no canonical definition to state claims against.
-/

/-! ## A231133.P18391892965783280115

`A231137(∑[4*n]+1)`
-/

namespace A231133.P18391892965783280115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231133.P18391892965783280115

/-! ## A231133.P46274791947213565

`record[gcd(A008482(n), A231137(n+1))]`
-/

namespace A231133.P46274791947213565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A231137 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231133.P46274791947213565

/-! ## A231133.P6026608605970917934

`gcd(A000038(n), A231137(A001844(n)))`
-/

namespace A231133.P6026608605970917934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A231137 (A001844 n).toNat)

end

end A231133.P6026608605970917934

/-! ## A231133.P2178200885164364121

`lcm(A087960(n), A231137(A001844(n)))`
-/

namespace A231133.P2178200885164364121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A231137 (A001844 n).toNat)

end

end A231133.P2178200885164364121

/-! ## A231133.P7064624927906596591

`or(A000007(n), A231137(A001844(n)))`
-/

namespace A231133.P7064624927906596591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231137 (A001844 n).toNat)

end

end A231133.P7064624927906596591

/-!
# A231134: Number of (n+1) X (2+1) black-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231134, there is no canonical definition to state claims against.
-/

/-! ## A231134.P4405700731577844127

`A231137(∑[n+1]+2)`
-/

namespace A231134.P4405700731577844127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231134.P4405700731577844127

/-! ## A231134.P17516415481111370348

`record[A231137(abs(A201163(n)))]`
-/

namespace A231134.P17516415481111370348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231134.P17516415481111370348

/-! ## A231134.P9675102625872336053

`record[A231137(Δ[A003453(n+5)])]`
-/

namespace A231134.P9675102625872336053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231134.P9675102625872336053

/-! ## A231134.P2441314886911455331

`record[A231137(A198453(n+1))]`
-/

namespace A231134.P2441314886911455331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231134.P2441314886911455331

/-! ## A231134.P5051678818438430696

`A000027(A231137(∑[n+2]))`
-/

namespace A231134.P5051678818438430696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A231137 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A231134.P5051678818438430696

/-!
# A231135: Number of (n+1)X(4+1) black-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231135, there is no canonical definition to state claims against.
-/

/-! ## A231135.P9691672791218518291

`A231137(A374004(n+1))`
-/

namespace A231135.P9691672791218518291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A374004 (n + 1)).toNat

end

end A231135.P9691672791218518291

/-! ## A231135.P6832874132854856007

`A231137(A141214(n)+7)`
-/

namespace A231135.P6832874132854856007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A141214 n + 7).toNat

end

end A231135.P6832874132854856007

/-! ## A231135.P10427347298330739258

`A231137(A052905(n)+9)`
-/

namespace A231135.P10427347298330739258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A052905 n + 9).toNat

end

end A231135.P10427347298330739258

/-! ## A231135.P6515246527547806596

`A231137(A167614(n+2)+1)`
-/

namespace A231135.P6515246527547806596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A167614 (n + 2) + 1).toNat

end

end A231135.P6515246527547806596

/-! ## A231135.P15041799732244365786

`A231137(A000217(n+3)+4)`
-/

namespace A231135.P15041799732244365786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A000217 (n + 3) + 4).toNat

end

end A231135.P15041799732244365786

/-!
# A231136: Number of (n+1)X(6+1) black-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231136, there is no canonical definition to state claims against.
-/

/-! ## A231136.P683022965416363077

`A231137(A374007(n+1))`
-/

namespace A231136.P683022965416363077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A374007 (n + 1)).toNat

end

end A231136.P683022965416363077

/-! ## A231136.P2828231554868243138

`A231137(A167499(n+4)+1)`
-/

namespace A231136.P2828231554868243138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A167499 (n + 4) + 1).toNat

end

end A231136.P2828231554868243138

/-! ## A231136.P3859903517623134886

`A231137(A167614(n+4)+3)`
-/

namespace A231136.P3859903517623134886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A167614 (n + 4) + 3).toNat

end

end A231136.P3859903517623134886

/-! ## A231136.P8733480479281990194

`A231137(eq[7, A131818(n+1)])`
-/

namespace A231136.P8733480479281990194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231136.P8733480479281990194

/-! ## A231136.P4372982622314723435

`A231137(A052905(n+3))`
-/

namespace A231136.P4372982622314723435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231137 (A052905 (n + 3)).toNat

end

end A231136.P4372982622314723435

/-!
# A231137: T(n,k)=Number of (n+1)X(k+1) black-square subarrays of 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231137, there is no canonical definition to state claims against.
-/

/-! ## A231137.P17162468930129623673

`A231324(n+1)/(6*A231131(n+1))`
-/

namespace A231137.P17162468930129623673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231324 (n + 1) : ℚ) / (6 * A231131 (n + 1) : ℚ)

end

end A231137.P17162468930129623673

/-! ## A231137.P13483693555335610033

`A231324(n+1)/A008458(A231131(n+1))`
-/

namespace A231137.P13483693555335610033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231324 (n + 1) : ℚ) / (A008458 (A231131 (n + 1)).toNat : ℚ)

end

end A231137.P13483693555335610033

/-! ## A231137.P14389042512790662096

`A112689(A231324(n+1)/A231131(n+1))`
-/

namespace A231137.P14389042512790662096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (SequenceMachineLib.roundAway ((A231324 (n + 1) : ℚ) / (A231131 (n + 1) : ℚ))).toNat

end

end A231137.P14389042512790662096

/-! ## A231137.P1353070909398831234

`A214394(A231324(n+1)/A231131(n+1))`
-/

namespace A231137.P1353070909398831234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (SequenceMachineLib.roundAway ((A231324 (n + 1) : ℚ) / (A231131 (n + 1) : ℚ))).toNat

end

end A231137.P1353070909398831234

/-! ## A231137.P17216135634713547354

`A193592(A231324(n+1)/3)`
-/

namespace A231137.P17216135634713547354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (SequenceMachineLib.roundAway ((A231324 (n + 1) : ℚ) / 3)).toNat

end

end A231137.P17216135634713547354

/-!
# A231138: Number of (n+1) X (1+1) 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with upper left element zero.

The programs for A231138, there is no canonical definition to state claims against.
-/

/-! ## A231138.P8717445027063199783

`2*A231413(n+1)`
-/

namespace A231138.P8717445027063199783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231413 (n + 1)

end

end A231138.P8717445027063199783

/-! ## A231138.P6742098610710466908

`A232138(n+2)/2`
-/

namespace A231138.P6742098610710466908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232138 (n + 2) : ℚ) / 2

end

end A231138.P6742098610710466908

/-! ## A231138.P13213110387649296324

`A231413(A000027(n+1))+A231413(n+1)`
-/

namespace A231138.P13213110387649296324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231413 (A000027 (n + 1)).toNat + A231413 (n + 1)

end

end A231138.P13213110387649296324

/-! ## A231138.P4192441160919161952

`A231413(n+1)+record[A231413(A003963(n+1))]`
-/

namespace A231138.P4192441160919161952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231413 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231413 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231138.P4192441160919161952

/-! ## A231138.P6387766131320904473

`A231413(n+1)+record[A231413(A331182(n+1))]`
-/

namespace A231138.P6387766131320904473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231413 (A331182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231413 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231138.P6387766131320904473

/-! ## A231138.P9943083971804245303

`A231413(n+1)/2^A008683(A038888(n+1))`
-/

namespace A231138.P9943083971804245303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231413 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ)

end

end A231138.P9943083971804245303

/-! ## A231138.P6232787784889473967

`A231413(n+1)+A231413(n+1)%A281607(n+1)`
-/

namespace A231138.P6232787784889473967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231413 (n + 1) + Int.tmod (A231413 (n + 1)) (A281607 (n + 1))

end

end A231138.P6232787784889473967

/-!
# A231139: Number of (n+1) X (2+1) 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with upper left element zero.

The programs for A231139, there is no canonical definition to state claims against.
-/

/-! ## A231139.P10316595443210633313

`A231144(∑[n+1]+2)`
-/

namespace A231139.P10316595443210633313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231139.P10316595443210633313

/-! ## A231139.P14115706595594828056

`lcm(2, A231144(A000096(n)+3))`
-/

namespace A231139.P14115706595594828056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231144 (A000096 n + 3).toNat)

end

end A231139.P14115706595594828056

/-! ## A231139.P3290147853058807676

`A208673(n)*A231144(A000096(n)+3)`
-/

namespace A231139.P3290147853058807676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n * A231144 (A000096 n + 3).toNat

end

end A231139.P3290147853058807676

/-! ## A231139.P16526447345931941769

`or(A231144(A000096(n)+3), A282133(n+1))`
-/

namespace A231139.P16526447345931941769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A231144 (A000096 n + 3).toNat) (A282133 (n + 1))

end

end A231139.P16526447345931941769

/-! ## A231139.P2845892852767554080

`A231144(A000096(n+1))/A208673(n+1)`
-/

namespace A231139.P2845892852767554080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231144 (A000096 (n + 1)).toNat : ℚ) / (A208673 (n + 1) : ℚ)

end

end A231139.P2845892852767554080

/-!
# A231140: Number of (n+1)X(3+1) 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with upper left element zero.

The programs for A231140, there is no canonical definition to state claims against.
-/

/-! ## A231140.P2955210779429806467

`A231144(∑[n+2]+4)`
-/

namespace A231140.P2955210779429806467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231140.P2955210779429806467

/-! ## A231140.P5004242974149402455

`lcm(2, A231144(A167614(n+1)))`
-/

namespace A231140.P5004242974149402455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231144 (A167614 (n + 1)).toNat)

end

end A231140.P5004242974149402455

/-! ## A231140.P15297428660994647009

`or(A000038(n), A231144(A167614(n+1)))`
-/

namespace A231140.P15297428660994647009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A231144 (A167614 (n + 1)).toNat)

end

end A231140.P15297428660994647009

/-! ## A231140.P5728388810937071319

`A231144(A167614(n+1))*A298589(n+1)`
-/

namespace A231140.P5728388810937071319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A167614 (n + 1)).toNat * A298589 (n + 1)

end

end A231140.P5728388810937071319

/-! ## A231140.P360535389710990137

`A231144(A167614(n+1))*A299521(n+1)`
-/

namespace A231140.P360535389710990137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A167614 (n + 1)).toNat * A299521 (n + 1)

end

end A231140.P360535389710990137

/-!
# A231141: Number of (n+1)X(4+1) 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with upper left element zero.

The programs for A231141, there is no canonical definition to state claims against.
-/

/-! ## A231141.P1262337637977954802

`A231144(A141214(n)+7)`
-/

namespace A231141.P1262337637977954802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A141214 n + 7).toNat

end

end A231141.P1262337637977954802

/-! ## A231141.P8964056677580008713

`A231144(A052905(n)+9)`
-/

namespace A231141.P8964056677580008713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A052905 n + 9).toNat

end

end A231141.P8964056677580008713

/-! ## A231141.P10274294824223043453

`A231144(A055999(n)+10)`
-/

namespace A231141.P10274294824223043453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A055999 n + 10).toNat

end

end A231141.P10274294824223043453

/-! ## A231141.P7534344582137964957

`A231144(A167614(n+2)+1)`
-/

namespace A231141.P7534344582137964957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A167614 (n + 2) + 1).toNat

end

end A231141.P7534344582137964957

/-! ## A231141.P1951034220793015075

`A231144(A166136(n+2)-2)`
-/

namespace A231141.P1951034220793015075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A166136 (n + 2) - 2).toNat

end

end A231141.P1951034220793015075

/-!
# A231142: Number of (n+1)X(5+1) 0..2 arrays with no element equal to a strict majority of its horizontal and vertical neighbors, with upper left element zero.

The programs for A231142, there is no canonical definition to state claims against.
-/

/-! ## A231142.P15917439842420648835

`A231144(A374005(n+1))`
-/

namespace A231142.P15917439842420648835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A374005 (n + 1)).toNat

end

end A231142.P15917439842420648835

/-! ## A231142.P12387399251992829938

`A231144(A166136(n+3)-1)`
-/

namespace A231142.P12387399251992829938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A166136 (n + 3) - 1).toNat

end

end A231142.P12387399251992829938

/-! ## A231142.P7535331865413220516

`A231144(eq[6, A131818(n+1)])`
-/

namespace A231142.P7535331865413220516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231142.P7535331865413220516

/-! ## A231142.P15308108974980061248

`A231144(eq[2, A098950(n)])`
-/

namespace A231142.P15308108974980061248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231142.P15308108974980061248

/-!
# A231143: 

The programs for A231143, there is no canonical definition to state claims against.
-/

/-! ## A231143.P8215123381172706618

`A231144(A167499(n+4)+1)`
-/

namespace A231143.P8215123381172706618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A167499 (n + 4) + 1).toNat

end

end A231143.P8215123381172706618

/-! ## A231143.P8044927593531460937

`A231144(A167614(n+4)+3)`
-/

namespace A231143.P8044927593531460937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A167614 (n + 4) + 3).toNat

end

end A231143.P8044927593531460937

/-! ## A231143.P16114670447724612681

`A231144(A000217(n+6)-n)`
-/

namespace A231143.P16114670447724612681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231144 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A231143.P16114670447724612681

/-!
# A231146: Array of coefficients of numerator polynomials of the rational function p(n, x - 1/x), where p(n,x) is the n-th cyclotomic polynomial.

The programs for A231146, there is no canonical definition to state claims against.
-/

/-! ## A231146.P16768215515685631474

`A306453(A242076(n+1)-A306441(n+1))`
-/

namespace A231146.P16768215515685631474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306453 (A242076 (n + 1) - A306441 (n + 1)).toNat

end

end A231146.P16768215515685631474

/-! ## A231146.P7858567154628897065

`A086831(gcd(A201251(3*n+2), A357168(n+3)))`
-/

namespace A231146.P7858567154628897065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (Int.gcd (A201251 (3 * n + 2)) (A357168 (n + 3)))

end

end A231146.P7858567154628897065

/-! ## A231146.P10386263169118308043

`A008683(or(A332401(n+2), A332403(2*(n+1))))`
-/

namespace A231146.P10386263169118308043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A332401 (n + 2)) (A332403 (2 * (n + 1)))).toNat

end

end A231146.P10386263169118308043

/-! ## A231146.P12491134888640281792

`A008683(or(A332401(n+2), A332405(2*(n+1))))`
-/

namespace A231146.P12491134888640281792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A332401 (n + 2)) (A332405 (2 * (n + 1)))).toNat

end

end A231146.P12491134888640281792

/-! ## A231146.P14791832098631053358

`A210826(A000125(n)+A000078(n+2))`
-/

namespace A231146.P14791832098631053358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (A000125 n + A000078 (n + 2)).toNat

end

end A231146.P14791832098631053358

/-!
# A231147: Array of coefficients of numerator polynomials of the rational function p(n, x + 1/x), where p(n,x) = (x^n - 1)/(x - 1).

The programs for A231147, there is no canonical definition to state claims against.
-/

/-! ## A231147.P2686820123552265048

`A176816(6*A140750(n+1))`
-/

namespace A231147.P2686820123552265048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (6 * A140750 (n + 1)).toNat

end

end A231147.P2686820123552265048

/-! ## A231147.P16822955076516936130

`A103055(A073790(A249095(n)))`
-/

namespace A231147.P16822955076516936130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103055 (A073790 (A249095 n).toNat).toNat

end

end A231147.P16822955076516936130

/-! ## A231147.P3257074723386682858

`A001222(A094342(n+1))*A103055(A249095(n))`
-/

namespace A231147.P3257074723386682858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A094342 (n + 1)).toNat * A103055 (A249095 n).toNat

end

end A231147.P3257074723386682858

/-!
# A231148: Array of coefficients of numerator polynomials of the rational function p(n, x - 1/x), where p(n,x) = (x^n - 1)/(x - 1).

The programs for A231148, there is no canonical definition to state claims against.
-/

/-! ## A231148.P6133558090260331627

`A317950(A330944(n+1)^A212122(n+1))`
-/

namespace A231148.P6133558090260331627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (SequenceMachineLib.roundAway ((A330944 (n + 1) : ℚ) ^ (A212122 (n + 1) : ℤ))).toNat

end

end A231148.P6133558090260331627

/-!
# A231149: Greatest integer k such that n+1 + ... + n+k <= 1 + ... + n.

The programs for A231149, the canonical program `A231149.P4309562839319924533` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231149 has offset 2).

The definition of A231149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231149.P4309562839319924533

`floor((n+2)/(a(n-1)/(n+3)+2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231149

/-- `floor((n+2)/(a(n-1)/(n+3)+2))` -/
def P4309562839319924533.Spec : Prop :=
  ∀ n, P4309562839319924533.a n = A231149 (n + 2)

theorem P4309562839319924533.correct : P4309562839319924533.Spec := by
  intro n
  simp only [A231149, Nat.add_sub_cancel]

end A231149

/-! ## A231149.P17207264987088297151

`A231151(n+2)-1`
-/

namespace A231149.P17207264987088297151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231151 (n + 2) - 1

end

end A231149.P17207264987088297151

namespace A231149

/-- `A231151(n+2)-1` -/
def P17207264987088297151.Spec : Prop :=
  ∀ n, P17207264987088297151.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P8459857408847534478

`floor(sqrt(A054686(n+3)))`
-/

namespace A231149.P8459857408847534478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A054686 (n + 3))

end

end A231149.P8459857408847534478

namespace A231149

/-- `floor(sqrt(A054686(n+3)))` -/
def P8459857408847534478.Spec : Prop :=
  ∀ n, P8459857408847534478.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P12076354950247807265

`∑[val(Δ[A063957(n+2)], 4)]`
-/

namespace A231149.P12076354950247807265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231149.P12076354950247807265

namespace A231149

/-- `∑[val(Δ[A063957(n+2)], 4)]` -/
def P12076354950247807265.Spec : Prop :=
  ∀ n, (P12076354950247807265.a n : ℤ) = A231149 (n + 2)

end A231149

/-! ## A231149.P16542953557227573253

`∑[char[A022846(n)-2+n]]`
-/

namespace A231149.P16542953557227573253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n - 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231149.P16542953557227573253

namespace A231149

/-- `∑[char[A022846(n)-2+n]]` -/
def P16542953557227573253.Spec : Prop :=
  ∀ n, (P16542953557227573253.a n : ℤ) = A231149 (n + 2)

end A231149

/-! ## A231149.P12932929628673585720

`∑[char[∑[A214848(n)]+n-1]]`
-/

namespace A231149.P12932929628673585720
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231149.P12932929628673585720

namespace A231149

/-- `∑[char[∑[A214848(n)]+n-1]]` -/
def P12932929628673585720.Spec : Prop :=
  ∀ n, (P12932929628673585720.a n : ℤ) = A231149 (n + 2)

end A231149

/-! ## A231149.P18323198566875668724

`A258703(2*n+5)-(n+2)`
-/

namespace A231149.P18323198566875668724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (2 * n + 5) - (n + 2 : ℤ)

end

end A231149.P18323198566875668724

namespace A231149

/-- `A258703(2*n+5)-(n+2)` -/
def P18323198566875668724.Spec : Prop :=
  ∀ n, P18323198566875668724.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P11165584945262158047

`A049473(2*n+5)-(n+3)`
-/

namespace A231149.P11165584945262158047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 5) - (n + 3 : ℤ)

end

end A231149.P11165584945262158047

namespace A231149

/-- `A049473(2*n+5)-(n+3)` -/
def P11165584945262158047.Spec : Prop :=
  ∀ n, P11165584945262158047.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P2137650861961189406

`A061288(n+1-a(n-1))` with `a(0)=1`
-/

namespace A231149.P2137650861961189406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061288 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A231149.P2137650861961189406

namespace A231149

/-- `A061288(n+1-a(n-1))` -/
def P2137650861961189406.Spec : Prop :=
  ∀ n, P2137650861961189406.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P2370445770683584147

`A061288(A189688(n+2))`
-/

namespace A231149.P2370445770683584147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A189688 (n + 2)).toNat

end

end A231149.P2370445770683584147

namespace A231149

/-- `A061288(A189688(n+2))` -/
def P2370445770683584147.Spec : Prop :=
  ∀ n, P2370445770683584147.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P11645496548310820261

`A172474(A195178(n+2))`
-/

namespace A231149.P11645496548310820261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A195178 (n + 2)).toNat

end

end A231149.P11645496548310820261

namespace A231149

/-- `A172474(A195178(n+2))` -/
def P11645496548310820261.Spec : Prop :=
  ∀ n, P11645496548310820261.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P3830300860286543865

`A194990(A286689(n+1)+2)-1`
-/

namespace A231149.P3830300860286543865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A286689 (n + 1) + 2).toNat - 1

end

end A231149.P3830300860286543865

namespace A231149

/-- `A194990(A286689(n+1)+2)-1` -/
def P3830300860286543865.Spec : Prop :=
  ∀ n, P3830300860286543865.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P7505599947261065093

`A194990(A286926(n+1)+2)-1`
-/

namespace A231149.P7505599947261065093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A286926 (n + 1) + 2).toNat - 1

end

end A231149.P7505599947261065093

namespace A231149

/-- `A194990(A286926(n+1)+2)-1` -/
def P7505599947261065093.Spec : Prop :=
  ∀ n, P7505599947261065093.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P17542250360936537101

`A172474(A195177(n+2)+n+2)`
-/

namespace A231149.P17542250360936537101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A195177 (n + 2) + (n + 2 : ℤ)).toNat

end

end A231149.P17542250360936537101

namespace A231149

/-- `A172474(A195177(n+2)+n+2)` -/
def P17542250360936537101.Spec : Prop :=
  ∀ n, P17542250360936537101.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P2333273840608009767

`n+2-A088462(A001953(n+2))`
-/

namespace A231149.P2333273840608009767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A088462 (A001953 (n + 2)).toNat

end

end A231149.P2333273840608009767

namespace A231149

/-- `n+2-A088462(A001953(n+2))` -/
def P2333273840608009767.Spec : Prop :=
  ∀ n, P2333273840608009767.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P9665078934266690244

`A172474(A195179(n+2)-(n+2))`
-/

namespace A231149.P9665078934266690244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A195179 (n + 2) - (n + 2 : ℤ)).toNat

end

end A231149.P9665078934266690244

namespace A231149

/-- `A172474(A195179(n+2)-(n+2))` -/
def P9665078934266690244.Spec : Prop :=
  ∀ n, P9665078934266690244.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P1506623083493001641

`A061288(2*n+1-A022846(n))`
-/

namespace A231149.P1506623083493001641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 ((2 * n + 1 : ℤ) - A022846 n).toNat

end

end A231149.P1506623083493001641

namespace A231149

/-- `A061288(2*n+1-A022846(n))` -/
def P1506623083493001641.Spec : Prop :=
  ∀ n, P1506623083493001641.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P5823050503753030739

`∑[A004641(Δ[A189573(2*(n+2))])]`
-/

namespace A231149.P5823050503753030739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231149.P5823050503753030739

namespace A231149

/-- `∑[A004641(Δ[A189573(2*(n+2))])]` -/
def P5823050503753030739.Spec : Prop :=
  ∀ n, P5823050503753030739.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P605684755499784401

`∑[A001221(Δ[A049473(2*n+3)])]`
-/

namespace A231149.P605684755499784401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231149.P605684755499784401

namespace A231149

/-- `∑[A001221(Δ[A049473(2*n+3)])]` -/
def P605684755499784401.Spec : Prop :=
  ∀ n, P605684755499784401.a n = A231149 (n + 2)

end A231149

/-! ## A231149.P1969433322851905338

`∑[A001222(Δ[A049473(2*n+3)])]`
-/

namespace A231149.P1969433322851905338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231149.P1969433322851905338

namespace A231149

/-- `∑[A001222(Δ[A049473(2*n+3)])]` -/
def P1969433322851905338.Spec : Prop :=
  ∀ n, P1969433322851905338.a n = A231149 (n + 2)

end A231149

/-!
# A231151: Least integer k such that n+1 + ... + n+k > 1 + ... + n.

The programs for A231151, the canonical program `A231151.P17080161268396402534` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231151 has offset 2).

The definition of A231151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231151.P17080161268396402534

`A231149(n+2)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A231151

/-- `A231149(n+2)+1` -/
def P17080161268396402534.Spec : Prop :=
  ∀ n, P17080161268396402534.a n = A231151 (n + 2)

theorem P17080161268396402534.correct : P17080161268396402534.Spec := by
  intro n
  simp only [A231151, Nat.add_sub_cancel]

end A231151

/-! ## A231151.P17419743472852629284

`floor(sqrt(A054686(n+3)))+1`
-/

namespace A231151.P17419743472852629284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A054686 (n + 3)) + 1

end

end A231151.P17419743472852629284

namespace A231151

/-- `floor(sqrt(A054686(n+3)))+1` -/
def P17419743472852629284.Spec : Prop :=
  ∀ n, P17419743472852629284.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P3494907250528646087

`ceil(A054071(2*n+5)/2)`
-/

namespace A231151.P3494907250528646087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054071 (2 * n + 5) : ℚ) / 2⌉

end

end A231151.P3494907250528646087

namespace A231151

/-- `ceil(A054071(2*n+5)/2)` -/
def P3494907250528646087.Spec : Prop :=
  ∀ n, P3494907250528646087.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P6981797863592408116

`A258703(2*n+5)-(n+1)`
-/

namespace A231151.P6981797863592408116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (2 * n + 5) - (n + 1 : ℤ)

end

end A231151.P6981797863592408116

namespace A231151

/-- `A258703(2*n+5)-(n+1)` -/
def P6981797863592408116.Spec : Prop :=
  ∀ n, P6981797863592408116.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P14004681518545040032

`A049473(2*n+5)-(n+2)`
-/

namespace A231151.P14004681518545040032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 5) - (n + 2 : ℤ)

end

end A231151.P14004681518545040032

namespace A231151

/-- `A049473(2*n+5)-(n+2)` -/
def P14004681518545040032.Spec : Prop :=
  ∀ n, P14004681518545040032.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P13800208180494757953

`∑[val(Δ[A063957(n+2)], 4)]+1`
-/

namespace A231151.P13800208180494757953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A231151.P13800208180494757953

namespace A231151

/-- `∑[val(Δ[A063957(n+2)], 4)]+1` -/
def P13800208180494757953.Spec : Prop :=
  ∀ n, (P13800208180494757953.a n : ℤ) = A231151 (n + 2)

end A231151

/-! ## A231151.P12486447259496899071

`∑[char[A022846(n)-2+n]]+1`
-/

namespace A231151.P12486447259496899071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n - 2 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A231151.P12486447259496899071

namespace A231151

/-- `∑[char[A022846(n)-2+n]]+1` -/
def P12486447259496899071.Spec : Prop :=
  ∀ n, (P12486447259496899071.a n : ℤ) = A231151 (n + 2)

end A231151

/-! ## A231151.P1111091443996191236

`A195177(floor((n+2)*sqrt(2))+n+4)`
-/

namespace A231151.P1111091443996191236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (⌊(n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ + (n : ℤ) + 4).toNat

end

end A231151.P1111091443996191236

namespace A231151

/-- `A195177(floor((n+2)*sqrt(2))+n+4)` -/
def P1111091443996191236.Spec : Prop :=
  ∀ n, P1111091443996191236.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P6970499482489591562

`A020725(A231149(n+2))`
-/

namespace A231151.P6970499482489591562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A231149 (n + 2)).toNat

end

end A231151.P6970499482489591562

namespace A231151

/-- `A020725(A231149(n+2))` -/
def P6970499482489591562.Spec : Prop :=
  ∀ n, P6970499482489591562.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P12141952240697196974

`A194990(A195178(n+2))`
-/

namespace A231151.P12141952240697196974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A195178 (n + 2)).toNat

end

end A231151.P12141952240697196974

namespace A231151

/-- `A194990(A195178(n+2))` -/
def P12141952240697196974.Spec : Prop :=
  ∀ n, P12141952240697196974.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P2048481259522779833

`A194990(A286926(n+3))`
-/

namespace A231151.P2048481259522779833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A286926 (n + 3)).toNat

end

end A231151.P2048481259522779833

namespace A231151

/-- `A194990(A286926(n+3))` -/
def P2048481259522779833.Spec : Prop :=
  ∀ n, P2048481259522779833.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P9570519937907815096

`A061288(A189688(n+2))+1`
-/

namespace A231151.P9570519937907815096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 (A189688 (n + 2)).toNat + 1

end

end A231151.P9570519937907815096

namespace A231151

/-- `A061288(A189688(n+2))+1` -/
def P9570519937907815096.Spec : Prop :=
  ∀ n, P9570519937907815096.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P4381969417574650562

`A194990(A286689(n+1)+2)`
-/

namespace A231151.P4381969417574650562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A286689 (n + 1) + 2).toNat

end

end A231151.P4381969417574650562

namespace A231151

/-- `A194990(A286689(n+1)+2)` -/
def P4381969417574650562.Spec : Prop :=
  ∀ n, P4381969417574650562.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P17056113949818554351

`A194990(A195177(n+2)+n+2)`
-/

namespace A231151.P17056113949818554351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A195177 (n + 2) + (n + 2 : ℤ)).toNat

end

end A231151.P17056113949818554351

namespace A231151

/-- `A194990(A195177(n+2)+n+2)` -/
def P17056113949818554351.Spec : Prop :=
  ∀ n, P17056113949818554351.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P12285654384789668894

`A194990(A195179(n+2)-(n+2))`
-/

namespace A231151.P12285654384789668894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A195179 (n + 2) - (n + 2 : ℤ)).toNat

end

end A231151.P12285654384789668894

namespace A231151

/-- `A194990(A195179(n+2)-(n+2))` -/
def P12285654384789668894.Spec : Prop :=
  ∀ n, P12285654384789668894.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P15088743648153284070

`A248183(2*n+5)-(n+1)`
-/

namespace A231151.P15088743648153284070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (2 * n + 5) - (n + 1 : ℤ)

end

end A231151.P15088743648153284070

namespace A231151

/-- `A248183(2*n+5)-(n+1)` -/
def P15088743648153284070.Spec : Prop :=
  ∀ n, P15088743648153284070.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P16944502589270117879

`A085761(C(n+3, 2))`
-/

namespace A231151.P16944502589270117879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (Nat.choose (n + 3) 2)

end

end A231151.P16944502589270117879

namespace A231151

/-- `A085761(C(n+3, 2))` -/
def P16944502589270117879.Spec : Prop :=
  ∀ n, P16944502589270117879.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P15438533329590228828

`A085761(A253145(n+1))`
-/

namespace A231151.P15438533329590228828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A253145 (n + 1)).toNat

end

end A231151.P15438533329590228828

namespace A231151

/-- `A085761(A253145(n+1))` -/
def P15438533329590228828.Spec : Prop :=
  ∀ n, P15438533329590228828.a n = A231151 (n + 2)

end A231151

/-! ## A231151.P18271067999148282979

`A085761(A350295(n+3))`
-/

namespace A231151.P18271067999148282979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A350295 (n + 3)).toNat

end

end A231151.P18271067999148282979

namespace A231151

/-- `A085761(A350295(n+3))` -/
def P18271067999148282979.Spec : Prop :=
  ∀ n, P18271067999148282979.a n = A231151 (n + 2)

end A231151

/-!
# A231152: Least integer k such that prime(n+1) + ... + prime(n+k) > prime(1) + ... + prime(n).

The programs for A231152, there is no canonical definition to state claims against.
-/

/-! ## A231152.P2365364924267919051

`A270370(A026040(n+5))`
-/

namespace A231152.P2365364924267919051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270370 (A026040 (n + 5)).toNat

end

end A231152.P2365364924267919051

/-! ## A231152.P4628559291816282083

`A309398(A018131(n))`
-/

namespace A231152.P4628559291816282083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309398 (A018131 n).toNat

end

end A231152.P4628559291816282083

/-!
# A231153: Greatest integer k such that prime(n+1) + ... + prime(n+k) <= prime(1) + ... + prime(n).

The programs for A231153, there is no canonical definition to state claims against.
-/

/-! ## A231153.P14899554772820375196

`A231152(n+2)-1`
-/

namespace A231153.P14899554772820375196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231152 (n + 2) - 1

end

end A231153.P14899554772820375196

/-! ## A231153.P10428071221971650265

`A289207(A231152(n+2)+1)`
-/

namespace A231153.P10428071221971650265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A231152 (n + 2) + 1).toNat

end

end A231153.P10428071221971650265

/-! ## A231153.P3264541847602455295

`A023445(A231152(n+2)+2)`
-/

namespace A231153.P3264541847602455295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A231152 (n + 2) + 2).toNat

end

end A231153.P3264541847602455295

/-! ## A231153.P8748807404102131487

`A023447(A231152(n+2)+4)`
-/

namespace A231153.P8748807404102131487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A231152 (n + 2) + 4).toNat

end

end A231153.P8748807404102131487

/-! ## A231153.P7011402138905358588

`A214526(A231152(n+2)²)`
-/

namespace A231153.P7011402138905358588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A231152 (n + 2) ^ 2).toNat

end

end A231153.P7011402138905358588

/-! ## A231153.P12670406118146057681

`A259361(A231152(n+2)²)`
-/

namespace A231153.P12670406118146057681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A231152 (n + 2) ^ 2).toNat

end

end A231153.P12670406118146057681

/-! ## A231153.P3202323245917337628

`A011793(A231152(n+2)²+1)`
-/

namespace A231153.P3202323245917337628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011793 (A231152 (n + 2) ^ 2 + 1).toNat

end

end A231153.P3202323245917337628

/-! ## A231153.P5172659095978971590

`A030494(n+1)%A231152(n+2)`
-/

namespace A231153.P5172659095978971590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A231152 (n + 2))

end

end A231153.P5172659095978971590

/-! ## A231153.P651367830889184501

`A086520(A231152(n+2)²)`
-/

namespace A231153.P651367830889184501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A231152 (n + 2) ^ 2).toNat

end

end A231153.P651367830889184501

/-!
# A231155: Largest k such that no sum of digits is divisible by n (zeros not allowed in the digits of k).

The programs for A231155, there is no canonical definition to state claims against.
-/

/-! ## A231155.P6959717735401059832

`A231470(n+2)*(10^(n+1)-1)/9`
-/

namespace A231155.P6959717735401059832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231470 (n + 2) * ((10 ^ (n + 1) : ℤ) - 1) : ℚ) / 9

end

end A231155.P6959717735401059832

/-!
# A231156: Trisection of A107926: The least number k such that there are primes p and q with p - q = 6*n, p + q = k, and p the least such prime >= k/2.

The programs for A231156, there is no canonical definition to state claims against.
-/

/-! ## A231156.P14208788919612202426

`A107926(3*n)`
-/

namespace A231156.P14208788919612202426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107926 (3 * n)

end

end A231156.P14208788919612202426

/-! ## A231156.P12407777133697404343

`lcm(2, A107926(A016789(n)-2))`
-/

namespace A231156.P12407777133697404343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A107926 (A016789 n - 2).toNat)

end

end A231156.P12407777133697404343

/-! ## A231156.P5066188918803019898

`A107926(A008486(n))/A054977(n)`
-/

namespace A231156.P5066188918803019898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107926 (A008486 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A231156.P5066188918803019898

/-! ## A231156.P7425543709058690562

`A107926(A008585(n))%A030516(n+1)`
-/

namespace A231156.P7425543709058690562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107926 (A008585 n).toNat) (A030516 (n + 1))

end

end A231156.P7425543709058690562

/-! ## A231156.P16032837731607154422

`2*A103147(3*n)`
-/

namespace A231156.P16032837731607154422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103147 (3 * n)

end

end A231156.P16032837731607154422

/-! ## A231156.P14768425500181622002

`A155767(3*n)+A155766(3*n)`
-/

namespace A231156.P14768425500181622002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155767 (3 * n) + A155766 (3 * n)

end

end A231156.P14768425500181622002

/-! ## A231156.P10152199326951828610

`2*(A155767(3*n)+A001489(3*n))`
-/

namespace A231156.P10152199326951828610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155767 (3 * n) + A001489 (3 * n))

end

end A231156.P10152199326951828610

/-! ## A231156.P9360852058181353924

`A005843(A103147(3*n))`
-/

namespace A231156.P9360852058181353924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103147 (3 * n)).toNat

end

end A231156.P9360852058181353924

/-!
# A231166: Number of permutations of [n] avoiding simultaneously consecutive patterns 1243, 1342, and 1324.

The programs for A231166, there is no canonical definition to state claims against.
-/

/-! ## A231166.P3524531356943048833

`A332086(or(3, A076177(n)))`
-/

namespace A231166.P3524531356943048833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (Int.lor 3 (A076177 n)).toNat

end

end A231166.P3524531356943048833

/-! ## A231166.P14594691130048405015

`A289496(A355254(n)+n)`
-/

namespace A231166.P14594691130048405015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A355254 n + (n : ℤ)).toNat

end

end A231166.P14594691130048405015

/-! ## A231166.P8071637758929789885

`A153246(A102403(n))+A124382(n)`
-/

namespace A231166.P8071637758929789885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A102403 n).toNat + A124382 n

end

end A231166.P8071637758929789885

/-!
# A231167: a(1) = a(2) = 0, for n>=3: (sum of non-divisors of n) modulo (number of non-divisors of n).

The programs for A231167, the canonical program `A231167.P16208437102851873404` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231167 has offset 1).

The definition of A231167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231167.P16208437102851873404

`A024816(n+1)%A028310(A049820(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231167

/-- `A024816(n+1)%A028310(A049820(n+1))` -/
def P16208437102851873404.Spec : Prop :=
  ∀ n, P16208437102851873404.a n = A231167 (n + 1)

theorem P16208437102851873404.correct : P16208437102851873404.Spec := by
  intro n
  simp only [A231167, Nat.add_sub_cancel]

end A231167

/-!
# A231170: Semiprimes with equal number of even and odd digits.

The programs for A231170, there is no canonical definition to state claims against.
-/

/-! ## A231170.P1902488383605569264

`filter[A227870(n+1), A064911(#)]`
-/

namespace A231170.P1902488383605569264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A231170.P1902488383605569264

/-! ## A231170.P11037677738730949957

`∩[A001358(n+1), A227870(n+1)]`
-/

namespace A231170.P11037677738730949957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231170.P11037677738730949957

/-! ## A231170.P15660121684885646692

`∩[A176540(n+1), A227870(n+1)]`
-/

namespace A231170.P15660121684885646692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231170.P15660121684885646692

/-! ## A231170.P16825571540179612443

`eq[A355504(n), A374897(n)]`
-/

namespace A231170.P16825571540179612443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231170.P16825571540179612443

/-! ## A231170.P13459580963802290935

`∩[A108574(n+1), A227870(n+1)]`
-/

namespace A231170.P13459580963802290935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231170.P13459580963802290935

/-!
# A231172: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k - x) / (1 - k*x).

The programs for A231172, there is no canonical definition to state claims against.
-/

/-! ## A231172.P10541300490026576982

`A100196(A298696(n))`
-/

namespace A231172.P10541300490026576982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A298696 n).toNat

end

end A231172.P10541300490026576982

/-! ## A231172.P17088370438533896505

`A218656(A223168(n²))`
-/

namespace A231172.P17088370438533896505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218656 (A223168 (n ^ 2)).toNat

end

end A231172.P17088370438533896505

/-!
# A231173: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k - 2*x) / (1 - 2*k*x).

The programs for A231173, there is no canonical definition to state claims against.
-/

/-! ## A231173.P17414138060655337763

`ceil(Δ[A300130(3*n+1)/17])`
-/

namespace A231173.P17414138060655337763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300130 (3 * n + 1) : ℚ) / 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A231173.P17414138060655337763

/-! ## A231173.P9529718718850090967

`A106249(A241000(n+1)+1)`
-/

namespace A231173.P9529718718850090967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A241000 (n + 1) + 1).toNat

end

end A231173.P9529718718850090967

/-!
# A231174: Integer areas of integer-sided triangles such that the distance between the incenter and the circumcenter is an integer.

The programs for A231174, there is no canonical definition to state claims against.
-/

/-! ## A231174.P7772923090383389189

`∑[6*record[8*A160052(n)]]`
-/

namespace A231174.P7772923090383389189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A160052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231174.P7772923090383389189

/-! ## A231174.P6870300876395786090

`∑[A022144(record[6*A160052(n)])]`
-/

namespace A231174.P6870300876395786090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A160052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231174.P6870300876395786090

/-! ## A231174.P15410447430710408447

`A008458(∑[record[8*A160052(n)]])`
-/

namespace A231174.P15410447430710408447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A160052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A231174.P15410447430710408447

/-! ## A231174.P16812881612441283857

`∑[6*8*A063460(A032555(n+1))]`
-/

namespace A231174.P16812881612441283857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (8 * A063460 (A032555 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231174.P16812881612441283857

/-! ## A231174.P13043794565787475757

`∑[6*8*A186328(A032559(n+1))]`
-/

namespace A231174.P13043794565787475757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (8 * A186328 (A032559 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231174.P13043794565787475757

/-!
# A231175: Let A={2,4,5,8,9,11,14,...} be the sequence of numbers k>=1 such that k+1 is evil (A001969), and let B be the complement of A. The sequence lists numbers for which number of A-divisors equals number of B-divisors.

The programs for A231175, there is no canonical definition to state claims against.
-/

/-! ## A231175.P5725766819854469817

`filter[A231176(n+1), A276950(#)]`
-/

namespace A231175.P5725766819854469817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276950 (f1 j).toNat = 1) n)

end

end A231175.P5725766819854469817

/-! ## A231175.P14461070693818722639

`∩[A026488(n+1), A231176(n+1)]`
-/

namespace A231175.P14461070693818722639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231175.P14461070693818722639

/-! ## A231175.P15480764389723720327

`∩[A026496(n+1), A231176(n+1)]`
-/

namespace A231175.P15480764389723720327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231175.P15480764389723720327

/-! ## A231175.P10891945658491548949

`A231176(A332277(n)+A029965(n+1))`
-/

namespace A231175.P10891945658491548949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231176 (A332277 n + A029965 (n + 1)).toNat

end

end A231175.P10891945658491548949

/-!
# A231176: Let A={1,3,4,7,8,10,13,15,...} be the sequence of numbers k>=1 such that k+2 is evil (A001969), let B be the complement of A. The sequence lists numbers for which the number of A-divisors equals the number of B-divisors.

The programs for A231176, there is no canonical definition to state claims against.
-/

/-! ## A231176.P13772220150658138588

`∑[A000030(A149053(n))]²`
-/

namespace A231176.P13772220150658138588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A149053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231176.P13772220150658138588

/-! ## A231176.P11312755748110506345

`∑[A218603(A071954(n))]²`
-/

namespace A231176.P11312755748110506345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218603 (A071954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231176.P11312755748110506345

/-! ## A231176.P16811153846959720273

`∑[A000030(A302705(n))]²`
-/

namespace A231176.P16811153846959720273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A302705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231176.P16811153846959720273

/-! ## A231176.P11269250937229774950

`∑[A005361(A106368(n+1))]²`
-/

namespace A231176.P11269250937229774950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A106368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231176.P11269250937229774950

/-!
# A231177: Let A = {1,4,5,8,10,11,13,...} be the sequence of numbers k>=1 such that k+3 is odious (A000069), and let B be the complement of A. The sequence lists the numbers for which the number of A-divisors equals the number of B-divisors.

The programs for A231177, there is no canonical definition to state claims against.
-/

/-! ## A231177.P10977554926905117368

`record[A198384(A198329(n+1))]`
-/

namespace A231177.P10977554926905117368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198384 (A198329 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231177.P10977554926905117368

/-! ## A231177.P8708412865071941636

`A175213(A175005(n))²`
-/

namespace A231177.P8708412865071941636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175213 (A175005 n).toNat ^ 2

end

end A231177.P8708412865071941636

/-! ## A231177.P7949800434643611770

`record[A292138(A292622(n))²]`
-/

namespace A231177.P7949800434643611770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292138 (A292622 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231177.P7949800434643611770

/-!
# A231178: Let A={1,2,5,6,8,11,13,...} be the sequence of numbers k>=1 such that k+4 is evil (A001969), and let B be the complement of A. The sequence lists numbers for which the number of A-divisors equals number of B-divisors.

The programs for A231178, there is no canonical definition to state claims against.
-/

/-! ## A231178.P13029518501592151417

`(A034174(n+1)%A140758(3*(n+1)))²`
-/

namespace A231178.P13029518501592151417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034174 (n + 1)) (A140758 (3 * (n + 1))) ^ 2

end

end A231178.P13029518501592151417

/-! ## A231178.P5274108748123902895

`A235121(∑[A312434(n)])²`
-/

namespace A231178.P5274108748123902895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A231178.P5274108748123902895

/-!
# A231179: Boustrophedon transform of nonnegative integers, cf. A001477.

The programs for A231179, there is no canonical definition to state claims against.
-/

/-! ## A231179.P4368628473611211614

`A231200(n)/2`
-/

namespace A231179.P4368628473611211614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231200 n : ℚ) / 2

end

end A231179.P4368628473611211614

/-! ## A231179.P5528503039043014150

`A000660(n)-A000111(n)`
-/

namespace A231179.P5528503039043014150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000660 n - A000111 n

end

end A231179.P5528503039043014150

/-! ## A231179.P15983426994235692028

`n*A000667(abs(1-n))`
-/

namespace A231179.P15983426994235692028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000667 |1 - (n : ℤ)|.toNat

end

end A231179.P15983426994235692028

/-! ## A231179.P18436626687361997362

`A000737(n)-A000667(n)`
-/

namespace A231179.P18436626687361997362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000737 n - A000667 n

end

end A231179.P18436626687361997362

/-! ## A231179.P10453595650252900529

`A000754(n)-A000737(n)`
-/

namespace A231179.P10453595650252900529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000754 n - A000737 n

end

end A231179.P10453595650252900529

/-! ## A231179.P17699844099728278384

`A000746(n)-A308520(n)`
-/

namespace A231179.P17699844099728278384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000746 n - A308520 n

end

end A231179.P17699844099728278384

/-! ## A231179.P8822336027930178423

`(A000754(n)-A000667(n))/2`
-/

namespace A231179.P8822336027930178423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000754 n - A000667 n : ℚ) / 2

end

end A231179.P8822336027930178423

/-! ## A231179.P7334910881432628132

`A000660(n)-A008281(A000096(n))`
-/

namespace A231179.P7334910881432628132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000660 n - A008281 (A000096 n).toNat

end

end A231179.P7334910881432628132

/-! ## A231179.P1036188347449906508

`A000660(n)-A109449(A000217(n))`
-/

namespace A231179.P1036188347449906508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000660 n - A109449 (A000217 n).toNat

end

end A231179.P1036188347449906508

/-! ## A231179.P13785187324794324990

`A000660(n)-A229892(A000124(n))`
-/

namespace A231179.P13785187324794324990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000660 n - A229892 (A000124 n).toNat

end

end A231179.P13785187324794324990

/-!
# A231180: Let A={2,3,6,8,9,11,14,...} be the sequence of numbers k>=1 such that k+5 is odious (A000069). Let B be the complement of A. The sequence lists numbers for which the number of A-divisors equals the number of B-divisors.

The programs for A231180, there is no canonical definition to state claims against.
-/

/-! ## A231180.P8053760435962946985

`∑[A328917(A001595(n))]²`
-/

namespace A231180.P8053760435962946985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328917 (A001595 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231180.P8053760435962946985

/-! ## A231180.P2755433240932977011

`record[A237591(A191785(n))²]`
-/

namespace A231180.P2755433240932977011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (A191785 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231180.P2755433240932977011

/-! ## A231180.P14402395778209211165

`∑[A360286(A000041(n+4))]²`
-/

namespace A231180.P14402395778209211165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360286 (A000041 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231180.P14402395778209211165

/-! ## A231180.P4764894385411090230

`record[A002321(A302680(n+1))²]`
-/

namespace A231180.P4764894385411090230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A302680 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231180.P4764894385411090230

/-! ## A231180.P7858044482886321259

`record[A204016(A240793(n+1))²]`
-/

namespace A231180.P7858044482886321259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (A240793 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231180.P7858044482886321259

/-!
# A231181: Expansion of 1/(1 - x - 4*x^2 + 3*x^3 + 3*x^4 - x^5).

The programs for A231181, the canonical program `A231181.P10404075817170155910` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231181 has offset 0).

The definition of A231181 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-4x^2+3x^3+3x^4-x^5))` (program `A231181.P10404075817170155910`, by `A231181.P10404075817170155910.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231181.P10404075817170155910

`ogf(1/(1-x-4x^2+3x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231181

/-- `ogf(1/(1-x-4x^2+3x^3+3x^4-x^5))` -/
def P10404075817170155910.Spec : Prop :=
  ∀ n, P10404075817170155910.a n = A231181 n

theorem P10404075817170155910.correct : P10404075817170155910.Spec := by
  intro n
  simp only [A231181]

end A231181

/-! ## A231181.P10033485689226869682

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=20`
-/

namespace A231181.P10033485689226869682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 6, 20] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A231181.P10033485689226869682

namespace A231181

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P10033485689226869682.Spec : Prop :=
  ∀ n, P10033485689226869682.a n = A231181 n

end A231181

/-! ## A231181.P14271325188568516745

`∑[A231185(n)]`
-/

namespace A231181.P14271325188568516745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231181.P14271325188568516745

namespace A231181

/-- `∑[A231185(n)]` -/
def P14271325188568516745.Spec : Prop :=
  ∀ n, P14271325188568516745.a n = A231181 n

end A231181

/-! ## A231181.P8524920343298193167

`A231182(n+5)`
-/

namespace A231181.P8524920343298193167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (n + 5)

end

end A231181.P8524920343298193167

namespace A231181

/-- `A231182(n+5)` -/
def P8524920343298193167.Spec : Prop :=
  ∀ n, P8524920343298193167.a n = A231181 n

end A231181

/-! ## A231181.P13151787476564467461

`abs(Δ[A122608(n+5)])`
-/

namespace A231181.P13151787476564467461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122608 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A231181.P13151787476564467461

namespace A231181

/-- `abs(Δ[A122608(n+5)])` -/
def P13151787476564467461.Spec : Prop :=
  ∀ n, P13151787476564467461.a n = A231181 n

end A231181

/-! ## A231181.P18364779345271196161

`A223940(n+4)-Δ[A223940(n+4)]`
-/

namespace A231181.P18364779345271196161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223940 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223940 (n + 4) - (f1 (n + 1) - f1 n)

end

end A231181.P18364779345271196161

namespace A231181

/-- `A223940(n+4)-Δ[A223940(n+4)]` -/
def P18364779345271196161.Spec : Prop :=
  ∀ n, P18364779345271196161.a n = A231181 n

end A231181

/-! ## A231181.P8224697876425852697

`A223940(n+5)%Δ[A223940(n+4)]`
-/

namespace A231181.P8224697876425852697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223940 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223940 (n + 5)) (f1 (n + 1) - f1 n)

end

end A231181.P8224697876425852697

namespace A231181

/-- `A223940(n+5)%Δ[A223940(n+4)]` -/
def P8224697876425852697.Spec : Prop :=
  ∀ n, P8224697876425852697.a n = A231181 n

end A231181

/-!
# A231182: Coefficients for the nonnegative powers of rho(11) = 2*cos(Pi/11) when written in the power basis of the degree 5 number field Q(rho(11)). Coefficients for the zeroth and fourth powers.

The programs for A231182, the canonical program `A231182.P7788856237588391447` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231182 has offset 0).

The definition of A231182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231182.P7788856237588391447

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231182

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7788856237588391447.Spec : Prop :=
  ∀ n, P7788856237588391447.a n = A231182 n

theorem P7788856237588391447.correct : P7788856237588391447.Spec := by
  intro n
  simp only [A231182]

end A231182

/-! ## A231182.P3942477964430687209

`A289871(A035106(n+1)-1)`
-/

namespace A231182.P3942477964430687209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289871 (A035106 (n + 1) - 1).toNat

end

end A231182.P3942477964430687209

namespace A231182

/-- `A289871(A035106(n+1)-1)` -/
def P3942477964430687209.Spec : Prop :=
  ∀ n, P3942477964430687209.a n = A231182 n

end A231182

/-!
# A231183: Coefficients of the nonnegative powers of rho(11) = 2*cos(Pi/11) when written in the power basis of the degree 5 number field Q(rho(11)). Negative of the coefficients of the first power.

The programs for A231183, the canonical program `A231183.P7616993723412935047` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231183 has offset 0).

The definition of A231183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231183.P7616993723412935047

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=-1, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231183

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7616993723412935047.Spec : Prop :=
  ∀ n, P7616993723412935047.a n = A231183 n

theorem P7616993723412935047.correct : P7616993723412935047.Spec := by
  intro n
  simp only [A231183]

end A231183

/-!
# A231184: Coefficients of the nonnegative powers of rho(11) = 2*cos(Pi/11) when written in the power basis of the degree 5 number field Q(rho(11)). Negative of the coefficients of the second power.

The programs for A231184, the canonical program `A231184.P4202813044165062010` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231184 has offset 0).

The definition of A231184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231184.P4202813044165062010

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231184

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P4202813044165062010.Spec : Prop :=
  ∀ n, P4202813044165062010.a n = A231184 n

theorem P4202813044165062010.correct : P4202813044165062010.Spec := by
  intro n
  simp only [A231184]

end A231184

/-!
# A231185: Coefficients of the nonnegative powers of rho(11) = 2*cos(Pi/11) when written in the power basis of the degree 5 number field Q(rho(11)). Coefficients of the third power.

The programs for A231185, the canonical program `A231185.P4183271859860343379` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231185 has offset 0).

The definition of A231185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231185.P4183271859860343379

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=1, a(4)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231185

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P4183271859860343379.Spec : Prop :=
  ∀ n, P4183271859860343379.a n = A231185 n

theorem P4183271859860343379.correct : P4183271859860343379.Spec := by
  intro n
  simp only [A231185]

end A231185

/-! ## A231185.P13483340370934140361

`ogf((1-x)/(1-x-4x^2+3x^3+3x^4-x^5))`
-/

namespace A231185.P13483340370934140361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -4, 3, 3, -1] n

end

end A231185.P13483340370934140361

namespace A231185

/-- `ogf((1-x)/(1-x-4x^2+3x^3+3x^4-x^5))` -/
def P13483340370934140361.Spec : Prop :=
  ∀ n, P13483340370934140361.a n = A231185 n

end A231185

/-! ## A231185.P6950161642499084425

`Δ[A231182(n+4)]`
-/

namespace A231185.P6950161642499084425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231185.P6950161642499084425

namespace A231185

/-- `Δ[A231182(n+4)]` -/
def P6950161642499084425.Spec : Prop :=
  ∀ n, P6950161642499084425.a n = A231185 n

end A231185

/-! ## A231185.P347820690946647296

`abs(Δ[A231182(A020705(n))])`
-/

namespace A231185.P347820690946647296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A231185.P347820690946647296

namespace A231185

/-- `abs(Δ[A231182(A020705(n))])` -/
def P347820690946647296.Spec : Prop :=
  ∀ n, P347820690946647296.a n = A231185 n

end A231185

/-! ## A231185.P16589487533384768446

`A231181(n)-A231182(n+4)`
-/

namespace A231185.P16589487533384768446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231181 n - A231182 (n + 4)

end

end A231185.P16589487533384768446

namespace A231185

/-- `A231181(n)-A231182(n+4)` -/
def P16589487533384768446.Spec : Prop :=
  ∀ n, P16589487533384768446.a n = A231185 n

end A231185

/-! ## A231185.P1033315661593617957

`Δ[A231182(A020705(n))]%A000051(n)`
-/

namespace A231185.P1033315661593617957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231182 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000051 n)

end

end A231185.P1033315661593617957

namespace A231185

/-- `Δ[A231182(A020705(n))]%A000051(n)` -/
def P1033315661593617957.Spec : Prop :=
  ∀ n, P1033315661593617957.a n = A231185 n

end A231185

/-!
# A231187: Decimal expansion of the length ratio (largest diagonal)/side in the regular 7-gon (or heptagon).

The programs for A231187, there is no canonical definition to state claims against.
-/

/-! ## A231187.P134264665905392675

`A116425(A000007(n)+n)`
-/

namespace A231187.P134264665905392675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A231187.P134264665905392675

/-! ## A231187.P18362177390503812726

`A116425(n)-A000007(n)`
-/

namespace A231187.P18362177390503812726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 (n + 1) - A000007 n

end

end A231187.P18362177390503812726

/-! ## A231187.P152153706727220828

`A116425(or(n, A000007(n)))`
-/

namespace A231187.P152153706727220828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A231187.P152153706727220828

/-! ## A231187.P11854913399652888018

`A116425(xor(n, A000007(n)))`
-/

namespace A231187.P11854913399652888018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((Int.xor (n : ℤ) (A000007 n)).toNat + 1)

end

end A231187.P11854913399652888018

/-! ## A231187.P16992799401148743894

`A116425(floor(sqrt(A002522(n))))`
-/

namespace A231187.P16992799401148743894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((Int.sqrt (A002522 n)).toNat + 1)

end

end A231187.P16992799401148743894

/-! ## A231187.P15608232879749547956

`A116425(round(sqrt(A002061(n))))`
-/

namespace A231187.P15608232879749547956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((SequenceMachineLib.roundAway (Real.sqrt (A002061 n : ℝ))).toNat + 1)

end

end A231187.P15608232879749547956

/-! ## A231187.P6035030188607324512

`A116425(round(sqrt(A002522(n))))`
-/

namespace A231187.P6035030188607324512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((SequenceMachineLib.roundAway (Real.sqrt (A002522 n : ℝ))).toNat + 1)

end

end A231187.P6035030188607324512

/-! ## A231187.P11929838481541521529

`A116425(A004275(n+1)-n)`
-/

namespace A231187.P11929838481541521529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((A004275 (n + 1) - (n : ℤ)).toNat + 1)

end

end A231187.P11929838481541521529

/-! ## A231187.P6169063047647385258

`A116425(A004273(n)+1-n)`
-/

namespace A231187.P6169063047647385258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((A004273 n + (1 - (n : ℤ))).toNat + 1)

end

end A231187.P6169063047647385258

/-! ## A231187.P13536301619320223279

`A116425(1-(n-A004273(n)))`
-/

namespace A231187.P13536301619320223279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((1 - ((n : ℤ) - A004273 n)).toNat + 1)

end

end A231187.P13536301619320223279

/-! ## A231187.P1478718549768421888

`A116425(n)-floor(1/A002522(n))`
-/

namespace A231187.P1478718549768421888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 (n + 1) - ⌊1 / (A002522 n : ℚ)⌋

end

end A231187.P1478718549768421888

/-! ## A231187.P4133008216238677118

`A116425(A024000(n)+A004273(n))`
-/

namespace A231187.P4133008216238677118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((A024000 n + A004273 n).toNat + 1)

end

end A231187.P4133008216238677118

/-! ## A231187.P17642447837653428662

`A001622(n)+A116425(n)-A104457(n)`
-/

namespace A231187.P17642447837653428662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A116425 (n + 1) - A104457 (n + 1))

end

end A231187.P17642447837653428662

/-! ## A231187.P16146085878860531333

`A104457(n)+A116425(n)-A296184(n)`
-/

namespace A231187.P16146085878860531333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + (A116425 (n + 1) - A296184 (n + 1))

end

end A231187.P16146085878860531333

/-! ## A231187.P13237457259296831576

`A116425(A130716(n+2)+n)`
-/

namespace A231187.P13237457259296831576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((A130716 (n + 2) + (n : ℤ)).toNat + 1)

end

end A231187.P13237457259296831576

/-! ## A231187.P2003928201765490259

`A116425(A004275(n+1)²/A004275(2*n+1))`
-/

namespace A231187.P2003928201765490259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((SequenceMachineLib.roundAway ((A004275 (n + 1) ^ 2 : ℚ) / (A004275 (2 * n + 1) : ℚ))).toNat + 1)

end

end A231187.P2003928201765490259

/-! ## A231187.P5794442239629712838

`A116425(A000035(A103517(n))+n)`
-/

namespace A231187.P5794442239629712838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((A000035 (A103517 n).toNat + (n : ℤ)).toNat + 1)

end

end A231187.P5794442239629712838

/-! ## A231187.P3595050186965042426

`A116425(n)-A000035(A103517(n))`
-/

namespace A231187.P3595050186965042426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 (n + 1) - A000035 (A103517 n).toNat

end

end A231187.P3595050186965042426

/-! ## A231187.P3287019380026760033

`A116425(record[A005131(n)]-n)`
-/

namespace A231187.P3287019380026760033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat + 1)

end

end A231187.P3287019380026760033

/-! ## A231187.P6173170248963356544

`A116425(gcd(n, record[A005131(n)]))`
-/

namespace A231187.P6173170248963356544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 (Int.gcd (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1)

end

end A231187.P6173170248963356544

/-!
# A231188: Coefficient table for the minimal polynomials of 2*sin(2*Pi/n). Rising powers of x.

The programs for A231188, there is no canonical definition to state claims against.
-/

/-! ## A231188.P1733752777553845689

`A136441(A079213(n))*A181872(n+1)`
-/

namespace A231188.P1733752777553845689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136441 (A079213 n).toNat * A181872 (n + 1)

end

end A231188.P1733752777553845689

/-! ## A231188.P4166749676622645391

`A181872(n+1)*A181876(A078812(n))`
-/

namespace A231188.P4166749676622645391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181872 (n + 1) * A181876 (A078812 n).toNat

end

end A231188.P4166749676622645391

/-! ## A231188.P8352127900534654477

`A181872(n+1)-A025465(A239342(n))`
-/

namespace A231188.P8352127900534654477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181872 (n + 1) - A025465 (A239342 n).toNat

end

end A231188.P8352127900534654477

/-! ## A231188.P9309026672704831478

`A091090(A181844(n))*A181872(n+1)`
-/

namespace A231188.P9309026672704831478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A181844 n).toNat * A181872 (n + 1)

end

end A231188.P9309026672704831478

/-! ## A231188.P5212232989095720282

`A181872(n+1)*A363941(A274262(n+1))`
-/

namespace A231188.P5212232989095720282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181872 (n + 1) * A363941 (A274262 (n + 1)).toNat

end

end A231188.P5212232989095720282

/-!
# A231190: Numerator of abs(n-8)/(2*n), n >= 1.

The programs for A231190, the canonical program `A231190.P6239018246274313536` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231190 has offset 1).

The definition of A231190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231190.P6239018246274313536

`abs(n-7)/gcd(n-7, 16)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231190

/-- `abs(n-7)/gcd(n-7, 16)` -/
def P6239018246274313536.Spec : Prop :=
  ∀ n, P6239018246274313536.a n = (A231190 (n + 1) : ℚ)

end A231190

/-! ## A231190.P16889324177325454155

`lcm(16, 7-n)/16`
-/

namespace A231190.P16889324177325454155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (7 - (n : ℤ)) : ℚ) / 16

end

end A231190.P16889324177325454155

namespace A231190

/-- `lcm(16, 7-n)/16` -/
def P16889324177325454155.Spec : Prop :=
  ∀ n, P16889324177325454155.a n = (A231190 (n + 1) : ℚ)

end A231190

/-! ## A231190.P13245264947981112389

`A106617(abs(7-n))`
-/

namespace A231190.P13245264947981112389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 |7 - (n : ℤ)|.toNat

end

end A231190.P13245264947981112389

namespace A231190

/-- `A106617(abs(7-n))` -/
def P13245264947981112389.Spec : Prop :=
  ∀ n, P13245264947981112389.a n = A231190 (n + 1)

end A231190

/-! ## A231190.P7628776509597070715

`A227140(abs(2*(7-n)))`
-/

namespace A231190.P7628776509597070715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 |2 * (7 - (n : ℤ))|.toNat

end

end A231190.P7628776509597070715

namespace A231190

/-- `A227140(abs(2*(7-n)))` -/
def P7628776509597070715.Spec : Prop :=
  ∀ n, P7628776509597070715.a n = A231190 (n + 1)

end A231190

/-! ## A231190.P2897335242030411679

`A325401(lcm(A011782(n), A022963(n)))`
-/

namespace A231190.P2897335242030411679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A011782 n) (A022963 n))

end

end A231190.P2897335242030411679

namespace A231190

/-- `A325401(lcm(A011782(n), A022963(n)))` -/
def P2897335242030411679.Spec : Prop :=
  ∀ n, P2897335242030411679.a n = A231190 (n + 1)

end A231190

/-!
# A231191: Number of (n+1) X (n+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231191, there is no canonical definition to state claims against.
-/

/-! ## A231191.P912672505926498880

`A231199((n+1)²+n²)`
-/

namespace A231191.P912672505926498880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 ((n + 1) ^ 2 + n ^ 2)

end

end A231191.P912672505926498880

/-!
# A231192: Number of (n+1) X (1+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231192, there is no canonical definition to state claims against.
-/

/-! ## A231192.P4258167790211198939

`A231199(∑[n]+1)`
-/

namespace A231192.P4258167790211198939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231192.P4258167790211198939

/-! ## A231192.P14430661847402282

`A231199(A000124(n))+char[15]`
-/

namespace A231192.P14430661847402282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231192.P14430661847402282

/-! ## A231192.P16963669770223612386

`record[root(A231199(n+1), A167024(n))]`
-/

namespace A231192.P16963669770223612386
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231199 (n + 1) : ℝ) ^ (1 / (A167024 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231192.P16963669770223612386

/-! ## A231192.P12272421263269205585

`record[gcd(A002262(n), A231199(n+1))]`
-/

namespace A231192.P12272421263269205585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231199 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231192.P12272421263269205585

/-! ## A231192.P9044442039507834914

`record[char[A161680(n)]*A231199(n+1)]`
-/

namespace A231192.P9044442039507834914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231192.P9044442039507834914

/-!
# A231193: Number of (n+1)X(2+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231193, there is no canonical definition to state claims against.
-/

/-! ## A231193.P14584880820744757865

`A231199(∑[n+1]+2)`
-/

namespace A231193.P14584880820744757865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231193.P14584880820744757865

/-! ## A231193.P11908373634966534768

`record[A231199(A257504(n+1)+1)]`
-/

namespace A231193.P11908373634966534768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231193.P11908373634966534768

/-! ## A231193.P17367597143755222050

`record[root(A231199(n+2), A167024(n))]`
-/

namespace A231193.P17367597143755222050
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231199 (n + 2) : ℝ) ^ (1 / (A167024 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231193.P17367597143755222050

/-! ## A231193.P1192692895802462072

`record[gcd(A002262(n), A231199(n+2))]`
-/

namespace A231193.P1192692895802462072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231199 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231193.P1192692895802462072

/-! ## A231193.P15891194814776035081

`record[char[A161680(n)]*A231199(n+2)]`
-/

namespace A231193.P15891194814776035081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A231199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231193.P15891194814776035081

/-!
# A231194: Number of (n+1)X(3+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231194, there is no canonical definition to state claims against.
-/

/-! ## A231194.P638656720398402774

`A231199(∑[n+2]+4)`
-/

namespace A231194.P638656720398402774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231194.P638656720398402774

/-! ## A231194.P9366971975388216924

`A231199(A167614(n+1))+A108782(n)`
-/

namespace A231194.P9366971975388216924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A167614 (n + 1)).toNat + A108782 n

end

end A231194.P9366971975388216924

/-! ## A231194.P12133618133030231797

`A231199(A167614(n+1))+A185255(n)`
-/

namespace A231194.P12133618133030231797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A167614 (n + 1)).toNat + A185255 n

end

end A231194.P12133618133030231797

/-! ## A231194.P15480057274169230413

`lcm(A033999(n), A231199(A167614(n+1)))`
-/

namespace A231194.P15480057274169230413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231199 (A167614 (n + 1)).toNat)

end

end A231194.P15480057274169230413

/-! ## A231194.P10920576547165080315

`A007318(C(2, n))*A231199(A000217(n+2)+3)`
-/

namespace A231194.P10920576547165080315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A231199 (A000217 (n + 2) + 3).toNat

end

end A231194.P10920576547165080315

/-!
# A231195: Number of (n+1)X(4+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231195, there is no canonical definition to state claims against.
-/

/-! ## A231195.P1247145676287742839

`A231199(A141214(n)+7)`
-/

namespace A231195.P1247145676287742839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A141214 n + 7).toNat

end

end A231195.P1247145676287742839

/-! ## A231195.P14792511315938351587

`A231199(A167614(n+2)+1)`
-/

namespace A231195.P14792511315938351587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A167614 (n + 2) + 1).toNat

end

end A231195.P14792511315938351587

/-! ## A231195.P6982136712084710209

`A231199(eq[4, A166065(n)])`
-/

namespace A231195.P6982136712084710209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231195.P6982136712084710209

/-!
# A231196: Number of (n+1)X(5+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231196, there is no canonical definition to state claims against.
-/

/-! ## A231196.P4894989962411587358

`A231199(A374005(n+1))`
-/

namespace A231196.P4894989962411587358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (A374005 (n + 1)).toNat

end

end A231196.P4894989962411587358

/-! ## A231196.P3656482110997395356

`A231199(eq[8, A166065(n)])`
-/

namespace A231196.P3656482110997395356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231196.P3656482110997395356

/-! ## A231196.P3063929723597359702

`A231199(Δ[A023545(n+1)])`
-/

namespace A231196.P3063929723597359702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231199 (f1 (n + 1) - f1 n).toNat

end

end A231196.P3063929723597359702

