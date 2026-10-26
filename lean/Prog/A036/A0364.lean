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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A036403: Number of equilateral triangles whose vertices (whether connected by lines or not) lie at intersection points resulting from drawing lines connecting every pair of vertices of a regular 3n-gon (and extending beyond the polygon).

The programs for A036403, there is no canonical definition to state claims against.
-/

/-! ## A036403.P3234725443586544301

`Δ[A176357(A028310(n))]+C(2, n+2)`
-/

namespace A036403.P3234725443586544301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A036403.P3234725443586544301

/-! ## A036403.P5236391345808092903

`A000007(n)+Δ[A176357(A028310(n))]`
-/

namespace A036403.P5236391345808092903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A036403.P5236391345808092903

/-! ## A036403.P13194809327036476686

`A058343(n)+Δ[A176357(A028310(n))]`
-/

namespace A036403.P13194809327036476686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n + (f1 (n + 1) - f1 n)

end

end A036403.P13194809327036476686

/-! ## A036403.P3210565968809349646

`A111332(n)+Δ[A176357(A028310(n))]`
-/

namespace A036403.P3210565968809349646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n + (f1 (n + 1) - f1 n)

end

end A036403.P3210565968809349646

/-! ## A036403.P8170330729887788326

`A151878(n)+Δ[A176357(A028310(n))]`
-/

namespace A036403.P8170330729887788326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + (f1 (n + 1) - f1 n)

end

end A036403.P8170330729887788326

/-!
# A036404: a(n) = ceiling(n^2/5).

The programs for A036404, the canonical program `A036404.P18266115002161593795` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036404 has offset 0).

The definition of A036404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/5)` (program `A036404.P18266115002161593795`, by `A036404.P18266115002161593795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036404.P18266115002161593795

`ceil(n²/5)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036404

/-- `ceil(n²/5)` -/
def P18266115002161593795.Spec : Prop :=
  ∀ n, P18266115002161593795.a n = A036404 n

theorem P18266115002161593795.correct : P18266115002161593795.Spec := by
  intro n
  simp only [A036404]

end A036404

/-! ## A036404.P5148215167478967927

`round(or(2, n²)/5)`
-/

namespace A036404.P5148215167478967927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n ^ 2) : ℚ) / 5)

end

end A036404.P5148215167478967927

namespace A036404

/-- `round(or(2, n²)/5)` -/
def P5148215167478967927.Spec : Prop :=
  ∀ n, P5148215167478967927.a n = A036404 n

end A036404

/-! ## A036404.P15801469693772258748

`round(xor(2, n²)/5)`
-/

namespace A036404.P15801469693772258748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n ^ 2) : ℚ) / 5)

end

end A036404.P15801469693772258748

namespace A036404

/-- `round(xor(2, n²)/5)` -/
def P15801469693772258748.Spec : Prop :=
  ∀ n, P15801469693772258748.a n = A036404 n

end A036404

/-! ## A036404.P10676281999821840946

`round((lcm(n, n-1)+n+2)/5)`
-/

namespace A036404.P10676281999821840946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) ((n : ℤ) - 1) + (n + 2) : ℚ) / 5)

end

end A036404.P10676281999821840946

namespace A036404

/-- `round((lcm(n, n-1)+n+2)/5)` -/
def P10676281999821840946.Spec : Prop :=
  ∀ n, P10676281999821840946.a n = A036404 n

end A036404

/-! ## A036404.P5446655118724184999

`∑[a(n-5)+2]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A036404.P5446655118724184999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 2, 1] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036404.P5446655118724184999

namespace A036404

/-- `∑[a(n-5)+2]` -/
def P5446655118724184999.Spec : Prop :=
  ∀ n, (P5446655118724184999.a n : ℤ) = A036404 n

end A036404

/-! ## A036404.P1874506879109817441

`a(n-1)-floor(a(n-1)-n²/5)` with `a(0)=0`
-/

namespace A036404.P1874506879109817441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℚ) - (n ^ 2 : ℚ) / 5⌋

end

end A036404.P1874506879109817441

namespace A036404

/-- `a(n-1)-floor(a(n-1)-n²/5)` -/
def P1874506879109817441.Spec : Prop :=
  ∀ n, P1874506879109817441.a n = A036404 n

end A036404

/-! ## A036404.P5349548893890853661

`floor(A087475(n)/5)`
-/

namespace A036404.P5349548893890853661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087475 n : ℚ) / 5⌋

end

end A036404.P5349548893890853661

namespace A036404

/-- `floor(A087475(n)/5)` -/
def P5349548893890853661.Spec : Prop :=
  ∀ n, P5349548893890853661.a n = A036404 n

end A036404

/-! ## A036404.P14224240024923898871

`round(A059100(n)/5)`
-/

namespace A036404.P14224240024923898871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059100 n : ℚ) / 5)

end

end A036404.P14224240024923898871

namespace A036404

/-- `round(A059100(n)/5)` -/
def P14224240024923898871.Spec : Prop :=
  ∀ n, P14224240024923898871.a n = A036404 n

end A036404

/-! ## A036404.P17402509474427790160

`floor(A155966(n)/10)`
-/

namespace A036404.P17402509474427790160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155966 n : ℚ) / 10⌋

end

end A036404.P17402509474427790160

namespace A036404

/-- `floor(A155966(n)/10)` -/
def P17402509474427790160.Spec : Prop :=
  ∀ n, P17402509474427790160.a n = A036404 n

end A036404

/-! ## A036404.P4639464752630670132

`floor(A339048(n)/10)`
-/

namespace A036404.P4639464752630670132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339048 n : ℚ) / 10⌋

end

end A036404.P4639464752630670132

namespace A036404

/-- `floor(A339048(n)/10)` -/
def P4639464752630670132.Spec : Prop :=
  ∀ n, P4639464752630670132.a n = A036404 n

end A036404

/-! ## A036404.P4041325696266663329

`n²-A279169(n)`
-/

namespace A036404.P4041325696266663329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A279169 n

end

end A036404.P4041325696266663329

namespace A036404

/-- `n²-A279169(n)` -/
def P4041325696266663329.Spec : Prop :=
  ∀ n, P4041325696266663329.a n = A036404 n

end A036404

/-! ## A036404.P944919642911926657

`A398051(n)-∑[n]`
-/

namespace A036404.P944919642911926657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398051 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036404.P944919642911926657

namespace A036404

/-- `A398051(n)-∑[n]` -/
def P944919642911926657.Spec : Prop :=
  ∀ n, P944919642911926657.a n = A036404 n

end A036404

/-! ## A036404.P1344672606079721261

`∑[n+1]-A186496(n+1)`
-/

namespace A036404.P1344672606079721261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A186496 (n + 1)

end

end A036404.P1344672606079721261

namespace A036404

/-- `∑[n+1]-A186496(n+1)` -/
def P1344672606079721261.Spec : Prop :=
  ∀ n, P1344672606079721261.a n = A036404 n

end A036404

/-! ## A036404.P2606285189191324630

`A118015(n)+A011558(n)`
-/

namespace A036404.P2606285189191324630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n + A011558 n

end

end A036404.P2606285189191324630

namespace A036404

/-- `A118015(n)+A011558(n)` -/
def P2606285189191324630.Spec : Prop :=
  ∀ n, P2606285189191324630.a n = A036404 n

end A036404

/-! ## A036404.P14193995190864612996

`A005449(n)-A398056(n)`
-/

namespace A036404.P14193995190864612996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A398056 n

end

end A036404.P14193995190864612996

namespace A036404

/-- `A005449(n)-A398056(n)` -/
def P14193995190864612996.Spec : Prop :=
  ∀ n, P14193995190864612996.a n = A036404 n

end A036404

/-! ## A036404.P16922392572622101205

`A253145(n)%A186496(n+1)`
-/

namespace A036404.P16922392572622101205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A186496 (n + 1))

end

end A036404.P16922392572622101205

namespace A036404

/-- `A253145(n)%A186496(n+1)` -/
def P16922392572622101205.Spec : Prop :=
  ∀ n, P16922392572622101205.a n = A036404 n

end A036404

/-! ## A036404.P7485624907455775166

`A000217(n)+n²-A398056(n)`
-/

namespace A036404.P7485624907455775166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + ((n ^ 2 : ℤ) - A398056 n)

end

end A036404.P7485624907455775166

namespace A036404

/-- `A000217(n)+n²-A398056(n)` -/
def P7485624907455775166.Spec : Prop :=
  ∀ n, P7485624907455775166.a n = A036404 n

end A036404

/-! ## A036404.P17582883581855442155

`A184013(n+1)-A047317(n+1)`
-/

namespace A036404.P17582883581855442155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184013 (n + 1) - A047317 (n + 1)

end

end A036404.P17582883581855442155

namespace A036404

/-- `A184013(n+1)-A047317(n+1)` -/
def P17582883581855442155.Spec : Prop :=
  ∀ n, P17582883581855442155.a n = A036404 n

end A036404

/-! ## A036404.P16143100134776960964

`A227353(n+1)-A249013(n+1)`
-/

namespace A036404.P16143100134776960964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (n + 1) - A249013 (n + 1)

end

end A036404.P16143100134776960964

namespace A036404

/-- `A227353(n+1)-A249013(n+1)` -/
def P16143100134776960964.Spec : Prop :=
  ∀ n, P16143100134776960964.a n = A036404 n

end A036404

/-! ## A036404.P8938817523120858889

`A090223(n+1)+A118015(n)-A090223(n)`
-/

namespace A036404.P8938817523120858889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) + (A118015 n - A090223 n)

end

end A036404.P8938817523120858889

namespace A036404

/-- `A090223(n+1)+A118015(n)-A090223(n)` -/
def P8938817523120858889.Spec : Prop :=
  ∀ n, P8938817523120858889.a n = A036404 n

end A036404

/-!
# A036405: a(n) = ceiling(n^2/7).

The programs for A036405, the canonical program `A036405.P15568888695052556824` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036405 has offset 0).

The definition of A036405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/7)` (program `A036405.P15568888695052556824`, by `A036405.P15568888695052556824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036405.P15568888695052556824

`ceil(n²/7)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036405

/-- `ceil(n²/7)` -/
def P15568888695052556824.Spec : Prop :=
  ∀ n, P15568888695052556824.a n = A036405 n

theorem P15568888695052556824.correct : P15568888695052556824.Spec := by
  intro n
  simp only [A036405]

end A036405

/-! ## A036405.P13252501583801671581

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4, a(6)=6, a(7)=7, a(8)=10`
-/

namespace A036405.P13252501583801671581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 4, 6, 7, 10] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A036405.P13252501583801671581

namespace A036405

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P13252501583801671581.Spec : Prop :=
  ∀ n, P13252501583801671581.a n = A036405 n

end A036405

/-! ## A036405.P18016648369961764018

`round((n²-tan(5))/7)`
-/

namespace A036405.P18016648369961764018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.tan (5 : ℝ)) / 7)

end

end A036405.P18016648369961764018

namespace A036405

/-- `round((n²-tan(5))/7)` -/
def P18016648369961764018.Spec : Prop :=
  ∀ n, P18016648369961764018.a n = A036405 n

end A036405

/-! ## A036405.P5178564733130533054

`floor((n²-tan(8))/7)`
-/

namespace A036405.P5178564733130533054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℝ) - Real.tan (8 : ℝ)) / 7⌋

end

end A036405.P5178564733130533054

namespace A036405

/-- `floor((n²-tan(8))/7)` -/
def P5178564733130533054.Spec : Prop :=
  ∀ n, P5178564733130533054.a n = A036405 n

end A036405

/-! ## A036405.P11444760111432647260

`floor(or(2, n²+4)/7)`
-/

namespace A036405.P11444760111432647260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n ^ 2 + 4) : ℚ) / 7⌋

end

end A036405.P11444760111432647260

namespace A036405

/-- `floor(or(2, n²+4)/7)` -/
def P11444760111432647260.Spec : Prop :=
  ∀ n, P11444760111432647260.a n = A036405 n

end A036405

/-! ## A036405.P3459978856842017721

`round((xor(2, n²)+1)/7)`
-/

namespace A036405.P3459978856842017721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n ^ 2) + 1 : ℚ) / 7)

end

end A036405.P3459978856842017721

namespace A036405

/-- `round((xor(2, n²)+1)/7)` -/
def P3459978856842017721.Spec : Prop :=
  ∀ n, P3459978856842017721.a n = A036405 n

end A036405

/-! ## A036405.P4515688016467561819

`floor(xor(2, n²+4)/7)`
-/

namespace A036405.P4515688016467561819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n ^ 2 + 4) : ℚ) / 7⌋

end

end A036405.P4515688016467561819

namespace A036405

/-- `floor(xor(2, n²+4)/7)` -/
def P4515688016467561819.Spec : Prop :=
  ∀ n, P4515688016467561819.a n = A036405 n

end A036405

/-! ## A036405.P17381837989318435322

`round((n/acot(n)+3)/7)`
-/

namespace A036405.P17381837989318435322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) / SequenceMachineLib.acot (n : ℝ) + 3) / 7)

end

end A036405.P17381837989318435322

namespace A036405

/-- `round((n/acot(n)+3)/7)` -/
def P17381837989318435322.Spec : Prop :=
  ∀ n, P17381837989318435322.a n = A036405 n

end A036405

/-! ## A036405.P4924661323070423553

`xor(1, xor(1, ceil(n*n/7)))`
-/

namespace A036405.P4924661323070423553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌈(n : ℚ) * ((n : ℚ) / 7)⌉)

end

end A036405.P4924661323070423553

namespace A036405

/-- `xor(1, xor(1, ceil(n*n/7)))` -/
def P4924661323070423553.Spec : Prop :=
  ∀ n, P4924661323070423553.a n = A036405 n

end A036405

/-! ## A036405.P6844631261861479784

`ceil(n*n/7)%∑[n+1]`
-/

namespace A036405.P6844631261861479784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℚ) * ((n : ℚ) / 7)⌉ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036405.P6844631261861479784

namespace A036405

/-- `ceil(n*n/7)%∑[n+1]` -/
def P6844631261861479784.Spec : Prop :=
  ∀ n, P6844631261861479784.a n = A036405 n

end A036405

/-! ## A036405.P9009270250632479984

`ceil(n*n/7)*A057427(n)`
-/

namespace A036405.P9009270250632479984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((n : ℚ) / 7)⌉ * A057427 n

end

end A036405.P9009270250632479984

namespace A036405

/-- `ceil(n*n/7)*A057427(n)` -/
def P9009270250632479984.Spec : Prop :=
  ∀ n, P9009270250632479984.a n = A036405 n

end A036405

/-! ## A036405.P5175777563514368908

`A109720(n)+A056834(n)`
-/

namespace A036405.P5175777563514368908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n + A056834 n

end

end A036405.P5175777563514368908

namespace A036405

/-- `A109720(n)+A056834(n)` -/
def P5175777563514368908.Spec : Prop :=
  ∀ n, P5175777563514368908.a n = A036405 n

end A036405

/-! ## A036405.P14044383401182532522

`A008748(n)-A320614(n)`
-/

namespace A036405.P14044383401182532522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A320614 n

end

end A036405.P14044383401182532522

namespace A036405

/-- `A008748(n)-A320614(n)` -/
def P14044383401182532522.Spec : Prop :=
  ∀ n, P14044383401182532522.a n = A036405 n

end A036405

/-! ## A036405.P8525050170769721340

`A333251(2*n)+1`
-/

namespace A036405.P8525050170769721340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333251 (2 * n) + 1

end

end A036405.P8525050170769721340

namespace A036405

/-- `A333251(2*n)+1` -/
def P8525050170769721340.Spec : Prop :=
  ∀ n, P8525050170769721340.a n = A036405 n

end A036405

/-! ## A036405.P12317265436290502411

`∑[A242062(2*n+1)]-A242062(2*n+1)`
-/

namespace A036405.P12317265436290502411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A242062 (2 * n + 1)

end

end A036405.P12317265436290502411

namespace A036405

/-- `∑[A242062(2*n+1)]-A242062(2*n+1)` -/
def P12317265436290502411.Spec : Prop :=
  ∀ n, P12317265436290502411.a n = A036405 n

end A036405

/-! ## A036405.P11500136011866451095

`A057358(A033638(n)+1-A082784(n))`
-/

namespace A036405.P11500136011866451095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A033638 n + (1 - A082784 n)).toNat

end

end A036405.P11500136011866451095

namespace A036405

/-- `A057358(A033638(n)+1-A082784(n))` -/
def P11500136011866451095.Spec : Prop :=
  ∀ n, P11500136011866451095.a n = A036405 n

end A036405

/-! ## A036405.P2361860866472917892

`A057358(1-(A082784(n)-A033638(n)))`
-/

namespace A036405.P2361860866472917892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (1 - (A082784 n - A033638 n)).toNat

end

end A036405.P2361860866472917892

namespace A036405

/-- `A057358(1-(A082784(n)-A033638(n)))` -/
def P2361860866472917892.Spec : Prop :=
  ∀ n, P2361860866472917892.a n = A036405 n

end A036405

/-! ## A036405.P7302174562677491450

`A057356(A333574(n+2))-A057356(n)`
-/

namespace A036405.P7302174562677491450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A333574 (n + 2)).toNat - A057356 n

end

end A036405.P7302174562677491450

namespace A036405

/-- `A057356(A333574(n+2))-A057356(n)` -/
def P7302174562677491450.Spec : Prop :=
  ∀ n, P7302174562677491450.a n = A036405 n

end A036405

/-! ## A036405.P14188826633283647490

`A057356(A105343(n)+n)-A057356(n)`
-/

namespace A036405.P14188826633283647490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (A105343 n + (n : ℤ)).toNat - A057356 n

end

end A036405.P14188826633283647490

namespace A036405

/-- `A057356(A105343(n)+n)-A057356(n)` -/
def P14188826633283647490.Spec : Prop :=
  ∀ n, P14188826633283647490.a n = A036405 n

end A036405

/-! ## A036405.P9027466423265627895

`A057356(∑[n+3])-n`
-/

namespace A036405.P9027466423265627895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A036405.P9027466423265627895

namespace A036405

/-- `A057356(∑[n+3])-n` -/
def P9027466423265627895.Spec : Prop :=
  ∀ n, P9027466423265627895.a n = A036405 n

end A036405

/-!
# A036406: a(n) = ceiling(n^2/8).

The programs for A036406, the canonical program `A036406.P1382487359397210652` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036406 has offset 0).

The definition of A036406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/8)` (program `A036406.P1382487359397210652`, by `A036406.P1382487359397210652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036406.P1382487359397210652

`ceil(n²/8)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036406

/-- `ceil(n²/8)` -/
def P1382487359397210652.Spec : Prop :=
  ∀ n, P1382487359397210652.a n = A036406 n

theorem P1382487359397210652.correct : P1382487359397210652.Spec := by
  intro n
  simp only [A036406]

end A036406

/-! ## A036406.P1024675948562971732

`n-2+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A036406.P1024675948562971732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  (n : ℤ) - 2 + a (n - 4)

end

end A036406.P1024675948562971732

namespace A036406

/-- `n-2+a(n-4)` -/
def P1024675948562971732.Spec : Prop :=
  ∀ n, P1024675948562971732.a n = A036406 n

end A036406

/-! ## A036406.P2621988479429937197

`round(or(2, n²+3)/8)`
-/

namespace A036406.P2621988479429937197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n ^ 2 + 3) : ℚ) / 8)

end

end A036406.P2621988479429937197

namespace A036406

/-- `round(or(2, n²+3)/8)` -/
def P2621988479429937197.Spec : Prop :=
  ∀ n, P2621988479429937197.a n = A036406 n

end A036406

/-! ## A036406.P18435025960674724433

`round(n²/8)+n%2`
-/

namespace A036406.P18435025960674724433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + ((n % 2 : ℕ) : ℤ)

end

end A036406.P18435025960674724433

namespace A036406

/-- `round(n²/8)+n%2` -/
def P18435025960674724433.Spec : Prop :=
  ∀ n, P18435025960674724433.a n = A036406 n

end A036406

/-! ## A036406.P12094053321237341780

`round(n²/8)+and(1, n)`
-/

namespace A036406.P12094053321237341780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + (Nat.land 1 n : ℤ)

end

end A036406.P12094053321237341780

namespace A036406

/-- `round(n²/8)+and(1, n)` -/
def P12094053321237341780.Spec : Prop :=
  ∀ n, P12094053321237341780.a n = A036406 n

end A036406

/-! ## A036406.P3024212655295543473

`n-(2-a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A036406.P3024212655295543473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  (n : ℤ) - (2 - a (n - 4))

end

end A036406.P3024212655295543473

namespace A036406

/-- `n-(2-a(n-4))` -/
def P3024212655295543473.Spec : Prop :=
  ∀ n, P3024212655295543473.a n = A036406 n

end A036406

/-! ## A036406.P6691368948689415213

`round(n²/8)+val(n²+1, 2)`
-/

namespace A036406.P6691368948689415213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8) + (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

end

end A036406.P6691368948689415213

namespace A036406

/-- `round(n²/8)+val(n²+1, 2)` -/
def P6691368948689415213.Spec : Prop :=
  ∀ n, P6691368948689415213.a n = A036406 n

end A036406

/-! ## A036406.P3215178313206095743

`floor(∑[abs(gcd(2, n)-n)+1]/4)`
-/

namespace A036406.P3215178313206095743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 n : ℤ) - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A036406.P3215178313206095743

namespace A036406

/-- `floor(∑[abs(gcd(2, n)-n)+1]/4)` -/
def P3215178313206095743.Spec : Prop :=
  ∀ n, P3215178313206095743.a n = A036406 n

end A036406

/-! ## A036406.P4119628684296096614

`round(A181385(n)/2)`
-/

namespace A036406.P4119628684296096614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181385 n : ℚ) / 2)

end

end A036406.P4119628684296096614

namespace A036406

/-- `round(A181385(n)/2)` -/
def P4119628684296096614.Spec : Prop :=
  ∀ n, P4119628684296096614.a n = A036406 n

end A036406

/-! ## A036406.P6375765921193154316

`floor((A008811(n)+1)/2)`
-/

namespace A036406.P6375765921193154316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008811 n + 1 : ℚ) / 2⌋

end

end A036406.P6375765921193154316

namespace A036406

/-- `floor((A008811(n)+1)/2)` -/
def P6375765921193154316.Spec : Prop :=
  ∀ n, P6375765921193154316.a n = A036406 n

end A036406

/-! ## A036406.P541231178583058791

`A001971(n)-(n+1)%2+1`
-/

namespace A036406.P541231178583058791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n - (((n + 1) % 2 : ℕ) : ℤ) + 1

end

end A036406.P541231178583058791

namespace A036406

/-- `A001971(n)-(n+1)%2+1` -/
def P541231178583058791.Spec : Prop :=
  ∀ n, P541231178583058791.a n = A036406 n

end A036406

/-! ## A036406.P10045992916825601630

`∑[∑[3-A176895(abs(1-n))]]+1`
-/

namespace A036406.P10045992916825601630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A176895 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036406.P10045992916825601630

namespace A036406

/-- `∑[∑[3-A176895(abs(1-n))]]+1` -/
def P10045992916825601630.Spec : Prop :=
  ∀ n, P10045992916825601630.a n = A036406 n

end A036406

/-! ## A036406.P2666029531948727324

`A001971(n)+A000035(n)`
-/

namespace A036406.P2666029531948727324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + A000035 n

end

end A036406.P2666029531948727324

namespace A036406

/-- `A001971(n)+A000035(n)` -/
def P2666029531948727324.Spec : Prop :=
  ∀ n, P2666029531948727324.a n = A036406 n

end A036406

/-! ## A036406.P13799623348104209435

`A008811(n)-A001971(n)`
-/

namespace A036406.P13799623348104209435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n - A001971 n

end

end A036406.P13799623348104209435

namespace A036406

/-- `A008811(n)-A001971(n)` -/
def P13799623348104209435.Spec : Prop :=
  ∀ n, P13799623348104209435.a n = A036406 n

end A036406

/-! ## A036406.P16779458473813343277

`A000982(n)-A033436(n)`
-/

namespace A036406.P16779458473813343277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A033436 n

end

end A036406.P16779458473813343277

namespace A036406

/-- `A000982(n)-A033436(n)` -/
def P16779458473813343277.Spec : Prop :=
  ∀ n, P16779458473813343277.a n = A036406 n

end A036406

/-! ## A036406.P7927911710745832095

`A330133(n)-A007590(n)`
-/

namespace A036406.P7927911710745832095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330133 n - A007590 n

end

end A036406.P7927911710745832095

namespace A036406

/-- `A330133(n)-A007590(n)` -/
def P7927911710745832095.Spec : Prop :=
  ∀ n, P7927911710745832095.a n = A036406 n

end A036406

/-! ## A036406.P13077585865939355029

`A389143(n)-A266813(n)`
-/

namespace A036406.P13077585865939355029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389143 n - A266813 n

end

end A036406.P13077585865939355029

namespace A036406

/-- `A389143(n)-A266813(n)` -/
def P13077585865939355029.Spec : Prop :=
  ∀ n, P13077585865939355029.a n = A036406 n

end A036406

/-! ## A036406.P7512866144984336074

`A001971(n)+Δ[A008619(n)]`
-/

namespace A036406.P7512866144984336074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n + (f1 (n + 1) - f1 n)

end

end A036406.P7512866144984336074

namespace A036406

/-- `A001971(n)+Δ[A008619(n)]` -/
def P7512866144984336074.Spec : Prop :=
  ∀ n, P7512866144984336074.a n = A036406 n

end A036406

/-! ## A036406.P6378777002271865493

`∑[A110655(n)]-A004526(n)`
-/

namespace A036406.P6378777002271865493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 n

end

end A036406.P6378777002271865493

namespace A036406

/-- `∑[A110655(n)]-A004526(n)` -/
def P6378777002271865493.Spec : Prop :=
  ∀ n, P6378777002271865493.a n = A036406 n

end A036406

/-! ## A036406.P17616588028871919461

`A001971(n+1)-A002265(n)`
-/

namespace A036406.P17616588028871919461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n + 1) - A002265 n

end

end A036406.P17616588028871919461

namespace A036406

/-- `A001971(n+1)-A002265(n)` -/
def P17616588028871919461.Spec : Prop :=
  ∀ n, P17616588028871919461.a n = A036406 n

end A036406

/-!
# A036407: a(n) = ceiling(n^2/9).

The programs for A036407, the canonical program `A036407.P12987039987567592911` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036407 has offset 0).

The definition of A036407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/9)` (program `A036407.P12987039987567592911`, by `A036407.P12987039987567592911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036407.P12987039987567592911

`ceil(n²/9)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036407

/-- `ceil(n²/9)` -/
def P12987039987567592911.Spec : Prop :=
  ∀ n, P12987039987567592911.a n = A036407 n

theorem P12987039987567592911.correct : P12987039987567592911.Spec := by
  intro n
  simp only [A036407]

end A036407

/-! ## A036407.P17283044185605835693

`floor(sin(2)+(n/3)²)`
-/

namespace A036407.P17283044185605835693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 : ℝ) + (((n : ℚ) / 3) ^ 2 : ℝ)⌋

end

end A036407.P17283044185605835693

namespace A036407

/-- `floor(sin(2)+(n/3)²)` -/
def P17283044185605835693.Spec : Prop :=
  ∀ n, P17283044185605835693.a n = A036407 n

end A036407

/-! ## A036407.P15395174979209561784

`floor((n/3)²-cos(3))`
-/

namespace A036407.P15395174979209561784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℚ) / 3) ^ 2 : ℝ) - Real.cos (3 : ℝ)⌋

end

end A036407.P15395174979209561784

namespace A036407

/-- `floor((n/3)²-cos(3))` -/
def P15395174979209561784.Spec : Prop :=
  ∀ n, P15395174979209561784.a n = A036407 n

end A036407

/-! ## A036407.P13073956320615086907

`round((n/3)²-cos(2))`
-/

namespace A036407.P13073956320615086907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 3) ^ 2 : ℝ) - Real.cos (2 : ℝ))

end

end A036407.P13073956320615086907

namespace A036407

/-- `round((n/3)²-cos(2))` -/
def P13073956320615086907.Spec : Prop :=
  ∀ n, P13073956320615086907.a n = A036407 n

end A036407

/-! ## A036407.P1990620333596105015

`floor(tanh(2)+(n/3)²)`
-/

namespace A036407.P1990620333596105015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (2 : ℝ) + (((n : ℚ) / 3) ^ 2 : ℝ)⌋

end

end A036407.P1990620333596105015

namespace A036407

/-- `floor(tanh(2)+(n/3)²)` -/
def P1990620333596105015.Spec : Prop :=
  ∀ n, P1990620333596105015.a n = A036407 n

end A036407

/-! ## A036407.P3147689567749297151

`round(acot(2)+(n/3)²)`
-/

namespace A036407.P3147689567749297151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 : ℝ) + (((n : ℚ) / 3) ^ 2 : ℝ))

end

end A036407.P3147689567749297151

namespace A036407

/-- `round(acot(2)+(n/3)²)` -/
def P3147689567749297151.Spec : Prop :=
  ∀ n, P3147689567749297151.a n = A036407 n

end A036407

/-! ## A036407.P13842707800385843026

`round((n/3)²-cot(2))`
-/

namespace A036407.P13842707800385843026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℚ) / 3) ^ 2 : ℝ) - Real.cot (2 : ℝ))

end

end A036407.P13842707800385843026

namespace A036407

/-- `round((n/3)²-cot(2))` -/
def P13842707800385843026.Spec : Prop :=
  ∀ n, P13842707800385843026.a n = A036407 n

end A036407

/-! ## A036407.P14917006209796057404

`round((cosh(2)+n²)/9)`
-/

namespace A036407.P14917006209796057404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (2 : ℝ) + (n ^ 2 : ℝ)) / 9)

end

end A036407.P14917006209796057404

namespace A036407

/-- `round((cosh(2)+n²)/9)` -/
def P14917006209796057404.Spec : Prop :=
  ∀ n, P14917006209796057404.a n = A036407 n

end A036407

/-! ## A036407.P12107257228265038215

`round((sinh(2)+n²)/9)`
-/

namespace A036407.P12107257228265038215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sinh (2 : ℝ) + (n ^ 2 : ℝ)) / 9)

end

end A036407.P12107257228265038215

namespace A036407

/-- `round((sinh(2)+n²)/9)` -/
def P12107257228265038215.Spec : Prop :=
  ∀ n, P12107257228265038215.a n = A036407 n

end A036407

/-! ## A036407.P8175017489722082361

`or(ceil((n/3)^2), char[1])`
-/

namespace A036407.P8175017489722082361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈((n : ℚ) / 3) ^ 2⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A036407.P8175017489722082361

namespace A036407

/-- `or(ceil((n/3)^2), char[1])` -/
def P8175017489722082361.Spec : Prop :=
  ∀ n, P8175017489722082361.a n = A036407 n

end A036407

/-! ## A036407.P8950122449420176490

`xor(1, xor(1, ceil((n/3)^2)))`
-/

namespace A036407.P8950122449420176490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 ⌈((n : ℚ) / 3) ^ 2⌉)

end

end A036407.P8950122449420176490

namespace A036407

/-- `xor(1, xor(1, ceil((n/3)^2)))` -/
def P8950122449420176490.Spec : Prop :=
  ∀ n, P8950122449420176490.a n = A036407 n

end A036407

/-! ## A036407.P4577800219550267469

`floor((or(2, n*n)+6)/9)`
-/

namespace A036407.P4577800219550267469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n * n) + 6 : ℚ) / 9⌋

end

end A036407.P4577800219550267469

namespace A036407

/-- `floor((or(2, n*n)+6)/9)` -/
def P4577800219550267469.Spec : Prop :=
  ∀ n, P4577800219550267469.a n = A036407 n

end A036407

/-! ## A036407.P4806986192846021256

`floor((xor(2, n*n)+6)/9)`
-/

namespace A036407.P4806986192846021256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n * n) + 6 : ℚ) / 9⌋

end

end A036407.P4806986192846021256

namespace A036407

/-- `floor((xor(2, n*n)+6)/9)` -/
def P4806986192846021256.Spec : Prop :=
  ∀ n, P4806986192846021256.a n = A036407 n

end A036407

/-! ## A036407.P8367540968090413478

`lcm(log2(1/2), ceil((n/3)^2))`
-/

namespace A036407.P8367540968090413478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) ⌈((n : ℚ) / 3) ^ 2⌉

end

end A036407.P8367540968090413478

namespace A036407

/-- `lcm(log2(1/2), ceil((n/3)^2))` -/
def P8367540968090413478.Spec : Prop :=
  ∀ n, (P8367540968090413478.a n : ℤ) = A036407 n

end A036407

/-! ## A036407.P9002137217313768305

`gcd(n, n+1)*ceil((n/3)^2)`
-/

namespace A036407.P9002137217313768305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ⌈((n : ℚ) / 3) ^ 2⌉

end

end A036407.P9002137217313768305

namespace A036407

/-- `gcd(n, n+1)*ceil((n/3)^2)` -/
def P9002137217313768305.Spec : Prop :=
  ∀ n, P9002137217313768305.a n = A036407 n

theorem P9002137217313768305.correct : P9002137217313768305.Spec := by
  intro n
  simp only [A036407, Nat.add_sub_cancel, A036407.P9002137217313768305.a, A036407.P12987039987567592911.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A036407

/-! ## A036407.P15057012444143369150

`a(n-1)-floor(a(n-1)-(n/3)²)` with `a(0)=0`
-/

namespace A036407.P15057012444143369150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℚ) - ((n : ℚ) / 3) ^ 2⌋

end

end A036407.P15057012444143369150

namespace A036407

/-- `a(n-1)-floor(a(n-1)-(n/3)²)` -/
def P15057012444143369150.Spec : Prop :=
  ∀ n, P15057012444143369150.a n = A036407 n

end A036407

/-! ## A036407.P10110885396607366458

`floor(A189833(n)/9)`
-/

namespace A036407.P10110885396607366458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A189833 n : ℚ) / 9⌋

end

end A036407.P10110885396607366458

namespace A036407

/-- `floor(A189833(n)/9)` -/
def P10110885396607366458.Spec : Prop :=
  ∀ n, P10110885396607366458.a n = A036407 n

end A036407

/-! ## A036407.P5977830953139145476

`round(A087475(n)/9)`
-/

namespace A036407.P5977830953139145476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087475 n : ℚ) / 9)

end

end A036407.P5977830953139145476

namespace A036407

/-- `round(A087475(n)/9)` -/
def P5977830953139145476.Spec : Prop :=
  ∀ n, P5977830953139145476.a n = A036407 n

end A036407

/-! ## A036407.P5551201545582317058

`floor(A255847(n)/18)`
-/

namespace A036407.P5551201545582317058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255847 n : ℚ) / 18⌋

end

end A036407.P5551201545582317058

namespace A036407

/-- `floor(A255847(n)/18)` -/
def P5551201545582317058.Spec : Prop :=
  ∀ n, P5551201545582317058.a n = A036407 n

end A036407

/-! ## A036407.P16007290719699468051

`round(A155966(n)/18)`
-/

namespace A036407.P16007290719699468051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155966 n : ℚ) / 18)

end

end A036407.P16007290719699468051

namespace A036407

/-- `round(A155966(n)/18)` -/
def P16007290719699468051.Spec : Prop :=
  ∀ n, P16007290719699468051.a n = A036407 n

end A036407

/-!
# A036408: a(n) = ceiling(n^2/10).

The programs for A036408, the canonical program `A036408.P11396681803384752045` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036408 has offset 0).

The definition of A036408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/10)` (program `A036408.P11396681803384752045`, by `A036408.P11396681803384752045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036408.P11396681803384752045

`ceil(n²/10)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036408

/-- `ceil(n²/10)` -/
def P11396681803384752045.Spec : Prop :=
  ∀ n, P11396681803384752045.a n = A036408 n

theorem P11396681803384752045.correct : P11396681803384752045.Spec := by
  intro n
  simp only [A036408]

end A036408

/-! ## A036408.P16641676242924399346

`round(or(2, n²+3)/10)`
-/

namespace A036408.P16641676242924399346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n ^ 2 + 3) : ℚ) / 10)

end

end A036408.P16641676242924399346

namespace A036408

/-- `round(or(2, n²+3)/10)` -/
def P16641676242924399346.Spec : Prop :=
  ∀ n, P16641676242924399346.a n = A036408 n

end A036408

/-! ## A036408.P6239263240094645082

`floor(or(2, n²+7)/10)`
-/

namespace A036408.P6239263240094645082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n ^ 2 + 7) : ℚ) / 10⌋

end

end A036408.P6239263240094645082

namespace A036408

/-- `floor(or(2, n²+7)/10)` -/
def P6239263240094645082.Spec : Prop :=
  ∀ n, P6239263240094645082.a n = A036408 n

end A036408

/-! ## A036408.P6595897254018974991

`or(ceil(n^2/10), char[1])`
-/

namespace A036408.P6595897254018974991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n ^ 2 : ℚ) / 10⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A036408.P6595897254018974991

namespace A036408

/-- `or(ceil(n^2/10), char[1])` -/
def P6595897254018974991.Spec : Prop :=
  ∀ n, P6595897254018974991.a n = A036408 n

end A036408

/-! ## A036408.P7931185859453491693

`floor((xor(2, n*n)+7)/10)`
-/

namespace A036408.P7931185859453491693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n * n) + 7 : ℚ) / 10⌋

end

end A036408.P7931185859453491693

namespace A036408

/-- `floor((xor(2, n*n)+7)/10)` -/
def P7931185859453491693.Spec : Prop :=
  ∀ n, P7931185859453491693.a n = A036408 n

end A036408

/-! ## A036408.P4099814472016354016

`ceil(n^2/10)%∑[n+1]`
-/

namespace A036408.P4099814472016354016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n ^ 2 : ℚ) / 10⌉ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036408.P4099814472016354016

namespace A036408

/-- `ceil(n^2/10)%∑[n+1]` -/
def P4099814472016354016.Spec : Prop :=
  ∀ n, P4099814472016354016.a n = A036408 n

end A036408

/-! ## A036408.P11007621745823953521

`round(A330357(n)/5)`
-/

namespace A036408.P11007621745823953521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330357 n : ℚ) / 5)

end

end A036408.P11007621745823953521

namespace A036408

/-- `round(A330357(n)/5)` -/
def P11007621745823953521.Spec : Prop :=
  ∀ n, P11007621745823953521.a n = A036408 n

end A036408

/-! ## A036408.P17132732173553780305

`round(A087475(n)/10)`
-/

namespace A036408.P17132732173553780305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087475 n : ℚ) / 10)

end

end A036408.P17132732173553780305

namespace A036408

/-- `round(A087475(n)/10)` -/
def P17132732173553780305.Spec : Prop :=
  ∀ n, P17132732173553780305.a n = A036408 n

end A036408

/-! ## A036408.P13182472145468905325

`floor((A036404(n)+1)/2)`
-/

namespace A036408.P13182472145468905325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036404 n + 1 : ℚ) / 2⌋

end

end A036408.P13182472145468905325

namespace A036408

/-- `floor((A036404(n)+1)/2)` -/
def P13182472145468905325.Spec : Prop :=
  ∀ n, P13182472145468905325.a n = A036408 n

end A036408

/-! ## A036408.P4863146477300689765

`floor((A000982(n)-1)/5)+1`
-/

namespace A036408.P4863146477300689765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000982 n - 1 : ℚ) / 5⌋ + 1

end

end A036408.P4863146477300689765

namespace A036408

/-- `floor((A000982(n)-1)/5)+1` -/
def P4863146477300689765.Spec : Prop :=
  ∀ n, P4863146477300689765.a n = A036408 n

end A036408

/-! ## A036408.P5723293869645440787

`A168184(n)+A056865(n)`
-/

namespace A036408.P5723293869645440787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n + A056865 n

end

end A036408.P5723293869645440787

namespace A036408

/-- `A168184(n)+A056865(n)` -/
def P5723293869645440787.Spec : Prop :=
  ∀ n, P5723293869645440787.a n = A036408 n

end A036408

/-! ## A036408.P15599186184041448165

`A004525(A036404(n))`
-/

namespace A036408.P15599186184041448165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A036404 n).toNat

end

end A036408.P15599186184041448165

namespace A036408

/-- `A004525(A036404(n))` -/
def P15599186184041448165.Spec : Prop :=
  ∀ n, P15599186184041448165.a n = A036408 n

end A036408

/-! ## A036408.P16206431533475061193

`A110654(n²-A118015(2*n))`
-/

namespace A036408.P16206431533475061193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n ^ 2 : ℤ) - A118015 (2 * n)).toNat

end

end A036408.P16206431533475061193

namespace A036408

/-- `A110654(n²-A118015(2*n))` -/
def P16206431533475061193.Spec : Prop :=
  ∀ n, P16206431533475061193.a n = A036408 n

end A036408

/-! ## A036408.P4741962932650537500

`A002266(∑[(n%2)^n+abs(1-n)]+2)`
-/

namespace A036408.P4741962932650537500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) + |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A036408.P4741962932650537500

namespace A036408

/-- `A002266(∑[(n%2)^n+abs(1-n)]+2)` -/
def P4741962932650537500.Spec : Prop :=
  ∀ n, P4741962932650537500.a n = A036408 n

end A036408

/-! ## A036408.P1576758548650090779

`A002266(A105343(n)+2)`
-/

namespace A036408.P1576758548650090779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A105343 n + 2).toNat

end

end A036408.P1576758548650090779

namespace A036408

/-- `A002266(A105343(n)+2)` -/
def P1576758548650090779.Spec : Prop :=
  ∀ n, P1576758548650090779.a n = A036408 n

end A036408

/-! ## A036408.P7616409486363830597

`A002266(A330357(n)+2)`
-/

namespace A036408.P7616409486363830597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A330357 n + 2).toNat

end

end A036408.P7616409486363830597

namespace A036408

/-- `A002266(A330357(n)+2)` -/
def P7616409486363830597.Spec : Prop :=
  ∀ n, P7616409486363830597.a n = A036408 n

end A036408

/-! ## A036408.P3826493849573561222

`A002266(A267459(n+1)+2)`
-/

namespace A036408.P3826493849573561222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A267459 (n + 1) + 2).toNat

end

end A036408.P3826493849573561222

namespace A036408

/-- `A002266(A267459(n+1)+2)` -/
def P3826493849573561222.Spec : Prop :=
  ∀ n, P3826493849573561222.a n = A036408 n

end A036408

/-! ## A036408.P10991512316201581659

`A004525(A058207(n²))`
-/

namespace A036408.P10991512316201581659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A058207 (n ^ 2)).toNat

end

end A036408.P10991512316201581659

namespace A036408

/-- `A004525(A058207(n²))` -/
def P10991512316201581659.Spec : Prop :=
  ∀ n, P10991512316201581659.a n = A036408 n

end A036408

/-! ## A036408.P15770756593822742789

`A002266(A071284(n)+A008619(n²))`
-/

namespace A036408.P15770756593822742789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A071284 n + A008619 (n ^ 2)).toNat

end

end A036408.P15770756593822742789

namespace A036408

/-- `A002266(A071284(n)+A008619(n²))` -/
def P15770756593822742789.Spec : Prop :=
  ∀ n, P15770756593822742789.a n = A036408 n

end A036408

/-! ## A036408.P16863366047135503559

`A059995(n²+9)`
-/

namespace A036408.P16863366047135503559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (n ^ 2 + 9)

end

end A036408.P16863366047135503559

namespace A036408

/-- `A059995(n²+9)` -/
def P16863366047135503559.Spec : Prop :=
  ∀ n, P16863366047135503559.a n = A036408 n

end A036408

/-!
# A036409: a(n) = ceiling(n^2/11).

The programs for A036409, the canonical program `A036409.P7246155149988740922` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036409 has offset 0).

The definition of A036409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/11)` (program `A036409.P7246155149988740922`, by `A036409.P7246155149988740922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036409.P7246155149988740922

`ceil(n²/11)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036409

/-- `ceil(n²/11)` -/
def P7246155149988740922.Spec : Prop :=
  ∀ n, P7246155149988740922.a n = A036409 n

theorem P7246155149988740922.correct : P7246155149988740922.Spec := by
  intro n
  simp only [A036409]

end A036409

/-! ## A036409.P2451652123860104713

`-floor((n-lcm(n, n+1))/11)`
-/

namespace A036409.P2451652123860104713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊((n : ℤ) - (Nat.lcm n (n + 1) : ℤ) : ℚ) / 11⌋

end

end A036409.P2451652123860104713

namespace A036409

/-- `-floor((n-lcm(n, n+1))/11)` -/
def P2451652123860104713.Spec : Prop :=
  ∀ n, P2451652123860104713.a n = A036409 n

end A036409

/-! ## A036409.P55789842712417368

`round(A117951(n)/11)`
-/

namespace A036409.P55789842712417368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A117951 n : ℚ) / 11)

end

end A036409.P55789842712417368

namespace A036409

/-- `round(A117951(n)/11)` -/
def P55789842712417368.Spec : Prop :=
  ∀ n, P55789842712417368.a n = A036409 n

end A036409

/-! ## A036409.P13524395094267450069

`round((A002522(n)+4)/11)`
-/

namespace A036409.P13524395094267450069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002522 n + 4 : ℚ) / 11)

end

end A036409.P13524395094267450069

namespace A036409

/-- `round((A002522(n)+4)/11)` -/
def P13524395094267450069.Spec : Prop :=
  ∀ n, P13524395094267450069.a n = A036409 n

end A036409

/-! ## A036409.P7239083692541009700

`floor((A000290(n)+10)/11)`
-/

namespace A036409.P7239083692541009700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000290 n + 10 : ℚ) / 11⌋

end

end A036409.P7239083692541009700

namespace A036409

/-- `floor((A000290(n)+10)/11)` -/
def P7239083692541009700.Spec : Prop :=
  ∀ n, P7239083692541009700.a n = A036409 n

end A036409

/-! ## A036409.P9021555828602737096

`ceil(A000290(n)/11)%A000124(n)`
-/

namespace A036409.P9021555828602737096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A000290 n : ℚ) / 11⌉ (A000124 n)

end

end A036409.P9021555828602737096

namespace A036409

/-- `ceil(A000290(n)/11)%A000124(n)` -/
def P9021555828602737096.Spec : Prop :=
  ∀ n, P9021555828602737096.a n = A036409 n

end A036409

/-! ## A036409.P11256643415262251467

`A344420(A114948(n))`
-/

namespace A036409.P11256643415262251467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A114948 n).toNat

end

end A036409.P11256643415262251467

namespace A036409

/-- `A344420(A114948(n))` -/
def P11256643415262251467.Spec : Prop :=
  ∀ n, P11256643415262251467.a n = A036409 n

end A036409

/-!
# A036410: G.f.: (1+x^6)/((1-x)*(1-x^3)*(1-x^4)).

The programs for A036410, the canonical program `A036410.P15365243418369597704` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036410 has offset 0).

The definition of A036410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036410.P15365243418369597704

`ceil((n+1)²/12)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036410

/-- `ceil((n+1)²/12)` -/
def P15365243418369597704.Spec : Prop :=
  ∀ n, P15365243418369597704.a n = A036410 n

theorem P15365243418369597704.correct : P15365243418369597704.Spec := by
  intro n
  simp only [A036410]

end A036410

/-! ## A036410.P6647255146525468007

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=3`
-/

namespace A036410.P6647255146525468007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 3] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A036410.P6647255146525468007

namespace A036410

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P6647255146525468007.Spec : Prop :=
  ∀ n, P6647255146525468007.a n = A036410 n

end A036410

/-! ## A036410.P7757284780150083462

`∑[and(Δ[ceil(n²/12)], -1)]`
-/

namespace A036410.P7757284780150083462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f2 (n + 1) - f2 n) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036410.P7757284780150083462

namespace A036410

/-- `∑[and(Δ[ceil(n²/12)], -1)]` -/
def P7757284780150083462.Spec : Prop :=
  ∀ n, P7757284780150083462.a n = A036410 n

end A036410

/-! ## A036410.P8095307095948047320

`round(ceil(∑[or(1, n)]/3)/2)`
-/

namespace A036410.P8095307095948047320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉ : ℚ) / 2)

end

end A036410.P8095307095948047320

namespace A036410

/-- `round(ceil(∑[or(1, n)]/3)/2)` -/
def P8095307095948047320.Spec : Prop :=
  ∀ n, P8095307095948047320.a n = A036410 n

end A036410

/-! ## A036410.P16631405184678556212

`floor(a(n-3)+n/2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036410.P16631405184678556212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(a (n - 3) : ℚ) + (n : ℚ) / 2⌋

end

end A036410.P16631405184678556212

namespace A036410

/-- `floor(a(n-3)+n/2)` -/
def P16631405184678556212.Spec : Prop :=
  ∀ n, P16631405184678556212.a n = A036410 n

end A036410

/-! ## A036410.P6941175615985684084

`floor(∑[n/3-a(n-1)])` with `a(0)=1, a(1)=0`
-/

namespace A036410.P6941175615985684084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℚ) / 3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A036410.P6941175615985684084

namespace A036410

/-- `floor(∑[n/3-a(n-1)])` -/
def P6941175615985684084.Spec : Prop :=
  ∀ n, P6941175615985684084.a n = A036410 n

end A036410

/-! ## A036410.P1762351665151572920

`∑[∑[gcd(3, n)-2]+floor(n/2)]`
-/

namespace A036410.P1762351665151572920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036410.P1762351665151572920

namespace A036410

/-- `∑[∑[gcd(3, n)-2]+floor(n/2)]` -/
def P1762351665151572920.Spec : Prop :=
  ∀ n, P1762351665151572920.a n = A036410 n

end A036410

/-! ## A036410.P10885993856537988725

`∑[∑[(-1)^n]+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A036410.P10885993856537988725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036410.P10885993856537988725

namespace A036410

/-- `∑[∑[(-1)^n]+a(n-3)]` -/
def P10885993856537988725.Spec : Prop :=
  ∀ n, P10885993856537988725.a n = A036410 n

end A036410

/-! ## A036410.P5719624978750783887

`∑[a(n-3)+and(1, n+1)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A036410.P5719624978750783887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) + Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036410.P5719624978750783887

namespace A036410

/-- `∑[a(n-3)+and(1, n+1)]` -/
def P5719624978750783887.Spec : Prop :=
  ∀ n, (P5719624978750783887.a n : ℤ) = A036410 n

end A036410

/-! ## A036410.P4908533754373990269

`Δ[a(n-2)+n-2]+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036410.P4908533754373990269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 3)

end

end A036410.P4908533754373990269

namespace A036410

/-- `Δ[a(n-2)+n-2]+a(n-3)` -/
def P4908533754373990269.Spec : Prop :=
  ∀ n, P4908533754373990269.a n = A036410 n

end A036410

/-! ## A036410.P3668659169814108509

`a(n-3)-Δ[a(n-2)-(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036410.P3668659169814108509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 2) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) - (f1 (n + 1) - f1 n)

end

end A036410.P3668659169814108509

namespace A036410

/-- `a(n-3)-Δ[a(n-2)-(n-2)]` -/
def P3668659169814108509.Spec : Prop :=
  ∀ n, P3668659169814108509.a n = A036410 n

end A036410

/-! ## A036410.P3913109796927248818

`∑[A008612(n)]`
-/

namespace A036410.P3913109796927248818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036410.P3913109796927248818

namespace A036410

/-- `∑[A008612(n)]` -/
def P3913109796927248818.Spec : Prop :=
  ∀ n, P3913109796927248818.a n = A036410 n

end A036410

/-! ## A036410.P9884985966496766914

`Δ[A175831(n)]`
-/

namespace A036410.P9884985966496766914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036410.P9884985966496766914

namespace A036410

/-- `Δ[A175831(n)]` -/
def P9884985966496766914.Spec : Prop :=
  ∀ n, P9884985966496766914.a n = A036410 n

end A036410

/-! ## A036410.P3081964190112179031

`floor(A032765(n)/4)+1`
-/

namespace A036410.P3081964190112179031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032765 n : ℚ) / 4⌋ + 1

end

end A036410.P3081964190112179031

namespace A036410

/-- `floor(A032765(n)/4)+1` -/
def P3081964190112179031.Spec : Prop :=
  ∀ n, P3081964190112179031.a n = A036410 n

end A036410

/-! ## A036410.P12861128002292172937

`A008749(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A036410.P12861128002292172937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008749 n - a (n - 2)

end

end A036410.P12861128002292172937

namespace A036410

/-- `A008749(n)-a(n-2)` -/
def P12861128002292172937.Spec : Prop :=
  ∀ n, P12861128002292172937.a n = A036410 n

end A036410

/-! ## A036410.P6894025943847023528

`A004526(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036410.P6894025943847023528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A004526 n + a (n - 3)

end

end A036410.P6894025943847023528

namespace A036410

/-- `A004526(n)+a(n-3)` -/
def P6894025943847023528.Spec : Prop :=
  ∀ n, P6894025943847023528.a n = A036410 n

end A036410

/-! ## A036410.P8523041386840091178

`A123108(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036410.P8523041386840091178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A123108 n + a (n - 3)

end

end A036410.P8523041386840091178

namespace A036410

/-- `A123108(n)+a(n-3)` -/
def P8523041386840091178.Spec : Prop :=
  ∀ n, P8523041386840091178.a n = A036410 n

end A036410

/-! ## A036410.P2172835700848971221

`A211540(n+1)+A008620(n)`
-/

namespace A036410.P2172835700848971221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 1) + A008620 n

end

end A036410.P2172835700848971221

namespace A036410

/-- `A211540(n+1)+A008620(n)` -/
def P2172835700848971221.Spec : Prop :=
  ∀ n, P2172835700848971221.a n = A036410 n

end A036410

/-! ## A036410.P2800180882241291841

`A001399(n)-A002264(n+1)`
-/

namespace A036410.P2800180882241291841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A002264 (n + 1)

end

end A036410.P2800180882241291841

namespace A036410

/-- `A001399(n)-A002264(n+1)` -/
def P2800180882241291841.Spec : Prop :=
  ∀ n, P2800180882241291841.a n = A036410 n

end A036410

/-! ## A036410.P17612129932234157439

`A175831(n+1)-A175831(n)`
-/

namespace A036410.P17612129932234157439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175831 (n + 1) - A175831 n

end

end A036410.P17612129932234157439

namespace A036410

/-- `A175831(n+1)-A175831(n)` -/
def P17612129932234157439.Spec : Prop :=
  ∀ n, P17612129932234157439.a n = A036410 n

end A036410

/-!
# A036411: 9-gonal square numbers.

The programs for A036411, there is no canonical definition to state claims against.
-/

/-! ## A036411.P7456096436534706530

`A048911(n+1)²`
-/

namespace A036411.P7456096436534706530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048911 (n + 1) ^ 2

end

end A036411.P7456096436534706530

/-! ## A036411.P5748713557175668113

`A048911(n+1)^A020639(A008458(n))`
-/

namespace A036411.P5748713557175668113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A036411.P5748713557175668113

/-! ## A036411.P3840535580245276778

`A048911(n+1)^A020639(A028326(n))`
-/

namespace A036411.P3840535580245276778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A020639 (A028326 n).toNat : ℤ)

end

end A036411.P3840535580245276778

/-! ## A036411.P14210921097019474819

`A048911(n+1)^A020639(A310506(n))`
-/

namespace A036411.P14210921097019474819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A020639 (A310506 n).toNat : ℤ)

end

end A036411.P14210921097019474819

/-! ## A036411.P2304432552361289408

`A048911(n+1)^A233583(A055229(n+1))`
-/

namespace A036411.P2304432552361289408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A233583 (A055229 (n + 1)).toNat : ℤ)

end

end A036411.P2304432552361289408

/-! ## A036411.P10699358280334456010

`A048911(n+1)^A276869(A190774(n+1))`
-/

namespace A036411.P10699358280334456010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A276869 (A190774 (n + 1)).toNat : ℤ)

end

end A036411.P10699358280334456010

/-! ## A036411.P6714481786910147326

`A048911(n+1)^A001222(A006094(n+1))`
-/

namespace A036411.P6714481786910147326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A001222 (A006094 (n + 1)).toNat : ℤ)

end

end A036411.P6714481786910147326

/-! ## A036411.P15909038503483906793

`A048911(n+1)^A020639(A340854(n+1))`
-/

namespace A036411.P15909038503483906793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048911 (n + 1) : ℚ) ^ (A020639 (A340854 (n + 1)).toNat : ℤ)

end

end A036411.P15909038503483906793

/-!
# A036413: Values of k for which there are no empty intervals when fractional_part(m*e) for m = 1, ..., k is plotted along [ 0, 1 ] subdivided into k equal regions.

The programs for A036413, there is no canonical definition to state claims against.
-/

/-! ## A036413.P1024330810845135557

`eq[0, A036412(n+1)]+1`
-/

namespace A036413.P1024330810845135557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036413.P1024330810845135557

/-! ## A036413.P6443488704431032620

`eq[25, 5*a(A036412(n))]` with `a(0)=5`
-/

namespace A036413.P6443488704431032620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  5 * f2 (A036412 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036413.P6443488704431032620

/-! ## A036413.P1222926781643733697

`A199343(eq[0, A036412(n+1)])`
-/

namespace A036413.P1222926781643733697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036413.P1222926781643733697

/-! ## A036413.P18344497275090226953

`eq[A000007(n), A036412(A028310(n))]`
-/

namespace A036413.P18344497275090226953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036413.P18344497275090226953

/-! ## A036413.P3849932968937870116

`eq[A000038(n), A036412(A028310(n))]`
-/

namespace A036413.P3849932968937870116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036412 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036413.P3849932968937870116

/-!
# A036414: Number of empty intervals when fractional_part(i*phi) for i = 1, ..., n is plotted along [ 0, 1 ] subdivided into n equal regions.

The programs for A036414, there is no canonical definition to state claims against.
-/

/-! ## A036414.P8903973695481164210

`A049800(3*n+2)*A307608(A046315(n+1))`
-/

namespace A036414.P8903973695481164210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049800 (3 * n + 2) * A307608 (A046315 (n + 1)).toNat

end

end A036414.P8903973695481164210

/-! ## A036414.P13717664863316501026

`A293435(A296039(3*n+1)%A139491(n+1))`
-/

namespace A036414.P13717664863316501026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (Int.tmod (A296039 (3 * n + 1)) (A139491 (n + 1))).toNat

end

end A036414.P13717664863316501026

/-! ## A036414.P9336090045297863079

`A035195(A118394(n)+1)`
-/

namespace A036414.P9336090045297863079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (A118394 n + 1).toNat

end

end A036414.P9336090045297863079

/-! ## A036414.P3607798205935338305

`A076489(A047969(3*n))`
-/

namespace A036414.P3607798205935338305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A047969 (3 * n)).toNat

end

end A036414.P3607798205935338305

/-! ## A036414.P1807864588367216696

`val(A257895(A016777(n)), 8)`
-/

namespace A036414.P1807864588367216696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A257895 (A016777 n).toNat).toNat 8

end

end A036414.P1807864588367216696

/-!
# A036415: Values of k for which there are no empty intervals when fractional part(m*phi) for m = 1, ..., k is plotted along [ 0, 1 ] subdivided into k equal regions.

The programs for A036415, there is no canonical definition to state claims against.
-/

/-! ## A036415.P13005947399499302769

`record[A272917(n+1)/A110541(n)]`
-/

namespace A036415.P13005947399499302769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272917 (n + 1) : ℚ) / (A110541 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036415.P13005947399499302769

/-! ## A036415.P3087762975767082042

`record[A096748(n)%A053741(A079977(n))]`
-/

namespace A036415.P3087762975767082042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096748 n) (A053741 (A079977 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036415.P3087762975767082042

/-! ## A036415.P18227041292775292782

`record[A058071(n+2)%A000040(A058071(n))]`
-/

namespace A036415.P18227041292775292782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058071 (n + 2)) (A000040 (A058071 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036415.P18227041292775292782

/-! ## A036415.P17737319111188856037

`eq[0, A036414(n+1)]+1`
-/

namespace A036415.P17737319111188856037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036415.P17737319111188856037

/-! ## A036415.P13793380824929895214

`record[gcd(A000027(n+1), A036414(n+1))]`
-/

namespace A036415.P13793380824929895214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A036414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036415.P13793380824929895214

/-!
# A036417: Values of k for which there are no empty intervals when fractional part(m*Pi) for m = 1, ..., k is plotted along [ 0, 1 ] subdivided into k equal regions.

The programs for A036417, there is no canonical definition to state claims against.
-/

/-! ## A036417.P2334216849585733749

`eq[0, A036416(n+1)]+1`
-/

namespace A036417.P2334216849585733749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036417.P2334216849585733749

/-! ## A036417.P364036730737724603

`∑[A033865(A264774(n))]`
-/

namespace A036417.P364036730737724603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A264774 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036417.P364036730737724603

/-!
# A036418: Number of self-avoiding polygons with perimeter n on hexagonal [ =triangular ] lattice.

The programs for A036418, there is no canonical definition to state claims against.
-/

/-! ## A036418.P3700949728689091963

`A001335(n+1)/(2*(n+1))`
-/

namespace A036418.P3700949728689091963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001335 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A036418.P3700949728689091963

/-! ## A036418.P8282215728668817693

`A004526(A001335(n+1)/(n+1))`
-/

namespace A036418.P8282215728668817693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A001335 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A036418.P8282215728668817693

/-! ## A036418.P11477087435257535815

`A209037(ceil(3^(n-1)))-1`
-/

namespace A036418.P11477087435257535815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209037 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - 1

end

end A036418.P11477087435257535815

/-! ## A036418.P2855332800428063665

`3*A124196(a(n-1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A036418.P2855332800428063665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  3 * A124196 (a (n - 1)).toNat

end

end A036418.P2855332800428063665

/-!
# A036419: Number of ternary rooted trees with n nodes and height exactly 4.

The programs for A036419, there is no canonical definition to state claims against.
-/

/-! ## A036419.P14664619241561109300

`A036372(n)-A036371(n)`
-/

namespace A036419.P14664619241561109300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036372 n - A036371 n

end

end A036419.P14664619241561109300

/-! ## A036419.P2643040173230602517

`A036370(n+22)-A036371(n)`
-/

namespace A036419.P2643040173230602517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 (n + 22) - A036371 n

end

end A036419.P2643040173230602517

/-! ## A036419.P14879068456910989833

`A036373(n)-(A036420(n)+A036371(n))`
-/

namespace A036419.P14879068456910989833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036373 n - (A036420 n + A036371 n)

end

end A036419.P14879068456910989833

/-! ## A036419.P3569151314215148828

`A036374(n)-(A036421(n)+A036420(n))-A036371(n)`
-/

namespace A036419.P3569151314215148828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n - (A036421 n + A036420 n) - A036371 n

end

end A036419.P3569151314215148828

/-! ## A036419.P9840339758109583000

`∑[A227177(A167512(n)²)]`
-/

namespace A036419.P9840339758109583000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A167512 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036419.P9840339758109583000

/-!
# A036420: Number of ternary rooted trees with n nodes and height exactly 5.

The programs for A036420, there is no canonical definition to state claims against.
-/

/-! ## A036420.P579670514545141098

`A036373(n)-A036372(n)`
-/

namespace A036420.P579670514545141098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036373 n - A036372 n

end

end A036420.P579670514545141098

/-! ## A036420.P8241438070507856939

`A036370(A327374(n+8))-A036372(n)`
-/

namespace A036420.P8241438070507856939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 (A327374 (n + 8)).toNat - A036372 n

end

end A036420.P8241438070507856939

/-! ## A036420.P9428936776699919723

`A036374(n)-(A036421(n)+A036372(n))`
-/

namespace A036420.P9428936776699919723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n - (A036421 n + A036372 n)

end

end A036420.P9428936776699919723

/-! ## A036420.P14964217612766392775

`A036373(n)+A008683(A007918(n))*A036372(n)`
-/

namespace A036420.P14964217612766392775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036373 n + A008683 (A007918 n).toNat * A036372 n

end

end A036420.P14964217612766392775

/-! ## A036420.P14295658265108813364

`A036374(n)-A036421(n)-A036372(A028310(n))`
-/

namespace A036420.P14295658265108813364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n - A036421 n - A036372 (A028310 n).toNat

end

end A036420.P14295658265108813364

/-!
# A036421: Number of ternary rooted trees with n nodes and height exactly 6.

The programs for A036421, there is no canonical definition to state claims against.
-/

/-! ## A036421.P12158206907438994408

`A036374(n)-A036373(n)`
-/

namespace A036421.P12158206907438994408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n - A036373 n

end

end A036421.P12158206907438994408

/-! ## A036421.P17028855069584695540

`A036375(n)-(A036422(n)+A036373(n))`
-/

namespace A036421.P17028855069584695540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - (A036422 n + A036373 n)

end

end A036421.P17028855069584695540

/-! ## A036421.P15695550007671932644

`A036375(n)-A036422(n)-A036373(A028310(n))`
-/

namespace A036421.P15695550007671932644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - A036422 n - A036373 (A028310 n).toNat

end

end A036421.P15695550007671932644

/-! ## A036421.P5517379018625198481

`A036374(n)+A036373(n)*A325970(A234104(n+1))`
-/

namespace A036421.P5517379018625198481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036374 n + A036373 n * A325970 (A234104 (n + 1)).toNat

end

end A036421.P5517379018625198481

/-! ## A036421.P7126720867723747692

`A036376(n)-(A036423(n)+A036422(n))-A036373(n)`
-/

namespace A036421.P7126720867723747692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036423 n + A036422 n) - A036373 n

end

end A036421.P7126720867723747692

/-!
# A036422: Number of ternary rooted trees with n nodes and height exactly 7.

The programs for A036422, there is no canonical definition to state claims against.
-/

/-! ## A036422.P17446007290135088506

`A036375(n)-A036374(n)`
-/

namespace A036422.P17446007290135088506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - A036374 n

end

end A036422.P17446007290135088506

/-! ## A036422.P16719092820678237890

`A036376(n)-(A036423(n)+A036374(n))`
-/

namespace A036422.P16719092820678237890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036423 n + A036374 n)

end

end A036422.P16719092820678237890

/-! ## A036422.P7687992023378746017

`A036376(A028310(n))%(A036423(n)+A036374(n))`
-/

namespace A036422.P7687992023378746017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036376 (A028310 n).toNat) (A036423 n + A036374 n)

end

end A036422.P7687992023378746017

/-! ## A036422.P14334897938364410403

`A036375(n)-(A036421(n)+A036373(n))`
-/

namespace A036422.P14334897938364410403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036375 n - (A036421 n + A036373 n)

end

end A036422.P14334897938364410403

/-! ## A036422.P9128074793402023072

`A036376(n)-(A036423(n)+A036421(n)+A036373(n))`
-/

namespace A036422.P9128074793402023072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036423 n + (A036421 n + A036373 n))

end

end A036422.P9128074793402023072

/-!
# A036423: Number of ternary rooted trees with n nodes and height exactly 8.

The programs for A036423, there is no canonical definition to state claims against.
-/

/-! ## A036423.P13226293472710139959

`A036376(n)-A036375(n)`
-/

namespace A036423.P13226293472710139959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - A036375 n

end

end A036423.P13226293472710139959

/-! ## A036423.P2218656475820998420

`A036376(n)-(A036422(n)+A036374(n))`
-/

namespace A036423.P2218656475820998420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036422 n + A036374 n)

end

end A036423.P2218656475820998420

/-! ## A036423.P11554839800344230148

`A036376(n)-(A036373(n)+A036422(n)+A036421(n))`
-/

namespace A036423.P11554839800344230148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036376 n - (A036373 n + (A036422 n + A036421 n))

end

end A036423.P11554839800344230148

/-! ## A036423.P5405443625423735571

`A130481(A036376(n)%A036375(n))`
-/

namespace A036423.P5405443625423735571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (Int.tmod (A036376 n) (A036375 n)).toNat

end

end A036423.P5405443625423735571

/-! ## A036423.P8174276580960652806

`A071842(A111695(n+2))`
-/

namespace A036423.P8174276580960652806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (A111695 (n + 2)).toNat

end

end A036423.P8174276580960652806

/-!
# A036424: Number of ternary rooted trees with n nodes and height exactly 9.

The programs for A036424, there is no canonical definition to state claims against.
-/

/-! ## A036424.P418021572809793446

`A036633(n)-A036633(A036600(n))`
-/

namespace A036424.P418021572809793446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 n - A036633 (A036600 n).toNat

end

end A036424.P418021572809793446

/-! ## A036424.P8670426983873704689

`A036640(n)-A036640(A036600(n))`
-/

namespace A036424.P8670426983873704689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036640 n - A036640 (A036600 n).toNat

end

end A036424.P8670426983873704689

/-! ## A036424.P4162523203077044362

`A374991(C(n, 9))`
-/

namespace A036424.P4162523203077044362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374991 (Nat.choose n 9)

end

end A036424.P4162523203077044362

/-! ## A036424.P8582679943791984899

`A036633(A049872(n))`
-/

namespace A036424.P8582679943791984899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 (A049872 n).toNat

end

end A036424.P8582679943791984899

/-! ## A036424.P18039894643838879811

`A036633(A062003(n))`
-/

namespace A036424.P18039894643838879811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036633 (A062003 n).toNat

end

end A036424.P18039894643838879811

/-!
# A036425: Number of ternary rooted trees with n nodes and height exactly 10.

The programs for A036425, there is no canonical definition to state claims against.
-/

/-! ## A036425.P12541936474752799866

`A275610(C(n+1, 11))`
-/

namespace A036425.P12541936474752799866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275610 (Nat.choose (n + 1) 11)

end

end A036425.P12541936474752799866

/-! ## A036425.P1720406848632103840

`A126085(C(a(n-1), 18)+n)` with `a(0)=0`
-/

namespace A036425.P1720406848632103840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126085 (Nat.choose (a (n - 1)).toNat 18 + n)

end

end A036425.P1720406848632103840

/-! ## A036425.P10780997324848302309

`A089865(A036599(n))`
-/

namespace A036425.P10780997324848302309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089865 (A036599 n).toNat

end

end A036425.P10780997324848302309

/-! ## A036425.P15398188587273732640

`A287415(A036426(n+1))`
-/

namespace A036425.P15398188587273732640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287415 (A036426 (n + 1)).toNat

end

end A036425.P15398188587273732640

/-! ## A036425.P2454747627468570920

`A329200(A036600(n+1))`
-/

namespace A036425.P2454747627468570920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A036600 (n + 1)).toNat

end

end A036425.P2454747627468570920

/-!
# A036426: Number of ternary rooted trees with n nodes and height exactly 11.

The programs for A036426, there is no canonical definition to state claims against.
-/

/-! ## A036426.P14048758621311705196

`val(A185035(n)!, 2)`
-/

namespace A036426.P14048758621311705196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A185035 n).toNat) 2

end

end A036426.P14048758621311705196

/-! ## A036426.P15591704657591800522

`A298482(C(floor(n-atan(n)), 9))`
-/

namespace A036426.P15591704657591800522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298482 (Nat.choose ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat 9)

end

end A036426.P15591704657591800522

/-! ## A036426.P12401396463945592709

`A133755(A089258(n)!)`
-/

namespace A036426.P12401396463945592709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (Nat.factorial (A089258 n).toNat)

end

end A036426.P12401396463945592709

/-! ## A036426.P14433145984105765364

`Δ[A227370(A036427(n))]`
-/

namespace A036426.P14433145984105765364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227370 (A036427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036426.P14433145984105765364

/-! ## A036426.P16078622319863940704

`A036867(A147087(n+1))`
-/

namespace A036426.P16078622319863940704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036867 (A147087 (n + 1)).toNat

end

end A036426.P16078622319863940704

/-!
# A036427: Number of ternary rooted trees with n nodes and height exactly 12.

The programs for A036427, there is no canonical definition to state claims against.
-/

/-! ## A036427.P15087243220542999326

`A352493(A151359(n))`
-/

namespace A036427.P15087243220542999326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A151359 n).toNat

end

end A036427.P15087243220542999326

/-! ## A036427.P14062198742777795612

`A397406(A229891(n))`
-/

namespace A036427.P14062198742777795612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397406 (A229891 n).toNat

end

end A036427.P14062198742777795612

/-! ## A036427.P1156385750799570120

`A090168(C(A306403(n), 12))`
-/

namespace A036427.P1156385750799570120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090168 (Nat.choose (A306403 n).toNat 12)

end

end A036427.P1156385750799570120

/-! ## A036427.P3654890189468133740

`∑{d}[A036601(n), A265541(#)]`
-/

namespace A036427.P3654890189468133740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A265541 d

end

end A036427.P3654890189468133740

/-! ## A036427.P599362267657107986

`A352493(∑{d}[A104144(n), #])`
-/

namespace A036427.P599362267657107986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A036427.P599362267657107986

/-!
# A036428: Square octagonal numbers.

The programs for A036428, the canonical program `A036428.P9645460647208230235` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036428 has offset 1).

The definition of A036428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036428.P6296270458307761462

`floor((2+sqrt(3))^(4*(n+1)-2)/12)`
-/

namespace A036428.P6296270458307761462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + Real.sqrt (3 : ℝ)) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ) / 12⌋

end

end A036428.P6296270458307761462

namespace A036428

/-- `floor((2+sqrt(3))^(4*(n+1)-2)/12)` -/
def P6296270458307761462.Spec : Prop :=
  ∀ n, P6296270458307761462.a n = A036428 (n + 1)

end A036428

/-! ## A036428.P3832895022717776528

`1/12*(tan(5*π/12)^(4*(n+1)-2)+tan(π/12)^(4*(n+1)-2)-2)`
-/

namespace A036428.P3832895022717776528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 12 : ℝ) * (Real.tan (5 * Real.pi / 12) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ) + Real.tan (Real.pi / 12) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ) - 2)

end

end A036428.P3832895022717776528

namespace A036428

/-- `1/12*(tan(5*π/12)^(4*(n+1)-2)+tan(π/12)^(4*(n+1)-2)-2)` -/
def P3832895022717776528.Spec : Prop :=
  ∀ n, P3832895022717776528.a n = (A036428 (n + 1) : ℝ)

end A036428

/-! ## A036428.P9645460647208230235

`A028230(n+1)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036428

/-- `A028230(n+1)²` -/
def P9645460647208230235.Spec : Prop :=
  ∀ n, P9645460647208230235.a n = A036428 (n + 1)

theorem P9645460647208230235.correct : P9645460647208230235.Spec := by
  intro n
  simp only [A036428, Nat.add_sub_cancel]

end A036428

/-! ## A036428.P5591800254118628197

`A072335(4*n)`
-/

namespace A036428.P5591800254118628197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 (4 * n)

end

end A036428.P5591800254118628197

namespace A036428

/-- `A072335(4*n)` -/
def P5591800254118628197.Spec : Prop :=
  ∀ n, P5591800254118628197.a n = A036428 (n + 1)

end A036428

/-! ## A036428.P7586273092872535526

`A098301(Δ[n²])`
-/

namespace A036428.P7586273092872535526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098301 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036428.P7586273092872535526

namespace A036428

/-- `A098301(Δ[n²])` -/
def P7586273092872535526.Spec : Prop :=
  ∀ n, P7586273092872535526.a n = A036428 (n + 1)

end A036428

/-!
# A036430: Number of iterations needed to reach 1 under the map n -> Omega(n).

The programs for A036430, the canonical program `A036430.P4331487995244238693` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036430 has offset 1).

The definition of A036430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036430.P4331487995244238693

`a(A001222(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A036430

/-- `a(A001222(n+1)-1)+1` -/
def P4331487995244238693.Spec : Prop :=
  ∀ n, (P4331487995244238693.a n : ℤ) = A036430 (n + 1)

theorem P4331487995244238693.correct : P4331487995244238693.Spec := by
  intro n
  simp only [A036430, Nat.add_sub_cancel]

end A036430

/-! ## A036430.P13083793619958095588

`a(∑{e}[n+1, #]-1)+1` with `a(0)=0`
-/

namespace A036430.P13083793619958095588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p - 1) + 1

end

end A036430.P13083793619958095588

namespace A036430

/-- `a(∑{e}[n+1, #]-1)+1` -/
def P13083793619958095588.Spec : Prop :=
  ∀ n, (P13083793619958095588.a n : ℤ) = A036430 (n + 1)

end A036430

/-! ## A036430.P17641770802600783500

`A073855(n+1)-1`
-/

namespace A036430.P17641770802600783500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (n + 1) - 1

end

end A036430.P17641770802600783500

namespace A036430

/-- `A073855(n+1)-1` -/
def P17641770802600783500.Spec : Prop :=
  ∀ n, P17641770802600783500.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P14001606858744422991

`A073855(∑{e}[n+1, #])`
-/

namespace A036430.P14001606858744422991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A036430.P14001606858744422991

namespace A036430

/-- `A073855(∑{e}[n+1, #])` -/
def P14001606858744422991.Spec : Prop :=
  ∀ n, P14001606858744422991.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P5210483871246587677

`a(Δ[A022559(n)]-1)+1` with `a(0)=0`
-/

namespace A036430.P5210483871246587677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1

end

end A036430.P5210483871246587677

namespace A036430

/-- `a(Δ[A022559(n)]-1)+1` -/
def P5210483871246587677.Spec : Prop :=
  ∀ n, (P5210483871246587677.a n : ℤ) = A036430 (n + 1)

end A036430

/-! ## A036430.P4677272479924018449

`a(A073093(n+1)-2)+1` with `a(0)=0`
-/

namespace A036430.P4677272479924018449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A073093 (n + 1) - 2).toNat + 1

end

end A036430.P4677272479924018449

namespace A036430

/-- `a(A073093(n+1)-2)+1` -/
def P4677272479924018449.Spec : Prop :=
  ∀ n, (P4677272479924018449.a n : ℤ) = A036430 (n + 1)

theorem P4677272479924018449.correct : P4677272479924018449.Spec := by
  intro n
  simp only [A036430, Nat.add_sub_cancel, A036430.P4677272479924018449.a, A036430.P4331487995244238693.a, A001222, A001222.P11318177267732088261.a, A073093, A073093.P258081957281391684.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036430

/-! ## A036430.P17168536934655898895

`a(val(A165827(n+1), 2)-1)+1` with `a(0)=0`
-/

namespace A036430.P17168536934655898895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 - 1) + 1

end

end A036430.P17168536934655898895

namespace A036430

/-- `a(val(A165827(n+1), 2)-1)+1` -/
def P17168536934655898895.Spec : Prop :=
  ∀ n, (P17168536934655898895.a n : ℤ) = A036430 (n + 1)

end A036430

/-! ## A036430.P17439699506534628688

`A073855(A001222(n+1))`
-/

namespace A036430.P17439699506534628688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (A001222 (n + 1)).toNat

end

end A036430.P17439699506534628688

namespace A036430

/-- `A073855(A001222(n+1))` -/
def P17439699506534628688.Spec : Prop :=
  ∀ n, P17439699506534628688.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P14635281061633136624

`a(A001222((n+1)/A006530(n+1)))+1` with `a(0)=0`
-/

namespace A036430.P14635281061633136624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat).toNat + 1

end

end A036430.P14635281061633136624

namespace A036430

/-- `a(A001222((n+1)/A006530(n+1)))+1` -/
def P14635281061633136624.Spec : Prop :=
  ∀ n, (P14635281061633136624.a n : ℤ) = A036430 (n + 1)

end A036430

/-! ## A036430.P3029037202058202463

`Δ[∑[A073855(n)]-n]`
-/

namespace A036430.P3029037202058202463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036430.P3029037202058202463

namespace A036430

/-- `Δ[∑[A073855(n)]-n]` -/
def P3029037202058202463.Spec : Prop :=
  ∀ n, P3029037202058202463.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P7718305522132092519

`A106490(A165824(n+1))`
-/

namespace A036430.P7718305522132092519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106490 (A165824 (n + 1)).toNat

end

end A036430.P7718305522132092519

namespace A036430

/-- `A106490(A165824(n+1))` -/
def P7718305522132092519.Spec : Prop :=
  ∀ n, P7718305522132092519.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P10300284175391506533

`A001222(gcd(A001222((n+1)²), A175943(n+1)))`
-/

namespace A036430.P10300284175391506533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A001222 ((n + 1) ^ 2)) (A175943 (n + 1)))

end

end A036430.P10300284175391506533

namespace A036430

/-- `A001222(gcd(A001222((n+1)²), A175943(n+1)))` -/
def P10300284175391506533.Spec : Prop :=
  ∀ n, P10300284175391506533.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P1802680950025947254

`A039736(A165825(n+1))`
-/

namespace A036430.P1802680950025947254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039736 (A165825 (n + 1)).toNat

end

end A036430.P1802680950025947254

namespace A036430

/-- `A039736(A165825(n+1))` -/
def P1802680950025947254.Spec : Prop :=
  ∀ n, P1802680950025947254.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P15816479822634335360

`A167746(A347535(n+1))`
-/

namespace A036430.P15816479822634335360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (A347535 (n + 1)).toNat

end

end A036430.P15816479822634335360

namespace A036430

/-- `A167746(A347535(n+1))` -/
def P15816479822634335360.Spec : Prop :=
  ∀ n, P15816479822634335360.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P15812234800542235746

`A001222(A086436((n+1)²))`
-/

namespace A036430.P15812234800542235746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A086436 ((n + 1) ^ 2)).toNat

end

end A036430.P15812234800542235746

namespace A036430

/-- `A001222(A086436((n+1)²))` -/
def P15812234800542235746.Spec : Prop :=
  ∀ n, P15812234800542235746.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P14559952509534824907

`A001222(A249901((n+1)²))`
-/

namespace A036430.P14559952509534824907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249901 ((n + 1) ^ 2)).toNat

end

end A036430.P14559952509534824907

namespace A036430

/-- `A001222(A249901((n+1)²))` -/
def P14559952509534824907.Spec : Prop :=
  ∀ n, P14559952509534824907.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P5616194182345790532

`A000120(A252736((n+1)²))`
-/

namespace A036430.P5616194182345790532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A252736 ((n + 1) ^ 2)).toNat

end

end A036430.P5616194182345790532

namespace A036430

/-- `A000120(A252736((n+1)²))` -/
def P5616194182345790532.Spec : Prop :=
  ∀ n, P5616194182345790532.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P5636405219598283210

`A000120(A001222(A032742((n+1)²)))`
-/

namespace A036430.P5636405219598283210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001222 (A032742 ((n + 1) ^ 2)).toNat).toNat

end

end A036430.P5636405219598283210

namespace A036430

/-- `A000120(A001222(A032742((n+1)²)))` -/
def P5636405219598283210.Spec : Prop :=
  ∀ n, P5636405219598283210.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P5163578745179625932

`A000120(A001222(A052126((n+1)²)))`
-/

namespace A036430.P5163578745179625932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001222 (A052126 ((n + 1) ^ 2)).toNat).toNat

end

end A036430.P5163578745179625932

namespace A036430

/-- `A000120(A001222(A052126((n+1)²)))` -/
def P5163578745179625932.Spec : Prop :=
  ∀ n, P5163578745179625932.a n = A036430 (n + 1)

end A036430

/-! ## A036430.P5754773085036067044

`A000120(A001222(A253553((n+1)²)))`
-/

namespace A036430.P5754773085036067044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001222 (A253553 ((n + 1) ^ 2)).toNat).toNat

end

end A036430.P5754773085036067044

namespace A036430

/-- `A000120(A001222(A253553((n+1)²)))` -/
def P5754773085036067044.Spec : Prop :=
  ∀ n, P5754773085036067044.a n = A036430 (n + 1)

end A036430

/-!
# A036431: a(n) = number of positive integers b which, when added to the number of their divisors, tau(b), gives n.

The programs for A036431, there is no canonical definition to state claims against.
-/

/-! ## A036431.P14144116802167358389

`A060145(A286000(n+1))-A185245(A165652(n))`
-/

namespace A036431.P14144116802167358389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A286000 (n + 1)).toNat - A185245 (A165652 n).toNat

end

end A036431.P14144116802167358389

/-! ## A036431.P8476895319055062900

`A060145(A286000(n+1))+A000038(A001595(n))`
-/

namespace A036431.P8476895319055062900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A286000 (n + 1)).toNat + A000038 (A001595 n).toNat

end

end A036431.P8476895319055062900

/-! ## A036431.P205298659940925407

`A001314(A286000(n+1)%A054905(n+1))`
-/

namespace A036431.P205298659940925407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001314 (Int.tmod (A286000 (n + 1)) (A054905 (n + 1))).toNat

end

end A036431.P205298659940925407

/-! ## A036431.P10755959936476945334

`A175862(A016777(n+3)-A049310(n))`
-/

namespace A036431.P10755959936476945334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175862 (A016777 (n + 3) - A049310 n).toNat

end

end A036431.P10755959936476945334

/-! ## A036431.P9205193592893404511

`A355741(A253561(n+2)²)+A025427(n)`
-/

namespace A036431.P9205193592893404511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A253561 (n + 2) ^ 2).toNat + A025427 n

end

end A036431.P9205193592893404511

/-!
# A036432: Sets a record for the number of positive integers which, when added to the number of their divisors, gives n.

The programs for A036432, there is no canonical definition to state claims against.
-/

/-! ## A036432.P13392745926297685855

`∏{p}[∑[A276514(a(n-1))], #]` with `a(0)=1, a(1)=1`
-/

namespace A036432.P13392745926297685855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A276514 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A036432.P13392745926297685855

/-!
# A036434: Integers which cannot be written as k+tau(k) for some k.

The programs for A036434, the canonical program `A036434.P10301240313179279910` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036434 has offset 1).

The definition of A036434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036434.P10301240313179279910

`comp[A000005(n+1)+n]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036434

/-- `comp[A000005(n+1)+n]+1` -/
def P10301240313179279910.Spec : Prop :=
  ∀ n, (P10301240313179279910.a n : ℤ) = A036434 (n + 1)

theorem P10301240313179279910.correct : P10301240313179279910.Spec := by
  intro n
  simp only [A036434, Nat.add_sub_cancel]

end A036434

/-! ## A036434.P16037778419562476359

`eq[0, A036431(n+1)]+1`
-/

namespace A036434.P16037778419562476359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036434.P16037778419562476359

namespace A036434

/-- `eq[0, A036431(n+1)]+1` -/
def P16037778419562476359.Spec : Prop :=
  ∀ n, (P16037778419562476359.a n : ℤ) = A036434 (n + 1)

end A036434

/-! ## A036434.P7803674221020416019

`record[n+1-A007294(n)*A036431(n+1)]`
-/

namespace A036434.P7803674221020416019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007294 n * A036431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036434.P7803674221020416019

namespace A036434

/-- `record[n+1-A007294(n)*A036431(n+1)]` -/
def P7803674221020416019.Spec : Prop :=
  ∀ n, P7803674221020416019.a n = A036434 (n + 1)

end A036434

/-! ## A036434.P3017657539222759462

`record[n+1-A026491(n)*A036431(n+1)]`
-/

namespace A036434.P3017657539222759462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A026491 n * A036431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036434.P3017657539222759462

namespace A036434

/-- `record[n+1-A026491(n)*A036431(n+1)]` -/
def P3017657539222759462.Spec : Prop :=
  ∀ n, P3017657539222759462.a n = A036434 (n + 1)

end A036434

/-! ## A036434.P51417067873597822

`eq[A000038(n), A036431(A028310(n))]`
-/

namespace A036434.P51417067873597822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036434.P51417067873597822

namespace A036434

/-- `eq[A000038(n), A036431(A028310(n))]` -/
def P51417067873597822.Spec : Prop :=
  ∀ n, (P51417067873597822.a n : ℤ) = A036434 (n + 1)

end A036434

/-! ## A036434.P4770019394679080174

`lt[n*char[A062249(n+1)], n]`
-/

namespace A036434.P4770019394679080174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A036434.P4770019394679080174

namespace A036434

/-- `lt[n*char[A062249(n+1)], n]` -/
def P4770019394679080174.Spec : Prop :=
  ∀ n, (P4770019394679080174.a n : ℤ) = A036434 (n + 1)

end A036434

/-! ## A036434.P15368597480539341341

`eq[char[∏{e}[n+1, #+1]+1+n], A019590(n+2)]`
-/

namespace A036434.P15368597480539341341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n

end

end A036434.P15368597480539341341

namespace A036434

/-- `eq[char[∏{e}[n+1, #+1]+1+n], A019590(n+2)]` -/
def P15368597480539341341.Spec : Prop :=
  ∀ n, (P15368597480539341341.a n : ℤ) = A036434 (n + 1)

end A036434

/-! ## A036434.P1861461363610306497

`eq[char[A062249(n+1)], A000007(n)]`
-/

namespace A036434.P1861461363610306497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A036434.P1861461363610306497

namespace A036434

/-- `eq[char[A062249(n+1)], A000007(n)]` -/
def P1861461363610306497.Spec : Prop :=
  ∀ n, (P1861461363610306497.a n : ℤ) = A036434 (n + 1)

end A036434

/-! ## A036434.P7654034901466094400

`lt[char[A062249(n+1)], A057427(n)]`
-/

namespace A036434.P7654034901466094400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A036434.P7654034901466094400

namespace A036434

/-- `lt[char[A062249(n+1)], A057427(n)]` -/
def P7654034901466094400.Spec : Prop :=
  ∀ n, (P7654034901466094400.a n : ℤ) = A036434 (n + 1)

end A036434

/-!
# A036435: Digits are nonzero squares.

The programs for A036435, there is no canonical definition to state claims against.
-/

/-! ## A036435.P13972679499126463401

`A046030(A023705(n+1)+1)`
-/

namespace A036435.P13972679499126463401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (A023705 (n + 1) + 1).toNat

end

end A036435.P13972679499126463401

/-! ## A036435.P5807721520270032178

`∩[A046030(n+1), A202268(n+1)]`
-/

namespace A036435.P5807721520270032178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P5807721520270032178

/-! ## A036435.P156120377775536603

`∩[A046030(n+1), A050626(n+1)]`
-/

namespace A036435.P156120377775536603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P156120377775536603

/-! ## A036435.P15107946419371511717

`∩[A046030(n+1), A261189(n+1)]`
-/

namespace A036435.P15107946419371511717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P15107946419371511717

/-! ## A036435.P3452572239068272757

`∩[A039113(n+1), A046030(n+1)]`
-/

namespace A036435.P3452572239068272757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P3452572239068272757

/-! ## A036435.P14991834058786794583

`∩[A039114(n+1), A046030(n+1)]`
-/

namespace A036435.P14991834058786794583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P14991834058786794583

/-! ## A036435.P18176257435711951446

`∩[A039116(n+1), A046030(n+1)]`
-/

namespace A036435.P18176257435711951446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P18176257435711951446

/-! ## A036435.P17133019339817742510

`∩[A039117(n+1), A046030(n+1)]`
-/

namespace A036435.P17133019339817742510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P17133019339817742510

/-! ## A036435.P7776420514755697413

`∩[A039118(n+1), A046030(n+1)]`
-/

namespace A036435.P7776420514755697413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P7776420514755697413

/-! ## A036435.P11167725795481944850

`∩[A039119(n+1), A046030(n+1)]`
-/

namespace A036435.P11167725795481944850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P11167725795481944850

/-! ## A036435.P12557608603260710714

`∩[A046030(n+1), A052382(n+1)]`
-/

namespace A036435.P12557608603260710714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036435.P12557608603260710714

/-! ## A036435.P12232129137451900769

`A048385(A007932(n+1))`
-/

namespace A036435.P12232129137451900769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A007932 (n + 1)).toNat

end

end A036435.P12232129137451900769

/-! ## A036435.P11434311910667164327

`A222253(A028373(n+1))`
-/

namespace A036435.P11434311910667164327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A028373 (n + 1)).toNat

end

end A036435.P11434311910667164327

/-! ## A036435.P10011108773927220432

`A222234(A174813(n+1))`
-/

namespace A036435.P10011108773927220432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A174813 (n + 1)).toNat

end

end A036435.P10011108773927220432

/-! ## A036435.P11249240650980454749

`record[A004719(A046030(n+2))]`
-/

namespace A036435.P11249240650980454749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A046030 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036435.P11249240650980454749

/-! ## A036435.P1543970526438126076

`filter[A046030(n+1), A168046(#)]`
-/

namespace A036435.P1543970526438126076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A036435.P1543970526438126076

/-! ## A036435.P5964753231635039668

`A068522(or(A000007(n), A007932(n+1)))`
-/

namespace A036435.P5964753231635039668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068522 (Int.lor (A000007 n) (A007932 (n + 1))).toNat

end

end A036435.P5964753231635039668

/-!
# A036436: Numbers whose number of divisors is a square.

The programs for A036436, the canonical program `A036436.P3368658604629938610` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036436 has offset 1).

The definition of A036436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036436.P13554416954018190643

`eq[0, A064875(A000005(n+1))]+1`
-/

namespace A036436.P13554416954018190643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036436.P13554416954018190643

namespace A036436

/-- `eq[0, A064875(A000005(n+1))]+1` -/
def P13554416954018190643.Spec : Prop :=
  ∀ n, (P13554416954018190643.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P13645034864795363339

`eq[1, A003285(A000005(n+1)+1)]+1`
-/

namespace A036436.P13645034864795363339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036436.P13645034864795363339

namespace A036436

/-- `eq[1, A003285(A000005(n+1)+1)]+1` -/
def P13645034864795363339.Spec : Prop :=
  ∀ n, (P13645034864795363339.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P3368658604629938610

`record[(n+1)*A010052(A000005(n+2))+1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036436

/-- `record[(n+1)*A010052(A000005(n+2))+1]` -/
def P3368658604629938610.Spec : Prop :=
  ∀ n, P3368658604629938610.a n = A036436 (n + 1)

theorem P3368658604629938610.correct : P3368658604629938610.Spec := by
  intro n
  simp only [A036436, Nat.add_sub_cancel]

end A036436

/-! ## A036436.P14964080625670134385

`eq[2, A167430(A000005(n+1)+1)]+1`
-/

namespace A036436.P14964080625670134385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036436.P14964080625670134385

namespace A036436

/-- `eq[2, A167430(A000005(n+1)+1)]+1` -/
def P14964080625670134385.Spec : Prop :=
  ∀ n, (P14964080625670134385.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P5220836691808869893

`eq[A007913(n+1), A336319(n+1)]+1`
-/

namespace A036436.P5220836691808869893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036436.P5220836691808869893

namespace A036436

/-- `eq[A007913(n+1), A336319(n+1)]+1` -/
def P5220836691808869893.Spec : Prop :=
  ∀ n, (P5220836691808869893.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P11225360249643135505

`eq[1, A326802(A145154(n))]`
-/

namespace A036436.P11225360249643135505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036436.P11225360249643135505

namespace A036436

/-- `eq[1, A326802(A145154(n))]` -/
def P11225360249643135505.Spec : Prop :=
  ∀ n, (P11225360249643135505.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P7084725477712920563

`eq[A000007(n), A082375(A032741(n))]`
-/

namespace A036436.P7084725477712920563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036436.P7084725477712920563

namespace A036436

/-- `eq[A000007(n), A082375(A032741(n))]` -/
def P7084725477712920563.Spec : Prop :=
  ∀ n, (P7084725477712920563.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P9550715624312928384

`eq[A002828(A145154(n)), A057427(n)]`
-/

namespace A036436.P9550715624312928384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036436.P9550715624312928384

namespace A036436

/-- `eq[A002828(A145154(n)), A057427(n)]` -/
def P9550715624312928384.Spec : Prop :=
  ∀ n, (P9550715624312928384.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P11056371006338254881

`eq[A129710(A032741(n)), A158388(n)]`
-/

namespace A036436.P11056371006338254881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129710 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036436.P11056371006338254881

namespace A036436

/-- `eq[A129710(A032741(n)), A158388(n)]` -/
def P11056371006338254881.Spec : Prop :=
  ∀ n, (P11056371006338254881.a n : ℤ) = A036436 (n + 1)

end A036436

/-! ## A036436.P8396564398714231147

`eq[A057427(n), A152195(A032741(n))]`
-/

namespace A036436.P8396564398714231147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152195 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036436.P8396564398714231147

namespace A036436

/-- `eq[A057427(n), A152195(A032741(n))]` -/
def P8396564398714231147.Spec : Prop :=
  ∀ n, (P8396564398714231147.a n : ℤ) = A036436 (n + 1)

end A036436

/-!
# A036438: Integers which can be written as m*tau(m) for some m, where tau = A000005.

The programs for A036438, there is no canonical definition to state claims against.
-/

/-! ## A036438.P3427216399565715306

`record[lcm(n+1, A327166(n+1))]`
-/

namespace A036438.P3427216399565715306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A327166 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036438.P3427216399565715306

/-! ## A036438.P718330720772248761

`eq[1, A000010(a(A327166(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A036438.P718330720772248761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P718330720772248761

/-! ## A036438.P11020360264514011158

`eq[1, A000045(a(A327166(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A036438.P11020360264514011158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P11020360264514011158

/-! ## A036438.P17173019625652785355

`eq[1, A308828(a(A327166(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A036438.P17173019625652785355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A308828 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P17173019625652785355

/-! ## A036438.P10833335412048415990

`eq[1, A007318(a(A327166(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A036438.P10833335412048415990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A007318 (f2 (A327166 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P10833335412048415990

/-! ## A036438.P16472341197652578486

`eq[1, A070504(a(A327166(n)))²]` with `a(0)=13, a(1)=1`
-/

namespace A036438.P16472341197652578486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [13, 1] fun n f2 =>
  A070504 (f2 (A327166 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P16472341197652578486

/-! ## A036438.P10348831156558341220

`eq[1, A014963(a(A327166(n))+5)]` with `a(0)=2, a(1)=1`
-/

namespace A036438.P10348831156558341220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A014963 (f2 (A327166 n).toNat + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P10348831156558341220

/-! ## A036438.P446570883772327211

`eq[1, A000217(a(A327166(n)))%5]` with `a(0)=2, a(1)=1`
-/

namespace A036438.P446570883772327211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  Int.tmod (A000217 (f2 (A327166 n).toNat).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036438.P446570883772327211

/-! ## A036438.P3510886180399364017

`∪[A338382(n+1), A338519(n+1)]`
-/

namespace A036438.P3510886180399364017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036438.P3510886180399364017

/-! ## A036438.P9472400908521005059

`lt[0, char[(n+1)*∏{e}[n+1, #+1]]]`
-/

namespace A036438.P9472400908521005059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036438.P9472400908521005059

/-! ## A036438.P10234941847593596972

`eq[1, char[(n+1)*∏{e}[n+1, #+1]]]`
-/

namespace A036438.P10234941847593596972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036438.P10234941847593596972

/-! ## A036438.P6477603113706700806

`lt[0, char[A038040(n+1)]]`
-/

namespace A036438.P6477603113706700806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036438.P6477603113706700806

/-! ## A036438.P6758010701530304848

`eq[char[A038040(n+1)], A057427(n+1)]`
-/

namespace A036438.P6758010701530304848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A036438.P6758010701530304848

/-! ## A036438.P15323623771865102531

`eq[char[A038040(n+1)], A000034(2*(n+2))]`
-/

namespace A036438.P15323623771865102531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A036438.P15323623771865102531

/-!
# A036439: a(n) = a(n-1) + prime(n-1), with a(1)=2.

The programs for A036439, the canonical program `A036439.P376659802180600074` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036439 has offset 1).

The definition of A036439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n)` (program `A036439.P376659802180600074`, by `A036439.P376659802180600074.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036439.P376659802180600074

`a(n-1)+A000040(n)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036439

/-- `a(n-1)+A000040(n)` -/
def P376659802180600074.Spec : Prop :=
  ∀ n, P376659802180600074.a n = A036439 (n + 1)

theorem P376659802180600074.correct : P376659802180600074.Spec := by
  intro n
  simp only [A036439, Nat.add_sub_cancel]

end A036439

/-! ## A036439.P8898961107269986930

`A007504(n)+2`
-/

namespace A036439.P8898961107269986930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 2

end

end A036439.P8898961107269986930

namespace A036439

/-- `A007504(n)+2` -/
def P8898961107269986930.Spec : Prop :=
  ∀ n, P8898961107269986930.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P12408126025401456397

`∑[A028815(n)]-n`
-/

namespace A036439.P12408126025401456397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A036439.P12408126025401456397

namespace A036439

/-- `∑[A028815(n)]-n` -/
def P12408126025401456397.Spec : Prop :=
  ∀ n, P12408126025401456397.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P9576378233559261802

`A014284(n+1)+1`
-/

namespace A036439.P9576378233559261802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + 1

end

end A036439.P9576378233559261802

namespace A036439

/-- `A014284(n+1)+1` -/
def P9576378233559261802.Spec : Prop :=
  ∀ n, P9576378233559261802.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P3375109685424125655

`A227547(n+1)-1`
-/

namespace A036439.P3375109685424125655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227547 (n + 1) - 1

end

end A036439.P3375109685424125655

namespace A036439

/-- `A227547(n+1)-1` -/
def P3375109685424125655.Spec : Prop :=
  ∀ n, P3375109685424125655.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P17968516568425578693

`A262392(n)-n%2`
-/

namespace A036439.P17968516568425578693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 n - ((n % 2 : ℕ) : ℤ)

end

end A036439.P17968516568425578693

namespace A036439

/-- `A262392(n)-n%2` -/
def P17968516568425578693.Spec : Prop :=
  ∀ n, P17968516568425578693.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P2675505387492046973

`∑[A008578(n+1)]+1`
-/

namespace A036439.P2675505387492046973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036439.P2675505387492046973

namespace A036439

/-- `∑[A008578(n+1)]+1` -/
def P2675505387492046973.Spec : Prop :=
  ∀ n, P2675505387492046973.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P885142677117427302

`∑[A182986(n+1)]+2`
-/

namespace A036439.P885142677117427302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A036439.P885142677117427302

namespace A036439

/-- `∑[A182986(n+1)]+2` -/
def P885142677117427302.Spec : Prop :=
  ∀ n, P885142677117427302.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P3964202195792265961

`∑[A000040(ceil(abs(γ-n)))]`
-/

namespace A036439.P3964202195792265961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036439.P3964202195792265961

namespace A036439

/-- `∑[A000040(ceil(abs(γ-n)))]` -/
def P3964202195792265961.Spec : Prop :=
  ∀ n, P3964202195792265961.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P13404488146022920581

`A110895(n+1)+1-n`
-/

namespace A036439.P13404488146022920581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) + (1 - (n : ℤ))

end

end A036439.P13404488146022920581

namespace A036439

/-- `A110895(n+1)+1-n` -/
def P13404488146022920581.Spec : Prop :=
  ∀ n, P13404488146022920581.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P5515290244742622461

`∑[sqrt(A280076(n+1))]+1`
-/

namespace A036439.P5515290244742622461
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036439.P5515290244742622461

namespace A036439

/-- `∑[sqrt(A280076(n+1))]+1` -/
def P5515290244742622461.Spec : Prop :=
  ∀ n, P5515290244742622461.a n = (A036439 (n + 1) : ℝ)

end A036439

/-! ## A036439.P8373476583208754806

`∑[A001747(n+1)/2]+1`
-/

namespace A036439.P8373476583208754806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036439.P8373476583208754806

namespace A036439

/-- `∑[A001747(n+1)/2]+1` -/
def P8373476583208754806.Spec : Prop :=
  ∀ n, P8373476583208754806.a n = (A036439 (n + 1) : ℚ)

end A036439

/-! ## A036439.P7293897262243271327

`a(n-1)+A006093(n)+1` with `a(0)=2`
-/

namespace A036439.P7293897262243271327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A006093 n + 1)

end

end A036439.P7293897262243271327

namespace A036439

/-- `a(n-1)+A006093(n)+1` -/
def P7293897262243271327.Spec : Prop :=
  ∀ n, P7293897262243271327.a n = A036439 (n + 1)

theorem P7293897262243271327.correct : P7293897262243271327.Spec := by
  intro n
  simp only [A036439, Nat.add_sub_cancel, A036439.P7293897262243271327.a, A036439.P376659802180600074.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036439

/-! ## A036439.P9050805621987863253

`∑[A000040(abs(1-n)+1)]-1`
-/

namespace A036439.P9050805621987863253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A036439.P9050805621987863253

namespace A036439

/-- `∑[A000040(abs(1-n)+1)]-1` -/
def P9050805621987863253.Spec : Prop :=
  ∀ n, P9050805621987863253.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P6005738133879832102

`A262392(n)-A000035(n)`
-/

namespace A036439.P6005738133879832102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 n - A000035 n

end

end A036439.P6005738133879832102

namespace A036439

/-- `A262392(n)-A000035(n)` -/
def P6005738133879832102.Spec : Prop :=
  ∀ n, P6005738133879832102.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P5273675477270864568

`A175965(n+1)+A008578(n+1)`
-/

namespace A036439.P5273675477270864568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1) + A008578 (n + 1)

end

end A036439.P5273675477270864568

namespace A036439

/-- `A175965(n+1)+A008578(n+1)` -/
def P5273675477270864568.Spec : Prop :=
  ∀ n, P5273675477270864568.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P6574765426633541532

`A072205(n+1)-A079725(n+1)`
-/

namespace A036439.P6574765426633541532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) - A079725 (n + 1)

end

end A036439.P6574765426633541532

namespace A036439

/-- `A072205(n+1)-A079725(n+1)` -/
def P6574765426633541532.Spec : Prop :=
  ∀ n, P6574765426633541532.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P17042404538075443032

`A237589(n+1)-A086801(n+1)`
-/

namespace A036439.P17042404538075443032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - A086801 (n + 1)

end

end A036439.P17042404538075443032

namespace A036439

/-- `A237589(n+1)-A086801(n+1)` -/
def P17042404538075443032.Spec : Prop :=
  ∀ n, P17042404538075443032.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P12694844177923669281

`∑[A000040(n+1)]+2-A000040(n+1)`
-/

namespace A036439.P12694844177923669281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A000040 (n + 1)

end

end A036439.P12694844177923669281

namespace A036439

/-- `∑[A000040(n+1)]+2-A000040(n+1)` -/
def P12694844177923669281.Spec : Prop :=
  ∀ n, P12694844177923669281.a n = A036439 (n + 1)

end A036439

/-! ## A036439.P244425247268345765

`A073738(n+1)+A073738(n)-A006093(n+1)`
-/

namespace A036439.P244425247268345765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 (n + 1) + (A073738 n - A006093 (n + 1))

end

end A036439.P244425247268345765

namespace A036439

/-- `A073738(n+1)+A073738(n)-A006093(n+1)` -/
def P244425247268345765.Spec : Prop :=
  ∀ n, P244425247268345765.a n = A036439 (n + 1)

end A036439

/-!
# A036440: Number of ways of arranging row n of the prime pyramid.

The programs for A036440, there is no canonical definition to state claims against.
-/

/-! ## A036440.P12708206994488504824

`A025452(A008612(n)+A005817(n))`
-/

namespace A036440.P12708206994488504824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A008612 n + A005817 n).toNat

end

end A036440.P12708206994488504824

/-! ## A036440.P15568214012053545181

`A347649(A000676(n))-A308841(n)`
-/

namespace A036440.P15568214012053545181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347649 (A000676 n).toNat - A308841 n

end

end A036440.P15568214012053545181

/-!
# A036441: a(n+1) = next number having largest prime dividing a(n) as a factor, with a(1) = 2.

The programs for A036441, the canonical program `A036441.P2727415725795188076` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036441 has offset 1).

The definition of A036441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076271, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036441.P2727415725795188076

`A076271(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036441

/-- `A076271(n+2)` -/
def P2727415725795188076.Spec : Prop :=
  ∀ n, P2727415725795188076.a n = A036441 (n + 1)

theorem P2727415725795188076.correct : P2727415725795188076.Spec := by
  intro n
  simp only [A036441, Nat.add_sub_cancel]

end A036441

/-! ## A036441.P16046434629379367952

`A180107(n+3)`
-/

namespace A036441.P16046434629379367952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 (n + 3)

end

end A036441.P16046434629379367952

namespace A036441

/-- `A180107(n+3)` -/
def P16046434629379367952.Spec : Prop :=
  ∀ n, P16046434629379367952.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P4944924715633812426

`∑[A076973(n+1)]`
-/

namespace A036441.P4944924715633812426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036441.P4944924715633812426

namespace A036441

/-- `∑[A076973(n+1)]` -/
def P4944924715633812426.Spec : Prop :=
  ∀ n, P4944924715633812426.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P10779409245009573756

`∑[A076272(n+1)]+1`
-/

namespace A036441.P10779409245009573756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036441.P10779409245009573756

namespace A036441

/-- `∑[A076272(n+1)]+1` -/
def P10779409245009573756.Spec : Prop :=
  ∀ n, P10779409245009573756.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P1926326819026023460

`∑[A007918(A076272(n+1))]`
-/

namespace A036441.P1926326819026023460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A076272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036441.P1926326819026023460

namespace A036441

/-- `∑[A007918(A076272(n+1))]` -/
def P1926326819026023460.Spec : Prop :=
  ∀ n, P1926326819026023460.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P942863859992366697

`∪[A053024(n+1), A013637(n+3)]`
-/

namespace A036441.P942863859992366697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036441.P942863859992366697

namespace A036441

/-- `∪[A053024(n+1), A013637(n+3)]` -/
def P942863859992366697.Spec : Prop :=
  ∀ n, (P942863859992366697.a n : ℤ) = A036441 (n + 1)

end A036441

/-! ## A036441.P2712110110853051843

`A076272(n+1)*A076918(n+2)`
-/

namespace A036441.P2712110110853051843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1) * A076918 (n + 2)

end

end A036441.P2712110110853051843

namespace A036441

/-- `A076272(n+1)*A076918(n+2)` -/
def P2712110110853051843.Spec : Prop :=
  ∀ n, P2712110110853051843.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P2704849674426434108

`record[A180107(abs(3-n))]`
-/

namespace A036441.P2704849674426434108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180107 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036441.P2704849674426434108

namespace A036441

/-- `record[A180107(abs(3-n))]` -/
def P2704849674426434108.Spec : Prop :=
  ∀ n, P2704849674426434108.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P17523317286260386316

`∑[A076272(A233583(n+2))]`
-/

namespace A036441.P17523317286260386316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036441.P17523317286260386316

namespace A036441

/-- `∑[A076272(A233583(n+2))]` -/
def P17523317286260386316.Spec : Prop :=
  ∀ n, P17523317286260386316.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P15874741537051967619

`record[A291577(n+1)]`
-/

namespace A036441.P15874741537051967619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036441.P15874741537051967619

namespace A036441

/-- `record[A291577(n+1)]` -/
def P15874741537051967619.Spec : Prop :=
  ∀ n, P15874741537051967619.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P15694824572154876938

`a(n-1)+A006530(a(n-1))` with `a(0)=2`
-/

namespace A036441.P15694824572154876938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A006530 (a (n - 1)).toNat

end

end A036441.P15694824572154876938

namespace A036441

/-- `a(n-1)+A006530(a(n-1))` -/
def P15694824572154876938.Spec : Prop :=
  ∀ n, P15694824572154876938.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P14200906067415702052

`record[A362015(n+2)]`
-/

namespace A036441.P14200906067415702052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036441.P14200906067415702052

namespace A036441

/-- `record[A362015(n+2)]` -/
def P14200906067415702052.Spec : Prop :=
  ∀ n, P14200906067415702052.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P14322345777231847192

`∑[A006530(record[2*A291577(n)])]`
-/

namespace A036441.P14322345777231847192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036441.P14322345777231847192

namespace A036441

/-- `∑[A006530(record[2*A291577(n)])]` -/
def P14322345777231847192.Spec : Prop :=
  ∀ n, P14322345777231847192.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P2344068617772547638

`∩[A143145(n+1), A356438(n+2)]`
-/

namespace A036441.P2344068617772547638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356438 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036441.P2344068617772547638

namespace A036441

/-- `∩[A143145(n+1), A356438(n+2)]` -/
def P2344068617772547638.Spec : Prop :=
  ∀ n, (P2344068617772547638.a n : ℤ) = A036441 (n + 1)

end A036441

/-! ## A036441.P3695648342851328045

`A070229(a(n-1))` with `a(0)=2`
-/

namespace A036441.P3695648342851328045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070229 (a (n - 1)).toNat

end

end A036441.P3695648342851328045

namespace A036441

/-- `A070229(a(n-1))` -/
def P3695648342851328045.Spec : Prop :=
  ∀ n, P3695648342851328045.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P15446142140530202735

`A171462(a(n-1))+2+n` with `a(0)=2`
-/

namespace A036441.P15446142140530202735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A171462 (a (n - 1)).toNat + 2 + (n : ℤ)

end

end A036441.P15446142140530202735

namespace A036441

/-- `A171462(a(n-1))+2+n` -/
def P15446142140530202735.Spec : Prop :=
  ∀ n, P15446142140530202735.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P8573823823869431755

`A111089(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A036441.P8573823823869431755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A111089 (a (n - 1)).toNat + a (n - 1)

end

end A036441.P8573823823869431755

namespace A036441

/-- `A111089(a(n-1))+a(n-1)` -/
def P8573823823869431755.Spec : Prop :=
  ∀ n, P8573823823869431755.a n = A036441 (n + 1)

end A036441

/-! ## A036441.P10768881592271436063

`A284695(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A036441.P10768881592271436063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A284695 (a (n - 1)).toNat + a (n - 1)

end

end A036441.P10768881592271436063

namespace A036441

/-- `A284695(a(n-1))+a(n-1)` -/
def P10768881592271436063.Spec : Prop :=
  ∀ n, P10768881592271436063.a n = A036441 (n + 1)

end A036441

/-!
# A036442: a(n) = 2^((n-1)*(n+2)/2).

The programs for A036442, the canonical program `A036442.P10960612357826411268` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036442 has offset 1).

The definition of A036442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036442.P12805859664720027825

`2^(n*(n+3)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036442.P12805859664720027825
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n * (n + 3) : ℚ) / 2 : ℝ)

end

end A036442.P12805859664720027825

namespace A036442

/-- `2^(n*(n+3)/2)` -/
def P12805859664720027825.Spec : Prop :=
  ∀ n, P12805859664720027825.a n = (A036442 (n + 1) : ℝ)

end A036442

/-! ## A036442.P10960612357826411268

`a(n-1)*2^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036442

/-- `a(n-1)*2^(n+1)` -/
def P10960612357826411268.Spec : Prop :=
  ∀ n, (P10960612357826411268.a n : ℤ) = A036442 (n + 1)

theorem P10960612357826411268.correct : P10960612357826411268.Spec := by
  intro n
  simp only [A036442, Nat.add_sub_cancel]

end A036442

/-! ## A036442.P17051472878264356492

`record[2^(C(n, 2)-n)]`
-/

namespace A036442.P17051472878264356492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose n 2 : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036442.P17051472878264356492

namespace A036442

/-- `record[2^(C(n, 2)-n)]` -/
def P17051472878264356492.Spec : Prop :=
  ∀ n, P17051472878264356492.a n = (A036442 (n + 1) : ℚ)

end A036442

/-! ## A036442.P2801852344875234765

`2^C(n+2, 2)/2`
-/

namespace A036442.P2801852344875234765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 2) 2 : ℚ) / 2

end

end A036442.P2801852344875234765

namespace A036442

/-- `2^C(n+2, 2)/2` -/
def P2801852344875234765.Spec : Prop :=
  ∀ n, P2801852344875234765.a n = (A036442 (n + 1) : ℚ)

end A036442

/-!
# A036445: Maximum size of smallest square when a square of side n is tiled with integer-sided squares.

The programs for A036445, there is no canonical definition to state claims against.
-/

/-! ## A036445.P15686696250931925577

`A289187(n+2)-A101637(A304706(2*n+3))`
-/

namespace A036445.P15686696250931925577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289187 (n + 2) - A101637 (A304706 (2 * n + 3)).toNat

end

end A036445.P15686696250931925577

/-! ## A036445.P12882691752654207673

`and(A060152(n+1), A289187(n+2))`
-/

namespace A036445.P12882691752654207673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060152 (n + 1)) (A289187 (n + 2))

end

end A036445.P12882691752654207673

/-! ## A036445.P5706983633178631408

`A289187(n+2)+A010815(A256816(3*n+2))`
-/

namespace A036445.P5706983633178631408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289187 (n + 2) + A010815 (A256816 (3 * n + 2)).toNat

end

end A036445.P5706983633178631408

/-! ## A036445.P14699321575537416188

`A289187(n+2)+A014111(A247068(3*n+4))`
-/

namespace A036445.P14699321575537416188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289187 (n + 2) + A014111 (A247068 (3 * n + 4)).toNat

end

end A036445.P14699321575537416188

/-! ## A036445.P10748566114540590398

`A289187(n+2)-A295883(A289177(n))`
-/

namespace A036445.P10748566114540590398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289187 (n + 2) - A295883 (A289177 n).toNat

end

end A036445.P10748566114540590398

/-!
# A036446: Not of form sigma(k) - phi(k).

The programs for A036446, there is no canonical definition to state claims against.
-/

/-! ## A036446.P10417444847684435408

`eq[0, A071390(n+1)]+1`
-/

namespace A036446.P10417444847684435408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036446.P10417444847684435408

/-! ## A036446.P14202206441862055687

`lt[A071390(A028310(n))², n]`
-/

namespace A036446.P14202206441862055687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071390 (A028310 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A036446.P14202206441862055687

/-! ## A036446.P16014926973447311455

`record[A000027(n+1)-A071390(n+1)]`
-/

namespace A036446.P16014926973447311455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A071390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P16014926973447311455

/-! ## A036446.P2979975169652894226

`record[A005408(n)-(A071390(n+1)+n)]`
-/

namespace A036446.P2979975169652894226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A071390 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P2979975169652894226

/-! ## A036446.P15974322493355777501

`record[A006949(n)-A071390(A006949(n))]`
-/

namespace A036446.P15974322493355777501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n - A071390 (A006949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P15974322493355777501

/-! ## A036446.P4653601243075656410

`record[A005378(n)-A071390(A005378(n))]`
-/

namespace A036446.P4653601243075656410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n - A071390 (A005378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P4653601243075656410

/-! ## A036446.P11999886245285638307

`record[A052938(n)-A071390(A052938(n))]`
-/

namespace A036446.P11999886245285638307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n - A071390 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P11999886245285638307

/-! ## A036446.P2151432551341851829

`record[A003160(n+1)-A071390(A003160(n+1))]`
-/

namespace A036446.P2151432551341851829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (n + 1) - A071390 (A003160 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P2151432551341851829

/-! ## A036446.P8122308643665838080

`record[A008619(2*n)-A071390(n+1)]`
-/

namespace A036446.P8122308643665838080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A071390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P8122308643665838080

/-! ## A036446.P11032834329384220962

`record[A008611(n)-A071390(A008620(n))]`
-/

namespace A036446.P11032834329384220962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n - A071390 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P11032834329384220962

/-! ## A036446.P688734450826191002

`record[A008621(n)-A071390(A008621(n))]`
-/

namespace A036446.P688734450826191002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A071390 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P688734450826191002

/-! ## A036446.P15826595918631613243

`record[(n+1)/A005117(A071390(n+1)+1)]`
-/

namespace A036446.P15826595918631613243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A005117 (A071390 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036446.P15826595918631613243

/-!
# A036447: Double and reverse digits.

The programs for A036447, there is no canonical definition to state claims against.
-/

/-! ## A036447.P18295730591768836109

`A095197(n+2)/2`
-/

namespace A036447.P18295730591768836109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095197 (n + 2) : ℚ) / 2

end

end A036447.P18295730591768836109

/-! ## A036447.P3009675947872397092

`a(n-1)*ratio[A095197(n+1)]` with `a(0)=1`
-/

namespace A036447.P3009675947872397092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095197 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A036447.P3009675947872397092

/-! ## A036447.P10585916749928155145

`∏[ratio[A095197(n+1)]-A000007(n)]`
-/

namespace A036447.P10585916749928155145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095197 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) - (A000007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036447.P10585916749928155145

/-! ## A036447.P2941004468666967982

`A004086(2*a(n-1))` with `a(0)=1`
-/

namespace A036447.P2941004468666967982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (2 * a (n - 1)).toNat

end

end A036447.P2941004468666967982

/-! ## A036447.P13615553415842494018

`A004086(a(n-1)/sqrt(1/4))` with `a(0)=1`
-/

namespace A036447.P13615553415842494018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ))).toNat

end

end A036447.P13615553415842494018

/-!
# A036449: Values square, differences triangular.

The programs for A036449, there is no canonical definition to state claims against.
-/

/-! ## A036449.P5038452697500278740

`A189475(n)+a(n-1)` with `a(0)=0`
-/

namespace A036449.P5038452697500278740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A189475 n + a (n - 1)

end

end A036449.P5038452697500278740

/-! ## A036449.P3007238867032437332

`∑[A189475(floor(acot(n)+n))]-1`
-/

namespace A036449.P3007238867032437332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189475 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A036449.P3007238867032437332

/-! ## A036449.P4475615351169027435

`∑[A189475(A028310(n))]-1`
-/

namespace A036449.P4475615351169027435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189475 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A036449.P4475615351169027435

/-! ## A036449.P10798377013924028298

`∑[A189475(A000007(n)+n)]-1`
-/

namespace A036449.P10798377013924028298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189475 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A036449.P10798377013924028298

/-! ## A036449.P4797715641662774660

`∑[A189475(n+1)]-A189475(n+1)`
-/

namespace A036449.P4797715641662774660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189475 (n + 1)

end

end A036449.P4797715641662774660

/-! ## A036449.P210787319668553436

`A358416(n+1)²`
-/

namespace A036449.P210787319668553436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358416 (n + 1) ^ 2

end

end A036449.P210787319668553436

/-!
# A036450: a(n) = d(d(d(n))), the 3rd iterate of the number-of-divisors function with an initial value of n.

The programs for A036450, the canonical program `A036450.P17654615826854850628` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036450 has offset 1).

The definition of A036450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036450.P17654615826854850628

`A000005(A000005(A000005(n+1)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036450

/-- `A000005(A000005(A000005(n+1)))` -/
def P17654615826854850628.Spec : Prop :=
  ∀ n, P17654615826854850628.a n = A036450 (n + 1)

theorem P17654615826854850628.correct : P17654615826854850628.Spec := by
  intro n
  simp only [A036450, Nat.add_sub_cancel]

end A036450

/-! ## A036450.P14000973050640997372

`∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1]`
-/

namespace A036450.P14000973050640997372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A036450.P14000973050640997372

namespace A036450

/-- `∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1]` -/
def P14000973050640997372.Spec : Prop :=
  ∀ n, (P14000973050640997372.a n : ℤ) = A036450 (n + 1)

end A036450

/-! ## A036450.P16054022273343614300

`∏{e}[A010553(n+1), #+1]`
-/

namespace A036450.P16054022273343614300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A036450.P16054022273343614300

namespace A036450

/-- `∏{e}[A010553(n+1), #+1]` -/
def P16054022273343614300.Spec : Prop :=
  ∀ n, (P16054022273343614300.a n : ℤ) = A036450 (n + 1)

end A036450

/-! ## A036450.P17678894859939008740

`∏{e}[∏{e}[Δ[A006218(n)], #+1], #+1]`
-/

namespace A036450.P17678894859939008740
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A036450.P17678894859939008740

namespace A036450

/-- `∏{e}[∏{e}[Δ[A006218(n)], #+1], #+1]` -/
def P17678894859939008740.Spec : Prop :=
  ∀ n, (P17678894859939008740.a n : ℤ) = A036450 (n + 1)

end A036450

/-! ## A036450.P11709187584769016612

`A000005(∑[A111407(n)])`
-/

namespace A036450.P11709187584769016612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036450.P11709187584769016612

namespace A036450

/-- `A000005(∑[A111407(n)])` -/
def P11709187584769016612.Spec : Prop :=
  ∀ n, P11709187584769016612.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P8915819588556400532

`A010553(Δ[A006218(n)])`
-/

namespace A036450.P8915819588556400532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (f1 (n + 1) - f1 n).toNat

end

end A036450.P8915819588556400532

namespace A036450

/-- `A010553(Δ[A006218(n)])` -/
def P8915819588556400532.Spec : Prop :=
  ∀ n, P8915819588556400532.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P16155806342329703472

`A010553(A000005(n+1))`
-/

namespace A036450.P16155806342329703472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000005 (n + 1)).toNat

end

end A036450.P16155806342329703472

namespace A036450

/-- `A010553(A000005(n+1))` -/
def P16155806342329703472.Spec : Prop :=
  ∀ n, P16155806342329703472.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P15152878787021624063

`A046951(A010553(n+1)²)`
-/

namespace A036450.P15152878787021624063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A010553 (n + 1) ^ 2).toNat

end

end A036450.P15152878787021624063

namespace A036450

/-- `A046951(A010553(n+1)²)` -/
def P15152878787021624063.Spec : Prop :=
  ∀ n, P15152878787021624063.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P4468797483765716609

`A183063(2*A010553(n+1))`
-/

namespace A036450.P4468797483765716609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A010553 (n + 1)).toNat

end

end A036450.P4468797483765716609

namespace A036450

/-- `A183063(2*A010553(n+1))` -/
def P4468797483765716609.Spec : Prop :=
  ∀ n, P4468797483765716609.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P9316081277035255219

`A184395(A184395(∏{e}[n+1, #+1]))`
-/

namespace A036450.P9316081277035255219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A184395 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A036450.P9316081277035255219

namespace A036450

/-- `A184395(A184395(∏{e}[n+1, #+1]))` -/
def P9316081277035255219.Spec : Prop :=
  ∀ n, P9316081277035255219.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P9626698890762378002

`A010553(A006218(n+1)-A006218(n))`
-/

namespace A036450.P9626698890762378002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A006218 (n + 1) - A006218 n).toNat

end

end A036450.P9626698890762378002

namespace A036450

/-- `A010553(A006218(n+1)-A006218(n))` -/
def P9626698890762378002.Spec : Prop :=
  ∀ n, P9626698890762378002.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P8382408387490231687

`A046951(∑{d}[A035116(n+1), A046951(#)])`
-/

namespace A036450.P8382408387490231687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (∑ d ∈ Nat.divisors (f1 n).natAbs, A046951 d).toNat

end

end A036450.P8382408387490231687

namespace A036450

/-- `A046951(∑{d}[A035116(n+1), A046951(#)])` -/
def P8382408387490231687.Spec : Prop :=
  ∀ n, P8382408387490231687.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P3003808543710081927

`∏{e}[∏{e}[∑{d}[n+1, A057427(#)], #+1], #+1]`
-/

namespace A036450.P3003808543710081927
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A057427 d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A036450.P3003808543710081927

namespace A036450

/-- `∏{e}[∏{e}[∑{d}[n+1, A057427(#)], #+1], #+1]` -/
def P3003808543710081927.Spec : Prop :=
  ∀ n, (P3003808543710081927.a n : ℤ) = A036450 (n + 1)

end A036450

/-! ## A036450.P17407647495900952841

`A010553(A005361((n+1)*A007947(n+1)))`
-/

namespace A036450.P17407647495900952841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A005361 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A036450.P17407647495900952841

namespace A036450

/-- `A010553(A005361((n+1)*A007947(n+1)))` -/
def P17407647495900952841.Spec : Prop :=
  ∀ n, P17407647495900952841.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P6131128497105743404

`A001616(A046951(A124315((n+1)²)))`
-/

namespace A036450.P6131128497105743404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A046951 (A124315 ((n + 1) ^ 2)).toNat).toNat

end

end A036450.P6131128497105743404

namespace A036450

/-- `A001616(A046951(A124315((n+1)²)))` -/
def P6131128497105743404.Spec : Prop :=
  ∀ n, P6131128497105743404.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P16237074411251858518

`A050294(A186643(A046951((n+1)²)))`
-/

namespace A036450.P16237074411251858518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050294 (A186643 (A046951 ((n + 1) ^ 2)).toNat).toNat

end

end A036450.P16237074411251858518

namespace A036450

/-- `A050294(A186643(A046951((n+1)²)))` -/
def P16237074411251858518.Spec : Prop :=
  ∀ n, P16237074411251858518.a n = A036450 (n + 1)

end A036450

/-! ## A036450.P2393631121509322497

`A073184(A252505(A332712((n+1)²)))`
-/

namespace A036450.P2393631121509322497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A252505 (A332712 ((n + 1) ^ 2)).toNat).toNat

end

end A036450.P2393631121509322497

namespace A036450

/-- `A073184(A252505(A332712((n+1)²)))` -/
def P2393631121509322497.Spec : Prop :=
  ∀ n, P2393631121509322497.a n = A036450 (n + 1)

end A036450

/-!
# A036451: Maximal value of d(x) (the number of divisors of x, A000005) if the binary order (see A029837) of x, the value g(x) = n.

The programs for A036451, there is no canonical definition to state claims against.
-/

/-! ## A036451.P6028782795814871862

`∪[A030463(n), A346729(n+1)]`
-/

namespace A036451.P6028782795814871862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P6028782795814871862

/-! ## A036451.P13931194686210497866

`∪[A038537(n+1), A346729(n+1)]`
-/

namespace A036451.P13931194686210497866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P13931194686210497866

/-! ## A036451.P7820235662394682740

`∪[A115976(n+1), A346729(n+1)]`
-/

namespace A036451.P7820235662394682740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P7820235662394682740

/-! ## A036451.P17021634441533304106

`∪[A154824(n+1), A346729(n+1)]`
-/

namespace A036451.P17021634441533304106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P17021634441533304106

/-! ## A036451.P9710213460783898155

`∪[A175875(n+1), A346729(n+1)]`
-/

namespace A036451.P9710213460783898155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P9710213460783898155

/-! ## A036451.P8121736435607497827

`∪[A176586(n+1), A346729(n+1)]`
-/

namespace A036451.P8121736435607497827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P8121736435607497827

/-! ## A036451.P5739191474817323206

`∪[A190722(n+1), A346729(n+1)]`
-/

namespace A036451.P5739191474817323206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P5739191474817323206

/-! ## A036451.P4271774411445189948

`∪[A216977(n+1), A346729(n+1)]`
-/

namespace A036451.P4271774411445189948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P4271774411445189948

/-! ## A036451.P2736338170792899106

`∪[A229092(n+1), A346729(n+1)]`
-/

namespace A036451.P2736338170792899106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P2736338170792899106

/-! ## A036451.P9720488738268973296

`∪[A244113(n+1), A346729(n+1)]`
-/

namespace A036451.P9720488738268973296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036451.P9720488738268973296

/-!
# A036452: a(n) = d(d(d(d(n)))), the 4th iterate of number-of-divisors function with initial value of n.

The programs for A036452, the canonical program `A036452.P15818655919391954811` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036452 has offset 1).

The definition of A036452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036452.P15818655919391954811

`∏{e}[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1], #+1]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036452

/-- `∏{e}[∏{e}[∏{e}[∏{e}[n+1, #+1], #+1], #+1], #+1]` -/
def P15818655919391954811.Spec : Prop :=
  ∀ n, (P15818655919391954811.a n : ℤ) = A036452 (n + 1)

theorem P15818655919391954811.correct : P15818655919391954811.Spec := by
  intro n
  simp only [A036452, Nat.add_sub_cancel]

end A036452

/-! ## A036452.P11295617134508224703

`ceil(sqrt(A243129(n+1)))`
-/

namespace A036452.P11295617134508224703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A243129 (n + 1) : ℝ)⌉

end

end A036452.P11295617134508224703

namespace A036452

/-- `ceil(sqrt(A243129(n+1)))` -/
def P11295617134508224703.Spec : Prop :=
  ∀ n, P11295617134508224703.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P9834333165351788840

`ceil(γ*A036450(n+1))`
-/

namespace A036452.P9834333165351788840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A036450 (n + 1) : ℝ)⌉

end

end A036452.P9834333165351788840

namespace A036452

/-- `ceil(γ*A036450(n+1))` -/
def P9834333165351788840.Spec : Prop :=
  ∀ n, P9834333165351788840.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P238119219391243290

`A010553(A010553(n+1))`
-/

namespace A036452.P238119219391243290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A010553 (n + 1)).toNat

end

end A036452.P238119219391243290

namespace A036452

/-- `A010553(A010553(n+1))` -/
def P238119219391243290.Spec : Prop :=
  ∀ n, P238119219391243290.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P14415231379058765358

`A036450(A000005(n+1))`
-/

namespace A036452.P14415231379058765358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (A000005 (n + 1)).toNat

end

end A036452.P14415231379058765358

namespace A036452

/-- `A036450(A000005(n+1))` -/
def P14415231379058765358.Spec : Prop :=
  ∀ n, P14415231379058765358.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P8604837750570827080

`A334216(A261776(∏{e}[n+1, #+1]))`
-/

namespace A036452.P8604837750570827080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (A261776 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A036452.P8604837750570827080

namespace A036452

/-- `A334216(A261776(∏{e}[n+1, #+1]))` -/
def P8604837750570827080.Spec : Prop :=
  ∀ n, P8604837750570827080.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P17134425122121756506

`A334216(A328545(∏{e}[n+1, #+1]))`
-/

namespace A036452.P17134425122121756506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (A328545 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A036452.P17134425122121756506

namespace A036452

/-- `A334216(A328545(∏{e}[n+1, #+1]))` -/
def P17134425122121756506.Spec : Prop :=
  ∀ n, P17134425122121756506.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P503245025070754361

`A334216(A328546(∏{e}[n+1, #+1]))`
-/

namespace A036452.P503245025070754361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334216 (A328546 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A036452.P503245025070754361

namespace A036452

/-- `A334216(A328546(∏{e}[n+1, #+1]))` -/
def P503245025070754361.Spec : Prop :=
  ∀ n, P503245025070754361.a n = A036452 (n + 1)

end A036452

/-! ## A036452.P13845873365057593682

`A169819(A020639(A169819(n+1)))`
-/

namespace A036452.P13845873365057593682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (A020639 (A169819 (n + 1)).toNat).toNat

end

end A036452.P13845873365057593682

namespace A036452

/-- `A169819(A020639(A169819(n+1)))` -/
def P13845873365057593682.Spec : Prop :=
  ∀ n, P13845873365057593682.a n = A036452 (n + 1)

end A036452

/-!
# A036453: a(n) = d(d(d(d(d(n))))), the 5th iterate of the number-of-divisors function d = A000005, with initial value n.

The programs for A036453, the canonical program `A036453.P17495263989008753229` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036453 has offset 1).

The definition of A036453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036453.P11146828109376522197

`ceil(γ*A036452(n+1))`
-/

namespace A036453.P11146828109376522197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A036452 (n + 1) : ℝ)⌉

end

end A036453.P11146828109376522197

namespace A036453

/-- `ceil(γ*A036452(n+1))` -/
def P11146828109376522197.Spec : Prop :=
  ∀ n, P11146828109376522197.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P374424649607439768

`A036452(A000005(n+1))`
-/

namespace A036453.P374424649607439768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A000005 (n + 1)).toNat

end

end A036453.P374424649607439768

namespace A036453

/-- `A036452(A000005(n+1))` -/
def P374424649607439768.Spec : Prop :=
  ∀ n, P374424649607439768.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P17495263989008753229

`A036450(A010553(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036453

/-- `A036450(A010553(n+1))` -/
def P17495263989008753229.Spec : Prop :=
  ∀ n, P17495263989008753229.a n = A036453 (n + 1)

theorem P17495263989008753229.correct : P17495263989008753229.Spec := by
  intro n
  simp only [A036453, Nat.add_sub_cancel]

end A036453

/-! ## A036453.P17632868539014809078

`A259361(A243129(n+1)+3)`
-/

namespace A036453.P17632868539014809078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A243129 (n + 1) + 3).toNat

end

end A036453.P17632868539014809078

namespace A036453

/-- `A259361(A243129(n+1)+3)` -/
def P17632868539014809078.Spec : Prop :=
  ∀ n, P17632868539014809078.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P15472679171561218981

`A323022(A000005(n+1)²)+1`
-/

namespace A036453.P15472679171561218981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A000005 (n + 1) ^ 2).toNat + 1

end

end A036453.P15472679171561218981

namespace A036453

/-- `A323022(A000005(n+1)²)+1` -/
def P15472679171561218981.Spec : Prop :=
  ∀ n, P15472679171561218981.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P7450634383795122318

`A323022(A032741(n+1)+1)+1`
-/

namespace A036453.P7450634383795122318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A032741 (n + 1) + 1).toNat + 1

end

end A036453.P7450634383795122318

namespace A036453

/-- `A323022(A032741(n+1)+1)+1` -/
def P7450634383795122318.Spec : Prop :=
  ∀ n, P7450634383795122318.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P15159036640285067636

`A323022(A000005(char[2]+1+n))+1`
-/

namespace A036453.P15159036640285067636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A000005 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat + 1

end

end A036453.P15159036640285067636

namespace A036453

/-- `A323022(A000005(char[2]+1+n))+1` -/
def P15159036640285067636.Spec : Prop :=
  ∀ n, P15159036640285067636.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P17591416739425839513

`A036452(A023645(n+1)+A000034(n))`
-/

namespace A036453.P17591416739425839513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A023645 (n + 1) + A000034 n).toNat

end

end A036453.P17591416739425839513

namespace A036453

/-- `A036452(A023645(n+1)+A000034(n))` -/
def P17591416739425839513.Spec : Prop :=
  ∀ n, P17591416739425839513.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P7702637947167189183

`A266227(A000005(n+1))+A057427(n)`
-/

namespace A036453.P7702637947167189183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A000005 (n + 1)).toNat + A057427 n

end

end A036453.P7702637947167189183

namespace A036453

/-- `A266227(A000005(n+1))+A057427(n)` -/
def P7702637947167189183.Spec : Prop :=
  ∀ n, P7702637947167189183.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P7689209419652992159

`A010553(or(A010553(n+1), A122553(n)))`
-/

namespace A036453.P7689209419652992159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (Int.lor (A010553 (n + 1)) (A122553 n)).toNat

end

end A036453.P7689209419652992159

namespace A036453

/-- `A010553(or(A010553(n+1), A122553(n)))` -/
def P7689209419652992159.Spec : Prop :=
  ∀ n, P7689209419652992159.a n = A036453 (n + 1)

end A036453

/-! ## A036453.P6208326975320059130

`A001222(A036452(n+1)*A060308(n+1))`
-/

namespace A036453.P6208326975320059130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036452 (n + 1) * A060308 (n + 1)).toNat

end

end A036453.P6208326975320059130

namespace A036453

/-- `A001222(A036452(n+1)*A060308(n+1))` -/
def P6208326975320059130.Spec : Prop :=
  ∀ n, P6208326975320059130.a n = A036453 (n + 1)

end A036453

/-!
# A036454: Prime powers with special exponents: q^(p-1) where p > 2 and q are prime numbers.

The programs for A036454, the canonical program `A036454.P14075252907541784587` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036454 has offset 1).

The definition of A036454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036454.P14896764996174225346

`A283262(n+1)²`
-/

namespace A036454.P14896764996174225346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1) ^ 2

end

end A036454.P14896764996174225346

namespace A036454

/-- `A283262(n+1)²` -/
def P14896764996174225346.Spec : Prop :=
  ∀ n, P14896764996174225346.a n = A036454 (n + 1)

end A036454

/-! ## A036454.P14011297220425677584

`∩[A000961(n+1), A261355(n+1)]²`
-/

namespace A036454.P14011297220425677584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P14011297220425677584

namespace A036454

/-- `∩[A000961(n+1), A261355(n+1)]²` -/
def P14011297220425677584.Spec : Prop :=
  ∀ n, (P14011297220425677584.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P1356037934810251949

`∩[A246655(n+1), A261355(n+1)]²`
-/

namespace A036454.P1356037934810251949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P1356037934810251949

namespace A036454

/-- `∩[A246655(n+1), A261355(n+1)]²` -/
def P1356037934810251949.Spec : Prop :=
  ∀ n, (P1356037934810251949.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P13547042111532875222

`∪[A000040(n+1), A051676(n+1)]²`
-/

namespace A036454.P13547042111532875222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P13547042111532875222

namespace A036454

/-- `∪[A000040(n+1), A051676(n+1)]²` -/
def P13547042111532875222.Spec : Prop :=
  ∀ n, (P13547042111532875222.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P4288930279913945438

`∪[A000430(n+1), A051676(n+1)]²`
-/

namespace A036454.P4288930279913945438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P4288930279913945438

namespace A036454

/-- `∪[A000430(n+1), A051676(n+1)]²` -/
def P4288930279913945438.Spec : Prop :=
  ∀ n, (P4288930279913945438.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P18020457020201064580

`∪[A051676(n+1), A087797(n+1)]²`
-/

namespace A036454.P18020457020201064580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P18020457020201064580

namespace A036454

/-- `∪[A051676(n+1), A087797(n+1)]²` -/
def P18020457020201064580.Spec : Prop :=
  ∀ n, (P18020457020201064580.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P18064063293971563440

`∪[A051676(n+1), A175787(n+1)]²`
-/

namespace A036454.P18064063293971563440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P18064063293971563440

namespace A036454

/-- `∪[A051676(n+1), A175787(n+1)]²` -/
def P18064063293971563440.Spec : Prop :=
  ∀ n, (P18064063293971563440.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P589716133338194027

`∪[A051676(n+1), A186285(n+1)]²`
-/

namespace A036454.P589716133338194027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P589716133338194027

namespace A036454

/-- `∪[A051676(n+1), A186285(n+1)]²` -/
def P589716133338194027.Spec : Prop :=
  ∀ n, (P589716133338194027.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P17627405478426835725

`∪[A051676(n+1), A268391(n+1)]²`
-/

namespace A036454.P17627405478426835725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A036454.P17627405478426835725

namespace A036454

/-- `∪[A051676(n+1), A268391(n+1)]²` -/
def P17627405478426835725.Spec : Prop :=
  ∀ n, (P17627405478426835725.a n : ℤ) = A036454 (n + 1)

end A036454

/-! ## A036454.P5700825431486077357

`A000290(A283262(n+1)%A051676(n+1))`
-/

namespace A036454.P5700825431486077357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A283262 (n + 1)) (A051676 (n + 1))).toNat

end

end A036454.P5700825431486077357

namespace A036454

/-- `A000290(A283262(n+1)%A051676(n+1))` -/
def P5700825431486077357.Spec : Prop :=
  ∀ n, P5700825431486077357.a n = A036454 (n + 1)

end A036454

/-! ## A036454.P7993722298365491997

`A000290(2*A283262(n+1)-A283262(n+1))`
-/

namespace A036454.P7993722298365491997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A283262 (n + 1) - A283262 (n + 1)).toNat

end

end A036454.P7993722298365491997

namespace A036454

/-- `A000290(2*A283262(n+1)-A283262(n+1))` -/
def P7993722298365491997.Spec : Prop :=
  ∀ n, P7993722298365491997.a n = A036454 (n + 1)

end A036454

/-! ## A036454.P14075252907541784587

`record[(A000015(n+2)/A001222(A048691(n+2)))²]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A036454

/-- `record[(A000015(n+2)/A001222(A048691(n+2)))²]` -/
def P14075252907541784587.Spec : Prop :=
  ∀ n, P14075252907541784587.a n = (A036454 (n + 1) : ℚ)

end A036454

/-! ## A036454.P16970487152574156577

`A000290(A283262(n+1)+A000290(n+1)%(n+1))`
-/

namespace A036454.P16970487152574156577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A283262 (n + 1) + Int.tmod (A000290 (n + 1)) (n + 1 : ℤ)).toNat

end

end A036454.P16970487152574156577

namespace A036454

/-- `A000290(A283262(n+1)+A000290(n+1)%(n+1))` -/
def P16970487152574156577.Spec : Prop :=
  ∀ n, P16970487152574156577.a n = A036454 (n + 1)

end A036454

/-! ## A036454.P1320205445968433334

`A000290(A283262(n+1))%A000290(A000040(n+2))`
-/

namespace A036454.P1320205445968433334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A283262 (n + 1)).toNat) (A000290 (A000040 (n + 2)).toNat)

end

end A036454.P1320205445968433334

namespace A036454

/-- `A000290(A283262(n+1))%A000290(A000040(n+2))` -/
def P1320205445968433334.Spec : Prop :=
  ∀ n, P1320205445968433334.a n = A036454 (n + 1)

end A036454

/-!
# A036455: Numbers n such that d(d(n)) is an odd prime, where d(k) is the number of divisors of k.

The programs for A036455, the canonical program `A036455.P9092321913124468015` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036455 has offset 1).

The definition of A036455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036455.P9092321913124468015

`eq[3, A000005(a(A000005(n)))]` with `a(0)=1, a(1)=1, a(2)=12`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036455

/-- `eq[3, A000005(a(A000005(n)))]` -/
def P9092321913124468015.Spec : Prop :=
  ∀ n, (P9092321913124468015.a n : ℤ) = A036455 (n + 1)

theorem P9092321913124468015.correct : P9092321913124468015.Spec := by
  intro n
  simp only [A036455, Nat.add_sub_cancel]

end A036455

/-! ## A036455.P9082396213212735112

`eq[2, A001222(A320016(A000005(n+1)))]+1`
-/

namespace A036455.P9082396213212735112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A320016 (A000005 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036455.P9082396213212735112

namespace A036455

/-- `eq[2, A001222(A320016(A000005(n+1)))]+1` -/
def P9082396213212735112.Spec : Prop :=
  ∀ n, (P9082396213212735112.a n : ℤ) = A036455 (n + 1)

end A036455

/-! ## A036455.P9705340127770477485

`filter[A036436(n+1), A262684(#)]`
-/

namespace A036455.P9705340127770477485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A036455.P9705340127770477485

namespace A036455

/-- `filter[A036436(n+1), A262684(#)]` -/
def P9705340127770477485.Spec : Prop :=
  ∀ n, P9705340127770477485.a n = A036455 (n + 1)

end A036455

/-! ## A036455.P16930260367315553990

`∩[A036436(n+1), A080218(n+1)]`
-/

namespace A036455.P16930260367315553990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036455.P16930260367315553990

namespace A036455

/-- `∩[A036436(n+1), A080218(n+1)]` -/
def P16930260367315553990.Spec : Prop :=
  ∀ n, (P16930260367315553990.a n : ℤ) = A036455 (n + 1)

end A036455

/-! ## A036455.P4650654389045444466

`eq[2, A200815(n+4)]+4`
-/

namespace A036455.P4650654389045444466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200815 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A036455.P4650654389045444466

namespace A036455

/-- `eq[2, A200815(n+4)]+4` -/
def P4650654389045444466.Spec : Prop :=
  ∀ n, (P4650654389045444466.a n : ℤ) = A036455 (n + 1)

end A036455

/-! ## A036455.P6051849127505486542

`eq[3, A036459(n+1)]+1`
-/

namespace A036455.P6051849127505486542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036455.P6051849127505486542

namespace A036455

/-- `eq[3, A036459(n+1)]+1` -/
def P6051849127505486542.Spec : Prop :=
  ∀ n, (P6051849127505486542.a n : ℤ) = A036455 (n + 1)

end A036455

/-! ## A036455.P7544166217370503664

`eq[2, A164993(A010553(n+1))]+1`
-/

namespace A036455.P7544166217370503664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164993 (A010553 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036455.P7544166217370503664

namespace A036455

/-- `eq[2, A164993(A010553(n+1))]+1` -/
def P7544166217370503664.Spec : Prop :=
  ∀ n, (P7544166217370503664.a n : ℤ) = A036455 (n + 1)

end A036455

/-! ## A036455.P2228351003161470407

`∩[A036436(n+1), A114024(n+1)]`
-/

namespace A036455.P2228351003161470407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036455.P2228351003161470407

namespace A036455

/-- `∩[A036436(n+1), A114024(n+1)]` -/
def P2228351003161470407.Spec : Prop :=
  ∀ n, (P2228351003161470407.a n : ℤ) = A036455 (n + 1)

end A036455

/-! ## A036455.P9440920957226596588

`A036436(A262689((n+2)²))`
-/

namespace A036455.P9440920957226596588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (A262689 ((n + 2) ^ 2)).toNat

end

end A036455.P9440920957226596588

namespace A036455

/-- `A036436(A262689((n+2)²))` -/
def P9440920957226596588.Spec : Prop :=
  ∀ n, P9440920957226596588.a n = A036455 (n + 1)

end A036455

/-! ## A036455.P4518136707445137334

`A036436(A093709(A028982(n+1))+n+1)`
-/

namespace A036455.P4518136707445137334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036436 (A093709 (A028982 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A036455.P4518136707445137334

namespace A036455

/-- `A036436(A093709(A028982(n+1))+n+1)` -/
def P4518136707445137334.Spec : Prop :=
  ∀ n, P4518136707445137334.a n = A036455 (n + 1)

end A036455

/-!
# A036456: Numbers k for which exactly 4 applications of A000005 are needed to reach 2.

The programs for A036456, the canonical program `A036456.P315112515821829930` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036456 has offset 1).

The definition of A036456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036456.P315112515821829930

`eq[3, A000005(a(A000005(n)))]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=12`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036456

/-- `eq[3, A000005(a(A000005(n)))]` -/
def P315112515821829930.Spec : Prop :=
  ∀ n, (P315112515821829930.a n : ℤ) = A036456 (n + 1)

theorem P315112515821829930.correct : P315112515821829930.Spec := by
  intro n
  simp only [A036456, Nat.add_sub_cancel]

end A036456

/-! ## A036456.P9234570186521089414

`eq[3, A000005(A000005(A000005(n+1)))]+1`
-/

namespace A036456.P9234570186521089414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A000005 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036456.P9234570186521089414

namespace A036456

/-- `eq[3, A000005(A000005(A000005(n+1)))]+1` -/
def P9234570186521089414.Spec : Prop :=
  ∀ n, (P9234570186521089414.a n : ℤ) = A036456 (n + 1)

end A036456

/-! ## A036456.P9825769483862301496

`eq[3, A200815(n+3)]+3`
-/

namespace A036456.P9825769483862301496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200815 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A036456.P9825769483862301496

namespace A036456

/-- `eq[3, A200815(n+3)]+3` -/
def P9825769483862301496.Spec : Prop :=
  ∀ n, (P9825769483862301496.a n : ℤ) = A036456 (n + 1)

end A036456

/-! ## A036456.P18137176244463150615

`eq[3, A036450(n+1)]+1`
-/

namespace A036456.P18137176244463150615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036456.P18137176244463150615

namespace A036456

/-- `eq[3, A036450(n+1)]+1` -/
def P18137176244463150615.Spec : Prop :=
  ∀ n, (P18137176244463150615.a n : ℤ) = A036456 (n + 1)

end A036456

/-! ## A036456.P12683861666913220132

`eq[4, A036459(n+1)]+1`
-/

namespace A036456.P12683861666913220132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036456.P12683861666913220132

namespace A036456

/-- `eq[4, A036459(n+1)]+1` -/
def P12683861666913220132.Spec : Prop :=
  ∀ n, (P12683861666913220132.a n : ℤ) = A036456 (n + 1)

end A036456

/-! ## A036456.P5133228383742358829

`eq[5, A060937(n+2)]+2`
-/

namespace A036456.P5133228383742358829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060937 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A036456.P5133228383742358829

namespace A036456

/-- `eq[5, A060937(n+2)]+2` -/
def P5133228383742358829.Spec : Prop :=
  ∀ n, (P5133228383742358829.a n : ℤ) = A036456 (n + 1)

end A036456

/-! ## A036456.P785788734142988692

`eq[4, A000005(A000005(A233583(n+1)))]`
-/

namespace A036456.P785788734142988692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036456.P785788734142988692

namespace A036456

/-- `eq[4, A000005(A000005(A233583(n+1)))]` -/
def P785788734142988692.Spec : Prop :=
  ∀ n, (P785788734142988692.a n : ℤ) = A036456 (n + 1)

end A036456

/-! ## A036456.P13411213180085023142

`eq[3, A001222(A100587(n+1))]+1`
-/

namespace A036456.P13411213180085023142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100587 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036456.P13411213180085023142

namespace A036456

/-- `eq[3, A001222(A100587(n+1))]+1` -/
def P13411213180085023142.Spec : Prop :=
  ∀ n, (P13411213180085023142.a n : ℤ) = A036456 (n + 1)

end A036456

/-!
# A036457: Numbers k for which exactly 5 applications of A000005 are needed to reach 2.

The programs for A036457, the canonical program `A036457.P7190875582605610954` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036457 has offset 1).

The definition of A036457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036457.P7190875582605610954

`eq[4, A036450(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036457

/-- `eq[4, A036450(n+1)]+1` -/
def P7190875582605610954.Spec : Prop :=
  ∀ n, (P7190875582605610954.a n : ℤ) = A036457 (n + 1)

theorem P7190875582605610954.correct : P7190875582605610954.Spec := by
  intro n
  simp only [A036457, Nat.add_sub_cancel]

end A036457

/-! ## A036457.P1668762423546457670

`eq[5, A036459(n+1)]+1`
-/

namespace A036457.P1668762423546457670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036457.P1668762423546457670

namespace A036457

/-- `eq[5, A036459(n+1)]+1` -/
def P1668762423546457670.Spec : Prop :=
  ∀ n, (P1668762423546457670.a n : ℤ) = A036457 (n + 1)

end A036457

/-! ## A036457.P10909818313617575262

`eq[6, A060937(n+2)]+2`
-/

namespace A036457.P10909818313617575262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060937 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A036457.P10909818313617575262

namespace A036457

/-- `eq[6, A060937(n+2)]+2` -/
def P10909818313617575262.Spec : Prop :=
  ∀ n, (P10909818313617575262.a n : ℤ) = A036457 (n + 1)

end A036457

/-! ## A036457.P14547792253554386138

`eq[3, A036452(A028310(n))]`
-/

namespace A036457.P14547792253554386138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036457.P14547792253554386138

namespace A036457

/-- `eq[3, A036452(A028310(n))]` -/
def P14547792253554386138.Spec : Prop :=
  ∀ n, (P14547792253554386138.a n : ℤ) = A036457 (n + 1)

end A036457

/-! ## A036457.P16882380802890309798

`A020725(eq[3, A036452(n+1)])`
-/

namespace A036457.P16882380802890309798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036457.P16882380802890309798

namespace A036457

/-- `A020725(eq[3, A036452(n+1)])` -/
def P16882380802890309798.Spec : Prop :=
  ∀ n, P16882380802890309798.a n = A036457 (n + 1)

end A036457

/-! ## A036457.P7933043502983839935

`A020725(eq[5, A036459(n+1)])`
-/

namespace A036457.P7933043502983839935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036457.P7933043502983839935

namespace A036457

/-- `A020725(eq[5, A036459(n+1)])` -/
def P7933043502983839935.Spec : Prop :=
  ∀ n, P7933043502983839935.a n = A036457 (n + 1)

end A036457

/-! ## A036457.P4958680025660790908

`A061767(eq[5, A036459(n+1)])`
-/

namespace A036457.P4958680025660790908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036457.P4958680025660790908

namespace A036457

/-- `A061767(eq[5, A036459(n+1)])` -/
def P4958680025660790908.Spec : Prop :=
  ∀ n, P4958680025660790908.a n = A036457 (n + 1)

end A036457

/-! ## A036457.P2795094998888476212

`eq[3, A036452(A233583(n+1))]`
-/

namespace A036457.P2795094998888476212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036457.P2795094998888476212

namespace A036457

/-- `eq[3, A036452(A233583(n+1))]` -/
def P2795094998888476212.Spec : Prop :=
  ∀ n, (P2795094998888476212.a n : ℤ) = A036457 (n + 1)

end A036457

/-!
# A036458: For all n, if d is recursively applied to a(n) exactly 6 times then the fixed point of d-iteration is just reached.

The programs for A036458, there is no canonical definition to state claims against.
-/

/-! ## A036458.P16090615159233706696

`A301688(A350375(n+1))`
-/

namespace A036458.P16090615159233706696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 (A350375 (n + 1)).toNat

end

end A036458.P16090615159233706696

/-!
# A036459: Number of iterations required to reach stationary value when repeatedly applying d, the number of divisors function (A000005).

The programs for A036459, the canonical program `A036459.P10933683056839574436` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036459 has offset 1).

The definition of A036459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036459.P10933683056839574436

`a(A032741(n+1))+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036459

/-- `a(A032741(n+1))+1` -/
def P10933683056839574436.Spec : Prop :=
  ∀ n, (P10933683056839574436.a n : ℤ) = A036459 (n + 1)

theorem P10933683056839574436.correct : P10933683056839574436.Spec := by
  intro n
  simp only [A036459, Nat.add_sub_cancel]

end A036459

/-! ## A036459.P16280601864347284393

`a(Δ[A006218(n)]-1)+1` with `a(0)=0, a(1)=0`
-/

namespace A036459.P16280601864347284393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1

end

end A036459.P16280601864347284393

namespace A036459

/-- `a(Δ[A006218(n)]-1)+1` -/
def P16280601864347284393.Spec : Prop :=
  ∀ n, (P16280601864347284393.a n : ℤ) = A036459 (n + 1)

end A036459

/-! ## A036459.P7751050351873633082

`a(A000005(n+1)-1)+1` with `a(0)=0, a(1)=0`
-/

namespace A036459.P7751050351873633082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A000005 (n + 1) - 1).toNat + 1

end

end A036459.P7751050351873633082

namespace A036459

/-- `a(A000005(n+1)-1)+1` -/
def P7751050351873633082.Spec : Prop :=
  ∀ n, (P7751050351873633082.a n : ℤ) = A036459 (n + 1)

theorem P7751050351873633082.correct : P7751050351873633082.Spec := by
  intro n
  simp only [A036459, Nat.add_sub_cancel, A036459.P7751050351873633082.a, A036459.P10933683056839574436.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036459

/-! ## A036459.P10798717301929519328

`a(n-A049820(n+1))+1` with `a(0)=0, a(1)=0`
-/

namespace A036459.P10798717301929519328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a ((n : ℤ) - A049820 (n + 1)).toNat + 1

end

end A036459.P10798717301929519328

namespace A036459

/-- `a(n-A049820(n+1))+1` -/
def P10798717301929519328.Spec : Prop :=
  ∀ n, (P10798717301929519328.a n : ℤ) = A036459 (n + 1)

theorem P10798717301929519328.correct : P10798717301929519328.Spec := by
  intro n
  simp only [A036459, Nat.add_sub_cancel, A036459.P10798717301929519328.a, A036459.P10933683056839574436.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036459

/-! ## A036459.P10419998713189308406

`A048379(a(A032741(n+1)))` with `a(0)=0, a(1)=0`
-/

namespace A036459.P10419998713189308406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A048379 (a (A032741 (n + 1)).toNat).toNat

end

end A036459.P10419998713189308406

namespace A036459

/-- `A048379(a(A032741(n+1)))` -/
def P10419998713189308406.Spec : Prop :=
  ∀ n, P10419998713189308406.a n = A036459 (n + 1)

end A036459

/-! ## A036459.P15620358453905988705

`A185974(a(A032741(n+1)))` with `a(0)=0, a(1)=0`
-/

namespace A036459.P15620358453905988705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A185974 (a (A032741 (n + 1)).toNat).toNat

end

end A036459.P15620358453905988705

namespace A036459

/-- `A185974(a(A032741(n+1)))` -/
def P15620358453905988705.Spec : Prop :=
  ∀ n, P15620358453905988705.a n = A036459 (n + 1)

end A036459

/-! ## A036459.P1660539661157552149

`A057979(A320016(n+1))*A060937(A096737(n+1))`
-/

namespace A036459.P1660539661157552149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A320016 (n + 1)).toNat * A060937 (A096737 (n + 1)).toNat

end

end A036459.P1660539661157552149

namespace A036459

/-- `A057979(A320016(n+1))*A060937(A096737(n+1))` -/
def P1660539661157552149.Spec : Prop :=
  ∀ n, P1660539661157552149.a n = A036459 (n + 1)

end A036459

/-! ## A036459.P10343238781202103256

`A003056(A001222(A320016(n+1)²))`
-/

namespace A036459.P10343238781202103256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001222 (A320016 (n + 1) ^ 2).toNat).toNat

end

end A036459.P10343238781202103256

namespace A036459

/-- `A003056(A001222(A320016(n+1)²))` -/
def P10343238781202103256.Spec : Prop :=
  ∀ n, P10343238781202103256.a n = A036459 (n + 1)

end A036459

/-!
# A036461: Number of 1 digits in base 3 representation of 2^n.

The programs for A036461, there is no canonical definition to state claims against.
-/

/-! ## A036461.P4978630903398938832

`A261009(n)-2*A260683(n)`
-/

namespace A036461.P4978630903398938832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 n - 2 * A260683 n

end

end A036461.P4978630903398938832

/-! ## A036461.P1431054542680182017

`A261009(n)-A005843(A260683(n))`
-/

namespace A036461.P1431054542680182017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 n - A005843 (A260683 n).toNat

end

end A036461.P1431054542680182017

/-! ## A036461.P13128548104326014236

`A020915(n)-(A260683(n)+A104320(n))`
-/

namespace A036461.P13128548104326014236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n - (A260683 n + A104320 n)

end

end A036461.P13128548104326014236

/-! ## A036461.P1611591704160029459

`A261009(n)-A005843(A265157(n)+n%2)`
-/

namespace A036461.P1611591704160029459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 n - A005843 (A265157 n + ((n % 2 : ℕ) : ℤ)).toNat

end

end A036461.P1611591704160029459

/-! ## A036461.P1350705229485695416

`A020915(n)+A001489(A260683(n)+A104320(n))`
-/

namespace A036461.P1350705229485695416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n + A001489 (A260683 n + A104320 n).toNat

end

end A036461.P1350705229485695416

/-! ## A036461.P5533122872166676404

`A261009(n)-A005843(A265157(n)+A000035(n))`
-/

namespace A036461.P5533122872166676404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261009 n - A005843 (A265157 n + A000035 n).toNat

end

end A036461.P5533122872166676404

/-! ## A036461.P6767992555276493966

`∑{digits}[A004642(n), A000035(#)]`
-/

namespace A036461.P6767992555276493966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A036461.P6767992555276493966

/-! ## A036461.P15132175222001368158

`∑{digits}[A004642(n), A000957(#)]`
-/

namespace A036461.P15132175222001368158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000957 x).sum

end

end A036461.P15132175222001368158

/-! ## A036461.P4348040643036262337

`∑{digits}[A004642(n), A059905(#)]`
-/

namespace A036461.P4348040643036262337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059905 x).sum

end

end A036461.P4348040643036262337

/-! ## A036461.P7111767017241804234

`∑{digits}[A004642(n), A072661(#)]`
-/

namespace A036461.P7111767017241804234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A072661 x).sum

end

end A036461.P7111767017241804234

/-! ## A036461.P6317281824885166468

`∑{digits}[A004642(n), A117971(#)]`
-/

namespace A036461.P6317281824885166468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A117971 x).sum

end

end A036461.P6317281824885166468

/-! ## A036461.P6245198859354326834

`∑{digits}[A004642(n), #*A039966(#)]`
-/

namespace A036461.P6245198859354326834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A039966 x).sum

end

end A036461.P6245198859354326834

/-! ## A036461.P7066177509253338517

`∑{digits}[A004642(n), A073642(A294106(#))]`
-/

namespace A036461.P7066177509253338517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A073642 (A294106 x).toNat).sum

end

end A036461.P7066177509253338517

/-!
# A036464: Number of ways to place two nonattacking queens on an n X n board.

The programs for A036464, the canonical program `A036464.P6645508525514235542` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036464 has offset 1).

The definition of A036464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036464.P6645508525514235542

`C(n+1, 3)*(3*(n+1)-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036464

/-- `C(n+1, 3)*(3*(n+1)-1)` -/
def P6645508525514235542.Spec : Prop :=
  ∀ n, P6645508525514235542.a n = A036464 (n + 1)

theorem P6645508525514235542.correct : P6645508525514235542.Spec := by
  intro n
  simp only [A036464, Nat.add_sub_cancel]

end A036464

/-! ## A036464.P9480455325500524569

`(n+1)^4/2-5*(n+1)^3/3+3*(n+1)²/2-(n+1)/3`
-/

namespace A036464.P9480455325500524569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℚ) / 2 - (5 * (n + 1) ^ 3 : ℚ) / 3 + (3 * (n + 1) ^ 2 : ℚ) / 2 - (n + 1 : ℚ) / 3

end

end A036464.P9480455325500524569

namespace A036464

/-- `(n+1)^4/2-5*(n+1)^3/3+3*(n+1)²/2-(n+1)/3` -/
def P9480455325500524569.Spec : Prop :=
  ∀ n, P9480455325500524569.a n = (A036464 (n + 1) : ℚ)

theorem P9480455325500524569.correct : P9480455325500524569.Spec := by
  intro n
  simp only [A036464, Nat.add_sub_cancel, A036464.P9480455325500524569.a, A036464.P6645508525514235542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036464

/-! ## A036464.P1944052838228668969

`∑[4*n*C(n, 2)]`
-/

namespace A036464.P1944052838228668969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P1944052838228668969

namespace A036464

/-- `∑[4*n*C(n, 2)]` -/
def P1944052838228668969.Spec : Prop :=
  ∀ n, (P1944052838228668969.a n : ℤ) = A036464 (n + 1)

end A036464

/-! ## A036464.P17503675088792039224

`2*∑[n*lcm(n, n-1)]`
-/

namespace A036464.P17503675088792039224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036464.P17503675088792039224

namespace A036464

/-- `2*∑[n*lcm(n, n-1)]` -/
def P17503675088792039224.Spec : Prop :=
  ∀ n, (P17503675088792039224.a n : ℤ) = A036464 (n + 1)

end A036464

/-! ## A036464.P47691917007100410

`(3*n+2)*C(n+1, 3)`
-/

namespace A036464.P47691917007100410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) * Nat.choose (n + 1) 3

end

end A036464.P47691917007100410

namespace A036464

/-- `(3*n+2)*C(n+1, 3)` -/
def P47691917007100410.Spec : Prop :=
  ∀ n, (P47691917007100410.a n : ℤ) = A036464 (n + 1)

theorem P47691917007100410.correct : P47691917007100410.Spec := by
  intro n
  simp only [A036464, Nat.add_sub_cancel, A036464.P47691917007100410.a, A036464.P6645508525514235542.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A036464

/-! ## A036464.P4990743767353675841

`∑[n*∑[a(n-1)+4]]` with `a(0)=0, a(1)=0`
-/

namespace A036464.P4990743767353675841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P4990743767353675841

namespace A036464

/-- `∑[n*∑[a(n-1)+4]]` -/
def P4990743767353675841.Spec : Prop :=
  ∀ n, (P4990743767353675841.a n : ℤ) = A036464 (n + 1)

end A036464

/-! ## A036464.P18420370890777514679

`∑[n*(4-∑[a(n-1)-4])]` with `a(0)=4`
-/

namespace A036464.P18420370890777514679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P18420370890777514679

namespace A036464

/-- `∑[n*(4-∑[a(n-1)-4])]` -/
def P18420370890777514679.Spec : Prop :=
  ∀ n, P18420370890777514679.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P10326223884799527530

`∑[(n²-n)*xor(1, 2*n+1)]`
-/

namespace A036464.P10326223884799527530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (Nat.xor 1 (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P10326223884799527530

namespace A036464

/-- `∑[(n²-n)*xor(1, 2*n+1)]` -/
def P10326223884799527530.Spec : Prop :=
  ∀ n, P10326223884799527530.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P1455922683386780140

`∑[(n-1)*2*n*gcd(n, 2*n)]`
-/

namespace A036464.P1455922683386780140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 * n : ℤ) * (Nat.gcd n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P1455922683386780140

namespace A036464

/-- `∑[(n-1)*2*n*gcd(n, 2*n)]` -/
def P1455922683386780140.Spec : Prop :=
  ∀ n, P1455922683386780140.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P6115392972654327119

`∑[(n²-n)*and(2*n+1, 2*n)]`
-/

namespace A036464.P6115392972654327119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * (Nat.land (2 * n + 1) (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P6115392972654327119

namespace A036464

/-- `∑[(n²-n)*and(2*n+1, 2*n)]` -/
def P6115392972654327119.Spec : Prop :=
  ∀ n, P6115392972654327119.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P2543345376149739742

`floor(a(n-1)+2*n*n*(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A036464.P2543345376149739742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n : ℤ) * ((n : ℤ) * ((n : ℤ) - 1))

end

end A036464.P2543345376149739742

namespace A036464

/-- `floor(a(n-1)+2*n*n*(n-1))` -/
def P2543345376149739742.Spec : Prop :=
  ∀ n, P2543345376149739742.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P7772789405311979626

`∑[2*A045991(n)]`
-/

namespace A036464.P7772789405311979626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P7772789405311979626

namespace A036464

/-- `∑[2*A045991(n)]` -/
def P7772789405311979626.Spec : Prop :=
  ∀ n, P7772789405311979626.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P5387272264923147747

`∑[A059722(n)-n]`
-/

namespace A036464.P5387272264923147747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P5387272264923147747

namespace A036464

/-- `∑[A059722(n)-n]` -/
def P5387272264923147747.Spec : Prop :=
  ∀ n, P5387272264923147747.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P14893645164664657895

`A035291(n+1)/2`
-/

namespace A036464.P14893645164664657895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035291 (n + 1) : ℚ) / 2

end

end A036464.P14893645164664657895

namespace A036464

/-- `A035291(n+1)/2` -/
def P14893645164664657895.Spec : Prop :=
  ∀ n, P14893645164664657895.a n = (A036464 (n + 1) : ℚ)

end A036464

/-! ## A036464.P14450719601717597355

`∑[A015238(n)+n²]`
-/

namespace A036464.P14450719601717597355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P14450719601717597355

namespace A036464

/-- `∑[A015238(n)+n²]` -/
def P14450719601717597355.Spec : Prop :=
  ∀ n, P14450719601717597355.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P4987507520857571759

`∑[A015237(n)-n²]`
-/

namespace A036464.P4987507520857571759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036464.P4987507520857571759

namespace A036464

/-- `∑[A015237(n)-n²]` -/
def P4987507520857571759.Spec : Prop :=
  ∀ n, P4987507520857571759.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P15906416774184696051

`∑[C(n, 2)]*A016789(n)`
-/

namespace A036464.P15906416774184696051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016789 n

end

end A036464.P15906416774184696051

namespace A036464

/-- `∑[C(n, 2)]*A016789(n)` -/
def P15906416774184696051.Spec : Prop :=
  ∀ n, P15906416774184696051.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P1065184882664080106

`2*∑[(n-1)*A000290(n)]`
-/

namespace A036464.P1065184882664080106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036464.P1065184882664080106

namespace A036464

/-- `2*∑[(n-1)*A000290(n)]` -/
def P1065184882664080106.Spec : Prop :=
  ∀ n, P1065184882664080106.a n = A036464 (n + 1)

end A036464

/-! ## A036464.P17399197844954269796

`A208283(n+1)%A207255(n+1)`
-/

namespace A036464.P17399197844954269796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208283 (n + 1)) (A207255 (n + 1))

end

end A036464.P17399197844954269796

namespace A036464

/-- `A208283(n+1)%A207255(n+1)` -/
def P17399197844954269796.Spec : Prop :=
  ∀ n, P17399197844954269796.a n = A036464 (n + 1)

end A036464

/-!
# A036466: If n = Sum_{i} b(i)^2 (i.e., a partition of n into squares), then a(n) is the smallest possible value of the largest multiplicity of the b(i).

The programs for A036466, there is no canonical definition to state claims against.
-/

/-! ## A036466.P8982847090530826774

`gcd(p?[A321650(n+1)], A321619(n+1))`
-/

namespace A036466.P8982847090530826774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A321619 (n + 1))

end

end A036466.P8982847090530826774

/-!
# A036467: a(n) + a(n-1) = n-th prime.

The programs for A036467, the canonical program `A036467.P9941389810136272924` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036467 has offset 0).

The definition of A036467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036467.P9941389810136272924

`A008347(n)+(-1)^n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036467

/-- `A008347(n)+(-1)^n` -/
def P9941389810136272924.Spec : Prop :=
  ∀ n, P9941389810136272924.a n = A036467 n

theorem P9941389810136272924.correct : P9941389810136272924.Spec := by
  intro n
  simp only [A036467]

end A036467

/-! ## A036467.P4672641649145399540

`A083236(n)-(-1)^n`
-/

namespace A036467.P4672641649145399540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 n - (-1) ^ n

end

end A036467.P4672641649145399540

namespace A036467

/-- `A083236(n)-(-1)^n` -/
def P4672641649145399540.Spec : Prop :=
  ∀ n, P4672641649145399540.a n = A036467 n

end A036467

/-! ## A036467.P10209474101734724921

`A000040(n)-a(n-1)` with `a(0)=1`
-/

namespace A036467.P10209474101734724921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n - a (n - 1)

end

end A036467.P10209474101734724921

namespace A036467

/-- `A000040(n)-a(n-1)` -/
def P10209474101734724921.Spec : Prop :=
  ∀ n, P10209474101734724921.a n = A036467 n

end A036467

/-! ## A036467.P198610289239568746

`A006005(n)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A036467.P198610289239568746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006005 n - a (n - 1)

end

end A036467.P198610289239568746

namespace A036467

/-- `A006005(n)-a(n-1)` -/
def P198610289239568746.Spec : Prop :=
  ∀ n, P198610289239568746.a n = A036467 n

end A036467

/-! ## A036467.P10407172410820768747

`A054541(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A036467.P10407172410820768747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A054541 n + a (n - 2)

end

end A036467.P10407172410820768747

namespace A036467

/-- `A054541(n)+a(n-2)` -/
def P10407172410820768747.Spec : Prop :=
  ∀ n, P10407172410820768747.a n = A036467 n

end A036467

/-! ## A036467.P15705612965290661999

`A125266(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A036467.P15705612965290661999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A125266 n + a (n - 2)

end

end A036467.P15705612965290661999

namespace A036467

/-- `A125266(n)+a(n-2)` -/
def P15705612965290661999.Spec : Prop :=
  ∀ n, P15705612965290661999.a n = A036467 n

end A036467

/-! ## A036467.P14573667251198975005

`A181346(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A036467.P14573667251198975005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A181346 n + a (n - 2)

end

end A036467.P14573667251198975005

namespace A036467

/-- `A181346(n)+a(n-2)` -/
def P14573667251198975005.Spec : Prop :=
  ∀ n, P14573667251198975005.a n = A036467 n

end A036467

/-! ## A036467.P14386442753109523369

`A006093(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A036467.P14386442753109523369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006093 n + (1 - a (n - 1))

end

end A036467.P14386442753109523369

namespace A036467

/-- `A006093(n)+1-a(n-1)` -/
def P14386442753109523369.Spec : Prop :=
  ∀ n, P14386442753109523369.a n = A036467 n

end A036467

/-! ## A036467.P6341748044822269582

`A008578(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A036467.P6341748044822269582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008578 (n + 1) - a (n - 1)

end

end A036467.P6341748044822269582

namespace A036467

/-- `A008578(n+1)-a(n-1)` -/
def P6341748044822269582.Spec : Prop :=
  ∀ n, P6341748044822269582.a n = A036467 n

end A036467

/-! ## A036467.P3496718226898385908

`A182986(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A036467.P3496718226898385908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182986 (n + 1) - a (n - 1)

end

end A036467.P3496718226898385908

namespace A036467

/-- `A182986(n+1)-a(n-1)` -/
def P3496718226898385908.Spec : Prop :=
  ∀ n, P3496718226898385908.a n = A036467 n

end A036467

/-! ## A036467.P5394396134264796290

`A008864(n)-1-a(n-1)` with `a(0)=1`
-/

namespace A036467.P5394396134264796290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008864 n - 1 - a (n - 1)

end

end A036467.P5394396134264796290

namespace A036467

/-- `A008864(n)-1-a(n-1)` -/
def P5394396134264796290.Spec : Prop :=
  ∀ n, P5394396134264796290.a n = A036467 n

end A036467

/-! ## A036467.P5381635175614120900

`A014689(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A036467.P5381635175614120900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014689 n - a (n - 1) + (n : ℤ)

end

end A036467.P5381635175614120900

namespace A036467

/-- `A014689(n)-a(n-1)+n` -/
def P5381635175614120900.Spec : Prop :=
  ∀ n, P5381635175614120900.a n = A036467 n

end A036467

/-! ## A036467.P8545956540075530511

`A065091(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A036467.P8545956540075530511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A065091 (n - 1) - a (n - 1)

end

end A036467.P8545956540075530511

namespace A036467

/-- `A065091(n-1)-a(n-1)` -/
def P8545956540075530511.Spec : Prop :=
  ∀ n, P8545956540075530511.a n = A036467 n

end A036467

/-! ## A036467.P5084072207863512905

`A033999(n)+A008347(n)`
-/

namespace A036467.P5084072207863512905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A008347 n

end

end A036467.P5084072207863512905

namespace A036467

/-- `A033999(n)+A008347(n)` -/
def P5084072207863512905.Spec : Prop :=
  ∀ n, P5084072207863512905.a n = A036467 n

theorem P5084072207863512905.correct : P5084072207863512905.Spec := by
  intro n
  simp only [A036467, Nat.add_sub_cancel, A036467.P5084072207863512905.a, A036467.P9941389810136272924.a, A008347, A008347.P7172351178524916195.a, A033999, A033999.P17703899380244199787.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036467

/-! ## A036467.P9111295840633020237

`A062157(n+1)+A008347(n)`
-/

namespace A036467.P9111295840633020237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) + A008347 n

end

end A036467.P9111295840633020237

namespace A036467

/-- `A062157(n+1)+A008347(n)` -/
def P9111295840633020237.Spec : Prop :=
  ∀ n, P9111295840633020237.a n = A036467 n

theorem P9111295840633020237.correct : P9111295840633020237.Spec := by
  intro n
  simp only [A036467, Nat.add_sub_cancel, A036467.P9111295840633020237.a, A036467.P9941389810136272924.a, A008347, A008347.P7172351178524916195.a, A062157, A062157.P13834877263571195293.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A036467

/-! ## A036467.P1518980721490157010

`A086530(n+1)-A008347(n)`
-/

namespace A036467.P1518980721490157010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086530 (n + 1) - A008347 n

end

end A036467.P1518980721490157010

namespace A036467

/-- `A086530(n+1)-A008347(n)` -/
def P1518980721490157010.Spec : Prop :=
  ∀ n, P1518980721490157010.a n = A036467 n

end A036467

/-! ## A036467.P1323108157834036488

`A000040(n+1)-Δ[A073738(n)]`
-/

namespace A036467.P1323108157834036488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A036467.P1323108157834036488

namespace A036467

/-- `A000040(n+1)-Δ[A073738(n)]` -/
def P1323108157834036488.Spec : Prop :=
  ∀ n, P1323108157834036488.a n = A036467 n

end A036467

/-! ## A036467.P11760135556830059494

`∑[A008578(n+1)*A033999(n)]*A033999(n)`
-/

namespace A036467.P11760135556830059494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A036467.P11760135556830059494

namespace A036467

/-- `∑[A008578(n+1)*A033999(n)]*A033999(n)` -/
def P11760135556830059494.Spec : Prop :=
  ∀ n, P11760135556830059494.a n = A036467 n

end A036467

/-! ## A036467.P4305490456822410147

`A000040(n+1)+A073738(n)-A073738(n+1)`
-/

namespace A036467.P4305490456822410147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A073738 n - A073738 (n + 1))

end

end A036467.P4305490456822410147

namespace A036467

/-- `A000040(n+1)+A073738(n)-A073738(n+1)` -/
def P4305490456822410147.Spec : Prop :=
  ∀ n, P4305490456822410147.a n = A036467 n

end A036467

/-! ## A036467.P4110767495263269842

`A158611(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A036467.P4110767495263269842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158611 (n + 2) - a (n - 1)

end

end A036467.P4110767495263269842

namespace A036467

/-- `A158611(n+2)-a(n-1)` -/
def P4110767495263269842.Spec : Prop :=
  ∀ n, P4110767495263269842.a n = A036467 n

end A036467

/-!
# A036468: Number of ways to represent 2n+1 as a+b with 0 < a < b and a^2 + b^2 prime.

The programs for A036468, there is no canonical definition to state claims against.
-/

/-! ## A036468.P16968649721495369856

`A004526(A225072(n+2))`
-/

namespace A036468.P16968649721495369856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A225072 (n + 2)).toNat

end

end A036468.P16968649721495369856

/-! ## A036468.P10815101314946542896

`A002265(A225071(n+2)/2)`
-/

namespace A036468.P10815101314946542896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A225071 (n + 2) : ℚ) / 2)).toNat

end

end A036468.P10815101314946542896

/-! ## A036468.P6887833455752655680

`A082519(2*n+3)/2`
-/

namespace A036468.P6887833455752655680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082519 (2 * n + 3) : ℚ) / 2

end

end A036468.P6887833455752655680

/-! ## A036468.P4378890073011117314

`A032742(A082519(2*n+3))`
-/

namespace A036468.P4378890073011117314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A082519 (2 * n + 3)).toNat

end

end A036468.P4378890073011117314

/-! ## A036468.P15436774745956397594

`A249122(A082519(2*n+3)+1)`
-/

namespace A036468.P15436774745956397594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A082519 (2 * n + 3) + 1).toNat

end

end A036468.P15436774745956397594

/-! ## A036468.P3047105213481809726

`A008615(3*A225072(n+2))`
-/

namespace A036468.P3047105213481809726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A225072 (n + 2)).toNat

end

end A036468.P3047105213481809726

/-! ## A036468.P15540319207824009130

`A281543(2*n+3)`
-/

namespace A036468.P15540319207824009130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (2 * n + 3)

end

end A036468.P15540319207824009130

/-!
# A036469: Partial sums of A000009 (partitions into distinct parts).

The programs for A036469, there is no canonical definition to state claims against.
-/

/-! ## A036469.P2294923400434180196

`∑[A000009(n)]`
-/

namespace A036469.P2294923400434180196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P2294923400434180196

/-! ## A036469.P15496149706031099542

`∑[abs(A081360(n))]`
-/

namespace A036469.P15496149706031099542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P15496149706031099542

/-! ## A036469.P16294972076709871603

`∑[∑[A087897(n)]]`
-/

namespace A036469.P16294972076709871603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P16294972076709871603

/-! ## A036469.P2600279974981793018

`ceil(A248956(n)/2)`
-/

namespace A036469.P2600279974981793018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248956 n : ℚ) / 2⌉

end

end A036469.P2600279974981793018

/-! ## A036469.P11545354308971184207

`∑[A111133(n)+1]`
-/

namespace A036469.P11545354308971184207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P11545354308971184207

/-! ## A036469.P15911664104786197708

`∑[A052839(n)]-n`
-/

namespace A036469.P15911664104786197708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A036469.P15911664104786197708

/-! ## A036469.P7931880785216714470

`A317910(n)+1+n`
-/

namespace A036469.P7931880785216714470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317910 n + 1 + (n : ℤ)

end

end A036469.P7931880785216714470

/-! ## A036469.P5938337941038437346

`∑[ceil(A087135(n)/2)]`
-/

namespace A036469.P5938337941038437346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P5938337941038437346

/-! ## A036469.P4669496204807130261

`∑[ceil(A333147(n)/2)]`
-/

namespace A036469.P4669496204807130261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P4669496204807130261

/-! ## A036469.P8679868000753251452

`A346822(n)-A095944(n+1)`
-/

namespace A036469.P8679868000753251452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 n - A095944 (n + 1)

end

end A036469.P8679868000753251452

/-! ## A036469.P15368823581167640117

`2*A038348(n)-A025147(n)`
-/

namespace A036469.P15368823581167640117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038348 n - A025147 n

end

end A036469.P15368823581167640117

/-! ## A036469.P12244627116096473275

`A090858(n+1)+A015723(n+1)`
-/

namespace A036469.P12244627116096473275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090858 (n + 1) + A015723 (n + 1)

end

end A036469.P12244627116096473275

/-! ## A036469.P4610642038052676156

`A090858(n+1)+A265251(n+1)+A038348(n)`
-/

namespace A036469.P4610642038052676156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090858 (n + 1) + (A265251 (n + 1) + A038348 n)

end

end A036469.P4610642038052676156

/-! ## A036469.P10024917281246950856

`A000009(n+1)+A248956(n)-A026906(n+1)`
-/

namespace A036469.P10024917281246950856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A248956 n - A026906 (n + 1))

end

end A036469.P10024917281246950856

/-! ## A036469.P7570156654953595626

`∑[A096765(n+1)+A096765(n)]`
-/

namespace A036469.P7570156654953595626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P7570156654953595626

/-! ## A036469.P13309622970573478553

`A026906(n+1)-A111133(n+1)`
-/

namespace A036469.P13309622970573478553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) - A111133 (n + 1)

end

end A036469.P13309622970573478553

/-! ## A036469.P17195518135941859700

`A038348(n+1)+A038348(n)-A000009(n+1)`
-/

namespace A036469.P17195518135941859700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 (n + 1) + (A038348 n - A000009 (n + 1))

end

end A036469.P17195518135941859700

/-! ## A036469.P12733618668624227126

`A095944(n+2)-(A095944(n+1)+A000009(n+1))`
-/

namespace A036469.P12733618668624227126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095944 (n + 2) - (A095944 (n + 1) + A000009 (n + 1))

end

end A036469.P12733618668624227126

/-! ## A036469.P14527548797866375452

`∑[A000041(n)-A047967(n)]`
-/

namespace A036469.P14527548797866375452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036469.P14527548797866375452

/-! ## A036469.P4234754154358830525

`A052816(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A036469.P4234754154358830525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A052816 n + a (n - 2)

end

end A036469.P4234754154358830525

/-!
# A036470: a(n) is the number of distinct possible values of d(k), the number of divisors of k, among numbers k whose binary order (A029837) does not exceed n.

The programs for A036470, there is no canonical definition to state claims against.
-/

/-! ## A036470.P15157339849073140904

`A061071(2^n)`
-/

namespace A036470.P15157339849073140904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (2 ^ n)

end

end A036470.P15157339849073140904

/-! ## A036470.P17256717787564892887

`record[A061071(A029930(n))]`
-/

namespace A036470.P17256717787564892887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036470.P17256717787564892887

/-! ## A036470.P2935610216108795935

`record[A061071(A055248(n))]`
-/

namespace A036470.P2935610216108795935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036470.P2935610216108795935

/-! ## A036470.P12837376561577181643

`record[A061071(A059148(n))]`
-/

namespace A036470.P12837376561577181643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A059148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036470.P12837376561577181643

/-! ## A036470.P4113344022839632525

`record[A061071(A059268(n))]`
-/

namespace A036470.P4113344022839632525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036470.P4113344022839632525

/-!
# A036475: a(n) = partition(11n+1) mod 11.

The programs for A036475, there is no canonical definition to state claims against.
-/

/-! ## A036475.P4705145804371011577

`A020919(11*n+1)`
-/

namespace A036475.P4705145804371011577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 1)

end

end A036475.P4705145804371011577

/-! ## A036475.P10157798028865171206

`A000041(11*n+1)%11`
-/

namespace A036475.P10157798028865171206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 1)) 11

end

end A036475.P10157798028865171206

/-! ## A036475.P11538613902066246003

`A020919(A017401(n))%11`
-/

namespace A036475.P11538613902066246003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A017401 n).toNat) 11

end

end A036475.P11538613902066246003

/-! ## A036475.P14563792072213189172

`gcd(A000038(n), A020919(A017401(n)))`
-/

namespace A036475.P14563792072213189172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A020919 (A017401 n).toNat)

end

end A036475.P14563792072213189172

/-! ## A036475.P16369981358345259939

`or(A000007(n), A020919(A017401(n)))`
-/

namespace A036475.P16369981358345259939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A020919 (A017401 n).toNat)

end

end A036475.P16369981358345259939

/-! ## A036475.P11473028922305844573

`or(A020919(A017401(n)), A063524(n+1))`
-/

namespace A036475.P11473028922305844573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020919 (A017401 n).toNat) (A063524 (n + 1))

end

end A036475.P11473028922305844573

/-! ## A036475.P2959277881406681277

`A020919(A017401(n))/A014963(xor(42, n)+n)`
-/

namespace A036475.P2959277881406681277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017401 n).toNat : ℚ) / (A014963 (Nat.xor 42 n + n) : ℚ)

end

end A036475.P2959277881406681277

/-! ## A036475.P1023826944520682869

`A005171(A313918(n))*A020919(A017401(n))`
-/

namespace A036475.P1023826944520682869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A313918 n).toNat * A020919 (A017401 n).toNat

end

end A036475.P1023826944520682869

/-! ## A036475.P10585414222971860443

`A020919(A017401(n))/A001222(A045319(n+1))`
-/

namespace A036475.P10585414222971860443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017401 n).toNat : ℚ) / (A001222 (A045319 (n + 1)).toNat : ℚ)

end

end A036475.P10585414222971860443

/-! ## A036475.P9640403044466653213

`A020919(A017401(n))/A093178(A004275(n+1))`
-/

namespace A036475.P9640403044466653213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017401 n).toNat : ℚ) / (A093178 (A004275 (n + 1)).toNat : ℚ)

end

end A036475.P9640403044466653213

/-! ## A036475.P4158297875366107299

`A185238(A067390(n+1))+A020919(A017401(n))`
-/

namespace A036475.P4158297875366107299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A067390 (n + 1)).toNat + A020919 (A017401 n).toNat

end

end A036475.P4158297875366107299

/-!
# A036476: a(n) = partition(11n+2) mod 11.

The programs for A036476, there is no canonical definition to state claims against.
-/

/-! ## A036476.P16752416750309830688

`A020919(11*n+2)`
-/

namespace A036476.P16752416750309830688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 2)

end

end A036476.P16752416750309830688

/-! ## A036476.P1543016255072083409

`A000041(11*n+2)%11`
-/

namespace A036476.P1543016255072083409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 2)) 11

end

end A036476.P1543016255072083409

/-! ## A036476.P12546699855340006521

`A020919(A017413(n))%11`
-/

namespace A036476.P12546699855340006521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A017413 n).toNat) 11

end

end A036476.P12546699855340006521

/-! ## A036476.P2005213463155117851

`or(A000038(n), A020919(A017413(n)))`
-/

namespace A036476.P2005213463155117851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A020919 (A017413 n).toNat)

end

end A036476.P2005213463155117851

/-! ## A036476.P3863453535690704181

`A020919(A017413(n))/A014963(xor(42, n)+n)`
-/

namespace A036476.P3863453535690704181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017413 n).toNat : ℚ) / (A014963 (Nat.xor 42 n + n) : ℚ)

end

end A036476.P3863453535690704181

/-!
# A036477: a(n) = partition(11n+3) mod 11.

The programs for A036477, there is no canonical definition to state claims against.
-/

/-! ## A036477.P9488255054045912188

`A020919(11*n+3)`
-/

namespace A036477.P9488255054045912188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 3)

end

end A036477.P9488255054045912188

/-! ## A036477.P123592756268015516

`A000041(11*n+3)%11`
-/

namespace A036477.P123592756268015516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 3)) 11

end

end A036477.P123592756268015516

/-!
# A036478: a(n) = partition(11n+4) mod 11.

The programs for A036478, there is no canonical definition to state claims against.
-/

/-! ## A036478.P6573767920261699166

`A020919(11*n+4)`
-/

namespace A036478.P6573767920261699166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 4)

end

end A036478.P6573767920261699166

/-! ## A036478.P3419612195663210619

`A000041(11*n+4)%11`
-/

namespace A036478.P3419612195663210619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 4)) 11

end

end A036478.P3419612195663210619

/-! ## A036478.P14058782852205635691

`A020919(A017437(n))%11`
-/

namespace A036478.P14058782852205635691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A017437 n).toNat) 11

end

end A036478.P14058782852205635691

/-! ## A036478.P10916463054037872509

`A097807(n)²*A020919(A017437(n))`
-/

namespace A036478.P10916463054037872509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A020919 (A017437 n).toNat

end

end A036478.P10916463054037872509

/-! ## A036478.P10486471431343237807

`A020919(A017437(n))+A000038(n+1)`
-/

namespace A036478.P10486471431343237807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (A017437 n).toNat + A000038 (n + 1)

end

end A036478.P10486471431343237807

/-! ## A036478.P5697314341525704602

`Δ[A005811(n)]²*A020919(A017437(n))`
-/

namespace A036478.P5697314341525704602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A020919 (A017437 n).toNat

end

end A036478.P5697314341525704602

/-! ## A036478.P1501924952404151208

`A020919(A017437(n))/A014963(xor(42, n)+n)`
-/

namespace A036478.P1501924952404151208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017437 n).toNat : ℚ) / (A014963 (Nat.xor 42 n + n) : ℚ)

end

end A036478.P1501924952404151208

/-!
# A036479: a(n) = partition(11n+5) mod 11.

The programs for A036479, there is no canonical definition to state claims against.
-/

/-! ## A036479.P13355835434357165955

`A020919(11*n+5)`
-/

namespace A036479.P13355835434357165955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 5)

end

end A036479.P13355835434357165955

/-! ## A036479.P8378358458343848711

`A000041(11*n+5)%11`
-/

namespace A036479.P8378358458343848711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 5)) 11

end

end A036479.P8378358458343848711

/-! ## A036479.P9865617469867865066

`A020919(A017449(n))%11`
-/

namespace A036479.P9865617469867865066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A017449 n).toNat) 11

end

end A036479.P9865617469867865066

/-! ## A036479.P1829181206184744449

`A020919(A017449(n))/A014963(xor(42, n)+n)`
-/

namespace A036479.P1829181206184744449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017449 n).toNat : ℚ) / (A014963 (Nat.xor 42 n + n) : ℚ)

end

end A036479.P1829181206184744449

/-! ## A036479.P247808950865049099

`A084376(A017461(n))%11`
-/

namespace A036479.P247808950865049099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084376 (A017461 n).toNat) 11

end

end A036479.P247808950865049099

/-!
# A036480: a(n) = partition(11n+7) mod 11.

The programs for A036480, there is no canonical definition to state claims against.
-/

/-! ## A036480.P3106207551709991627

`A020919(11*n+7)`
-/

namespace A036480.P3106207551709991627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 7)

end

end A036480.P3106207551709991627

/-! ## A036480.P10984377258125794271

`A000041(11*n+7)%11`
-/

namespace A036480.P10984377258125794271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 7)) 11

end

end A036480.P10984377258125794271

/-! ## A036480.P1311759812430212918

`A317189(A015237(n+1))²`
-/

namespace A036480.P1311759812430212918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 (A015237 (n + 1)).toNat ^ 2

end

end A036480.P1311759812430212918

/-! ## A036480.P17963727812187524721

`and(4, A054352(A335034(n+1)))`
-/

namespace A036480.P17963727812187524721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A054352 (A335034 (n + 1)).toNat)

end

end A036480.P17963727812187524721

/-! ## A036480.P12516392404596184984

`and(4, A217119(A238556(n+3)))`
-/

namespace A036480.P12516392404596184984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A217119 (A238556 (n + 3)).toNat)

end

end A036480.P12516392404596184984

/-!
# A036481: a(n) = partition(11n+8) mod 11.

The programs for A036481, there is no canonical definition to state claims against.
-/

/-! ## A036481.P15438454537773562291

`A020919(11*n+8)`
-/

namespace A036481.P15438454537773562291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 8)

end

end A036481.P15438454537773562291

/-! ## A036481.P9824948719988860570

`A000041(11*n+8)%11`
-/

namespace A036481.P9824948719988860570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 8)) 11

end

end A036481.P9824948719988860570

/-!
# A036482: a(n) = partition(11n+9) mod 11.

The programs for A036482, there is no canonical definition to state claims against.
-/

/-! ## A036482.P18235477598413290110

`A020919(11*n+9)`
-/

namespace A036482.P18235477598413290110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 9)

end

end A036482.P18235477598413290110

/-! ## A036482.P12792079991437812135

`A000041(11*n+9)%11`
-/

namespace A036482.P12792079991437812135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 9)) 11

end

end A036482.P12792079991437812135

/-! ## A036482.P14812157450156474379

`A020919(A017497(n))%11`
-/

namespace A036482.P14812157450156474379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A017497 n).toNat) 11

end

end A036482.P14812157450156474379

/-! ## A036482.P17137579664338873432

`lcm(A020919(A017497(n)), A158388(n))`
-/

namespace A036482.P17137579664338873432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020919 (A017497 n).toNat) (A158388 n)

end

end A036482.P17137579664338873432

/-! ## A036482.P2665188982332575114

`A097807(n)²*A020919(A017497(n))`
-/

namespace A036482.P2665188982332575114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A020919 (A017497 n).toNat

end

end A036482.P2665188982332575114

/-! ## A036482.P3314825223226560605

`A020919(A017497(n))/A001222(A151800(n+3))`
-/

namespace A036482.P3314825223226560605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017497 n).toNat : ℚ) / (A001222 (A151800 (n + 3)).toNat : ℚ)

end

end A036482.P3314825223226560605

/-!
# A036483: a(n) = partition(11n+10) mod 11.

The programs for A036483, there is no canonical definition to state claims against.
-/

/-! ## A036483.P1792524354564168281

`A020919(11*n+10)`
-/

namespace A036483.P1792524354564168281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n + 10)

end

end A036483.P1792524354564168281

/-! ## A036483.P14926103025346267055

`A000041(11*n+10)%11`
-/

namespace A036483.P14926103025346267055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n + 10)) 11

end

end A036483.P14926103025346267055

/-! ## A036483.P5940218334049044074

`A020919(A017509(n))%11`
-/

namespace A036483.P5940218334049044074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A017509 n).toNat) 11

end

end A036483.P5940218334049044074

/-! ## A036483.P8957540791536543397

`lcm(A020919(A017509(n)), A158388(n))`
-/

namespace A036483.P8957540791536543397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020919 (A017509 n).toNat) (A158388 n)

end

end A036483.P8957540791536543397

/-! ## A036483.P288673633485299520

`or(A000007(n), A020919(A017509(n)))`
-/

namespace A036483.P288673633485299520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A020919 (A017509 n).toNat)

end

end A036483.P288673633485299520

/-! ## A036483.P8755937789435935007

`A097807(n)²*A020919(A017509(n))`
-/

namespace A036483.P8755937789435935007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A020919 (A017509 n).toNat

end

end A036483.P8755937789435935007

/-! ## A036483.P2886115343210724539

`A020919(A017509(n))/A001222(A005384(n+1))`
-/

namespace A036483.P2886115343210724539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017509 n).toNat : ℚ) / (A001222 (A005384 (n + 1)).toNat : ℚ)

end

end A036483.P2886115343210724539

/-! ## A036483.P978628659628180396

`A020919(A017509(n))/A001222(A151800(n+3))`
-/

namespace A036483.P978628659628180396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A017509 n).toNat : ℚ) / (A001222 (A151800 (n + 3)).toNat : ℚ)

end

end A036483.P978628659628180396

/-!
# A036484: a(n) is the minimal number of binary order n which has maximal number of divisors in this interval.

The programs for A036484, there is no canonical definition to state claims against.
-/

/-! ## A036484.P8365701643737581781

`A061799(A036451(n))`
-/

namespace A036484.P8365701643737581781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A036451 n).toNat

end

end A036484.P8365701643737581781

/-! ## A036484.P4780241170803991180

`A061799(∏{e}[A036493(n), #+1])`
-/

namespace A036484.P4780241170803991180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A036484.P4780241170803991180

/-! ## A036484.P12590687451531704046

`A005179(A000005(A036493(n)))`
-/

namespace A036484.P12590687451531704046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000005 (A036493 n).toNat).toNat

end

end A036484.P12590687451531704046

/-! ## A036484.P5684955427026375987

`A061799(lt[lcm(16, n)/16, A225486(n+1)])`
-/

namespace A036484.P5684955427026375987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A036484.P5684955427026375987

/-! ## A036484.P8345620244254506477

`A061799(lt[A106617(n), A225486(n+1)])`
-/

namespace A036484.P8345620244254506477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036484.P8345620244254506477

/-!
# A036485: a(n) = partition(11n) mod 11.

The programs for A036485, there is no canonical definition to state claims against.
-/

/-! ## A036485.P11492201931316020960

`A020919(11*n)`
-/

namespace A036485.P11492201931316020960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020919 (11 * n)

end

end A036485.P11492201931316020960

/-! ## A036485.P16863165853996331101

`A020919(A008593(n))%17`
-/

namespace A036485.P16863165853996331101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020919 (A008593 n).toNat) 17

end

end A036485.P16863165853996331101

/-! ## A036485.P16692971931676493275

`or(A000007(n), A020919(A008593(n)))`
-/

namespace A036485.P16692971931676493275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A020919 (A008593 n).toNat)

end

end A036485.P16692971931676493275

/-! ## A036485.P866995331660032853

`A020919(A008593(n))^A033999(n)²`
-/

namespace A036485.P866995331660032853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A008593 n).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A036485.P866995331660032853

/-! ## A036485.P8775576805811908045

`A000041(11*n)%11`
-/

namespace A036485.P8775576805811908045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (11 * n)) 11

end

end A036485.P8775576805811908045

/-! ## A036485.P11705263928238562196

`A020919(A008593(n))^A014963(A000217(n+6))`
-/

namespace A036485.P11705263928238562196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020919 (A008593 n).toNat : ℚ) ^ (A014963 (A000217 (n + 6)).toNat : ℤ)

end

end A036485.P11705263928238562196

/-!
# A036486: a(n) = ceiling((n^3)/2).

The programs for A036486, the canonical program `A036486.P17548178815895887309` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036486 has offset 0).

The definition of A036486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^3/2)` (program `A036486.P17548178815895887309`, by `A036486.P17548178815895887309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036486.P17548178815895887309

`ceil(n^3/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036486

/-- `ceil(n^3/2)` -/
def P17548178815895887309.Spec : Prop :=
  ∀ n, P17548178815895887309.a n = A036486 n

theorem P17548178815895887309.correct : P17548178815895887309.Spec := by
  intro n
  simp only [A036486]

end A036486

/-! ## A036486.P17745572429899415224

`(n^3+n%2)/2`
-/

namespace A036486.P17745572429899415224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 + n % 2 : ℕ) : ℚ) / 2

end

end A036486.P17745572429899415224

namespace A036486

/-- `(n^3+n%2)/2` -/
def P17745572429899415224.Spec : Prop :=
  ∀ n, P17745572429899415224.a n = (A036486 n : ℚ)

end A036486

/-! ## A036486.P14816758571298091201

`n^3-A036487(n)`
-/

namespace A036486.P14816758571298091201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A036487 n

end

end A036486.P14816758571298091201

namespace A036486

/-- `n^3-A036487(n)` -/
def P14816758571298091201.Spec : Prop :=
  ∀ n, P14816758571298091201.a n = A036486 n

end A036486

/-! ## A036486.P18357752042882421743

`round(n/(2*acot(n²)))`
-/

namespace A036486.P18357752042882421743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (2 * SequenceMachineLib.acot (n ^ 2 : ℝ)))

end

end A036486.P18357752042882421743

namespace A036486

/-- `round(n/(2*acot(n²)))` -/
def P18357752042882421743.Spec : Prop :=
  ∀ n, P18357752042882421743.a n = A036486 n

end A036486

/-! ## A036486.P3175952104968914019

`round(n/acot(n²/2))`
-/

namespace A036486.P3175952104968914019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((n ^ 2 : ℚ) / 2 : ℝ))

end

end A036486.P3175952104968914019

namespace A036486

/-- `round(n/acot(n²/2))` -/
def P3175952104968914019.Spec : Prop :=
  ∀ n, P3175952104968914019.a n = A036486 n

end A036486

/-! ## A036486.P12309704183321942137

`round(gcd(n, 2*n)^3/2)`
-/

namespace A036486.P12309704183321942137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd n (2 * n) ^ 3 : ℚ) / 2)

end

end A036486.P12309704183321942137

namespace A036486

/-- `round(gcd(n, 2*n)^3/2)` -/
def P12309704183321942137.Spec : Prop :=
  ∀ n, P12309704183321942137.a n = A036486 n

end A036486

/-! ## A036486.P5129869496087744675

`round(cosh(log(n^3+2)))-1`
-/

namespace A036486.P5129869496087744675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n ^ 3 + 2 : ℝ))) - 1

end

end A036486.P5129869496087744675

namespace A036486

/-- `round(cosh(log(n^3+2)))-1` -/
def P5129869496087744675.Spec : Prop :=
  ∀ n, P5129869496087744675.a n = A036486 n

end A036486

/-! ## A036486.P6248751412286822521

`∑[∑[a(n-2)+6]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A036486.P6248751412286822521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036486.P6248751412286822521

namespace A036486

/-- `∑[∑[a(n-2)+6]]` -/
def P6248751412286822521.Spec : Prop :=
  ∀ n, (P6248751412286822521.a n : ℤ) = A036486 n

end A036486

/-! ## A036486.P10881455380172305841

`∑[and(1, n)]+(n-1)*∑[n]`
-/

namespace A036486.P10881455380172305841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A036486.P10881455380172305841

namespace A036486

/-- `∑[and(1, n)]+(n-1)*∑[n]` -/
def P10881455380172305841.Spec : Prop :=
  ∀ n, P10881455380172305841.a n = A036486 n

end A036486

/-! ## A036486.P15837658325262246703

`∑[∑[∑[6-a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A036486.P15837658325262246703
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f3 =>
  6 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036486.P15837658325262246703

namespace A036486

/-- `∑[∑[∑[6-a(n-1)]]]` -/
def P15837658325262246703.Spec : Prop :=
  ∀ n, P15837658325262246703.a n = A036486 n

end A036486

/-! ## A036486.P462043126509180647

`floor((gcd(2, n+1)+n^3)/2)`
-/

namespace A036486.P462043126509180647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 (n + 1) + n ^ 3 : ℚ) / 2⌋

end

end A036486.P462043126509180647

namespace A036486

/-- `floor((gcd(2, n+1)+n^3)/2)` -/
def P462043126509180647.Spec : Prop :=
  ∀ n, P462043126509180647.a n = A036486 n

end A036486

/-! ## A036486.P1125525259231906130

`n*(∑[n]+1)+1-∑[or(1, n)]`
-/

namespace A036486.P1125525259231906130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A036486.P1125525259231906130

namespace A036486

/-- `n*(∑[n]+1)+1-∑[or(1, n)]` -/
def P1125525259231906130.Spec : Prop :=
  ∀ n, P1125525259231906130.a n = A036486 n

end A036486

/-! ## A036486.P10197486845738948237

`floor((C(∑[2*n], 2)+n+1)/(n+2))`
-/

namespace A036486.P10197486845738948237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A036486.P10197486845738948237

namespace A036486

/-- `floor((C(∑[2*n], 2)+n+1)/(n+2))` -/
def P10197486845738948237.Spec : Prop :=
  ∀ n, P10197486845738948237.a n = A036486 n

end A036486

/-! ## A036486.P14021113056432567729

`round(A000578(n)/2)`
-/

namespace A036486.P14021113056432567729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000578 n : ℚ) / 2)

end

end A036486.P14021113056432567729

namespace A036486

/-- `round(A000578(n)/2)` -/
def P14021113056432567729.Spec : Prop :=
  ∀ n, P14021113056432567729.a n = A036486 n

end A036486

/-! ## A036486.P3603516255093319795

`A392105(n)-n²`
-/

namespace A036486.P3603516255093319795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392105 n - (n ^ 2 : ℤ)

end

end A036486.P3603516255093319795

namespace A036486

/-- `A392105(n)-n²` -/
def P3603516255093319795.Spec : Prop :=
  ∀ n, P3603516255093319795.a n = A036486 n

end A036486

/-! ## A036486.P7376505419647963500

`round(sqrt(A001014(n))/2)`
-/

namespace A036486.P7376505419647963500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001014 n : ℝ) / 2)

end

end A036486.P7376505419647963500

namespace A036486

/-- `round(sqrt(A001014(n))/2)` -/
def P7376505419647963500.Spec : Prop :=
  ∀ n, P7376505419647963500.a n = A036486 n

end A036486

/-! ## A036486.P11761020000428607909

`A391994(n)+∑[n²]`
-/

namespace A036486.P11761020000428607909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391994 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036486.P11761020000428607909

namespace A036486

/-- `A391994(n)+∑[n²]` -/
def P11761020000428607909.Spec : Prop :=
  ∀ n, P11761020000428607909.a n = A036486 n

end A036486

/-! ## A036486.P8952117662777176143

`∑[A137932(n)+∑[n]]`
-/

namespace A036486.P8952117662777176143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036486.P8952117662777176143

namespace A036486

/-- `∑[A137932(n)+∑[n]]` -/
def P8952117662777176143.Spec : Prop :=
  ∀ n, P8952117662777176143.a n = A036486 n

end A036486

/-! ## A036486.P9576077771152024424

`floor(A084378(n)/2)-1`
-/

namespace A036486.P9576077771152024424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084378 n : ℚ) / 2⌋ - 1

end

end A036486.P9576077771152024424

namespace A036486

/-- `floor(A084378(n)/2)-1` -/
def P9576077771152024424.Spec : Prop :=
  ∀ n, P9576077771152024424.a n = A036486 n

end A036486

/-!
# A036487: a(n) = floor((n^3)/2).

The programs for A036487, the canonical program `A036487.P9713645422185084787` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036487 has offset 0).

The definition of A036487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/2)` (program `A036487.P9713645422185084787`, by `A036487.P9713645422185084787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036487.P9713645422185084787

`floor(n^3/2)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036487

/-- `floor(n^3/2)` -/
def P9713645422185084787.Spec : Prop :=
  ∀ n, P9713645422185084787.a n = A036487 n

theorem P9713645422185084787.correct : P9713645422185084787.Spec := by
  intro n
  simp only [A036487]

end A036487

/-! ## A036487.P13779016822088269944

`and(-2, n^3)/2`
-/

namespace A036487.P13779016822088269944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (n ^ 3 : ℤ) : ℚ) / 2

end

end A036487.P13779016822088269944

namespace A036487

/-- `and(-2, n^3)/2` -/
def P13779016822088269944.Spec : Prop :=
  ∀ n, P13779016822088269944.a n = (A036487 n : ℚ)

end A036487

/-! ## A036487.P11959147113444834818

`(or(1, n^3)-1)/2`
-/

namespace A036487.P11959147113444834818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n ^ 3) : ℤ) - 1 : ℚ) / 2

end

end A036487.P11959147113444834818

namespace A036487

/-- `(or(1, n^3)-1)/2` -/
def P11959147113444834818.Spec : Prop :=
  ∀ n, P11959147113444834818.a n = (A036487 n : ℚ)

end A036487

/-! ## A036487.P9550631829499723727

`(n^3-n%2)/2`
-/

namespace A036487.P9550631829499723727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 3 : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) / 2

end

end A036487.P9550631829499723727

namespace A036487

/-- `(n^3-n%2)/2` -/
def P9550631829499723727.Spec : Prop :=
  ∀ n, P9550631829499723727.a n = (A036487 n : ℚ)

end A036487

/-! ## A036487.P13536146040251031827

`round(cosh(log(n^3+1)))-1`
-/

namespace A036487.P13536146040251031827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n ^ 3 + 1 : ℝ))) - 1

end

end A036487.P13536146040251031827

namespace A036487

/-- `round(cosh(log(n^3+1)))-1` -/
def P13536146040251031827.Spec : Prop :=
  ∀ n, P13536146040251031827.a n = A036487 n

end A036487

/-! ## A036487.P17079059038158063833

`round(C(n²+n, 2)/(n+2))`
-/

namespace A036487.P17079059038158063833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n ^ 2 + n) 2 : ℚ) / (n + 2 : ℚ))

end

end A036487.P17079059038158063833

namespace A036487

/-- `round(C(n²+n, 2)/(n+2))` -/
def P17079059038158063833.Spec : Prop :=
  ∀ n, P17079059038158063833.a n = A036487 n

end A036487

/-! ## A036487.P12861992667785987886

`∑[∑[a(n-2)+6]]` with `a(0)=0, a(1)=0, a(2)=4, a(3)=5`
-/

namespace A036487.P12861992667785987886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 5] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036487.P12861992667785987886

namespace A036487

/-- `∑[∑[a(n-2)+6]]` -/
def P12861992667785987886.Spec : Prop :=
  ∀ n, (P12861992667785987886.a n : ℤ) = A036487 n

end A036487

/-! ## A036487.P12653395445057073141

`∑[∑[∑[5/a(n-1)]]]` with `a(0)=0, a(1)=0, a(2)=4, a(3)=1`
-/

namespace A036487.P12653395445057073141
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 4, 1] fun n f3 =>
  5 / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036487.P12653395445057073141

namespace A036487

/-- `∑[∑[∑[5/a(n-1)]]]` -/
def P12653395445057073141.Spec : Prop :=
  ∀ n, P12653395445057073141.a n = (A036487 n : ℚ)

end A036487

/-! ## A036487.P9575968494386999660

`∑[∑[∑[floor(a(n-2))]]]` with `a(0)=0, a(1)=0, a(2)=4, a(3)=1, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A036487.P9575968494386999660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 1, 5] fun n f3 =>
  f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036487.P9575968494386999660

namespace A036487

/-- `∑[∑[∑[floor(a(n-2))]]]` -/
def P9575968494386999660.Spec : Prop :=
  ∀ n, (P9575968494386999660.a n : ℤ) = A036487 n

end A036487

/-! ## A036487.P17130311789886084584

`ceil((n²+1)*(n-1)*n²/(4*C(n, 2)+2))`
-/

namespace A036487.P17130311789886084584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 + 1 : ℤ) * (((n : ℤ) - 1) * (n ^ 2 : ℤ)) : ℚ) / (4 * Nat.choose n 2 + 2 : ℚ)⌉

end

end A036487.P17130311789886084584

namespace A036487

/-- `ceil((n²+1)*(n-1)*n²/(4*C(n, 2)+2))` -/
def P17130311789886084584.Spec : Prop :=
  ∀ n, P17130311789886084584.a n = A036487 n

end A036487

/-! ## A036487.P16878136005226380861

`A274324(n)-1`
-/

namespace A036487.P16878136005226380861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 n - 1

end

end A036487.P16878136005226380861

namespace A036487

/-- `A274324(n)-1` -/
def P16878136005226380861.Spec : Prop :=
  ∀ n, P16878136005226380861.a n = A036487 n

end A036487

/-! ## A036487.P2629116661821574984

`(A129957(n)-1)/2`
-/

namespace A036487.P2629116661821574984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129957 n - 1 : ℚ) / 2

end

end A036487.P2629116661821574984

namespace A036487

/-- `(A129957(n)-1)/2` -/
def P2629116661821574984.Spec : Prop :=
  ∀ n, P2629116661821574984.a n = (A036487 n : ℚ)

end A036487

/-! ## A036487.P8119667713619653879

`n^3-A036486(n)`
-/

namespace A036487.P8119667713619653879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - A036486 n

end

end A036487.P8119667713619653879

namespace A036487

/-- `n^3-A036486(n)` -/
def P8119667713619653879.Spec : Prop :=
  ∀ n, P8119667713619653879.a n = A036487 n

end A036487

/-! ## A036487.P13427362790330049003

`Δ[A173704(abs(1-n))]`
-/

namespace A036487.P13427362790330049003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173704 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036487.P13427362790330049003

namespace A036487

/-- `Δ[A173704(abs(1-n))]` -/
def P13427362790330049003.Spec : Prop :=
  ∀ n, P13427362790330049003.a n = A036487 n

end A036487

/-! ## A036487.P15939316112257835114

`abs(A269429(n))-n²`
-/

namespace A036487.P15939316112257835114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A269429 n| - (n ^ 2 : ℤ)

end

end A036487.P15939316112257835114

namespace A036487

/-- `abs(A269429(n))-n²` -/
def P15939316112257835114.Spec : Prop :=
  ∀ n, P15939316112257835114.a n = A036487 n

end A036487

/-! ## A036487.P14546268224021953194

`floor(A084380(n)/2)-1`
-/

namespace A036487.P14546268224021953194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084380 n : ℚ) / 2⌋ - 1

end

end A036487.P14546268224021953194

namespace A036487

/-- `floor(A084380(n)/2)-1` -/
def P14546268224021953194.Spec : Prop :=
  ∀ n, P14546268224021953194.a n = A036487 n

end A036487

/-! ## A036487.P13587876842590239326

`n*∑[n]-A000982(n)`
-/

namespace A036487.P13587876842590239326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A000982 n

end

end A036487.P13587876842590239326

namespace A036487

/-- `n*∑[n]-A000982(n)` -/
def P13587876842590239326.Spec : Prop :=
  ∀ n, P13587876842590239326.a n = A036487 n

end A036487

/-! ## A036487.P15340203961286431521

`A002411(n)-ceil(n²/2)`
-/

namespace A036487.P15340203961286431521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - ⌈(n ^ 2 : ℚ) / 2⌉

end

end A036487.P15340203961286431521

namespace A036487

/-- `A002411(n)-ceil(n²/2)` -/
def P15340203961286431521.Spec : Prop :=
  ∀ n, P15340203961286431521.a n = A036487 n

end A036487

/-! ## A036487.P7349187411200382659

`ceil((n*A000290(n)-1)/2)`
-/

namespace A036487.P7349187411200382659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A000290 n - 1 : ℚ) / 2⌉

end

end A036487.P7349187411200382659

namespace A036487

/-- `ceil((n*A000290(n)-1)/2)` -/
def P7349187411200382659.Spec : Prop :=
  ∀ n, P7349187411200382659.a n = A036487 n

end A036487

/-! ## A036487.P10044120536446562769

`∑[∑[A047225(n+1)]]-n²`
-/

namespace A036487.P10044120536446562769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A036487.P10044120536446562769

namespace A036487

/-- `∑[∑[A047225(n+1)]]-n²` -/
def P10044120536446562769.Spec : Prop :=
  ∀ n, P10044120536446562769.a n = A036487 n

end A036487

/-!
# A036488: Nearest integer to n^(5/2).

The programs for A036488, the canonical program `A036488.P2595074225465789100` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036488 has offset 0).

The definition of A036488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036488.P2595074225465789100

`round(sqrt(n^5))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036488

/-- `round(sqrt(n^5))` -/
def P2595074225465789100.Spec : Prop :=
  ∀ n, P2595074225465789100.a n = A036488 n

theorem P2595074225465789100.correct : P2595074225465789100.Spec := by
  intro n
  simp only [A036488]

end A036488

/-! ## A036488.P15471142199640274722

`or(round(n²*sqrt(n)), char[1])`
-/

namespace A036488.P15471142199640274722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n ^ 2 : ℝ) * Real.sqrt (n : ℝ))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A036488.P15471142199640274722

namespace A036488

/-- `or(round(n²*sqrt(n)), char[1])` -/
def P15471142199640274722.Spec : Prop :=
  ∀ n, P15471142199640274722.a n = A036488 n

end A036488

/-! ## A036488.P10157848582753818119

`floor(n*sqrt(A000578(n)+sqrt(n)))`
-/

namespace A036488.P10157848582753818119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt ((A000578 n : ℝ) + Real.sqrt (n : ℝ))⌋

end

end A036488.P10157848582753818119

namespace A036488

/-- `floor(n*sqrt(A000578(n)+sqrt(n)))` -/
def P10157848582753818119.Spec : Prop :=
  ∀ n, P10157848582753818119.a n = A036488 n

end A036488

/-! ## A036488.P10164123927508138804

`round(n²*sqrt(n))%A001752(n)`
-/

namespace A036488.P10164123927508138804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n ^ 2 : ℝ) * Real.sqrt (n : ℝ))) (A001752 n)

end

end A036488.P10164123927508138804

namespace A036488

/-- `round(n²*sqrt(n))%A001752(n)` -/
def P10164123927508138804.Spec : Prop :=
  ∀ n, P10164123927508138804.a n = A036488 n

end A036488

/-!
# A036489: Nearest integer to n^(7/2).

The programs for A036489, the canonical program `A036489.P15767933812088839644` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036489 has offset 0).

The definition of A036489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036489.P15611309265346881569

`round(sqrt(n^7))`
-/

namespace A036489.P15611309265346881569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 7 : ℝ))

end

end A036489.P15611309265346881569

namespace A036489

/-- `round(sqrt(n^7))` -/
def P15611309265346881569.Spec : Prop :=
  ∀ n, P15611309265346881569.a n = A036489 n

end A036489

/-! ## A036489.P15767933812088839644

`floor(sqrt(A155014(n)+A001015(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036489

/-- `floor(sqrt(A155014(n)+A001015(n)))` -/
def P15767933812088839644.Spec : Prop :=
  ∀ n, P15767933812088839644.a n = A036489 n

theorem P15767933812088839644.correct : P15767933812088839644.Spec := by
  intro n
  simp only [A036489]

end A036489

/-! ## A036489.P6782460009160005099

`round(sqrt(A258806(n)))-A000007(n)`
-/

namespace A036489.P6782460009160005099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A258806 n : ℝ)) - A000007 n

end

end A036489.P6782460009160005099

namespace A036489

/-- `round(sqrt(A258806(n)))-A000007(n)` -/
def P6782460009160005099.Spec : Prop :=
  ∀ n, P6782460009160005099.a n = A036489 n

end A036489

/-! ## A036489.P12878962425926573626

`round(sqrt(A001015(n)))*A057427(n)`
-/

namespace A036489.P12878962425926573626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001015 n : ℝ)) * A057427 n

end

end A036489.P12878962425926573626

namespace A036489

/-- `round(sqrt(A001015(n)))*A057427(n)` -/
def P12878962425926573626.Spec : Prop :=
  ∀ n, P12878962425926573626.a n = A036489 n

end A036489

/-! ## A036489.P17562087146395016677

`round(sqrt(A001015(n)))%A016936(n)`
-/

namespace A036489.P17562087146395016677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001015 n : ℝ))) (A016936 n)

end

end A036489.P17562087146395016677

namespace A036489

/-- `round(sqrt(A001015(n)))%A016936(n)` -/
def P17562087146395016677.Spec : Prop :=
  ∀ n, P17562087146395016677.a n = A036489 n

end A036489

/-! ## A036489.P15496740559398018589

`round(sqrt(A258806(n)))%A002522(n)²`
-/

namespace A036489.P15496740559398018589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A258806 n : ℝ))) (A002522 n ^ 2)

end

end A036489.P15496740559398018589

namespace A036489

/-- `round(sqrt(A258806(n)))%A002522(n)²` -/
def P15496740559398018589.Spec : Prop :=
  ∀ n, P15496740559398018589.a n = A036489 n

end A036489

/-! ## A036489.P18134149055117317301

`round(sqrt(A258806(n)))%A083880(n)`
-/

namespace A036489.P18134149055117317301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A258806 n : ℝ))) (A083880 n)

end

end A036489.P18134149055117317301

namespace A036489

/-- `round(sqrt(A258806(n)))%A083880(n)` -/
def P18134149055117317301.Spec : Prop :=
  ∀ n, P18134149055117317301.a n = A036489 n

end A036489

/-!
# A036490: Numbers whose prime factors are in {5, 7, 11}.

The programs for A036490, there is no canonical definition to state claims against.
-/

/-! ## A036490.P6380470807873910139

`∩[A051038(n+1), A348936(n+1)]`
-/

namespace A036490.P6380470807873910139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036490.P6380470807873910139

/-! ## A036490.P1181573723070726915

`∩[A007310(n+1), A051038(n+2)]`
-/

namespace A036490.P1181573723070726915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036490.P1181573723070726915

/-! ## A036490.P2613302443299431401

`record[A051724(A051038(n+5))]`
-/

namespace A036490.P2613302443299431401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A051038 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036490.P2613302443299431401

/-! ## A036490.P18259205560547277201

`record[gcd(A002264(n), A036491(n+1))]`
-/

namespace A036490.P18259205560547277201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002264 n) (A036491 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036490.P18259205560547277201

/-! ## A036490.P13740368671241847321

`A036491(A261283(2^n))`
-/

namespace A036490.P13740368671241847321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036491 (A261283 (2 ^ n)).toNat

end

end A036490.P13740368671241847321

/-!
# A036493: Largest number having binary order n (A029837) and of which the number of divisors is maximal in that range of g(k) = n.

The programs for A036493, there is no canonical definition to state claims against.
-/

/-! ## A036493.P13288281373637496253

`A329004(2^n)`
-/

namespace A036493.P13288281373637496253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (2 ^ n)

end

end A036493.P13288281373637496253

/-! ## A036493.P16789081147075381578

`record[A329004(A029930(n))]`
-/

namespace A036493.P16789081147075381578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036493.P16789081147075381578

/-! ## A036493.P2734537178925238044

`record[A329004(A055248(n))]`
-/

namespace A036493.P2734537178925238044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036493.P2734537178925238044

/-! ## A036493.P8744730992775909139

`record[A329004(A059148(n))]`
-/

namespace A036493.P8744730992775909139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A059148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036493.P8744730992775909139

/-! ## A036493.P7289885109353780225

`record[A329004(A059268(n))]`
-/

namespace A036493.P7289885109353780225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036493.P7289885109353780225

/-!
# A036494: Nearest integer to n^(9/2).

The programs for A036494, the canonical program `A036494.P4898587190322831383` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036494 has offset 0).

The definition of A036494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036494.P16893209910095490419

`round(sqrt(n^9))`
-/

namespace A036494.P16893209910095490419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 9 : ℝ))

end

end A036494.P16893209910095490419

namespace A036494

/-- `round(sqrt(n^9))` -/
def P16893209910095490419.Spec : Prop :=
  ∀ n, P16893209910095490419.a n = A036494 n

end A036494

/-! ## A036494.P4898587190322831383

`floor(sqrt(A238170(n)+A001017(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036494

/-- `floor(sqrt(A238170(n)+A001017(n)))` -/
def P4898587190322831383.Spec : Prop :=
  ∀ n, P4898587190322831383.a n = A036494 n

theorem P4898587190322831383.correct : P4898587190322831383.Spec := by
  intro n
  simp only [A036494]

end A036494

/-! ## A036494.P988257676548214749

`floor(sqrt(A238170(n)+A196290(n)))`
-/

namespace A036494.P988257676548214749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A238170 n + A196290 n)

end

end A036494.P988257676548214749

namespace A036494

/-- `floor(sqrt(A238170(n)+A196290(n)))` -/
def P988257676548214749.Spec : Prop :=
  ∀ n, P988257676548214749.a n = A036494 n

end A036494

/-! ## A036494.P3384690651305078975

`round(sqrt(A001017(n)+1))-A000007(n)`
-/

namespace A036494.P3384690651305078975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001017 n + 1 : ℝ)) - A000007 n

end

end A036494.P3384690651305078975

namespace A036494

/-- `round(sqrt(A001017(n)+1))-A000007(n)` -/
def P3384690651305078975.Spec : Prop :=
  ∀ n, P3384690651305078975.a n = A036494 n

end A036494

/-! ## A036494.P18054924651814019297

`round(sqrt(A001017(n)+1))*A057427(n)`
-/

namespace A036494.P18054924651814019297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001017 n + 1 : ℝ)) * A057427 n

end

end A036494.P18054924651814019297

namespace A036494

/-- `round(sqrt(A001017(n)+1))*A057427(n)` -/
def P18054924651814019297.Spec : Prop :=
  ∀ n, P18054924651814019297.a n = A036494 n

end A036494

/-!
# A036495: Nearest integer to n^(11/2).

The programs for A036495, the canonical program `A036495.P10875062870581240758` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036495 has offset 0).

The definition of A036495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036495.P10875062870581240758

`round(n^(11/2))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036495

/-- `round(n^(11/2))` -/
def P10875062870581240758.Spec : Prop :=
  ∀ n, P10875062870581240758.a n = A036495 n

theorem P10875062870581240758.correct : P10875062870581240758.Spec := by
  intro n
  simp only [A036495]

end A036495

/-! ## A036495.P10528980141111651439

`floor(sqrt(A155015(n)+A008455(n)))`
-/

namespace A036495.P10528980141111651439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155015 n + A008455 n)

end

end A036495.P10528980141111651439

namespace A036495

/-- `floor(sqrt(A155015(n)+A008455(n)))` -/
def P10528980141111651439.Spec : Prop :=
  ∀ n, P10528980141111651439.a n = A036495 n

end A036495

/-! ## A036495.P12630005223156467051

`round(sqrt(A008455(n)))*A158388(n)`
-/

namespace A036495.P12630005223156467051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008455 n : ℝ)) * A158388 n

end

end A036495.P12630005223156467051

namespace A036495

/-- `round(sqrt(A008455(n)))*A158388(n)` -/
def P12630005223156467051.Spec : Prop :=
  ∀ n, P12630005223156467051.a n = A036495 n

end A036495

/-! ## A036495.P9204682586679664096

`(A000007(n)+1)*round(sqrt(A008455(n)))`
-/

namespace A036495.P9204682586679664096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * SequenceMachineLib.roundAway (Real.sqrt (A008455 n : ℝ))

end

end A036495.P9204682586679664096

namespace A036495

/-- `(A000007(n)+1)*round(sqrt(A008455(n)))` -/
def P9204682586679664096.Spec : Prop :=
  ∀ n, P9204682586679664096.a n = A036495 n

end A036495

/-! ## A036495.P7001424322132668890

`round(sqrt(A008455(n)))*A014963(4*n+2)`
-/

namespace A036495.P7001424322132668890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008455 n : ℝ)) * A014963 (4 * n + 2)

end

end A036495.P7001424322132668890

namespace A036495

/-- `round(sqrt(A008455(n)))*A014963(4*n+2)` -/
def P7001424322132668890.Spec : Prop :=
  ∀ n, P7001424322132668890.a n = A036495 n

end A036495

/-! ## A036495.P13445427699028720723

`round(sqrt(A008455(n)))%A220653(n)`
-/

namespace A036495.P13445427699028720723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008455 n : ℝ))) (A220653 n)

end

end A036495.P13445427699028720723

namespace A036495

/-- `round(sqrt(A008455(n)))%A220653(n)` -/
def P13445427699028720723.Spec : Prop :=
  ∀ n, P13445427699028720723.a n = A036495 n

end A036495

/-!
# A036496: Number of lines that intersect the first n points on a spiral on a triangular lattice. The spiral starts at (0,0), goes to (1,0) and (1/2, sqrt(3)/2) and continues counterclockwise.

The programs for A036496, the canonical program `A036496.P11965980265745924204` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036496 has offset 0).

The definition of A036496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036496.P11965980265745924204

`ceil(record[sqrt(lcm(2, 3*n))])`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036496

/-- `ceil(record[sqrt(lcm(2, 3*n))])` -/
def P11965980265745924204.Spec : Prop :=
  ∀ n, P11965980265745924204.a n = A036496 n

theorem P11965980265745924204.correct : P11965980265745924204.Spec := by
  intro n
  simp only [A036496]

end A036496

/-! ## A036496.P9880698700478619406

`ceil(2*n*sqrt(6/(2*n+1)))`
-/

namespace A036496.P9880698700478619406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) * Real.sqrt (6 / (2 * n + 1 : ℚ) : ℝ)⌉

end

end A036496.P9880698700478619406

namespace A036496

/-- `ceil(2*n*sqrt(6/(2*n+1)))` -/
def P9880698700478619406.Spec : Prop :=
  ∀ n, P9880698700478619406.a n = A036496 n

end A036496

/-! ## A036496.P9225876084584139592

`round(sqrt(a(n-1)+12*n-4))` with `a(0)=0`
-/

namespace A036496.P9225876084584139592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) + (12 * n : ℤ) - 4 : ℝ))

end

end A036496.P9225876084584139592

namespace A036496

/-- `round(sqrt(a(n-1)+12*n-4))` -/
def P9225876084584139592.Spec : Prop :=
  ∀ n, P9225876084584139592.a n = A036496 n

end A036496

/-! ## A036496.P4699905293297733130

`comp[A069905(n+6)-2]-n`
-/

namespace A036496.P4699905293297733130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 6) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A036496.P4699905293297733130

namespace A036496

/-- `comp[A069905(n+6)-2]-n` -/
def P4699905293297733130.Spec : Prop :=
  ∀ n, P4699905293297733130.a n = A036496 n

end A036496

/-! ## A036496.P2941357454345663062

`comp[∑[floor(A008611(n)/2)+1]]-n`
-/

namespace A036496.P2941357454345663062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008611 n : ℚ) / 2⌋ + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A036496.P2941357454345663062

namespace A036496

/-- `comp[∑[floor(A008611(n)/2)+1]]-n` -/
def P2941357454345663062.Spec : Prop :=
  ∀ n, P2941357454345663062.a n = A036496 n

end A036496

/-! ## A036496.P13188000316854665611

`A216522(n)+A047931(n+1)`
-/

namespace A036496.P13188000316854665611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216522 n + A047931 (n + 1)

end

end A036496.P13188000316854665611

namespace A036496

/-- `A216522(n)+A047931(n+1)` -/
def P13188000316854665611.Spec : Prop :=
  ∀ n, P13188000316854665611.a n = A036496 n

end A036496

/-! ## A036496.P6104663529657184845

`A027709(A047238(n+1))/2`
-/

namespace A036496.P6104663529657184845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027709 (A047238 (n + 1)).toNat : ℚ) / 2

end

end A036496.P6104663529657184845

namespace A036496

/-- `A027709(A047238(n+1))/2` -/
def P6104663529657184845.Spec : Prop :=
  ∀ n, P6104663529657184845.a n = (A036496 n : ℚ)

end A036496

/-! ## A036496.P1584533065719943747

`A027709(A004273(n)+n)/2`
-/

namespace A036496.P1584533065719943747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027709 (A004273 n + (n : ℤ)).toNat : ℚ) / 2

end

end A036496.P1584533065719943747

namespace A036496

/-- `A027709(A004273(n)+n)/2` -/
def P1584533065719943747.Spec : Prop :=
  ∀ n, P1584533065719943747.a n = (A036496 n : ℚ)

end A036496

/-! ## A036496.P10800828121950959055

`A055086(A055086(3*n)+3*n)`
-/

namespace A036496.P10800828121950959055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A055086 (3 * n) + (3 * n : ℤ)).toNat

end

end A036496.P10800828121950959055

namespace A036496

/-- `A055086(A055086(3*n)+3*n)` -/
def P10800828121950959055.Spec : Prop :=
  ∀ n, P10800828121950959055.a n = A036496 n

end A036496

/-! ## A036496.P13758694000655287245

`A360924(A047238(n+1))`
-/

namespace A036496.P13758694000655287245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A047238 (n + 1)).toNat

end

end A036496.P13758694000655287245

namespace A036496

/-- `A360924(A047238(n+1))` -/
def P13758694000655287245.Spec : Prop :=
  ∀ n, P13758694000655287245.a n = A036496 n

end A036496

/-! ## A036496.P18276094344489784394

`A121149(n)-Δ[n²]`
-/

namespace A036496.P18276094344489784394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121149 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036496.P18276094344489784394

namespace A036496

/-- `A121149(n)-Δ[n²]` -/
def P18276094344489784394.Spec : Prop :=
  ∀ n, P18276094344489784394.a n = A036496 n

end A036496

/-! ## A036496.P9728232643730605481

`A023443(A121149(n)-2*n)`
-/

namespace A036496.P9728232643730605481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A121149 n - (2 * n : ℤ)).toNat

end

end A036496.P9728232643730605481

namespace A036496

/-- `A023443(A121149(n)-2*n)` -/
def P9728232643730605481.Spec : Prop :=
  ∀ n, P9728232643730605481.a n = A036496 n

end A036496

/-! ## A036496.P6471643441114230219

`A023443(A121149(n)-n-n)`
-/

namespace A036496.P6471643441114230219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A121149 n - (n : ℤ) - (n : ℤ)).toNat

end

end A036496.P6471643441114230219

namespace A036496

/-- `A023443(A121149(n)-n-n)` -/
def P6471643441114230219.Spec : Prop :=
  ∀ n, P6471643441114230219.a n = A036496 n

end A036496

/-!
# A036497: Number of partitions of n into distinct primes (counting 1 as a prime).

The programs for A036497, there is no canonical definition to state claims against.
-/

/-! ## A036497.P14828841357916709247

`A000586(abs(1-n))+A000586(n)`
-/

namespace A036497.P14828841357916709247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 |1 - (n : ℤ)|.toNat + A000586 n

end

end A036497.P14828841357916709247

/-! ## A036497.P166151588050554199

`A298602(n)+2*A339383(n)`
-/

namespace A036497.P166151588050554199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298602 n + 2 * A339383 n

end

end A036497.P166151588050554199

/-! ## A036497.P9030734666702835395

`A339383(n)+A298604(lcm(2, n)%(n+2))`
-/

namespace A036497.P9030734666702835395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 n + A298604 (Nat.lcm 2 n % (n + 2))

end

end A036497.P9030734666702835395

/-! ## A036497.P6369309398471680296

`A339383(n)+A339382(n)`
-/

namespace A036497.P6369309398471680296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 n + A339382 n

end

end A036497.P6369309398471680296

/-! ## A036497.P7615804846086208153

`2*A339382(n)-A298602(n)`
-/

namespace A036497.P7615804846086208153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339382 n - A298602 n

end

end A036497.P7615804846086208153

/-! ## A036497.P7237981095111046081

`A005843(A339382(n))-A298602(n)`
-/

namespace A036497.P7237981095111046081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339382 n).toNat - A298602 n

end

end A036497.P7237981095111046081

/-! ## A036497.P1612754479544065745

`A298602(n)+A005843(A339383(n))`
-/

namespace A036497.P1612754479544065745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298602 n + A005843 (A339383 n).toNat

end

end A036497.P1612754479544065745

/-!
# A036498: Numbers of the form m*(6*m-1) and m*(6*m+1), where m is an integer.

The programs for A036498, the canonical program `A036498.P10792739925690994335` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036498 has offset 1).

The definition of A036498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036498.P10792739925690994335

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=7, a(3)=22, a(4)=26`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036498

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10792739925690994335.Spec : Prop :=
  ∀ n, P10792739925690994335.a n = A036498 (n + 1)

theorem P10792739925690994335.correct : P10792739925690994335.Spec := by
  intro n
  simp only [A036498, Nat.add_sub_cancel]

end A036498

/-! ## A036498.P9927468788425134130

`∑[n*5^(n%2)]`
-/

namespace A036498.P9927468788425134130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P9927468788425134130

namespace A036498

/-- `∑[n*5^(n%2)]` -/
def P9927468788425134130.Spec : Prop :=
  ∀ n, (P9927468788425134130.a n : ℤ) = A036498 (n + 1)

end A036498

/-! ## A036498.P3579431706489586889

`∑[n*5^and(1, n)]`
-/

namespace A036498.P3579431706489586889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P3579431706489586889

namespace A036498

/-- `∑[n*5^and(1, n)]` -/
def P3579431706489586889.Spec : Prop :=
  ∀ n, (P3579431706489586889.a n : ℤ) = A036498 (n + 1)

end A036498

/-! ## A036498.P6842633406058179305

`∑[n*(Δ[xor(1, n)]+2)]`
-/

namespace A036498.P6842633406058179305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P6842633406058179305

namespace A036498

/-- `∑[n*(Δ[xor(1, n)]+2)]` -/
def P6842633406058179305.Spec : Prop :=
  ∀ n, P6842633406058179305.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P17012139835188846500

`∑[n]+(and(1, n)+n)²`
-/

namespace A036498.P17012139835188846500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n + n) ^ 2

end

end A036498.P17012139835188846500

namespace A036498

/-- `∑[n]+(and(1, n)+n)²` -/
def P17012139835188846500.Spec : Prop :=
  ∀ n, (P17012139835188846500.a n : ℤ) = A036498 (n + 1)

end A036498

/-! ## A036498.P15823628471459088103

`∑[n*5^(2-gcd(2, n))]`
-/

namespace A036498.P15823628471459088103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (5 : ℚ) ^ (2 - (Nat.gcd 2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P15823628471459088103

namespace A036498

/-- `∑[n*5^(2-gcd(2, n))]` -/
def P15823628471459088103.Spec : Prop :=
  ∀ n, P15823628471459088103.a n = (A036498 (n + 1) : ℚ)

end A036498

/-! ## A036498.P16103787588211109281

`∑[n*gcd(5, (n+1)%2)]`
-/

namespace A036498.P16103787588211109281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P16103787588211109281

namespace A036498

/-- `∑[n*gcd(5, (n+1)%2)]` -/
def P16103787588211109281.Spec : Prop :=
  ∀ n, (P16103787588211109281.a n : ℤ) = A036498 (n + 1)

end A036498

/-! ## A036498.P16188088825679602800

`∑[4*n*and(1, n)+n]`
-/

namespace A036498.P16188088825679602800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n * Nat.land 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P16188088825679602800

namespace A036498

/-- `∑[4*n*and(1, n)+n]` -/
def P16188088825679602800.Spec : Prop :=
  ∀ n, (P16188088825679602800.a n : ℤ) = A036498 (n + 1)

end A036498

/-! ## A036498.P9820019026828294994

`∑[Δ[(1-or(1, n))²]+n]`
-/

namespace A036498.P9820019026828294994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lor 1 n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P9820019026828294994

namespace A036498

/-- `∑[Δ[(1-or(1, n))²]+n]` -/
def P9820019026828294994.Spec : Prop :=
  ∀ n, P9820019026828294994.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P5123608131542272963

`∑[n*(3-2*(-1)^n)]`
-/

namespace A036498.P5123608131542272963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - 2 * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P5123608131542272963

namespace A036498

/-- `∑[n*(3-2*(-1)^n)]` -/
def P5123608131542272963.Spec : Prop :=
  ∀ n, P5123608131542272963.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P12102338052464841607

`C(or(1, n+1)+n, 2)-∑[n]`
-/

namespace A036498.P12102338052464841607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 (n + 1) + n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036498.P12102338052464841607

namespace A036498

/-- `C(or(1, n+1)+n, 2)-∑[n]` -/
def P12102338052464841607.Spec : Prop :=
  ∀ n, P12102338052464841607.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P9836563979694152734

`∑[n]+∑[2-a(n-1)]²` with `a(0)=0`
-/

namespace A036498.P9836563979694152734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A036498.P9836563979694152734

namespace A036498

/-- `∑[n]+∑[2-a(n-1)]²` -/
def P9836563979694152734.Spec : Prop :=
  ∀ n, P9836563979694152734.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P8572233126681681212

`A014494(n)-∑[n]`
-/

namespace A036498.P8572233126681681212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036498.P8572233126681681212

namespace A036498

/-- `A014494(n)-∑[n]` -/
def P8572233126681681212.Spec : Prop :=
  ∀ n, P8572233126681681212.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P12112096226278857155

`A005891(n)-or(1, n)²`
-/

namespace A036498.P12112096226278857155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - (Nat.lor 1 n ^ 2 : ℤ)

end

end A036498.P12112096226278857155

namespace A036498

/-- `A005891(n)-or(1, n)²` -/
def P12112096226278857155.Spec : Prop :=
  ∀ n, P12112096226278857155.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P8546053949222073602

`A081348(n)+∑[n-1]`
-/

namespace A036498.P8546053949222073602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081348 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036498.P8546053949222073602

namespace A036498

/-- `A081348(n)+∑[n-1]` -/
def P8546053949222073602.Spec : Prop :=
  ∀ n, P8546053949222073602.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P15738903426777624998

`2*A074378(n)-∑[n]`
-/

namespace A036498.P15738903426777624998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074378 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036498.P15738903426777624998

namespace A036498

/-- `2*A074378(n)-∑[n]` -/
def P15738903426777624998.Spec : Prop :=
  ∀ n, P15738903426777624998.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P8250410211150620602

`∑[n]+∑[A010673(n)]²`
-/

namespace A036498.P8250410211150620602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A036498.P8250410211150620602

namespace A036498

/-- `∑[n]+∑[A010673(n)]²` -/
def P8250410211150620602.Spec : Prop :=
  ∀ n, P8250410211150620602.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P7293930311204159791

`∑[n]+Δ[A009001(n)]²`
-/

namespace A036498.P7293930311204159791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (f2 (n + 1) - f2 n) ^ 2

end

end A036498.P7293930311204159791

namespace A036498

/-- `∑[n]+Δ[A009001(n)]²` -/
def P7293930311204159791.Spec : Prop :=
  ∀ n, P7293930311204159791.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P12330773784849409215

`ceil(n/2)*A007310(n+1)`
-/

namespace A036498.P12330773784849409215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A007310 (n + 1)

end

end A036498.P12330773784849409215

namespace A036498

/-- `ceil(n/2)*A007310(n+1)` -/
def P12330773784849409215.Spec : Prop :=
  ∀ n, P12330773784849409215.a n = A036498 (n + 1)

end A036498

/-! ## A036498.P6558249446457899239

`A354595(n+1)-∑[n+1]`
-/

namespace A036498.P6558249446457899239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354595 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036498.P6558249446457899239

namespace A036498

/-- `A354595(n+1)-∑[n+1]` -/
def P6558249446457899239.Spec : Prop :=
  ∀ n, P6558249446457899239.a n = A036498 (n + 1)

end A036498

/-!
# A036499: Numbers of the form k*(k+1)/6 for k = 2 or 3 modulo 6.

The programs for A036499, the canonical program `A036499.P1326911873480367785` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036499 has offset 1).

The definition of A036499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036499.P18246493556934409239

`(n+1)*(3*(n+1)-5)/2+1+(n+1)%2*(2*(n+1)-1)`
-/

namespace A036499.P18246493556934409239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 5) : ℚ) / 2 + 1 + ((((n + 1) % 2 : ℕ) : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ)

end

end A036499.P18246493556934409239

namespace A036499

/-- `(n+1)*(3*(n+1)-5)/2+1+(n+1)%2*(2*(n+1)-1)` -/
def P18246493556934409239.Spec : Prop :=
  ∀ n, P18246493556934409239.a n = (A036499 (n + 1) : ℚ)

end A036499

/-! ## A036499.P1326911873480367785

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=15, a(4)=35`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036499

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1326911873480367785.Spec : Prop :=
  ∀ n, P1326911873480367785.a n = A036499 (n + 1)

theorem P1326911873480367785.correct : P1326911873480367785.Spec := by
  intro n
  simp only [A036499, Nat.add_sub_cancel]

end A036499

/-! ## A036499.P7272030777103520821

`∑[n]+or(1, n)²`
-/

namespace A036499.P7272030777103520821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n ^ 2

end

end A036499.P7272030777103520821

namespace A036499

/-- `∑[n]+or(1, n)²` -/
def P7272030777103520821.Spec : Prop :=
  ∀ n, (P7272030777103520821.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P8511680627062105746

`or(1, n)*comp[3*n]`
-/

namespace A036499.P8511680627062105746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A036499.P8511680627062105746

namespace A036499

/-- `or(1, n)*comp[3*n]` -/
def P8511680627062105746.Spec : Prop :=
  ∀ n, (P8511680627062105746.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P11289959445669616160

`record[C(or(2, n), 2)]-∑[n]`
-/

namespace A036499.P11289959445669616160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A036499.P11289959445669616160

namespace A036499

/-- `record[C(or(2, n), 2)]-∑[n]` -/
def P11289959445669616160.Spec : Prop :=
  ∀ n, P11289959445669616160.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P18110929124031206230

`∑[n*gcd(5, n%2)]+1`
-/

namespace A036499.P18110929124031206230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036499.P18110929124031206230

namespace A036499

/-- `∑[n*gcd(5, n%2)]+1` -/
def P18110929124031206230.Spec : Prop :=
  ∀ n, (P18110929124031206230.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P5259222578219109487

`comp[3*n]²-∑[lcm(2, n)]`
-/

namespace A036499.P5259222578219109487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A036499.P5259222578219109487

namespace A036499

/-- `comp[3*n]²-∑[lcm(2, n)]` -/
def P5259222578219109487.Spec : Prop :=
  ∀ n, P5259222578219109487.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P11796519428735353580

`∑[n]+(char[2*n]+n)²`
-/

namespace A036499.P11796519428735353580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((if ∃ j, f2 j = n then 1 else 0) + n) ^ 2

end

end A036499.P11796519428735353580

namespace A036499

/-- `∑[n]+(char[2*n]+n)²` -/
def P11796519428735353580.Spec : Prop :=
  ∀ n, (P11796519428735353580.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P580833423812686901

`∑[n*5^(a(n-1)%2)]` with `a(0)=1, a(1)=1`
-/

namespace A036499.P580833423812686901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * 5 ^ (f1 (n - 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036499.P580833423812686901

namespace A036499

/-- `∑[n*5^(a(n-1)%2)]` -/
def P580833423812686901.Spec : Prop :=
  ∀ n, (P580833423812686901.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P4904025556846848474

`∑[A035877(n)-n]`
-/

namespace A036499.P4904025556846848474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036499.P4904025556846848474

namespace A036499

/-- `∑[A035877(n)-n]` -/
def P4904025556846848474.Spec : Prop :=
  ∀ n, P4904025556846848474.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P4476749543652852573

`comp[3*n]*A109613(n)`
-/

namespace A036499.P4476749543652852573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A109613 n

end

end A036499.P4476749543652852573

namespace A036499

/-- `comp[3*n]*A109613(n)` -/
def P4476749543652852573.Spec : Prop :=
  ∀ n, P4476749543652852573.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P247655440866052191

`∪[A033568(n), A033570(n)]`
-/

namespace A036499.P247655440866052191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036499.P247655440866052191

namespace A036499

/-- `∪[A033568(n), A033570(n)]` -/
def P247655440866052191.Spec : Prop :=
  ∀ n, (P247655440866052191.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P16102064983856700093

`lcm(A001651(n+1), A109613(n))`
-/

namespace A036499.P16102064983856700093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001651 (n + 1)) (A109613 n)

end

end A036499.P16102064983856700093

namespace A036499

/-- `lcm(A001651(n+1), A109613(n))` -/
def P16102064983856700093.Spec : Prop :=
  ∀ n, (P16102064983856700093.a n : ℤ) = A036499 (n + 1)

end A036499

/-! ## A036499.P13114222717264117251

`A179088(n+1)%A274682(n+1)`
-/

namespace A036499.P13114222717264117251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179088 (n + 1)) (A274682 (n + 1))

end

end A036499.P13114222717264117251

namespace A036499

/-- `A179088(n+1)%A274682(n+1)` -/
def P13114222717264117251.Spec : Prop :=
  ∀ n, P13114222717264117251.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P7126807663294524863

`A357042(n+1)%A287057(n+1)`
-/

namespace A036499.P7126807663294524863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357042 (n + 1)) (A287057 (n + 1))

end

end A036499.P7126807663294524863

namespace A036499

/-- `A357042(n+1)%A287057(n+1)` -/
def P7126807663294524863.Spec : Prop :=
  ∀ n, P7126807663294524863.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P3435851151172375091

`(A008619(n)+A004526(n))*A001651(n+1)`
-/

namespace A036499.P3435851151172375091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n + A004526 n) * A001651 (n + 1)

end

end A036499.P3435851151172375091

namespace A036499

/-- `(A008619(n)+A004526(n))*A001651(n+1)` -/
def P3435851151172375091.Spec : Prop :=
  ∀ n, P3435851151172375091.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P13861543097871131394

`(A110654(n+1)+A004526(n))*A001651(n+1)`
-/

namespace A036499.P13861543097871131394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 (n + 1) + A004526 n) * A001651 (n + 1)

end

end A036499.P13861543097871131394

namespace A036499

/-- `(A110654(n+1)+A004526(n))*A001651(n+1)` -/
def P13861543097871131394.Spec : Prop :=
  ∀ n, P13861543097871131394.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P7550817638690485798

`(A001651(n+1)-A110654(n))*A001651(n+1)`
-/

namespace A036499.P7550817638690485798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) - A110654 n) * A001651 (n + 1)

end

end A036499.P7550817638690485798

namespace A036499

/-- `(A001651(n+1)-A110654(n))*A001651(n+1)` -/
def P7550817638690485798.Spec : Prop :=
  ∀ n, P7550817638690485798.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P4266078799116608549

`(A001651(n+2)-A052938(n))*A001651(n+1)`
-/

namespace A036499.P4266078799116608549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 2) - A052938 n) * A001651 (n + 1)

end

end A036499.P4266078799116608549

namespace A036499

/-- `(A001651(n+2)-A052938(n))*A001651(n+1)` -/
def P4266078799116608549.Spec : Prop :=
  ∀ n, P4266078799116608549.a n = A036499 (n + 1)

end A036499

/-! ## A036499.P6449052348559726503

`(A001651(n+1)-A004526(n+1))*A001651(n+1)`
-/

namespace A036499.P6449052348559726503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) - A004526 (n + 1)) * A001651 (n + 1)

end

end A036499.P6449052348559726503

namespace A036499

/-- `(A001651(n+1)-A004526(n+1))*A001651(n+1)` -/
def P6449052348559726503.Spec : Prop :=
  ∀ n, P6449052348559726503.a n = A036499 (n + 1)

end A036499

