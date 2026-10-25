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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A131500: Radii of orbits of planets in solar system, in units of radius of orbit of Mercury, multiplied by 4.

The programs for A131500, there is no canonical definition to state claims against.
-/

/-! ## A131500.P16414514795571058213

`A016777(∑[∏[A239660(n+2)]])`
-/

namespace A131500.P16414514795571058213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239660 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A131500.P16414514795571058213

/-! ## A131500.P5979855039261471786

`∪[A043439(n+1), A003461(n)]`
-/

namespace A131500.P5979855039261471786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131500.P5979855039261471786

/-! ## A131500.P3091656717551867319

`∪[A126662(n+1), A003461(n)]`
-/

namespace A131500.P3091656717551867319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131500.P3091656717551867319

/-! ## A131500.P6276842501002898149

`∪[A207348(n+1), A003461(n)]`
-/

namespace A131500.P6276842501002898149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131500.P6276842501002898149

/-! ## A131500.P14359384599484455782

`∪[A207657(n+1), A003461(n)]`
-/

namespace A131500.P14359384599484455782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131500.P14359384599484455782

/-!
# A131501: Xm/CV where Xm is a point of maximum error using an approximation method for x^(1/2) which I have found and CV is the population coefficient of variation from my list of error values.

The programs for A131501, the canonical program `A131501.P4048072326544719545` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131501 has offset 1).

The definition of A131501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131501.P4048072326544719545

`10*(n+1)-a(n-1)-4` with `a(0)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131501

/-- `10*(n+1)-a(n-1)-4` -/
def P4048072326544719545.Spec : Prop :=
  ∀ n, P4048072326544719545.a n = A131501 (n + 1)

theorem P4048072326544719545.correct : P4048072326544719545.Spec := by
  intro n
  simp only [A131501, Nat.add_sub_cancel]

end A131501

/-! ## A131501.P5068541205098483119

`∑[C(4, gcd(2, n))]`
-/

namespace A131501.P5068541205098483119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131501.P5068541205098483119

namespace A131501

/-- `∑[C(4, gcd(2, n))]` -/
def P5068541205098483119.Spec : Prop :=
  ∀ n, (P5068541205098483119.a n : ℤ) = A131501 (n + 1)

end A131501

/-! ## A131501.P14055690271733608068

`∑[(-1)^n+5]`
-/

namespace A131501.P14055690271733608068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131501.P14055690271733608068

namespace A131501

/-- `∑[(-1)^n+5]` -/
def P14055690271733608068.Spec : Prop :=
  ∀ n, P14055690271733608068.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P2973682183015187325

`or(1, 5*n)+5`
-/

namespace A131501.P2973682183015187325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n) + 5

end

end A131501.P2973682183015187325

namespace A131501

/-- `or(1, 5*n)+5` -/
def P2973682183015187325.Spec : Prop :=
  ∀ n, (P2973682183015187325.a n : ℤ) = A131501 (n + 1)

end A131501

/-! ## A131501.P13358674379470858087

`and(5*n, -2)+6`
-/

namespace A131501.P13358674379470858087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n : ℤ) (-2) + 6

end

end A131501.P13358674379470858087

namespace A131501

/-- `and(5*n, -2)+6` -/
def P13358674379470858087.Spec : Prop :=
  ∀ n, P13358674379470858087.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P5574460636630329327

`a(n-2)+10` with `a(0)=6, a(1)=10`
-/

namespace A131501.P5574460636630329327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 10] fun n a =>
  a (n - 2) + 10

end

end A131501.P5574460636630329327

namespace A131501

/-- `a(n-2)+10` -/
def P5574460636630329327.Spec : Prop :=
  ∀ n, (P5574460636630329327.a n : ℤ) = A131501 (n + 1)

end A131501

/-! ## A131501.P9571652982329257334

`2*∑[3-and(1, n)]`
-/

namespace A131501.P9571652982329257334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131501.P9571652982329257334

namespace A131501

/-- `2*∑[3-and(1, n)]` -/
def P9571652982329257334.Spec : Prop :=
  ∀ n, P9571652982329257334.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P5340727806400963054

`ogf((6+4x)/(1-x-x^2+x^3))`
-/

namespace A131501.P5340727806400963054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 4] [1, -1, -1, 1] n

end

end A131501.P5340727806400963054

namespace A131501

/-- `ogf((6+4x)/(1-x-x^2+x^3))` -/
def P5340727806400963054.Spec : Prop :=
  ∀ n, P5340727806400963054.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P16306101004790453714

`abs(∑[2*n%2-6])`
-/

namespace A131501.P16306101004790453714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n % 2) : ℕ) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A131501.P16306101004790453714

namespace A131501

/-- `abs(∑[2*n%2-6])` -/
def P16306101004790453714.Spec : Prop :=
  ∀ n, P16306101004790453714.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P7929342744854164224

`floor(∑[10-a(n-1)])` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A131501.P7929342744854164224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131501.P7929342744854164224

namespace A131501

/-- `floor(∑[10-a(n-1)])` -/
def P7929342744854164224.Spec : Prop :=
  ∀ n, P7929342744854164224.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P17723328554260349912

`2*∑[(n+1)%2+2]`
-/

namespace A131501.P17723328554260349912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131501.P17723328554260349912

namespace A131501

/-- `2*∑[(n+1)%2+2]` -/
def P17723328554260349912.Spec : Prop :=
  ∀ n, (P17723328554260349912.a n : ℤ) = A131501 (n + 1)

end A131501

/-! ## A131501.P13766090272805086515

`2*∑[5-a(n-1)]` with `a(0)=3`
-/

namespace A131501.P13766090272805086515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131501.P13766090272805086515

namespace A131501

/-- `2*∑[5-a(n-1)]` -/
def P13766090272805086515.Spec : Prop :=
  ∀ n, P13766090272805086515.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P2353350326112009943

`10-floor(-a(n-2))` with `a(0)=6, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A131501.P2353350326112009943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  10 - (-a (n - 2))

end

end A131501.P2353350326112009943

namespace A131501

/-- `10-floor(-a(n-2))` -/
def P2353350326112009943.Spec : Prop :=
  ∀ n, P2353350326112009943.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P4852915866458595996

`10-ceil(-a(n-2))` with `a(0)=6, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A131501.P4852915866458595996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  10 - (-a (n - 2))

end

end A131501.P4852915866458595996

namespace A131501

/-- `10-ceil(-a(n-2))` -/
def P4852915866458595996.Spec : Prop :=
  ∀ n, P4852915866458595996.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P14880726935044582128

`10-round(-a(n-2))` with `a(0)=6, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A131501.P14880726935044582128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  10 - (-a (n - 2))

end

end A131501.P14880726935044582128

namespace A131501

/-- `10-round(-a(n-2))` -/
def P14880726935044582128.Spec : Prop :=
  ∀ n, P14880726935044582128.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P5429407680728037733

`-∑[or(2*n, -3)-3]`
-/

namespace A131501.P5429407680728037733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131501.P5429407680728037733

namespace A131501

/-- `-∑[or(2*n, -3)-3]` -/
def P5429407680728037733.Spec : Prop :=
  ∀ n, P5429407680728037733.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P18008594841176800022

`6-(a(n-1)-10*n)` with `a(0)=6`
-/

namespace A131501.P18008594841176800022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  6 - (a (n - 1) - (10 * n : ℤ))

end

end A131501.P18008594841176800022

namespace A131501

/-- `6-(a(n-1)-10*n)` -/
def P18008594841176800022.Spec : Prop :=
  ∀ n, P18008594841176800022.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P932148626666534074

`-∑[xor(1, n-3)-(n+2)]`
-/

namespace A131501.P932148626666534074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 3) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131501.P932148626666534074

namespace A131501

/-- `-∑[xor(1, n-3)-(n+2)]` -/
def P932148626666534074.Spec : Prop :=
  ∀ n, P932148626666534074.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P13069128262764577617

`record[(2-n)²%10+n+2]`
-/

namespace A131501.P13069128262764577617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 - (n : ℤ)) ^ 2) 10 + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131501.P13069128262764577617

namespace A131501

/-- `record[(2-n)²%10+n+2]` -/
def P13069128262764577617.Spec : Prop :=
  ∀ n, P13069128262764577617.a n = A131501 (n + 1)

end A131501

/-! ## A131501.P18186831252307883889

`∑[gcd(4, 2*n)+1]+n+1`
-/

namespace A131501.P18186831252307883889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A131501.P18186831252307883889

namespace A131501

/-- `∑[gcd(4, 2*n)+1]+n+1` -/
def P18186831252307883889.Spec : Prop :=
  ∀ n, (P18186831252307883889.a n : ℤ) = A131501 (n + 1)

end A131501

/-!
# A131502: Half the number of permutations of 1..(n+1) with a zero n-th difference.

The programs for A131502, there is no canonical definition to state claims against.
-/

/-! ## A131502.P13164339861023477957

`A366549(A367968(n))`
-/

namespace A131502.P13164339861023477957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366549 (A367968 n).toNat

end

end A131502.P13164339861023477957

/-! ## A131502.P2903938150794495190

`A028422(2*A065048(n))`
-/

namespace A131502.P2903938150794495190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (2 * A065048 n).toNat

end

end A131502.P2903938150794495190

/-! ## A131502.P1185791158388284012

`and(p?[A005708(n)], A066645(n))`
-/

namespace A131502.P1185791158388284012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A066645 n)

end

end A131502.P1185791158388284012

/-!
# A131503: Nonnegative integers n for which cos(n) is positive.

The programs for A131503, the canonical program `A131503.P11146246036078879825` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131503 has offset 1).

The definition of A131503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131503.P11146246036078879825

`lt[0, cos(n)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131503

/-- `lt[0, cos(n)]` -/
def P11146246036078879825.Spec : Prop :=
  ∀ n, (P11146246036078879825.a n : ℤ) = A131503 (n + 1)

theorem P11146246036078879825.correct : P11146246036078879825.Spec := by
  intro n
  simp only [A131503, Nat.add_sub_cancel]

end A131503

/-! ## A131503.P4493040533131975826

`record[n*ceil(cos(n))]`
-/

namespace A131503.P4493040533131975826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.cos (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131503.P4493040533131975826

namespace A131503

/-- `record[n*ceil(cos(n))]` -/
def P4493040533131975826.Spec : Prop :=
  ∀ n, P4493040533131975826.a n = A131503 (n + 1)

end A131503

/-! ## A131503.P6293653581469628275

`record[n^ceil(cos(n))]`
-/

namespace A131503.P6293653581469628275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.cos (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131503.P6293653581469628275

namespace A131503

/-- `record[n^ceil(cos(n))]` -/
def P6293653581469628275.Spec : Prop :=
  ∀ n, P6293653581469628275.a n = (A131503 (n + 1) : ℚ)

end A131503

/-! ## A131503.P11471948804208393108

`record[lcm(n, ceil(cos(n)))]`
-/

namespace A131503.P11471948804208393108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌈Real.cos (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131503.P11471948804208393108

namespace A131503

/-- `record[lcm(n, ceil(cos(n)))]` -/
def P11471948804208393108.Spec : Prop :=
  ∀ n, (P11471948804208393108.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P14364281933273533492

`record[C(n, ceil(cos(n)))]`
-/

namespace A131503.P14364281933273533492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌈Real.cos (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131503.P14364281933273533492

namespace A131503

/-- `record[C(n, ceil(cos(n)))]` -/
def P14364281933273533492.Spec : Prop :=
  ∀ n, (P14364281933273533492.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P17883352229988991532

`eq[abs(cos(n)), cos(n)]`
-/

namespace A131503.P17883352229988991532
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131503.P17883352229988991532

namespace A131503

/-- `eq[abs(cos(n)), cos(n)]` -/
def P17883352229988991532.Spec : Prop :=
  ∀ n, (P17883352229988991532.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P8750236859266322816

`lt[tan(n/2)², 1]`
-/

namespace A131503.P8750236859266322816
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A131503.P8750236859266322816

namespace A131503

/-- `lt[tan(n/2)², 1]` -/
def P8750236859266322816.Spec : Prop :=
  ∀ n, (P8750236859266322816.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P13298984526853090029

`comp[lt[sin(n+1), sin(n-1)]]`
-/

namespace A131503.P13298984526853090029
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131503.P13298984526853090029

namespace A131503

/-- `comp[lt[sin(n+1), sin(n-1)]]` -/
def P13298984526853090029.Spec : Prop :=
  ∀ n, (P13298984526853090029.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P11843185327836988676

`comp[A246440(n+1)+1]`
-/

namespace A131503.P11843185327836988676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A131503.P11843185327836988676

namespace A131503

/-- `comp[A246440(n+1)+1]` -/
def P11843185327836988676.Spec : Prop :=
  ∀ n, (P11843185327836988676.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P10386371852289236920

`∪[A246393(n), A246395(n)]`
-/

namespace A131503.P10386371852289236920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131503.P10386371852289236920

namespace A131503

/-- `∪[A246393(n), A246395(n)]` -/
def P10386371852289236920.Spec : Prop :=
  ∀ n, (P10386371852289236920.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P16431666087391774784

`∪[A277137(n+1), A246395(n)]`
-/

namespace A131503.P16431666087391774784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131503.P16431666087391774784

namespace A131503

/-- `∪[A277137(n+1), A246395(n)]` -/
def P16431666087391774784.Spec : Prop :=
  ∀ n, (P16431666087391774784.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P2663853655577019150

`∪[A332480(n+1), A246395(n)]`
-/

namespace A131503.P2663853655577019150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131503.P2663853655577019150

namespace A131503

/-- `∪[A332480(n+1), A246395(n)]` -/
def P2663853655577019150.Spec : Prop :=
  ∀ n, (P2663853655577019150.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P12337015963598643054

`comp[comp[A246441(n+1)]+1]`
-/

namespace A131503.P12337015963598643054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A131503.P12337015963598643054

namespace A131503

/-- `comp[comp[A246441(n+1)]+1]` -/
def P12337015963598643054.Spec : Prop :=
  ∀ n, (P12337015963598643054.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P12343382738514256583

`A026312(n+3)-5`
-/

namespace A131503.P12343382738514256583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026312 (n + 3) - 5

end

end A131503.P12343382738514256583

namespace A131503

/-- `A026312(n+3)-5` -/
def P12343382738514256583.Spec : Prop :=
  ∀ n, P12343382738514256583.a n = A131503 (n + 1)

end A131503

/-! ## A131503.P16367581204312757280

`lt[0, A344858(n)]`
-/

namespace A131503.P16367581204312757280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A131503.P16367581204312757280

namespace A131503

/-- `lt[0, A344858(n)]` -/
def P16367581204312757280.Spec : Prop :=
  ∀ n, (P16367581204312757280.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P14652410822505109981

`lt[n-1, A134891(abs(1-n)+1)]`
-/

namespace A131503.P14652410822505109981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134891 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A131503.P14652410822505109981

namespace A131503

/-- `lt[n-1, A134891(abs(1-n)+1)]` -/
def P14652410822505109981.Spec : Prop :=
  ∀ n, (P14652410822505109981.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P4509673093630635795

`eq[A267537(n), A330034(n)]`
-/

namespace A131503.P4509673093630635795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131503.P4509673093630635795

namespace A131503

/-- `eq[A267537(n), A330034(n)]` -/
def P4509673093630635795.Spec : Prop :=
  ∀ n, (P4509673093630635795.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P2908161125695147309

`eq[A267871(n), A330034(n)]`
-/

namespace A131503.P2908161125695147309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131503.P2908161125695147309

namespace A131503

/-- `eq[A267871(n), A330034(n)]` -/
def P2908161125695147309.Spec : Prop :=
  ∀ n, (P2908161125695147309.a n : ℤ) = A131503 (n + 1)

end A131503

/-! ## A131503.P18278723888361514990

`eq[A329684(n), A330034(n)]`
-/

namespace A131503.P18278723888361514990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131503.P18278723888361514990

namespace A131503

/-- `eq[A329684(n), A330034(n)]` -/
def P18278723888361514990.Spec : Prop :=
  ∀ n, (P18278723888361514990.a n : ℤ) = A131503 (n + 1)

end A131503

/-!
# A131504: Array read by antidiagonals: a(m,n) = m-th integer from among those positive integers that are coprime to (m*n).

The programs for A131504, there is no canonical definition to state claims against.
-/

/-! ## A131504.P5502164992177280219

`A181572(A322970(n)+1)`
-/

namespace A131504.P5502164992177280219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181572 (A322970 n + 1).toNat

end

end A131504.P5502164992177280219

/-! ## A131504.P685482191400610883

`A261461(A002262(n)*A208126(n))`
-/

namespace A131504.P685482191400610883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A002262 n * A208126 n).toNat

end

end A131504.P685482191400610883

/-! ## A131504.P12548747837321406881

`A261461(lcm(A002262(n), A208126(n)))`
-/

namespace A131504.P12548747837321406881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (Int.lcm (A002262 n) (A208126 n))

end

end A131504.P12548747837321406881

/-! ## A131504.P2608806603506639264

`A138554(C(A340156(n+2), A061906(n)))`
-/

namespace A131504.P2608806603506639264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (Nat.choose (A340156 (n + 2)).toNat (A061906 n).toNat)

end

end A131504.P2608806603506639264

/-!
# A131505: n, -1, n, 2n+2.

The programs for A131505, the canonical program `A131505.P10135807139764144113` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131505 has offset 0).

The definition of A131505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131505.P10135807139764144113

`∑[a(1-a(n-2))²]-a(n-2)` with `a(0)=0, a(1)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131505

/-- `∑[a(1-a(n-2))²]-a(n-2)` -/
def P10135807139764144113.Spec : Prop :=
  ∀ n, P10135807139764144113.a n = A131505 n

theorem P10135807139764144113.correct : P10135807139764144113.Spec := by
  intro n
  simp only [A131505]

end A131505

/-! ## A131505.P7519539502483190049

`∑[A001057(Δ[ceil(((n+1)/2)²)])]`
-/

namespace A131505.P7519539502483190049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P7519539502483190049

namespace A131505

/-- `∑[A001057(Δ[ceil(((n+1)/2)²)])]` -/
def P7519539502483190049.Spec : Prop :=
  ∀ n, P7519539502483190049.a n = A131505 n

end A131505

/-! ## A131505.P7753838184616916547

`Δ[A131804(n)]`
-/

namespace A131505.P7753838184616916547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131505.P7753838184616916547

namespace A131505

/-- `Δ[A131804(n)]` -/
def P7753838184616916547.Spec : Prop :=
  ∀ n, P7753838184616916547.a n = A131505 n

end A131505

/-! ## A131505.P269777666696621389

`A131728(n)-Δ[A131739(n)]`
-/

namespace A131505.P269777666696621389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 n - (f1 (n + 1) - f1 n)

end

end A131505.P269777666696621389

namespace A131505

/-- `A131728(n)-Δ[A131739(n)]` -/
def P269777666696621389.Spec : Prop :=
  ∀ n, P269777666696621389.a n = A131505 n

end A131505

/-! ## A131505.P11548060397605370171

`A131804(n+1)-A131804(n)`
-/

namespace A131505.P11548060397605370171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131804 (n + 1) - A131804 n

end

end A131505.P11548060397605370171

namespace A131505

/-- `A131804(n+1)-A131804(n)` -/
def P11548060397605370171.Spec : Prop :=
  ∀ n, P11548060397605370171.a n = A131505 n

end A131505

/-! ## A131505.P11651593008260658781

`A004524(n+1)-A077814(n+1)`
-/

namespace A131505.P11651593008260658781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (n + 1) - A077814 (n + 1)

end

end A131505.P11651593008260658781

namespace A131505

/-- `A004524(n+1)-A077814(n+1)` -/
def P11651593008260658781.Spec : Prop :=
  ∀ n, P11651593008260658781.a n = A131505 n

end A131505

/-! ## A131505.P12572058643530003463

`A002265(n+1)-A001057(A142150(n+1))`
-/

namespace A131505.P12572058643530003463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) - A001057 (A142150 (n + 1)).toNat

end

end A131505.P12572058643530003463

namespace A131505

/-- `A002265(n+1)-A001057(A142150(n+1))` -/
def P12572058643530003463.Spec : Prop :=
  ∀ n, P12572058643530003463.a n = A131505 n

end A131505

/-! ## A131505.P11995927045611207061

`A002265(n+1)+A008621(n)*A056594(n+1)`
-/

namespace A131505.P11995927045611207061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + A008621 n * A056594 (n + 1)

end

end A131505.P11995927045611207061

namespace A131505

/-- `A002265(n+1)+A008621(n)*A056594(n+1)` -/
def P11995927045611207061.Spec : Prop :=
  ∀ n, P11995927045611207061.a n = A131505 n

end A131505

/-! ## A131505.P12521792139869029209

`A131728(n+2)-1`
-/

namespace A131505.P12521792139869029209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (n + 2) - 1

end

end A131505.P12521792139869029209

namespace A131505

/-- `A131728(n+2)-1` -/
def P12521792139869029209.Spec : Prop :=
  ∀ n, P12521792139869029209.a n = A131505 n

end A131505

/-! ## A131505.P10328226011670496639

`A077814(n+3)-1`
-/

namespace A131505.P10328226011670496639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 (n + 3) - 1

end

end A131505.P10328226011670496639

namespace A131505

/-- `A077814(n+3)-1` -/
def P10328226011670496639.Spec : Prop :=
  ∀ n, P10328226011670496639.a n = A131505 n

end A131505

/-! ## A131505.P15832784983731755866

`Δ[A159915(n+3)]-1`
-/

namespace A131505.P15832784983731755866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A131505.P15832784983731755866

namespace A131505

/-- `Δ[A159915(n+3)]-1` -/
def P15832784983731755866.Spec : Prop :=
  ∀ n, P15832784983731755866.a n = A131505 n

end A131505

/-! ## A131505.P4744768622767113003

`∑[A187035(∑[gcd(2, n+1)])]`
-/

namespace A131505.P4744768622767113003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P4744768622767113003

namespace A131505

/-- `∑[A187035(∑[gcd(2, n+1)])]` -/
def P4744768622767113003.Spec : Prop :=
  ∀ n, P4744768622767113003.a n = A131505 n

end A131505

/-! ## A131505.P13932351138831465994

`∑[A187035(∑[A000034(n)])]`
-/

namespace A131505.P13932351138831465994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P13932351138831465994

namespace A131505

/-- `∑[A187035(∑[A000034(n)])]` -/
def P13932351138831465994.Spec : Prop :=
  ∀ n, P13932351138831465994.a n = A131505 n

end A131505

/-! ## A131505.P18252022677273637537

`∑[A274923(A052938(n)²)]`
-/

namespace A131505.P18252022677273637537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A052938 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P18252022677273637537

namespace A131505

/-- `∑[A274923(A052938(n)²)]` -/
def P18252022677273637537.Spec : Prop :=
  ∀ n, P18252022677273637537.a n = A131505 n

end A131505

/-! ## A131505.P6453551069825804512

`∑[A174344(record[A209350(n)])]`
-/

namespace A131505.P6453551069825804512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209350 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P6453551069825804512

namespace A131505

/-- `∑[A174344(record[A209350(n)])]` -/
def P6453551069825804512.Spec : Prop :=
  ∀ n, P6453551069825804512.a n = A131505 n

end A131505

/-! ## A131505.P16168549448805408850

`∑[A174344(A209350(n+2))]`
-/

namespace A131505.P16168549448805408850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A209350 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P16168549448805408850

namespace A131505

/-- `∑[A174344(A209350(n+2))]` -/
def P16168549448805408850.Spec : Prop :=
  ∀ n, P16168549448805408850.a n = A131505 n

end A131505

/-! ## A131505.P17005808152683066856

`∑[A174344(A002620(n+4))]`
-/

namespace A131505.P17005808152683066856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A002620 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P17005808152683066856

namespace A131505

/-- `∑[A174344(A002620(n+4))]` -/
def P17005808152683066856.Spec : Prop :=
  ∀ n, P17005808152683066856.a n = A131505 n

end A131505

/-! ## A131505.P12751884865806485330

`∑[A274923(Δ[A035107(n)])]`
-/

namespace A131505.P12751884865806485330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035107 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P12751884865806485330

namespace A131505

/-- `∑[A274923(Δ[A035107(n)])]` -/
def P12751884865806485330.Spec : Prop :=
  ∀ n, P12751884865806485330.a n = A131505 n

end A131505

/-! ## A131505.P2961910091888947414

`∑[A274923(A002620(n+5))]`
-/

namespace A131505.P2961910091888947414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A002620 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P2961910091888947414

namespace A131505

/-- `∑[A274923(A002620(n+5))]` -/
def P2961910091888947414.Spec : Prop :=
  ∀ n, P2961910091888947414.a n = A131505 n

end A131505

/-! ## A131505.P4605322029641163712

`∑[A174344(A028242(n+5)²)]`
-/

namespace A131505.P4605322029641163712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A028242 (n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131505.P4605322029641163712

namespace A131505

/-- `∑[A174344(A028242(n+5)²)]` -/
def P4605322029641163712.Spec : Prop :=
  ∀ n, P4605322029641163712.a n = A131505 n

end A131505

/-!
# A131506: 2n+1 appears 2n-1 times.

The programs for A131506, the canonical program `A131506.P755560436110939818` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131506 has offset 1).

The definition of A131506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131506.P755560436110939818

`2*floor(sqrt(n))+3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131506

/-- `2*floor(sqrt(n))+3` -/
def P755560436110939818.Spec : Prop :=
  ∀ n, (P755560436110939818.a n : ℤ) = A131506 (n + 1)

theorem P755560436110939818.correct : P755560436110939818.Spec := by
  intro n
  simp only [A131506, Nat.add_sub_cancel]

end A131506

/-! ## A131506.P3293363403674929040

`or(1, ∑[2*char[n²]])`
-/

namespace A131506.P3293363403674929040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131506.P3293363403674929040

namespace A131506

/-- `or(1, ∑[2*char[n²]])` -/
def P3293363403674929040.Spec : Prop :=
  ∀ n, (P3293363403674929040.a n : ℤ) = A131506 (n + 1)

end A131506

/-! ## A131506.P15484202940728740971

`xor(1, ∑[2*char[n²]])`
-/

namespace A131506.P15484202940728740971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131506.P15484202940728740971

namespace A131506

/-- `xor(1, ∑[2*char[n²]])` -/
def P15484202940728740971.Spec : Prop :=
  ∀ n, (P15484202940728740971.a n : ℤ) = A131506 (n + 1)

end A131506

/-! ## A131506.P13129367894322435132

`ceil(2/acot(∑[char[n²]]))`
-/

namespace A131506.P13129367894322435132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A131506.P13129367894322435132

namespace A131506

/-- `ceil(2/acot(∑[char[n²]]))` -/
def P13129367894322435132.Spec : Prop :=
  ∀ n, P13129367894322435132.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P12679583418831622306

`∑[ceil(cosh(acot(n)))*char[n²]]`
-/

namespace A131506.P12679583418831622306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (SequenceMachineLib.acot (n : ℝ))⌉ * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131506.P12679583418831622306

namespace A131506

/-- `∑[ceil(cosh(acot(n)))*char[n²]]` -/
def P12679583418831622306.Spec : Prop :=
  ∀ n, P12679583418831622306.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P2926320841998957528

`abs(or(1, char[n²]+a(n-1)))` with `a(0)=3`
-/

namespace A131506.P2926320841998957528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 1 ((if ∃ j, f1 j = n then 1 else 0) + a (n - 1))

end

end A131506.P2926320841998957528

namespace A131506

/-- `abs(or(1, char[n²]+a(n-1)))` -/
def P2926320841998957528.Spec : Prop :=
  ∀ n, (P2926320841998957528.a n : ℤ) = A131506 (n + 1)

end A131506

/-! ## A131506.P604809204555875332

`A005408(∑[char[n²]])`
-/

namespace A131506.P604809204555875332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131506.P604809204555875332

namespace A131506

/-- `A005408(∑[char[n²]])` -/
def P604809204555875332.Spec : Prop :=
  ∀ n, P604809204555875332.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P10681509813462080174

`A144396(ceil(sqrt(n+1)))`
-/

namespace A131506.P10681509813462080174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 ⌈Real.sqrt (n + 1 : ℝ)⌉.toNat

end

end A131506.P10681509813462080174

namespace A131506

/-- `A144396(ceil(sqrt(n+1)))` -/
def P10681509813462080174.Spec : Prop :=
  ∀ n, P10681509813462080174.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P11010190145365131978

`A009056(A001650(n+1))`
-/

namespace A131506.P11010190145365131978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A001650 (n + 1)).toNat

end

end A131506.P11010190145365131978

namespace A131506

/-- `A009056(A001650(n+1))` -/
def P11010190145365131978.Spec : Prop :=
  ∀ n, P11010190145365131978.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P9712637059798347955

`A014411(A048761(n+1))`
-/

namespace A131506.P9712637059798347955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (A048761 (n + 1)).toNat

end

end A131506.P9712637059798347955

namespace A131506

/-- `A014411(A048761(n+1))` -/
def P9712637059798347955.Spec : Prop :=
  ∀ n, P9712637059798347955.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P14009169683797748831

`A004442(A130819(n+1))`
-/

namespace A131506.P14009169683797748831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A130819 (n + 1)).toNat

end

end A131506.P14009169683797748831

namespace A131506

/-- `A004442(A130819(n+1))` -/
def P14009169683797748831.Spec : Prop :=
  ∀ n, P14009169683797748831.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P15625228316947530822

`A110516(A027709(n+1))`
-/

namespace A131506.P15625228316947530822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110516 (A027709 (n + 1)).toNat

end

end A131506.P15625228316947530822

namespace A131506

/-- `A110516(A027709(n+1))` -/
def P15625228316947530822.Spec : Prop :=
  ∀ n, P15625228316947530822.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P12610351210611807810

`A018837(A143730(n+1))`
-/

namespace A131506.P12610351210611807810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A143730 (n + 1)).toNat

end

end A131506.P12610351210611807810

namespace A131506

/-- `A018837(A143730(n+1))` -/
def P12610351210611807810.Spec : Prop :=
  ∀ n, P12610351210611807810.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P11660929588326992023

`A060747(A003059(n+1)+1)`
-/

namespace A131506.P11660929588326992023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A003059 (n + 1) + 1).toNat

end

end A131506.P11660929588326992023

namespace A131506

/-- `A060747(A003059(n+1)+1)` -/
def P11660929588326992023.Spec : Prop :=
  ∀ n, P11660929588326992023.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P4640891670124400942

`A307136(A004526(A307136(n+1))²)`
-/

namespace A131506.P4640891670124400942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (A004526 (A307136 (n + 1)).toNat ^ 2).toNat

end

end A131506.P4640891670124400942

namespace A131506

/-- `A307136(A004526(A307136(n+1))²)` -/
def P4640891670124400942.Spec : Prop :=
  ∀ n, P4640891670124400942.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P4564589929599670009

`A130829(A028392(n+1))`
-/

namespace A131506.P4564589929599670009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (A028392 (n + 1)).toNat

end

end A131506.P4564589929599670009

namespace A131506

/-- `A130829(A028392(n+1))` -/
def P4564589929599670009.Spec : Prop :=
  ∀ n, P4564589929599670009.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P11010831759030320570

`A130829(A078358(n+1))`
-/

namespace A131506.P11010831759030320570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (A078358 (n + 1)).toNat

end

end A131506.P11010831759030320570

namespace A131506

/-- `A130829(A078358(n+1))` -/
def P11010831759030320570.Spec : Prop :=
  ∀ n, P11010831759030320570.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P17169467486389078235

`A130829(A000194(n)+n+1)`
-/

namespace A131506.P17169467486389078235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (A000194 n + (n + 1 : ℤ)).toNat

end

end A131506.P17169467486389078235

namespace A131506

/-- `A130829(A000194(n)+n+1)` -/
def P17169467486389078235.Spec : Prop :=
  ∀ n, P17169467486389078235.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P14834857879666815324

`A130829(A000037(n+1))`
-/

namespace A131506.P14834857879666815324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (A000037 (n + 1)).toNat

end

end A131506.P14834857879666815324

namespace A131506

/-- `A130829(A000037(n+1))` -/
def P14834857879666815324.Spec : Prop :=
  ∀ n, P14834857879666815324.a n = A131506 (n + 1)

end A131506

/-! ## A131506.P12229720533363452626

`A130829(A135668(n+1))`
-/

namespace A131506.P12229720533363452626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (A135668 (n + 1)).toNat

end

end A131506.P12229720533363452626

namespace A131506

/-- `A130829(A135668(n+1))` -/
def P12229720533363452626.Spec : Prop :=
  ∀ n, P12229720533363452626.a n = A131506 (n + 1)

end A131506

/-!
# A131507: 2n+1 appears n+1 times.

The programs for A131507, the canonical program `A131507.P15949945766004013839` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131507 has offset 0).

The definition of A131507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131507.P15949945766004013839

`2*floor(sqrt(2*n+1)+1/2)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131507

/-- `2*floor(sqrt(2*n+1)+1/2)-1` -/
def P15949945766004013839.Spec : Prop :=
  ∀ n, P15949945766004013839.a n = A131507 n

theorem P15949945766004013839.correct : P15949945766004013839.Spec := by
  intro n
  simp only [A131507]

end A131507

/-! ## A131507.P5831529950477135432

`xor(-∑[2*char[∑[n]]], -1)`
-/

namespace A131507.P5831529950477135432
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (-1)

end

end A131507.P5831529950477135432

namespace A131507

/-- `xor(-∑[2*char[∑[n]]], -1)` -/
def P5831529950477135432.Spec : Prop :=
  ∀ n, P5831529950477135432.a n = A131507 n

end A131507

/-! ## A131507.P1471148434457405683

`or(1, ∑[2*char[∑[n+1]]])`
-/

namespace A131507.P1471148434457405683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131507.P1471148434457405683

namespace A131507

/-- `or(1, ∑[2*char[∑[n+1]]])` -/
def P1471148434457405683.Spec : Prop :=
  ∀ n, (P1471148434457405683.a n : ℤ) = A131507 n

end A131507

/-! ## A131507.P18219431780763243146

`abs(comp[C(floor(n/2)+2, 2)+n]+1-n)`
-/

namespace A131507.P18219431780763243146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)|

end

end A131507.P18219431780763243146

namespace A131507

/-- `abs(comp[C(floor(n/2)+2, 2)+n]+1-n)` -/
def P18219431780763243146.Spec : Prop :=
  ∀ n, P18219431780763243146.a n = A131507 n

end A131507

/-! ## A131507.P1103538890306574284

`ceil(log2(A055236(n)))`
-/

namespace A131507.P1103538890306574284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A055236 n : ℝ)⌉

end

end A131507.P1103538890306574284

namespace A131507

/-- `ceil(log2(A055236(n)))` -/
def P1103538890306574284.Spec : Prop :=
  ∀ n, P1103538890306574284.a n = A131507 n

end A131507

/-! ## A131507.P16369480436701082827

`A004273(∑[char[∑[n]]])`
-/

namespace A131507.P16369480436701082827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131507.P16369480436701082827

namespace A131507

/-- `A004273(∑[char[∑[n]]])` -/
def P16369480436701082827.Spec : Prop :=
  ∀ n, P16369480436701082827.a n = A131507 n

end A131507

/-! ## A131507.P14958900874021381864

`∑[ceil(atan(A198954(n)))]`
-/

namespace A131507.P14958900874021381864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A198954 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131507.P14958900874021381864

namespace A131507

/-- `∑[ceil(atan(A198954(n)))]` -/
def P14958900874021381864.Spec : Prop :=
  ∀ n, P14958900874021381864.a n = A131507 n

end A131507

/-! ## A131507.P8584730623144288164

`∑[C(2, A341315(n)²)]`
-/

namespace A131507.P8584730623144288164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A341315 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131507.P8584730623144288164

namespace A131507

/-- `∑[C(2, A341315(n)²)]` -/
def P8584730623144288164.Spec : Prop :=
  ∀ n, (P8584730623144288164.a n : ℤ) = A131507 n

end A131507

/-! ## A131507.P2741869301853423568

`A060747(round(sqrt(2*n+1)))`
-/

namespace A131507.P2741869301853423568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A131507.P2741869301853423568

namespace A131507

/-- `A060747(round(sqrt(2*n+1)))` -/
def P2741869301853423568.Spec : Prop :=
  ∀ n, P2741869301853423568.a n = A131507 n

end A131507

/-! ## A131507.P7009248735756561090

`A005408(A003056(n))`
-/

namespace A131507.P7009248735756561090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003056 n).toNat

end

end A131507.P7009248735756561090

namespace A131507

/-- `A005408(A003056(n))` -/
def P7009248735756561090.Spec : Prop :=
  ∀ n, P7009248735756561090.a n = A131507 n

end A131507

/-! ## A131507.P8076184405926172413

`A027170(A057944(n))`
-/

namespace A131507.P8076184405926172413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A057944 n).toNat

end

end A131507.P8076184405926172413

namespace A131507

/-- `A027170(A057944(n))` -/
def P8076184405926172413.Spec : Prop :=
  ∀ n, P8076184405926172413.a n = A131507 n

end A131507

/-! ## A131507.P15915664312043278796

`A004442(A279891(n))`
-/

namespace A131507.P15915664312043278796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A279891 n).toNat

end

end A131507.P15915664312043278796

namespace A131507

/-- `A004442(A279891(n))` -/
def P15915664312043278796.Spec : Prop :=
  ∀ n, P15915664312043278796.a n = A131507 n

end A131507

/-! ## A131507.P11694056617055350033

`A128076(A057944(n)+1)`
-/

namespace A131507.P11694056617055350033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A057944 n + 1).toNat

end

end A131507.P11694056617055350033

namespace A131507

/-- `A128076(A057944(n)+1)` -/
def P11694056617055350033.Spec : Prop :=
  ∀ n, P11694056617055350033.a n = A131507 n

end A131507

/-! ## A131507.P7546310352683699175

`A094727(A127739(n+1))`
-/

namespace A131507.P7546310352683699175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A127739 (n + 1)).toNat

end

end A131507.P7546310352683699175

namespace A131507

/-- `A094727(A127739(n+1))` -/
def P7546310352683699175.Spec : Prop :=
  ∀ n, P7546310352683699175.a n = A131507 n

end A131507

/-! ## A131507.P1745478191447565523

`A240134(A279891(n)+2)`
-/

namespace A131507.P1745478191447565523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240134 (A279891 n + 2).toNat

end

end A131507.P1745478191447565523

namespace A131507

/-- `A240134(A279891(n)+2)` -/
def P1745478191447565523.Spec : Prop :=
  ∀ n, P1745478191447565523.a n = A131507 n

end A131507

/-! ## A131507.P18212750964307670426

`A004442(2*A003056(n))`
-/

namespace A131507.P18212750964307670426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A003056 n).toNat

end

end A131507.P18212750964307670426

namespace A131507

/-- `A004442(2*A003056(n))` -/
def P18212750964307670426.Spec : Prop :=
  ∀ n, P18212750964307670426.a n = A131507 n

end A131507

/-! ## A131507.P14500472433733287522

`A079097(2*A003056(n))`
-/

namespace A131507.P14500472433733287522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (2 * A003056 n).toNat

end

end A131507.P14500472433733287522

namespace A131507

/-- `A079097(2*A003056(n))` -/
def P14500472433733287522.Spec : Prop :=
  ∀ n, P14500472433733287522.a n = A131507 n

end A131507

/-! ## A131507.P10504578591763822068

`A109613(2*A003056(n))`
-/

namespace A131507.P10504578591763822068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A003056 n).toNat

end

end A131507.P10504578591763822068

namespace A131507

/-- `A109613(2*A003056(n))` -/
def P10504578591763822068.Spec : Prop :=
  ∀ n, P10504578591763822068.a n = A131507 n

end A131507

/-! ## A131507.P3542368848387522911

`A131950(n-A002262(n))`
-/

namespace A131507.P3542368848387522911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131950 ((n : ℤ) - A002262 n).toNat

end

end A131507.P3542368848387522911

namespace A131507

/-- `A131950(n-A002262(n))` -/
def P3542368848387522911.Spec : Prop :=
  ∀ n, P3542368848387522911.a n = A131507 n

end A131507

/-! ## A131507.P15280051614136883836

`A132775(n)/A007318(n)`
-/

namespace A131507.P15280051614136883836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132775 n : ℚ) / (A007318 n : ℚ)

end

end A131507.P15280051614136883836

namespace A131507

/-- `A132775(n)/A007318(n)` -/
def P15280051614136883836.Spec : Prop :=
  ∀ n, P15280051614136883836.a n = (A131507 n : ℚ)

end A131507

/-!
# A131508: 2*A000027 (natural numbers) sandwiched by tripled A001477 (nonnegative numbers).

The programs for A131508, the canonical program `A131508.P7045817581503854668` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131508 has offset 0).

The definition of A131508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131508.P7045817581503854668

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=1, a(5)=1, a(6)=1, a(7)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131508

/-- `2*a(n-4)-a(n-8)` -/
def P7045817581503854668.Spec : Prop :=
  ∀ n, P7045817581503854668.a n = A131508 n

theorem P7045817581503854668.correct : P7045817581503854668.Spec := by
  intro n
  simp only [A131508]

end A131508

/-! ## A131508.P11676035389977772344

`and(2, n^3)!*∑[char[or(3, n)]]`
-/

namespace A131508.P11676035389977772344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n ^ 3)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131508.P11676035389977772344

namespace A131508

/-- `and(2, n^3)!*∑[char[or(3, n)]]` -/
def P11676035389977772344.Spec : Prop :=
  ∀ n, (P11676035389977772344.a n : ℤ) = A131508 n

end A131508

/-! ## A131508.P4272481163125551177

`floor((n+1)*A177704(n)/4)`
-/

namespace A131508.P4272481163125551177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A177704 n : ℚ) / 4⌋

end

end A131508.P4272481163125551177

namespace A131508

/-- `floor((n+1)*A177704(n)/4)` -/
def P4272481163125551177.Spec : Prop :=
  ∀ n, P4272481163125551177.a n = A131508 n

end A131508

/-! ## A131508.P295056084091209033

`A065423(A092038(n+1))`
-/

namespace A131508.P295056084091209033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A092038 (n + 1)).toNat

end

end A131508.P295056084091209033

namespace A131508

/-- `A065423(A092038(n+1))` -/
def P295056084091209033.Spec : Prop :=
  ∀ n, P295056084091209033.a n = A131508 n

end A131508

/-! ## A131508.P10020462387565764497

`A065423(A004524(n)+2)`
-/

namespace A131508.P10020462387565764497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A004524 n + 2).toNat

end

end A131508.P10020462387565764497

namespace A131508

/-- `A065423(A004524(n)+2)` -/
def P10020462387565764497.Spec : Prop :=
  ∀ n, P10020462387565764497.a n = A131508 n

end A131508

/-! ## A131508.P8034329143615571205

`Δ[A130519(n)]*A177704(n)`
-/

namespace A131508.P8034329143615571205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A177704 n

end

end A131508.P8034329143615571205

namespace A131508

/-- `Δ[A130519(n)]*A177704(n)` -/
def P8034329143615571205.Spec : Prop :=
  ∀ n, P8034329143615571205.a n = A131508 n

end A131508

/-! ## A131508.P2879120818660593180

`A065423(A004525(n+1)+1)`
-/

namespace A131508.P2879120818660593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A004525 (n + 1) + 1).toNat

end

end A131508.P2879120818660593180

namespace A131508

/-- `A065423(A004525(n+1)+1)` -/
def P2879120818660593180.Spec : Prop :=
  ∀ n, P2879120818660593180.a n = A131508 n

end A131508

/-! ## A131508.P1180173975928812489

`A026741(A004524(n)+2)-1`
-/

namespace A131508.P1180173975928812489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004524 n + 2).toNat - 1

end

end A131508.P1180173975928812489

namespace A131508

/-- `A026741(A004524(n)+2)-1` -/
def P1180173975928812489.Spec : Prop :=
  ∀ n, P1180173975928812489.a n = A131508 n

end A131508

/-! ## A131508.P14111088553240037550

`A130845(n)+A011765(n+1)`
-/

namespace A131508.P14111088553240037550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n + A011765 (n + 1)

end

end A131508.P14111088553240037550

namespace A131508

/-- `A130845(n)+A011765(n+1)` -/
def P14111088553240037550.Spec : Prop :=
  ∀ n, P14111088553240037550.a n = A131508 n

end A131508

/-! ## A131508.P7904687701917424195

`(A131505(n)+A124072(n))/2`
-/

namespace A131508.P7904687701917424195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131505 n + A124072 n : ℚ) / 2

end

end A131508.P7904687701917424195

namespace A131508

/-- `(A131505(n)+A124072(n))/2` -/
def P7904687701917424195.Spec : Prop :=
  ∀ n, P7904687701917424195.a n = (A131508 n : ℚ)

end A131508

/-! ## A131508.P15365715036620531883

`A124072(n)%A138996(n+1)`
-/

namespace A131508.P15365715036620531883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124072 n) (A138996 (n + 1))

end

end A131508.P15365715036620531883

namespace A131508

/-- `A124072(n)%A138996(n+1)` -/
def P15365715036620531883.Spec : Prop :=
  ∀ n, P15365715036620531883.a n = A131508 n

end A131508

/-! ## A131508.P10371305142968378003

`A233035(n+1)/A186646(n+1)`
-/

namespace A131508.P10371305142968378003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233035 (n + 1) : ℚ) / (A186646 (n + 1) : ℚ)

end

end A131508.P10371305142968378003

namespace A131508

/-- `A233035(n+1)/A186646(n+1)` -/
def P10371305142968378003.Spec : Prop :=
  ∀ n, P10371305142968378003.a n = (A131508 n : ℚ)

end A131508

/-! ## A131508.P6204875034800931904

`A049206(n+1)%A138996(n+1)`
-/

namespace A131508.P6204875034800931904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049206 (n + 1)) (A138996 (n + 1))

end

end A131508.P6204875034800931904

namespace A131508

/-- `A049206(n+1)%A138996(n+1)` -/
def P6204875034800931904.Spec : Prop :=
  ∀ n, P6204875034800931904.a n = A131508 n

end A131508

/-! ## A131508.P11886265120409224964

`A038715(n+1)+A002265(n)-A038716(n)`
-/

namespace A131508.P11886265120409224964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (n + 1) + (A002265 n - A038716 n)

end

end A131508.P11886265120409224964

namespace A131508

/-- `A038715(n+1)+A002265(n)-A038716(n)` -/
def P11886265120409224964.Spec : Prop :=
  ∀ n, P11886265120409224964.a n = A131508 n

end A131508

/-! ## A131508.P325071852124854730

`A124072(n)-A004526(A124072(n)-A131505(n))`
-/

namespace A131508.P325071852124854730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 n - A004526 (A124072 n - A131505 n).toNat

end

end A131508.P325071852124854730

namespace A131508

/-- `A124072(n)-A004526(A124072(n)-A131505(n))` -/
def P325071852124854730.Spec : Prop :=
  ∀ n, P325071852124854730.a n = A131508 n

end A131508

/-! ## A131508.P2223540698535831914

`A360692(A127932(n+1))`
-/

namespace A131508.P2223540698535831914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A127932 (n + 1)).toNat

end

end A131508.P2223540698535831914

namespace A131508

/-- `A360692(A127932(n+1))` -/
def P2223540698535831914.Spec : Prop :=
  ∀ n, P2223540698535831914.a n = A131508 n

end A131508

/-! ## A131508.P17836132395236424312

`A002265(n+1)*A177704(n)`
-/

namespace A131508.P17836132395236424312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) * A177704 n

end

end A131508.P17836132395236424312

namespace A131508

/-- `A002265(n+1)*A177704(n)` -/
def P17836132395236424312.Spec : Prop :=
  ∀ n, P17836132395236424312.a n = A131508 n

end A131508

/-! ## A131508.P783647286661245796

`Δ[A001068(n)]*A002265(n+1)`
-/

namespace A131508.P783647286661245796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002265 (n + 1)

end

end A131508.P783647286661245796

namespace A131508

/-- `Δ[A001068(n)]*A002265(n+1)` -/
def P783647286661245796.Spec : Prop :=
  ∀ n, P783647286661245796.a n = A131508 n

end A131508

/-! ## A131508.P7215491635725727360

`(A121262(n+1)+1)*A002265(n+1)`
-/

namespace A131508.P7215491635725727360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121262 (n + 1) + 1) * A002265 (n + 1)

end

end A131508.P7215491635725727360

namespace A131508

/-- `(A121262(n+1)+1)*A002265(n+1)` -/
def P7215491635725727360.Spec : Prop :=
  ∀ n, P7215491635725727360.a n = A131508 n

end A131508

/-! ## A131508.P17097569265575130741

`(2-A166486(n+1))*A002265(n+1)`
-/

namespace A131508.P17097569265575130741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A166486 (n + 1)) * A002265 (n + 1)

end

end A131508.P17097569265575130741

namespace A131508

/-- `(2-A166486(n+1))*A002265(n+1)` -/
def P17097569265575130741.Spec : Prop :=
  ∀ n, P17097569265575130741.a n = A131508 n

end A131508

/-!
# A131509: a(n) = (n + 1)*(n^2 + 2)*(n^3 + 3)/6.

The programs for A131509, the canonical program `A131509.P3941252245702602312` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131509 has offset 0).

The definition of A131509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131509.P3941252245702602312

`(n+1)*(n²+2)*(n^3+3)/6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131509

/-- `(n+1)*(n²+2)*(n^3+3)/6` -/
def P3941252245702602312.Spec : Prop :=
  ∀ n, P3941252245702602312.a n = (A131509 n : ℚ)

end A131509

/-! ## A131509.P628300803392407457

`A131682(n)-A064808(n)`
-/

namespace A131509.P628300803392407457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131682 n - A064808 n

end

end A131509.P628300803392407457

namespace A131509

/-- `A131682(n)-A064808(n)` -/
def P628300803392407457.Spec : Prop :=
  ∀ n, P628300803392407457.a n = A131509 n

end A131509

/-! ## A131509.P10923909464701975307

`A131682(n)-∑[A143689(n)]`
-/

namespace A131509.P10923909464701975307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131682 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131509.P10923909464701975307

namespace A131509

/-- `A131682(n)-∑[A143689(n)]` -/
def P10923909464701975307.Spec : Prop :=
  ∀ n, P10923909464701975307.a n = A131509 n

end A131509

/-! ## A131509.P8573883013071211751

`A131682(n)-(A100119(n)+n)`
-/

namespace A131509.P8573883013071211751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131682 n - (A100119 n + (n : ℤ))

end

end A131509.P8573883013071211751

namespace A131509

/-- `A131682(n)-(A100119(n)+n)` -/
def P8573883013071211751.Spec : Prop :=
  ∀ n, P8573883013071211751.a n = A131509 n

end A131509

/-! ## A131509.P4043080962135067039

`∑[n]+A131682(n)-A006000(n)`
-/

namespace A131509.P4043080962135067039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A131682 n - A006000 n)

end

end A131509.P4043080962135067039

namespace A131509

/-- `∑[n]+A131682(n)-A006000(n)` -/
def P4043080962135067039.Spec : Prop :=
  ∀ n, P4043080962135067039.a n = A131509 n

end A131509

/-! ## A131509.P6458303826758238012

`A002378(n)*A257055(n)+n+1`
-/

namespace A131509.P6458303826758238012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A257055 n + (n + 1 : ℤ)

end

end A131509.P6458303826758238012

namespace A131509

/-- `A002378(n)*A257055(n)+n+1` -/
def P6458303826758238012.Spec : Prop :=
  ∀ n, P6458303826758238012.a n = A131509 n

end A131509

/-! ## A131509.P5892707228099753806

`∑[A002061(n)]*A002411(n)+n+1`
-/

namespace A131509.P5892707228099753806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002411 n + (n + 1 : ℤ)

end

end A131509.P5892707228099753806

namespace A131509

/-- `∑[A002061(n)]*A002411(n)+n+1` -/
def P5892707228099753806.Spec : Prop :=
  ∀ n, P5892707228099753806.a n = A131509 n

end A131509

/-! ## A131509.P10606877311142059853

`A131682(n)-(A000330(n)+A000125(n))`
-/

namespace A131509.P10606877311142059853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131682 n - (A000330 n + A000125 n)

end

end A131509.P10606877311142059853

namespace A131509

/-- `A131682(n)-(A000330(n)+A000125(n))` -/
def P10606877311142059853.Spec : Prop :=
  ∀ n, P10606877311142059853.a n = A131509 n

end A131509

/-! ## A131509.P11944978959558032999

`A006484(n)+A002061(n)*A006484(n+1)`
-/

namespace A131509.P11944978959558032999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n + A002061 n * A006484 (n + 1)

end

end A131509.P11944978959558032999

namespace A131509

/-- `A006484(n)+A002061(n)*A006484(n+1)` -/
def P11944978959558032999.Spec : Prop :=
  ∀ n, P11944978959558032999.a n = A131509 n

end A131509

/-!
# A131511: All possible products of prime and Fibonacci numbers.

The programs for A131511, there is no canonical definition to state claims against.
-/

/-! ## A131511.P4323019317989108074

`lt[A243865(∑{e}[10^∑{e}[2*n, #], #]+1), 1]`
-/

namespace A131511.P4323019317989108074
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A131511.P4323019317989108074

/-! ## A131511.P10442217469620891172

`A239289(n+1)%A334099(n)`
-/

namespace A131511.P10442217469620891172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239289 (n + 1)) (A334099 n)

end

end A131511.P10442217469620891172

/-! ## A131511.P16395244935739561315

`eq[1, A038573(∑{e}[n, #]^A003056(n))]`
-/

namespace A131511.P16395244935739561315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℚ) ^ (A003056 n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131511.P16395244935739561315

/-! ## A131511.P45990275948345990

`record[n+1-A330935(A165824(n+1))]`
-/

namespace A131511.P45990275948345990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A330935 (A165824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131511.P45990275948345990

/-! ## A131511.P11725182340751493721

`comp[A145784(n+1)]%A090748(2*n+1)`
-/

namespace A131511.P11725182340751493721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A090748 (2 * n + 1))

end

end A131511.P11725182340751493721

/-!
# A131512: Iterated golden sieve: Iterate indefinitively the procedure giving A099267 (S2) from the natural numbers (S1) with the single difference that the rank of the deleted terms is f(n) + (p-2) to get Sp from Sp-1.

The programs for A131512, there is no canonical definition to state claims against.
-/

/-! ## A131512.P12430348891793359145

`A195841(record[A355366(2*(n+3))])+A002522(n)`
-/

namespace A131512.P12430348891793359145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355366 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A002522 n

end

end A131512.P12430348891793359145

/-! ## A131512.P10616494133314169063

`A356944(n²+2)`
-/

namespace A131512.P10616494133314169063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (n ^ 2 + 2)

end

end A131512.P10616494133314169063

/-! ## A131512.P1770417837849291546

`A256827(a(n-1))+n` with `a(0)=2, a(1)=3`
-/

namespace A131512.P1770417837849291546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A256827 (a (n - 1)).toNat + (n : ℤ)

end

end A131512.P1770417837849291546

/-! ## A131512.P14974708265362213120

`A175140(a(n-1)+n-1)` with `a(0)=2`
-/

namespace A131512.P14974708265362213120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A175140 (a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A131512.P14974708265362213120

/-! ## A131512.P9485135118413332457

`A356944(A000290(n)+1)+1`
-/

namespace A131512.P9485135118413332457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A000290 n + 1).toNat + 1

end

end A131512.P9485135118413332457

/-!
# A131513: A123689 based sequence as SO(A123689(n)) dimensions.

The programs for A131513, there is no canonical definition to state claims against.
-/

/-! ## A131513.P10098210953997437215

`A123689(n+1)*(A123689(n+1)-1)/2`
-/

namespace A131513.P10098210953997437215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123689 (n + 1) * (A123689 (n + 1) - 1) : ℚ) / 2

end

end A131513.P10098210953997437215

/-! ## A131513.P10384039294675007569

`C(A123689(n+1), 2)`
-/

namespace A131513.P10384039294675007569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123689 (n + 1)).toNat 2

end

end A131513.P10384039294675007569

/-! ## A131513.P16752396345205139548

`A161680(A123689(n+1))`
-/

namespace A131513.P16752396345205139548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A123689 (n + 1)).toNat

end

end A131513.P16752396345205139548

/-! ## A131513.P16412673686783588994

`A130519(2*A123689(n+1))`
-/

namespace A131513.P16412673686783588994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * A123689 (n + 1)).toNat

end

end A131513.P16412673686783588994

/-!
# A131514: Number of ways to design a set of three n-sided dice (using nonnegative integers) such that summing the faces can give any integer from 0 to n^3 - 1.

The programs for A131514, there is no canonical definition to state claims against.
-/

/-! ## A131514.P11191619075839524311

`A360098(A000217(n+4)-A126132(n+1))`
-/

namespace A131514.P11191619075839524311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360098 (A000217 (n + 4) - A126132 (n + 1)).toNat

end

end A131514.P11191619075839524311

/-!
# A131515: a(n+2) = 34*a(n+1) - a(n) + 2; a(1) = 1 and a(2) = 16.

The programs for A131515, the canonical program `A131515.P10719539461294754555` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131515 has offset 1).

The definition of A131515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131515.P10719539461294754555

`34*a(n-1)-a(n-2)+2` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131515

/-- `34*a(n-1)-a(n-2)+2` -/
def P10719539461294754555.Spec : Prop :=
  ∀ n, P10719539461294754555.a n = A131515 (n + 1)

theorem P10719539461294754555.correct : P10719539461294754555.Spec := by
  intro n
  simp only [A131515, Nat.add_sub_cancel]

end A131515

/-! ## A131515.P18403416610170521216

`2-(a(n-2)-34*a(n-1))` with `a(0)=1, a(1)=16`
-/

namespace A131515.P18403416610170521216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n a =>
  2 - (a (n - 2) - 34 * a (n - 1))

end

end A131515.P18403416610170521216

namespace A131515

/-- `2-(a(n-2)-34*a(n-1))` -/
def P18403416610170521216.Spec : Prop :=
  ∀ n, P18403416610170521216.a n = A131515 (n + 1)

end A131515

/-!
# A131516: a(n)=1 if n is an odd prime number, otherwise, a(n)=n.

The programs for A131516, there is no canonical definition to state claims against.
-/

/-! ## A131516.P14833447719068680626

`gcd(n, Δ[xor(1, n)!])`
-/

namespace A131516.P14833447719068680626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A131516.P14833447719068680626

/-! ## A131516.P18163394692291539486

`n%xor(-n, ∏{d}[n, #])`
-/

namespace A131516.P18163394692291539486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.xor (-(n : ℤ)) ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A131516.P18163394692291539486

/-! ## A131516.P14528016229204227604

`n^(1-char[p?[Δ[n²]]])`
-/

namespace A131516.P14528016229204227604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A131516.P14528016229204227604

/-! ## A131516.P4967436214638210926

`C(n, 1-char[p?[Δ[n²]]])`
-/

namespace A131516.P4967436214638210926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A131516.P4967436214638210926

/-! ## A131516.P16146715354986607780

`n^xor(1, char[p?[2*n+1]])`
-/

namespace A131516.P16146715354986607780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A131516.P16146715354986607780

/-! ## A131516.P14919630353657002776

`C(n, 1-char[or(1, p?[2*n+1])])`
-/

namespace A131516.P14919630353657002776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A131516.P14919630353657002776

/-! ## A131516.P11291368565057315924

`(n-1)*char[comp[p?[2*n+1]]]+1`
-/

namespace A131516.P11291368565057315924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1

end

end A131516.P11291368565057315924

/-! ## A131516.P4347628308730837053

`gcd((n+2)*C(n, 2)+n, n^C(2, ∑{e}[n, #])!)%(n+1)`
-/

namespace A131516.P4347628308730837053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) * Nat.choose n 2 + n) (n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))) % (n + 1)

end

end A131516.P4347628308730837053

/-! ## A131516.P13869481047223878984

`gcd(n, A081358(n))`
-/

namespace A131516.P13869481047223878984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A081358 n)

end

end A131516.P13869481047223878984

/-!
# A131518: Number of partitions of the graph G_n (defined below) into "strokes".

The programs for A131518, there is no canonical definition to state claims against.
-/

/-! ## A131518.P11243406189661852299

`record[or(2, A138533(2*(n+1)))]`
-/

namespace A131518.P11243406189661852299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A138533 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131518.P11243406189661852299

/-!
# A131519: a(1) = 1, a(2) = 6, a(3) = 66, a(4) = 714, and a(n) = 11*a(n-1) - 24*a(n-3) for n >= 5.

The programs for A131519, the canonical program `A131519.P14517103678449594582` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131519 has offset 1).

The definition of A131519 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*a(n-1)-24*a(n-3)` (program `A131519.P14517103678449594582`, by `A131519.P14517103678449594582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131519.P14517103678449594582

`11*a(n-1)-24*a(n-3)` with `a(0)=1, a(1)=6, a(2)=66, a(3)=714`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131519

/-- `11*a(n-1)-24*a(n-3)` -/
def P14517103678449594582.Spec : Prop :=
  ∀ n, P14517103678449594582.a n = A131519 (n + 1)

theorem P14517103678449594582.correct : P14517103678449594582.Spec := by
  intro n
  simp only [A131519, Nat.add_sub_cancel]

end A131519

/-!
# A131520: Number of partitions of the graph G_n (defined below) into "strokes".

The programs for A131520, the canonical program `A131520.P18113647192679955461` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131520 has offset 1).

The definition of A131520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131520.P2186292436742252326

`2^(n+1)+2*n`
-/

namespace A131520.P2186292436742252326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) + 2 * n

end

end A131520.P2186292436742252326

namespace A131520

/-- `2^(n+1)+2*n` -/
def P2186292436742252326.Spec : Prop :=
  ∀ n, (P2186292436742252326.a n : ℤ) = A131520 (n + 1)

theorem P2186292436742252326.correct : P2186292436742252326.Spec := by
  intro n
  simp only [A131520, Nat.add_sub_cancel, A131520.P2186292436742252326.a, A131520.P18113647192679955461.a, A006127, A006127.P13800088188431216723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131520

/-! ## A131520.P18113647192679955461

`2*A006127(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131520

/-- `2*A006127(n)` -/
def P18113647192679955461.Spec : Prop :=
  ∀ n, P18113647192679955461.a n = A131520 (n + 1)

theorem P18113647192679955461.correct : P18113647192679955461.Spec := by
  intro n
  simp only [A131520, Nat.add_sub_cancel]

end A131520

/-! ## A131520.P12862692946995249878

`∑[or(1, 2^n)+1]`
-/

namespace A131520.P12862692946995249878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P12862692946995249878

namespace A131520

/-- `∑[or(1, 2^n)+1]` -/
def P12862692946995249878.Spec : Prop :=
  ∀ n, (P12862692946995249878.a n : ℤ) = A131520 (n + 1)

end A131520

/-! ## A131520.P9927864024612148562

`xor(1, ∑[2^n+2])`
-/

namespace A131520.P9927864024612148562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131520.P9927864024612148562

namespace A131520

/-- `xor(1, ∑[2^n+2])` -/
def P9927864024612148562.Spec : Prop :=
  ∀ n, (P9927864024612148562.a n : ℤ) = A131520 (n + 1)

end A131520

/-! ## A131520.P15987741466871889460

`or(2*2^n, 2*n)`
-/

namespace A131520.P15987741466871889460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * 2 ^ n) (2 * n)

end

end A131520.P15987741466871889460

namespace A131520

/-- `or(2*2^n, 2*n)` -/
def P15987741466871889460.Spec : Prop :=
  ∀ n, (P15987741466871889460.a n : ℤ) = A131520 (n + 1)

end A131520

/-! ## A131520.P11434323090368257264

`∑[∑[ogf((-2+2x+2x^2)/(-1+2x))]]`
-/

namespace A131520.P11434323090368257264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P11434323090368257264

namespace A131520

/-- `∑[∑[ogf((-2+2x+2x^2)/(-1+2x))]]` -/
def P11434323090368257264.Spec : Prop :=
  ∀ n, P11434323090368257264.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P1807652604945097347

`ogf((-2+2x+2x^2)/(-1+4x-5x^2+2x^3))`
-/

namespace A131520.P1807652604945097347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -2] [1, -4, 5, -2] n

end

end A131520.P1807652604945097347

namespace A131520

/-- `ogf((-2+2x+2x^2)/(-1+4x-5x^2+2x^3))` -/
def P1807652604945097347.Spec : Prop :=
  ∀ n, P1807652604945097347.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P3926426273509142943

`record[(-sqrt(2))^(n+2)+n]`
-/

namespace A131520.P3926426273509142943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.sqrt (2 : ℝ)) ^ (n + 2) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131520.P3926426273509142943

namespace A131520

/-- `record[(-sqrt(2))^(n+2)+n]` -/
def P3926426273509142943.Spec : Prop :=
  ∀ n, P3926426273509142943.a n = (A131520 (n + 1) : ℝ)

end A131520

/-! ## A131520.P3100508171280399445

`∑[ceil(atan(n+1)+2^n)]`
-/

namespace A131520.P3100508171280399445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) + (2 ^ n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P3100508171280399445

namespace A131520

/-- `∑[ceil(atan(n+1)+2^n)]` -/
def P3100508171280399445.Spec : Prop :=
  ∀ n, P3100508171280399445.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P3345319978240683641

`∑[2*(a(n-1)-1)]` with `a(0)=2, a(1)=4`
-/

namespace A131520.P3345319978240683641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  2 * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P3345319978240683641

namespace A131520

/-- `∑[2*(a(n-1)-1)]` -/
def P3345319978240683641.Spec : Prop :=
  ∀ n, P3345319978240683641.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P6153086361064146620

`∑[a(n-1)+a(n-1)-2]` with `a(0)=2, a(1)=4`
-/

namespace A131520.P6153086361064146620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P6153086361064146620

namespace A131520

/-- `∑[a(n-1)+a(n-1)-2]` -/
def P6153086361064146620.Spec : Prop :=
  ∀ n, P6153086361064146620.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P2936850257676569809

`∑[a(n-1)-(2-a(n-1))]` with `a(0)=2, a(1)=4`
-/

namespace A131520.P2936850257676569809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P2936850257676569809

namespace A131520

/-- `∑[a(n-1)-(2-a(n-1))]` -/
def P2936850257676569809.Spec : Prop :=
  ∀ n, P2936850257676569809.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P9937136747074365663

`(a(n-1)+2-n)/(1-1/2)` with `a(0)=2`
-/

namespace A131520.P9937136747074365663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + (2 - (n : ℤ) : ℚ)) / (1 - (1 : ℚ) / 2)

end

end A131520.P9937136747074365663

namespace A131520

/-- `(a(n-1)+2-n)/(1-1/2)` -/
def P9937136747074365663.Spec : Prop :=
  ∀ n, P9937136747074365663.a n = (A131520 (n + 1) : ℚ)

end A131520

/-! ## A131520.P13369662786235568802

`(2-(n-a(n-1)))/(1-1/2)` with `a(0)=2`
-/

namespace A131520.P13369662786235568802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (2 - ((n : ℚ) - a (n - 1))) / (1 - (1 : ℚ) / 2)

end

end A131520.P13369662786235568802

namespace A131520

/-- `(2-(n-a(n-1)))/(1-1/2)` -/
def P13369662786235568802.Spec : Prop :=
  ∀ n, P13369662786235568802.a n = (A131520 (n + 1) : ℚ)

end A131520

/-! ## A131520.P11003606512310073679

`∑[A133140(n)]`
-/

namespace A131520.P11003606512310073679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P11003606512310073679

namespace A131520

/-- `∑[A133140(n)]` -/
def P11003606512310073679.Spec : Prop :=
  ∀ n, P11003606512310073679.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P15418894859219359178

`∑[A083318(n)+1]`
-/

namespace A131520.P15418894859219359178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P15418894859219359178

namespace A131520

/-- `∑[A083318(n)+1]` -/
def P15418894859219359178.Spec : Prop :=
  ∀ n, P15418894859219359178.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P17641812357486956243

`∑[A155559(n)+2]`
-/

namespace A131520.P17641812357486956243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P17641812357486956243

namespace A131520

/-- `∑[A155559(n)+2]` -/
def P17641812357486956243.Spec : Prop :=
  ∀ n, P17641812357486956243.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P11466220120594916536

`∑[A146528(n)-2]`
-/

namespace A131520.P11466220120594916536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146528 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P11466220120594916536

namespace A131520

/-- `∑[A146528(n)-2]` -/
def P11466220120594916536.Spec : Prop :=
  ∀ n, P11466220120594916536.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P6391790464622882037

`∑[2*A094373(n)]`
-/

namespace A131520.P6391790464622882037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131520.P6391790464622882037

namespace A131520

/-- `∑[2*A094373(n)]` -/
def P6391790464622882037.Spec : Prop :=
  ∀ n, P6391790464622882037.a n = A131520 (n + 1)

end A131520

/-! ## A131520.P11158744112490372028

`2*(A052944(n)+1)`
-/

namespace A131520.P11158744112490372028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052944 n + 1)

end

end A131520.P11158744112490372028

namespace A131520

/-- `2*(A052944(n)+1)` -/
def P11158744112490372028.Spec : Prop :=
  ∀ n, P11158744112490372028.a n = A131520 (n + 1)

theorem P11158744112490372028.correct : P11158744112490372028.Spec := by
  intro n
  simp only [A131520, Nat.add_sub_cancel, A131520.P11158744112490372028.a, A131520.P18113647192679955461.a, A006127, A006127.P13800088188431216723.a, A052944, A052944.P8155758912192775135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A131520

/-!
# A131521: Expansion of 9/(4 + 5*sqrt(1-36*x)).

The programs for A131521, there is no canonical definition to state claims against.
-/

/-! ## A131521.P3937649939128973707

`A121725(2*n)`
-/

namespace A131521.P3937649939128973707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121725 (2 * n)

end

end A131521.P3937649939128973707

/-! ## A131521.P2196866361233132029

`record[A121725(and(n, n+1))]`
-/

namespace A131521.P2196866361233132029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121725 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131521.P2196866361233132029

/-! ## A131521.P13553907726698748336

`record[A121725(A237420(n))]`
-/

namespace A131521.P13553907726698748336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121725 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131521.P13553907726698748336

/-! ## A131521.P13554560378337515557

`record[gcd(A090192(n), A121725(n))]`
-/

namespace A131521.P13554560378337515557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090192 n) (A121725 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131521.P13554560378337515557

/-! ## A131521.P5556834399598334503

`record[lcm(A056594(n), A121725(n))]`
-/

namespace A131521.P5556834399598334503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A121725 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131521.P5556834399598334503

/-! ## A131521.P385593692002123635

`A183135(eq[10, A025581(n)])`
-/

namespace A131521.P385593692002123635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A131521.P385593692002123635

/-!
# A131522: Expansions of p(x,n)=(x^n - 1)*(x^(n + 1) - 1) for n >= 1, triangle read by rows.

The programs for A131522, the canonical program `A131522.P12999787802712979154` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131522 has offset 1).

The definition of A131522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131522.P1550472037319837919

`Δ[-a(n-round(sqrt(n+1)))]` with `a(0)=0, a(1)=1`
-/

namespace A131522.P1550472037319837919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  -f1 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P1550472037319837919

namespace A131522

/-- `Δ[-a(n-round(sqrt(n+1)))]` -/
def P1550472037319837919.Spec : Prop :=
  ∀ n, P1550472037319837919.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P12999787802712979154

`Δ[Δ[A004739(n+2)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A131522

/-- `Δ[Δ[A004739(n+2)]]` -/
def P12999787802712979154.Spec : Prop :=
  ∀ n, P12999787802712979154.a n = A131522 (n + 1)

theorem P12999787802712979154.correct : P12999787802712979154.Spec := by
  intro n
  simp only [A131522, Nat.add_sub_cancel]

end A131522

/-! ## A131522.P15981962186114595425

`Δ[A253607(n+1)]%2`
-/

namespace A131522.P15981962186114595425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A131522.P15981962186114595425

namespace A131522

/-- `Δ[A253607(n+1)]%2` -/
def P15981962186114595425.Spec : Prop :=
  ∀ n, P15981962186114595425.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P16650973997058060822

`Δ[round(atan(A038760(n+2)))]`
-/

namespace A131522.P16650973997058060822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A038760 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P16650973997058060822

namespace A131522

/-- `Δ[round(atan(A038760(n+2)))]` -/
def P16650973997058060822.Spec : Prop :=
  ∀ n, P16650973997058060822.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P18425559231114860711

`Δ[round(atan(A010751(2*(n+2))))]`
-/

namespace A131522.P18425559231114860711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A010751 (2 * (n + 2)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P18425559231114860711

namespace A131522

/-- `Δ[round(atan(A010751(2*(n+2))))]` -/
def P18425559231114860711.Spec : Prop :=
  ∀ n, P18425559231114860711.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P3988290163861122749

`A015171(A122196(n+2)+2)`
-/

namespace A131522.P3988290163861122749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015171 (A122196 (n + 2) + 2).toNat

end

end A131522.P3988290163861122749

namespace A131522

/-- `A015171(A122196(n+2)+2)` -/
def P3988290163861122749.Spec : Prop :=
  ∀ n, P3988290163861122749.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P3146029652218048295

`A267776(n)-A267776(comp[n²])`
-/

namespace A131522.P3146029652218048295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267776 n - A267776 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A131522.P3146029652218048295

namespace A131522

/-- `A267776(n)-A267776(comp[n²])` -/
def P3146029652218048295.Spec : Prop :=
  ∀ n, P3146029652218048295.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P1856389578351594603

`A015595(A114327(2*n+5)²)`
-/

namespace A131522.P1856389578351594603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015595 (A114327 (2 * n + 5) ^ 2).toNat

end

end A131522.P1856389578351594603

namespace A131522

/-- `A015595(A114327(2*n+5)²)` -/
def P1856389578351594603.Spec : Prop :=
  ∀ n, P1856389578351594603.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P2014386314627062520

`A118175(n+3)-A118175(n+1)`
-/

namespace A131522.P2014386314627062520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (n + 3) - A118175 (n + 1)

end

end A131522.P2014386314627062520

namespace A131522

/-- `A118175(n+3)-A118175(n+1)` -/
def P2014386314627062520.Spec : Prop :=
  ∀ n, P2014386314627062520.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P4097939684219032773

`A079813(n+2)-A079813(n+4)`
-/

namespace A131522.P4097939684219032773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 2) - A079813 (n + 4)

end

end A131522.P4097939684219032773

namespace A131522

/-- `A079813(n+2)-A079813(n+4)` -/
def P4097939684219032773.Spec : Prop :=
  ∀ n, P4097939684219032773.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P3774948798218028920

`Δ[A118175(n+1)+A118175(n+2)]`
-/

namespace A131522.P3774948798218028920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (n + 1) + A118175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P3774948798218028920

namespace A131522

/-- `Δ[A118175(n+1)+A118175(n+2)]` -/
def P3774948798218028920.Spec : Prop :=
  ∀ n, P3774948798218028920.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P10208476834213978142

`Δ[A037458(n+3)-A037458(n+1)]`
-/

namespace A131522.P10208476834213978142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037458 (n + 3) - A037458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P10208476834213978142

namespace A131522

/-- `Δ[A037458(n+3)-A037458(n+1)]` -/
def P10208476834213978142.Spec : Prop :=
  ∀ n, P10208476834213978142.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P14811503143434816430

`A016327(A114327(record[abs(2*n-5)])²)`
-/

namespace A131522.P14811503143434816430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 5|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (A114327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2).toNat

end

end A131522.P14811503143434816430

namespace A131522

/-- `A016327(A114327(record[abs(2*n-5)])²)` -/
def P14811503143434816430.Spec : Prop :=
  ∀ n, P14811503143434816430.a n = A131522 (n + 1)

end A131522

/-! ## A131522.P8995136797971058527

`(A000267(n+1)-A000267(n+3))^A000267(n+1)`
-/

namespace A131522.P8995136797971058527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000267 (n + 1) - A000267 (n + 3) : ℚ) ^ (A000267 (n + 1) : ℤ)

end

end A131522.P8995136797971058527

namespace A131522

/-- `(A000267(n+1)-A000267(n+3))^A000267(n+1)` -/
def P8995136797971058527.Spec : Prop :=
  ∀ n, P8995136797971058527.a n = (A131522 (n + 1) : ℚ)

end A131522

/-! ## A131522.P2449963103255802770

`A000035(A055086(n+1))-A000035(A055086(n+3))`
-/

namespace A131522.P2449963103255802770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055086 (n + 1)).toNat - A000035 (A055086 (n + 3)).toNat

end

end A131522.P2449963103255802770

namespace A131522

/-- `A000035(A055086(n+1))-A000035(A055086(n+3))` -/
def P2449963103255802770.Spec : Prop :=
  ∀ n, P2449963103255802770.a n = A131522 (n + 1)

end A131522

/-!
# A131524: Number of possible palindromic rows (or columns) in an n X n crossword puzzle.

The programs for A131524, the canonical program `A131524.P1878048690521056319` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131524 has offset 1).

The definition of A131524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131524.P8359840370660094277

`ceil(ϕ*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A131524.P8359840370660094277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  ⌈Real.goldenRatio * (a (n - 2) : ℝ)⌉

end

end A131524.P8359840370660094277

namespace A131524

/-- `ceil(ϕ*a(n-2))` -/
def P8359840370660094277.Spec : Prop :=
  ∀ n, P8359840370660094277.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P2145494905389218547

`floor(ϕ*a(n-2))+1` with `a(0)=0, a(1)=0`
-/

namespace A131524.P2145494905389218547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊Real.goldenRatio * (a (n - 2) : ℝ)⌋ + 1

end

end A131524.P2145494905389218547

namespace A131524

/-- `floor(ϕ*a(n-2))+1` -/
def P2145494905389218547.Spec : Prop :=
  ∀ n, P2145494905389218547.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P1878048690521056319

`∑[a(n-2)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131524

/-- `∑[a(n-2)+a(n-4)]` -/
def P1878048690521056319.Spec : Prop :=
  ∀ n, (P1878048690521056319.a n : ℤ) = A131524 (n + 1)

theorem P1878048690521056319.correct : P1878048690521056319.Spec := by
  intro n
  simp only [A131524, Nat.add_sub_cancel]

end A131524

/-! ## A131524.P15798208927566386324

`a(n-2)+a(n-4)+1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A131524.P15798208927566386324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 2) + (a (n - 4) + 1)

end

end A131524.P15798208927566386324

namespace A131524

/-- `a(n-2)+a(n-4)+1` -/
def P15798208927566386324.Spec : Prop :=
  ∀ n, (P15798208927566386324.a n : ℤ) = A131524 (n + 1)

end A131524

/-! ## A131524.P2964000886166382323

`A103609(n+4)-1`
-/

namespace A131524.P2964000886166382323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 4) - 1

end

end A131524.P2964000886166382323

namespace A131524

/-- `A103609(n+4)-1` -/
def P2964000886166382323.Spec : Prop :=
  ∀ n, P2964000886166382323.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P1715558164916651148

`A053602(or(1, n))-1`
-/

namespace A131524.P1715558164916651148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (Nat.lor 1 n) - 1

end

end A131524.P1715558164916651148

namespace A131524

/-- `A053602(or(1, n))-1` -/
def P1715558164916651148.Spec : Prop :=
  ∀ n, P1715558164916651148.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P5842050716676005801

`A115339(or(1, n))-1`
-/

namespace A131524.P5842050716676005801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (Nat.lor 1 n) - 1

end

end A131524.P5842050716676005801

namespace A131524

/-- `A115339(or(1, n))-1` -/
def P5842050716676005801.Spec : Prop :=
  ∀ n, P5842050716676005801.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P2307338876531860677

`A226649(gcd(2, n)+n)`
-/

namespace A131524.P2307338876531860677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (Nat.gcd 2 n + n)

end

end A131524.P2307338876531860677

namespace A131524

/-- `A226649(gcd(2, n)+n)` -/
def P2307338876531860677.Spec : Prop :=
  ∀ n, P2307338876531860677.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P5928407907965932391

`A000045(floor(n/2)+2)-1`
-/

namespace A131524.P5928407907965932391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(n : ℚ) / 2⌋ + 2).toNat - 1

end

end A131524.P5928407907965932391

namespace A131524

/-- `A000045(floor(n/2)+2)-1` -/
def P5928407907965932391.Spec : Prop :=
  ∀ n, P5928407907965932391.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P1452520863648767451

`∑[A000045(n-lcm(2, n)/2)]`
-/

namespace A131524.P1452520863648767451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131524.P1452520863648767451

namespace A131524

/-- `∑[A000045(n-lcm(2, n)/2)]` -/
def P1452520863648767451.Spec : Prop :=
  ∀ n, P1452520863648767451.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P2668445163544100906

`∑[A000045(n*and(1, n+1)/2)]`
-/

namespace A131524.P2668445163544100906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.land 1 (n + 1) : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131524.P2668445163544100906

namespace A131524

/-- `∑[A000045(n*and(1, n+1)/2)]` -/
def P2668445163544100906.Spec : Prop :=
  ∀ n, P2668445163544100906.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P6410552216409352324

`abs(1-A000045(ceil((n+1)/2)+1))`
-/

namespace A131524.P6410552216409352324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000045 (⌈(n + 1 : ℚ) / 2⌉ + 1).toNat|

end

end A131524.P6410552216409352324

namespace A131524

/-- `abs(1-A000045(ceil((n+1)/2)+1))` -/
def P6410552216409352324.Spec : Prop :=
  ∀ n, P6410552216409352324.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P12701505377587057381

`∑[A000045((n+1)%∑[(n+1)%2])]`
-/

namespace A131524.P12701505377587057381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131524.P12701505377587057381

namespace A131524

/-- `∑[A000045((n+1)%∑[(n+1)%2])]` -/
def P12701505377587057381.Spec : Prop :=
  ∀ n, P12701505377587057381.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P8032308430280735765

`∑[A000045(∑[∑[ogf(x^2/(1+2x+x^2))]])]`
-/

namespace A131524.P8032308430280735765
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131524.P8032308430280735765

namespace A131524

/-- `∑[A000045(∑[∑[ogf(x^2/(1+2x+x^2))]])]` -/
def P8032308430280735765.Spec : Prop :=
  ∀ n, P8032308430280735765.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P1677270359158296294

`A000071(A266977(n))`
-/

namespace A131524.P1677270359158296294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A266977 n).toNat

end

end A131524.P1677270359158296294

namespace A131524

/-- `A000071(A266977(n))` -/
def P1677270359158296294.Spec : Prop :=
  ∀ n, P1677270359158296294.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P1911582553842628189

`A339572(A052928(n))`
-/

namespace A131524.P1911582553842628189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (A052928 n).toNat

end

end A131524.P1911582553842628189

namespace A131524

/-- `A339572(A052928(n))` -/
def P1911582553842628189.Spec : Prop :=
  ∀ n, P1911582553842628189.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P15580869642180070420

`A321664(A168237(n))`
-/

namespace A131524.P15580869642180070420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A168237 n).toNat

end

end A131524.P15580869642180070420

namespace A131524

/-- `A321664(A168237(n))` -/
def P15580869642180070420.Spec : Prop :=
  ∀ n, P15580869642180070420.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P1216222698420177230

`∑[A000045(A142150(n))]`
-/

namespace A131524.P1216222698420177230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131524.P1216222698420177230

namespace A131524

/-- `∑[A000045(A142150(n))]` -/
def P1216222698420177230.Spec : Prop :=
  ∀ n, P1216222698420177230.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P7695655245111039283

`∑[A212804(A158416(n))]`
-/

namespace A131524.P7695655245111039283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131524.P7695655245111039283

namespace A131524

/-- `∑[A212804(A158416(n))]` -/
def P7695655245111039283.Spec : Prop :=
  ∀ n, P7695655245111039283.a n = A131524 (n + 1)

end A131524

/-! ## A131524.P10972276803565131359

`A000071(A008619(n)+1)`
-/

namespace A131524.P10972276803565131359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A008619 n + 1).toNat

end

end A131524.P10972276803565131359

namespace A131524

/-- `A000071(A008619(n)+1)` -/
def P10972276803565131359.Spec : Prop :=
  ∀ n, P10972276803565131359.a n = A131524 (n + 1)

end A131524

/-!
# A131526: Number of degree-n permutations such that number of cycles of size 2k is even (or zero) and number of cycles of size 2k-1 is odd (or zero), for every k.

The programs for A131526, there is no canonical definition to state claims against.
-/

/-! ## A131526.P14056446473440839729

`A348317(A348365(n+1)+1)`
-/

namespace A131526.P14056446473440839729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348317 (A348365 (n + 1) + 1).toNat

end

end A131526.P14056446473440839729

/-! ## A131526.P557383023526334574

`A062108(xor(A266478(n+1), A335372(n)))`
-/

namespace A131526.P557383023526334574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (Int.xor (A266478 (n + 1)) (A335372 n)).toNat

end

end A131526.P557383023526334574

/-!
# A131528: a(n) = (n^1 + 1!)*(n^2 + 2!)*(n^3 + 3!)*(n^4 + 4!)/2!.

The programs for A131528, the canonical program `A131528.P2058890092935058443` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131528 has offset 0).

The definition of A131528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131528.P2058890092935058443

`(n+1)*(n²+2)*(n^3+6)*(n^4+24)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131528

/-- `(n+1)*(n²+2)*(n^3+6)*(n^4+24)/2` -/
def P2058890092935058443.Spec : Prop :=
  ∀ n, P2058890092935058443.a n = (A131528 n : ℚ)

end A131528

/-! ## A131528.P18258742047471139963

`(n^1+1!)*(n²+2!)*(n^3+3!)*(n^4+4!)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131528.P18258742047471139963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 1 + Nat.factorial 1) * (n ^ 2 + Nat.factorial 2) * (n ^ 3 + Nat.factorial 3) * (n ^ 4 + Nat.factorial 4) : ℚ) / 2

end

end A131528.P18258742047471139963

namespace A131528

/-- `(n^1+1!)*(n²+2!)*(n^3+3!)*(n^4+4!)/2` -/
def P18258742047471139963.Spec : Prop :=
  ∀ n, P18258742047471139963.a n = (A131528 n : ℚ)

end A131528

/-! ## A131528.P17555496995343639026

`(n^1+1!)*(n²+2!)*(n^3+3!)*(n^4+4!)/2!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131528.P17555496995343639026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 1 + Nat.factorial 1) * (n ^ 2 + Nat.factorial 2) * (n ^ 3 + Nat.factorial 3) * (n ^ 4 + Nat.factorial 4) : ℚ) / (Nat.factorial 2 : ℚ)

end

end A131528.P17555496995343639026

namespace A131528

/-- `(n^1+1!)*(n²+2!)*(n^3+3!)*(n^4+4!)/2!` -/
def P17555496995343639026.Spec : Prop :=
  ∀ n, P17555496995343639026.a n = (A131528 n : ℚ)

end A131528

/-! ## A131528.P18170660430909250051

`3*A131683(n)`
-/

namespace A131528.P18170660430909250051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A131683 n

end

end A131528.P18170660430909250051

namespace A131528

/-- `3*A131683(n)` -/
def P18170660430909250051.Spec : Prop :=
  ∀ n, P18170660430909250051.a n = A131528 n

end A131528

/-!
# A131529: Number of permutations of {1,2,...n} for which differences of adjacent numbers are all distinct.

The programs for A131529, there is no canonical definition to state claims against.
-/

/-! ## A131529.P6573076271077542020

`A052754(n)+Δ[A236397(n)]`
-/

namespace A131529.P6573076271077542020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052754 n + (f1 (n + 1) - f1 n)

end

end A131529.P6573076271077542020

/-! ## A131529.P6960239167365602531

`A008620(A150743(n)+1+n)`
-/

namespace A131529.P6960239167365602531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150743 n + 1 + (n : ℤ)).toNat

end

end A131529.P6960239167365602531

/-! ## A131529.P12513304788712935146

`A008620(A150743(n))+A003056(n)`
-/

namespace A131529.P12513304788712935146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150743 n).toNat + A003056 n

end

end A131529.P12513304788712935146

/-!
# A131530: Numbers k such that k^2 - k - 1 and k^2 - k + 1 are twin primes.

The programs for A131530, there is no canonical definition to state claims against.
-/

/-! ## A131530.P4812937197682004136

`A088485(n+1)+1`
-/

namespace A131530.P4812937197682004136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) + 1

end

end A131530.P4812937197682004136

/-! ## A131530.P16391873332279226554

`ceil(sqrt(A088486(n+1)))`
-/

namespace A131530.P16391873332279226554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A088486 (n + 1) : ℝ)⌉

end

end A131530.P16391873332279226554

/-! ## A131530.P14840181870610243062

`ceil(sqrt(A265006(Δ[n²])))`
-/

namespace A131530.P14840181870610243062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A265006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A131530.P14840181870610243062

/-! ## A131530.P3494876917447542934

`round(sqrt(A265006(2*(n+1))))`
-/

namespace A131530.P3494876917447542934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A265006 (2 * (n + 1)) : ℝ))

end

end A131530.P3494876917447542934

/-! ## A131530.P5782647278279867973

`floor(sqrt(A265006(2*n+1)))+1`
-/

namespace A131530.P5782647278279867973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A265006 (2 * n + 1)) + 1

end

end A131530.P5782647278279867973

/-! ## A131530.P8055632834328756650

`∩[A002328(n+1), A055494(n+1)]`
-/

namespace A131530.P8055632834328756650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131530.P8055632834328756650

/-! ## A131530.P17660537235680633995

`∩[A002328(n+1), A002384(n+1)+1]`
-/

namespace A131530.P17660537235680633995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131530.P17660537235680633995

/-! ## A131530.P15585128080315554032

`∩[A002328(n+1), A096176(n+1)+1]`
-/

namespace A131530.P15585128080315554032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131530.P15585128080315554032

/-! ## A131530.P5345029177958869753

`∩[A002384(n+1), A045546(n+1)]+1`
-/

namespace A131530.P5345029177958869753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A131530.P5345029177958869753

/-! ## A131530.P15801517555640981901

`∩[A045546(n+1)+1, A055494(n+1)]`
-/

namespace A131530.P15801517555640981901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131530.P15801517555640981901

/-! ## A131530.P14899296166074736600

`∩[A045546(n+1), A096176(n+1)]+1`
-/

namespace A131530.P14899296166074736600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A131530.P14899296166074736600

/-! ## A131530.P7983374238513227469

`∩[A055494(n+1), A094210(n+1)+2]`
-/

namespace A131530.P7983374238513227469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131530.P7983374238513227469

/-! ## A131530.P8897774647592969547

`(sqrt(A131706(n+1))+1)/2`
-/

namespace A131530.P8897774647592969547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A131706 (n + 1) : ℝ) + 1) / 2

end

end A131530.P8897774647592969547

/-! ## A131530.P8317496273560080683

`A020725(A088485(n+1))`
-/

namespace A131530.P8317496273560080683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A088485 (n + 1)).toNat

end

end A131530.P8317496273560080683

/-! ## A131530.P12530260356850838231

`A020725(∩[A002384(n+1), A045546(n+1)])`
-/

namespace A131530.P12530260356850838231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A131530.P12530260356850838231

/-!
# A131531: Period 6: repeat [0, 0, 1, 0, 0, -1].

The programs for A131531, the canonical program `A131531.P17106634624810592169` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131531 has offset 1).

The definition of A131531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131531.P17106634624810592169

`((-1)^n-(-1)^floor((n+2)/3))/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131531

/-- `((-1)^n-(-1)^floor((n+2)/3))/2` -/
def P17106634624810592169.Spec : Prop :=
  ∀ n, P17106634624810592169.a n = (A131531 (n + 1) : ℚ)

end A131531

/-!
# A131532: Period 6: repeat [0, 0, 0, 0, 1, 1].

The programs for A131532, the canonical program `A131532.P9753501206313179455` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131532 has offset 0).

The definition of A131532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131532.P9753501206313179455

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131532

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P9753501206313179455.Spec : Prop :=
  ∀ n, P9753501206313179455.a n = A131532 n

theorem P9753501206313179455.correct : P9753501206313179455.Spec := by
  intro n
  simp only [A131532]

end A131532

/-!
# A131533: Period 6: repeat [0, 0, 0, 0, 1, -1].

The programs for A131533, the canonical program `A131533.P11277962932409987769` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131533 has offset 0).

The definition of A131533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131533.P11277962932409987769

`floor(acot(4-n%6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131533

/-- `floor(acot(4-n%6))` -/
def P11277962932409987769.Spec : Prop :=
  ∀ n, P11277962932409987769.a n = A131533 n

theorem P11277962932409987769.correct : P11277962932409987769.Spec := by
  intro n
  simp only [A131533]

end A131533

/-!
# A131534: Period 3: repeat [1, 2, 1].

The programs for A131534, the canonical program `A131534.P9796451474263753488` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131534 has offset 0).

The definition of A131534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131534.P9796451474263753488

`a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131534

/-- `a(n-3)` -/
def P9796451474263753488.Spec : Prop :=
  ∀ n, (P9796451474263753488.a n : ℤ) = A131534 n

theorem P9796451474263753488.correct : P9796451474263753488.Spec := by
  intro n
  simp only [A131534]

end A131534

/-!
# A131535: Exponent of least power of 2 having exactly n consecutive 1's in its decimal representation.

The programs for A131535, there is no canonical definition to state claims against.
-/

/-! ## A131535.P6824211697182589972

`A030000(A002275(n))^ceil(sin(n)²)`
-/

namespace A131535.P6824211697182589972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030000 (A002275 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A131535.P6824211697182589972

/-!
# A131537: Exponent of least power of 2 having exactly n consecutive 3's in its decimal representation.

The programs for A131537, there is no canonical definition to state claims against.
-/

/-! ## A131537.P15088355326812974017

`A121591(n+1)-A130397(A080893(n))`
-/

namespace A131537.P15088355326812974017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121591 (n + 1) - A130397 (A080893 n).toNat

end

end A131537.P15088355326812974017

/-!
# A131538: Exponent of least power of 2 having exactly n consecutive 4's in its decimal representation.

The programs for A131538, there is no canonical definition to state claims against.
-/

/-! ## A131538.P16376642830100925251

`A160124(A282913(n))`
-/

namespace A131538.P16376642830100925251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160124 (A282913 n).toNat

end

end A131538.P16376642830100925251

/-!
# A131540: Exponent of least power of 2 having exactly n consecutive 6's in its decimal representation.

The programs for A131540, there is no canonical definition to state claims against.
-/

/-! ## A131540.P29918493924690381

`A030000(A287590(n+1)+A073548(n+1))`
-/

namespace A131540.P29918493924690381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 (A287590 (n + 1) + A073548 (n + 1)).toNat

end

end A131540.P29918493924690381

/-!
# A131542: Exponent of least power of 2 having exactly n consecutive 8's in its decimal representation.

The programs for A131542, there is no canonical definition to state claims against.
-/

/-! ## A131542.P17869653042401633333

`eq[A279195(n+1), A398520(n+1)]`
-/

namespace A131542.P17869653042401633333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A131542.P17869653042401633333

/-!
# A131543: Exponent of least power of 2 having exactly n consecutive 9's in its decimal representation.

The programs for A131543, there is no canonical definition to state claims against.
-/

/-! ## A131543.P16435261982728734052

`C(A063565(10^n-1), gcd(11, n))`
-/

namespace A131543.P16435261982728734052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063565 (10 ^ n - 1)).toNat (Nat.gcd 11 n)

end

end A131543.P16435261982728734052

/-!
# A131553: a(n) = Product_{k=1..n, gcd(k,n)=1} (1+k).

The programs for A131553, there is no canonical definition to state claims against.
-/

/-! ## A131553.P2603171733280295826

`A155582(A008229(n))`
-/

namespace A131553.P2603171733280295826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155582 (A008229 n).toNat

end

end A131553.P2603171733280295826

/-! ## A131553.P11207578268100337211

`filter[A106241(n+1), A145379(#)]`
-/

namespace A131553.P11207578268100337211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145379 (f1 j).toNat = 1) n)

end

end A131553.P11207578268100337211

/-!
# A131554: Period 5: repeat [1, 1, -1, 1, -1].

The programs for A131554, the canonical program `A131554.P11438637538188406442` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131554 has offset 0).

The definition of A131554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131554.P11438637538188406442

`a(n-5)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=1, a(4)=-1, a(5)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131554

/-- `a(n-5)` -/
def P11438637538188406442.Spec : Prop :=
  ∀ n, P11438637538188406442.a n = A131554 n

theorem P11438637538188406442.correct : P11438637538188406442.Spec := by
  intro n
  simp only [A131554]

end A131554

/-!
# A131555: Period 6: repeat [0, 0, 1, 1, 2, 2].

The programs for A131555, the canonical program `A131555.P3229055684249688083` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131555 has offset 0).

The definition of A131555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131555.P3229055684249688083

`floor(n/2)-3*floor(n/6)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131555

/-- `floor(n/2)-3*floor(n/6)` -/
def P3229055684249688083.Spec : Prop :=
  ∀ n, P3229055684249688083.a n = A131555 n

theorem P3229055684249688083.correct : P3229055684249688083.Spec := by
  intro n
  simp only [A131555]

end A131555

/-!
# A131556: Period 6: repeat [1, -2, 1, -1, 2, -1].

The programs for A131556, the canonical program `A131556.P3122007109925631263` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131556 has offset 0).

The definition of A131556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131556.P3122007109925631263

`(-1)^n*A131534(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131556

/-- `(-1)^n*A131534(n)` -/
def P3122007109925631263.Spec : Prop :=
  ∀ n, P3122007109925631263.a n = A131556 n

theorem P3122007109925631263.correct : P3122007109925631263.Spec := by
  intro n
  simp only [A131556]

end A131556

/-!
# A131557: Triangular numbers that are the sums of five consecutive triangular numbers.

The programs for A131557, there is no canonical definition to state claims against.
-/

/-! ## A131557.P252232090667733503

`9*A254628(n+2)+1`
-/

namespace A131557.P252232090667733503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A254628 (n + 2) + 1

end

end A131557.P252232090667733503

/-!
# A131559: Indices of records in A078571.

The programs for A131559, there is no canonical definition to state claims against.
-/

/-! ## A131559.P15206028946740543863

`A071538(A086827(n+1))`
-/

namespace A131559.P15206028946740543863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A086827 (n + 1)).toNat

end

end A131559.P15206028946740543863

/-!
# A131561: Period 3: repeat [1, 1, -1].

The programs for A131561, the canonical program `A131561.P12100099369236440216` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131561 has offset 0).

The definition of A131561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131561.P12100099369236440216

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131561

/-- `a(n-3)` -/
def P12100099369236440216.Spec : Prop :=
  ∀ n, P12100099369236440216.a n = A131561 n

theorem P12100099369236440216.correct : P12100099369236440216.Spec := by
  intro n
  simp only [A131561]

end A131561

/-!
# A131562: a(n)= -3a(n-1) -3a(n-2)-2a(n-3), a(0)=1, a(1)=-2, a(2)=2.

The programs for A131562, the canonical program `A131562.P2100756759089433129` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131562 has offset 0).

The definition of A131562 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*a(n-1)-3*a(n-2)-2*a(n-3)` (program `A131562.P2100756759089433129`, by `A131562.P2100756759089433129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131562.P2100756759089433129

`-3*a(n-1)-3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=-2, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131562

/-- `-3*a(n-1)-3*a(n-2)-2*a(n-3)` -/
def P2100756759089433129.Spec : Prop :=
  ∀ n, P2100756759089433129.a n = A131562 n

theorem P2100756759089433129.correct : P2100756759089433129.Spec := by
  intro n
  simp only [A131562]

end A131562

/-! ## A131562.P15641282564746912010

`(-1)^n*A130707(n)`
-/

namespace A131562.P15641282564746912010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A130707 n

end

end A131562.P15641282564746912010

namespace A131562

/-- `(-1)^n*A130707(n)` -/
def P15641282564746912010.Spec : Prop :=
  ∀ n, P15641282564746912010.a n = A131562 n

end A131562

/-! ## A131562.P3290252960106495406

`ogf((1+x-x^2)/(1+3x+3x^2+2x^3))`
-/

namespace A131562.P3290252960106495406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 3, 3, 2] n

end

end A131562.P3290252960106495406

namespace A131562

/-- `ogf((1+x-x^2)/(1+3x+3x^2+2x^3))` -/
def P3290252960106495406.Spec : Prop :=
  ∀ n, P3290252960106495406.a n = A131562 n

end A131562

/-! ## A131562.P8294958982597245522

`2*(1-(a(n-1)+n%3))` with `a(0)=1`
-/

namespace A131562.P8294958982597245522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (a (n - 1) + ((n % 3 : ℕ) : ℤ)))

end

end A131562.P8294958982597245522

namespace A131562

/-- `2*(1-(a(n-1)+n%3))` -/
def P8294958982597245522.Spec : Prop :=
  ∀ n, P8294958982597245522.a n = A131562 n

end A131562

/-! ## A131562.P9152434372909882116

`2*(A057078(n)-a(n-1))` with `a(0)=1`
-/

namespace A131562.P9152434372909882116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A057078 n - a (n - 1))

end

end A131562.P9152434372909882116

namespace A131562

/-- `2*(A057078(n)-a(n-1))` -/
def P9152434372909882116.Spec : Prop :=
  ∀ n, P9152434372909882116.a n = A131562 n

end A131562

/-! ## A131562.P13324336834090625158

`A130707(n)/A033999(n)`
-/

namespace A131562.P13324336834090625158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130707 n : ℚ) / (A033999 n : ℚ)

end

end A131562.P13324336834090625158

namespace A131562

/-- `A130707(n)/A033999(n)` -/
def P13324336834090625158.Spec : Prop :=
  ∀ n, P13324336834090625158.a n = (A131562 n : ℚ)

end A131562

/-! ## A131562.P2813697295188845133

`A130707(n)*A242073(2*n)`
-/

namespace A131562.P2813697295188845133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 n * A242073 (2 * n)

end

end A131562.P2813697295188845133

namespace A131562

/-- `A130707(n)*A242073(2*n)` -/
def P2813697295188845133.Spec : Prop :=
  ∀ n, P2813697295188845133.a n = A131562 n

end A131562

/-! ## A131562.P4097198982756364041

`A080425(n)+A151575(n)-A080425(n)²`
-/

namespace A131562.P4097198982756364041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n + (A151575 n - A080425 n ^ 2)

end

end A131562.P4097198982756364041

namespace A131562

/-- `A080425(n)+A151575(n)-A080425(n)²` -/
def P4097198982756364041.Spec : Prop :=
  ∀ n, P4097198982756364041.a n = A131562 n

end A131562

/-! ## A131562.P12527447415181197713

`A130707(n)/(A000079(n+1)-A014551(n+1))`
-/

namespace A131562.P12527447415181197713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130707 n : ℚ) / (A000079 (n + 1) - A014551 (n + 1) : ℚ)

end

end A131562.P12527447415181197713

namespace A131562

/-- `A130707(n)/(A000079(n+1)-A014551(n+1))` -/
def P12527447415181197713.Spec : Prop :=
  ∀ n, P12527447415181197713.a n = (A131562 n : ℚ)

end A131562

/-! ## A131562.P9452718841872348832

`A140966(n)-gcd(3, A001792(n))`
-/

namespace A131562.P9452718841872348832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n - (Int.gcd 3 (A001792 n) : ℤ)

end

end A131562.P9452718841872348832

namespace A131562

/-- `A140966(n)-gcd(3, A001792(n))` -/
def P9452718841872348832.Spec : Prop :=
  ∀ n, P9452718841872348832.a n = A131562 n

end A131562

/-!
# A131565: Numbers n such that 3*n^2 + 5*n +1 is either a prime or a power of three multiplied with a prime.

The programs for A131565, there is no canonical definition to state claims against.
-/

/-! ## A131565.P15413152498969499712

`eq[2, A035191(A144390(n+1))]`
-/

namespace A131565.P15413152498969499712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (A144390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131565.P15413152498969499712

/-! ## A131565.P4487605701719101972

`eq[2, A256232(A005843(n)+A003215(n))]`
-/

namespace A131565.P4487605701719101972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (A005843 n + A003215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A131565.P4487605701719101972

/-!
# A131568: a(n) = sum of numbers which in base 2 contain exactly n digits 1 and not more than n digits 0.

The programs for A131568, the canonical program `A131568.P7171491402610812398` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131568 has offset 0).

The definition of A131568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131568.P7171491402610812398

`(4^n-1)*C(2*n, n)/2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131568

/-- `(4^n-1)*C(2*n, n)/2` -/
def P7171491402610812398.Spec : Prop :=
  ∀ n, P7171491402610812398.a n = (A131568 n : ℚ)

end A131568

/-! ## A131568.P7851736279121071978

`(2*n)!*(2^(2*n)-1)/(2*n!*n!)`
-/

namespace A131568.P7851736279121071978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n) : ℤ) * ((2 ^ (2 * n) : ℤ) - 1) : ℚ) / (2 * Nat.factorial n * Nat.factorial n : ℚ)

end

end A131568.P7851736279121071978

namespace A131568

/-- `(2*n)!*(2^(2*n)-1)/(2*n!*n!)` -/
def P7851736279121071978.Spec : Prop :=
  ∀ n, P7851736279121071978.a n = (A131568 n : ℚ)

end A131568

/-! ## A131568.P16147006214301397542

`(4^n-1)*C(comp[2*(n+1)], n)`
-/

namespace A131568.P16147006214301397542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - 1) * (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n : ℤ)

end

end A131568.P16147006214301397542

namespace A131568

/-- `(4^n-1)*C(comp[2*(n+1)], n)` -/
def P16147006214301397542.Spec : Prop :=
  ∀ n, P16147006214301397542.a n = A131568 n

end A131568

/-! ## A131568.P12989829796424824384

`(4^n-1)*A088218(n)`
-/

namespace A131568.P12989829796424824384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - 1) * A088218 n

end

end A131568.P12989829796424824384

namespace A131568

/-- `(4^n-1)*A088218(n)` -/
def P12989829796424824384.Spec : Prop :=
  ∀ n, P12989829796424824384.a n = A131568 n

end A131568

/-! ## A131568.P15764041055814287389

`∑[floor(4^(n-1))]*A029651(n)`
-/

namespace A131568.P15764041055814287389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A029651 n

end

end A131568.P15764041055814287389

namespace A131568

/-- `∑[floor(4^(n-1))]*A029651(n)` -/
def P15764041055814287389.Spec : Prop :=
  ∀ n, P15764041055814287389.a n = A131568 n

end A131568

/-! ## A131568.P10341479397856977577

`A098402(n)-A088218(n)`
-/

namespace A131568.P10341479397856977577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098402 n - A088218 n

end

end A131568.P10341479397856977577

namespace A131568

/-- `A098402(n)-A088218(n)` -/
def P10341479397856977577.Spec : Prop :=
  ∀ n, P10341479397856977577.a n = A131568 n

end A131568

/-! ## A131568.P12839494909181274579

`A088218(n)*A141023(2*n)`
-/

namespace A131568.P12839494909181274579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A141023 (2 * n)

end

end A131568.P12839494909181274579

namespace A131568

/-- `A088218(n)*A141023(2*n)` -/
def P12839494909181274579.Spec : Prop :=
  ∀ n, P12839494909181274579.a n = A131568 n

end A131568

/-! ## A131568.P15043551670131073740

`A001045(2*n)*A050168(2*n)`
-/

namespace A131568.P15043551670131073740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) * A050168 (2 * n)

end

end A131568.P15043551670131073740

namespace A131568

/-- `A001045(2*n)*A050168(2*n)` -/
def P15043551670131073740.Spec : Prop :=
  ∀ n, P15043551670131073740.a n = A131568 n

end A131568

/-! ## A131568.P10077971925534706091

`A000225(2*n)*A210736(2*n)`
-/

namespace A131568.P10077971925534706091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n) * A210736 (2 * n)

end

end A131568.P10077971925534706091

namespace A131568

/-- `A000225(2*n)*A210736(2*n)` -/
def P10077971925534706091.Spec : Prop :=
  ∀ n, P10077971925534706091.a n = A131568 n

end A131568

/-! ## A131568.P5318882407718775987

`(A000079(n)²-1)*A210736(2*n)`
-/

namespace A131568.P5318882407718775987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 - 1) * A210736 (2 * n)

end

end A131568.P5318882407718775987

namespace A131568

/-- `(A000079(n)²-1)*A210736(2*n)` -/
def P5318882407718775987.Spec : Prop :=
  ∀ n, P5318882407718775987.a n = A131568 n

end A131568

/-!
# A131569: a(n) = (1/2)*(F(n+2)-1)*(F(n+2)-2) + F(n), where F() are the Fibonacci numbers.

The programs for A131569, the canonical program `A131569.P3746553902045059040` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131569 has offset 1).

The definition of A131569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131569.P3746553902045059040

`∑[A122931(n+1)-A000045(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A131569

/-- `∑[A122931(n+1)-A000045(n)]` -/
def P3746553902045059040.Spec : Prop :=
  ∀ n, P3746553902045059040.a n = A131569 (n + 1)

theorem P3746553902045059040.correct : P3746553902045059040.Spec := by
  intro n
  simp only [A131569, Nat.add_sub_cancel]

end A131569

/-! ## A131569.P1836033980942705370

`A191797(n+3)-A000071(n+2)`
-/

namespace A131569.P1836033980942705370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 (n + 3) - A000071 (n + 2)

end

end A131569.P1836033980942705370

namespace A131569

/-- `A191797(n+3)-A000071(n+2)` -/
def P1836033980942705370.Spec : Prop :=
  ∀ n, P1836033980942705370.a n = A131569 (n + 1)

end A131569

/-! ## A131569.P14435751045531884418

`A033192(n+3)-A000071(n+4)`
-/

namespace A131569.P14435751045531884418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 3) - A000071 (n + 4)

end

end A131569.P14435751045531884418

namespace A131569

/-- `A033192(n+3)-A000071(n+4)` -/
def P14435751045531884418.Spec : Prop :=
  ∀ n, P14435751045531884418.a n = A131569 (n + 1)

end A131569

/-! ## A131569.P1565095589860357714

`A033192(n+1)+∑[A056014(n+2)]`
-/

namespace A131569.P1565095589860357714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131569.P1565095589860357714

namespace A131569

/-- `A033192(n+1)+∑[A056014(n+2)]` -/
def P1565095589860357714.Spec : Prop :=
  ∀ n, P1565095589860357714.a n = A131569 (n + 1)

end A131569

/-! ## A131569.P7001658126038672806

`∑[A122931(n+1)-A212804(n+1)]`
-/

namespace A131569.P7001658126038672806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122931 (n + 1) - A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131569.P7001658126038672806

namespace A131569

/-- `∑[A122931(n+1)-A212804(n+1)]` -/
def P7001658126038672806.Spec : Prop :=
  ∀ n, P7001658126038672806.a n = A131569 (n + 1)

end A131569

/-! ## A131569.P654602107370821561

`∑[A122931(n+1)-Δ[A000071(n+1)]]`
-/

namespace A131569.P654602107370821561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122931 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131569.P654602107370821561

namespace A131569

/-- `∑[A122931(n+1)-Δ[A000071(n+1)]]` -/
def P654602107370821561.Spec : Prop :=
  ∀ n, P654602107370821561.a n = A131569 (n + 1)

end A131569

/-! ## A131569.P2512623500336236185

`A000045(n+1)+C(∑[A000045(n+1)], 2)`
-/

namespace A131569.P2512623500336236185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ)

end

end A131569.P2512623500336236185

namespace A131569

/-- `A000045(n+1)+C(∑[A000045(n+1)], 2)` -/
def P2512623500336236185.Spec : Prop :=
  ∀ n, P2512623500336236185.a n = A131569 (n + 1)

end A131569

/-! ## A131569.P277922710850460551

`A000045(n+1)+C(A000045(n+3)-1, 2)`
-/

namespace A131569.P277922710850460551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (Nat.choose (A000045 (n + 3) - 1).toNat 2 : ℤ)

end

end A131569.P277922710850460551

namespace A131569

/-- `A000045(n+1)+C(A000045(n+3)-1, 2)` -/
def P277922710850460551.Spec : Prop :=
  ∀ n, P277922710850460551.a n = A131569 (n + 1)

end A131569

/-!
# A131572: a(0) = 0 and a(1) = 1, continued such that absolute values of 2nd differences equal the original sequence.

The programs for A131572, the canonical program `A131572.P9577111679709135137` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131572 has offset 0).

The definition of A131572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131572.P9577111679709135137

`2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131572

/-- `2*a(n-2)` -/
def P9577111679709135137.Spec : Prop :=
  ∀ n, (P9577111679709135137.a n : ℤ) = A131572 n

theorem P9577111679709135137.correct : P9577111679709135137.Spec := by
  intro n
  simp only [A131572]

end A131572

/-! ## A131572.P2327491028513642097

`A016116(n)-A000007(n)`
-/

namespace A131572.P2327491028513642097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n - A000007 n

end

end A131572.P2327491028513642097

namespace A131572

/-- `A016116(n)-A000007(n)` -/
def P2327491028513642097.Spec : Prop :=
  ∀ n, P2327491028513642097.a n = A131572 n

end A131572

/-! ## A131572.P10096699358068083952

`ogf((x+2x^2)/(1-2x^2))`
-/

namespace A131572.P10096699358068083952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -2] n

end

end A131572.P10096699358068083952

namespace A131572

/-- `ogf((x+2x^2)/(1-2x^2))` -/
def P10096699358068083952.Spec : Prop :=
  ∀ n, P10096699358068083952.a n = A131572 n

end A131572

/-! ## A131572.P6778500240711065164

`floor(2^round((n-1)/2))`
-/

namespace A131572.P6778500240711065164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) : ℤ)⌋

end

end A131572.P6778500240711065164

namespace A131572

/-- `floor(2^round((n-1)/2))` -/
def P6778500240711065164.Spec : Prop :=
  ∀ n, P6778500240711065164.a n = A131572 n

end A131572

/-! ## A131572.P14131502811791548045

`abs(Δ[Δ[or(1, n)]^floor(n/2)])`
-/

namespace A131572.P14131502811791548045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A131572.P14131502811791548045

namespace A131572

/-- `abs(Δ[Δ[or(1, n)]^floor(n/2)])` -/
def P14131502811791548045.Spec : Prop :=
  ∀ n, P14131502811791548045.a n = (A131572 n : ℚ)

end A131572

/-! ## A131572.P15141295026577748097

`a(n-2)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A131572.P15141295026577748097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) + a (n - 2)

end

end A131572.P15141295026577748097

namespace A131572

/-- `a(n-2)+a(n-2)` -/
def P15141295026577748097.Spec : Prop :=
  ∀ n, (P15141295026577748097.a n : ℤ) = A131572 n

theorem P15141295026577748097.correct : P15141295026577748097.Spec := by
  intro n
  simp only [A131572, Nat.add_sub_cancel, A131572.P15141295026577748097.a, A131572.P9577111679709135137.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A131572

/-! ## A131572.P6041978969784826793

`a(n-2)/(1-1/2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A131572.P6041978969784826793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A131572.P6041978969784826793

namespace A131572

/-- `a(n-2)/(1-1/2)` -/
def P6041978969784826793.Spec : Prop :=
  ∀ n, P6041978969784826793.a n = (A131572 n : ℚ)

end A131572

/-! ## A131572.P12490944523131076304

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A131572.P12490944523131076304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A131572.P12490944523131076304

namespace A131572

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P12490944523131076304.Spec : Prop :=
  ∀ n, P12490944523131076304.a n = A131572 n

end A131572

/-! ## A131572.P12082502043700047704

`a(n-2)-(a(n-1)%2-a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A131572.P12082502043700047704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) - (Int.tmod (a (n - 1)) 2 - a (n - 2))

end

end A131572.P12082502043700047704

namespace A131572

/-- `a(n-2)-(a(n-1)%2-a(n-2))` -/
def P12082502043700047704.Spec : Prop :=
  ∀ n, P12082502043700047704.a n = A131572 n

end A131572

/-! ## A131572.P3473415031355002423

`gcd(3, a(n-2))-(1-a(n-2)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A131572.P3473415031355002423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.gcd 3 (a (n - 2)) : ℤ) - (1 - a (n - 2) - a (n - 2))

end

end A131572.P3473415031355002423

namespace A131572

/-- `gcd(3, a(n-2))-(1-a(n-2)-a(n-2))` -/
def P3473415031355002423.Spec : Prop :=
  ∀ n, P3473415031355002423.a n = A131572 n

end A131572

/-! ## A131572.P10409856639180496835

`abs(Δ[A131575(n)])`
-/

namespace A131572.P10409856639180496835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A131572.P10409856639180496835

namespace A131572

/-- `abs(Δ[A131575(n)])` -/
def P10409856639180496835.Spec : Prop :=
  ∀ n, P10409856639180496835.a n = A131572 n

end A131572

/-! ## A131572.P12854276050150305334

`∑{d}[n, A179781(#)]`
-/

namespace A131572.P12854276050150305334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A179781 d

end

end A131572.P12854276050150305334

namespace A131572

/-- `∑{d}[n, A179781(#)]` -/
def P12854276050150305334.Spec : Prop :=
  ∀ n, P12854276050150305334.a n = A131572 n

end A131572

/-! ## A131572.P18178319152243835660

`A158780(n)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A131572.P18178319152243835660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A158780 n + a (n - 2)

end

end A131572.P18178319152243835660

namespace A131572

/-- `A158780(n)+a(n-2)` -/
def P18178319152243835660.Spec : Prop :=
  ∀ n, P18178319152243835660.a n = A131572 n

end A131572

/-! ## A131572.P3726817865481848234

`A131575(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A131572.P3726817865481848234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131575 (n - 1) + a (n - 1)

end

end A131572.P3726817865481848234

namespace A131572

/-- `A131575(n-1)+a(n-1)` -/
def P3726817865481848234.Spec : Prop :=
  ∀ n, P3726817865481848234.a n = A131572 n

end A131572

/-! ## A131572.P4811344145194846164

`A034008(A266977(n))`
-/

namespace A131572.P4811344145194846164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A266977 n).toNat

end

end A131572.P4811344145194846164

namespace A131572

/-- `A034008(A266977(n))` -/
def P4811344145194846164.Spec : Prop :=
  ∀ n, P4811344145194846164.a n = A131572 n

end A131572

/-! ## A131572.P5330571942706706914

`A133806(A063196(n+1))`
-/

namespace A131572.P5330571942706706914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133806 (A063196 (n + 1)).toNat

end

end A131572.P5330571942706706914

namespace A131572

/-- `A133806(A063196(n+1))` -/
def P5330571942706706914.Spec : Prop :=
  ∀ n, P5330571942706706914.a n = A131572 n

end A131572

/-! ## A131572.P4102838088990919638

`A158780(A114637(n+1))`
-/

namespace A131572.P4102838088990919638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A114637 (n + 1)).toNat

end

end A131572.P4102838088990919638

namespace A131572

/-- `A158780(A114637(n+1))` -/
def P4102838088990919638.Spec : Prop :=
  ∀ n, P4102838088990919638.a n = A131572 n

end A131572

/-! ## A131572.P6143715110453087639

`A158780(A130130(n)+n)`
-/

namespace A131572.P6143715110453087639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A130130 n + (n : ℤ)).toNat

end

end A131572.P6143715110453087639

namespace A131572

/-- `A158780(A130130(n)+n)` -/
def P6143715110453087639.Spec : Prop :=
  ∀ n, P6143715110453087639.a n = A131572 n

end A131572

/-! ## A131572.P2805670011882793258

`A016116(n)*A057427(n)`
-/

namespace A131572.P2805670011882793258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A057427 n

end

end A131572.P2805670011882793258

namespace A131572

/-- `A016116(n)*A057427(n)` -/
def P2805670011882793258.Spec : Prop :=
  ∀ n, P2805670011882793258.a n = A131572 n

end A131572

/-! ## A131572.P5743873134072056565

`A130130(n)*A158780(n)`
-/

namespace A131572.P5743873134072056565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n * A158780 n

end

end A131572.P5743873134072056565

namespace A131572

/-- `A130130(n)*A158780(n)` -/
def P5743873134072056565.Spec : Prop :=
  ∀ n, P5743873134072056565.a n = A131572 n

end A131572

/-!
# A131573: Numbers whose square starts with 3 identical digits.

The programs for A131573, there is no canonical definition to state claims against.
-/

/-! ## A131573.P7636256508238054250

`∪[A132391(n+1), A346891(n+1)]`
-/

namespace A131573.P7636256508238054250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131573.P7636256508238054250

/-! ## A131573.P2363333501744721003

`∪[A346891(n+1), A346940(n+1)]`
-/

namespace A131573.P2363333501744721003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A131573.P2363333501744721003

/-! ## A131573.P4916373573697702750

`record[A346891(A318126(n))]`
-/

namespace A131573.P4916373573697702750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346891 (A318126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131573.P4916373573697702750

/-! ## A131573.P3520956174600018329

`A358434(A357170(n+1))+A346891(n+1)`
-/

namespace A131573.P3520956174600018329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358434 (A357170 (n + 1)).toNat + A346891 (n + 1)

end

end A131573.P3520956174600018329

/-! ## A131573.P2583371635255434172

`A158577(A331139(2*(n+2)))*A346891(n+1)`
-/

namespace A131573.P2583371635255434172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158577 (A331139 (2 * (n + 2))).toNat * A346891 (n + 1)

end

end A131573.P2583371635255434172

/-!
# A131574: Numbers k that are the product of two distinct odd primes and x^2 + y^2 = k has integer solutions.

The programs for A131574, the canonical program `A131574.P9398401731055651863` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131574 has offset 1).

The definition of A131574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131574.P9398401731055651863

`∩[A024409(n+1), A121387(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A131574

/-- `∩[A024409(n+1), A121387(n+1)]` -/
def P9398401731055651863.Spec : Prop :=
  ∀ n, (P9398401731055651863.a n : ℤ) = A131574 (n + 1)

theorem P9398401731055651863.correct : P9398401731055651863.Spec := by
  intro n
  simp only [A131574, Nat.add_sub_cancel]

end A131574

/-! ## A131574.P5915606388291708899

`∩[A024409(n+1), A085625(n+1)]`
-/

namespace A131574.P5915606388291708899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P5915606388291708899

namespace A131574

/-- `∩[A024409(n+1), A085625(n+1)]` -/
def P5915606388291708899.Spec : Prop :=
  ∀ n, (P5915606388291708899.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P16662369843700117716

`∩[A121387(n+1), A224770(n+1)]`
-/

namespace A131574.P16662369843700117716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P16662369843700117716

namespace A131574

/-- `∩[A121387(n+1), A224770(n+1)]` -/
def P16662369843700117716.Spec : Prop :=
  ∀ n, (P16662369843700117716.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P8420525975365881362

`∩[A024409(n+1), A025303(n+1)]`
-/

namespace A131574.P8420525975365881362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P8420525975365881362

namespace A131574

/-- `∩[A024409(n+1), A025303(n+1)]` -/
def P8420525975365881362.Spec : Prop :=
  ∀ n, (P8420525975365881362.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P2141411637630224760

`∩[A025303(n+1), A121387(n+1)]`
-/

namespace A131574.P2141411637630224760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P2141411637630224760

namespace A131574

/-- `∩[A025303(n+1), A121387(n+1)]` -/
def P2141411637630224760.Spec : Prop :=
  ∀ n, (P2141411637630224760.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P345517236570540678

`∩[A024409(n+1), A025285(n+1)]`
-/

namespace A131574.P345517236570540678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P345517236570540678

namespace A131574

/-- `∩[A024409(n+1), A025285(n+1)]` -/
def P345517236570540678.Spec : Prop :=
  ∀ n, (P345517236570540678.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P17187559519682299988

`∩[A025285(n+1), A121387(n+1)]`
-/

namespace A131574.P17187559519682299988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P17187559519682299988

namespace A131574

/-- `∩[A025285(n+1), A121387(n+1)]` -/
def P17187559519682299988.Spec : Prop :=
  ∀ n, (P17187559519682299988.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P3370974705299237369

`∩[A231754(n+1), A025285(n+1)]`
-/

namespace A131574.P3370974705299237369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P3370974705299237369

namespace A131574

/-- `∩[A231754(n+1), A025285(n+1)]` -/
def P3370974705299237369.Spec : Prop :=
  ∀ n, (P3370974705299237369.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P343646678725183865

`∩[A085625(n+1), A190299(n+1)]`
-/

namespace A131574.P343646678725183865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P343646678725183865

namespace A131574

/-- `∩[A085625(n+1), A190299(n+1)]` -/
def P343646678725183865.Spec : Prop :=
  ∀ n, (P343646678725183865.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P3178149061737309489

`∩[A121387(n+1), A189986(n+1)]`
-/

namespace A131574.P3178149061737309489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P3178149061737309489

namespace A131574

/-- `∩[A121387(n+1), A189986(n+1)]` -/
def P3178149061737309489.Spec : Prop :=
  ∀ n, (P3178149061737309489.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P4658722762188967721

`∩[A024409(n+1), A108181(n+1)]`
-/

namespace A131574.P4658722762188967721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P4658722762188967721

namespace A131574

/-- `∩[A024409(n+1), A108181(n+1)]` -/
def P4658722762188967721.Spec : Prop :=
  ∀ n, (P4658722762188967721.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P792001249597114585

`∩[A025285(n+1), A108181(n+1)]`
-/

namespace A131574.P792001249597114585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P792001249597114585

namespace A131574

/-- `∩[A025285(n+1), A108181(n+1)]` -/
def P792001249597114585.Spec : Prop :=
  ∀ n, (P792001249597114585.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P16404512794594692350

`∩[A025303(n+1), A108181(n+1)]`
-/

namespace A131574.P16404512794594692350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P16404512794594692350

namespace A131574

/-- `∩[A025303(n+1), A108181(n+1)]` -/
def P16404512794594692350.Spec : Prop :=
  ∀ n, (P16404512794594692350.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P9999754056306599713

`∩[A004613(n+1), A190299(n+1)]`
-/

namespace A131574.P9999754056306599713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P9999754056306599713

namespace A131574

/-- `∩[A004613(n+1), A190299(n+1)]` -/
def P9999754056306599713.Spec : Prop :=
  ∀ n, (P9999754056306599713.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P9727254202874870554

`∩[A071011(n+1), A108181(n+1)]`
-/

namespace A131574.P9727254202874870554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P9727254202874870554

namespace A131574

/-- `∩[A071011(n+1), A108181(n+1)]` -/
def P9727254202874870554.Spec : Prop :=
  ∀ n, (P9727254202874870554.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P3523946162276549711

`∩[A071011(n+1), A121387(n+1)]`
-/

namespace A131574.P3523946162276549711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A131574.P3523946162276549711

namespace A131574

/-- `∩[A071011(n+1), A121387(n+1)]` -/
def P3523946162276549711.Spec : Prop :=
  ∀ n, (P3523946162276549711.a n : ℤ) = A131574 (n + 1)

end A131574

/-! ## A131574.P6137441929132163424

`filter[A121387(n+1), A008966(#)]`
-/

namespace A131574.P6137441929132163424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A131574.P6137441929132163424

namespace A131574

/-- `filter[A121387(n+1), A008966(#)]` -/
def P6137441929132163424.Spec : Prop :=
  ∀ n, P6137441929132163424.a n = A131574 (n + 1)

end A131574

/-! ## A131574.P17151337119951442352

`filter[A025285(n+1), A359465(#)]`
-/

namespace A131574.P17151337119951442352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A131574.P17151337119951442352

namespace A131574

/-- `filter[A025285(n+1), A359465(#)]` -/
def P17151337119951442352.Spec : Prop :=
  ∀ n, P17151337119951442352.a n = A131574 (n + 1)

end A131574

/-! ## A131574.P7642910084577332499

`filter[A025303(n+1), A359465(#)]`
-/

namespace A131574.P7642910084577332499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A131574.P7642910084577332499

namespace A131574

/-- `filter[A025303(n+1), A359465(#)]` -/
def P7642910084577332499.Spec : Prop :=
  ∀ n, P7642910084577332499.a n = A131574 (n + 1)

end A131574

/-! ## A131574.P11191383493591923836

`filter[A025285(n+1), A359828(#)]`
-/

namespace A131574.P11191383493591923836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A131574.P11191383493591923836

namespace A131574

/-- `filter[A025285(n+1), A359828(#)]` -/
def P11191383493591923836.Spec : Prop :=
  ∀ n, P11191383493591923836.a n = A131574 (n + 1)

end A131574

/-!
# A131575: First differences of A131572.

The programs for A131575, the canonical program `A131575.P55044588801403838` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131575 has offset 0).

The definition of A131575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131575.P55044588801403838

`A131572(n+1)-A131572(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A131575

/-- `A131572(n+1)-A131572(n)` -/
def P55044588801403838.Spec : Prop :=
  ∀ n, P55044588801403838.a n = A131575 n

theorem P55044588801403838.correct : P55044588801403838.Spec := by
  intro n
  simp only [A131575]

end A131575

/-! ## A131575.P7321678708736519147

`ogf((1+x-2x^2)/(1-2x^2))`
-/

namespace A131575.P7321678708736519147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, 0, -2] n

end

end A131575.P7321678708736519147

namespace A131575

/-- `ogf((1+x-2x^2)/(1-2x^2))` -/
def P7321678708736519147.Spec : Prop :=
  ∀ n, P7321678708736519147.a n = A131575 n

end A131575

/-! ## A131575.P1623072598373534561

`2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A131575.P1623072598373534561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * a (n - 2)

end

end A131575.P1623072598373534561

namespace A131575

/-- `2*a(n-2)` -/
def P1623072598373534561.Spec : Prop :=
  ∀ n, (P1623072598373534561.a n : ℤ) = A131575 n

end A131575

/-! ## A131575.P12252022115256036963

`Δ[or(1, n)]^floor(n/2)`
-/

namespace A131575.P12252022115256036963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A131575.P12252022115256036963

namespace A131575

/-- `Δ[or(1, n)]^floor(n/2)` -/
def P12252022115256036963.Spec : Prop :=
  ∀ n, P12252022115256036963.a n = (A131575 n : ℚ)

end A131575

/-! ## A131575.P6537612270916903337

`(2*n%2)^floor(n/2)`
-/

namespace A131575.P6537612270916903337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n % 2) : ℕ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A131575.P6537612270916903337

namespace A131575

/-- `(2*n%2)^floor(n/2)` -/
def P6537612270916903337.Spec : Prop :=
  ∀ n, P6537612270916903337.a n = (A131575 n : ℚ)

end A131575

/-! ## A131575.P11802141859245425148

`(2*and(1, n))^floor(n/2)`
-/

namespace A131575.P11802141859245425148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A131575.P11802141859245425148

namespace A131575

/-- `(2*and(1, n))^floor(n/2)` -/
def P11802141859245425148.Spec : Prop :=
  ∀ n, P11802141859245425148.a n = (A131575 n : ℚ)

end A131575

/-! ## A131575.P11906345891465265616

`(1-(-1)^n)^floor(n/2)`
-/

namespace A131575.P11906345891465265616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A131575.P11906345891465265616

namespace A131575

/-- `(1-(-1)^n)^floor(n/2)` -/
def P11906345891465265616.Spec : Prop :=
  ∀ n, P11906345891465265616.a n = (A131575 n : ℚ)

end A131575

/-! ## A131575.P8820532027799328773

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A131575.P8820532027799328773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) + a (n - 2)

end

end A131575.P8820532027799328773

namespace A131575

/-- `a(n-2)+a(n-2)` -/
def P8820532027799328773.Spec : Prop :=
  ∀ n, (P8820532027799328773.a n : ℤ) = A131575 n

end A131575

/-! ## A131575.P14023703404715676438

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A131575.P14023703404715676438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A131575.P14023703404715676438

namespace A131575

/-- `a(n-2)/(1-1/2)` -/
def P14023703404715676438.Spec : Prop :=
  ∀ n, P14023703404715676438.a n = (A131575 n : ℚ)

end A131575

/-! ## A131575.P5413987371116500946

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A131575.P5413987371116500946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A131575.P5413987371116500946

namespace A131575

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P5413987371116500946.Spec : Prop :=
  ∀ n, P5413987371116500946.a n = A131575 n

end A131575

/-! ## A131575.P14507911032749990609

`a(n-2)-(a(n-1)%2-a(n-2))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A131575.P14507911032749990609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) - (Int.tmod (a (n - 1)) 2 - a (n - 2))

end

end A131575.P14507911032749990609

namespace A131575

/-- `a(n-2)-(a(n-1)%2-a(n-2))` -/
def P14507911032749990609.Spec : Prop :=
  ∀ n, P14507911032749990609.a n = A131575 n

end A131575

/-! ## A131575.P9403074136443370051

`A077957((n-1)%(n+1))`
-/

namespace A131575.P9403074136443370051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A131575.P9403074136443370051

namespace A131575

/-- `A077957((n-1)%(n+1))` -/
def P9403074136443370051.Spec : Prop :=
  ∀ n, P9403074136443370051.a n = A131575 n

end A131575

/-! ## A131575.P13007079840813679769

`A158780(n+1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131575.P13007079840813679769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A158780 (n + 1) - a (n - 1)

end

end A131575.P13007079840813679769

namespace A131575

/-- `A158780(n+1)-a(n-1)` -/
def P13007079840813679769.Spec : Prop :=
  ∀ n, P13007079840813679769.a n = A131575 n

end A131575

/-! ## A131575.P12284538973283308264

`A016116(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131575.P12284538973283308264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A016116 (n - 1) - a (n - 1)

end

end A131575.P12284538973283308264

namespace A131575

/-- `A016116(n-1)-a(n-1)` -/
def P12284538973283308264.Spec : Prop :=
  ∀ n, P12284538973283308264.a n = A131575 n

end A131575

/-! ## A131575.P1674190496968395424

`A131572(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131575.P1674190496968395424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A131572 (n - 1) - a (n - 1)

end

end A131575.P1674190496968395424

namespace A131575

/-- `A131572(n-1)-a(n-1)` -/
def P1674190496968395424.Spec : Prop :=
  ∀ n, P1674190496968395424.a n = A131575 n

end A131575

/-! ## A131575.P1009778157593935602

`A119332(A004273(n))`
-/

namespace A131575.P1009778157593935602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A004273 n).toNat

end

end A131575.P1009778157593935602

namespace A131575

/-- `A119332(A004273(n))` -/
def P1009778157593935602.Spec : Prop :=
  ∀ n, P1009778157593935602.a n = A131575 n

end A131575

/-! ## A131575.P3138064978497201396

`A119332(A004275(n))`
-/

namespace A131575.P3138064978497201396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A004275 n).toNat

end

end A131575.P3138064978497201396

namespace A131575

/-- `A119332(A004275(n))` -/
def P3138064978497201396.Spec : Prop :=
  ∀ n, P3138064978497201396.a n = A131575 n

end A131575

/-! ## A131575.P3434803103494200880

`A119332(A092535(n))`
-/

namespace A131575.P3434803103494200880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A092535 n).toNat

end

end A131575.P3434803103494200880

namespace A131575

/-- `A119332(A092535(n))` -/
def P3434803103494200880.Spec : Prop :=
  ∀ n, P3434803103494200880.a n = A131575 n

end A131575

/-! ## A131575.P13802710794287830139

`A119332(A163985(n))`
-/

namespace A131575.P13802710794287830139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A163985 n).toNat

end

end A131575.P13802710794287830139

namespace A131575

/-- `A119332(A163985(n))` -/
def P13802710794287830139.Spec : Prop :=
  ∀ n, P13802710794287830139.a n = A131575 n

end A131575

/-! ## A131575.P13268189235316978077

`A119332(A266256(n))`
-/

namespace A131575.P13268189235316978077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A266256 n).toNat

end

end A131575.P13268189235316978077

namespace A131575

/-- `A119332(A266256(n))` -/
def P13268189235316978077.Spec : Prop :=
  ∀ n, P13268189235316978077.a n = A131575 n

end A131575

/-!
# A131576: Number of ways to represent n as a sum of an even number of consecutive integers.

The programs for A131576, there is no canonical definition to state claims against.
-/

/-! ## A131576.P16311859379841704081

`A341594(2*(n+1))`
-/

namespace A131576.P16311859379841704081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (2 * (n + 1))

end

end A131576.P16311859379841704081

/-! ## A131576.P8195245623848995590

`A341675(2*(n+1))`
-/

namespace A131576.P8195245623848995590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (2 * (n + 1))

end

end A131576.P8195245623848995590

/-! ## A131576.P11657640712955017583

`A281009(n+1)/2`
-/

namespace A131576.P11657640712955017583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281009 (n + 1) : ℚ) / 2

end

end A131576.P11657640712955017583

/-! ## A131576.P4808589281713594489

`A341675(record[2-xor(1, -n)])%Δ[n^3]`
-/

namespace A131576.P4808589281713594489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A131576.P4808589281713594489

/-! ## A131576.P8792372075733469533

`A008624(2*A281009(n+1)+1)`
-/

namespace A131576.P8792372075733469533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A281009 (n + 1) + 1).toNat

end

end A131576.P8792372075733469533

/-! ## A131576.P14542384238691344484

`A001227(n+1)-A082647(n+1)`
-/

namespace A131576.P14542384238691344484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A082647 (n + 1)

end

end A131576.P14542384238691344484

/-! ## A131576.P16556586394847872632

`A082647(n+1)-A067742(n+1)`
-/

namespace A131576.P16556586394847872632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (n + 1) - A067742 (n + 1)

end

end A131576.P16556586394847872632

/-! ## A131576.P7395790706884902985

`A001227(n+1)-A333805(2*(n+1))`
-/

namespace A131576.P7395790706884902985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A333805 (2 * (n + 1))

end

end A131576.P7395790706884902985

/-! ## A131576.P14128945278931163034

`(A001227(n+1)-A067742(n+1))/2`
-/

namespace A131576.P14128945278931163034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) - A067742 (n + 1) : ℚ) / 2

end

end A131576.P14128945278931163034

/-! ## A131576.P9312461933397673452

`A054844(n+1)/2-A082647(n+1)`
-/

namespace A131576.P9312461933397673452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054844 (n + 1) : ℚ) / 2 - (A082647 (n + 1) : ℚ)

end

end A131576.P9312461933397673452

/-! ## A131576.P13866253084853775345

`(A067743(n+1)-A183063(n+1))/2`
-/

namespace A131576.P13866253084853775345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067743 (n + 1) - A183063 (n + 1) : ℚ) / 2

end

end A131576.P13866253084853775345

/-! ## A131576.P4428996343026496431

`A008624(A281009(n+1)+A281009(n+1)+1)`
-/

namespace A131576.P4428996343026496431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A281009 (n + 1) + (A281009 (n + 1) + 1)).toNat

end

end A131576.P4428996343026496431

/-! ## A131576.P14716530129901987621

`A000005(A000265(n+1))-A333805(2*(n+1))`
-/

namespace A131576.P14716530129901987621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat - A333805 (2 * (n + 1))

end

end A131576.P14716530129901987621

/-! ## A131576.P11450877226519877935

`A054843(n+1)-(A082647(n+1)+A010054(n+1))`
-/

namespace A131576.P11450877226519877935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054843 (n + 1) - (A082647 (n + 1) + A010054 (n + 1))

end

end A131576.P11450877226519877935

/-! ## A131576.P2421928182576041005

`A060831(n+1)-(A082647(n+1)+A060831(n))`
-/

namespace A131576.P2421928182576041005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) - (A082647 (n + 1) + A060831 n)

end

end A131576.P2421928182576041005

/-! ## A131576.P15997000198000644233

`∑{digits}[A303818(2*(n+1)), A025435(#)]`
-/

namespace A131576.P15997000198000644233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303818 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025435 x).sum

end

end A131576.P15997000198000644233

/-! ## A131576.P17773289987233448853

`A352505(n+1)/(n+1)`
-/

namespace A131576.P17773289987233448853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352505 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A131576.P17773289987233448853

/-! ## A131576.P15694962391248675816

`A352505(n+1)%A028310(n)`
-/

namespace A131576.P15694962391248675816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352505 (n + 1)) (A028310 n)

end

end A131576.P15694962391248675816

/-! ## A131576.P979599009248862146

`A001227(n+1)-A069288(2*(n+1))`
-/

namespace A131576.P979599009248862146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A069288 (2 * (n + 1))

end

end A131576.P979599009248862146

/-! ## A131576.P13888782801067520259

`(A348515(2*(n+1))+A038548(2*(n+1)))/2`
-/

namespace A131576.P13888782801067520259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348515 (2 * (n + 1)) + A038548 (2 * (n + 1)) : ℚ) / 2

end

end A131576.P13888782801067520259

/-!
# A131577: Zero followed by powers of 2 (cf. A000079).

The programs for A131577, the canonical program `A131577.P3998309598604981540` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131577 has offset 0).

The definition of A131577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131577.P3998309598604981540

`floor(2^(n-1))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131577

/-- `floor(2^(n-1))` -/
def P3998309598604981540.Spec : Prop :=
  ∀ n, P3998309598604981540.a n = A131577 n

theorem P3998309598604981540.correct : P3998309598604981540.Spec := by
  intro n
  simp only [A131577]

end A131577

/-! ## A131577.P8133223067609256961

`ogf(x/(1-2x))`
-/

namespace A131577.P8133223067609256961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2] n

end

end A131577.P8133223067609256961

namespace A131577

/-- `ogf(x/(1-2x))` -/
def P8133223067609256961.Spec : Prop :=
  ∀ n, P8133223067609256961.a n = A131577 n

end A131577

/-! ## A131577.P17624419933474357758

`2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A131577.P17624419933474357758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1)

end

end A131577.P17624419933474357758

namespace A131577

/-- `2*a(n-1)` -/
def P17624419933474357758.Spec : Prop :=
  ∀ n, (P17624419933474357758.a n : ℤ) = A131577 n

end A131577

/-! ## A131577.P17556048406740804890

`ceil(atan(n))^abs(1-n)`
-/

namespace A131577.P17556048406740804890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.arctan (n : ℝ)⌉ : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A131577.P17556048406740804890

namespace A131577

/-- `ceil(atan(n))^abs(1-n)` -/
def P17556048406740804890.Spec : Prop :=
  ∀ n, P17556048406740804890.a n = (A131577 n : ℚ)

end A131577

/-! ## A131577.P5906201493119394933

`ceil(2^(n-1)-cos(1))`
-/

namespace A131577.P5906201493119394933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (1 : ℝ)⌉

end

end A131577.P5906201493119394933

namespace A131577

/-- `ceil(2^(n-1)-cos(1))` -/
def P5906201493119394933.Spec : Prop :=
  ∀ n, P5906201493119394933.a n = A131577 n

end A131577

/-! ## A131577.P12447575593120168503

`ceil(2^(n-1)-sin(1))`
-/

namespace A131577.P12447575593120168503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (1 : ℝ)⌉

end

end A131577.P12447575593120168503

namespace A131577

/-- `ceil(2^(n-1)-sin(1))` -/
def P12447575593120168503.Spec : Prop :=
  ∀ n, P12447575593120168503.a n = A131577 n

end A131577

/-! ## A131577.P12286532392117372936

`round(cos(2)+2^(n-1))`
-/

namespace A131577.P12286532392117372936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A131577.P12286532392117372936

namespace A131577

/-- `round(cos(2)+2^(n-1))` -/
def P12286532392117372936.Spec : Prop :=
  ∀ n, P12286532392117372936.a n = A131577 n

end A131577

/-! ## A131577.P4650563622418524374

`round(2^(n-1)-sin(3))`
-/

namespace A131577.P4650563622418524374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (3 : ℝ))

end

end A131577.P4650563622418524374

namespace A131577

/-- `round(2^(n-1)-sin(3))` -/
def P4650563622418524374.Spec : Prop :=
  ∀ n, P4650563622418524374.a n = A131577 n

end A131577

/-! ## A131577.P8124503704595941114

`round(tan(3)+2^(n-1))`
-/

namespace A131577.P8124503704595941114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (3 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A131577.P8124503704595941114

namespace A131577

/-- `round(tan(3)+2^(n-1))` -/
def P8124503704595941114.Spec : Prop :=
  ∀ n, P8124503704595941114.a n = A131577 n

end A131577

/-! ## A131577.P8333068226365873362

`ceil(2^(n-1)-atan(1))`
-/

namespace A131577.P8333068226365873362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.arctan (1 : ℝ)⌉

end

end A131577.P8333068226365873362

namespace A131577

/-- `ceil(2^(n-1)-atan(1))` -/
def P8333068226365873362.Spec : Prop :=
  ∀ n, P8333068226365873362.a n = A131577 n

end A131577

/-! ## A131577.P11958558077332719890

`round(2^(n-1)-cos(5))`
-/

namespace A131577.P11958558077332719890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (5 : ℝ))

end

end A131577.P11958558077332719890

namespace A131577

/-- `round(2^(n-1)-cos(5))` -/
def P11958558077332719890.Spec : Prop :=
  ∀ n, P11958558077332719890.a n = A131577 n

end A131577

/-! ## A131577.P15816555882337145920

`ceil(2^(n-1)-tanh(1))`
-/

namespace A131577.P15816555882337145920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tanh (1 : ℝ)⌉

end

end A131577.P15816555882337145920

namespace A131577

/-- `ceil(2^(n-1)-tanh(1))` -/
def P15816555882337145920.Spec : Prop :=
  ∀ n, P15816555882337145920.a n = A131577 n

end A131577

/-! ## A131577.P7522777540338241227

`ceil(2^(n-1)-tan(7))`
-/

namespace A131577.P7522777540338241227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.tan (7 : ℝ)⌉

end

end A131577.P7522777540338241227

namespace A131577

/-- `ceil(2^(n-1)-tan(7))` -/
def P7522777540338241227.Spec : Prop :=
  ∀ n, P7522777540338241227.a n = A131577 n

end A131577

/-! ## A131577.P10812450255770093668

`ceil(2^(n-1)-cot(1))`
-/

namespace A131577.P10812450255770093668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cot (1 : ℝ)⌉

end

end A131577.P10812450255770093668

namespace A131577

/-- `ceil(2^(n-1)-cot(1))` -/
def P10812450255770093668.Spec : Prop :=
  ∀ n, P10812450255770093668.a n = A131577 n

end A131577

/-! ## A131577.P11534235154098094929

`ceil(2^(n-1)-acot(1))`
-/

namespace A131577.P11534235154098094929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - SequenceMachineLib.acot (1 : ℝ)⌉

end

end A131577.P11534235154098094929

namespace A131577

/-- `ceil(2^(n-1)-acot(1))` -/
def P11534235154098094929.Spec : Prop :=
  ∀ n, P11534235154098094929.a n = A131577 n

end A131577

/-! ## A131577.P8422451911456008142

`round(cot(2)+2^(n-1))`
-/

namespace A131577.P8422451911456008142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A131577.P8422451911456008142

namespace A131577

/-- `round(cot(2)+2^(n-1))` -/
def P8422451911456008142.Spec : Prop :=
  ∀ n, P8422451911456008142.a n = A131577 n

end A131577

/-! ## A131577.P12402638914849089030

`round(2^(n-1)-acot(2))`
-/

namespace A131577.P12402638914849089030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A131577.P12402638914849089030

namespace A131577

/-- `round(2^(n-1)-acot(2))` -/
def P12402638914849089030.Spec : Prop :=
  ∀ n, P12402638914849089030.a n = A131577 n

end A131577

/-! ## A131577.P7223744235113678975

`and(-n, 2^abs(1-n))`
-/

namespace A131577.P7223744235113678975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ)))

end

end A131577.P7223744235113678975

namespace A131577

/-- `and(-n, 2^abs(1-n))` -/
def P7223744235113678975.Spec : Prop :=
  ∀ n, P7223744235113678975.a n = A131577 n

end A131577

/-! ## A131577.P1799250814462023659

`(2%(n+1))^abs(1-n)`
-/

namespace A131577.P1799250814462023659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 % (n + 1) : ℕ) : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A131577.P1799250814462023659

namespace A131577

/-- `(2%(n+1))^abs(1-n)` -/
def P1799250814462023659.Spec : Prop :=
  ∀ n, P1799250814462023659.a n = (A131577 n : ℚ)

end A131577

/-! ## A131577.P12909518482850833617

`record[(n%3)^((n+1)/3)]`
-/

namespace A131577.P12909518482850833617
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 3 : ℕ) : ℝ) ^ ((n + 1 : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131577.P12909518482850833617

namespace A131577

/-- `record[(n%3)^((n+1)/3)]` -/
def P12909518482850833617.Spec : Prop :=
  ∀ n, P12909518482850833617.a n = (A131577 n : ℝ)

end A131577

/-!
# A131578: Numbers n such that p(n)^2-p(n)-1 and p(n)^2-p(n)+1 are twin primes with p(i)=i-th prime.

The programs for A131578, there is no canonical definition to state claims against.
-/

/-! ## A131578.P13231944133085580178

`lt[A200778(n+1), 2]+1`
-/

namespace A131578.P13231944133085580178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200778 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A131578.P13231944133085580178

/-! ## A131578.P1733017085050252849

`A000720(A120364(n+1))`
-/

namespace A131578.P1733017085050252849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A120364 (n + 1)).toNat

end

end A131578.P1733017085050252849

/-! ## A131578.P9448176361041750000

`A000720(p?[A131530(n+1)])`
-/

namespace A131578.P9448176361041750000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131578.P9448176361041750000

/-! ## A131578.P16807151222721157450

`A061395(p?[A120364(n+1)])`
-/

namespace A131578.P16807151222721157450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131578.P16807151222721157450

/-! ## A131578.P10038797996245076736

`A061395(p?[A131530(n+1)])`
-/

namespace A131578.P10038797996245076736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131578.P10038797996245076736

/-! ## A131578.P15901669055582196674

`A061395(or(1, A120364(n+1)))`
-/

namespace A131578.P15901669055582196674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A120364 (n + 1))).toNat

end

end A131578.P15901669055582196674

/-! ## A131578.P9064889264933684915

`∑{d}[A120364(n+1), A061395(#)]`
-/

namespace A131578.P9064889264933684915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A131578.P9064889264933684915

/-! ## A131578.P14125331602413452833

`A061395(∏{d}[A120364(n+1), #])`
-/

namespace A131578.P14125331602413452833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A131578.P14125331602413452833

/-! ## A131578.P17784666785726622750

`A000720(p?[A088485(n+1)+1])`
-/

namespace A131578.P17784666785726622750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A131578.P17784666785726622750

/-! ## A131578.P259036186937985603

`A061395(A120364(n+1)%A017511(n))`
-/

namespace A131578.P259036186937985603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A120364 (n + 1)) (A017511 n)).toNat

end

end A131578.P259036186937985603

/-!
# A131579: Period 10: repeat 0, 3, 6, 9, 2, 5, 8, 1, 4, 7.

The programs for A131579, the canonical program `A131579.P8528338438125592313` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131579 has offset 0).

The definition of A131579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A131579.P8528338438125592313

`(3*n)%10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131579

/-- `(3*n)%10` -/
def P8528338438125592313.Spec : Prop :=
  ∀ n, (P8528338438125592313.a n : ℤ) = A131579 n

theorem P8528338438125592313.correct : P8528338438125592313.Spec := by
  intro n
  simp only [A131579]

end A131579

/-!
# A131580: Least prime P such that P^(2*prime(n))-P^prime(n)-1 is prime with prime(n) the n-th prime.

The programs for A131580, there is no canonical definition to state claims against.
-/

/-! ## A131580.P16398989724436280348

`p?[4*a(n-1)+23]` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A131580.P16398989724436280348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3] fun n f1 =>
  4 * f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A131580.P16398989724436280348

/-!
# A131581: The next prime greater than the square root of 10^n.

The programs for A131581, there is no canonical definition to state claims against.
-/

/-! ## A131581.P17634798016281723822

`sqrt(A175733(n+1))`
-/

namespace A131581.P17634798016281723822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175733 (n + 1) : ℝ)

end

end A131581.P17634798016281723822

/-! ## A131581.P6580913531719871797

`root(A175733(n+1), A020639(2*(n+1)))`
-/

namespace A131581.P6580913531719871797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175733 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A131581.P6580913531719871797

/-! ## A131581.P12516521078861914263

`root(A175733(n+1), A081668(2*n+1))`
-/

namespace A131581.P12516521078861914263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175733 (n + 1) : ℝ) ^ (1 / (A081668 (2 * n + 1) : ℝ))

end

end A131581.P12516521078861914263

/-! ## A131581.P9461840397655991227

`root(A175733(n+1), A000034(4*n+3))`
-/

namespace A131581.P9461840397655991227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175733 (n + 1) : ℝ) ^ (1 / (A000034 (4 * n + 3) : ℝ))

end

end A131581.P9461840397655991227

/-! ## A131581.P18343669717745438975

`root(A175733(n+1), A001316(A001316(n)))`
-/

namespace A131581.P18343669717745438975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A175733 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A131581.P18343669717745438975

/-!
# A131583: Concatenation of first n numbers of the decimal expansion of imaginary part of first nontrivial zero of Riemann zeta function.

The programs for A131583, there is no canonical definition to state claims against.
-/

/-! ## A131583.P12693671553658193182

`Δ[A017293(a(n-1))+A000032(n)]` with `a(0)=0, a(1)=1`
-/

namespace A131583.P12693671553658193182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A017293 (f1 (n - 1)).toNat + A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131583.P12693671553658193182

/-!
# A131584: Concatenation of first n numbers of the decimal expansion of imaginary part of 2nd nontrivial zero of Riemann zeta function.

The programs for A131584, there is no canonical definition to state claims against.
-/

/-! ## A131584.P2191187205594561696

`or(10*a(n-1), A001222(ceil((3^n/2)²)))` with `a(0)=2`
-/

namespace A131584.P2191187205594561696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (10 * a (n - 1)) (A001222 ⌈((3 ^ n : ℚ) / 2) ^ 2⌉.toNat)

end

end A131584.P2191187205594561696

/-!
# A131585: Concatenation of first n numbers of the decimal expansion of imaginary part of 3rd nontrivial zero of Riemann zeta function.

The programs for A131585, there is no canonical definition to state claims against.
-/

/-! ## A131585.P1147356709088219453

`A215254(n)+A032766(A011557(n))`
-/

namespace A131585.P1147356709088219453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215254 n + A032766 (A011557 n).toNat

end

end A131585.P1147356709088219453

/-!
# A131587: Sum of the squares of the first 10^n primes.

The programs for A131587, there is no canonical definition to state claims against.
-/

/-! ## A131587.P5638176536750349103

`A024450(10^n)`
-/

namespace A131587.P5638176536750349103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (10 ^ n)

end

end A131587.P5638176536750349103

/-!
# A131588: Interlaces A007583 with A083420.

The programs for A131588, the canonical program `A131588.P5029553064527484055` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131588 has offset 0).

The definition of A131588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131588.P5029553064527484055

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131588

/-- `5*a(n-2)-4*a(n-4)` -/
def P5029553064527484055.Spec : Prop :=
  ∀ n, P5029553064527484055.a n = A131588 n

theorem P5029553064527484055.correct : P5029553064527484055.Spec := by
  intro n
  simp only [A131588]

end A131588

/-! ## A131588.P388831837068396854

`ogf((1+x-2x^2+2x^3)/(1-5x^2+4x^4))`
-/

namespace A131588.P388831837068396854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, 2] [1, 0, -5, 0, 4] n

end

end A131588.P388831837068396854

namespace A131588

/-- `ogf((1+x-2x^2+2x^3)/(1-5x^2+4x^4))` -/
def P388831837068396854.Spec : Prop :=
  ∀ n, P388831837068396854.a n = A131588 n

end A131588

/-! ## A131588.P6970030992905320548

`4*(a(n-2)+n%2)-1` with `a(0)=1, a(1)=1`
-/

namespace A131588.P6970030992905320548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * (a (n - 2) + ((n % 2 : ℕ) : ℤ)) - 1

end

end A131588.P6970030992905320548

namespace A131588

/-- `4*(a(n-2)+n%2)-1` -/
def P6970030992905320548.Spec : Prop :=
  ∀ n, P6970030992905320548.a n = A131588 n

end A131588

/-! ## A131588.P14044130331890968351

`4*(a(n-2)+and(1, n))-1` with `a(0)=1, a(1)=1`
-/

namespace A131588.P14044130331890968351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * (a (n - 2) + (Nat.land 1 n : ℤ)) - 1

end

end A131588.P14044130331890968351

namespace A131588

/-- `4*(a(n-2)+and(1, n))-1` -/
def P14044130331890968351.Spec : Prop :=
  ∀ n, P14044130331890968351.a n = A131588 n

end A131588

/-! ## A131588.P5523361365348860755

`xor(4*a(n-2), and(7, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A131588.P5523361365348860755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Nat.xor (4 * a (n - 2)) (Nat.land 7 (a (n - 1)))

end

end A131588.P5523361365348860755

namespace A131588

/-- `xor(4*a(n-2), and(7, a(n-1)))` -/
def P5523361365348860755.Spec : Prop :=
  ∀ n, (P5523361365348860755.a n : ℤ) = A131588 n

end A131588

/-! ## A131588.P15113280546739512655

`or(xor(a(n-1)+a(n-1)-1, a(n-1)), a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A131588.P15113280546739512655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.lor (Int.xor (a (n - 1) + (a (n - 1) - 1)) (a (n - 1))) (a (n - 2))

end

end A131588.P15113280546739512655

namespace A131588

/-- `or(xor(a(n-1)+a(n-1)-1, a(n-1)), a(n-2))` -/
def P15113280546739512655.Spec : Prop :=
  ∀ n, P15113280546739512655.a n = A131588 n

end A131588

/-! ## A131588.P15760690872000136380

`or(1, A084184(n))`
-/

namespace A131588.P15760690872000136380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084184 n)

end

end A131588.P15760690872000136380

namespace A131588

/-- `or(1, A084184(n))` -/
def P15760690872000136380.Spec : Prop :=
  ∀ n, P15760690872000136380.a n = A131588 n

end A131588

/-! ## A131588.P15814590589923525426

`or(1, ∑[A084183(n)])`
-/

namespace A131588.P15814590589923525426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A131588.P15814590589923525426

namespace A131588

/-- `or(1, ∑[A084183(n)])` -/
def P15814590589923525426.Spec : Prop :=
  ∀ n, P15814590589923525426.a n = A131588 n

end A131588

/-! ## A131588.P12183201732781295581

`A084184(n)+A059841(n)`
-/

namespace A131588.P12183201732781295581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + A059841 n

end

end A131588.P12183201732781295581

namespace A131588

/-- `A084184(n)+A059841(n)` -/
def P12183201732781295581.Spec : Prop :=
  ∀ n, P12183201732781295581.a n = A131588 n

end A131588

/-! ## A131588.P15047818491556003889

`A282124(n)%A052531(n)`
-/

namespace A131588.P15047818491556003889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282124 n) (A052531 n)

end

end A131588.P15047818491556003889

namespace A131588

/-- `A282124(n)%A052531(n)` -/
def P15047818491556003889.Spec : Prop :=
  ∀ n, P15047818491556003889.a n = A131588 n

end A131588

/-! ## A131588.P6276761018099357148

`and(A255047(n), A282124(n))`
-/

namespace A131588.P6276761018099357148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255047 n) (A282124 n)

end

end A131588.P6276761018099357148

namespace A131588

/-- `and(A255047(n), A282124(n))` -/
def P6276761018099357148.Spec : Prop :=
  ∀ n, P6276761018099357148.a n = A131588 n

end A131588

/-! ## A131588.P7014224983779411541

`A239024(n+1)-A155944(n)`
-/

namespace A131588.P7014224983779411541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239024 (n + 1) - A155944 n

end

end A131588.P7014224983779411541

namespace A131588

/-- `A239024(n+1)-A155944(n)` -/
def P7014224983779411541.Spec : Prop :=
  ∀ n, P7014224983779411541.a n = A131588 n

end A131588

/-! ## A131588.P13303292064180086822

`A084184(n)+2-A000034(n)`
-/

namespace A131588.P13303292064180086822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + (2 - A000034 n)

end

end A131588.P13303292064180086822

namespace A131588

/-- `A084184(n)+2-A000034(n)` -/
def P13303292064180086822.Spec : Prop :=
  ∀ n, P13303292064180086822.a n = A131588 n

end A131588

/-! ## A131588.P17435444737150404890

`or(A000975(n), A001045(or(1, n)))`
-/

namespace A131588.P17435444737150404890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 n) (A001045 (Nat.lor 1 n))

end

end A131588.P17435444737150404890

namespace A131588

/-- `or(A000975(n), A001045(or(1, n)))` -/
def P17435444737150404890.Spec : Prop :=
  ∀ n, P17435444737150404890.a n = A131588 n

end A131588

/-! ## A131588.P16351589221855614269

`A084184(n)+A109613(n)-n`
-/

namespace A131588.P16351589221855614269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + (A109613 n - (n : ℤ))

end

end A131588.P16351589221855614269

namespace A131588

/-- `A084184(n)+A109613(n)-n` -/
def P16351589221855614269.Spec : Prop :=
  ∀ n, P16351589221855614269.a n = A131588 n

end A131588

/-! ## A131588.P17588814037451400879

`or(Δ[A136324(n)], A001045(n+1))`
-/

namespace A131588.P17588814037451400879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A001045 (n + 1))

end

end A131588.P17588814037451400879

namespace A131588

/-- `or(Δ[A136324(n)], A001045(n+1))` -/
def P17588814037451400879.Spec : Prop :=
  ∀ n, P17588814037451400879.a n = A131588 n

end A131588

/-! ## A131588.P7541551901459549335

`A000975(n)+A000975(A124625(n))`
-/

namespace A131588.P7541551901459549335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + A000975 (A124625 n).toNat

end

end A131588.P7541551901459549335

namespace A131588

/-- `A000975(n)+A000975(A124625(n))` -/
def P7541551901459549335.Spec : Prop :=
  ∀ n, P7541551901459549335.a n = A131588 n

end A131588

/-! ## A131588.P13978215572990679445

`A166752(n)*A284353(A124625(n))`
-/

namespace A131588.P13978215572990679445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 n * A284353 (A124625 n).toNat

end

end A131588.P13978215572990679445

namespace A131588

/-- `A166752(n)*A284353(A124625(n))` -/
def P13978215572990679445.Spec : Prop :=
  ∀ n, P13978215572990679445.a n = A131588 n

end A131588

/-! ## A131588.P7445650789527849069

`A078008(n)+A001045(A000035(n)+n)`
-/

namespace A131588.P7445650789527849069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + A001045 (A000035 n + (n : ℤ)).toNat

end

end A131588.P7445650789527849069

namespace A131588

/-- `A078008(n)+A001045(A000035(n)+n)` -/
def P7445650789527849069.Spec : Prop :=
  ∀ n, P7445650789527849069.a n = A131588 n

end A131588

/-! ## A131588.P13974793986663464265

`A001045(n)+A000034(n)*A078008(n)`
-/

namespace A131588.P13974793986663464265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A000034 n * A078008 n

end

end A131588.P13974793986663464265

namespace A131588

/-- `A001045(n)+A000034(n)*A078008(n)` -/
def P13974793986663464265.Spec : Prop :=
  ∀ n, P13974793986663464265.a n = A131588 n

end A131588

/-!
# A131589: Expansion of -(3+9*x+2*x^2)/((x+1)*(x^2+3*x+1)).

The programs for A131589, the canonical program `A131589.P8658169573287107773` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131589 has offset 0).

The definition of A131589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-3-9x-2x^2)/(1+4x+4x^2+x^3))` (program `A131589.P8658169573287107773`, by `A131589.P8658169573287107773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A131589.P8658169573287107773

`ogf((-3-9x-2x^2)/(1+4x+4x^2+x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131589

/-- `ogf((-3-9x-2x^2)/(1+4x+4x^2+x^3))` -/
def P8658169573287107773.Spec : Prop :=
  ∀ n, P8658169573287107773.a n = A131589 n

theorem P8658169573287107773.correct : P8658169573287107773.Spec := by
  intro n
  simp only [A131589]

end A131589

/-! ## A131589.P12249426416656891938

`(A001519(n)-4)*A033999(n)`
-/

namespace A131589.P12249426416656891938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 n - 4) * A033999 n

end

end A131589.P12249426416656891938

namespace A131589

/-- `(A001519(n)-4)*A033999(n)` -/
def P12249426416656891938.Spec : Prop :=
  ∀ n, P12249426416656891938.a n = A131589 n

end A131589

/-! ## A131589.P5114815337200270261

`(A032908(n)-5)*A033999(n)`
-/

namespace A131589.P5114815337200270261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032908 n - 5) * A033999 n

end

end A131589.P5114815337200270261

namespace A131589

/-- `(A032908(n)-5)*A033999(n)` -/
def P5114815337200270261.Spec : Prop :=
  ∀ n, P5114815337200270261.a n = A131589 n

end A131589

/-! ## A131589.P17324330200230871485

`(4-A001519(n))/A033999(n+1)`
-/

namespace A131589.P17324330200230871485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A001519 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A131589.P17324330200230871485

namespace A131589

/-- `(4-A001519(n))/A033999(n+1)` -/
def P17324330200230871485.Spec : Prop :=
  ∀ n, P17324330200230871485.a n = (A131589 n : ℚ)

end A131589

/-! ## A131589.P13930835752887646805

`(5-A032908(n))/A033999(n+1)`
-/

namespace A131589.P13930835752887646805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A032908 n : ℚ) / (A033999 (n + 1) : ℚ)

end

end A131589.P13930835752887646805

namespace A131589

/-- `(5-A032908(n))/A033999(n+1)` -/
def P13930835752887646805.Spec : Prop :=
  ∀ n, P13930835752887646805.a n = (A131589 n : ℚ)

end A131589

/-! ## A131589.P3197549902537722907

`(2*A000035(n)-1)*(5-A032908(n))`
-/

namespace A131589.P3197549902537722907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000035 n - 1) * (5 - A032908 n)

end

end A131589.P3197549902537722907

namespace A131589

/-- `(2*A000035(n)-1)*(5-A032908(n))` -/
def P3197549902537722907.Spec : Prop :=
  ∀ n, P3197549902537722907.a n = A131589 n

end A131589

/-! ## A131589.P12531230791998569375

`(2-A078024(2*n+1))*A033999(n+1)`
-/

namespace A131589.P12531230791998569375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A078024 (2 * n + 1)) * A033999 (n + 1)

end

end A131589.P12531230791998569375

namespace A131589

/-- `(2-A078024(2*n+1))*A033999(n+1)` -/
def P12531230791998569375.Spec : Prop :=
  ∀ n, P12531230791998569375.a n = A131589 n

end A131589

/-! ## A131589.P11015217575607420330

`(A112469(2*n+1)+2)*A033999(n+1)`
-/

namespace A131589.P11015217575607420330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112469 (2 * n + 1) + 2) * A033999 (n + 1)

end

end A131589.P11015217575607420330

namespace A131589

/-- `(A112469(2*n+1)+2)*A033999(n+1)` -/
def P11015217575607420330.Spec : Prop :=
  ∀ n, P11015217575607420330.a n = A131589 n

end A131589

/-!
# A131590: Sum of the squares of the first 2^n primes.

The programs for A131590, the canonical program `A131590.P3790434165472296789` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131590 has offset 0).

The definition of A131590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131590.P3790434165472296789

`A024450(2^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A131590

/-- `A024450(2^n)` -/
def P3790434165472296789.Spec : Prop :=
  ∀ n, P3790434165472296789.a n = A131590 n

theorem P3790434165472296789.correct : P3790434165472296789.Spec := by
  intro n
  simp only [A131590]

end A131590

/-! ## A131590.P11553155891292613148

`A024525(2^n)-1`
-/

namespace A131590.P11553155891292613148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (2 ^ n) - 1

end

end A131590.P11553155891292613148

namespace A131590

/-- `A024525(2^n)-1` -/
def P11553155891292613148.Spec : Prop :=
  ∀ n, P11553155891292613148.a n = A131590 n

end A131590

/-! ## A131590.P14262174780776047339

`record[A024450(A001316(n))]`
-/

namespace A131590.P14262174780776047339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131590.P14262174780776047339

namespace A131590

/-- `record[A024450(A001316(n))]` -/
def P14262174780776047339.Spec : Prop :=
  ∀ n, P14262174780776047339.a n = A131590 n

end A131590

/-! ## A131590.P12909751647796182157

`record[A024450(A029930(n))]`
-/

namespace A131590.P12909751647796182157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131590.P12909751647796182157

namespace A131590

/-- `record[A024450(A029930(n))]` -/
def P12909751647796182157.Spec : Prop :=
  ∀ n, P12909751647796182157.a n = A131590 n

end A131590

/-! ## A131590.P17564743790310294655

`record[A024450(A055248(n))]`
-/

namespace A131590.P17564743790310294655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131590.P17564743790310294655

namespace A131590

/-- `record[A024450(A055248(n))]` -/
def P17564743790310294655.Spec : Prop :=
  ∀ n, P17564743790310294655.a n = A131590 n

end A131590

/-!
# A131591: Sum of the squares of the first 3^n primes.

The programs for A131591, the canonical program `A131591.P7378338396436422358` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131591 has offset 0).

The definition of A131591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131591.P7378338396436422358

`A024450(3^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A131591

/-- `A024450(3^n)` -/
def P7378338396436422358.Spec : Prop :=
  ∀ n, P7378338396436422358.a n = A131591 n

theorem P7378338396436422358.correct : P7378338396436422358.Spec := by
  intro n
  simp only [A131591]

end A131591

/-! ## A131591.P920993151429887646

`A024525(3^n)-1`
-/

namespace A131591.P920993151429887646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (3 ^ n) - 1

end

end A131591.P920993151429887646

namespace A131591

/-- `A024525(3^n)-1` -/
def P920993151429887646.Spec : Prop :=
  ∀ n, P920993151429887646.a n = A131591 n

end A131591

/-! ## A131591.P17371797219824103967

`record[A024450(A048883(n))]`
-/

namespace A131591.P17371797219824103967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131591.P17371797219824103967

namespace A131591

/-- `record[A024450(A048883(n))]` -/
def P17371797219824103967.Spec : Prop :=
  ∀ n, P17371797219824103967.a n = A131591 n

end A131591

/-! ## A131591.P15535287943360422831

`record[A024450(A106516(n))]`
-/

namespace A131591.P15535287943360422831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131591.P15535287943360422831

namespace A131591

/-- `record[A024450(A106516(n))]` -/
def P15535287943360422831.Spec : Prop :=
  ∀ n, P15535287943360422831.a n = A131591 n

end A131591

/-! ## A131591.P13485226423454017082

`record[A024450(A112626(n))]`
-/

namespace A131591.P13485226423454017082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A112626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A131591.P13485226423454017082

namespace A131591

/-- `record[A024450(A112626(n))]` -/
def P13485226423454017082.Spec : Prop :=
  ∀ n, P13485226423454017082.a n = A131591 n

end A131591

/-!
# A131592: Sum of the squares of the first n^n primes.

The programs for A131592, the canonical program `A131592.P8863503537066484247` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131592 has offset 0).

The definition of A131592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A131592.P8863503537066484247

`A024450(A000312(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A131592

/-- `A024450(A000312(n))` -/
def P8863503537066484247.Spec : Prop :=
  ∀ n, P8863503537066484247.a n = A131592 n

theorem P8863503537066484247.correct : P8863503537066484247.Spec := by
  intro n
  simp only [A131592]

end A131592

/-! ## A131592.P16103898044313702137

`A024450(n^n)`
-/

namespace A131592.P16103898044313702137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n ^ n)

end

end A131592.P16103898044313702137

namespace A131592

/-- `A024450(n^n)` -/
def P16103898044313702137.Spec : Prop :=
  ∀ n, P16103898044313702137.a n = A131592 n

end A131592

/-!
# A131593: Number of norep emirps less than 10^n.

The programs for A131593, there is no canonical definition to state claims against.
-/

/-! ## A131593.P5709802598560101629

`∑[A003684(n+1)]`
-/

namespace A131593.P5709802598560101629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131593.P5709802598560101629

/-! ## A131593.P5074992283398809238

`∑[record[A003684(ceil(C(or(1, n), n)/2))]]`
-/

namespace A131593.P5074992283398809238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003684 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131593.P5074992283398809238

/-! ## A131593.P6258145451270688947

`∑[record[A003684(A000174(n))]]`
-/

namespace A131593.P6258145451270688947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003684 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131593.P6258145451270688947

/-! ## A131593.P7753172342081973488

`∑[record[A003684(A028920(n))]]`
-/

namespace A131593.P7753172342081973488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003684 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131593.P7753172342081973488

/-! ## A131593.P14239396434068598953

`∑[record[A003684(A033666(n))]]`
-/

namespace A131593.P14239396434068598953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003684 (A033666 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131593.P14239396434068598953

/-!
# A131597: Bigomega of Pisano periods mod n, i.e., number of prime divisors (counted with multiplicity) of the period of Fibonacci residues mod n.

The programs for A131597, there is no canonical definition to state claims against.
-/

/-! ## A131597.P15855804107058494173

`A001222(A001175(n+1))`
-/

namespace A131597.P15855804107058494173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001175 (n + 1)).toNat

end

end A131597.P15855804107058494173

/-! ## A131597.P10920286372875989378

`A001222(A096982(n+1)-A158388(n))`
-/

namespace A131597.P10920286372875989378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096982 (n + 1) - A158388 n).toNat

end

end A131597.P10920286372875989378

/-! ## A131597.P3833120382137640592

`A001222(A001176(n+1)*A001177(n+1))`
-/

namespace A131597.P3833120382137640592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001176 (n + 1) * A001177 (n + 1)).toNat

end

end A131597.P3833120382137640592

/-! ## A131597.P6576114565285640096

`A001222(lcm(A001177(n+1), A106291(n+1)))`
-/

namespace A131597.P6576114565285640096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A001177 (n + 1)) (A106291 (n + 1)))

end

end A131597.P6576114565285640096

/-! ## A131597.P9326032016496340989

`∑{d}[A001175(n+1), A001221(A014963(#))]`
-/

namespace A131597.P9326032016496340989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A131597.P9326032016496340989

/-!
# A131598: Period 3: repeat [2, 5, 8].

The programs for A131598, the canonical program `A131598.P5040168916542146889` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A131598 has offset 0).

The definition of A131598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A131598.P5040168916542146889

`a(n-3)` with `a(0)=2, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A131598

/-- `a(n-3)` -/
def P5040168916542146889.Spec : Prop :=
  ∀ n, (P5040168916542146889.a n : ℤ) = A131598 n

theorem P5040168916542146889.correct : P5040168916542146889.Spec := by
  intro n
  simp only [A131598]

end A131598

/-!
# A131599: Square roots of the numbers in A130448.

The programs for A131599, there is no canonical definition to state claims against.
-/

/-! ## A131599.P6260567298625266775

`sqrt(A130448(n+1))`
-/

namespace A131599.P6260567298625266775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130448 (n + 1) : ℝ)

end

end A131599.P6260567298625266775

/-! ## A131599.P5140618545445220089

`root(A130448(n+1), p?[A006464(n)])`
-/

namespace A131599.P5140618545445220089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130448 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A131599.P5140618545445220089

/-! ## A131599.P15345907093157995216

`root(A130448(n+1), A020639(2*(n+1)))`
-/

namespace A131599.P15345907093157995216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130448 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A131599.P15345907093157995216

/-! ## A131599.P81322048805408900

`root(A130448(n+1), A145465(val(n+1, 12)))`
-/

namespace A131599.P81322048805408900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130448 (n + 1) : ℝ) ^ (1 / (A145465 (SequenceMachineLib.valuation (n + 1) 12) : ℝ))

end

end A131599.P81322048805408900

/-! ## A131599.P16078785339304251472

`root(A130448(n+1), A001316(A001316(n)))`
-/

namespace A131599.P16078785339304251472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130448 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A131599.P16078785339304251472

