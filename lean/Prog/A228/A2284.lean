import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A228401: The number of permutations of length n sortable by 2 block interchanges.

The programs for A228401, there is no canonical definition to state claims against.
-/

/-! ## A228401.P6429550954584920710

`abs(A352112((n+1)!))`
-/

namespace A228401.P6429550954584920710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352112 (Nat.factorial (n + 1))|

end

end A228401.P6429550954584920710

/-! ## A228401.P6920703712249251128

`abs(A355679((n+1)!))`
-/

namespace A228401.P6920703712249251128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355679 (Nat.factorial (n + 1))|

end

end A228401.P6920703712249251128

/-!
# A228403: The number of boundary twigs for complete binary twigs. A twig is a vertex with one edge on the boundary and only one other descendant.

The programs for A228403, the canonical program `A228403.P6601110408836053115` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228403 has offset 1).

The definition of A228403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228403.P16587151501037219946

`record[(4-6/n)*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A228403.P16587151501037219946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228403.P16587151501037219946

namespace A228403

/-- `record[(4-6/n)*a(n-1)]` -/
def P16587151501037219946.Spec : Prop :=
  ∀ n, P16587151501037219946.a n = (A228403 (n + 1) : ℚ)

end A228403

/-! ## A228403.P7505315758879977872

`A068875(ceil(abs(sin(n)))+n)`
-/

namespace A228403.P7505315758879977872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)).toNat

end

end A228403.P7505315758879977872

namespace A228403

/-- `A068875(ceil(abs(sin(n)))+n)` -/
def P7505315758879977872.Spec : Prop :=
  ∀ n, P7505315758879977872.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P11512729428453278479

`A068875(n+1-floor(acot(n)))`
-/

namespace A228403.P11512729428453278479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 ((n + 1 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A228403.P11512729428453278479

namespace A228403

/-- `A068875(n+1-floor(acot(n)))` -/
def P11512729428453278479.Spec : Prop :=
  ∀ n, P11512729428453278479.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P2739867888815984996

`record[A131428(n)-floor(acot(1-n))]`
-/

namespace A228403.P2739867888815984996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n - ⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228403.P2739867888815984996

namespace A228403

/-- `record[A131428(n)-floor(acot(1-n))]` -/
def P2739867888815984996.Spec : Prop :=
  ∀ n, P2739867888815984996.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P16164209837861651397

`A000108(n+1)*ceil(cosh(sin(n)))`
-/

namespace A228403.P16164209837861651397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A228403.P16164209837861651397

namespace A228403

/-- `A000108(n+1)*ceil(cosh(sin(n)))` -/
def P16164209837861651397.Spec : Prop :=
  ∀ n, P16164209837861651397.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P10600643793358189626

`A068875((n+1)%(2*n+1))`
-/

namespace A228403.P10600643793358189626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 ((n + 1) % (2 * n + 1))

end

end A228403.P10600643793358189626

namespace A228403

/-- `A068875((n+1)%(2*n+1))` -/
def P10600643793358189626.Spec : Prop :=
  ∀ n, P10600643793358189626.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P17479476502202027822

`a(n-1)*ratio[A000108(n)]` with `a(0)=1, a(1)=4`
-/

namespace A228403.P17479476502202027822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A228403.P17479476502202027822

namespace A228403

/-- `a(n-1)*ratio[A000108(n)]` -/
def P17479476502202027822.Spec : Prop :=
  ∀ n, P17479476502202027822.a n = (A228403 (n + 1) : ℚ)

end A228403

/-! ## A228403.P14437665885623621166

`A068875(A087156(n+1))`
-/

namespace A228403.P14437665885623621166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A087156 (n + 1)).toNat

end

end A228403.P14437665885623621166

namespace A228403

/-- `A068875(A087156(n+1))` -/
def P14437665885623621166.Spec : Prop :=
  ∀ n, P14437665885623621166.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P14909093708876482941

`A089408(A103517(n)+2)`
-/

namespace A228403.P14909093708876482941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A103517 n + 2).toNat

end

end A228403.P14909093708876482941

namespace A228403

/-- `A089408(A103517(n)+2)` -/
def P14909093708876482941.Spec : Prop :=
  ∀ n, P14909093708876482941.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P10047030568970520013

`A068875(A199969(n+2))`
-/

namespace A228403.P10047030568970520013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A199969 (n + 2)).toNat

end

end A228403.P10047030568970520013

namespace A228403

/-- `A068875(A199969(n+2))` -/
def P10047030568970520013.Spec : Prop :=
  ∀ n, P10047030568970520013.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P13365719551889430400

`A068875(A057427(n)+n)`
-/

namespace A228403.P13365719551889430400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A057427 n + (n : ℤ)).toNat

end

end A228403.P13365719551889430400

namespace A228403

/-- `A068875(A057427(n)+n)` -/
def P13365719551889430400.Spec : Prop :=
  ∀ n, P13365719551889430400.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P6431989975411343183

`A068875(n-A057428(n))`
-/

namespace A228403.P6431989975411343183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 ((n : ℤ) - A057428 n).toNat

end

end A228403.P6431989975411343183

namespace A228403

/-- `A068875(n-A057428(n))` -/
def P6431989975411343183.Spec : Prop :=
  ∀ n, P6431989975411343183.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P11989705142450778668

`A234040(n)*A382713(n)`
-/

namespace A228403.P11989705142450778668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234040 n * A382713 n

end

end A228403.P11989705142450778668

namespace A228403

/-- `A234040(n)*A382713(n)` -/
def P11989705142450778668.Spec : Prop :=
  ∀ n, P11989705142450778668.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P1923822789021196000

`A068875(A057428(n)²+n)`
-/

namespace A228403.P1923822789021196000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A057428 n ^ 2 + (n : ℤ)).toNat

end

end A228403.P1923822789021196000

namespace A228403

/-- `A068875(A057428(n)²+n)` -/
def P1923822789021196000.Spec : Prop :=
  ∀ n, P1923822789021196000.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P6601110408836053115

`A071716(n+1)+A000245(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228403

/-- `A071716(n+1)+A000245(n)` -/
def P6601110408836053115.Spec : Prop :=
  ∀ n, P6601110408836053115.a n = A228403 (n + 1)

theorem P6601110408836053115.correct : P6601110408836053115.Spec := by
  intro n
  simp only [A228403, Nat.add_sub_cancel]

end A228403

/-! ## A228403.P3211546754091170853

`A131428(n+1)+A057427(n)`
-/

namespace A228403.P3211546754091170853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) + A057427 n

end

end A228403.P3211546754091170853

namespace A228403

/-- `A131428(n+1)+A057427(n)` -/
def P3211546754091170853.Spec : Prop :=
  ∀ n, P3211546754091170853.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P17462801529620683405

`A262543(n+1)+A071721(n)`
-/

namespace A228403.P17462801529620683405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 1) + A071721 n

end

end A228403.P17462801529620683405

namespace A228403

/-- `A262543(n+1)+A071721(n)` -/
def P17462801529620683405.Spec : Prop :=
  ∀ n, P17462801529620683405.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P5072860101325868077

`A068875(n+1-A000007(n))`
-/

namespace A228403.P5072860101325868077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 ((n + 1 : ℤ) - A000007 n).toNat

end

end A228403.P5072860101325868077

namespace A228403

/-- `A068875(n+1-A000007(n))` -/
def P5072860101325868077.Spec : Prop :=
  ∀ n, P5072860101325868077.a n = A228403 (n + 1)

end A228403

/-! ## A228403.P13196455773849916734

`A131428(n+1)-A057428(n)`
-/

namespace A228403.P13196455773849916734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) - A057428 n

end

end A228403.P13196455773849916734

namespace A228403

/-- `A131428(n+1)-A057428(n)` -/
def P13196455773849916734.Spec : Prop :=
  ∀ n, P13196455773849916734.a n = A228403 (n + 1)

end A228403

/-!
# A228404: The number of complete binary trees with bicolored twigs. A twig is a vertex with one child on the boundary and the other child having no descendants.

The programs for A228404, the canonical program `A228404.P6042679917404451421` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228404 has offset 0).

The definition of A228404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228404.P3299950153169592281

`A000108(n)+Δ[A071724(n)]-char[1]`
-/

namespace A228404.P3299950153169592281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A228404.P3299950153169592281

namespace A228404

/-- `A000108(n)+Δ[A071724(n)]-char[1]` -/
def P3299950153169592281.Spec : Prop :=
  ∀ n, P3299950153169592281.a n = A228404 n

end A228404

/-! ## A228404.P598286521792102615

`A099376(A199969(n+1))+A068875(n)`
-/

namespace A228404.P598286521792102615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (A199969 (n + 1)).toNat + A068875 n

end

end A228404.P598286521792102615

namespace A228404

/-- `A099376(A199969(n+1))+A068875(n)` -/
def P598286521792102615.Spec : Prop :=
  ∀ n, P598286521792102615.a n = A228404 n

end A228404

/-! ## A228404.P6042679917404451421

`A026012(n)+A000108(n)%A106640(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228404

/-- `A026012(n)+A000108(n)%A106640(n)` -/
def P6042679917404451421.Spec : Prop :=
  ∀ n, P6042679917404451421.a n = A228404 n

theorem P6042679917404451421.correct : P6042679917404451421.Spec := by
  intro n
  simp only [A228404]

end A228404

/-! ## A228404.P3472014222684520740

`A230585(n+1)-A005508(A004280(n+1))`
-/

namespace A228404.P3472014222684520740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230585 (n + 1) - A005508 (A004280 (n + 1)).toNat

end

end A228404.P3472014222684520740

namespace A228404

/-- `A230585(n+1)-A005508(A004280(n+1))` -/
def P3472014222684520740.Spec : Prop :=
  ∀ n, P3472014222684520740.a n = A228404 n

end A228404

/-! ## A228404.P645951173436911466

`A026012(n)+A000782(n+1)%A071724(n)`
-/

namespace A228404.P645951173436911466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + Int.tmod (A000782 (n + 1)) (A071724 n)

end

end A228404.P645951173436911466

namespace A228404

/-- `A026012(n)+A000782(n+1)%A071724(n)` -/
def P645951173436911466.Spec : Prop :=
  ∀ n, P645951173436911466.a n = A228404 n

end A228404

/-! ## A228404.P504449914864344892

`Δ[A005508(A004280(n+1))-A279557(n)]`
-/

namespace A228404.P504449914864344892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005508 (A004280 (n + 1)).toNat - A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228404.P504449914864344892

namespace A228404

/-- `Δ[A005508(A004280(n+1))-A279557(n)]` -/
def P504449914864344892.Spec : Prop :=
  ∀ n, P504449914864344892.a n = A228404 n

end A228404

/-!
# A228405: Pellian Array, A(n, k) with numbers m such that 2*m^2 +- 2^k is a square, and their corresponding square roots, read downward by diagonals.

The programs for A228405, there is no canonical definition to state claims against.
-/

/-! ## A228405.P3355335060699366744

`A117918(comp[∑[n]])-A117918(n+1)`
-/

namespace A228405.P3355335060699366744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A117918 (n + 1)

end

end A228405.P3355335060699366744

/-! ## A228405.P6380380383809237962

`abs(A117918(A014132(n+1))-A117918(n+1))`
-/

namespace A228405.P6380380383809237962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117918 (A014132 (n + 1)).toNat - A117918 (n + 1)|

end

end A228405.P6380380383809237962

/-! ## A228405.P16616010021923401058

`val(A064319(A187829(n+1)), 2)`
-/

namespace A228405.P16616010021923401058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064319 (A187829 (n + 1)).toNat).toNat 2

end

end A228405.P16616010021923401058

/-! ## A228405.P1527940442087740733

`val(A000027(A064319(n+1)), 2)`
-/

namespace A228405.P1527940442087740733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000027 (A064319 (n + 1)).toNat).toNat 2

end

end A228405.P1527940442087740733

/-! ## A228405.P11901981890442265350

`A090880(gcd(A064319(n+1), A155559(n)))`
-/

namespace A228405.P11901981890442265350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (Int.gcd (A064319 (n + 1)) (A155559 n))

end

end A228405.P11901981890442265350

/-!
# A228406: Sequences from the quartic oscillator.

The programs for A228406, there is no canonical definition to state claims against.
-/

/-! ## A228406.P9460343250349086335

`∑[∑[6*C(4*n, 3)]]`
-/

namespace A228406.P9460343250349086335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (4 * n) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228406.P9460343250349086335

/-! ## A228406.P10093066296187786064

`∑[((4*n)²-4)*(n²+n)]`
-/

namespace A228406.P10093066296187786064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((4 * n) ^ 2 : ℤ) - 4) * (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228406.P10093066296187786064

/-! ## A228406.P2376997592685332444

`∑[A125202(n+1)²]-(n+1)`
-/

namespace A228406.P2376997592685332444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125202 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A228406.P2376997592685332444

/-! ## A228406.P8641870482182013052

`∑[(1-A002943(n))²]-1-n`
-/

namespace A228406.P8641870482182013052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002943 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A228406.P8641870482182013052

/-! ## A228406.P13911918808561852071

`4*∑[A033487(A004273(n))]`
-/

namespace A228406.P13911918808561852071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228406.P13911918808561852071

/-! ## A228406.P5281924892075898685

`record[∑[A158874(n)*A187307(3*(n+1))]]`
-/

namespace A228406.P5281924892075898685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158874 n * A187307 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228406.P5281924892075898685

/-! ## A228406.P4269901523024723701

`abs(∑[A067998(n*(4*n+2))])`
-/

namespace A228406.P4269901523024723701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (n * (4 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A228406.P4269901523024723701

/-!
# A228407: The digits of a(n) and a(n+1) together can be reordered to form a palindromic integer; the lexicographically earliest injective sequence of nonnegative integers with this property.

The programs for A228407, there is no canonical definition to state claims against.
-/

/-! ## A228407.P4150045194748964440

`A007094(A231931(n))`
-/

namespace A228407.P4150045194748964440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A231931 n).toNat

end

end A228407.P4150045194748964440

/-! ## A228407.P3669276326938101180

`A007095(A231933(n))`
-/

namespace A228407.P3669276326938101180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A231933 n).toNat

end

end A228407.P3669276326938101180

/-! ## A228407.P13014182961168218191

`A052421(A231933(n)+1)`
-/

namespace A228407.P13014182961168218191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A231933 n + 1).toNat

end

end A228407.P13014182961168218191

/-! ## A228407.P5665811660913621741

`A007093(A231929(n))%A132106((2*(n+1))²)`
-/

namespace A228407.P5665811660913621741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 (A231929 n).toNat) (A132106 ((2 * (n + 1)) ^ 2))

end

end A228407.P5665811660913621741

/-! ## A228407.P6555177204753407945

`A007093(A231929(n))%A036457(A036470(n))`
-/

namespace A228407.P6555177204753407945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 (A231929 n).toNat) (A036457 (A036470 n).toNat)

end

end A228407.P6555177204753407945

/-! ## A228407.P2851819317872161777

`A231928(n)`
-/

namespace A228407.P2851819317872161777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231928 n

end

end A228407.P2851819317872161777

/-! ## A228407.P17083771432918809797

`A000041(A151934(n))*A007093(A231929(n))`
-/

namespace A228407.P17083771432918809797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151934 n).toNat * A007093 (A231929 n).toNat

end

end A228407.P17083771432918809797

/-! ## A228407.P9275165165968631818

`A007093(A231929(n))/A000041(A151934(n)²)`
-/

namespace A228407.P9275165165968631818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007093 (A231929 n).toNat : ℚ) / (A000041 (A151934 n ^ 2).toNat : ℚ)

end

end A228407.P9275165165968631818

/-!
# A228408: Number of permutations of [n] with exactly two (possibly overlapping) occurrences of some of the consecutive step patterns UUD, UDU, DUU (U=up, D=down).

The programs for A228408, there is no canonical definition to state claims against.
-/

/-! ## A228408.P2042406270175828254

`floor(record[A262300(n+1)/63])`
-/

namespace A228408.P2042406270175828254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262300 (n + 1) : ℚ) / 63

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A228408.P2042406270175828254

/-! ## A228408.P980353448309650009

`A260502(A148924(n))`
-/

namespace A228408.P980353448309650009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260502 (A148924 n).toNat

end

end A228408.P980353448309650009

/-! ## A228408.P11187135806056381617

`∑[A036594(A036611(n))]`
-/

namespace A228408.P11187135806056381617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036594 (A036611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228408.P11187135806056381617

/-!
# A228409: a(n) = 4*mu(n) + 5, where mu is the Moebius function (A008683).

The programs for A228409, the canonical program `A228409.P11464199639772634342` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228409 has offset 1).

The definition of A228409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228409.P11464199639772634342

`or(1, A080847(n+1)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228409

/-- `or(1, A080847(n+1)²)` -/
def P11464199639772634342.Spec : Prop :=
  ∀ n, P11464199639772634342.a n = A228409 (n + 1)

theorem P11464199639772634342.correct : P11464199639772634342.Spec := by
  intro n
  simp only [A228409, Nat.add_sub_cancel]

end A228409

/-! ## A228409.P15930411736920435534

`4*A007423(n+1)+1`
-/

namespace A228409.P15930411736920435534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007423 (n + 1) + 1

end

end A228409.P15930411736920435534

namespace A228409

/-- `4*A007423(n+1)+1` -/
def P15930411736920435534.Spec : Prop :=
  ∀ n, P15930411736920435534.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P2380052288806591200

`4*A008683(n+1)+5`
-/

namespace A228409.P2380052288806591200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008683 (n + 1) + 5

end

end A228409.P2380052288806591200

namespace A228409

/-- `4*A008683(n+1)+5` -/
def P2380052288806591200.Spec : Prop :=
  ∀ n, P2380052288806591200.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P6889361796321417682

`4*A162512(n+1)%2+5`
-/

namespace A228409.P6889361796321417682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A162512 (n + 1)) 2 + 5

end

end A228409.P6889361796321417682

namespace A228409

/-- `4*A162512(n+1)%2+5` -/
def P6889361796321417682.Spec : Prop :=
  ∀ n, P6889361796321417682.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P18034938996507030505

`A135169(A349912(n+1))`
-/

namespace A228409.P18034938996507030505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135169 (A349912 (n + 1)).toNat

end

end A228409.P18034938996507030505

namespace A228409

/-- `A135169(A349912(n+1))` -/
def P18034938996507030505.Spec : Prop :=
  ∀ n, P18034938996507030505.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P6462591408632141689

`4*A000095(A074823(n+1)+1)+1`
-/

namespace A228409.P6462591408632141689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000095 (A074823 (n + 1) + 1).toNat + 1

end

end A228409.P6462591408632141689

namespace A228409

/-- `4*A000095(A074823(n+1)+1)+1` -/
def P6462591408632141689.Spec : Prop :=
  ∀ n, P6462591408632141689.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P13281405662988841879

`A107078(n+1)+(A008683(n+1)+2)²`
-/

namespace A228409.P13281405662988841879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) + (A008683 (n + 1) + 2) ^ 2

end

end A228409.P13281405662988841879

namespace A228409

/-- `A107078(n+1)+(A008683(n+1)+2)²` -/
def P13281405662988841879.Spec : Prop :=
  ∀ n, P13281405662988841879.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P10432625601485853737

`4*A008836(n+1)*A008966(n+1)+5`
-/

namespace A228409.P10432625601485853737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A008836 (n + 1) * A008966 (n + 1)) + 5

end

end A228409.P10432625601485853737

namespace A228409

/-- `4*A008836(n+1)*A008966(n+1)+5` -/
def P10432625601485853737.Spec : Prop :=
  ∀ n, P10432625601485853737.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P16156315326842517856

`A039599(round(A023900(n+1)/A039649(n+1))+6)`
-/

namespace A228409.P16156315326842517856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.roundAway ((A023900 (n + 1) : ℚ) / (A039649 (n + 1) : ℚ)) + 6).toNat

end

end A228409.P16156315326842517856

namespace A228409

/-- `A039599(round(A023900(n+1)/A039649(n+1))+6)` -/
def P16156315326842517856.Spec : Prop :=
  ∀ n, P16156315326842517856.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P9963704609015137287

`A039599(round(A347092(n+1)/A347137(n+1))+6)`
-/

namespace A228409.P9963704609015137287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.roundAway ((A347092 (n + 1) : ℚ) / (A347137 (n + 1) : ℚ)) + 6).toNat

end

end A228409.P9963704609015137287

namespace A228409

/-- `A039599(round(A347092(n+1)/A347137(n+1))+6)` -/
def P9963704609015137287.Spec : Prop :=
  ∀ n, P9963704609015137287.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P12933644219761233862

`and((A008683(n+1)+2)², A134067(A025581(n)+2))+1`
-/

namespace A228409.P12933644219761233862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A008683 (n + 1) + 2) ^ 2) (A134067 (A025581 n + 2).toNat) + 1

end

end A228409.P12933644219761233862

namespace A228409

/-- `and((A008683(n+1)+2)², A134067(A025581(n)+2))+1` -/
def P12933644219761233862.Spec : Prop :=
  ∀ n, P12933644219761233862.a n = A228409 (n + 1)

end A228409

/-! ## A228409.P3450850859550266305

`A039599(A282634(∑[n]+2)+6)`
-/

namespace A228409.P3450850859550266305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 6).toNat

end

end A228409.P3450850859550266305

namespace A228409

/-- `A039599(A282634(∑[n]+2)+6)` -/
def P3450850859550266305.Spec : Prop :=
  ∀ n, P3450850859550266305.a n = A228409 (n + 1)

end A228409

/-!
# A228411: G.f.: ( (1 - sqrt(1-32*x)) / (16*x) )^(1/4).

The programs for A228411, there is no canonical definition to state claims against.
-/

/-! ## A228411.P11430743738788030345

`A358176(A094577(n)-A000217(n))`
-/

namespace A228411.P11430743738788030345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358176 (A094577 n - A000217 n).toNat

end

end A228411.P11430743738788030345

/-!
# A228414: Count of the first 10^n primes which do not contain the digit 2.

The programs for A228414, there is no canonical definition to state claims against.
-/

/-! ## A228414.P10965607170163522263

`A001019(n)-A001316(A084641(n))`
-/

namespace A228414.P10965607170163522263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A001316 (A084641 n).toNat

end

end A228414.P10965607170163522263

/-!
# A228416: Count of the first 10^n primes which do not contain the digit 4.

The programs for A228416, there is no canonical definition to state claims against.
-/

/-! ## A228416.P13632601588132391787

`10^n-A231790(A028310(n))`
-/

namespace A228416.P13632601588132391787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A231790 (A028310 n).toNat

end

end A228416.P13632601588132391787

/-!
# A228418: Count of the first 10^n primes which do not contain the digit 6.

The programs for A228418, there is no canonical definition to state claims against.
-/

/-! ## A228418.P9125935626327214474

`A011557(n)-A231793(A028310(n))`
-/

namespace A228418.P9125935626327214474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A231793 (A028310 n).toNat

end

end A228418.P9125935626327214474

/-!
# A228420: Count of the first 10^n primes which do not contain the digit 8.

The programs for A228420, there is no canonical definition to state claims against.
-/

/-! ## A228420.P12016012136143532415

`A011557(n)-A231795(A028310(n))`
-/

namespace A228420.P12016012136143532415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A231795 (A028310 n).toNat

end

end A228420.P12016012136143532415

/-!
# A228422: Number of permutations of [n] with exactly two (possibly overlapping) occurrences of some of the consecutive patterns 123, 1432, 2431, 3421.

The programs for A228422, there is no canonical definition to state claims against.
-/

/-! ## A228422.P8547708561874985860

`A105517(A000699(n))`
-/

namespace A228422.P8547708561874985860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A000699 n).toNat

end

end A228422.P8547708561874985860

/-! ## A228422.P17930027897963162972

`A268443(A078481(n))`
-/

namespace A228422.P17930027897963162972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268443 (A078481 n).toNat

end

end A228422.P17930027897963162972

/-! ## A228422.P12167217277667525898

`A258239(A097081(n))`
-/

namespace A228422.P12167217277667525898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258239 (A097081 n).toNat

end

end A228422.P12167217277667525898

/-!
# A228423: Sum of the squared primes less than or equal to n.

The programs for A228423, there is no canonical definition to state claims against.
-/

/-! ## A228423.P3131195869639481290

`∑{p}[floor(sqrt(n+1))!, #²]`
-/

namespace A228423.P3131195869639481290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 2

end

end A228423.P3131195869639481290

/-! ## A228423.P13876980207274522164

`∑{p}[∏[∏{p}[∏{p}[n+1, (n+1)/#]%(n+1), #]], #²]`
-/

namespace A228423.P13876980207274522164
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f4 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 2

end

end A228423.P13876980207274522164

/-! ## A228423.P4870852758316084127

`∑[and(floor(atan(n)+n), ∏{e}[n+1, -val(n+2, #+n)])]`
-/

namespace A228423.P4870852758316084127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ (∏ p ∈ Nat.primeFactors (f2 n), (-(SequenceMachineLib.valuation (n + 2) (Nat.factorization (f2 n) p + n) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228423.P4870852758316084127

/-! ## A228423.P8601299051686523423

`∑[and(ceil(sqrt(∑[2*n])), ∏{e}[n+1, -val(n+2, #+n)])]`
-/

namespace A228423.P8601299051686523423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉ (∏ p ∈ Nat.primeFactors (f3 n), (-(SequenceMachineLib.valuation (n + 2) (Nat.factorization (f3 n) p + n) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228423.P8601299051686523423

/-! ## A228423.P3528723427304806438

`∑[((n+1)^floor(∏{e}[n+1, #+1]/2))%((n+1)²/∏{p}[n+1, #])]`
-/

namespace A228423.P3528723427304806438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌋ : ℤ))) (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228423.P3528723427304806438

/-! ## A228423.P6416319766734481930

`A081738(floor(sqrt(n+1)))`
-/

namespace A228423.P6416319766734481930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081738 (Nat.sqrt (n + 1))

end

end A228423.P6416319766734481930

/-! ## A228423.P9839758061707523772

`∑{p}[A045948(n+1), #²]`
-/

namespace A228423.P9839758061707523772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A228423.P9839758061707523772

/-! ## A228423.P10574461176572006615

`∑{p}[A104588(n+1), #²]`
-/

namespace A228423.P10574461176572006615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A228423.P10574461176572006615

/-! ## A228423.P7543738748225712597

`∑[(n+1)*A302048(n+1)]`
-/

namespace A228423.P7543738748225712597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228423.P7543738748225712597

/-! ## A228423.P2266452884746077194

`∑[(n+1)*A353798((n+1)²)]`
-/

namespace A228423.P2266452884746077194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353798 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228423.P2266452884746077194

/-!
# A228424: Primes that can be written as a sum of a triangular number and a square.

The programs for A228424, the canonical program `A228424.P14777664184750451603` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228424 has offset 1).

The definition of A228424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1060 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228424.P14777664184750451603

`p?[A014133(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A228424

/-- `p?[A014133(n+1)]` -/
def P14777664184750451603.Spec : Prop :=
  ∀ n, P14777664184750451603.a n = A228424 (n + 1)

theorem P14777664184750451603.correct : P14777664184750451603.Spec := by
  intro n
  simp only [A228424, Nat.add_sub_cancel]

end A228424

/-! ## A228424.P11100348411357207158

`filter[A014133(n+2), A010051(#)]`
-/

namespace A228424.P11100348411357207158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A228424.P11100348411357207158

namespace A228424

/-- `filter[A014133(n+2), A010051(#)]` -/
def P11100348411357207158.Spec : Prop :=
  ∀ n, P11100348411357207158.a n = A228424 (n + 1)

end A228424

/-! ## A228424.P12688779565282528178

`∩[A000040(n+1), A014133(n+1)]`
-/

namespace A228424.P12688779565282528178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228424.P12688779565282528178

namespace A228424

/-- `∩[A000040(n+1), A014133(n+1)]` -/
def P12688779565282528178.Spec : Prop :=
  ∀ n, (P12688779565282528178.a n : ℤ) = A228424 (n + 1)

end A228424

/-! ## A228424.P158373501654064568

`∩[A014133(n+1), A393213(n+1)]`
-/

namespace A228424.P158373501654064568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228424.P158373501654064568

namespace A228424

/-- `∩[A014133(n+1), A393213(n+1)]` -/
def P158373501654064568.Spec : Prop :=
  ∀ n, (P158373501654064568.a n : ℤ) = A228424 (n + 1)

end A228424

/-! ## A228424.P820177988982944182

`filter[A014133(n+3), A080339(#)]`
-/

namespace A228424.P820177988982944182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014133 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A228424.P820177988982944182

namespace A228424

/-- `filter[A014133(n+3), A080339(#)]` -/
def P820177988982944182.Spec : Prop :=
  ∀ n, P820177988982944182.a n = A228424 (n + 1)

end A228424

/-!
# A228425: Number of ways to write n = x + y (x, y > 0) with x*(x+1)/2 + y^2 prime.

The programs for A228425, there is no canonical definition to state claims against.
-/

/-! ## A228425.P17965556271005176376

`∑{p}[A319314(n+1), A351092(#)]`
-/

namespace A228425.P17965556271005176376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A351092 p

end

end A228425.P17965556271005176376

/-! ## A228425.P11111954044229974763

`∑{p}[A319314(n+1), A319318(A319345(#))]`
-/

namespace A228425.P11111954044229974763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A319318 (A319345 p).toNat

end

end A228425.P11111954044229974763

/-! ## A228425.P8246971150708255617

`A001221(A236002(n)-A000071(n+1))`
-/

namespace A228425.P8246971150708255617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A236002 n - A000071 (n + 1)).toNat

end

end A228425.P8246971150708255617

/-! ## A228425.P6935638210541853831

`A001221(A298802(n)-A000217(n))`
-/

namespace A228425.P6935638210541853831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A298802 n - A000217 n).toNat

end

end A228425.P6935638210541853831

/-! ## A228425.P9595077731855348156

`A115722(A000097(n)*A329153(n+1))`
-/

namespace A228425.P9595077731855348156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A000097 n * A329153 (n + 1)).toNat

end

end A228425.P9595077731855348156

/-!
# A228427: Denominator of Sum_{i=1..n-1} 1/i^(2*n-1).

The programs for A228427, there is no canonical definition to state claims against.
-/

/-! ## A228427.P3532644725173198105

`∏[∏{p}[n^(n+2), #]]^(2*n+1)`
-/

namespace A228427.P3532644725173198105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ (2 * n + 1)

end

end A228427.P3532644725173198105

/-!
# A228428: Number of ways to write n = x + y (x, y > 0) with p(99, x) + p(100, y) prime, where p(m, k) denotes the m-gonal number (m-2)*k*(k-1)/2 + k.

The programs for A228428, there is no canonical definition to state claims against.
-/

/-! ## A228428.P11713915961065230983

`A238529(xor(A196700(n+1), A234475(n+1)))`
-/

namespace A228428.P11713915961065230983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 (Int.xor (A196700 (n + 1)) (A234475 (n + 1))).toNat

end

end A228428.P11713915961065230983

/-! ## A228428.P13521739800565741877

`gcd(∑[n]², A077267(A002445(n)))`
-/

namespace A228428.P13521739800565741877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A077267 (A002445 n).toNat)

end

end A228428.P13521739800565741877

/-! ## A228428.P5877251789108785565

`A001221(A035430(record[A144650(n+1)]))`
-/

namespace A228428.P5877251789108785565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A035430 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A228428.P5877251789108785565

/-! ## A228428.P15978652066560481257

`A333628(or(A001055(n+3), A332283(n)))`
-/

namespace A228428.P15978652066560481257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333628 (Int.lor (A001055 (n + 3)) (A332283 n)).toNat

end

end A228428.P15978652066560481257

/-!
# A228429: Number of ways to write n = x + y (x, y > 0) with p(39, x) + p(40, y) prime, where p(m, k) denotes the m-gonal number (m-2)*k*(k-1)/2 + k.

The programs for A228429, there is no canonical definition to state claims against.
-/

/-! ## A228429.P2530885234357701240

`A004218(gcd(A104350(n+1), A322793(n+1)))`
-/

namespace A228429.P2530885234357701240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (Int.gcd (A104350 (n + 1)) (A322793 (n + 1)))

end

end A228429.P2530885234357701240

/-! ## A228429.P12334514938420704785

`∑{e}[or(A000129(n), A252820(n+1)), #]`
-/

namespace A228429.P12334514938420704785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000129 n) (A252820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A228429.P12334514938420704785

/-! ## A228429.P12824453645285427593

`∑{e}[or(A215928(n), A252820(n+1)), #]`
-/

namespace A228429.P12824453645285427593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215928 n) (A252820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A228429.P12824453645285427593

/-! ## A228429.P17782925916782105248

`A071575(A118759(record[A161955(n+1)]))`
-/

namespace A228429.P17782925916782105248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071575 (A118759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A228429.P17782925916782105248

/-! ## A228429.P757826298466836383

`A127322(∏{p}[A271816(n+1), #])`
-/

namespace A228429.P757826298466836383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A228429.P757826298466836383

/-!
# A228430: Number of ways to write n = x + y (x, y > 0) with x^4 + y*(y+1)/2 prime.

The programs for A228430, there is no canonical definition to state claims against.
-/

/-! ## A228430.P16113398012105907582

`A256479(A305900(3*(n+1))+A198318(3*n+4))`
-/

namespace A228430.P16113398012105907582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256479 (A305900 (3 * (n + 1)) + A198318 (3 * n + 4)).toNat

end

end A228430.P16113398012105907582

/-! ## A228430.P8057556310364010

`A102669(A060525(n+1)*A152998(n))`
-/

namespace A228430.P8057556310364010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A060525 (n + 1) * A152998 n).toNat

end

end A228430.P8057556310364010

/-! ## A228430.P9475023150582212379

`A253948(n+1)%A172471(A077157(n))`
-/

namespace A228430.P9475023150582212379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253948 (n + 1)) (A172471 (A077157 n).toNat)

end

end A228430.P9475023150582212379

/-! ## A228430.P17380924822948924230

`A102669(A073633(n+1)*A114228(n+2))`
-/

namespace A228430.P17380924822948924230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A073633 (n + 1) * A114228 (n + 2)).toNat

end

end A228430.P17380924822948924230

/-! ## A228430.P15491997423800564734

`A109073(A287943(2*n+1)-A076493(n))`
-/

namespace A228430.P15491997423800564734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109073 (A287943 (2 * n + 1) - A076493 n).toNat

end

end A228430.P15491997423800564734

/-!
# A228434: Primes expressible as sigma(n) + sigma(sigma(n)), in order of their occurrence.

The programs for A228434, the canonical program `A228434.P4418632704616501950` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228434 has offset 1).

The definition of A228434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228434.P4418632704616501950

`p?[A000203(n+1)+A000203(A000203(n+1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228434

/-- `p?[A000203(n+1)+A000203(A000203(n+1))]` -/
def P4418632704616501950.Spec : Prop :=
  ∀ n, P4418632704616501950.a n = A228434 (n + 1)

theorem P4418632704616501950.correct : P4418632704616501950.Spec := by
  intro n
  simp only [A228434, Nat.add_sub_cancel]

end A228434

/-! ## A228434.P2542540795198231307

`p?[A051027(n+1)+A000203(n+1)]`
-/

namespace A228434.P2542540795198231307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P2542540795198231307

namespace A228434

/-- `p?[A051027(n+1)+A000203(n+1)]` -/
def P2542540795198231307.Spec : Prop :=
  ∀ n, P2542540795198231307.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P8075126114926222445

`p?[A155085(∑{d}[n+1, #])]`
-/

namespace A228434.P8075126114926222445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P8075126114926222445

namespace A228434

/-- `p?[A155085(∑{d}[n+1, #])]` -/
def P8075126114926222445.Spec : Prop :=
  ∀ n, P8075126114926222445.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P6254446675101938397

`p?[A155085(A000203(n+1))]`
-/

namespace A228434.P6254446675101938397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P6254446675101938397

namespace A228434

/-- `p?[A155085(A000203(n+1))]` -/
def P6254446675101938397.Spec : Prop :=
  ∀ n, P6254446675101938397.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P9129451870391599841

`p?[A155085(abs(A143348(n+1)))]`
-/

namespace A228434.P9129451870391599841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 |A143348 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P9129451870391599841

namespace A228434

/-- `p?[A155085(abs(A143348(n+1)))]` -/
def P9129451870391599841.Spec : Prop :=
  ∀ n, P9129451870391599841.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P12728232367869570293

`p?[A155085(sqrt(A072861(n+1)))]`
-/

namespace A228434.P12728232367869570293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P12728232367869570293

namespace A228434

/-- `p?[A155085(sqrt(A072861(n+1)))]` -/
def P12728232367869570293.Spec : Prop :=
  ∀ n, P12728232367869570293.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P6359300467139446172

`p?[A155085(A245092(2*n+1))]`
-/

namespace A228434.P6359300467139446172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P6359300467139446172

namespace A228434

/-- `p?[A155085(A245092(2*n+1))]` -/
def P6359300467139446172.Spec : Prop :=
  ∀ n, P6359300467139446172.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P5791672316266936789

`p?[A155085(A001065(n+1)+n+1)]`
-/

namespace A228434.P5791672316266936789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P5791672316266936789

namespace A228434

/-- `p?[A155085(A001065(n+1)+n+1)]` -/
def P5791672316266936789.Spec : Prop :=
  ∀ n, P5791672316266936789.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P1818553045928213350

`p?[A155085(A155085(n+1)-(n+1))]`
-/

namespace A228434.P1818553045928213350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P1818553045928213350

namespace A228434

/-- `p?[A155085(A155085(n+1)-(n+1))]` -/
def P1818553045928213350.Spec : Prop :=
  ∀ n, P1818553045928213350.a n = A228434 (n + 1)

end A228434

/-! ## A228434.P12287788489063307654

`p?[A155085(A064987(n+1)/(n+1))]`
-/

namespace A228434.P12287788489063307654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228434.P12287788489063307654

namespace A228434

/-- `p?[A155085(A064987(n+1)/(n+1))]` -/
def P12287788489063307654.Spec : Prop :=
  ∀ n, P12287788489063307654.a n = A228434 (n + 1)

end A228434

/-!
# A228436: Odd n such that n*d are both odious (A000069) or both evil (A001969) for every divisor d of n.

The programs for A228436, there is no canonical definition to state claims against.
-/

/-! ## A228436.P13673290292863566737

`A336374(lt[A000045(n), A268819(n+1)])`
-/

namespace A228436.P13673290292863566737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228436.P13673290292863566737

/-! ## A228436.P5453010787495990630

`eq[0, A229946(A020703(n+1))]`
-/

namespace A228436.P5453010787495990630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229946 (A020703 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228436.P5453010787495990630

/-! ## A228436.P8275945533090226827

`∑[A001223(Δ[A222919(n+1)])]`
-/

namespace A228436.P8275945533090226827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228436.P8275945533090226827

/-!
# A228437: Denominator of n/24.

The programs for A228437, the canonical program `A228437.P12531262286154695613` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228437 has offset 0).

The definition of A228437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228437.P12531262286154695613

`24/gcd(24, n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228437

/-- `24/gcd(24, n)` -/
def P12531262286154695613.Spec : Prop :=
  ∀ n, P12531262286154695613.a n = (A228437 n : ℚ)

end A228437

/-!
# A228439: Numbers k dividing u(k), where the Lucas sequence is defined u(i) = u(i-1) - 2*u(i-2) with initial conditions u(0)=0, u(1)=1.

The programs for A228439, there is no canonical definition to state claims against.
-/

/-! ## A228439.P13095564142813902577

`∑[A109606(record[A075502(n+1)])+1]`
-/

namespace A228439.P13095564142813902577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075502 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228439.P13095564142813902577

/-! ## A228439.P3183877724454874746

`(A109808(n+1)/2)%A034685(A075643(n+4))`
-/

namespace A228439.P3183877724454874746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A109808 (n + 1) : ℚ) / 2)) (A034685 (A075643 (n + 4)).toNat)

end

end A228439.P3183877724454874746

/-!
# A228441: Expansion of Sum_{k>0} -(-x)^k / (1 + x^k).

The programs for A228441, the canonical program `A228441.P14298159713898062808` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228441 has offset 1).

The definition of A228441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305152, A348952, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228441.P14298159713898062808

`A305152(n+1)-A348952(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A228441

/-- `A305152(n+1)-A348952(n+1)` -/
def P14298159713898062808.Spec : Prop :=
  ∀ n, P14298159713898062808.a n = A228441 (n + 1)

theorem P14298159713898062808.correct : P14298159713898062808.Spec := by
  intro n
  simp only [A228441, Nat.add_sub_cancel]

end A228441

/-! ## A228441.P5833055466686687549

`4*A320111(n+1)-3*A000005(n+1)`
-/

namespace A228441.P5833055466686687549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320111 (n + 1) - 3 * A000005 (n + 1)

end

end A228441.P5833055466686687549

namespace A228441

/-- `4*A320111(n+1)-3*A000005(n+1)` -/
def P5833055466686687549.Spec : Prop :=
  ∀ n, P5833055466686687549.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P18267913079211752121

`∑{d}[n+1, 1-and(4, #²)]`
-/

namespace A228441.P18267913079211752121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.land 4 (d ^ 2) : ℤ))

end

end A228441.P18267913079211752121

namespace A228441

/-- `∑{d}[n+1, 1-and(4, #²)]` -/
def P18267913079211752121.Spec : Prop :=
  ∀ n, P18267913079211752121.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P2103499302814405166

`∑{d}[n+1, A176563(#-1)]`
-/

namespace A228441.P2103499302814405166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176563 (d - 1)

end

end A228441.P2103499302814405166

namespace A228441

/-- `∑{d}[n+1, A176563(#-1)]` -/
def P2103499302814405166.Spec : Prop :=
  ∀ n, P2103499302814405166.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P14782895774833337810

`A094572(n+1)-A000005(n+1)`
-/

namespace A228441.P14782895774833337810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094572 (n + 1) - A000005 (n + 1)

end

end A228441.P14782895774833337810

namespace A228441

/-- `A094572(n+1)-A000005(n+1)` -/
def P14782895774833337810.Spec : Prop :=
  ∀ n, P14782895774833337810.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P9805202784097132020

`2*A305152(n+1)-Δ[A000196(n)]`
-/

namespace A228441.P9805202784097132020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305152 (n + 1) - (f1 (n + 1) - f1 n)

end

end A228441.P9805202784097132020

namespace A228441

/-- `2*A305152(n+1)-Δ[A000196(n)]` -/
def P9805202784097132020.Spec : Prop :=
  ∀ n, P9805202784097132020.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P12453207863277723928

`2*A305152(n+1)-char[A005563(n)]`
-/

namespace A228441.P12453207863277723928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305152 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A228441.P12453207863277723928

namespace A228441

/-- `2*A305152(n+1)-char[A005563(n)]` -/
def P12453207863277723928.Spec : Prop :=
  ∀ n, P12453207863277723928.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P3544961218616208269

`2*A305152(n+1)-char[A067998(n)]`
-/

namespace A228441.P3544961218616208269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305152 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A228441.P3544961218616208269

namespace A228441

/-- `2*A305152(n+1)-char[A067998(n)]` -/
def P3544961218616208269.Spec : Prop :=
  ∀ n, P3544961218616208269.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P15796876696126367907

`2*A112329(n+1)-A000005(n+1)`
-/

namespace A228441.P15796876696126367907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112329 (n + 1) - A000005 (n + 1)

end

end A228441.P15796876696126367907

namespace A228441

/-- `2*A112329(n+1)-A000005(n+1)` -/
def P15796876696126367907.Spec : Prop :=
  ∀ n, P15796876696126367907.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P4661445892847267193

`∑{d}[n+1, A000593(#)*A117212((n+1)/#)]`
-/

namespace A228441.P4661445892847267193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228441.P4661445892847267193

namespace A228441

/-- `∑{d}[n+1, A000593(#)*A117212((n+1)/#)]` -/
def P4661445892847267193.Spec : Prop :=
  ∀ n, P4661445892847267193.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P14305330656641360411

`∑{d}[n+1, A023900(#)*A115607((n+1)/#)]`
-/

namespace A228441.P14305330656641360411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A115607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228441.P14305330656641360411

namespace A228441

/-- `∑{d}[n+1, A023900(#)*A115607((n+1)/#)]` -/
def P14305330656641360411.Spec : Prop :=
  ∀ n, P14305330656641360411.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P722550683666402442

`∑{d}[n+1, A008683(#)*A369100((n+1)/#)]`
-/

namespace A228441.P722550683666402442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A369100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228441.P722550683666402442

namespace A228441

/-- `∑{d}[n+1, A008683(#)*A369100((n+1)/#)]` -/
def P722550683666402442.Spec : Prop :=
  ∀ n, P722550683666402442.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P10176763498967822297

`∑{d}[n+1, A118209(#)*A300894((n+1)/#)]`
-/

namespace A228441.P10176763498967822297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118209 d * A300894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228441.P10176763498967822297

namespace A228441

/-- `∑{d}[n+1, A118209(#)*A300894((n+1)/#)]` -/
def P10176763498967822297.Spec : Prop :=
  ∀ n, P10176763498967822297.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P2647081728522758029

`∑{d}[n+1, A288571(#)*A361019((n+1)/#)]`
-/

namespace A228441.P2647081728522758029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288571 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228441.P2647081728522758029

namespace A228441

/-- `∑{d}[n+1, A288571(#)*A361019((n+1)/#)]` -/
def P2647081728522758029.Spec : Prop :=
  ∀ n, P2647081728522758029.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P7427660614358913539

`∑{d}[n+1, A328487(#)*A328722((n+1)/#)]`
-/

namespace A228441.P7427660614358913539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328487 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A228441.P7427660614358913539

namespace A228441

/-- `∑{d}[n+1, A328487(#)*A328722((n+1)/#)]` -/
def P7427660614358913539.Spec : Prop :=
  ∀ n, P7427660614358913539.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P6045437986791800398

`∑{d}[n+1, A033999(#-1)*A033999((n+1)/#-1)]`
-/

namespace A228441.P6045437986791800398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A228441.P6045437986791800398

namespace A228441

/-- `∑{d}[n+1, A033999(#-1)*A033999((n+1)/#-1)]` -/
def P6045437986791800398.Spec : Prop :=
  ∀ n, P6045437986791800398.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P10377984702923322300

`2*A305152(n+1)-A000035(A302707(n))`
-/

namespace A228441.P10377984702923322300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305152 (n + 1) - A000035 (A302707 n).toNat

end

end A228441.P10377984702923322300

namespace A228441

/-- `2*A305152(n+1)-A000035(A302707(n))` -/
def P10377984702923322300.Spec : Prop :=
  ∀ n, P10377984702923322300.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P9372021538909004192

`2*A305152(n+1)-A000035(A000005(n+1))`
-/

namespace A228441.P9372021538909004192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305152 (n + 1) - A000035 (A000005 (n + 1)).toNat

end

end A228441.P9372021538909004192

namespace A228441

/-- `2*A305152(n+1)-A000035(A000005(n+1))` -/
def P9372021538909004192.Spec : Prop :=
  ∀ n, P9372021538909004192.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P9393301993735764013

`2*A305152(n+1)-A000035(A112329(n+1))`
-/

namespace A228441.P9393301993735764013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305152 (n + 1) - A000035 (A112329 (n + 1)).toNat

end

end A228441.P9393301993735764013

namespace A228441

/-- `2*A305152(n+1)-A000035(A112329(n+1))` -/
def P9393301993735764013.Spec : Prop :=
  ∀ n, P9393301993735764013.a n = A228441 (n + 1)

end A228441

/-! ## A228441.P713260976575042973

`A094572(n+1)-(A183063(n+1)+A001227(n+1))`
-/

namespace A228441.P713260976575042973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094572 (n + 1) - (A183063 (n + 1) + A001227 (n + 1))

end

end A228441.P713260976575042973

namespace A228441

/-- `A094572(n+1)-(A183063(n+1)+A001227(n+1))` -/
def P713260976575042973.Spec : Prop :=
  ∀ n, P713260976575042973.a n = A228441 (n + 1)

end A228441

/-!
# A228442: Ending letter of a(n) equals starting letter of a(n+1), when spelled out in German; always choose the smallest possible number not yet used and not ending the sequence.

The programs for A228442, there is no canonical definition to state claims against.
-/

/-! ## A228442.P236661492024434796

`A002033(3*n)+A000720(A129410(n+1))`
-/

namespace A228442.P236661492024434796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (3 * n) + A000720 (A129410 (n + 1)).toNat

end

end A228442.P236661492024434796

/-!
# A228443: G.f.: Sum_{k>=0} (2*k + 1) * x^k / (1 + x^(2*k + 1)).

The programs for A228443, the canonical program `A228443.P11248528158286629393` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228443 has offset 0).

The definition of A228443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228443.P11248528158286629393

`abs(∑{d}[A009001(2*n+1), A009001(#)])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228443

/-- `abs(∑{d}[A009001(2*n+1), A009001(#)])` -/
def P11248528158286629393.Spec : Prop :=
  ∀ n, P11248528158286629393.a n = A228443 n

theorem P11248528158286629393.correct : P11248528158286629393.Spec := by
  intro n
  simp only [A228443]

end A228443

/-! ## A228443.P18168444324766647944

`abs(A326049(2*n+1)-A326052(2*n+1))`
-/

namespace A228443.P18168444324766647944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326049 (2 * n + 1) - A326052 (2 * n + 1)|

end

end A228443.P18168444324766647944

namespace A228443

/-- `abs(A326049(2*n+1)-A326052(2*n+1))` -/
def P18168444324766647944.Spec : Prop :=
  ∀ n, P18168444324766647944.a n = A228443 n

end A228443

/-! ## A228443.P489372204028063976

`A050469(Δ[n²])`
-/

namespace A228443.P489372204028063976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228443.P489372204028063976

namespace A228443

/-- `A050469(Δ[n²])` -/
def P489372204028063976.Spec : Prop :=
  ∀ n, P489372204028063976.a n = A228443 n

end A228443

/-! ## A228443.P3918185112981747011

`abs(A050457(comp[2*n]))`
-/

namespace A228443.P3918185112981747011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050457 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A228443.P3918185112981747011

namespace A228443

/-- `abs(A050457(comp[2*n]))` -/
def P3918185112981747011.Spec : Prop :=
  ∀ n, P3918185112981747011.a n = A228443 n

end A228443

/-! ## A228443.P16078941213357939451

`∑{d}[2*n+1, A327123(#)]`
-/

namespace A228443.P16078941213357939451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327123 d

end

end A228443.P16078941213357939451

namespace A228443

/-- `∑{d}[2*n+1, A327123(#)]` -/
def P16078941213357939451.Spec : Prop :=
  ∀ n, P16078941213357939451.a n = A228443 n

end A228443

/-! ## A228443.P10659292645369294823

`∑{d}[A050457(2*n+1), A000010(#)]`
-/

namespace A228443.P10659292645369294823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A228443.P10659292645369294823

namespace A228443

/-- `∑{d}[A050457(2*n+1), A000010(#)]` -/
def P10659292645369294823.Spec : Prop :=
  ∀ n, P10659292645369294823.a n = A228443 n

end A228443

/-! ## A228443.P17745350439372642838

`A050460(2*n+1)-A050464(2*n+1)`
-/

namespace A228443.P17745350439372642838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (2 * n + 1) - A050464 (2 * n + 1)

end

end A228443.P17745350439372642838

namespace A228443

/-- `A050460(2*n+1)-A050464(2*n+1)` -/
def P17745350439372642838.Spec : Prop :=
  ∀ n, P17745350439372642838.a n = A228443 n

end A228443

/-! ## A228443.P10802552560415799061

`A050457(2*n+1)*A055975(2*n+1)`
-/

namespace A228443.P10802552560415799061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (2 * n + 1) * A055975 (2 * n + 1)

end

end A228443.P10802552560415799061

namespace A228443

/-- `A050457(2*n+1)*A055975(2*n+1)` -/
def P10802552560415799061.Spec : Prop :=
  ∀ n, P10802552560415799061.a n = A228443 n

end A228443

/-! ## A228443.P12546607430360452459

`abs(A050449(2*n+1)-A082052(2*n+1))`
-/

namespace A228443.P12546607430360452459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A050449 (2 * n + 1) - A082052 (2 * n + 1)|

end

end A228443.P12546607430360452459

namespace A228443

/-- `abs(A050449(2*n+1)-A082052(2*n+1))` -/
def P12546607430360452459.Spec : Prop :=
  ∀ n, P12546607430360452459.a n = A228443 n

end A228443

/-! ## A228443.P17772575607832719178

`2*A050460(2*n+1)-A000593(2*n+1)`
-/

namespace A228443.P17772575607832719178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050460 (2 * n + 1) - A000593 (2 * n + 1)

end

end A228443.P17772575607832719178

namespace A228443

/-- `2*A050460(2*n+1)-A000593(2*n+1)` -/
def P17772575607832719178.Spec : Prop :=
  ∀ n, P17772575607832719178.a n = A228443 n

end A228443

/-! ## A228443.P1891357403667092708

`A000593(2*n+1)-2*A050464(2*n+1)`
-/

namespace A228443.P1891357403667092708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - 2 * A050464 (2 * n + 1)

end

end A228443.P1891357403667092708

namespace A228443

/-- `A000593(2*n+1)-2*A050464(2*n+1)` -/
def P1891357403667092708.Spec : Prop :=
  ∀ n, P1891357403667092708.a n = A228443 n

end A228443

/-! ## A228443.P6082487370105068535

`2*A050460(2*n+1)-A002131(2*n+1)`
-/

namespace A228443.P6082487370105068535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050460 (2 * n + 1) - A002131 (2 * n + 1)

end

end A228443.P6082487370105068535

namespace A228443

/-- `2*A050460(2*n+1)-A002131(2*n+1)` -/
def P6082487370105068535.Spec : Prop :=
  ∀ n, P6082487370105068535.a n = A228443 n

end A228443

/-! ## A228443.P7009489900192436929

`A002131(2*n+1)-2*A050464(2*n+1)`
-/

namespace A228443.P7009489900192436929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (2 * n + 1) - 2 * A050464 (2 * n + 1)

end

end A228443.P7009489900192436929

namespace A228443

/-- `A002131(2*n+1)-2*A050464(2*n+1)` -/
def P7009489900192436929.Spec : Prop :=
  ∀ n, P7009489900192436929.a n = A228443 n

end A228443

/-! ## A228443.P13991166936930385967

`2*A050460(2*n+1)-A186690(2*n+1)`
-/

namespace A228443.P13991166936930385967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050460 (2 * n + 1) - A186690 (2 * n + 1)

end

end A228443.P13991166936930385967

namespace A228443

/-- `2*A050460(2*n+1)-A186690(2*n+1)` -/
def P13991166936930385967.Spec : Prop :=
  ∀ n, P13991166936930385967.a n = A228443 n

end A228443

/-! ## A228443.P4635671597013769783

`2*A050460(2*n+1)-A327095(2*n+1)`
-/

namespace A228443.P4635671597013769783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050460 (2 * n + 1) - A327095 (2 * n + 1)

end

end A228443.P4635671597013769783

namespace A228443

/-- `2*A050460(2*n+1)-A327095(2*n+1)` -/
def P4635671597013769783.Spec : Prop :=
  ∀ n, P4635671597013769783.a n = A228443 n

end A228443

/-! ## A228443.P12090758159048686826

`A327095(2*n+1)-2*A050464(2*n+1)`
-/

namespace A228443.P12090758159048686826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (2 * n + 1) - 2 * A050464 (2 * n + 1)

end

end A228443.P12090758159048686826

namespace A228443

/-- `A327095(2*n+1)-2*A050464(2*n+1)` -/
def P12090758159048686826.Spec : Prop :=
  ∀ n, P12090758159048686826.a n = A228443 n

end A228443

/-! ## A228443.P8758794111217520335

`A050469(A004767(n)-1)/2`
-/

namespace A228443.P8758794111217520335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050469 (A004767 n - 1).toNat : ℚ) / 2

end

end A228443.P8758794111217520335

namespace A228443

/-- `A050469(A004767(n)-1)/2` -/
def P8758794111217520335.Spec : Prop :=
  ∀ n, P8758794111217520335.a n = (A228443 n : ℚ)

end A228443

/-! ## A228443.P1932578877388772058

`gcd(A050457(2*n+1), A050457(A103517(2*n)))`
-/

namespace A228443.P1932578877388772058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050457 (2 * n + 1)) (A050457 (A103517 (2 * n)).toNat)

end

end A228443.P1932578877388772058

namespace A228443

/-- `gcd(A050457(2*n+1), A050457(A103517(2*n)))` -/
def P1932578877388772058.Spec : Prop :=
  ∀ n, (P1932578877388772058.a n : ℤ) = A228443 n

end A228443

/-! ## A228443.P10441763593783477658

`A050469(2*n+1)%∑[A057952(n+1)]`
-/

namespace A228443.P10441763593783477658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050469 (2 * n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228443.P10441763593783477658

namespace A228443

/-- `A050469(2*n+1)%∑[A057952(n+1)]` -/
def P10441763593783477658.Spec : Prop :=
  ∀ n, P10441763593783477658.a n = A228443 n

end A228443

/-! ## A228443.P3084837776381617590

`A050469(lcm(16, 2*n+1))/16`
-/

namespace A228443.P3084837776381617590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050469 (Nat.lcm 16 (2 * n + 1)) : ℚ) / 16

end

end A228443.P3084837776381617590

namespace A228443

/-- `A050469(lcm(16, 2*n+1))/16` -/
def P3084837776381617590.Spec : Prop :=
  ∀ n, P3084837776381617590.a n = (A228443 n : ℚ)

end A228443

/-!
# A228444: Primes expressible as concatenation of phi(sigma(n)) and sigma(phi(n)).

The programs for A228444, there is no canonical definition to state claims against.
-/

/-! ## A228444.P3879657498308360045

`A111622(A313931(n+1))`
-/

namespace A228444.P3879657498308360045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (A313931 (n + 1)).toNat

end

end A228444.P3879657498308360045

/-!
# A228445: Prime numbers with a binary representation in which each digit is repeated at most twice.

The programs for A228445, the canonical program `A228445.P14846367572173528445` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228445 has offset 1).

The definition of A228445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228445.P14846367572173528445

`p?[A063037(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A228445

/-- `p?[A063037(n+1)]` -/
def P14846367572173528445.Spec : Prop :=
  ∀ n, P14846367572173528445.a n = A228445 (n + 1)

theorem P14846367572173528445.correct : P14846367572173528445.Spec := by
  intro n
  simp only [A228445, Nat.add_sub_cancel]

end A228445

/-! ## A228445.P15053785157965604816

`∩[A042998(n+1), A063037(n+1)]`
-/

namespace A228445.P15053785157965604816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228445.P15053785157965604816

namespace A228445

/-- `∩[A042998(n+1), A063037(n+1)]` -/
def P15053785157965604816.Spec : Prop :=
  ∀ n, (P15053785157965604816.a n : ℤ) = A228445 (n + 1)

end A228445

/-! ## A228445.P407630578693383388

`∩[A063037(n+1), A095313(n+1)]`
-/

namespace A228445.P407630578693383388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228445.P407630578693383388

namespace A228445

/-- `∩[A063037(n+1), A095313(n+1)]` -/
def P407630578693383388.Spec : Prop :=
  ∀ n, (P407630578693383388.a n : ℤ) = A228445 (n + 1)

end A228445

/-! ## A228445.P9953304929204864336

`∩[A000040(n+1), A063037(n+1)]`
-/

namespace A228445.P9953304929204864336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228445.P9953304929204864336

namespace A228445

/-- `∩[A000040(n+1), A063037(n+1)]` -/
def P9953304929204864336.Spec : Prop :=
  ∀ n, (P9953304929204864336.a n : ℤ) = A228445 (n + 1)

end A228445

/-! ## A228445.P1236345672894085288

`∩[A063037(n+1), A182140(n+1)]`
-/

namespace A228445.P1236345672894085288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228445.P1236345672894085288

namespace A228445

/-- `∩[A063037(n+1), A182140(n+1)]` -/
def P1236345672894085288.Spec : Prop :=
  ∀ n, (P1236345672894085288.a n : ℤ) = A228445 (n + 1)

end A228445

/-! ## A228445.P4044171558820787792

`record[A006530(A063037(n+3))]`
-/

namespace A228445.P4044171558820787792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063037 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228445.P4044171558820787792

namespace A228445

/-- `record[A006530(A063037(n+3))]` -/
def P4044171558820787792.Spec : Prop :=
  ∀ n, P4044171558820787792.a n = A228445 (n + 1)

end A228445

/-! ## A228445.P7376248415007793376

`filter[A063037(n+2), A010051(#)]`
-/

namespace A228445.P7376248415007793376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A228445.P7376248415007793376

namespace A228445

/-- `filter[A063037(n+2), A010051(#)]` -/
def P7376248415007793376.Spec : Prop :=
  ∀ n, P7376248415007793376.a n = A228445 (n + 1)

end A228445

/-! ## A228445.P1252727797887904033

`p?[A003726(n+1)*A117546(n)]`
-/

namespace A228445.P1252727797887904033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1) * A117546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228445.P1252727797887904033

namespace A228445

/-- `p?[A003726(n+1)*A117546(n)]` -/
def P1252727797887904033.Spec : Prop :=
  ∀ n, P1252727797887904033.a n = A228445 (n + 1)

end A228445

/-! ## A228445.P15340991995522569922

`p?[A003796(n+1)*A117546(n)]`
-/

namespace A228445.P15340991995522569922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (n + 1) * A117546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228445.P15340991995522569922

namespace A228445

/-- `p?[A003796(n+1)*A117546(n)]` -/
def P15340991995522569922.Spec : Prop :=
  ∀ n, P15340991995522569922.a n = A228445 (n + 1)

end A228445

/-! ## A228445.P16208162735540725164

`p?[lt[A284559(n), 3]]`
-/

namespace A228445.P16208162735540725164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228445.P16208162735540725164

namespace A228445

/-- `p?[lt[A284559(n), 3]]` -/
def P16208162735540725164.Spec : Prop :=
  ∀ n, (P16208162735540725164.a n : ℤ) = A228445 (n + 1)

end A228445

/-! ## A228445.P16677218349528967717

`p?[n*A004526(A284559(n)+1)]`
-/

namespace A228445.P16677218349528967717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 (A284559 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228445.P16677218349528967717

namespace A228445

/-- `p?[n*A004526(A284559(n)+1)]` -/
def P16677218349528967717.Spec : Prop :=
  ∀ n, P16677218349528967717.a n = A228445 (n + 1)

end A228445

/-! ## A228445.P16199484600427044995

`filter[A063037(n+3), A080339(#)]`
-/

namespace A228445.P16199484600427044995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A228445.P16199484600427044995

namespace A228445

/-- `filter[A063037(n+3), A080339(#)]` -/
def P16199484600427044995.Spec : Prop :=
  ∀ n, P16199484600427044995.a n = A228445 (n + 1)

end A228445

/-! ## A228445.P8648977029166070900

`∩[A063037(n+1), A240960(n+1)]`
-/

namespace A228445.P8648977029166070900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228445.P8648977029166070900

namespace A228445

/-- `∩[A063037(n+1), A240960(n+1)]` -/
def P8648977029166070900.Spec : Prop :=
  ∀ n, (P8648977029166070900.a n : ℤ) = A228445 (n + 1)

end A228445

/-!
# A228447: Expansion of q * (psi(q^3) * psi(q^6)) / (psi(q) * phi(q)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A228447, there is no canonical definition to state claims against.
-/

/-! ## A228447.P1907376975227366839

`(-1)^n*A187100(n+1)`
-/

namespace A228447.P1907376975227366839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A187100 (n + 1)

end

end A228447.P1907376975227366839

/-! ## A228447.P5042126802109894064

`A187100(n+1)/A033999(n)`
-/

namespace A228447.P5042126802109894064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A228447.P5042126802109894064

/-! ## A228447.P9587687029413604859

`A187100(n+1)/A217771(n)*A261321(n)`
-/

namespace A228447.P9587687029413604859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (n + 1) : ℚ) / (A217771 n : ℚ) * (A261321 n : ℚ)

end

end A228447.P9587687029413604859

/-! ## A228447.P14147904002281341787

`A187100(n+1)/A186924(n)*A261320(n)`
-/

namespace A228447.P14147904002281341787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (n + 1) : ℚ) / (A186924 n : ℚ) * (A261320 n : ℚ)

end

end A228447.P14147904002281341787

/-! ## A228447.P14174736573366480769

`A261320(n+1)/A261320(ceil(1/(n+1)))`
-/

namespace A228447.P14174736573366480769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261320 (n + 1) : ℚ) / (A261320 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A228447.P14174736573366480769

/-! ## A228447.P16662350219786695146

`A261320(n+1)/(A280560(2*n+1)-2)`
-/

namespace A228447.P16662350219786695146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261320 (n + 1) : ℚ) / (A280560 (2 * n + 1) - 2 : ℚ)

end

end A228447.P16662350219786695146

/-! ## A228447.P17244532723483712157

`2-4/2-A213265(3*(n+1))`
-/

namespace A228447.P17244532723483712157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 - (A213265 (3 * (n + 1)) : ℚ)

end

end A228447.P17244532723483712157

/-! ## A228447.P9744290032471616679

`char[A187113(n+1)]-A187153(3*n+3)`
-/

namespace A228447.P9744290032471616679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P9744290032471616679

/-! ## A228447.P8582505663895441271

`char[A187114(n+1)]-A187153(3*n+3)`
-/

namespace A228447.P8582505663895441271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187114 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P8582505663895441271

/-! ## A228447.P10456816808241215716

`char[A187125(n+1)]-A187153(3*n+3)`
-/

namespace A228447.P10456816808241215716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P10456816808241215716

/-! ## A228447.P15014749768957698557

`char[A187136(n+1)]-A187153(3*n+3)`
-/

namespace A228447.P15014749768957698557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187136 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P15014749768957698557

/-! ## A228447.P949742816995982007

`char[A187137(n+1)]-A187153(3*n+3)`
-/

namespace A228447.P949742816995982007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P949742816995982007

/-! ## A228447.P2951058566684664210

`char[A187138(n+1)]-A187153(3*n+3)`
-/

namespace A228447.P2951058566684664210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P2951058566684664210

/-! ## A228447.P4942013976463983832

`char[A187134(n+3)]-A187153(3*n+3)`
-/

namespace A228447.P4942013976463983832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187134 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A187153 (3 * n + 3)

end

end A228447.P4942013976463983832

/-! ## A228447.P13292767730960916385

`A187100(2*n+1)/A261320(2*n+1)*A261320(n+1)`
-/

namespace A228447.P13292767730960916385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (2 * n + 1) : ℚ) / (A261320 (2 * n + 1) : ℚ) * (A261320 (n + 1) : ℚ)

end

end A228447.P13292767730960916385

/-!
# A228448: a(n) = floor(n!/3^n).

The programs for A228448, the canonical program `A228448.P17124525942631877743` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228448 has offset 0).

The definition of A228448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n!/3^n)` (program `A228448.P17124525942631877743`, by `A228448.P17124525942631877743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228448.P17124525942631877743

`floor(n!/3^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228448

/-- `floor(n!/3^n)` -/
def P17124525942631877743.Spec : Prop :=
  ∀ n, P17124525942631877743.a n = A228448 n

theorem P17124525942631877743.correct : P17124525942631877743.Spec := by
  intro n
  simp only [A228448]

end A228448

/-! ## A228448.P4662066169073950614

`floor(3^-n*n!)`
-/

namespace A228448.P4662066169073950614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ (-(n : ℤ) : ℤ) * (Nat.factorial n : ℚ)⌋

end

end A228448.P4662066169073950614

namespace A228448

/-- `floor(3^-n*n!)` -/
def P4662066169073950614.Spec : Prop :=
  ∀ n, P4662066169073950614.a n = A228448 n

theorem P4662066169073950614.correct : P4662066169073950614.Spec := by
  intro n
  simp only [A228448, Nat.add_sub_cancel, A228448.P4662066169073950614.a, A228448.P17124525942631877743.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A228448

/-! ## A228448.P11005227298865048464

`floor(∏[ceil(abs(γ-n))]/3^n)`
-/

namespace A228448.P11005227298865048464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (3 ^ n : ℚ)⌋

end

end A228448.P11005227298865048464

namespace A228448

/-- `floor(∏[ceil(abs(γ-n))]/3^n)` -/
def P11005227298865048464.Spec : Prop :=
  ∀ n, P11005227298865048464.a n = A228448 n

end A228448

/-! ## A228448.P3277975451248060241

`ceil(3^-n*n!-A057427(n))`
-/

namespace A228448.P3277975451248060241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ (-(n : ℤ) : ℤ) * (Nat.factorial n : ℚ) - (A057427 n : ℚ)⌉

end

end A228448.P3277975451248060241

namespace A228448

/-- `ceil(3^-n*n!-A057427(n))` -/
def P3277975451248060241.Spec : Prop :=
  ∀ n, P3277975451248060241.a n = A228448 n

end A228448

/-! ## A228448.P7193404312038520045

`ceil(3^-n*n!-A178334(n))`
-/

namespace A228448.P7193404312038520045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ (-(n : ℤ) : ℤ) * (Nat.factorial n : ℚ) - (A178334 n : ℚ)⌉

end

end A228448.P7193404312038520045

namespace A228448

/-- `ceil(3^-n*n!-A178334(n))` -/
def P7193404312038520045.Spec : Prop :=
  ∀ n, P7193404312038520045.a n = A228448 n

end A228448

/-! ## A228448.P2962209104546887857

`(A000142(n)-A212309(n))/A000244(n)`
-/

namespace A228448.P2962209104546887857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n - A212309 n : ℚ) / (A000244 n : ℚ)

end

end A228448.P2962209104546887857

namespace A228448

/-- `(A000142(n)-A212309(n))/A000244(n)` -/
def P2962209104546887857.Spec : Prop :=
  ∀ n, P2962209104546887857.a n = (A228448 n : ℚ)

end A228448

/-!
# A228449: a(n) = floor(n! / 4^n).

The programs for A228449, the canonical program `A228449.P7976254886729170843` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228449 has offset 0).

The definition of A228449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n!/4^n)` (program `A228449.P7976254886729170843`, by `A228449.P7976254886729170843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228449.P7976254886729170843

`floor(n!/4^n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228449

/-- `floor(n!/4^n)` -/
def P7976254886729170843.Spec : Prop :=
  ∀ n, P7976254886729170843.a n = A228449 n

theorem P7976254886729170843.correct : P7976254886729170843.Spec := by
  intro n
  simp only [A228449]

end A228449

/-! ## A228449.P15808732728944579921

`floor(4*∏[(n+1)/4]/(n+1))`
-/

namespace A228449.P15808732728944579921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((∏ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℚ))⌋

end

end A228449.P15808732728944579921

namespace A228449

/-- `floor(4*∏[(n+1)/4]/(n+1))` -/
def P15808732728944579921.Spec : Prop :=
  ∀ n, P15808732728944579921.a n = A228449 n

end A228449

/-! ## A228449.P10752298915961100004

`ceil(4^-n*n!-n²%(n+1))`
-/

namespace A228449.P10752298915961100004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) ^ (-(n : ℤ) : ℤ) * (Nat.factorial n : ℚ) - ((n ^ 2 % (n + 1) : ℕ) : ℚ)⌉

end

end A228449.P10752298915961100004

namespace A228449

/-- `ceil(4^-n*n!-n²%(n+1))` -/
def P10752298915961100004.Spec : Prop :=
  ∀ n, P10752298915961100004.a n = A228449 n

end A228449

/-! ## A228449.P12840541003195905045

`ceil(A038507(n)/A000302(n))-1`
-/

namespace A228449.P12840541003195905045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038507 n : ℚ) / (A000302 n : ℚ)⌉ - 1

end

end A228449.P12840541003195905045

namespace A228449

/-- `ceil(A038507(n)/A000302(n))-1` -/
def P12840541003195905045.Spec : Prop :=
  ∀ n, P12840541003195905045.a n = A228449 n

end A228449

/-! ## A228449.P14925578292973653355

`(A000142(n)-A212310(n))/A000302(n)`
-/

namespace A228449.P14925578292973653355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n - A212310 n : ℚ) / (A000302 n : ℚ)

end

end A228449.P14925578292973653355

namespace A228449

/-- `(A000142(n)-A212310(n))/A000302(n)` -/
def P14925578292973653355.Spec : Prop :=
  ∀ n, P14925578292973653355.a n = (A228449 n : ℚ)

end A228449

/-!
# A228450: Deficient numbers with increasing abundancy without being powers of 2.

The programs for A228450, there is no canonical definition to state claims against.
-/

/-! ## A228450.P6553750345789464428

`A153671(A335029(n+1))`
-/

namespace A228450.P6553750345789464428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A335029 (n + 1)).toNat

end

end A228450.P6553750345789464428

/-!
# A228451: Recurrence: a(2n) = a(n), a(2n+1) = a(n) + 2n + 1, with a(0) = 0, a(1) = 1.

The programs for A228451, the canonical program `A228451.P3418895778203504034` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228451 has offset 0).

The definition of A228451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228451.P3418895778203504034

`a(floor(n/2))+n*n%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228451

/-- `a(floor(n/2))+n*n%2` -/
def P3418895778203504034.Spec : Prop :=
  ∀ n, (P3418895778203504034.a n : ℤ) = A228451 n

theorem P3418895778203504034.correct : P3418895778203504034.Spec := by
  intro n
  simp only [A228451]

end A228451

/-! ## A228451.P16974458868178031409

`a(floor(n/2))+2*n-n*gcd(2, n)` with `a(0)=0`
-/

namespace A228451.P16974458868178031409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (2 * n : ℤ) - (n * Nat.gcd 2 n : ℤ)

end

end A228451.P16974458868178031409

namespace A228451

/-- `a(floor(n/2))+2*n-n*gcd(2, n)` -/
def P16974458868178031409.Spec : Prop :=
  ∀ n, P16974458868178031409.a n = A228451 n

end A228451

/-! ## A228451.P12624757443268203987

`(a(∑[char[2*n]]-1)+n)%(3*n-lcm(2, n+1)+2)` with `a(0)=0`
-/

namespace A228451.P12624757443268203987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + (n : ℤ)) ((3 * n : ℤ) - (Nat.lcm 2 (n + 1) : ℤ) + 2)

end

end A228451.P12624757443268203987

namespace A228451

/-- `(a(∑[char[2*n]]-1)+n)%(3*n-lcm(2, n+1)+2)` -/
def P12624757443268203987.Spec : Prop :=
  ∀ n, P12624757443268203987.a n = A228451 n

end A228451

/-! ## A228451.P12251317043589698675

`A233904(n)+n`
-/

namespace A228451.P12251317043589698675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233904 n + (n : ℤ)

end

end A228451.P12251317043589698675

namespace A228451

/-- `A233904(n)+n` -/
def P12251317043589698675.Spec : Prop :=
  ∀ n, P12251317043589698675.a n = A228451 n

end A228451

/-! ## A228451.P17846956752524809698

`A264596(n)+A233905(n)`
-/

namespace A228451.P17846956752524809698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n + A233905 n

end

end A228451.P17846956752524809698

namespace A228451

/-- `A264596(n)+A233905(n)` -/
def P17846956752524809698.Spec : Prop :=
  ∀ n, P17846956752524809698.a n = A228451 n

end A228451

/-! ## A228451.P12618405869975238425

`A000120(n)+2*A233905(n)`
-/

namespace A228451.P12618405869975238425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2 * A233905 n

end

end A228451.P12618405869975238425

namespace A228451

/-- `A000120(n)+2*A233905(n)` -/
def P12618405869975238425.Spec : Prop :=
  ∀ n, P12618405869975238425.a n = A228451 n

end A228451

/-! ## A228451.P1145064401470821971

`A005187(n)-2*A233931(n)`
-/

namespace A228451.P1145064401470821971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - 2 * A233931 n

end

end A228451.P1145064401470821971

namespace A228451

/-- `A005187(n)-2*A233931(n)` -/
def P1145064401470821971.Spec : Prop :=
  ∀ n, P1145064401470821971.a n = A228451 n

end A228451

/-! ## A228451.P7506091987069964844

`2*A264596(n)-A000120(n)`
-/

namespace A228451.P7506091987069964844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264596 n - A000120 n

end

end A228451.P7506091987069964844

namespace A228451

/-- `2*A264596(n)-A000120(n)` -/
def P7506091987069964844.Spec : Prop :=
  ∀ n, P7506091987069964844.a n = A228451 n

end A228451

/-! ## A228451.P11941094698376907503

`A233905(n)+n-A233931(n)`
-/

namespace A228451.P11941094698376907503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((n : ℤ) - A233931 n)

end

end A228451.P11941094698376907503

namespace A228451

/-- `A233905(n)+n-A233931(n)` -/
def P11941094698376907503.Spec : Prop :=
  ∀ n, P11941094698376907503.a n = A228451 n

end A228451

/-! ## A228451.P2363395401160313097

`log2(A001316(n))+2*A233905(n)`
-/

namespace A228451.P2363395401160313097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + (2 * A233905 n : ℝ)

end

end A228451.P2363395401160313097

namespace A228451

/-- `log2(A001316(n))+2*A233905(n)` -/
def P2363395401160313097.Spec : Prop :=
  ∀ n, P2363395401160313097.a n = (A228451 n : ℝ)

end A228451

/-! ## A228451.P5392244187138940090

`2*A088371(n+1)-(A063787(n+1)+1)`
-/

namespace A228451.P5392244187138940090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088371 (n + 1) - (A063787 (n + 1) + 1)

end

end A228451.P5392244187138940090

namespace A228451

/-- `2*A088371(n+1)-(A063787(n+1)+1)` -/
def P5392244187138940090.Spec : Prop :=
  ∀ n, P5392244187138940090.a n = A228451 n

end A228451

/-! ## A228451.P3904582943703595491

`A005843(A264596(n))-A000120(n)`
-/

namespace A228451.P3904582943703595491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A264596 n).toNat - A000120 n

end

end A228451.P3904582943703595491

namespace A228451

/-- `A005843(A264596(n))-A000120(n)` -/
def P3904582943703595491.Spec : Prop :=
  ∀ n, P3904582943703595491.a n = A228451 n

end A228451

/-! ## A228451.P10690417280099766872

`A001222(A071044(n))+2*A233905(n)`
-/

namespace A228451.P10690417280099766872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat + 2 * A233905 n

end

end A228451.P10690417280099766872

namespace A228451

/-- `A001222(A071044(n))+2*A233905(n)` -/
def P10690417280099766872.Spec : Prop :=
  ∀ n, P10690417280099766872.a n = A228451 n

end A228451

/-! ## A228451.P1308859083766951986

`A001222(A278222(n))+2*A233905(n)`
-/

namespace A228451.P1308859083766951986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat + 2 * A233905 n

end

end A228451.P1308859083766951986

namespace A228451

/-- `A001222(A278222(n))+2*A233905(n)` -/
def P1308859083766951986.Spec : Prop :=
  ∀ n, P1308859083766951986.a n = A228451 n

end A228451

/-! ## A228451.P18130029509340264317

`A011371(2*n)-2*A233931(n)`
-/

namespace A228451.P18130029509340264317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n) - 2 * A233931 n

end

end A228451.P18130029509340264317

namespace A228451

/-- `A011371(2*n)-2*A233931(n)` -/
def P18130029509340264317.Spec : Prop :=
  ∀ n, P18130029509340264317.a n = A228451 n

end A228451

/-! ## A228451.P14012877006805457550

`2*(A233905(n)+n)-A011371(2*n)`
-/

namespace A228451.P14012877006805457550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A233905 n + (n : ℤ)) - A011371 (2 * n)

end

end A228451.P14012877006805457550

namespace A228451

/-- `2*(A233905(n)+n)-A011371(2*n)` -/
def P14012877006805457550.Spec : Prop :=
  ∀ n, P14012877006805457550.a n = A228451 n

end A228451

/-! ## A228451.P7467885858408658729

`A233904(Δ[n²])`
-/

namespace A228451.P7467885858408658729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A228451.P7467885858408658729

namespace A228451

/-- `A233904(Δ[n²])` -/
def P7467885858408658729.Spec : Prop :=
  ∀ n, P7467885858408658729.a n = A228451 n

end A228451

/-! ## A228451.P18251463841527723574

`A233905(A005408(n))-A233931(n)`
-/

namespace A228451.P18251463841527723574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (A005408 n).toNat - A233931 n

end

end A228451.P18251463841527723574

namespace A228451

/-- `A233905(A005408(n))-A233931(n)` -/
def P18251463841527723574.Spec : Prop :=
  ∀ n, P18251463841527723574.a n = A228451 n

end A228451

/-! ## A228451.P12431282635765058787

`2*A233904(2*n)-A233904(4*n)`
-/

namespace A228451.P12431282635765058787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233904 (2 * n) - A233904 (4 * n)

end

end A228451.P12431282635765058787

namespace A228451

/-- `2*A233904(2*n)-A233904(4*n)` -/
def P12431282635765058787.Spec : Prop :=
  ∀ n, P12431282635765058787.a n = A228451 n

end A228451

/-!
# A228453: Numbers k such that tau(k+1) - tau(k) = 5, where tau(k) = the number of divisors of k (A000005).

The programs for A228453, there is no canonical definition to state claims against.
-/

/-! ## A228453.P17910264506486101539

`A141310(eq[5, A051950(n+2)])`
-/

namespace A228453.P17910264506486101539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228453.P17910264506486101539

/-! ## A228453.P4240807257717785891

`eq[5, A341062(n+1)]`
-/

namespace A228453.P4240807257717785891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228453.P4240807257717785891

/-! ## A228453.P8451634126213271983

`A004442(eq[5, A051950(n+2)])`
-/

namespace A228453.P8451634126213271983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228453.P8451634126213271983

/-! ## A228453.P3612357922520296984

`A007535(eq[5, A051950(n+2)])`
-/

namespace A228453.P3612357922520296984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228453.P3612357922520296984

/-! ## A228453.P1338502683782897261

`A020725(eq[5, A051950(n+2)])`
-/

namespace A228453.P1338502683782897261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228453.P1338502683782897261

/-!
# A228457: Number of arrays of maxima of three adjacent elements of some length n+2 0..4 array.

The programs for A228457, there is no canonical definition to state claims against.
-/

/-! ## A228457.P8792943114221379417

`A228461(∑[n+4]+3)`
-/

namespace A228457.P8792943114221379417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A228457.P8792943114221379417

/-! ## A228457.P14393209475617287383

`abs(1-A228461(A055998(n+2)))+1`
-/

namespace A228457.P14393209475617287383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A228461 (A055998 (n + 2)).toNat| + 1

end

end A228457.P14393209475617287383

/-! ## A228457.P11141798135574845115

`A228461(A055998(n+2))+A000035(2*n)`
-/

namespace A228457.P11141798135574845115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A055998 (n + 2)).toNat + A000035 (2 * n)

end

end A228457.P11141798135574845115

/-! ## A228457.P3371131632429150192

`A228461(A155212(n)+5)+A077966(2*n+1)`
-/

namespace A228457.P3371131632429150192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A155212 n + 5).toNat + A077966 (2 * n + 1)

end

end A228457.P3371131632429150192

/-! ## A228457.P10155715103485481441

`A001222(A062584(n))*A228461(A055998(n+2))`
-/

namespace A228457.P10155715103485481441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062584 n).toNat * A228461 (A055998 (n + 2)).toNat

end

end A228457.P10155715103485481441

/-!
# A228458: Number of arrays of maxima of three adjacent elements of some length n+2 0..5 array.

The programs for A228458, there is no canonical definition to state claims against.
-/

/-! ## A228458.P9420408777469040334

`A228461(∑[n+5]+6)`
-/

namespace A228458.P9420408777469040334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A228458.P9420408777469040334

/-! ## A228458.P13389299201136648733

`or(char[2], A228461(A055999(n+2)+2))`
-/

namespace A228458.P13389299201136648733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A228461 (A055999 (n + 2) + 2).toNat)

end

end A228458.P13389299201136648733

/-! ## A228458.P2178267622413963698

`char[A002262(n)]*A228461(A055999(n+2)+2)`
-/

namespace A228458.P2178267622413963698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A228461 (A055999 (n + 2) + 2).toNat

end

end A228458.P2178267622413963698

/-! ## A228458.P1366492374314131918

`char[A002487(n)]*A228461(A055999(n+2)+2)`
-/

namespace A228458.P1366492374314131918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A228461 (A055999 (n + 2) + 2).toNat

end

end A228458.P1366492374314131918

/-! ## A228458.P10116848180781969079

`char[A004442(n)]*A228461(A055999(n+2)+2)`
-/

namespace A228458.P10116848180781969079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A228461 (A055999 (n + 2) + 2).toNat

end

end A228458.P10116848180781969079

/-! ## A228458.P7464692043823779042

`A228461(A055999(n+2)+2)+A000007(n+1)`
-/

namespace A228458.P7464692043823779042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A055999 (n + 2) + 2).toNat + A000007 (n + 1)

end

end A228458.P7464692043823779042

/-! ## A228458.P2675609195398953334

`A228461(A055999(n+2)+2)+A000035(2*n)`
-/

namespace A228458.P2675609195398953334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A055999 (n + 2) + 2).toNat + A000035 (2 * n)

end

end A228458.P2675609195398953334

/-! ## A228458.P1798263098129895613

`A228461(A055999(n+2)+2)%A007227(n+2)`
-/

namespace A228458.P1798263098129895613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228461 (A055999 (n + 2) + 2).toNat) (A007227 (n + 2))

end

end A228458.P1798263098129895613

/-! ## A228458.P3392752153195230543

`or(-1, A007094(n))²*A228461(A055999(n+2)+2)`
-/

namespace A228458.P3392752153195230543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A007094 n) ^ 2 * A228461 (A055999 (n + 2) + 2).toNat

end

end A228458.P3392752153195230543

/-! ## A228458.P2715775465194042632

`A228461(A055999(n+2)+2)+A003982(A006530(2*n+1))`
-/

namespace A228458.P2715775465194042632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A055999 (n + 2) + 2).toNat + A003982 (A006530 (2 * n + 1)).toNat

end

end A228458.P2715775465194042632

/-!
# A228459: Number of arrays of maxima of three adjacent elements of some length n+2 0..6 array.

The programs for A228459, there is no canonical definition to state claims against.
-/

/-! ## A228459.P13300820260771171690

`A228461(A052905(n+3))`
-/

namespace A228459.P13300820260771171690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A052905 (n + 3)).toNat

end

end A228459.P13300820260771171690

/-! ## A228459.P11571507408817897434

`A228461(A046691(n+4)-1)`
-/

namespace A228459.P11571507408817897434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A046691 (n + 4) - 1).toNat

end

end A228459.P11571507408817897434

/-! ## A228459.P10300636428856096029

`A228461(A000217(n+6)-5)`
-/

namespace A228459.P10300636428856096029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000217 (n + 6) - 5).toNat

end

end A228459.P10300636428856096029

/-! ## A228459.P7714429799490437584

`A228461(A000124(n+6)-6)`
-/

namespace A228459.P7714429799490437584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000124 (n + 6) - 6).toNat

end

end A228459.P7714429799490437584

/-! ## A228459.P11578635845356929732

`A228461(Δ[A026054(n+3)]+1)`
-/

namespace A228459.P11578635845356929732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (f1 (n + 1) - f1 n + 1).toNat

end

end A228459.P11578635845356929732

/-! ## A228459.P10243478810487858922

`A228461(A058992(n+5)+A000217(n+4))`
-/

namespace A228459.P10243478810487858922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A058992 (n + 5) + A000217 (n + 4)).toNat

end

end A228459.P10243478810487858922

/-!
# A228460: Number of arrays of maxima of three adjacent elements of some length n+2 0..7 array.

The programs for A228460, there is no canonical definition to state claims against.
-/

/-! ## A228460.P2724922408508198402

`A228461(A055999(n+4))`
-/

namespace A228460.P2724922408508198402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A055999 (n + 4)).toNat

end

end A228460.P2724922408508198402

/-! ## A228460.P17589328103292976387

`A228461(Δ[A026054(n+4)])`
-/

namespace A228460.P17589328103292976387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (f1 (n + 1) - f1 n).toNat

end

end A228460.P17589328103292976387

/-! ## A228460.P16535881989446926208

`A228461(A046691(n+5)-2)`
-/

namespace A228460.P16535881989446926208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A046691 (n + 5) - 2).toNat

end

end A228460.P16535881989446926208

/-! ## A228460.P9035875869407911655

`A228461(A000124(n+7)-7)`
-/

namespace A228460.P9035875869407911655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000124 (n + 7) - 7).toNat

end

end A228460.P9035875869407911655

/-! ## A228460.P16355785896927573130

`A228461(A008574(n+4)+A000217(n+3))`
-/

namespace A228460.P16355785896927573130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A008574 (n + 4) + A000217 (n + 3)).toNat

end

end A228460.P16355785896927573130

/-! ## A228460.P6696337920781536173

`A228461(A008585(n+4)+A000217(n+4))`
-/

namespace A228460.P6696337920781536173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A008585 (n + 4) + A000217 (n + 4)).toNat

end

end A228460.P6696337920781536173

/-!
# A228461: Two-dimensional array read by antidiagonals: T(n,k) = number of arrays of maxima of three adjacent elements of some length n+2 0..k array.

The programs for A228461, there is no canonical definition to state claims against.
-/

/-! ## A228461.P14921043096874519068

`A210219(comp[A000217(n)]%A029818(n))`
-/

namespace A228461.P14921043096874519068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A029818 n)).toNat

end

end A228461.P14921043096874519068

/-! ## A228461.P1663099484778892188

`A210219(comp[A000217(n)])%A029820(n)`
-/

namespace A228461.P1663099484778892188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210219 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A029820 n)

end

end A228461.P1663099484778892188

/-! ## A228461.P18111448689144732222

`A210219(A014132(n+1)%A029818(n))`
-/

namespace A228461.P18111448689144732222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (Int.tmod (A014132 (n + 1)) (A029818 n)).toNat

end

end A228461.P18111448689144732222

/-! ## A228461.P3772495094112900681

`A210219(A014132(n+1))%A029820(n)`
-/

namespace A228461.P3772495094112900681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210219 (A014132 (n + 1)).toNat) (A029820 n)

end

end A228461.P3772495094112900681

/-! ## A228461.P14032681181855783296

`A225010(A038722(n+1)%A131547(n+3))`
-/

namespace A228461.P14032681181855783296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 (Int.tmod (A038722 (n + 1)) (A131547 (n + 3))).toNat

end

end A228461.P14032681181855783296

/-!
# A228462: Number of arrays of maxima of three adjacent elements of some length 7 0..n array.

The programs for A228462, the canonical program `A228462.P17652966939301378118` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228462 has offset 1).

The definition of A228462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228462.P17652966939301378118

`A225007(n+1)+∑[(n+1)²]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228462

/-- `A225007(n+1)+∑[(n+1)²]` -/
def P17652966939301378118.Spec : Prop :=
  ∀ n, P17652966939301378118.a n = A228462 (n + 1)

theorem P17652966939301378118.correct : P17652966939301378118.Spec := by
  intro n
  simp only [A228462, Nat.add_sub_cancel]

end A228462

/-! ## A228462.P17410305848832598460

`∑[A053134(n+1)+(n+1)²]+1`
-/

namespace A228462.P17410305848832598460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A228462.P17410305848832598460

namespace A228462

/-- `∑[A053134(n+1)+(n+1)²]+1` -/
def P17410305848832598460.Spec : Prop :=
  ∀ n, P17410305848832598460.a n = A228462 (n + 1)

end A228462

/-! ## A228462.P13451855623760422775

`A001753(2*(n+1))+A000330(n+1)`
-/

namespace A228462.P13451855623760422775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * (n + 1)) + A000330 (n + 1)

end

end A228462.P13451855623760422775

namespace A228462

/-- `A001753(2*(n+1))+A000330(n+1)` -/
def P13451855623760422775.Spec : Prop :=
  ∀ n, P13451855623760422775.a n = A228462 (n + 1)

end A228462

/-! ## A228462.P3838142041480529041

`A001753(2*(n+1))+∑[∑[A005408(n)]]`
-/

namespace A228462.P3838142041480529041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228462.P3838142041480529041

namespace A228462

/-- `A001753(2*(n+1))+∑[∑[A005408(n)]]` -/
def P3838142041480529041.Spec : Prop :=
  ∀ n, P3838142041480529041.a n = A228462 (n + 1)

end A228462

/-! ## A228462.P4943838067095874334

`A047732(n)+∑[A145126(A144396(n+1))]`
-/

namespace A228462.P4943838067095874334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (A144396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228462.P4943838067095874334

namespace A228462

/-- `A047732(n)+∑[A145126(A144396(n+1))]` -/
def P4943838067095874334.Spec : Prop :=
  ∀ n, P4943838067095874334.a n = A228462 (n + 1)

end A228462

/-!
# A228463: Number of arrays of maxima of three adjacent elements of some length 8 0..n array.

The programs for A228463, the canonical program `A228463.P17573629568626594097` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228463 has offset 1).

The definition of A228463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228463.P17573629568626594097

`A225008(n+1)+A053126(n+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228463

/-- `A225008(n+1)+A053126(n+4)` -/
def P17573629568626594097.Spec : Prop :=
  ∀ n, P17573629568626594097.a n = A228463 (n + 1)

theorem P17573629568626594097.correct : P17573629568626594097.Spec := by
  intro n
  simp only [A228463, Nat.add_sub_cancel]

end A228463

/-! ## A228463.P5449834629637994949

`∑[A002299(n+1)]+A053126(n+4)+1`
-/

namespace A228463.P5449834629637994949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A053126 (n + 4) + 1)

end

end A228463.P5449834629637994949

namespace A228463

/-- `∑[A002299(n+1)]+A053126(n+4)+1` -/
def P5449834629637994949.Spec : Prop :=
  ∀ n, P5449834629637994949.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P13890907498065258901

`A200888(n+1)+A001769(2*n+1)`
-/

namespace A228463.P13890907498065258901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200888 (n + 1) + A001769 (2 * n + 1)

end

end A228463.P13890907498065258901

namespace A228463

/-- `A200888(n+1)+A001769(2*n+1)` -/
def P13890907498065258901.Spec : Prop :=
  ∀ n, P13890907498065258901.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P14672989441250491798

`A053126(n+4)+A001769(2*(n+1))`
-/

namespace A228463.P14672989441250491798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4) + A001769 (2 * (n + 1))

end

end A228463.P14672989441250491798

namespace A228463

/-- `A053126(n+4)+A001769(2*(n+1))` -/
def P14672989441250491798.Spec : Prop :=
  ∀ n, P14672989441250491798.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P11676232384064528017

`A001752(2*n+1)+A001769(2*(n+1))+A001752(2*n)`
-/

namespace A228463.P11676232384064528017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (2 * n + 1) + (A001769 (2 * (n + 1)) + A001752 (2 * n))

end

end A228463.P11676232384064528017

namespace A228463

/-- `A001752(2*n+1)+A001769(2*(n+1))+A001752(2*n)` -/
def P11676232384064528017.Spec : Prop :=
  ∀ n, P11676232384064528017.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P9726752764822806974

`A005585(2*n+3)+∑[A000389(2*n+3)]`
-/

namespace A228463.P9726752764822806974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228463.P9726752764822806974

namespace A228463

/-- `A005585(2*n+3)+∑[A000389(2*n+3)]` -/
def P9726752764822806974.Spec : Prop :=
  ∀ n, P9726752764822806974.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P5121401033400604191

`A228461(A000124(n+5)+5)`
-/

namespace A228463.P5121401033400604191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000124 (n + 5) + 5).toNat

end

end A228463.P5121401033400604191

namespace A228463

/-- `A228461(A000124(n+5)+5)` -/
def P5121401033400604191.Spec : Prop :=
  ∀ n, P5121401033400604191.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P9100105127981647973

`A228461(A000217(n+5)+6)`
-/

namespace A228463.P9100105127981647973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000217 (n + 5) + 6).toNat

end

end A228463.P9100105127981647973

namespace A228463

/-- `A228461(A000217(n+5)+6)` -/
def P9100105127981647973.Spec : Prop :=
  ∀ n, P9100105127981647973.a n = A228463 (n + 1)

end A228463

/-! ## A228463.P11494227943445108022

`A228461(A161680(n+6)+6)`
-/

namespace A228463.P11494227943445108022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A161680 (n + 6) + 6).toNat

end

end A228463.P11494227943445108022

namespace A228463

/-- `A228461(A161680(n+6)+6)` -/
def P11494227943445108022.Spec : Prop :=
  ∀ n, P11494227943445108022.a n = A228463 (n + 1)

end A228463

/-!
# A228464: Number of arrays of maxima of three adjacent elements of some 0..n array of length 9.

The programs for A228464, there is no canonical definition to state claims against.
-/

/-! ## A228464.P8765841384084010313

`A228461(A166136(n+5)+1)`
-/

namespace A228464.P8765841384084010313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A166136 (n + 5) + 1).toNat

end

end A228464.P8765841384084010313

/-! ## A228464.P2025818461694156587

`A228461(A000124(n+6)+6)`
-/

namespace A228464.P2025818461694156587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000124 (n + 6) + 6).toNat

end

end A228464.P2025818461694156587

/-! ## A228464.P11412492463467828417

`A228461(A000217(n+6)+7)`
-/

namespace A228464.P11412492463467828417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A000217 (n + 6) + 7).toNat

end

end A228464.P11412492463467828417

/-! ## A228464.P10009170841942536632

`A228461(A161680(n+7)+7)`
-/

namespace A228464.P10009170841942536632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A161680 (n + 7) + 7).toNat

end

end A228464.P10009170841942536632

/-! ## A228464.P2073788984381150547

`A228461(A052905(n+3)+12)`
-/

namespace A228464.P2073788984381150547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A052905 (n + 3) + 12).toNat

end

end A228464.P2073788984381150547

/-! ## A228464.P3797184287462134173

`A228461(A238531(n+8)-(n+2))`
-/

namespace A228464.P3797184287462134173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228461 (A238531 (n + 8) - (n + 2 : ℤ)).toNat

end

end A228464.P3797184287462134173

/-!
# A228465: Recurrence a(n) = a(n-1) + 2^n*a(n-2) with a(0)=0, a(1)=1.

The programs for A228465, there is no canonical definition to state claims against.
-/

/-! ## A228465.P10407481276509061670

`a(n-1)+2^n*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A228465.P10407481276509061670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 2 ^ n * a (n - 2)

end

end A228465.P10407481276509061670

/-! ## A228465.P3875979144057872579

`a(n-1)+lcm(2^n, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A228465.P3875979144057872579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lcm (2 ^ n) (a (n - 2))

end

end A228465.P3875979144057872579

/-! ## A228465.P11420882648474235152

`a(n-1)+a(n-2)*A000079(n)` with `a(0)=0, a(1)=1`
-/

namespace A228465.P11420882648474235152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) * A000079 n

end

end A228465.P11420882648474235152

/-! ## A228465.P13884588332954212228

`a(n-1)+a(n-2)*A171449(n)` with `a(0)=0, a(1)=1`
-/

namespace A228465.P13884588332954212228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) * A171449 n

end

end A228465.P13884588332954212228

/-! ## A228465.P6051770498981412541

`∏[2^n/a(n-1)+1]%A280294(n+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A228465.P6051770498981412541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (2 ^ n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A280294 (n + 1))

end

end A228465.P6051770498981412541

/-!
# A228467: Recurrence a(n) = 2^n*a(n-1) - a(n-2) with a(0)=0, a(1)=1.

The programs for A228467, the canonical program `A228467.P17040175628843317904` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228467 has offset 0).

The definition of A228467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*a(n-1)-a(n-2)` (program `A228467.P17040175628843317904`, by `A228467.P17040175628843317904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228467.P17040175628843317904

`2^n*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228467

/-- `2^n*a(n-1)-a(n-2)` -/
def P17040175628843317904.Spec : Prop :=
  ∀ n, P17040175628843317904.a n = A228467 n

theorem P17040175628843317904.correct : P17040175628843317904.Spec := by
  intro n
  simp only [A228467]

end A228467

/-! ## A228467.P13001018966352071396

`a(n-1)*A000079(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A228467.P13001018966352071396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A000079 n - a (n - 2)

end

end A228467.P13001018966352071396

namespace A228467

/-- `a(n-1)*A000079(n)-a(n-2)` -/
def P13001018966352071396.Spec : Prop :=
  ∀ n, P13001018966352071396.a n = A228467 n

end A228467

/-! ## A228467.P14413358716551323828

`a(n-1)*A155559(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A228467.P14413358716551323828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A155559 n - a (n - 2)

end

end A228467.P14413358716551323828

namespace A228467

/-- `a(n-1)*A155559(n)-a(n-2)` -/
def P14413358716551323828.Spec : Prop :=
  ∀ n, P14413358716551323828.a n = A228467 n

end A228467

/-! ## A228467.P16393945214405030852

`a(n-1)*A186949(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A228467.P16393945214405030852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A186949 n - a (n - 2)

end

end A228467.P16393945214405030852

namespace A228467

/-- `a(n-1)*A186949(n)-a(n-2)` -/
def P16393945214405030852.Spec : Prop :=
  ∀ n, P16393945214405030852.a n = A228467 n

end A228467

/-! ## A228467.P10108270990801056278

`a(n-1)*record[A130123(n)]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A228467.P10108270990801056278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 2)

end

end A228467.P10108270990801056278

namespace A228467

/-- `a(n-1)*record[A130123(n)]-a(n-2)` -/
def P10108270990801056278.Spec : Prop :=
  ∀ n, P10108270990801056278.a n = A228467 n

end A228467

/-!
# A228469: a(n) = 6*a(n-2) + a(n-4), where a(0) = 2, a(1) = 8, a(2) = 13, a(3) = 49.

The programs for A228469, the canonical program `A228469.P12704459766299876167` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228469 has offset 0).

The definition of A228469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)+a(n-4)` (program `A228469.P12704459766299876167`, by `A228469.P12704459766299876167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228469.P12704459766299876167

`6*a(n-2)+a(n-4)` with `a(0)=2, a(1)=8, a(2)=13, a(3)=49`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228469

/-- `6*a(n-2)+a(n-4)` -/
def P12704459766299876167.Spec : Prop :=
  ∀ n, (P12704459766299876167.a n : ℤ) = A228469 n

theorem P12704459766299876167.correct : P12704459766299876167.Spec := by
  intro n
  simp only [A228469]

end A228469

/-! ## A228469.P17124022717698294074

`record[Δ[A179238(n+3)]]`
-/

namespace A228469.P17124022717698294074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179238 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228469.P17124022717698294074

namespace A228469

/-- `record[Δ[A179238(n+3)]]` -/
def P17124022717698294074.Spec : Prop :=
  ∀ n, P17124022717698294074.a n = A228469 n

end A228469

/-! ## A228469.P11008858671793575449

`A228471(n+1)-A228470(n)`
-/

namespace A228469.P11008858671793575449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 (n + 1) - A228470 n

end

end A228469.P11008858671793575449

namespace A228469

/-- `A228471(n+1)-A228470(n)` -/
def P11008858671793575449.Spec : Prop :=
  ∀ n, P11008858671793575449.a n = A228469 n

end A228469

/-! ## A228469.P2075140694772507210

`record[Δ[A295334(n+1)+A295333(n+1)]]`
-/

namespace A228469.P2075140694772507210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (n + 1) + A295333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228469.P2075140694772507210

namespace A228469

/-- `record[Δ[A295334(n+1)+A295333(n+1)]]` -/
def P2075140694772507210.Spec : Prop :=
  ∀ n, P2075140694772507210.a n = A228469 n

end A228469

/-! ## A228469.P13409706763972922685

`A228472(n+1)%A228470(n)`
-/

namespace A228469.P13409706763972922685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228472 (n + 1)) (A228470 n)

end

end A228469.P13409706763972922685

namespace A228469

/-- `A228472(n+1)%A228470(n)` -/
def P13409706763972922685.Spec : Prop :=
  ∀ n, P13409706763972922685.a n = A228469 n

end A228469

/-! ## A228469.P16840583893479884496

`2*A228471(n+1)-A228472(n+1)`
-/

namespace A228469.P16840583893479884496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228471 (n + 1) - A228472 (n + 1)

end

end A228469.P16840583893479884496

namespace A228469

/-- `2*A228471(n+1)-A228472(n+1)` -/
def P16840583893479884496.Spec : Prop :=
  ∀ n, P16840583893479884496.a n = A228469 n

end A228469

/-!
# A228470: a(n) = 6*a(n-2) + a(n-4), where a(0) = 3, a(1) = 11, a(2) = 18, a(3) = 68.

The programs for A228470, the canonical program `A228470.P18129150398538863401` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228470 has offset 0).

The definition of A228470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)+a(n-4)` (program `A228470.P18129150398538863401`, by `A228470.P18129150398538863401.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228470.P18129150398538863401

`6*a(n-2)+a(n-4)` with `a(0)=3, a(1)=11, a(2)=18, a(3)=68`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228470

/-- `6*a(n-2)+a(n-4)` -/
def P18129150398538863401.Spec : Prop :=
  ∀ n, (P18129150398538863401.a n : ℤ) = A228470 n

theorem P18129150398538863401.correct : P18129150398538863401.Spec := by
  intro n
  simp only [A228470]

end A228470

/-! ## A228470.P1263066362459391930

`record[Δ[A093611(n+4)]]`
-/

namespace A228470.P1263066362459391930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093611 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228470.P1263066362459391930

namespace A228470

/-- `record[Δ[A093611(n+4)]]` -/
def P1263066362459391930.Spec : Prop :=
  ∀ n, P1263066362459391930.a n = A228470 n

end A228470

/-! ## A228470.P13862559123990462166

`A228471(n+1)-A228469(n)`
-/

namespace A228470.P13862559123990462166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 (n + 1) - A228469 n

end

end A228470.P13862559123990462166

namespace A228470

/-- `A228471(n+1)-A228469(n)` -/
def P13862559123990462166.Spec : Prop :=
  ∀ n, P13862559123990462166.a n = A228470 n

end A228470

/-! ## A228470.P16586301886938061798

`A228472(n+1)-A228471(n+1)`
-/

namespace A228470.P16586301886938061798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228472 (n + 1) - A228471 (n + 1)

end

end A228470.P16586301886938061798

namespace A228470

/-- `A228472(n+1)-A228471(n+1)` -/
def P16586301886938061798.Spec : Prop :=
  ∀ n, P16586301886938061798.a n = A228470 n

end A228470

/-! ## A228470.P14881718213816418488

`A228469(n+2)%A228471(n+1)`
-/

namespace A228470.P14881718213816418488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228469 (n + 2)) (A228471 (n + 1))

end

end A228470.P14881718213816418488

namespace A228470

/-- `A228469(n+2)%A228471(n+1)` -/
def P14881718213816418488.Spec : Prop :=
  ∀ n, P14881718213816418488.a n = A228470 n

end A228470

/-!
# A228471: a(n) = 6*a(n-2) + a(n-4), where a(0) = 3, a(1) = 5, a(2) = 19, a(3) = 31.

The programs for A228471, the canonical program `A228471.P14377834597059050896` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228471 has offset 0).

The definition of A228471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)+a(n-4)` (program `A228471.P14377834597059050896`, by `A228471.P14377834597059050896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228471.P14377834597059050896

`6*a(n-2)+a(n-4)` with `a(0)=3, a(1)=5, a(2)=19, a(3)=31`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228471

/-- `6*a(n-2)+a(n-4)` -/
def P14377834597059050896.Spec : Prop :=
  ∀ n, (P14377834597059050896.a n : ℤ) = A228471 n

theorem P14377834597059050896.correct : P14377834597059050896.Spec := by
  intro n
  simp only [A228471]

end A228471

/-! ## A228471.P15331099997781150698

`record[Δ[A295334(n+2)]]`
-/

namespace A228471.P15331099997781150698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228471.P15331099997781150698

namespace A228471

/-- `record[Δ[A295334(n+2)]]` -/
def P15331099997781150698.Spec : Prop :=
  ∀ n, P15331099997781150698.a n = A228471 n

end A228471

/-! ## A228471.P5852250823466940356

`A228469(n+1)-A228472(n)`
-/

namespace A228471.P5852250823466940356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (n + 1) - A228472 n

end

end A228471.P5852250823466940356

namespace A228471

/-- `A228469(n+1)-A228472(n)` -/
def P5852250823466940356.Spec : Prop :=
  ∀ n, P5852250823466940356.a n = A228471 n

end A228471

/-! ## A228471.P1217600423190770114

`A228470(n+1)-A228469(n+1)`
-/

namespace A228471.P1217600423190770114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228470 (n + 1) - A228469 (n + 1)

end

end A228471.P1217600423190770114

namespace A228471

/-- `A228470(n+1)-A228469(n+1)` -/
def P1217600423190770114.Spec : Prop :=
  ∀ n, P1217600423190770114.a n = A228471 n

end A228471

/-! ## A228471.P11890453719329858763

`record[A295334(n+3)-A295334(n+2)]`
-/

namespace A228471.P11890453719329858763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (n + 3) - A295334 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228471.P11890453719329858763

namespace A228471

/-- `record[A295334(n+3)-A295334(n+2)]` -/
def P11890453719329858763.Spec : Prop :=
  ∀ n, P11890453719329858763.a n = A228471 n

end A228471

/-!
# A228472: a(n) = 6*a(n-2) + a(n-4), where a(0) = 5, a(1) = 8, a(2) = 30, a(3) = 49.

The programs for A228472, the canonical program `A228472.P1685520309808600921` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228472 has offset 0).

The definition of A228472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-2)+a(n-4)` (program `A228472.P1685520309808600921`, by `A228472.P1685520309808600921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A228472.P1685520309808600921

`6*a(n-2)+a(n-4)` with `a(0)=5, a(1)=8, a(2)=30, a(3)=49`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228472

/-- `6*a(n-2)+a(n-4)` -/
def P1685520309808600921.Spec : Prop :=
  ∀ n, (P1685520309808600921.a n : ℤ) = A228472 n

theorem P1685520309808600921.correct : P1685520309808600921.Spec := by
  intro n
  simp only [A228472]

end A228472

/-! ## A228472.P12850157257745617994

`A116559(3*n+5)`
-/

namespace A228472.P12850157257745617994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116559 (3 * n + 5)

end

end A228472.P12850157257745617994

namespace A228472

/-- `A116559(3*n+5)` -/
def P12850157257745617994.Spec : Prop :=
  ∀ n, P12850157257745617994.a n = A228472 n

end A228472

/-! ## A228472.P12623256611850507971

`record[Δ[A295333(n+2)]]`
-/

namespace A228472.P12623256611850507971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228472.P12623256611850507971

namespace A228472

/-- `record[Δ[A295333(n+2)]]` -/
def P12623256611850507971.Spec : Prop :=
  ∀ n, P12623256611850507971.a n = A228472 n

end A228472

/-! ## A228472.P7851050698094090930

`A228469(n+1)-A228471(n)`
-/

namespace A228472.P7851050698094090930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (n + 1) - A228471 n

end

end A228472.P7851050698094090930

namespace A228472

/-- `A228469(n+1)-A228471(n)` -/
def P7851050698094090930.Spec : Prop :=
  ∀ n, P7851050698094090930.a n = A228472 n

end A228472

/-! ## A228472.P12294625865428089675

`A228470(n+1)-2*A228471(n)`
-/

namespace A228472.P12294625865428089675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228470 (n + 1) - 2 * A228471 n

end

end A228472.P12294625865428089675

namespace A228472

/-- `A228470(n+1)-2*A228471(n)` -/
def P12294625865428089675.Spec : Prop :=
  ∀ n, P12294625865428089675.a n = A228472 n

end A228472

/-! ## A228472.P1475881028892091672

`A228469(n+1)+A228469(n+1)-A228470(n+1)`
-/

namespace A228472.P1475881028892091672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (n + 1) + (A228469 (n + 1) - A228470 (n + 1))

end

end A228472.P1475881028892091672

namespace A228472

/-- `A228469(n+1)+A228469(n+1)-A228470(n+1)` -/
def P1475881028892091672.Spec : Prop :=
  ∀ n, P1475881028892091672.a n = A228472 n

end A228472

/-! ## A228472.P15837580329980200424

`2*A228469(n+1)-A228470(n+1)`
-/

namespace A228472.P15837580329980200424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228469 (n + 1) - A228470 (n + 1)

end

end A228472.P15837580329980200424

namespace A228472

/-- `2*A228469(n+1)-A228470(n+1)` -/
def P15837580329980200424.Spec : Prop :=
  ∀ n, P15837580329980200424.a n = A228472 n

end A228472

/-!
# A228474: Number of steps required to reach zero in the wrecker ball sequence starting with n: On the k-th step (k = 1, 2, 3, ...) move a distance of k in the direction of zero. If the result has occurred before, move a distance of k away from zero instead. Set a(n) = -1 if 0 is never reached.

The programs for A228474, there is no canonical definition to state claims against.
-/

/-! ## A228474.P11127974064874176308

`A324662(n)+2*A324660(n)`
-/

namespace A228474.P11127974064874176308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n + 2 * A324660 n

end

end A228474.P11127974064874176308

/-! ## A228474.P12726272519303725957

`A324662(n)+2*(A324688(n)+A324665(n))`
-/

namespace A228474.P12726272519303725957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n + 2 * (A324688 n + A324665 n)

end

end A228474.P12726272519303725957

/-! ## A228474.P15628495078642703379

`A324660(C(2, n²)+n)+A324662(n)+A324660(n)`
-/

namespace A228474.P15628495078642703379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 (Nat.choose 2 (n ^ 2) + n) + (A324662 n + A324660 n)

end

end A228474.P15628495078642703379

/-! ## A228474.P14028532439315684151

`A324660(A028310(n))+A324662(n)+A324660(n)`
-/

namespace A228474.P14028532439315684151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 (A028310 n).toNat + (A324662 n + A324660 n)

end

end A228474.P14028532439315684151

/-! ## A228474.P8662767961278112701

`A324662(n)-2*A324660(n)*A008683(A020484(n))`
-/

namespace A228474.P8662767961278112701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n - 2 * A324660 n * A008683 (A020484 n).toNat

end

end A228474.P8662767961278112701

/-! ## A228474.P6647297215385797381

`A324660(A000007(n)+n)+A324662(n)+A324660(n)`
-/

namespace A228474.P6647297215385797381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 (A000007 n + (n : ℤ)).toNat + (A324662 n + A324660 n)

end

end A228474.P6647297215385797381

/-! ## A228474.P9983305259001232331

`A324660(n)+A324662(n)+A324688(n)+A324665(n)`
-/

namespace A228474.P9983305259001232331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 n + (A324662 n + (A324688 n + A324665 n))

end

end A228474.P9983305259001232331

/-! ## A228474.P6933320568157871232

`A324662(n)+2*(A324665(n)+A324687(n)-A324686(n))`
-/

namespace A228474.P6933320568157871232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 n + 2 * (A324665 n + (A324687 n - A324686 n))

end

end A228474.P6933320568157871232

/-! ## A228474.P7217776102621448255

`A324661(n)+A324660(n)`
-/

namespace A228474.P7217776102621448255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 n + A324660 n

end

end A228474.P7217776102621448255

/-! ## A228474.P4514204774402773606

`A324666(n)+A324665(n)`
-/

namespace A228474.P4514204774402773606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 n + A324665 n

end

end A228474.P4514204774402773606

/-!
# A228476: Number of n X n binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228476, there is no canonical definition to state claims against.
-/

/-! ## A228476.P12859659835673954396

`A228482(∑[4*n]+1)`
-/

namespace A228476.P12859659835673954396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228476.P12859659835673954396

/-! ## A228476.P10217488078699576850

`record[gcd(A204016(n+1), A228482(n+1))]`
-/

namespace A228476.P10217488078699576850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204016 (n + 1)) (A228482 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228476.P10217488078699576850

/-! ## A228476.P12280074604739223891

`gcd(A151878(n), A228482(A001844(n)))`
-/

namespace A228476.P12280074604739223891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A228482 (A001844 n).toNat)

end

end A228476.P12280074604739223891

/-! ## A228476.P16622116275187785360

`lcm(A087960(n), A228482(A001844(n)))`
-/

namespace A228476.P16622116275187785360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A228482 (A001844 n).toNat)

end

end A228476.P16622116275187785360

/-! ## A228476.P4206659344110779450

`or(A000007(n), A228482(A001844(n)))`
-/

namespace A228476.P4206659344110779450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A228482 (A001844 n).toNat)

end

end A228476.P4206659344110779450

/-!
# A228477: Number of nX3 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228477, the canonical program `A228477.P4796817660840288792` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228477 has offset 1).

The definition of A228477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228477.P4796817660840288792

`a(n-1)+5*a(n-2)+4*a(n-3)-a(n-5)` with `a(0)=2, a(1)=4, a(2)=14, a(3)=41, a(4)=127`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A228477

/-- `a(n-1)+5*a(n-2)+4*a(n-3)-a(n-5)` -/
def P4796817660840288792.Spec : Prop :=
  ∀ n, P4796817660840288792.a n = A228477 (n + 1)

theorem P4796817660840288792.correct : P4796817660840288792.Spec := by
  intro n
  simp only [A228477, Nat.add_sub_cancel]

end A228477

/-! ## A228477.P7377102607744263116

`A105262(n+1)+A033999(n)`
-/

namespace A228477.P7377102607744263116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105262 (n + 1) + A033999 n

end

end A228477.P7377102607744263116

namespace A228477

/-- `A105262(n+1)+A033999(n)` -/
def P7377102607744263116.Spec : Prop :=
  ∀ n, P7377102607744263116.a n = A228477 (n + 1)

end A228477

/-! ## A228477.P17139983169287193096

`A228482(∑[n+2]+4)`
-/

namespace A228477.P17139983169287193096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228477.P17139983169287193096

namespace A228477

/-- `A228482(∑[n+2]+4)` -/
def P17139983169287193096.Spec : Prop :=
  ∀ n, P17139983169287193096.a n = A228477 (n + 1)

end A228477

/-! ## A228477.P17477264499355600133

`record[A228482(A027688(n)-A046691(n))]`
-/

namespace A228477.P17477264499355600133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A027688 n - A046691 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228477.P17477264499355600133

namespace A228477

/-- `record[A228482(A027688(n)-A046691(n))]` -/
def P17477264499355600133.Spec : Prop :=
  ∀ n, P17477264499355600133.a n = A228477 (n + 1)

end A228477

/-! ## A228477.P11562018427230973504

`A228482(A167614(n+1))%A042416(n)`
-/

namespace A228477.P11562018427230973504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228482 (A167614 (n + 1)).toNat) (A042416 n)

end

end A228477.P11562018427230973504

namespace A228477

/-- `A228482(A167614(n+1))%A042416(n)` -/
def P11562018427230973504.Spec : Prop :=
  ∀ n, P11562018427230973504.a n = A228477 (n + 1)

end A228477

/-! ## A228477.P5345980923020307237

`lcm(A033999(n), A228482(A167614(n+1)))`
-/

namespace A228477.P5345980923020307237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A228482 (A167614 (n + 1)).toNat)

end

end A228477.P5345980923020307237

namespace A228477

/-- `lcm(A033999(n), A228482(A167614(n+1)))` -/
def P5345980923020307237.Spec : Prop :=
  ∀ n, (P5345980923020307237.a n : ℤ) = A228477 (n + 1)

end A228477

/-!
# A228478: Number of n X 4 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228478, there is no canonical definition to state claims against.
-/

/-! ## A228478.P4947894530745650478

`A228482(∑[n+3]+7)`
-/

namespace A228478.P4947894530745650478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A228478.P4947894530745650478

/-! ## A228478.P3583562386957437988

`lcm(log2(1/2), A228482(A055999(n)+10))`
-/

namespace A228478.P3583562386957437988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A228482 (A055999 n + 10).toNat)

end

end A228478.P3583562386957437988

/-! ## A228478.P8272091674376933425

`lcm(A033999(n), A228482(A052905(n)+9))`
-/

namespace A228478.P8272091674376933425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A228482 (A052905 n + 9).toNat)

end

end A228478.P8272091674376933425

/-! ## A228478.P4777818548371853573

`A228482(A055999(n)+10)+A019590(n+3)`
-/

namespace A228478.P4777818548371853573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A055999 n + 10).toNat + A019590 (n + 3)

end

end A228478.P4777818548371853573

/-! ## A228478.P12012148405172770267

`A228482(A055999(n)+10)%A000351(n+1)`
-/

namespace A228478.P12012148405172770267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228482 (A055999 n + 10).toNat) (A000351 (n + 1))

end

end A228478.P12012148405172770267

/-!
# A228479: Number of n X 5 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228479, there is no canonical definition to state claims against.
-/

/-! ## A228479.P9334498580229997919

`A228482(A167499(n+3))`
-/

namespace A228479.P9334498580229997919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A167499 (n + 3)).toNat

end

end A228479.P9334498580229997919

/-! ## A228479.P2911124822940986788

`A228482(A155212(n)+13)`
-/

namespace A228479.P2911124822940986788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A155212 n + 13).toNat

end

end A228479.P2911124822940986788

/-! ## A228479.P14494938872581932950

`A228482(A000217(n+4)+5)`
-/

namespace A228479.P14494938872581932950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A000217 (n + 4) + 5).toNat

end

end A228479.P14494938872581932950

/-! ## A228479.P8293166045758385210

`A228482(A055998(n+2)+8)`
-/

namespace A228479.P8293166045758385210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A055998 (n + 2) + 8).toNat

end

end A228479.P8293166045758385210

/-! ## A228479.P33458986034091839

`A228482(A055999(n+1)+11)`
-/

namespace A228479.P33458986034091839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A055999 (n + 1) + 11).toNat

end

end A228479.P33458986034091839

/-!
# A228480: Number of nX6 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228480, there is no canonical definition to state claims against.
-/

/-! ## A228480.P18211158994319935094

`A228482(∑[n+5]+16)`
-/

namespace A228480.P18211158994319935094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A228480.P18211158994319935094

/-! ## A228480.P2103448078911168986

`A228482(A000124(n+5)+5)+A000007(n+1)`
-/

namespace A228480.P2103448078911168986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A000124 (n + 5) + 5).toNat + A000007 (n + 1)

end

end A228480.P2103448078911168986

/-! ## A228480.P12598298951958675302

`A008836(n+1)²*A228482(A000124(n+5)+5)`
-/

namespace A228480.P12598298951958675302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A228482 (A000124 (n + 5) + 5).toNat

end

end A228480.P12598298951958675302

/-! ## A228480.P3404959520163241929

`A228482(A000124(n+5)+5)+val(A003642(n+1), 3)`
-/

namespace A228480.P3404959520163241929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A000124 (n + 5) + 5).toNat + (SequenceMachineLib.valuation (A003642 (n + 1)).toNat 3 : ℤ)

end

end A228480.P3404959520163241929

/-! ## A228480.P16309858277477752388

`A228482(A000124(n+5)+5)+val(A003643(n+1), 3)`
-/

namespace A228480.P16309858277477752388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A000124 (n + 5) + 5).toNat + (SequenceMachineLib.valuation (A003643 (n + 1)).toNat 3 : ℤ)

end

end A228480.P16309858277477752388

/-!
# A228481: Number of nX7 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228481, there is no canonical definition to state claims against.
-/

/-! ## A228481.P7262335249847635814

`A228482(eq[8, A131818(n+1)])`
-/

namespace A228481.P7262335249847635814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228481.P7262335249847635814

/-! ## A228481.P11564529098300835643

`A228482(A374008(n+1))`
-/

namespace A228481.P11564529098300835643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A374008 (n + 1)).toNat

end

end A228481.P11564529098300835643

/-! ## A228481.P574068732764494969

`A228482(A055999(n+4))`
-/

namespace A228481.P574068732764494969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A055999 (n + 4)).toNat

end

end A228481.P574068732764494969

/-! ## A228481.P10245613207796810657

`A228482(eq[6, A193592(n)])`
-/

namespace A228481.P10245613207796810657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228481.P10245613207796810657

/-! ## A228481.P12476609203890943344

`A228482(A055998(n+5)-3)`
-/

namespace A228481.P12476609203890943344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228482 (A055998 (n + 5) - 3).toNat

end

end A228481.P12476609203890943344

/-!
# A228482: T(n,k)=Number of nXk binary arrays with top left value 1 and no two ones adjacent horizontally, vertically or antidiagonally.

The programs for A228482, there is no canonical definition to state claims against.
-/

/-! ## A228482.P16821460193254461260

`A036355(n)-A011736(A157149(n))`
-/

namespace A228482.P16821460193254461260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 n - A011736 (A157149 n).toNat

end

end A228482.P16821460193254461260

/-! ## A228482.P13152498783764329231

`A036355(n)-A118135(A157523(n))`
-/

namespace A228482.P13152498783764329231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 n - A118135 (A157523 n).toNat

end

end A228482.P13152498783764329231

/-!
# A228484: a(n) = 2^n*(3*n)!/(n!*(2*n)!).

The programs for A228484, the canonical program `A228484.P202728195289297954` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228484 has offset 0).

The definition of A228484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228484.P202728195289297954

`2^n*A005809(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228484

/-- `2^n*A005809(n)` -/
def P202728195289297954.Spec : Prop :=
  ∀ n, P202728195289297954.a n = A228484 n

theorem P202728195289297954.correct : P202728195289297954.Spec := by
  intro n
  simp only [A228484]

end A228484

/-! ## A228484.P9384256656213312544

`(2*n+1)*A153231(n)`
-/

namespace A228484.P9384256656213312544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A153231 n

end

end A228484.P9384256656213312544

namespace A228484

/-- `(2*n+1)*A153231(n)` -/
def P9384256656213312544.Spec : Prop :=
  ∀ n, P9384256656213312544.a n = A228484 n

end A228484

/-! ## A228484.P8402630062635370952

`A006588(n)/2^n`
-/

namespace A228484.P8402630062635370952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006588 n : ℚ) / (2 ^ n : ℚ)

end

end A228484.P8402630062635370952

namespace A228484

/-- `A006588(n)/2^n` -/
def P8402630062635370952.Spec : Prop :=
  ∀ n, P8402630062635370952.a n = (A228484 n : ℚ)

end A228484

/-! ## A228484.P11253592445866569121

`2^n*(3*n)!/(n!*(2*n)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228484.P11253592445866569121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial (3 * n) : ℚ) / (Nat.factorial n * Nat.factorial (2 * n) : ℚ)

end

end A228484.P11253592445866569121

namespace A228484

/-- `2^n*(3*n)!/(n!*(2*n)!)` -/
def P11253592445866569121.Spec : Prop :=
  ∀ n, P11253592445866569121.a n = (A228484 n : ℚ)

end A228484

/-! ## A228484.P10691610836410752288

`2^n*C(3*n, n)`
-/

namespace A228484.P10691610836410752288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (3 * n) n

end

end A228484.P10691610836410752288

namespace A228484

/-- `2^n*C(3*n, n)` -/
def P10691610836410752288.Spec : Prop :=
  ∀ n, (P10691610836410752288.a n : ℤ) = A228484 n

end A228484

/-! ## A228484.P2318323836699356431

`2^n*A269956(∑[n])`
-/

namespace A228484.P2318323836699356431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A269956 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228484.P2318323836699356431

namespace A228484

/-- `2^n*A269956(∑[n])` -/
def P2318323836699356431.Spec : Prop :=
  ∀ n, P2318323836699356431.a n = A228484 n

end A228484

/-! ## A228484.P15237839294669767865

`C(3*n, n)*A000079(n)`
-/

namespace A228484.P15237839294669767865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * A000079 n

end

end A228484.P15237839294669767865

namespace A228484

/-- `C(3*n, n)*A000079(n)` -/
def P15237839294669767865.Spec : Prop :=
  ∀ n, P15237839294669767865.a n = A228484 n

end A228484

/-! ## A228484.P1940888046969904917

`C(3*n, n)*∑[A011782(n)]`
-/

namespace A228484.P1940888046969904917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228484.P1940888046969904917

namespace A228484

/-- `C(3*n, n)*∑[A011782(n)]` -/
def P1940888046969904917.Spec : Prop :=
  ∀ n, P1940888046969904917.a n = A228484 n

end A228484

/-! ## A228484.P14335136229406327566

`C(3*n, n)*Δ[A000051(n)]`
-/

namespace A228484.P14335136229406327566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (f1 (n + 1) - f1 n)

end

end A228484.P14335136229406327566

namespace A228484

/-- `C(3*n, n)*Δ[A000051(n)]` -/
def P14335136229406327566.Spec : Prop :=
  ∀ n, P14335136229406327566.a n = A228484 n

end A228484

/-! ## A228484.P17120889698469600857

`C(3*n, n)*Δ[A000225(n)]`
-/

namespace A228484.P17120889698469600857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℤ) * (f1 (n + 1) - f1 n)

end

end A228484.P17120889698469600857

namespace A228484

/-- `C(3*n, n)*Δ[A000225(n)]` -/
def P17120889698469600857.Spec : Prop :=
  ∀ n, P17120889698469600857.a n = A228484 n

end A228484

/-!
# A228486: Near primorial primes: primes p such that p+1 or p-1 is a primorial number (A002110).

The programs for A228486, there is no canonical definition to state claims against.
-/

/-! ## A228486.P10211845301488178723

`p?[record[A034386(n)+A033999(n)]]`
-/

namespace A228486.P10211845301488178723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n + A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228486.P10211845301488178723

/-! ## A228486.P172149359679894358

`p?[record[A300951(n)-A033999(n)]]`
-/

namespace A228486.P172149359679894358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 n - A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228486.P172149359679894358

/-! ## A228486.P9454519775113894978

`p?[A034386(n)-A156706(n+1)]`
-/

namespace A228486.P9454519775113894978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n - A156706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228486.P9454519775113894978

/-! ## A228486.P10196344267679655826

`p?[A300951(n+2)-A103452(n)]`
-/

namespace A228486.P10196344267679655826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (n + 2) - A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228486.P10196344267679655826

/-! ## A228486.P885503460097913154

`p?[∪[A057588(n+1), A006862(n)]]`
-/

namespace A228486.P885503460097913154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057588 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006862 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A228486.P885503460097913154

/-!
# A228487: Trace(Pi), where trace is defined in Comments.

The programs for A228487, there is no canonical definition to state claims against.
-/

/-! ## A228487.P120387578124257167

`abs(Δ[floor(acot(A133593(n)))])`
-/

namespace A228487.P120387578124257167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A228487.P120387578124257167

/-! ## A228487.P8411066975384543293

`Δ[floor(acot(A133593(2*n-n)))]²`
-/

namespace A228487.P8411066975384543293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 (2 * n - n) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A228487.P8411066975384543293

/-! ## A228487.P8495238948863065846

`Δ[floor(acot(A133593(n-(2-4/2))))]²%8`
-/

namespace A228487.P8495238948863065846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 (SequenceMachineLib.roundAway ((n : ℚ) - (2 - (4 : ℚ) / 2))).toNat : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 8

end

end A228487.P8495238948863065846

/-! ## A228487.P12608075367291326769

`A000093(Δ[floor(acot(A133593(n)))]²)`
-/

namespace A228487.P12608075367291326769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A228487.P12608075367291326769

/-! ## A228487.P2083148229591925197

`A051601(Δ[floor(acot(A133593(n)))]²)`
-/

namespace A228487.P2083148229591925197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A228487.P2083148229591925197

/-! ## A228487.P2921565808664138105

`A035363(1-Δ[floor(acot(A133593(n)))])`
-/

namespace A228487.P2921565808664138105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A228487.P2921565808664138105

/-! ## A228487.P14693701667671393852

`A131689(1-Δ[floor(acot(A133593(n)))])`
-/

namespace A228487.P14693701667671393852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A228487.P14693701667671393852

/-! ## A228487.P13640549337057756967

`A151511(1-Δ[floor(acot(A133593(n)))])`
-/

namespace A228487.P13640549337057756967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A228487.P13640549337057756967

/-! ## A228487.P9644172265143734930

`Δ[floor(acot(A133593(n)))]^A000010(n+1)`
-/

namespace A228487.P9644172265143734930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A228487.P9644172265143734930

/-! ## A228487.P18039782980686423626

`Δ[floor(acot(A133593(n)))]^A000203(n+1)`
-/

namespace A228487.P18039782980686423626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A133593 n : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000203 (n + 1) : ℤ)

end

end A228487.P18039782980686423626

/-!
# A228488: Period length of trace(sqrt(n)).

The programs for A228488, there is no canonical definition to state claims against.
-/

/-! ## A228488.P6191920756250125875

`A000120(A003285(n+1)^A071202(n+2))`
-/

namespace A228488.P6191920756250125875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A003285 (n + 1) : ℚ) ^ (A071202 (n + 2) : ℤ))).toNat

end

end A228488.P6191920756250125875

/-! ## A228488.P13318608181881998376

`A000120(A003285(n+1)^A309914(n))`
-/

namespace A228488.P13318608181881998376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A003285 (n + 1) : ℚ) ^ (A309914 n : ℤ))).toNat

end

end A228488.P13318608181881998376

/-! ## A228488.P6181661464708427600

`A000120(A003285(n+1)^A237593(3*n+1))`
-/

namespace A228488.P6181661464708427600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A003285 (n + 1) : ℚ) ^ (A237593 (3 * n + 1) : ℤ))).toNat

end

end A228488.P6181661464708427600

/-! ## A228488.P17126215795828696462

`A158558(A126120(n))%A022446(n)`
-/

namespace A228488.P17126215795828696462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 (A126120 n).toNat) (A022446 n)

end

end A228488.P17126215795828696462

/-! ## A228488.P12348437400591556527

`A008687(A003285(n+1)^A000700(n))`
-/

namespace A228488.P12348437400591556527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (SequenceMachineLib.roundAway ((A003285 (n + 1) : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A228488.P12348437400591556527

/-!
# A228489: Period of trace(n*phi), where phi = (1+sqrt(5))/2 = golden ratio.

The programs for A228489, there is no canonical definition to state claims against.
-/

/-! ## A228489.P12364825630470392438

`A348969(A333135(n+1)+A040983(n+1))`
-/

namespace A228489.P12364825630470392438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348969 (A333135 (n + 1) + A040983 (n + 1)).toNat

end

end A228489.P12364825630470392438

/-! ## A228489.P4460778638460477468

`gcd(A068358(n+1), A250268(A278236(n)))`
-/

namespace A228489.P4460778638460477468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A068358 (n + 1)) (A250268 (A278236 n).toNat)

end

end A228489.P4460778638460477468

/-!
# A228490: Numbers k for which prime(1) + ... + prime(k) = 2*prime(m) for some m.

The programs for A228490, there is no canonical definition to state claims against.
-/

/-! ## A228490.P18417727377424980856

`∩[2*n+1, A213650(n+1)]`
-/

namespace A228490.P18417727377424980856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228490.P18417727377424980856

/-! ## A228490.P6584121215193526780

`A000720(A089894(n))`
-/

namespace A228490.P6584121215193526780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089894 n).toNat

end

end A228490.P6584121215193526780

/-! ## A228490.P5251791656596391168

`A058933(p?[A089894(n)])`
-/

namespace A228490.P5251791656596391168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228490.P5251791656596391168

/-! ## A228490.P10953609389960569549

`A061395(p?[A089894(n)])`
-/

namespace A228490.P10953609389960569549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228490.P10953609389960569549

/-! ## A228490.P10726271356777261001

`A065770(p?[A089894(n)])`
-/

namespace A228490.P10726271356777261001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228490.P10726271356777261001

/-! ## A228490.P11228545867406276489

`A066328(p?[A089894(n)])`
-/

namespace A228490.P11228545867406276489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A228490.P11228545867406276489

/-! ## A228490.P3018847408873945501

`A061395(2*A089894(n))`
-/

namespace A228490.P3018847408873945501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A089894 n).toNat

end

end A228490.P3018847408873945501

/-! ## A228490.P946451978516825125

`A061395(lcm(2, A089894(n)))`
-/

namespace A228490.P946451978516825125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A089894 n))

end

end A228490.P946451978516825125

/-! ## A228490.P541153112848396129

`A058933(or(1, A089894(n)))`
-/

namespace A228490.P541153112848396129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (Int.lor 1 (A089894 n)).toNat

end

end A228490.P541153112848396129

/-! ## A228490.P15396736408572420139

`A061395(or(1, A089894(n)))`
-/

namespace A228490.P15396736408572420139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A089894 n)).toNat

end

end A228490.P15396736408572420139

/-!
# A228491: Numbers k for which sum(first k primes) = 3*prime(m) for some m.

The programs for A228491, there is no canonical definition to state claims against.
-/

/-! ## A228491.P2535938492860268458

`∩[A103208(n+1), A213650(n+1)]`
-/

namespace A228491.P2535938492860268458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228491.P2535938492860268458

/-! ## A228491.P2078992006814917860

`record[A103208(n+1)/A001222(A112270(n+1))]`
-/

namespace A228491.P2078992006814917860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103208 (n + 1) : ℚ) / (A001222 (A112270 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228491.P2078992006814917860

/-! ## A228491.P12182318886608153243

`eq[3, A309892(A007504(n))]`
-/

namespace A228491.P12182318886608153243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228491.P12182318886608153243

/-! ## A228491.P5099885600868760120

`eq[4, A289052(A014284(n+1))]`
-/

namespace A228491.P5099885600868760120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289052 (A014284 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228491.P5099885600868760120

/-! ## A228491.P8255236160790722142

`eq[A020639(2*(n+1)), A040966(A007504(n))]`
-/

namespace A228491.P8255236160790722142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040966 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A228491.P8255236160790722142

/-!
# A228493: Numerators of continued fraction transform of Pi.

The programs for A228493, there is no canonical definition to state claims against.
-/

/-! ## A228493.P1141336505058879716

`A111189(n+3)+comp[A111193(n+2)]`
-/

namespace A228493.P1141336505058879716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111193 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111189 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A228493.P1141336505058879716

/-!
# A228494: The number of 3-length segments in all possible covers of L-length line by these segments with allowed gaps < 3.

The programs for A228494, there is no canonical definition to state claims against.
-/

/-! ## A228494.P12834730682561532501

`A351203(n)+A225654(A032020(n))`
-/

namespace A228494.P12834730682561532501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351203 n + A225654 (A032020 n).toNat

end

end A228494.P12834730682561532501

/-! ## A228494.P5068742740162593406

`A062469(A348801(n+4)+A006950(n))`
-/

namespace A228494.P5068742740162593406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062469 (A348801 (n + 4) + A006950 n).toNat

end

end A228494.P5068742740162593406

/-! ## A228494.P15817761531159133585

`A273190(A000225(n+2))-A001222(n+2)`
-/

namespace A228494.P15817761531159133585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A000225 (n + 2)).toNat - A001222 (n + 2)

end

end A228494.P15817761531159133585

/-!
# A228495: Characteristic function of the odd odious numbers (A092246).

The programs for A228495, the canonical program `A228495.P3981489379467428454` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228495 has offset 0).

The definition of A228495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228495.P3981489379467428454

`A000035(n)*A010060(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228495

/-- `A000035(n)*A010060(n)` -/
def P3981489379467428454.Spec : Prop :=
  ∀ n, P3981489379467428454.a n = A228495 n

theorem P3981489379467428454.correct : P3981489379467428454.Spec := by
  intro n
  simp only [A228495]

end A228495

/-! ## A228495.P4197975435488837894

`char[xor(4*n, Δ[n²])]`
-/

namespace A228495.P4197975435488837894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A228495.P4197975435488837894

namespace A228495

/-- `char[xor(4*n, Δ[n²])]` -/
def P4197975435488837894.Spec : Prop :=
  ∀ n, (P4197975435488837894.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P489125838866013993

`and(n, char[xor(n, Δ[n²])])`
-/

namespace A228495.P489125838866013993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A228495.P489125838866013993

namespace A228495

/-- `and(n, char[xor(n, Δ[n²])])` -/
def P489125838866013993.Spec : Prop :=
  ∀ n, (P489125838866013993.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P12949319873144712941

`and(n, char[comp[xor(n, 2*n)]])`
-/

namespace A228495.P12949319873144712941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f1 j = n then 1 else 0)

end

end A228495.P12949319873144712941

namespace A228495

/-- `and(n, char[comp[xor(n, 2*n)]])` -/
def P12949319873144712941.Spec : Prop :=
  ∀ n, (P12949319873144712941.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P7824647526447565939

`char[2*xor(n, 2*n)+1]`
-/

namespace A228495.P7824647526447565939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A228495.P7824647526447565939

namespace A228495

/-- `char[2*xor(n, 2*n)+1]` -/
def P7824647526447565939.Spec : Prop :=
  ∀ n, (P7824647526447565939.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P1386159899949761890

`char[or(1, 2*xor(n, 2*n))]`
-/

namespace A228495.P1386159899949761890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.xor n (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A228495.P1386159899949761890

namespace A228495

/-- `char[or(1, 2*xor(n, 2*n))]` -/
def P1386159899949761890.Spec : Prop :=
  ∀ n, (P1386159899949761890.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P18274780064374531496

`n%(2-char[xor(n, 2*n)])`
-/

namespace A228495.P18274780064374531496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A228495.P18274780064374531496

namespace A228495

/-- `n%(2-char[xor(n, 2*n)])` -/
def P18274780064374531496.Spec : Prop :=
  ∀ n, P18274780064374531496.a n = A228495 n

end A228495

/-! ## A228495.P6161043142928911344

`1-A254377(n)`
-/

namespace A228495.P6161043142928911344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254377 n

end

end A228495.P6161043142928911344

namespace A228495

/-- `1-A254377(n)` -/
def P6161043142928911344.Spec : Prop :=
  ∀ n, P6161043142928911344.a n = A228495 n

end A228495

/-! ## A228495.P9526493721436054081

`A101673(n)%2`
-/

namespace A228495.P9526493721436054081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101673 n) 2

end

end A228495.P9526493721436054081

namespace A228495

/-- `A101673(n)%2` -/
def P9526493721436054081.Spec : Prop :=
  ∀ n, P9526493721436054081.a n = A228495 n

end A228495

/-! ## A228495.P7061697614772215452

`A102392(n)%2`
-/

namespace A228495.P7061697614772215452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102392 n) 2

end

end A228495.P7061697614772215452

namespace A228495

/-- `A102392(n)%2` -/
def P7061697614772215452.Spec : Prop :=
  ∀ n, P7061697614772215452.a n = A228495 n

end A228495

/-! ## A228495.P16652595897954528976

`A245788(n)%2`
-/

namespace A228495.P16652595897954528976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245788 n) 2

end

end A228495.P16652595897954528976

namespace A228495

/-- `A245788(n)%2` -/
def P16652595897954528976.Spec : Prop :=
  ∀ n, P16652595897954528976.a n = A228495 n

end A228495

/-! ## A228495.P2927827914455448502

`A246160(n)%2`
-/

namespace A228495.P2927827914455448502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246160 n) 2

end

end A228495.P2927827914455448502

namespace A228495

/-- `A246160(n)%2` -/
def P2927827914455448502.Spec : Prop :=
  ∀ n, P2927827914455448502.a n = A228495 n

end A228495

/-! ## A228495.P2085372879118813537

`A254379(xor(3, n))`
-/

namespace A228495.P2085372879118813537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (Nat.xor 3 n)

end

end A228495.P2085372879118813537

namespace A228495

/-- `A254379(xor(3, n))` -/
def P2085372879118813537.Spec : Prop :=
  ∀ n, P2085372879118813537.a n = A228495 n

end A228495

/-! ## A228495.P470013673397487906

`n%A001285(n)`
-/

namespace A228495.P470013673397487906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A001285 n)

end

end A228495.P470013673397487906

namespace A228495

/-- `n%A001285(n)` -/
def P470013673397487906.Spec : Prop :=
  ∀ n, P470013673397487906.a n = A228495 n

end A228495

/-! ## A228495.P1731144436207899827

`and(n, A010060(n))`
-/

namespace A228495.P1731144436207899827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A010060 n)

end

end A228495.P1731144436207899827

namespace A228495

/-- `and(n, A010060(n))` -/
def P1731144436207899827.Spec : Prop :=
  ∀ n, P1731144436207899827.a n = A228495 n

end A228495

/-! ## A228495.P17309744008503499988

`and(n, A179020(n))`
-/

namespace A228495.P17309744008503499988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A179020 n)

end

end A228495.P17309744008503499988

namespace A228495

/-- `and(n, A179020(n))` -/
def P17309744008503499988.Spec : Prop :=
  ∀ n, P17309744008503499988.a n = A228495 n

end A228495

/-! ## A228495.P18195537540133404849

`char[A048726(n)+1]`
-/

namespace A228495.P18195537540133404849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A228495.P18195537540133404849

namespace A228495

/-- `char[A048726(n)+1]` -/
def P18195537540133404849.Spec : Prop :=
  ∀ n, (P18195537540133404849.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P9601068854577878784

`char[A092246(n+1)]`
-/

namespace A228495.P9601068854577878784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A228495.P9601068854577878784

namespace A228495

/-- `char[A092246(n+1)]` -/
def P9601068854577878784.Spec : Prop :=
  ∀ n, (P9601068854577878784.a n : ℤ) = A228495 n

end A228495

/-! ## A228495.P9601992113371691252

`char[A114389(n+1)]`
-/

namespace A228495.P9601992113371691252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A228495.P9601992113371691252

namespace A228495

/-- `char[A114389(n+1)]` -/
def P9601992113371691252.Spec : Prop :=
  ∀ n, (P9601992113371691252.a n : ℤ) = A228495 n

end A228495

/-!
# A228498: a(n) = sigma(n^2) + phi(n^2) - 2n^2.

The programs for A228498, the canonical program `A228498.P12527893153496033992` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228498 has offset 1).

The definition of A228498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228498.P12527893153496033992

`A002618(n+1)-A377879(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A228498

/-- `A002618(n+1)-A377879(n+1)` -/
def P12527893153496033992.Spec : Prop :=
  ∀ n, P12527893153496033992.a n = A228498 (n + 1)

theorem P12527893153496033992.correct : P12527893153496033992.Spec := by
  intro n
  simp only [A228498, Nat.add_sub_cancel]

end A228498

/-! ## A228498.P8699435498254336226

`A002618(n+1)+A065764(n+1)-A001105(n+1)`
-/

namespace A228498.P8699435498254336226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + (A065764 (n + 1) - A001105 (n + 1))

end

end A228498.P8699435498254336226

namespace A228498

/-- `A002618(n+1)+A065764(n+1)-A001105(n+1)` -/
def P8699435498254336226.Spec : Prop :=
  ∀ n, P8699435498254336226.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P2510472179430768203

`A051709((n+1)²)`
-/

namespace A228498.P2510472179430768203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 ((n + 1) ^ 2)

end

end A228498.P2510472179430768203

namespace A228498

/-- `A051709((n+1)²)` -/
def P2510472179430768203.Spec : Prop :=
  ∀ n, P2510472179430768203.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P11249247601278712410

`A051709((n+1)*(n+1))+2-4/2`
-/

namespace A228498.P11249247601278712410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051709 ((n + 1) * (n + 1)) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A228498.P11249247601278712410

namespace A228498

/-- `A051709((n+1)*(n+1))+2-4/2` -/
def P11249247601278712410.Spec : Prop :=
  ∀ n, P11249247601278712410.a n = (A228498 (n + 1) : ℚ)

end A228498

/-! ## A228498.P9237721908514976344

`A051709(∑[2*n+1])%A271279(n)`
-/

namespace A228498.P9237721908514976344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051709 (∑ j ∈ Finset.range (n + 1), f1 j)) (A271279 n)

end

end A228498.P9237721908514976344

namespace A228498

/-- `A051709(∑[2*n+1])%A271279(n)` -/
def P9237721908514976344.Spec : Prop :=
  ∀ n, P9237721908514976344.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P6275197470543329994

`or(A051709(∑[2*n+1]), A157928(n))`
-/

namespace A228498.P6275197470543329994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051709 (∑ j ∈ Finset.range (n + 1), f1 j)) (A157928 n)

end

end A228498.P6275197470543329994

namespace A228498

/-- `or(A051709(∑[2*n+1]), A157928(n))` -/
def P6275197470543329994.Spec : Prop :=
  ∀ n, P6275197470543329994.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P601396280772176622

`or(A051709(∑[2*n+1]), A323514(n+1))`
-/

namespace A228498.P601396280772176622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051709 (∑ j ∈ Finset.range (n + 1), f1 j)) (A323514 (n + 1))

end

end A228498.P601396280772176622

namespace A228498

/-- `or(A051709(∑[2*n+1]), A323514(n+1))` -/
def P601396280772176622.Spec : Prop :=
  ∀ n, P601396280772176622.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P12509648345507099360

`(n+1-A028310(n))*A051709(∑[2*n+1])`
-/

namespace A228498.P12509648345507099360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A028310 n) * A051709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228498.P12509648345507099360

namespace A228498

/-- `(n+1-A028310(n))*A051709(∑[2*n+1])` -/
def P12509648345507099360.Spec : Prop :=
  ∀ n, P12509648345507099360.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P7651119080234504366

`A000010(A014963(2*(n+1)))*A051709(∑[2*n+1])`
-/

namespace A228498.P7651119080234504366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A051709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228498.P7651119080234504366

namespace A228498

/-- `A000010(A014963(2*(n+1)))*A051709(∑[2*n+1])` -/
def P7651119080234504366.Spec : Prop :=
  ∀ n, P7651119080234504366.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P13747796810160765004

`A000045(A020639(2*(n+1)))*A051709(∑[2*n+1])`
-/

namespace A228498.P13747796810160765004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A051709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228498.P13747796810160765004

namespace A228498

/-- `A000045(A020639(2*(n+1)))*A051709(∑[2*n+1])` -/
def P13747796810160765004.Spec : Prop :=
  ∀ n, P13747796810160765004.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P10545299184019772517

`A000010((n+1)²)-A033879((n+1)²)`
-/

namespace A228498.P10545299184019772517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2) - A033879 ((n + 1) ^ 2)

end

end A228498.P10545299184019772517

namespace A228498

/-- `A000010((n+1)²)-A033879((n+1)²)` -/
def P10545299184019772517.Spec : Prop :=
  ∀ n, P10545299184019772517.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P258361077854256509

`A051709((n+1)*(n+1))*A077028(∑[n])`
-/

namespace A228498.P258361077854256509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 ((n + 1) * (n + 1)) * A077028 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228498.P258361077854256509

namespace A228498

/-- `A051709((n+1)*(n+1))*A077028(∑[n])` -/
def P258361077854256509.Spec : Prop :=
  ∀ n, P258361077854256509.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P5564731776157564979

`A209187((n+1)²)-(n+1)²`
-/

namespace A228498.P5564731776157564979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A228498.P5564731776157564979

namespace A228498

/-- `A209187((n+1)²)-(n+1)²` -/
def P5564731776157564979.Spec : Prop :=
  ∀ n, P5564731776157564979.a n = A228498 (n + 1)

end A228498

/-! ## A228498.P14532040955201237988

`A065387((n+1)²)-A001105(n+1)`
-/

namespace A228498.P14532040955201237988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 ((n + 1) ^ 2) - A001105 (n + 1)

end

end A228498.P14532040955201237988

namespace A228498

/-- `A065387((n+1)²)-A001105(n+1)` -/
def P14532040955201237988.Spec : Prop :=
  ∀ n, P14532040955201237988.a n = A228498 (n + 1)

end A228498

/-!
# A228499: Sums of two rational cubes, excluding cubes and twice cubes.

The programs for A228499, there is no canonical definition to state claims against.
-/

/-! ## A228499.P411996627241768639

`lt[1, exp(a(A060838(n)))]` with `a(0)=0`
-/

namespace A228499.P411996627241768639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A060838 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A228499.P411996627241768639

/-! ## A228499.P5200208127609905090

`lt[0, A060838(n+1)]+1`
-/

namespace A228499.P5200208127609905090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A228499.P5200208127609905090

/-! ## A228499.P10735594859797475087

`comp[A309960(n+1)-1]+1`
-/

namespace A228499.P10735594859797475087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309960 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228499.P10735594859797475087

/-! ## A228499.P16631116285957437945

`lt[0, A060838(A022144(n))]`
-/

namespace A228499.P16631116285957437945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228499.P16631116285957437945

/-! ## A228499.P7115024769639618596

`lt[0, A060838(A028310(n))]`
-/

namespace A228499.P7115024769639618596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228499.P7115024769639618596

/-! ## A228499.P5211941800817520637

`A065475(lt[0, A060838(n+1)])`
-/

namespace A228499.P5211941800817520637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A228499.P5211941800817520637

/-! ## A228499.P9950894214536466011

`lt[2, A000032(a(A060838(n)))]` with `a(0)=0`
-/

namespace A228499.P9950894214536466011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228499.P9950894214536466011

/-! ## A228499.P14257123821939205733

`lt[2, A000040(a(A060838(n)))]` with `a(0)=1`
-/

namespace A228499.P14257123821939205733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228499.P14257123821939205733

/-! ## A228499.P7118497376621116975

`eq[1, A000045(a(A060838(n)))]` with `a(0)=3`
-/

namespace A228499.P7118497376621116975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228499.P7118497376621116975

/-! ## A228499.P9272614749028968810

`eq[1, A007318(a(A060838(n)))]` with `a(0)=4`
-/

namespace A228499.P9272614749028968810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A060838 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A228499.P9272614749028968810

