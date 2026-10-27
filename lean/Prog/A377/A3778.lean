import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A377802: Triangle read by rows: T(n, k) = (2 * (n+1)^2 + 7 - (-1)^n) / 8 - k.

The programs for A377802, the canonical program `A377802.P5581439124686939120` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377802 has offset 1).

The definition of A377802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377802.P5581439124686939120

`(2*(row(n)+2)²+7-(-1)^(row(n)+1))/8-(col(n)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A377802

/-- `(2*(row(n)+2)²+7-(-1)^(row(n)+1))/8-(col(n)+1)` -/
def P5581439124686939120.Spec : Prop :=
  ∀ n, P5581439124686939120.a n = (A377802 (n + 1) : ℚ)

end A377802

/-! ## A377802.P18366441857844988138

`ceil(3*(∑[char[∑[n]]]/2)²)-n`
-/

namespace A377802.P18366441857844988138
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2⌉ - (n : ℤ)

end

end A377802.P18366441857844988138

namespace A377802

/-- `ceil(3*(∑[char[∑[n]]]/2)²)-n` -/
def P18366441857844988138.Spec : Prop :=
  ∀ n, P18366441857844988138.a n = A377802 (n + 1)

end A377802

/-! ## A377802.P6352226413421692588

`round(A109857(n+1)/2)`
-/

namespace A377802.P6352226413421692588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109857 (n + 1) : ℚ) / 2)

end

end A377802.P6352226413421692588

namespace A377802

/-- `round(A109857(n+1)/2)` -/
def P6352226413421692588.Spec : Prop :=
  ∀ n, P6352226413421692588.a n = A377802 (n + 1)

end A377802

/-! ## A377802.P3292574471831616471

`ceil((A074147(n+1)+2*A114327(n))/2)`
-/

namespace A377802.P3292574471831616471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074147 (n + 1) + 2 * A114327 n : ℚ) / 2⌉

end

end A377802.P3292574471831616471

namespace A377802

/-- `ceil((A074147(n+1)+2*A114327(n))/2)` -/
def P3292574471831616471.Spec : Prop :=
  ∀ n, P3292574471831616471.a n = A377802 (n + 1)

end A377802

/-! ## A377802.P13248554905493194677

`A065033(A109857(n+1))`
-/

namespace A377802.P13248554905493194677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A109857 (n + 1)).toNat

end

end A377802.P13248554905493194677

namespace A377802

/-- `A065033(A109857(n+1))` -/
def P13248554905493194677.Spec : Prop :=
  ∀ n, P13248554905493194677.a n = A377802 (n + 1)

end A377802

/-! ## A377802.P4788280790193760056

`A004526(A109857(n+1)+1)`
-/

namespace A377802.P4788280790193760056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A109857 (n + 1) + 1).toNat

end

end A377802.P4788280790193760056

namespace A377802

/-- `A004526(A109857(n+1)+1)` -/
def P4788280790193760056.Spec : Prop :=
  ∀ n, P4788280790193760056.a n = A377802 (n + 1)

end A377802

/-!
# A377803: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - log(1-3*x) / 3) ).

The programs for A377803, there is no canonical definition to state claims against.
-/

/-! ## A377803.P10483764484316409233

`A298863(n!²)`
-/

namespace A377803.P10483764484316409233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298863 (Nat.factorial n ^ 2)

end

end A377803.P10483764484316409233

/-!
# A377809: k*(k+3)/2 appears k times.

The programs for A377809, the canonical program `A377809.P6328072400551004124` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377809 has offset 1).

The definition of A377809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377809.P14782192589174527344

`A000096(row(n)+1)`
-/

namespace A377809.P14782192589174527344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.triRow n + 1)

end

end A377809.P14782192589174527344

namespace A377809

/-- `A000096(row(n)+1)` -/
def P14782192589174527344.Spec : Prop :=
  ∀ n, P14782192589174527344.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P6328072400551004124

`A002024(n+1)*(A002024(n+1)+3)/2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377809

/-- `A002024(n+1)*(A002024(n+1)+3)/2` -/
def P6328072400551004124.Spec : Prop :=
  ∀ n, P6328072400551004124.a n = (A377809 (n + 1) : ℚ)

end A377809

/-! ## A377809.P10775202969377543226

`C(∑[char[∑[n]]]+2, 2)-1`
-/

namespace A377809.P10775202969377543226
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℤ) - 1

end

end A377809.P10775202969377543226

namespace A377809

/-- `C(∑[char[∑[n]]]+2, 2)-1` -/
def P10775202969377543226.Spec : Prop :=
  ∀ n, P10775202969377543226.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P1432688440250286429

`(row(n)+1)*(row(n)+4)/2`
-/

namespace A377809.P1432688440250286429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triRow n + 4) : ℚ) / 2

end

end A377809.P1432688440250286429

namespace A377809

/-- `(row(n)+1)*(row(n)+4)/2` -/
def P1432688440250286429.Spec : Prop :=
  ∀ n, P1432688440250286429.a n = (A377809 (n + 1) : ℚ)

end A377809

/-! ## A377809.P6847566825140979591

`lt[n-round(sqrt(n))², 0]-(n+1)`
-/

namespace A377809.P6847566825140979591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A377809.P6847566825140979591

namespace A377809

/-- `lt[n-round(sqrt(n))², 0]-(n+1)` -/
def P6847566825140979591.Spec : Prop :=
  ∀ n, P6847566825140979591.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P15432352613832916632

`lt[n-round(sqrt(n))², 0]-1-n`
-/

namespace A377809.P15432352613832916632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1 - (n : ℤ)

end

end A377809.P15432352613832916632

namespace A377809

/-- `lt[n-round(sqrt(n))², 0]-1-n` -/
def P15432352613832916632.Spec : Prop :=
  ∀ n, P15432352613832916632.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P5865142875814573305

`eq[1, floor(2*sqrt(n+1))%2]-n`
-/

namespace A377809.P5865142875814573305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n + 1 : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A377809.P5865142875814573305

namespace A377809

/-- `eq[1, floor(2*sqrt(n+1))%2]-n` -/
def P5865142875814573305.Spec : Prop :=
  ∀ n, P5865142875814573305.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P17365364426937353732

`A000096(∑[char[∑[n]]])`
-/

namespace A377809.P17365364426937353732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A377809.P17365364426937353732

namespace A377809

/-- `A000096(∑[char[∑[n]]])` -/
def P17365364426937353732.Spec : Prop :=
  ∀ n, P17365364426937353732.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P12327751409294407083

`A217575(n+1)-n`
-/

namespace A377809.P12327751409294407083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - (n : ℤ)

end

end A377809.P12327751409294407083

namespace A377809

/-- `A217575(n+1)-n` -/
def P12327751409294407083.Spec : Prop :=
  ∀ n, P12327751409294407083.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P17163591067500510168

`A294317(n)+2+n`
-/

namespace A377809.P17163591067500510168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + 2 + (n : ℤ)

end

end A377809.P17163591067500510168

namespace A377809

/-- `A294317(n)+2+n` -/
def P17163591067500510168.Spec : Prop :=
  ∀ n, P17163591067500510168.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P3124482257214125989

`A025581(n)+comp[∑[n]]`
-/

namespace A377809.P3124482257214125989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A377809.P3124482257214125989

namespace A377809

/-- `A025581(n)+comp[∑[n]]` -/
def P3124482257214125989.Spec : Prop :=
  ∀ n, P3124482257214125989.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P8801715965378454723

`A128076(n+1)+1+n`
-/

namespace A377809.P8801715965378454723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + 1 + (n : ℤ)

end

end A377809.P8801715965378454723

namespace A377809

/-- `A128076(n+1)+1+n` -/
def P8801715965378454723.Spec : Prop :=
  ∀ n, P8801715965378454723.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P16060815179715805516

`A063657(n+1)-(n+1)`
-/

namespace A377809.P16060815179715805516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - (n + 1 : ℤ)

end

end A377809.P16060815179715805516

namespace A377809

/-- `A063657(n+1)-(n+1)` -/
def P16060815179715805516.Spec : Prop :=
  ∀ n, P16060815179715805516.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P18344860809678041862

`A000217(row(n)+1)+row(n)+1`
-/

namespace A377809.P18344860809678041862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triRow n + 1 : ℤ)

end

end A377809.P18344860809678041862

namespace A377809

/-- `A000217(row(n)+1)+row(n)+1` -/
def P18344860809678041862.Spec : Prop :=
  ∀ n, P18344860809678041862.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P9906291455570871533

`A101881(A131507(n))`
-/

namespace A377809.P9906291455570871533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (A131507 n).toNat

end

end A377809.P9906291455570871533

namespace A377809

/-- `A101881(A131507(n))` -/
def P9906291455570871533.Spec : Prop :=
  ∀ n, P9906291455570871533.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P17500186418389776334

`A075301(A111650(n+1))`
-/

namespace A377809.P17500186418389776334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075301 (A111650 (n + 1)).toNat

end

end A377809.P17500186418389776334

namespace A377809

/-- `A075301(A111650(n+1))` -/
def P17500186418389776334.Spec : Prop :=
  ∀ n, P17500186418389776334.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P7734000384990574976

`A286164(A005145(n+1))`
-/

namespace A377809.P7734000384990574976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286164 (A005145 (n + 1)).toNat

end

end A377809.P7734000384990574976

namespace A377809

/-- `A286164(A005145(n+1))` -/
def P7734000384990574976.Spec : Prop :=
  ∀ n, P7734000384990574976.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P6096488624923899934

`A175631(A350361(n+1))`
-/

namespace A377809.P6096488624923899934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175631 (A350361 (n + 1)).toNat

end

end A377809.P6096488624923899934

namespace A377809

/-- `A175631(A350361(n+1))` -/
def P6096488624923899934.Spec : Prop :=
  ∀ n, P6096488624923899934.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P2227266383572059354

`A000217(A003057(n+2))-1`
-/

namespace A377809.P2227266383572059354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003057 (n + 2)).toNat - 1

end

end A377809.P2227266383572059354

namespace A377809

/-- `A000217(A003057(n+2))-1` -/
def P2227266383572059354.Spec : Prop :=
  ∀ n, P2227266383572059354.a n = A377809 (n + 1)

end A377809

/-! ## A377809.P11834197646831802589

`A082233(n)+A056011(n+1)`
-/

namespace A377809.P11834197646831802589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 n + A056011 (n + 1)

end

end A377809.P11834197646831802589

namespace A377809

/-- `A082233(n)+A056011(n+1)` -/
def P11834197646831802589.Spec : Prop :=
  ∀ n, P11834197646831802589.a n = A377809 (n + 1)

end A377809

/-!
# A377810: E.g.f. satisfies A(x) = exp(x * A(x)) / (1 - x)^2.

The programs for A377810, there is no canonical definition to state claims against.
-/

/-! ## A377810.P15109211629255213287

`A377595(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A377810.P15109211629255213287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377595 n + (n : ℤ) * a (n - 1)

end

end A377810.P15109211629255213287

/-!
# A377812: Number of quadruples of positive integers (x,y,a,b) such that a < b, gcd(a,b) = gcd(x,y) = 1 and a*x + b*y = n.

The programs for A377812, there is no canonical definition to state claims against.
-/

/-! ## A377812.P17690453426381495090

`∑{d}[n+1, A002133(#)*A007427((n+1)/#)]`
-/

namespace A377812.P17690453426381495090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002133 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377812.P17690453426381495090

/-! ## A377812.P3889504450527662055

`∑{d}[n+1, A008683(#)*A274108((n+1)/#)]`
-/

namespace A377812.P3889504450527662055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A274108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377812.P3889504450527662055

/-! ## A377812.P15915737126178890400

`∑{d}[n+1, A069158(#)*A274108((n+1)/#)]`
-/

namespace A377812.P15915737126178890400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069158 d * A274108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377812.P15915737126178890400

/-! ## A377812.P11411215939728418222

`∑{d}[n+1, A133639(#)*A274108((n+1)/#)]`
-/

namespace A377812.P11411215939728418222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133639 d * A274108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377812.P11411215939728418222

/-! ## A377812.P12473781306907046924

`∑{d}[n+1, A253206(#)*A274108((n+1)/#)]`
-/

namespace A377812.P12473781306907046924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253206 d * A274108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377812.P12473781306907046924

/-! ## A377812.P3490082789927596390

`∑{d}[n+1, A274108(#)*A302050((n+1)/#)]`
-/

namespace A377812.P3490082789927596390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A274108 d * A302050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377812.P3490082789927596390

/-!
# A377816: 

The programs for A377816, there is no canonical definition to state claims against.
-/

/-! ## A377816.P4596076651778180258

`eq[2, A000005(A336643(n+1))%4]+1`
-/

namespace A377816.P4596076651778180258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A336643 (n + 1)).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377816.P4596076651778180258

/-! ## A377816.P11329966492496224247

`eq[1, A162641(n+1)]+1`
-/

namespace A377816.P11329966492496224247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377816.P11329966492496224247

/-! ## A377816.P14458281996341773648

`eq[2, A056624(n+1)]+1`
-/

namespace A377816.P14458281996341773648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377816.P14458281996341773648

/-! ## A377816.P17068118501276212166

`eq[1, A162641(A028310(n))]`
-/

namespace A377816.P17068118501276212166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377816.P17068118501276212166

/-! ## A377816.P4583970012010623984

`eq[2, A034444(A071974(n+1))]+1`
-/

namespace A377816.P4583970012010623984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A071974 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377816.P4583970012010623984

/-!
# A377817: Numbers that have more than one even exponent in their prime factorization.

The programs for A377817, the canonical program `A377817.P402920297205935675` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377817 has offset 1).

The definition of A377817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377817.P402920297205935675

`lt[1, A162641(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A377817

/-- `lt[1, A162641(n+1)]+1` -/
def P402920297205935675.Spec : Prop :=
  ∀ n, (P402920297205935675.a n : ℤ) = A377817 (n + 1)

theorem P402920297205935675.correct : P402920297205935675.Spec := by
  intro n
  simp only [A377817, Nat.add_sub_cancel]

end A377817

/-! ## A377817.P14491525722154675241

`lt[2, A056624(n+1)]+1`
-/

namespace A377817.P14491525722154675241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377817.P14491525722154675241

namespace A377817

/-- `lt[2, A056624(n+1)]+1` -/
def P14491525722154675241.Spec : Prop :=
  ∀ n, (P14491525722154675241.a n : ℤ) = A377817 (n + 1)

end A377817

/-! ## A377817.P11792941734415218251

`lt[3, 3*a(A162641(n))]` with `a(0)=1, a(1)=1`
-/

namespace A377817.P11792941734415218251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  3 * f2 (A162641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A377817.P11792941734415218251

namespace A377817

/-- `lt[3, 3*a(A162641(n))]` -/
def P11792941734415218251.Spec : Prop :=
  ∀ n, (P11792941734415218251.a n : ℤ) = A377817 (n + 1)

end A377817

/-! ## A377817.P13224094395598509231

`lt[2, A056624(A028310(n))]`
-/

namespace A377817.P13224094395598509231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377817.P13224094395598509231

namespace A377817

/-- `lt[2, A056624(A028310(n))]` -/
def P13224094395598509231.Spec : Prop :=
  ∀ n, (P13224094395598509231.a n : ℤ) = A377817 (n + 1)

end A377817

/-! ## A377817.P13061238174107855260

`A065475(lt[2, A056624(n+1)])`
-/

namespace A377817.P13061238174107855260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A377817.P13061238174107855260

namespace A377817

/-- `A065475(lt[2, A056624(n+1)])` -/
def P13061238174107855260.Spec : Prop :=
  ∀ n, P13061238174107855260.a n = A377817 (n + 1)

end A377817

/-! ## A377817.P8027781557943311375

`A181569(lt[2, A056624(n+1)])`
-/

namespace A377817.P8027781557943311375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A377817.P8027781557943311375

namespace A377817

/-- `A181569(lt[2, A056624(n+1)])` -/
def P8027781557943311375.Spec : Prop :=
  ∀ n, P8027781557943311375.a n = A377817 (n + 1)

end A377817

/-!
# A377818: Powerful numbers that have a single even exponent in their prime factorization.

The programs for A377818, there is no canonical definition to state claims against.
-/

/-! ## A377818.P3911437001143519581

`∩[A162645(n+1), A377819(n+1)]`
-/

namespace A377818.P3911437001143519581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377818.P3911437001143519581

/-! ## A377818.P17762768992409137729

`∩[A072587(n+1), A377819(n+1)]`
-/

namespace A377818.P17762768992409137729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377818.P17762768992409137729

/-!
# A377819: Powerful numbers that have no more than one even exponent in their prime factorization.

The programs for A377819, there is no canonical definition to state claims against.
-/

/-! ## A377819.P18034851716712994714

`∪[A335988(n+1), A377818(n+1)]`
-/

namespace A377819.P18034851716712994714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377819.P18034851716712994714

/-! ## A377819.P2633502755317143186

`filter[A383112(n+1), A112526(#)]`
-/

namespace A377819.P2633502755317143186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A377819.P2633502755317143186

/-! ## A377819.P14159179354662250549

`filter[A383112(n+1), A380440(#)]`
-/

namespace A377819.P14159179354662250549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A377819.P14159179354662250549

/-! ## A377819.P12114028926998435987

`∩[A001694(n+1), A383112(n+1)]`
-/

namespace A377819.P12114028926998435987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377819.P12114028926998435987

/-! ## A377819.P936425512809420747

`∩[A317102(n+1), A383112(n+1)]`
-/

namespace A377819.P936425512809420747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377819.P936425512809420747

/-!
# A377820: 

The programs for A377820, there is no canonical definition to state claims against.
-/

/-! ## A377820.P14547569966909401857

`∩[A102834(n+1), A377821(n+1)]`
-/

namespace A377820.P14547569966909401857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P14547569966909401857

/-! ## A377820.P15786797642038495378

`∩[A069236(n+1), A377821(n+1)]`
-/

namespace A377820.P15786797642038495378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P15786797642038495378

/-! ## A377820.P8196157233646140352

`∩[A377821(n+1), A388306(n+1)]`
-/

namespace A377820.P8196157233646140352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P8196157233646140352

/-! ## A377820.P5113797458151921277

`∩[A377821(n+1), A380168(n+1)]`
-/

namespace A377820.P5113797458151921277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P5113797458151921277

/-! ## A377820.P4523932644314456907

`∩[A001694(n+1), A228056(n+1)]`
-/

namespace A377820.P4523932644314456907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P4523932644314456907

/-! ## A377820.P4648887337861909106

`∩[A102834(n+1), A228056(n+1)]`
-/

namespace A377820.P4648887337861909106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P4648887337861909106

/-! ## A377820.P13737869934520768223

`∩[A228056(n+1), A320966(n+1)]`
-/

namespace A377820.P13737869934520768223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P13737869934520768223

/-! ## A377820.P4999893055978958169

`∩[A228056(n+1), A377821(n+1)]`
-/

namespace A377820.P4999893055978958169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P4999893055978958169

/-! ## A377820.P14837480307517983813

`∩[A102834(n+1), A376715(n+1)]`
-/

namespace A377820.P14837480307517983813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P14837480307517983813

/-! ## A377820.P5124548489315143510

`filter[A001694(n+1), A358769(#)]`
-/

namespace A377820.P5124548489315143510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A377820.P5124548489315143510

/-! ## A377820.P5486911455291653282

`filter[A377821(n+1), A066829(#)]`
-/

namespace A377820.P5486911455291653282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A377820.P5486911455291653282

/-! ## A377820.P18097624167536728414

`filter[A102834(n+1), A358769(#)]`
-/

namespace A377820.P18097624167536728414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A377820.P18097624167536728414

/-! ## A377820.P7566767221971336699

`filter[A320966(n+1), A358769(#)]`
-/

namespace A377820.P7566767221971336699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A377820.P7566767221971336699

/-! ## A377820.P7122246920872356709

`filter[A377821(n+1), A358769(#)]`
-/

namespace A377820.P7122246920872356709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A377820.P7122246920872356709

/-! ## A377820.P16849161010917002084

`filter[A377844(n+1), A358769(#)]`
-/

namespace A377820.P16849161010917002084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A377820.P16849161010917002084

/-! ## A377820.P13444134847421550662

`∩[A001694(n+1), A377844(n+1)]`
-/

namespace A377820.P13444134847421550662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P13444134847421550662

/-! ## A377820.P3749035263646299203

`∩[A102834(n+1), A377844(n+1)]`
-/

namespace A377820.P3749035263646299203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P3749035263646299203

/-! ## A377820.P18084099787254194660

`∩[A228056(n+1), A377844(n+1)]`
-/

namespace A377820.P18084099787254194660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P18084099787254194660

/-! ## A377820.P302316051561744550

`∩[A320966(n+1), A377844(n+1)]`
-/

namespace A377820.P302316051561744550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P302316051561744550

/-! ## A377820.P11426989392093175187

`∩[A376715(n+1), A377844(n+1)]`
-/

namespace A377820.P11426989392093175187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377820.P11426989392093175187

/-!
# A377821: Powerful numbers that have no more than one odd exponent in their prime factorization.

The programs for A377821, there is no canonical definition to state claims against.
-/

/-! ## A377821.P322921561326810930

`∩[A001694(n+1), A265640(n+1)]`
-/

namespace A377821.P322921561326810930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377821.P322921561326810930

/-! ## A377821.P8990449601100033594

`∩[A001694(n+1), A344609(n+1)]`
-/

namespace A377821.P8990449601100033594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377821.P8990449601100033594

/-! ## A377821.P15613830598900492725

`filter[A119848(n+1), A112526(#)]`
-/

namespace A377821.P15613830598900492725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A377821.P15613830598900492725

/-! ## A377821.P11691511621801762830

`filter[A265640(n+1), A112526(#)]`
-/

namespace A377821.P11691511621801762830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A377821.P11691511621801762830

/-! ## A377821.P11277319298387497883

`∩[A001694(n+1), A119848(n+1)]`
-/

namespace A377821.P11277319298387497883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377821.P11277319298387497883

/-! ## A377821.P17946691734909476626

`∪[A359493(n+1), A370786(n+1)]`
-/

namespace A377821.P17946691734909476626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377821.P17946691734909476626

/-!
# A377822: a(n) is the least q>0 such that abs(p^2/q^2 - n)<=1/4 for a suitable integer p.

The programs for A377822, there is no canonical definition to state claims against.
-/

/-! ## A377822.P31812326244581338

`A001223(n+1)-A265314(A087173(n+1))`
-/

namespace A377822.P31812326244581338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A265314 (A087173 (n + 1)).toNat

end

end A377822.P31812326244581338

/-! ## A377822.P3891153277013747708

`A360676(A301716(n+2)+A092364(n+1))`
-/

namespace A377822.P3891153277013747708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (A301716 (n + 2) + A092364 (n + 1)).toNat

end

end A377822.P3891153277013747708

/-! ## A377822.P9840169186369340001

`A001223(n+1)-A010059(A263242(2*n+3))`
-/

namespace A377822.P9840169186369340001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A010059 (A263242 (2 * n + 3)).toNat

end

end A377822.P9840169186369340001

/-!
# A377823: Sum of the positions of maximum parts in all compositions of n.

The programs for A377823, there is no canonical definition to state claims against.
-/

/-! ## A377823.P1773455021749966786

`A293741(n+1)-A306383(A052452(n+1))`
-/

namespace A377823.P1773455021749966786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293741 (n + 1) - A306383 (A052452 (n + 1)).toNat

end

end A377823.P1773455021749966786

/-! ## A377823.P11139691361073378083

`A217038(A052990(n))`
-/

namespace A377823.P11139691361073378083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A052990 n).toNat

end

end A377823.P11139691361073378083

/-! ## A377823.P14544215391344187095

`A073750(A300438(n))`
-/

namespace A377823.P14544215391344187095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A300438 n).toNat

end

end A377823.P14544215391344187095

/-!
# A377824: Sum of the positions of minimum parts in all compositions of n.

The programs for A377824, there is no canonical definition to state claims against.
-/

/-! ## A377824.P7506302734752656431

`∑[A090245(n)-A014462(n+1)]`
-/

namespace A377824.P7506302734752656431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090245 n - A014462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377824.P7506302734752656431

/-! ## A377824.P13904588106527083998

`A026597(n)-A342191(A329276(n))`
-/

namespace A377824.P13904588106527083998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n - A342191 (A329276 n).toNat

end

end A377824.P13904588106527083998

/-! ## A377824.P7186202495683328718

`A300660(n+3)-A181935(A062209(n+3))`
-/

namespace A377824.P7186202495683328718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300660 (n + 3) - A181935 (A062209 (n + 3)).toNat

end

end A377824.P7186202495683328718

/-!
# A377825: Number of distinct permutations of the terms of the n-th row of Pascal's triangle with alternating signs.

The programs for A377825, the canonical program `A377825.P16518483527249973174` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377825 has offset 0).

The definition of A377825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377825.P16518483527249973174

`(n+1)!/2^(n*(1+(-1)^n)/4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A377825

/-- `(n+1)!/2^(n*(1+(-1)^n)/4)` -/
def P16518483527249973174.Spec : Prop :=
  ∀ n, P16518483527249973174.a n = (A377825 n : ℝ)

end A377825

/-! ## A377825.P2730568366070896094

`lcm(n+1, ∑[n])*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A377825.P2730568366070896094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 2)

end

end A377825.P2730568366070896094

namespace A377825

/-- `lcm(n+1, ∑[n])*a(n-2)` -/
def P2730568366070896094.Spec : Prop :=
  ∀ n, (P2730568366070896094.a n : ℤ) = A377825 n

end A377825

/-! ## A377825.P5706569207969528895

`A361651(A266287(n+1))`
-/

namespace A377825.P5706569207969528895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361651 (A266287 (n + 1)).toNat

end

end A377825.P5706569207969528895

namespace A377825

/-- `A361651(A266287(n+1))` -/
def P5706569207969528895.Spec : Prop :=
  ∀ n, P5706569207969528895.a n = A377825 n

end A377825

/-! ## A377825.P16309578965479889882

`A248686(A031878(n+2))`
-/

namespace A377825.P16309578965479889882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248686 (A031878 (n + 2)).toNat

end

end A377825.P16309578965479889882

namespace A377825

/-- `A248686(A031878(n+2))` -/
def P16309578965479889882.Spec : Prop :=
  ∀ n, P16309578965479889882.a n = A377825 n

end A377825

/-! ## A377825.P9040566364057319617

`A000142(n+1)/A016116(A193356(n+1))`
-/

namespace A377825.P9040566364057319617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A016116 (A193356 (n + 1)).toNat : ℚ)

end

end A377825.P9040566364057319617

namespace A377825

/-- `A000142(n+1)/A016116(A193356(n+1))` -/
def P9040566364057319617.Spec : Prop :=
  ∀ n, P9040566364057319617.a n = (A377825 n : ℚ)

end A377825

/-! ## A377825.P963494081680208795

`A072346(n+1)*A072346(n)*A072345(n)`
-/

namespace A377825.P963494081680208795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072346 (n + 1) * A072346 n * A072345 n

end

end A377825.P963494081680208795

namespace A377825

/-- `A072346(n+1)*A072346(n)*A072345(n)` -/
def P963494081680208795.Spec : Prop :=
  ∀ n, P963494081680208795.a n = A377825 n

end A377825

/-!
# A377826: E.g.f. satisfies A(x) = (1 + x) * exp(x * A(x)).

The programs for A377826, there is no canonical definition to state claims against.
-/

/-! ## A377826.P13432379000246996191

`A211186(A102000(n))`
-/

namespace A377826.P13432379000246996191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (A102000 n).toNat

end

end A377826.P13432379000246996191

/-!
# A377827: E.g.f. satisfies A(x) = (1 + x)^2 * exp(x * A(x)).

The programs for A377827, there is no canonical definition to state claims against.
-/

/-! ## A377827.P12720019786029201755

`∑[A352793(A135079(n))]`
-/

namespace A377827.P12720019786029201755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352793 (A135079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377827.P12720019786029201755

/-!
# A377828: E.g.f. satisfies A(x) = (1 + x)^3 * exp(x * A(x)).

The programs for A377828, there is no canonical definition to state claims against.
-/

/-! ## A377828.P17273215284045802301

`A001950(A108992(n))-A000108(n)`
-/

namespace A377828.P17273215284045802301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A108992 n).toNat - A000108 n

end

end A377828.P17273215284045802301

/-!
# A377831: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(-x) ).

The programs for A377831, there is no canonical definition to state claims against.
-/

/-! ## A377831.P7172925081021417619

`A036703(A328121(n+1))`
-/

namespace A377831.P7172925081021417619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 (A328121 (n + 1)).toNat

end

end A377831.P7172925081021417619

/-!
# A377834: a(1) = 0, and for n > 0, if A055932(n) = 2^r(1) * 3^r(2) * ... * prime(k)^r(k) with r(k) > 0 (where prime(k) denotes the k-th prime number), then the run lengths of the binary expansion of a(n) are (r(1), r(2), ..., r(k)).

The programs for A377834, there is no canonical definition to state claims against.
-/

/-! ## A377834.P8794697066861874249

`A056539(A377836(n+1))`
-/

namespace A377834.P8794697066861874249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A377836 (n + 1)).toNat

end

end A377834.P8794697066861874249

/-! ## A377834.P8672634222130344946

`A377836(A377835(A377836(A377836(A377837(n+1)))))`
-/

namespace A377834.P8672634222130344946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377836 (A377835 (A377836 (A377836 (A377837 (n + 1)).toNat).toNat).toNat).toNat

end

end A377834.P8672634222130344946

/-! ## A377834.P14800444880628909352

`A285331(A242706(n+1))`
-/

namespace A377834.P14800444880628909352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285331 (A242706 (n + 1)).toNat

end

end A377834.P14800444880628909352

/-!
# A377835: Inverse of bijection A377834.

The programs for A377835, there is no canonical definition to state claims against.
-/

/-! ## A377835.P18270665738028228972

`A377837(A056539(n))`
-/

namespace A377835.P18270665738028228972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377837 (A056539 n).toNat

end

end A377835.P18270665738028228972

/-! ## A377835.P13053736643982793563

`A377837(A377834(A377837(n)))`
-/

namespace A377835.P13053736643982793563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377837 (A377834 (A377837 n).toNat).toNat

end

end A377835.P13053736643982793563

/-!
# A377836: a(1) = 0, and for n > 0, if A055932(n) = 2^r(1) * 3^r(2) * ... * prime(k)^r(k) with r(k) > 0 (where prime(k) denotes the k-th prime number), then the run lengths of the binary expansion of a(n) are (r(k), r(k-1), ..., r(1)).

The programs for A377836, there is no canonical definition to state claims against.
-/

/-! ## A377836.P6166569295900271209

`A056539(A377834(n+1))`
-/

namespace A377836.P6166569295900271209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A377834 (n + 1)).toNat

end

end A377836.P6166569295900271209

/-! ## A377836.P14860428368638836761

`A377834(A377837(A377834(A377834(A377835(n+1)))))`
-/

namespace A377836.P14860428368638836761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377834 (A377837 (A377834 (A377834 (A377835 (n + 1)).toNat).toNat).toNat).toNat

end

end A377836.P14860428368638836761

/-! ## A377836.P12881265106963695486

`A166166(A377834(n+1)%A010348(2*(n+2)))`
-/

namespace A377836.P12881265106963695486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166166 (Int.tmod (A377834 (n + 1)) (A010348 (2 * (n + 2)))).toNat

end

end A377836.P12881265106963695486

/-! ## A377836.P16544076052249069828

`A166166(A377834(n+1))%A079227(2*(n+1))`
-/

namespace A377836.P16544076052249069828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166166 (A377834 (n + 1)).toNat) (A079227 (2 * (n + 1)))

end

end A377836.P16544076052249069828

/-!
# A377837: Inverse of bijection A377836.

The programs for A377837, there is no canonical definition to state claims against.
-/

/-! ## A377837.P6660427811762567925

`A377835(A056539(n))`
-/

namespace A377837.P6660427811762567925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377835 (A056539 n).toNat

end

end A377837.P6660427811762567925

/-! ## A377837.P307231003199116291

`A377835(A377836(A377835(n)))`
-/

namespace A377837.P307231003199116291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377835 (A377836 (A377835 n).toNat).toNat

end

end A377837.P307231003199116291

/-! ## A377837.P6713841571892625791

`A077462(A163755(n))`
-/

namespace A377837.P6713841571892625791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A163755 n).toNat

end

end A377837.P6713841571892625791

/-!
# A377840: Cogrowth sequence of the 16-element group C8 X C2 = <S,T | S^8, T^2, [S,T]>.

The programs for A377840, there is no canonical definition to state claims against.
-/

/-! ## A377840.P4703742310243758202

`A306859(2*n)`
-/

namespace A377840.P4703742310243758202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 (2 * n)

end

end A377840.P4703742310243758202

/-! ## A377840.P18348529764425089814

`A306859(A005843(n))^(A000265(n+5)%2)`
-/

namespace A377840.P18348529764425089814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306859 (A005843 n).toNat : ℚ) ^ (Int.tmod (A000265 (n + 5)) 2 : ℤ)

end

end A377840.P18348529764425089814

/-! ## A377840.P13271774215978487704

`A306859(A005843(n))^(A065508(n+5)%2)`
-/

namespace A377840.P13271774215978487704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306859 (A005843 n).toNat : ℚ) ^ (Int.tmod (A065508 (n + 5)) 2 : ℤ)

end

end A377840.P13271774215978487704

/-! ## A377840.P4868778276068916037

`A306859(A005843(n))^(A131992(n+5)%2)`
-/

namespace A377840.P4868778276068916037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306859 (A005843 n).toNat : ℚ) ^ (Int.tmod (A131992 (n + 5)) 2 : ℤ)

end

end A377840.P4868778276068916037

/-! ## A377840.P16212609224589779096

`A306859(A005843(n))^(A372963(n+5)%2)`
-/

namespace A377840.P16212609224589779096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306859 (A005843 n).toNat : ℚ) ^ (Int.tmod (A372963 (n + 5)) 2 : ℤ)

end

end A377840.P16212609224589779096

/-! ## A377840.P15274615670623057127

`A306859(A005843(n))/A326516(A000961(n+5))`
-/

namespace A377840.P15274615670623057127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306859 (A005843 n).toNat : ℚ) / (A326516 (A000961 (n + 5)).toNat : ℚ)

end

end A377840.P15274615670623057127

/-! ## A377840.P16527987965748329901

`A306859(A005843(n))%A222568(n+5)`
-/

namespace A377840.P16527987965748329901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306859 (A005843 n).toNat) (A222568 (n + 5))

end

end A377840.P16527987965748329901

/-!
# A377842: a(n) = q - 2*p, where q is the greatest prime such that p=2*n - q is also prime.

The programs for A377842, there is no canonical definition to state claims against.
-/

/-! ## A377842.P7063208624826373188

`3*A047949(n+2)-(n+2)`
-/

namespace A377842.P7063208624826373188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047949 (n + 2) - (n + 2 : ℤ)

end

end A377842.P7063208624826373188

/-! ## A377842.P4266660403306810371

`A081303(A073046(n+2))`
-/

namespace A377842.P4266660403306810371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081303 (A073046 (n + 2)).toNat

end

end A377842.P4266660403306810371

/-! ## A377842.P9016668711735753172

`A303603(n+2)-A020481(n+2)`
-/

namespace A377842.P9016668711735753172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (n + 2) - A020481 (n + 2)

end

end A377842.P9016668711735753172

/-! ## A377842.P14088404399235681950

`A020482(n+2)-2*A020481(n+2)`
-/

namespace A377842.P14088404399235681950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - 2 * A020481 (n + 2)

end

end A377842.P14088404399235681950

/-! ## A377842.P15244458887002612983

`A020482(n+2)-A005843(A020481(n+2))`
-/

namespace A377842.P15244458887002612983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - A005843 (A020481 (n + 2)).toNat

end

end A377842.P15244458887002612983

/-! ## A377842.P13010544335864854323

`A005843(A047949(n+2))-A020481(n+2)`
-/

namespace A377842.P13010544335864854323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047949 (n + 2)).toNat - A020481 (n + 2)

end

end A377842.P13010544335864854323

/-!
# A377843: Cogrowth sequence of the 16-element group C4 X C2 X C2 = <S,T,U | S^4, T^2, U^2, [S,T], [S,U], [T,U]>.

The programs for A377843, there is no canonical definition to state claims against.
-/

/-! ## A377843.P6121742080022962634

`A014200(A008544(n))`
-/

namespace A377843.P6121742080022962634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A008544 n).toNat

end

end A377843.P6121742080022962634

/-!
# A377844: Numbers that have a single odd exponent larger than 1 in their prime factorization.

The programs for A377844, the canonical program `A377844.P397277366577125668` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377844 has offset 1).

The definition of A377844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377844.P397277366577125668

`eq[1, A295662(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A377844

/-- `eq[1, A295662(n+1)]+1` -/
def P397277366577125668.Spec : Prop :=
  ∀ n, (P397277366577125668.a n : ℤ) = A377844 (n + 1)

theorem P397277366577125668.correct : P397277366577125668.Spec := by
  intro n
  simp only [A377844, Nat.add_sub_cancel]

end A377844

/-! ## A377844.P5487033132968615586

`eq[2, A368168(n+1)]+1`
-/

namespace A377844.P5487033132968615586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377844.P5487033132968615586

namespace A377844

/-- `eq[2, A368168(n+1)]+1` -/
def P5487033132968615586.Spec : Prop :=
  ∀ n, (P5487033132968615586.a n : ℤ) = A377844 (n + 1)

end A377844

/-! ## A377844.P11028144946116910103

`A114637(eq[1, A295662(n+1)])`
-/

namespace A377844.P11028144946116910103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A377844.P11028144946116910103

namespace A377844

/-- `A114637(eq[1, A295662(n+1)])` -/
def P11028144946116910103.Spec : Prop :=
  ∀ n, P11028144946116910103.a n = A377844 (n + 1)

end A377844

/-! ## A377844.P13052490049665375447

`eq[1, A328195(A055229(n+1))]+1`
-/

namespace A377844.P13052490049665375447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A055229 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377844.P13052490049665375447

namespace A377844

/-- `eq[1, A328195(A055229(n+1))]+1` -/
def P13052490049665375447.Spec : Prop :=
  ∀ n, (P13052490049665375447.a n : ℤ) = A377844 (n + 1)

end A377844

/-! ## A377844.P16624160015241266636

`lt[A347084(A055229(n+1)), A355453(n+1)]+1`
-/

namespace A377844.P16624160015241266636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347084 (A055229 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A377844.P16624160015241266636

namespace A377844

/-- `lt[A347084(A055229(n+1)), A355453(n+1)]+1` -/
def P16624160015241266636.Spec : Prop :=
  ∀ n, (P16624160015241266636.a n : ℤ) = A377844 (n + 1)

end A377844

/-!
# A377845: Numbers that have more than one odd exponent larger than 1 in their prime factorization.

The programs for A377845, there is no canonical definition to state claims against.
-/

/-! ## A377845.P3230915740478895893

`A391504(A062399(n+1))`
-/

namespace A377845.P3230915740478895893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (A062399 (n + 1)).toNat

end

end A377845.P3230915740478895893

/-! ## A377845.P18416682267413209495

`A250248(A391504(n+1))`
-/

namespace A377845.P18416682267413209495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A391504 (n + 1)).toNat

end

end A377845.P18416682267413209495

/-! ## A377845.P2198842534904069927

`A391504(A351870(n+1))`
-/

namespace A377845.P2198842534904069927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (A351870 (n + 1)).toNat

end

end A377845.P2198842534904069927

/-! ## A377845.P4013960237658367607

`A391504(A032555(n+1))`
-/

namespace A377845.P4013960237658367607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391504 (A032555 (n + 1)).toNat

end

end A377845.P4013960237658367607

/-!
# A377846: Powerful numbers that are not divisible by the cubes of more than one distinct prime.

The programs for A377846, there is no canonical definition to state claims against.
-/

/-! ## A377846.P1225943871833668954

`∪[A062503(n+1), A377847(n+1)]`
-/

namespace A377846.P1225943871833668954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377846.P1225943871833668954

/-! ## A377846.P9770041727377991828

`∪[A005117(n+1)², A377847(n+1)]`
-/

namespace A377846.P9770041727377991828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377846.P9770041727377991828

/-!
# A377847: Powerful numbers that are divisible by the cube of a single prime.

The programs for A377847, there is no canonical definition to state claims against.
-/

/-! ## A377847.P11386770524284939126

`∪[A246549(n+1), A391491(n+1)]`
-/

namespace A377847.P11386770524284939126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P11386770524284939126

/-! ## A377847.P6840248752254699895

`∩[A320966(n+1), A377846(n+1)]`
-/

namespace A377847.P6840248752254699895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P6840248752254699895

/-! ## A377847.P10524998717961784311

`∩[A059172(n+1), A377846(n+1)]`
-/

namespace A377847.P10524998717961784311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P10524998717961784311

/-! ## A377847.P14262406655609535215

`filter[A377846(n+1), A380439(#)]`
-/

namespace A377847.P14262406655609535215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A377847.P14262406655609535215

/-! ## A377847.P9687060579642177247

`∩[A001694(n+1), A375145(n+1)]`
-/

namespace A377847.P9687060579642177247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P9687060579642177247

/-! ## A377847.P12408507697168059544

`∩[A320966(n+1), A375145(n+1)]`
-/

namespace A377847.P12408507697168059544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P12408507697168059544

/-! ## A377847.P3959658652141062527

`∩[A375145(n+1), A377821(n+1)]`
-/

namespace A377847.P3959658652141062527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P3959658652141062527

/-! ## A377847.P10353986612056061175

`∩[A375145(n+1), A377846(n+1)]`
-/

namespace A377847.P10353986612056061175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P10353986612056061175

/-! ## A377847.P9822117538978863619

`∩[A046099(n+1), A377846(n+1)]`
-/

namespace A377847.P9822117538978863619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P9822117538978863619

/-! ## A377847.P13437987078055629254

`∩[A375145(n+1), A393924(n+1)]`
-/

namespace A377847.P13437987078055629254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377847.P13437987078055629254

/-!
# A377848: Even numbers which are the sum of two palindromic primes.

The programs for A377848, there is no canonical definition to state claims against.
-/

/-! ## A377848.P4994348847170976297

`∩[2*n, A287961(n+1)]`
-/

namespace A377848.P4994348847170976297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377848.P4994348847170976297

/-! ## A377848.P1692741188165061948

`filter[A287961(n+1), A059841(#)]`
-/

namespace A377848.P1692741188165061948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A377848.P1692741188165061948

/-! ## A377848.P13967375572870469637

`filter[A287961(n+1), A135528(#)]`
-/

namespace A377848.P13967375572870469637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A377848.P13967375572870469637

/-! ## A377848.P14807702729685326840

`filter[A287961(n+1), A266591(#)]`
-/

namespace A377848.P14807702729685326840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A377848.P14807702729685326840

/-! ## A377848.P7900228472822611121

`filter[A287961(n+1), A267043(#)]`
-/

namespace A377848.P7900228472822611121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A377848.P7900228472822611121

/-!
# A377850: Noll index series of Zernike polynomials converted to Fringe index.

The programs for A377850, there is no canonical definition to state claims against.
-/

/-! ## A377850.P14551492886905901967

`A375510(A375779(n+1))`
-/

namespace A377850.P14551492886905901967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375510 (A375779 (n + 1)).toNat

end

end A377850.P14551492886905901967

/-!
# A377851: Smallest multiplier which can complete the square for n-polygonal numbers, together with a constant offset.

The programs for A377851, the canonical program `A377851.P3394216349372385044` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377851 has offset 3).

The definition of A377851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377851.P3394216349372385044

`8*(n+1)/gcd(n+3, 4)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A377851

/-- `8*(n+1)/gcd(n+3, 4)²` -/
def P3394216349372385044.Spec : Prop :=
  ∀ n, P3394216349372385044.a n = (A377851 (n + 3) : ℚ)

end A377851

/-! ## A377851.P10485505901864907197

`lcm((n+3)², Δ[(2*n+1)²])/(n+3)²`
-/

namespace A377851.P10485505901864907197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 3) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / ((n + 3) ^ 2 : ℚ)

end

end A377851.P10485505901864907197

namespace A377851

/-- `lcm((n+3)², Δ[(2*n+1)²])/(n+3)²` -/
def P10485505901864907197.Spec : Prop :=
  ∀ n, P10485505901864907197.a n = (A377851 (n + 3) : ℚ)

end A377851

/-! ## A377851.P1866513800634538428

`A010685(n+1)*A188167(n+1)`
-/

namespace A377851.P1866513800634538428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (n + 1) * A188167 (n + 1)

end

end A377851.P1866513800634538428

namespace A377851

/-- `A010685(n+1)*A188167(n+1)` -/
def P1866513800634538428.Spec : Prop :=
  ∀ n, P1866513800634538428.a n = A377851 (n + 3)

end A377851

/-! ## A377851.P7949744074921159125

`A195161(A064680(n+1))`
-/

namespace A377851.P7949744074921159125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A064680 (n + 1)).toNat

end

end A377851.P7949744074921159125

namespace A377851

/-- `A195161(A064680(n+1))` -/
def P7949744074921159125.Spec : Prop :=
  ∀ n, P7949744074921159125.a n = A377851 (n + 3)

end A377851

/-! ## A377851.P15544096888212221261

`A022998(A246943(n+1))`
-/

namespace A377851.P15544096888212221261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A246943 (n + 1)).toNat

end

end A377851.P15544096888212221261

namespace A377851

/-- `A022998(A246943(n+1))` -/
def P15544096888212221261.Spec : Prop :=
  ∀ n, P15544096888212221261.a n = A377851 (n + 3)

end A377851

/-! ## A377851.P10309089198019482467

`A022998(A022998(A165351(n+1)-(n+1)))`
-/

namespace A377851.P10309089198019482467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 (A165351 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A377851.P10309089198019482467

namespace A377851

/-- `A022998(A022998(A165351(n+1)-(n+1)))` -/
def P10309089198019482467.Spec : Prop :=
  ∀ n, P10309089198019482467.a n = A377851 (n + 3)

end A377851

/-! ## A377851.P4464994315243293263

`A246943(2*A246943(n+1))`
-/

namespace A377851.P4464994315243293263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246943 (2 * A246943 (n + 1)).toNat

end

end A377851.P4464994315243293263

namespace A377851

/-- `A246943(2*A246943(n+1))` -/
def P4464994315243293263.Spec : Prop :=
  ∀ n, P4464994315243293263.a n = A377851 (n + 3)

end A377851

/-! ## A377851.P18194944550627805104

`A246943(A246943(n+1)+A246943(n+1))`
-/

namespace A377851.P18194944550627805104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246943 (A246943 (n + 1) + A246943 (n + 1)).toNat

end

end A377851.P18194944550627805104

namespace A377851

/-- `A246943(A246943(n+1)+A246943(n+1))` -/
def P18194944550627805104.Spec : Prop :=
  ∀ n, P18194944550627805104.a n = A377851 (n + 3)

end A377851

/-!
# A377852: Triangle T(n,k) read by rows in which n-th row lists in increasing order all multiplicative partitions mu of n whose sum is also n (with factors >= 1), encoded as Product_{j in mu} prime(j); n>=1, 1<=k<=A001055(n).

The programs for A377852, there is no canonical definition to state claims against.
-/

/-! ## A377852.P3395717036318978158

`A185974(eq[A036042(n), A118851(n)])`
-/

namespace A377852.P3395717036318978158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A377852.P3395717036318978158

/-!
# A377854: Achilles numbers whose squarefree kernel is a primorial.

The programs for A377854, there is no canonical definition to state claims against.
-/

/-! ## A377854.P4150212327379485275

`∪[A378002(n+1), A386433(n+1)]`
-/

namespace A377854.P4150212327379485275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P4150212327379485275

/-! ## A377854.P1502632880351876121

`∩[A055932(n+1), A378859(n+1)]`
-/

namespace A377854.P1502632880351876121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P1502632880351876121

/-! ## A377854.P9488278044033350658

`∩[A363814(n+1), A378859(n+1)]`
-/

namespace A377854.P9488278044033350658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P9488278044033350658

/-! ## A377854.P11527605990273222706

`∩[A369374(n+1), A378859(n+1)]`
-/

namespace A377854.P11527605990273222706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P11527605990273222706

/-! ## A377854.P13344747636118108064

`∩[A378859(n+1), A387901(n+1)]`
-/

namespace A377854.P13344747636118108064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P13344747636118108064

/-! ## A377854.P16697986032645773590

`∩[A055932(n+1), A390952(n+1)]`
-/

namespace A377854.P16697986032645773590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P16697986032645773590

/-! ## A377854.P10800420772108415086

`∩[A363814(n+1), A390952(n+1)]`
-/

namespace A377854.P10800420772108415086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P10800420772108415086

/-! ## A377854.P9440530731929144931

`∩[A369374(n+1), A390952(n+1)]`
-/

namespace A377854.P9440530731929144931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P9440530731929144931

/-! ## A377854.P4803703872478902741

`∩[A387901(n+1), A390952(n+1)]`
-/

namespace A377854.P4803703872478902741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P4803703872478902741

/-! ## A377854.P10504193744802377469

`∩[A052486(n+1), A055932(n+1)]`
-/

namespace A377854.P10504193744802377469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P10504193744802377469

/-! ## A377854.P13014997078754905822

`∩[A052486(n+1), A363814(n+1)]`
-/

namespace A377854.P13014997078754905822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P13014997078754905822

/-! ## A377854.P3561165322880558594

`∩[A052486(n+1), A369374(n+1)]`
-/

namespace A377854.P3561165322880558594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P3561165322880558594

/-! ## A377854.P15624353767962681623

`∩[A052486(n+1), A387901(n+1)]`
-/

namespace A377854.P15624353767962681623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P15624353767962681623

/-! ## A377854.P12583184972889425492

`∩[A052486(n+1), A304450(n+1)]`
-/

namespace A377854.P12583184972889425492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P12583184972889425492

/-! ## A377854.P16796886485581533466

`∩[A102834(n+1), A304450(n+1)]`
-/

namespace A377854.P16796886485581533466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P16796886485581533466

/-! ## A377854.P11208819559481193656

`∩[A216426(n+1), A304450(n+1)]`
-/

namespace A377854.P11208819559481193656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P11208819559481193656

/-! ## A377854.P8573886000932872495

`∩[A216427(n+1), A304450(n+1)]`
-/

namespace A377854.P8573886000932872495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P8573886000932872495

/-! ## A377854.P10455282991108412988

`∩[A304450(n+1), A356871(n+1)]`
-/

namespace A377854.P10455282991108412988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P10455282991108412988

/-! ## A377854.P17840581624230961050

`∩[A304450(n+1), A363169(n+1)]`
-/

namespace A377854.P17840581624230961050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P17840581624230961050

/-! ## A377854.P18080556877450159349

`∩[A304450(n+1), A363216(n+1)]`
-/

namespace A377854.P18080556877450159349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377854.P18080556877450159349

/-!
# A377855: Cogrowth sequence of the 16-element group C4:C4 = <S,T | S^4, T^4, STST^3>.

The programs for A377855, there is no canonical definition to state claims against.
-/

/-! ## A377855.P12249923741431882035

`and(A192420(A048631(n)), A295022(n+1))`
-/

namespace A377855.P12249923741431882035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192420 (A048631 n).toNat) (A295022 (n + 1))

end

end A377855.P12249923741431882035

/-! ## A377855.P9401513870023546159

`A248614(A000912(n))`
-/

namespace A377855.P9401513870023546159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (A000912 n).toNat

end

end A377855.P9401513870023546159

/-!
# A377857: Number of subwords of the form UUUD in nondecreasing Dyck paths of length 2n.

The programs for A377857, there is no canonical definition to state claims against.
-/

/-! ## A377857.P783299892598954245

`A085860(A121156(n+10))`
-/

namespace A377857.P783299892598954245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A121156 (n + 10)).toNat

end

end A377857.P783299892598954245

/-! ## A377857.P4567949421409753034

`A318229(n+1)-A011782(n)`
-/

namespace A377857.P4567949421409753034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) - A011782 n

end

end A377857.P4567949421409753034

/-! ## A377857.P5675002449661488176

`A318229(n+1)-A220493(n+1)`
-/

namespace A377857.P5675002449661488176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) - A220493 (n + 1)

end

end A377857.P5675002449661488176

/-! ## A377857.P8643004993440115954

`A318229(n+1)-A000010(A000079(n))`
-/

namespace A377857.P8643004993440115954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) - A000010 (A000079 n).toNat

end

end A377857.P8643004993440115954

/-!
# A377858: a(n) = Sum_{k=1..n} tan(k*Pi/(1+2*n))^4.

The programs for A377858, the canonical program `A377858.P14016511264235908881` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377858 has offset 0).

The definition of A377858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377858.P14016511264235908881

`n*(2*n+1)*(4*n²+6*n-1)/3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A377858

/-- `n*(2*n+1)*(4*n²+6*n-1)/3` -/
def P14016511264235908881.Spec : Prop :=
  ∀ n, P14016511264235908881.a n = (A377858 n : ℚ)

end A377858

/-! ## A377858.P1539535025221383681

`(2*n+1)*∑[(2*n)²]-C(2*n+1, 2)`
-/

namespace A377858.P1539535025221383681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (Nat.choose (2 * n + 1) 2 : ℤ)

end

end A377858.P1539535025221383681

namespace A377858

/-- `(2*n+1)*∑[(2*n)²]-C(2*n+1, 2)` -/
def P1539535025221383681.Spec : Prop :=
  ∀ n, P1539535025221383681.a n = A377858 n

end A377858

/-! ## A377858.P9498556120479176109

`lcm(2*n+1, (2*n+1)*(∑[(2*n)²]-n))`
-/

namespace A377858.P9498556120479176109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((2 * n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A377858.P9498556120479176109

namespace A377858

/-- `lcm(2*n+1, (2*n+1)*(∑[(2*n)²]-n))` -/
def P9498556120479176109.Spec : Prop :=
  ∀ n, (P9498556120479176109.a n : ℤ) = A377858 n

end A377858

/-! ## A377858.P10912138214329055882

`∑[A267031(n)]-n²`
-/

namespace A377858.P10912138214329055882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A377858.P10912138214329055882

namespace A377858

/-- `∑[A267031(n)]-n²` -/
def P10912138214329055882.Spec : Prop :=
  ∀ n, P10912138214329055882.a n = A377858 n

end A377858

/-! ## A377858.P1916040168823473010

`A008911(2*n)+A002412(2*n)`
-/

namespace A377858.P1916040168823473010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (2 * n) + A002412 (2 * n)

end

end A377858.P1916040168823473010

namespace A377858

/-- `A008911(2*n)+A002412(2*n)` -/
def P1916040168823473010.Spec : Prop :=
  ∀ n, P1916040168823473010.a n = A377858 n

end A377858

/-! ## A377858.P838959359208904746

`A326278(Δ[n²])`
-/

namespace A377858.P838959359208904746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377858.P838959359208904746

namespace A377858

/-- `A326278(Δ[n²])` -/
def P838959359208904746.Spec : Prop :=
  ∀ n, P838959359208904746.a n = A377858 n

end A377858

/-! ## A377858.P16620349822318122752

`(2*n+1)*A064843(2*n+1)`
-/

namespace A377858.P16620349822318122752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A064843 (2 * n + 1)

end

end A377858.P16620349822318122752

namespace A377858

/-- `(2*n+1)*A064843(2*n+1)` -/
def P16620349822318122752.Spec : Prop :=
  ∀ n, P16620349822318122752.a n = A377858 n

end A377858

/-! ## A377858.P10795758196160630120

`A008911(2*n+1)-A014105(n)`
-/

namespace A377858.P10795758196160630120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (2 * n + 1) - A014105 n

end

end A377858.P10795758196160630120

namespace A377858

/-- `A008911(2*n+1)-A014105(n)` -/
def P10795758196160630120.Spec : Prop :=
  ∀ n, P10795758196160630120.a n = A377858 n

end A377858

/-! ## A377858.P18273168871249272474

`A135503(2*n)+A071239(2*n)`
-/

namespace A377858.P18273168871249272474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (2 * n) + A071239 (2 * n)

end

end A377858.P18273168871249272474

namespace A377858

/-- `A135503(2*n)+A071239(2*n)` -/
def P18273168871249272474.Spec : Prop :=
  ∀ n, P18273168871249272474.a n = A377858 n

end A377858

/-! ## A377858.P17867248294041530915

`A329523(2*n+1)-A000384(n+1)`
-/

namespace A377858.P17867248294041530915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 (2 * n + 1) - A000384 (n + 1)

end

end A377858.P17867248294041530915

namespace A377858

/-- `A329523(2*n+1)-A000384(n+1)` -/
def P17867248294041530915.Spec : Prop :=
  ∀ n, P17867248294041530915.a n = A377858 n

end A377858

/-! ## A377858.P2515928778220604945

`A002418(2*n)-A000332(2*n+1)`
-/

namespace A377858.P2515928778220604945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002418 (2 * n) - A000332 (2 * n + 1)

end

end A377858.P2515928778220604945

namespace A377858

/-- `A002418(2*n)-A000332(2*n+1)` -/
def P2515928778220604945.Spec : Prop :=
  ∀ n, P2515928778220604945.a n = A377858 n

end A377858

/-! ## A377858.P4056835225754316305

`A008911(2*n+1)-A000217(2*n)`
-/

namespace A377858.P4056835225754316305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (2 * n + 1) - A000217 (2 * n)

end

end A377858.P4056835225754316305

namespace A377858

/-- `A008911(2*n+1)-A000217(2*n)` -/
def P4056835225754316305.Spec : Prop :=
  ∀ n, P4056835225754316305.a n = A377858 n

end A377858

/-! ## A377858.P7291740465034791601

`A000537(2*n)-A034827(2*n+1)`
-/

namespace A377858.P7291740465034791601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (2 * n) - A034827 (2 * n + 1)

end

end A377858.P7291740465034791601

namespace A377858

/-- `A000537(2*n)-A034827(2*n+1)` -/
def P7291740465034791601.Spec : Prop :=
  ∀ n, P7291740465034791601.a n = A377858 n

end A377858

/-! ## A377858.P13421404984100515244

`A153978(2*n+1)-A006007(2*n)`
-/

namespace A377858.P13421404984100515244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153978 (2 * n + 1) - A006007 (2 * n)

end

end A377858.P13421404984100515244

namespace A377858

/-- `A153978(2*n+1)-A006007(2*n)` -/
def P13421404984100515244.Spec : Prop :=
  ∀ n, P13421404984100515244.a n = A377858 n

end A377858

/-! ## A377858.P5884494199840712420

`A000217(2*n)²-A034827(2*n+1)`
-/

namespace A377858.P5884494199840712420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) ^ 2 - A034827 (2 * n + 1)

end

end A377858.P5884494199840712420

namespace A377858

/-- `A000217(2*n)²-A034827(2*n+1)` -/
def P5884494199840712420.Spec : Prop :=
  ∀ n, P5884494199840712420.a n = A377858 n

end A377858

/-! ## A377858.P15849688139737256415

`A007290(2*n+1)+A006325(2*n+1)`
-/

namespace A377858.P15849688139737256415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (2 * n + 1) + A006325 (2 * n + 1)

end

end A377858.P15849688139737256415

namespace A377858

/-- `A007290(2*n+1)+A006325(2*n+1)` -/
def P15849688139737256415.Spec : Prop :=
  ∀ n, P15849688139737256415.a n = A377858 n

end A377858

/-! ## A377858.P14371879717908165499

`A050297(2*n+1)+A002415(2*n+1)`
-/

namespace A377858.P14371879717908165499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050297 (2 * n + 1) + A002415 (2 * n + 1)

end

end A377858.P14371879717908165499

namespace A377858

/-- `A050297(2*n+1)+A002415(2*n+1)` -/
def P14371879717908165499.Spec : Prop :=
  ∀ n, P14371879717908165499.a n = A377858 n

end A377858

/-! ## A377858.P5732549878591364079

`A117662(2*n+1)+A002415(2*n+1)`
-/

namespace A377858.P5732549878591364079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 (2 * n + 1) + A002415 (2 * n + 1)

end

end A377858.P5732549878591364079

namespace A377858

/-- `A117662(2*n+1)+A002415(2*n+1)` -/
def P5732549878591364079.Spec : Prop :=
  ∀ n, P5732549878591364079.a n = A377858 n

end A377858

/-! ## A377858.P12044925158483864334

`A326247(2*n+1)+A034827(2*n+1)`
-/

namespace A377858.P12044925158483864334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326247 (2 * n + 1) + A034827 (2 * n + 1)

end

end A377858.P12044925158483864334

namespace A377858

/-- `A326247(2*n+1)+A034827(2*n+1)` -/
def P12044925158483864334.Spec : Prop :=
  ∀ n, P12044925158483864334.a n = A377858 n

end A377858

/-! ## A377858.P15207700872113550185

`A006528(2*n+1)-A006008(2*n+1)`
-/

namespace A377858.P15207700872113550185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 (2 * n + 1) - A006008 (2 * n + 1)

end

end A377858.P15207700872113550185

namespace A377858

/-- `A006528(2*n+1)-A006008(2*n+1)` -/
def P15207700872113550185.Spec : Prop :=
  ∀ n, P15207700872113550185.a n = A377858 n

end A377858

/-!
# A377859: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x) * exp(x) ).

The programs for A377859, there is no canonical definition to state claims against.
-/

/-! ## A377859.P13156372849219927696

`A327917(A176738(n))`
-/

namespace A377859.P13156372849219927696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327917 (A176738 n).toNat

end

end A377859.P13156372849219927696

/-! ## A377859.P10602159276335579350

`A373095(A302109(n))`
-/

namespace A377859.P10602159276335579350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373095 (A302109 n).toNat

end

end A377859.P10602159276335579350

/-!
# A377860: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x)^2 * exp(x) ).

The programs for A377860, there is no canonical definition to state claims against.
-/

/-! ## A377860.P2915726040482839298

`A364099(n!²)`
-/

namespace A377860.P2915726040482839298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364099 (Nat.factorial n ^ 2)

end

end A377860.P2915726040482839298

/-!
# A377861: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x)^3 * exp(x) ).

The programs for A377861, there is no canonical definition to state claims against.
-/

/-! ## A377861.P10026849575062650264

`A298167(A000984(n))+A000110(2*n)`
-/

namespace A377861.P10026849575062650264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (A000984 n).toNat + A000110 (2 * n)

end

end A377861.P10026849575062650264

/-!
# A377863: Numbers missing from A377862.

The programs for A377863, there is no canonical definition to state claims against.
-/

/-! ## A377863.P1123385941053498704

`lt[A377896(n+1), 1]+1`
-/

namespace A377863.P1123385941053498704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377896 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A377863.P1123385941053498704

/-! ## A377863.P2550627192496649233

`eq[A000122(3*n+2), A377896(A028310(n))]`
-/

namespace A377863.P2550627192496649233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377896 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377863.P2550627192496649233

/-!
# A377864: Largest divisor of 2n-1 less than or equal to sqrt(2n-1).

The programs for A377864, there is no canonical definition to state claims against.
-/

/-! ## A377864.P6181779167211522793

`A377499(n+1)-A219695(n+1)`
-/

namespace A377864.P6181779167211522793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377499 (n + 1) - A219695 (n + 1)

end

end A377864.P6181779167211522793

/-! ## A377864.P10238217037359840004

`A033676(2*n+1)`
-/

namespace A377864.P10238217037359840004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (2 * n + 1)

end

end A377864.P10238217037359840004

/-! ## A377864.P14678736948824139002

`Δ[n²]/A377865(n+1)`
-/

namespace A377864.P14678736948824139002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A377865 (n + 1) : ℚ)

end

end A377864.P14678736948824139002

/-! ## A377864.P16377335823915599793

`A366519(Δ[n²])`
-/

namespace A377864.P16377335823915599793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366519 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A377864.P16377335823915599793

/-! ## A377864.P9115010308080351903

`A162348(4*n+1)`
-/

namespace A377864.P9115010308080351903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (4 * n + 1)

end

end A377864.P9115010308080351903

/-! ## A377864.P3918256072537353077

`(2*n+1)/A033677(2*n+1)`
-/

namespace A377864.P3918256072537353077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A033677 (2 * n + 1) : ℚ)

end

end A377864.P3918256072537353077

/-! ## A377864.P12279586605490528014

`A000265(A366519(2*n+1))`
-/

namespace A377864.P12279586605490528014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A366519 (2 * n + 1)).toNat

end

end A377864.P12279586605490528014

/-! ## A377864.P1920394994938629735

`A033677(2*n+1)-A056737(2*n+1)`
-/

namespace A377864.P1920394994938629735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * n + 1) - A056737 (2 * n + 1)

end

end A377864.P1920394994938629735

/-! ## A377864.P14235375980808009299

`A072505(A072504(2*n+1)²)`
-/

namespace A377864.P14235375980808009299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (A072504 (2 * n + 1) ^ 2).toNat

end

end A377864.P14235375980808009299

/-! ## A377864.P17864547107375800862

`A072505(A372833(2*n+1)²)`
-/

namespace A377864.P17864547107375800862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (A372833 (2 * n + 1) ^ 2).toNat

end

end A377864.P17864547107375800862

/-!
# A377865: Smallest divisor of 2n-1 greater than or equal to sqrt(2n-1).

The programs for A377865, there is no canonical definition to state claims against.
-/

/-! ## A377865.P5289298462719702146

`A377499(n+1)+A219695(n+1)`
-/

namespace A377865.P5289298462719702146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377499 (n + 1) + A219695 (n + 1)

end

end A377865.P5289298462719702146

/-! ## A377865.P16829024612381057835

`A033677(2*n+1)`
-/

namespace A377865.P16829024612381057835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * n + 1)

end

end A377865.P16829024612381057835

/-! ## A377865.P11857692567209250109

`Δ[n²]/A377864(n+1)`
-/

namespace A377865.P11857692567209250109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A377864 (n + 1) : ℚ)

end

end A377865.P11857692567209250109

/-! ## A377865.P4649315499271192374

`A162348(4*n+2)`
-/

namespace A377865.P4649315499271192374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (4 * n + 2)

end

end A377865.P4649315499271192374

/-! ## A377865.P8750330249909994081

`A248835(2*n+1)-(2*n+1)`
-/

namespace A377865.P8750330249909994081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A377865.P8750330249909994081

/-! ## A377865.P11160150838777865345

`(2*n+1)/A033676(2*n+1)`
-/

namespace A377865.P11160150838777865345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A033676 (2 * n + 1) : ℚ)

end

end A377865.P11160150838777865345

/-! ## A377865.P2350032255323414643

`(2*n+1)/A366519(2*n+1)`
-/

namespace A377865.P2350032255323414643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A366519 (2 * n + 1) : ℚ)

end

end A377865.P2350032255323414643

/-! ## A377865.P9196025461707708384

`A377864(n+1)+A056737(2*n+1)`
-/

namespace A377865.P9196025461707708384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377864 (n + 1) + A056737 (2 * n + 1)

end

end A377865.P9196025461707708384

/-! ## A377865.P13805883591745306647

`A361565(2*n+1)+A219695(n+1)`
-/

namespace A377865.P13805883591745306647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (2 * n + 1) + A219695 (n + 1)

end

end A377865.P13805883591745306647

/-! ## A377865.P13363272228931372862

`A063655(2*n+1)-A377864(n+1)`
-/

namespace A377865.P13363272228931372862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (2 * n + 1) - A377864 (n + 1)

end

end A377865.P13363272228931372862

/-! ## A377865.P7510293297445724719

`A063655(2*n+1)-A033676(2*n+1)`
-/

namespace A377865.P7510293297445724719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (2 * n + 1) - A033676 (2 * n + 1)

end

end A377865.P7510293297445724719

/-!
# A377866: Number of subwords of the form DUUD or DDUUD in nondecreasing Dyck paths of length 2n.

The programs for A377866, the canonical program `A377866.P11288015747233166131` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377866 has offset 0).

The definition of A377866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377866.P11288015747233166131

`A010049(2*A289207(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377866

/-- `A010049(2*A289207(n))` -/
def P11288015747233166131.Spec : Prop :=
  ∀ n, P11288015747233166131.a n = A377866 n

theorem P11288015747233166131.correct : P11288015747233166131.Spec := by
  intro n
  simp only [A377866]

end A377866

/-! ## A377866.P2495182184689090735

`∑[floor(A083382(A090857(n))/3)]`
-/

namespace A377866.P2495182184689090735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083382 (A090857 n).toNat : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377866.P2495182184689090735

namespace A377866

/-- `∑[floor(A083382(A090857(n))/3)]` -/
def P2495182184689090735.Spec : Prop :=
  ∀ n, P2495182184689090735.a n = A377866 n

end A377866

/-! ## A377866.P15584056134562477837

`A001462(A096803(n)+n)-(n+1)`
-/

namespace A377866.P15584056134562477837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A096803 n + (n : ℤ)).toNat - (n + 1 : ℤ)

end

end A377866.P15584056134562477837

namespace A377866

/-- `A001462(A096803(n)+n)-(n+1)` -/
def P15584056134562477837.Spec : Prop :=
  ∀ n, P15584056134562477837.a n = A377866 n

end A377866

/-!
# A377867: Number of subwords of the form DDDD in nondecreasing Dyck paths of length 2n.

The programs for A377867, there is no canonical definition to state claims against.
-/

/-! ## A377867.P5103437993701137449

`A377679(n)-A378383(n)`
-/

namespace A377867.P5103437993701137449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377679 n - A378383 n

end

end A377867.P5103437993701137449

/-! ## A377867.P2707485728217629524

`A085810(A077739(n+1))-A122367(n)`
-/

namespace A377867.P2707485728217629524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A077739 (n + 1)).toNat - A122367 n

end

end A377867.P2707485728217629524

/-! ## A377867.P5669699310405217140

`A141100(A199103(n))`
-/

namespace A377867.P5669699310405217140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A199103 n).toNat

end

end A377867.P5669699310405217140

/-!
# A377868: a(n) = A359550(A276085(n)), where A359550 is multiplicative with a(p^e) = 1 if p > e, otherwise 0, and A276085 is fully additive with a(p) = p#/p.

The programs for A377868, there is no canonical definition to state claims against.
-/

/-! ## A377868.P6090698666751657802

`char[A377869(n+1)-1]`
-/

namespace A377868.P6090698666751657802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A377868.P6090698666751657802

/-! ## A377868.P17031235892267427029

`A112470(A083345(n+1))%2`
-/

namespace A377868.P17031235892267427029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112470 (A083345 (n + 1)).toNat) 2

end

end A377868.P17031235892267427029

/-! ## A377868.P11925341286538605054

`A000035(77*A083345(n+1))`
-/

namespace A377868.P11925341286538605054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (77 * A083345 (n + 1)).toNat

end

end A377868.P11925341286538605054

/-! ## A377868.P2044141612389314736

`and(A083345(n+1), A172196(n))`
-/

namespace A377868.P2044141612389314736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083345 (n + 1)) (A172196 n)

end

end A377868.P2044141612389314736

/-! ## A377868.P16001473859270109238

`and(A083345(n+1), A084508(n))`
-/

namespace A377868.P16001473859270109238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083345 (n + 1)) (A084508 n)

end

end A377868.P16001473859270109238

/-! ## A377868.P9797580088997575145

`and(A083345(n+1), A092896(n))`
-/

namespace A377868.P9797580088997575145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083345 (n + 1)) (A092896 n)

end

end A377868.P9797580088997575145

/-! ## A377868.P14105715135464187608

`and(A052552(n)²², A083345(n+1))`
-/

namespace A377868.P14105715135464187608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A052552 n ^ 2) ^ 2) (A083345 (n + 1))

end

end A377868.P14105715135464187608

/-!
# A377869: Numbers k such that A276085(k) has no divisors of the form p^p, where A276085 is fully additive with a(p) = p#/p.

The programs for A377869, there is no canonical definition to state claims against.
-/

/-! ## A377869.P13140408935863316865

`eq[1, A377868(n+1)]+1`
-/

namespace A377869.P13140408935863316865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377869.P13140408935863316865

/-! ## A377869.P7007549455799347683

`eq[1, A377868(A028310(n))]`
-/

namespace A377869.P7007549455799347683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377869.P7007549455799347683

/-! ## A377869.P12427911799314835659

`eq[1, A377868(A000007(n)+n)]`
-/

namespace A377869.P12427911799314835659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377869.P12427911799314835659

/-!
# A377870: a(n) = A359550(n) * A359550(A276085(n)), where A359550 is multiplicative with a(p^e) = 1 if p > e, otherwise 0, and A276085 is fully additive with a(p) = p#/p.

The programs for A377870, there is no canonical definition to state claims against.
-/

/-! ## A377870.P4419140728145061557

`A359550(n+1)*A377868(n+1)`
-/

namespace A377870.P4419140728145061557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) * A377868 (n + 1)

end

end A377870.P4419140728145061557

/-! ## A377870.P27424763897698138

`A359550(n+1)*A359550(A276085(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377870.P27424763897698138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (n + 1) * A359550 (A276085 (n + 1)).toNat

end

end A377870.P27424763897698138

/-! ## A377870.P14128959630980092448

`Δ[A377983(n)]`
-/

namespace A377870.P14128959630980092448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377870.P14128959630980092448

/-! ## A377870.P18110632624723670772

`char[A377871(n+1)-1]`
-/

namespace A377870.P18110632624723670772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377871 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A377870.P18110632624723670772

/-! ## A377870.P11695666172785729585

`A377983(n+1)-A377983(n)`
-/

namespace A377870.P11695666172785729585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377983 (n + 1) - A377983 n

end

end A377870.P11695666172785729585

/-! ## A377870.P8078813196575482552

`A359550((n+1)*char[A377869(n+1)-1])`
-/

namespace A377870.P8078813196575482552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 ((n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A377870.P8078813196575482552

/-! ## A377870.P10830484224127641231

`A165560(and(n+1, A347706(n+1)-1))`
-/

namespace A377870.P10830484224127641231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (Int.land (n + 1 : ℤ) (A347706 (n + 1) - 1)).toNat

end

end A377870.P10830484224127641231

/-! ## A377870.P9898592373909059645

`and(A165560(A367168(n+1)), A325988(n+1))`
-/

namespace A377870.P9898592373909059645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165560 (A367168 (n + 1)).toNat) (A325988 (n + 1))

end

end A377870.P9898592373909059645

/-! ## A377870.P16586224059904124703

`A165560(A325988(n+1)²*A367168(n+1))`
-/

namespace A377870.P16586224059904124703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A325988 (n + 1) ^ 2 * A367168 (n + 1)).toNat

end

end A377870.P16586224059904124703

/-! ## A377870.P8979506166731736041

`and(A165560((n+1)*A365297(n+1)), A325988(n+1))`
-/

namespace A377870.P8979506166731736041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165560 ((n + 1 : ℤ) * A365297 (n + 1)).toNat) (A325988 (n + 1))

end

end A377870.P8979506166731736041

/-!
# A377871: Numbers k such that neither k nor A276085(k) has divisors of the form p^p, where A276085 is fully additive with a(p) = p#/p.

The programs for A377871, there is no canonical definition to state claims against.
-/

/-! ## A377871.P15629702765521832353

`eq[1, A377870(n+1)]+1`
-/

namespace A377871.P15629702765521832353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377871.P15629702765521832353

/-! ## A377871.P9816397094700882385

`filter[A235991(n+1), A377870(#)]`
-/

namespace A377871.P9816397094700882385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P9816397094700882385

/-! ## A377871.P7119635078323547651

`filter[A359782(n+1), A377870(#)]`
-/

namespace A377871.P7119635078323547651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P7119635078323547651

/-! ## A377871.P14036083535127427545

`filter[A368999(n+1), A377870(#)]`
-/

namespace A377871.P14036083535127427545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P14036083535127427545

/-! ## A377871.P12316659505953638893

`filter[A373376(n+1), A377870(#)]`
-/

namespace A377871.P12316659505953638893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P12316659505953638893

/-! ## A377871.P2869888944513502338

`filter[A377869(n+1), A359550(#)]`
-/

namespace A377871.P2869888944513502338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A377871.P2869888944513502338

/-! ## A377871.P16969298912649285035

`filter[A377869(n+1), A377870(#)]`
-/

namespace A377871.P16969298912649285035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P16969298912649285035

/-! ## A377871.P1426739218440643560

`filter[A369003(n+1), A377870(#)]`
-/

namespace A377871.P1426739218440643560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P1426739218440643560

/-! ## A377871.P10976236779283156740

`filter[A048103(n+1), A377868(#)]`
-/

namespace A377871.P10976236779283156740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377868 (f1 j).toNat = 1) n)

end

end A377871.P10976236779283156740

/-! ## A377871.P7959935012736969037

`filter[A048103(n+1), A377870(#)]`
-/

namespace A377871.P7959935012736969037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P7959935012736969037

/-! ## A377871.P4041237091312590198

`∩[A048103(n+1), A377869(n+1)]`
-/

namespace A377871.P4041237091312590198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377871.P4041237091312590198

/-! ## A377871.P8999284398035910011

`filter[A042968(n+1), A377870(#)]`
-/

namespace A377871.P8999284398035910011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P8999284398035910011

/-! ## A377871.P11237748698311081167

`filter[A359794(n+2), A377870(#)]`
-/

namespace A377871.P11237748698311081167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P11237748698311081167

/-! ## A377871.P11607645977108786906

`filter[A047592(n+1), A377870(#)]`
-/

namespace A377871.P11607645977108786906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P11607645977108786906

/-! ## A377871.P5381725192300425095

`filter[A110303(n+1), A377870(#)]`
-/

namespace A377871.P5381725192300425095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P5381725192300425095

/-! ## A377871.P5083318824699107846

`filter[A000037(n+1), A377870(#)]`
-/

namespace A377871.P5083318824699107846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P5083318824699107846

/-! ## A377871.P9481166236384907979

`filter[A068938(n+1), A377870(#)]`
-/

namespace A377871.P9481166236384907979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P9481166236384907979

/-! ## A377871.P15188612649410975411

`filter[A068937(n+1), A377870(#)]`
-/

namespace A377871.P15188612649410975411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A377871.P15188612649410975411

/-!
# A377872: Numbers k for which A276085(k) is a multiple of 27, where A276085 is fully additive with a(p) = p#/p.

The programs for A377872, there is no canonical definition to state claims against.
-/

/-! ## A377872.P14615451493795690918

`A176255(n+1)%A123105(3*n)`
-/

namespace A377872.P14615451493795690918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176255 (n + 1)) (A123105 (3 * n + 31))

end

end A377872.P14615451493795690918

/-!
# A377873: Numbers k such that A276085(k) has at least one divisor of the form p^p, where A276085 is fully additive with a(p) = p#/p.

The programs for A377873, there is no canonical definition to state claims against.
-/

/-! ## A377873.P11477718627531280887

`eq[0, A377868(n+1)]+1`
-/

namespace A377873.P11477718627531280887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377873.P11477718627531280887

/-! ## A377873.P1943892177094224832

`comp[A000027(n+1)*A377868(n+1)]`
-/

namespace A377873.P1943892177094224832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A377868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377873.P1943892177094224832

/-!
# A377874: 

The programs for A377874, there is no canonical definition to state claims against.
-/

/-! ## A377874.P7069178578801249354

`1-A369001(n+1)`
-/

namespace A377874.P7069178578801249354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A369001 (n + 1)

end

end A377874.P7069178578801249354

/-! ## A377874.P4875548942913008472

`A000035(A083345(n+1))`
-/

namespace A377874.P4875548942913008472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A083345 (n + 1)).toNat

end

end A377874.P4875548942913008472

/-! ## A377874.P6707698095064088423

`A373377(n+1)%2`
-/

namespace A377874.P6707698095064088423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373377 (n + 1)) 2

end

end A377874.P6707698095064088423

/-! ## A377874.P3097514842211297294

`A373485(n+1)%2`
-/

namespace A377874.P3097514842211297294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373485 (n + 1)) 2

end

end A377874.P3097514842211297294

/-! ## A377874.P1675752053315220829

`1-A373141(3*(n+1))`
-/

namespace A377874.P1675752053315220829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A373141 (3 * (n + 1))

end

end A377874.P1675752053315220829

/-! ## A377874.P10591899469918168750

`A000035(A373377(n+1))`
-/

namespace A377874.P10591899469918168750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A373377 (n + 1)).toNat

end

end A377874.P10591899469918168750

/-! ## A377874.P6052246129182630603

`A000035(A373485(n+1))`
-/

namespace A377874.P6052246129182630603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A373485 (n + 1)).toNat

end

end A377874.P6052246129182630603

/-! ## A377874.P8384009309989193447

`A166486(A372576(n+1))`
-/

namespace A377874.P8384009309989193447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A372576 (n + 1)).toNat

end

end A377874.P8384009309989193447

/-! ## A377874.P14568943209939031098

`A165560(A392879(n+1))`
-/

namespace A377874.P14568943209939031098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A392879 (n + 1)).toNat

end

end A377874.P14568943209939031098

/-! ## A377874.P9842028750767428314

`A152822(A372576(n+1)+2)`
-/

namespace A377874.P9842028750767428314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A372576 (n + 1) + 2).toNat

end

end A377874.P9842028750767428314

/-! ## A377874.P10297965391499372877

`A373141(n+1)+A096268(n)`
-/

namespace A377874.P10297965391499372877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373141 (n + 1) + A096268 n

end

end A377874.P10297965391499372877

/-! ## A377874.P111630904489494595

`and(A054977(n), A083345(n+1))`
-/

namespace A377874.P111630904489494595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A083345 (n + 1))

end

end A377874.P111630904489494595

/-! ## A377874.P2682730919797635420

`and(A057427(n), A083345(n+1))`
-/

namespace A377874.P2682730919797635420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A083345 (n + 1))

end

end A377874.P2682730919797635420

/-! ## A377874.P10833096346624580092

`A035263(A369001(n+1)+2*n+1)`
-/

namespace A377874.P10833096346624580092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A369001 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A377874.P10833096346624580092

/-! ## A377874.P5919137279829016181

`A373141(n+1)+A035263(2*(n+1))`
-/

namespace A377874.P5919137279829016181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373141 (n + 1) + A035263 (2 * (n + 1))

end

end A377874.P5919137279829016181

/-! ## A377874.P5630830310612796198

`A121262((2*n+1)*A369001(n+1))`
-/

namespace A377874.P5630830310612796198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 ((2 * n + 1 : ℤ) * A369001 (n + 1)).toNat

end

end A377874.P5630830310612796198

/-! ## A377874.P1083932366965980410

`∑{d}[n+1, A008683(#)*A378445((n+1)/#)]`
-/

namespace A377874.P1083932366965980410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377874.P1083932366965980410

/-! ## A377874.P3896110191031140520

`∑{d}[n+1, A055615(#)*A378547((n+1)/#)]`
-/

namespace A377874.P3896110191031140520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A378547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A377874.P3896110191031140520

/-! ## A377874.P3926641324172889957

`A059841(A369001(n+1)+2*n)`
-/

namespace A377874.P3926641324172889957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A369001 (n + 1) + (2 * n : ℤ)).toNat

end

end A377874.P3926641324172889957

/-!
# A377876: The n-th primorial number reduced modulo 27.

The programs for A377876, the canonical program `A377876.P4332793020141651312` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377876 has offset 0).

The definition of A377876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377876.P4332793020141651312

`A002110(n)%27`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377876

/-- `A002110(n)%27` -/
def P4332793020141651312.Spec : Prop :=
  ∀ n, P4332793020141651312.a n = A377876 n

theorem P4332793020141651312.correct : P4332793020141651312.Spec := by
  intro n
  simp only [A377876]

end A377876

/-! ## A377876.P15622840114693021267

`(a(n-1)*record[∑{p}[n, #]])%27` with `a(0)=1`
-/

namespace A377876.P15622840114693021267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % 27

end

end A377876.P15622840114693021267

namespace A377876

/-- `(a(n-1)*record[∑{p}[n, #]])%27` -/
def P15622840114693021267.Spec : Prop :=
  ∀ n, (P15622840114693021267.a n : ℤ) = A377876 n

end A377876

/-! ## A377876.P13007884906158297511

`∏[eq[n, ∏{d}[n, #]]]%27`
-/

namespace A377876.P13007884906158297511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % 27

end

end A377876.P13007884906158297511

namespace A377876

/-- `∏[eq[n, ∏{d}[n, #]]]%27` -/
def P13007884906158297511.Spec : Prop :=
  ∀ n, (P13007884906158297511.a n : ℤ) = A377876 n

end A377876

/-! ## A377876.P18176726744915023191

`A276085(A000040(n+1))%27`
-/

namespace A377876.P18176726744915023191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (A000040 (n + 1)).toNat) 27

end

end A377876.P18176726744915023191

namespace A377876

/-- `A276085(A000040(n+1))%27` -/
def P18176726744915023191.Spec : Prop :=
  ∀ n, P18176726744915023191.a n = A377876 n

end A377876

/-!
# A377877: The n-th primorial number reduced modulo 3125.

The programs for A377877, there is no canonical definition to state claims against.
-/

/-! ## A377877.P6161482989792955555

`A019554(A002110(n)%A039936(3*n+5))`
-/

namespace A377877.P6161482989792955555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.tmod (A002110 n) (A039936 (3 * n + 5))).toNat

end

end A377877.P6161482989792955555

/-! ## A377877.P10614914605312200944

`A002110(n)%A255458(A280208(n+1))`
-/

namespace A377877.P10614914605312200944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) (A255458 (A280208 (n + 1)).toNat)

end

end A377877.P10614914605312200944

/-! ## A377877.P12275863317508223304

`A136351(n+1)%A003398(n+1)`
-/

namespace A377877.P12275863317508223304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136351 (n + 1)) (A003398 (n + 1))

end

end A377877.P12275863317508223304

/-!
# A377879: Deficiency of squares: a(n) = 2n^2 - sigma(n^2).

The programs for A377879, the canonical program `A377879.P1126299264812417651` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377879 has offset 1).

The definition of A377879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-A000203((n+1)²)` (program `A377879.P1126299264812417651`, by `A377879.P1126299264812417651.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A377879.P1126299264812417651

`2*(n+1)²-A000203((n+1)²)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377879

/-- `2*(n+1)²-A000203((n+1)²)` -/
def P1126299264812417651.Spec : Prop :=
  ∀ n, P1126299264812417651.a n = A377879 (n + 1)

theorem P1126299264812417651.correct : P1126299264812417651.Spec := by
  intro n
  simp only [A377879, Nat.add_sub_cancel]

end A377879

/-! ## A377879.P14705173764961041786

`A033879((n+1)*(n+1))`
-/

namespace A377879.P14705173764961041786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 ((n + 1) * (n + 1))

end

end A377879.P14705173764961041786

namespace A377879

/-- `A033879((n+1)*(n+1))` -/
def P14705173764961041786.Spec : Prop :=
  ∀ n, P14705173764961041786.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P13907660082232775425

`(n+1)²+(n+1)²-A065764(n+1)`
-/

namespace A377879.P13907660082232775425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - A065764 (n + 1))

end

end A377879.P13907660082232775425

namespace A377879

/-- `(n+1)²+(n+1)²-A065764(n+1)` -/
def P13907660082232775425.Spec : Prop :=
  ∀ n, P13907660082232775425.a n = A377879 (n + 1)

theorem P13907660082232775425.correct : P13907660082232775425.Spec := by
  intro n
  simp only [A377879, Nat.add_sub_cancel, A377879.P13907660082232775425.a, A377879.P1126299264812417651.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065764, A065764.P16236740945723656355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377879

/-! ## A377879.P16964605537014958546

`A002618(n+1)-A228498(n+1)`
-/

namespace A377879.P16964605537014958546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) - A228498 (n + 1)

end

end A377879.P16964605537014958546

namespace A377879

/-- `A002618(n+1)-A228498(n+1)` -/
def P16964605537014958546.Spec : Prop :=
  ∀ n, P16964605537014958546.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P1117334512642288474

`A001105(n+1)-A065764(n+1)`
-/

namespace A377879.P1117334512642288474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) - A065764 (n + 1)

end

end A377879.P1117334512642288474

namespace A377879

/-- `A001105(n+1)-A065764(n+1)` -/
def P1117334512642288474.Spec : Prop :=
  ∀ n, P1117334512642288474.a n = A377879 (n + 1)

theorem P1117334512642288474.correct : P1117334512642288474.Spec := by
  intro n
  simp only [A377879, Nat.add_sub_cancel, A377879.P1117334512642288474.a, A377879.P1126299264812417651.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001105, A001105.P6098599260439307493.a, A065764, A065764.P16236740945723656355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A377879

/-! ## A377879.P7272037292405050170

`∑[A004277(2*n+1)]-A065764(n+1)`
-/

namespace A377879.P7272037292405050170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065764 (n + 1)

end

end A377879.P7272037292405050170

namespace A377879

/-- `∑[A004277(2*n+1)]-A065764(n+1)` -/
def P7272037292405050170.Spec : Prop :=
  ∀ n, P7272037292405050170.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P18078335307521070028

`∑[A005843(2*n+1)]-A065764(n+1)`
-/

namespace A377879.P18078335307521070028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065764 (n + 1)

end

end A377879.P18078335307521070028

namespace A377879

/-- `∑[A005843(2*n+1)]-A065764(n+1)` -/
def P18078335307521070028.Spec : Prop :=
  ∀ n, P18078335307521070028.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P12703908374129902415

`(n+1)²-A326053((n+1)²)`
-/

namespace A377879.P12703908374129902415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A326053 ((n + 1) ^ 2)

end

end A377879.P12703908374129902415

namespace A377879

/-- `(n+1)²-A326053((n+1)²)` -/
def P12703908374129902415.Spec : Prop :=
  ∀ n, P12703908374129902415.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P11598059464040273381

`(n+1)²-A326184((n+1)²)`
-/

namespace A377879.P11598059464040273381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A326184 ((n + 1) ^ 2)

end

end A377879.P11598059464040273381

namespace A377879

/-- `(n+1)²-A326184((n+1)²)` -/
def P11598059464040273381.Spec : Prop :=
  ∀ n, P11598059464040273381.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P3751258565410788174

`-A326054((n+1)²)`
-/

namespace A377879.P3751258565410788174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A326054 ((n + 1) ^ 2)

end

end A377879.P3751258565410788174

namespace A377879

/-- `-A326054((n+1)²)` -/
def P3751258565410788174.Spec : Prop :=
  ∀ n, P3751258565410788174.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P15623256783135432224

`-A326185((n+1)²)`
-/

namespace A377879.P15623256783135432224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A326185 ((n + 1) ^ 2)

end

end A377879.P15623256783135432224

namespace A377879

/-- `-A326185((n+1)²)` -/
def P15623256783135432224.Spec : Prop :=
  ∀ n, P15623256783135432224.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P2973820892785869248

`A117966(A295882((n+1)²))`
-/

namespace A377879.P2973820892785869248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 ((n + 1) ^ 2)).toNat

end

end A377879.P2973820892785869248

namespace A377879

/-- `A117966(A295882((n+1)²))` -/
def P2973820892785869248.Spec : Prop :=
  ∀ n, P2973820892785869248.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P7053619525972445733

`-A033880((n+1)²)`
-/

namespace A377879.P7053619525972445733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 ((n + 1) ^ 2)

end

end A377879.P7053619525972445733

namespace A377879

/-- `-A033880((n+1)²)` -/
def P7053619525972445733.Spec : Prop :=
  ∀ n, P7053619525972445733.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P17237652514934478101

`A235796((n+1)²)+1`
-/

namespace A377879.P17237652514934478101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 ((n + 1) ^ 2) + 1

end

end A377879.P17237652514934478101

namespace A377879

/-- `A235796((n+1)²)+1` -/
def P17237652514934478101.Spec : Prop :=
  ∀ n, P17237652514934478101.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P13823464055793531573

`1-A237588((n+1)²)`
-/

namespace A377879.P13823464055793531573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237588 ((n + 1) ^ 2)

end

end A377879.P13823464055793531573

namespace A377879

/-- `1-A237588((n+1)²)` -/
def P13823464055793531573.Spec : Prop :=
  ∀ n, P13823464055793531573.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P14369631648524317633

`(n+1)²-A001065((n+1)²)`
-/

namespace A377879.P14369631648524317633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A001065 ((n + 1) ^ 2)

end

end A377879.P14369631648524317633

namespace A377879

/-- `(n+1)²-A001065((n+1)²)` -/
def P14369631648524317633.Spec : Prop :=
  ∀ n, P14369631648524317633.a n = A377879 (n + 1)

end A377879

/-! ## A377879.P7630389206268017083

`A033885((n+1)²)-(n+1)²`
-/

namespace A377879.P7630389206268017083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A377879.P7630389206268017083

namespace A377879

/-- `A033885((n+1)²)-(n+1)²` -/
def P7630389206268017083.Spec : Prop :=
  ∀ n, P7630389206268017083.a n = A377879 (n + 1)

end A377879

/-!
# A377880: Nonprime cubefree numbers.

The programs for A377880, the canonical program `A377880.P16509850841699067558` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377880 has offset 1).

The definition of A377880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377880.P9704964618316876388

`filter[A018252(n+1), A212793(#)]`
-/

namespace A377880.P9704964618316876388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A377880.P9704964618316876388

namespace A377880

/-- `filter[A018252(n+1), A212793(#)]` -/
def P9704964618316876388.Spec : Prop :=
  ∀ n, P9704964618316876388.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P13398222970486233391

`filter[A141468(n+2), A212793(#)]`
-/

namespace A377880.P13398222970486233391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A377880.P13398222970486233391

namespace A377880

/-- `filter[A141468(n+2), A212793(#)]` -/
def P13398222970486233391.Spec : Prop :=
  ∀ n, P13398222970486233391.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P8919642395368440704

`filter[A222307(2*n+1), A212793(#)]`
-/

namespace A377880.P8919642395368440704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A377880.P8919642395368440704

namespace A377880

/-- `filter[A222307(2*n+1), A212793(#)]` -/
def P8919642395368440704.Spec : Prop :=
  ∀ n, P8919642395368440704.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P16509850841699067558

`∪[A000469(n+1), A067259(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A377880

/-- `∪[A000469(n+1), A067259(n+1)]` -/
def P16509850841699067558.Spec : Prop :=
  ∀ n, (P16509850841699067558.a n : ℤ) = A377880 (n + 1)

theorem P16509850841699067558.correct : P16509850841699067558.Spec := by
  intro n
  simp only [A377880, Nat.add_sub_cancel]

end A377880

/-! ## A377880.P15618848276759938398

`∪[A062503(n+1), A390289(n+1)]`
-/

namespace A377880.P15618848276759938398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P15618848276759938398

namespace A377880

/-- `∪[A062503(n+1), A390289(n+1)]` -/
def P15618848276759938398.Spec : Prop :=
  ∀ n, (P15618848276759938398.a n : ℤ) = A377880 (n + 1)

end A377880

/-! ## A377880.P16807229406360477118

`filter[A004709(n+1), A005171(#)]`
-/

namespace A377880.P16807229406360477118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A377880.P16807229406360477118

namespace A377880

/-- `filter[A004709(n+1), A005171(#)]` -/
def P16807229406360477118.Spec : Prop :=
  ∀ n, P16807229406360477118.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P207954771692361323

`∩[A004709(n+1), A018252(n+1)]`
-/

namespace A377880.P207954771692361323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P207954771692361323

namespace A377880

/-- `∩[A004709(n+1), A018252(n+1)]` -/
def P207954771692361323.Spec : Prop :=
  ∀ n, (P207954771692361323.a n : ℤ) = A377880 (n + 1)

end A377880

/-! ## A377880.P4807412088618407146

`∩[A004709(n+1), A141468(n+1)]`
-/

namespace A377880.P4807412088618407146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377880.P4807412088618407146

namespace A377880

/-- `∩[A004709(n+1), A141468(n+1)]` -/
def P4807412088618407146.Spec : Prop :=
  ∀ n, (P4807412088618407146.a n : ℤ) = A377880 (n + 1)

end A377880

/-! ## A377880.P2391597118057555009

`record[A007948(A005451(n+1))]`
-/

namespace A377880.P2391597118057555009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A005451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377880.P2391597118057555009

namespace A377880

/-- `record[A007948(A005451(n+1))]` -/
def P2391597118057555009.Spec : Prop :=
  ∀ n, P2391597118057555009.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P11282104229375405102

`record[A007948(A018252(n+1))]`
-/

namespace A377880.P11282104229375405102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377880.P11282104229375405102

namespace A377880

/-- `record[A007948(A018252(n+1))]` -/
def P11282104229375405102.Spec : Prop :=
  ∀ n, P11282104229375405102.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P1005456064812692515

`record[A007948(A141468(n+2))]`
-/

namespace A377880.P1005456064812692515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A141468 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377880.P1005456064812692515

namespace A377880

/-- `record[A007948(A141468(n+2))]` -/
def P1005456064812692515.Spec : Prop :=
  ∀ n, P1005456064812692515.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P16883990206475655715

`record[A050985(n+1)%A151800(n)]`
-/

namespace A377880.P16883990206475655715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050985 (n + 1)) (A151800 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377880.P16883990206475655715

namespace A377880

/-- `record[A050985(n+1)%A151800(n)]` -/
def P16883990206475655715.Spec : Prop :=
  ∀ n, P16883990206475655715.a n = A377880 (n + 1)

end A377880

/-! ## A377880.P16030207152563374746

`filter[A073846(2*n+1), A212793(#)]`
-/

namespace A377880.P16030207152563374746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A377880.P16030207152563374746

namespace A377880

/-- `filter[A073846(2*n+1), A212793(#)]` -/
def P16030207152563374746.Spec : Prop :=
  ∀ n, P16030207152563374746.a n = A377880 (n + 1)

end A377880

/-!
# A377881: Number of ordered pairs of real n X n (0,1)-matrices that satisfy the equation A + B = A * B.

The programs for A377881, there is no canonical definition to state claims against.
-/

/-! ## A377881.P17167110349227486104

`A033950(∏[n!])`
-/

namespace A377881.P17167110349227486104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A377881.P17167110349227486104

/-!
# A377882: Numbers i for which A194627(i) is prime.

The programs for A377882, there is no canonical definition to state claims against.
-/

/-! ## A377882.P13656651572936774118

`A063772(A377791(n+1))`
-/

namespace A377882.P13656651572936774118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A377791 (n + 1)).toNat

end

end A377882.P13656651572936774118

/-!
# A377883: Cogrowth sequence of the 16-element modular group M4(2) = <S,T | S^8, T^2, STS^3T>.

The programs for A377883, the canonical program `A377883.P11929721113300965405` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377883 has offset 0).

The definition of A377883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377883.P11929721113300965405

`A377946(n)-A038505(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A377883

/-- `A377946(n)-A038505(n)` -/
def P11929721113300965405.Spec : Prop :=
  ∀ n, P11929721113300965405.a n = A377883 n

theorem P11929721113300965405.correct : P11929721113300965405.Spec := by
  intro n
  simp only [A377883]

end A377883

/-! ## A377883.P1085949044134976402

`A104737(2^n)-∑[∑[n]]`
-/

namespace A377883.P1085949044134976402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104737 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A377883.P1085949044134976402

namespace A377883

/-- `A104737(2^n)-∑[∑[n]]` -/
def P1085949044134976402.Spec : Prop :=
  ∀ n, P1085949044134976402.a n = A377883 n

end A377883

/-!
# A377884: Composite numbers k without prime factors that are divisors of the greatest primorial less than k.

The programs for A377884, there is no canonical definition to state claims against.
-/

/-! ## A377884.P12592088339735875998

`filter[A335284(n+1), A005171(#)]`
-/

namespace A377884.P12592088339735875998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A377884.P12592088339735875998

/-! ## A377884.P14077732265849784291

`filter[A335284(n+1), A064911(#)]`
-/

namespace A377884.P14077732265849784291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A377884.P14077732265849784291

/-! ## A377884.P4881885984679939274

`filter[A335284(n+1), A065043(#)]`
-/

namespace A377884.P4881885984679939274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A377884.P4881885984679939274

/-! ## A377884.P14411170176634311844

`filter[A335284(n+1), A066247(#)]`
-/

namespace A377884.P14411170176634311844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A377884.P14411170176634311844

/-! ## A377884.P4247651968466173250

`filter[A335284(n+1), A174898(#)]`
-/

namespace A377884.P4247651968466173250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A377884.P4247651968466173250

/-! ## A377884.P6256460544564424307

`filter[A335284(n+1), A202238(#)]`
-/

namespace A377884.P6256460544564424307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A377884.P6256460544564424307

/-! ## A377884.P2185552229523973817

`filter[A251728(n+1), A355820(#)]`
-/

namespace A377884.P2185552229523973817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A377884.P2185552229523973817

/-! ## A377884.P13071154130880209695

`filter[A335284(n+1), A292438(#)]`
-/

namespace A377884.P13071154130880209695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A377884.P13071154130880209695

/-! ## A377884.P10260676616013467049

`filter[A335284(n+1), A323162(#)]`
-/

namespace A377884.P10260676616013467049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A377884.P10260676616013467049

/-! ## A377884.P13674415865034710216

`filter[A335284(n+1), A353374(#)]`
-/

namespace A377884.P13674415865034710216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A377884.P13674415865034710216

/-!
# A377885: Cogrowth sequence of the 16-element quasihedral group SD16 = <S,T | S^8, T^2, STS^5T>.

The programs for A377885, there is no canonical definition to state claims against.
-/

/-! ## A377885.P9028006057979218799

`A073121(A024493(n))`
-/

namespace A377885.P9028006057979218799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073121 (A024493 n).toNat

end

end A377885.P9028006057979218799

/-! ## A377885.P15708533058879654230

`A248375(A024493(n)²)`
-/

namespace A377885.P15708533058879654230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A024493 n ^ 2).toNat

end

end A377885.P15708533058879654230

/-! ## A377885.P1956280568567753828

`A248375(A024493(n)^2)`
-/

namespace A377885.P1956280568567753828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A024493 n ^ 2).toNat

end

end A377885.P1956280568567753828

/-! ## A377885.P4260486626826892710

`A032742(A138230(n)+A034008(2*n))`
-/

namespace A377885.P4260486626826892710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A138230 n + A034008 (2 * n)).toNat

end

end A377885.P4260486626826892710

/-!
# A377888: E.g.f. A(x) satisfies A(x) = exp(x * A(x))/(1 - x*A(x)^2).

The programs for A377888, there is no canonical definition to state claims against.
-/

/-! ## A377888.P10847731957010091490

`A186891(A009144(n))`
-/

namespace A377888.P10847731957010091490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (A009144 n).toNat

end

end A377888.P10847731957010091490

/-!
# A377890: E.g.f. A(x) satisfies A(x) = (1 + x*A(x)^2) * exp(x * A(x)).

The programs for A377890, there is no canonical definition to state claims against.
-/

/-! ## A377890.P9896728379297548441

`A340385(∑{d}[n+1, #]%30*A290966(n+1))`
-/

namespace A377890.P9896728379297548441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340385 ((((∑ d ∈ Nat.divisors (f1 n), d) % 30 : ℕ) : ℤ) * A290966 (n + 1)).toNat

end

end A377890.P9896728379297548441

/-!
# A377894: E.g.f. satisfies A(x) = (1 + x) * exp(x * A(x)^2).

The programs for A377894, there is no canonical definition to state claims against.
-/

/-! ## A377894.P11502224498593227605

`A096432(A307539(n))-A228866(n)`
-/

namespace A377894.P11502224498593227605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096432 (A307539 n).toNat - A228866 n

end

end A377894.P11502224498593227605

/-!
# A377896: a(n) is the number of occurrences of n in A377862.

The programs for A377896, there is no canonical definition to state claims against.
-/

/-! ## A377896.P73828444429192456

`A001462(n+1)%A369603(A006530(3*n+4))`
-/

namespace A377896.P73828444429192456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (n + 1)) (A369603 (A006530 (3 * n + 4)).toNat)

end

end A377896.P73828444429192456

/-! ## A377896.P12519165114875822161

`A007376(A001462(n+1)%A089473(n+2))`
-/

namespace A377896.P12519165114875822161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A001462 (n + 1)) (A089473 (n + 2))).toNat

end

end A377896.P12519165114875822161

/-!
# A377897: Numbers k such that k + PrimePi(k) is even.

The programs for A377897, the canonical program `A377897.P9367662986809864385` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377897 has offset 1).

The definition of A377897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377897.P5823452403099582692

`n+4-A071986(2*(n+2))+n`
-/

namespace A377897.P5823452403099582692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A071986 (2 * (n + 2)) + (n : ℤ)

end

end A377897.P5823452403099582692

namespace A377897

/-- `n+4-A071986(2*(n+2))+n` -/
def P5823452403099582692.Spec : Prop :=
  ∀ n, P5823452403099582692.a n = A377897 (n + 1)

end A377897

/-! ## A377897.P9367662986809864385

`eq[A131378(n), A135528(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A377897

/-- `eq[A131378(n), A135528(n+1)]` -/
def P9367662986809864385.Spec : Prop :=
  ∀ n, (P9367662986809864385.a n : ℤ) = A377897 (n + 1)

theorem P9367662986809864385.correct : P9367662986809864385.Spec := by
  intro n
  simp only [A377897, Nat.add_sub_cancel]

end A377897

/-! ## A377897.P6214963084557706074

`eq[A131378(n), A215036(n+1)]`
-/

namespace A377897.P6214963084557706074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377897.P6214963084557706074

namespace A377897

/-- `eq[A131378(n), A215036(n+1)]` -/
def P6214963084557706074.Spec : Prop :=
  ∀ n, (P6214963084557706074.a n : ℤ) = A377897 (n + 1)

end A377897

/-! ## A377897.P4027297046775278523

`eq[1, A215036(n+1)+A131377(n)]`
-/

namespace A377897.P4027297046775278523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215036 (n + 1) + A131377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377897.P4027297046775278523

namespace A377897

/-- `eq[1, A215036(n+1)+A131377(n)]` -/
def P4027297046775278523.Spec : Prop :=
  ∀ n, (P4027297046775278523.a n : ℤ) = A377897 (n + 1)

end A377897

/-! ## A377897.P7013658657047807442

`eq[(A000720(n+1)+1)%2, A000035(n)]+1`
-/

namespace A377897.P7013658657047807442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (n + 1) + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377897.P7013658657047807442

namespace A377897

/-- `eq[(A000720(n+1)+1)%2, A000035(n)]+1` -/
def P7013658657047807442.Spec : Prop :=
  ∀ n, (P7013658657047807442.a n : ℤ) = A377897 (n + 1)

end A377897

/-! ## A377897.P7565132183233446558

`lt[1, A261736(A095117(n))]`
-/

namespace A377897.P7565132183233446558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261736 (A095117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377897.P7565132183233446558

namespace A377897

/-- `lt[1, A261736(A095117(n))]` -/
def P7565132183233446558.Spec : Prop :=
  ∀ n, (P7565132183233446558.a n : ℤ) = A377897 (n + 1)

end A377897

/-! ## A377897.P1914043513274951649

`eq[1, A107393(A026233(n+1)²)]`
-/

namespace A377897.P1914043513274951649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A026233 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377897.P1914043513274951649

namespace A377897

/-- `eq[1, A107393(A026233(n+1)²)]` -/
def P1914043513274951649.Spec : Prop :=
  ∀ n, (P1914043513274951649.a n : ℤ) = A377897 (n + 1)

end A377897

/-!
# A377898: A121053 sorted into increasing order, or, equivalently, the indices of prime terms in A121053.

The programs for A377898, there is no canonical definition to state claims against.
-/

/-! ## A377898.P208660178695974334

`A377902(n)+a(n-1)` with `a(0)=1`
-/

namespace A377898.P208660178695974334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377902 n + a (n - 1)

end

end A377898.P208660178695974334

/-! ## A377898.P18243841085309049433

`comp[(n%2)^n*A002808(n+1)]`
-/

namespace A377898.P18243841085309049433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 2) ^ n : ℕ) : ℤ) * A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377898.P18243841085309049433

/-! ## A377898.P11508212929216227692

`comp[A072668(A131055(n+1))]+1`
-/

namespace A377898.P11508212929216227692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (A131055 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377898.P11508212929216227692

/-! ## A377898.P6450392279096015742

`comp[A002808(n+1)*A288697(n)]`
-/

namespace A377898.P6450392279096015742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A288697 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A377898.P6450392279096015742

/-! ## A377898.P11326578620242110603

`eq[1, A001222(A121053(n+1))]+1`
-/

namespace A377898.P11326578620242110603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A121053 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377898.P11326578620242110603

/-! ## A377898.P11614448077624952521

`comp[A002808(A348717(n+1))-1]+1`
-/

namespace A377898.P11614448077624952521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A348717 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377898.P11614448077624952521

/-! ## A377898.P4373450012332291929

`∪[A002808(2*n+3), A008578(n+1)]`
-/

namespace A377898.P4373450012332291929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377898.P4373450012332291929

/-! ## A377898.P15082341074008614525

`∪[A018252(2*(n+2)), record[A006530(n+1)]]`
-/

namespace A377898.P15082341074008614525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377898.P15082341074008614525

/-! ## A377898.P3012564931826743063

`∪[A018252(2*(n+2)), record[A014963(n+1)]]`
-/

namespace A377898.P3012564931826743063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 2))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377898.P3012564931826743063

/-! ## A377898.P12675501117359320018

`∪[A000040(n+1), A018252(A103517(n))]`
-/

namespace A377898.P12675501117359320018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A103517 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A377898.P12675501117359320018

/-!
# A377899: a(n) = number of composite numbers c_{2*k+1} <= n, where c_m = A002808(m) is the m-th composite number.

The programs for A377899, the canonical program `A377899.P15230961924577883064` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377899 has offset 1).

The definition of A377899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377899.P15230961924577883064

`floor((n+1-A000720(n+1))/2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A377899

/-- `floor((n+1-A000720(n+1))/2)` -/
def P15230961924577883064.Spec : Prop :=
  ∀ n, P15230961924577883064.a n = A377899 (n + 1)

theorem P15230961924577883064.correct : P15230961924577883064.Spec := by
  intro n
  simp only [A377899, Nat.add_sub_cancel]

end A377899

/-! ## A377899.P20708900698043658

`floor(∑[∏{p}[n+1, C(#%n, #)]/2])`
-/

namespace A377899.P20708900698043658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A377899.P20708900698043658

namespace A377899

/-- `floor(∑[∏{p}[n+1, C(#%n, #)]/2])` -/
def P20708900698043658.Spec : Prop :=
  ∀ n, P20708900698043658.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P17106955098504324030

`ceil((n+1-∑[C(2, ∑{e}[n+1, #+1])])/2)`
-/

namespace A377899.P17106955098504324030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2⌉

end

end A377899.P17106955098504324030

namespace A377899

/-- `ceil((n+1-∑[C(2, ∑{e}[n+1, #+1])])/2)` -/
def P17106955098504324030.Spec : Prop :=
  ∀ n, P17106955098504324030.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P1742849437870981827

`round((n+1-∑[C(2, ∑{e}[n+1, #+1])])/2)`
-/

namespace A377899.P1742849437870981827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2)

end

end A377899.P1742849437870981827

namespace A377899

/-- `round((n+1-∑[C(2, ∑{e}[n+1, #+1])])/2)` -/
def P1742849437870981827.Spec : Prop :=
  ∀ n, P1742849437870981827.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P17100761731697320377

`∑[char[A072668(or(1, n))]]`
-/

namespace A377899.P17100761731697320377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377899.P17100761731697320377

namespace A377899

/-- `∑[char[A072668(or(1, n))]]` -/
def P17100761731697320377.Spec : Prop :=
  ∀ n, (P17100761731697320377.a n : ℤ) = A377899 (n + 1)

end A377899

/-! ## A377899.P5088339487503976610

`floor(A062298(n+1)/2)`
-/

namespace A377899.P5088339487503976610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062298 (n + 1) : ℚ) / 2⌋

end

end A377899.P5088339487503976610

namespace A377899

/-- `floor(A062298(n+1)/2)` -/
def P5088339487503976610.Spec : Prop :=
  ∀ n, P5088339487503976610.a n = A377899 (n + 1)

theorem P5088339487503976610.correct : P5088339487503976610.Spec := by
  intro n
  simp only [A377899, Nat.add_sub_cancel, A377899.P5088339487503976610.a, A377899.P15230961924577883064.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A377899

/-! ## A377899.P9821811880046367706

`ceil(A065855(n+1)/2)`
-/

namespace A377899.P9821811880046367706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065855 (n + 1) : ℚ) / 2⌉

end

end A377899.P9821811880046367706

namespace A377899

/-- `ceil(A065855(n+1)/2)` -/
def P9821811880046367706.Spec : Prop :=
  ∀ n, P9821811880046367706.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P8531730510926653093

`∑[char[A060462(2*(n+1))]]`
-/

namespace A377899.P8531730510926653093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377899.P8531730510926653093

namespace A377899

/-- `∑[char[A060462(2*(n+1))]]` -/
def P8531730510926653093.Spec : Prop :=
  ∀ n, (P8531730510926653093.a n : ℤ) = A377899 (n + 1)

end A377899

/-! ## A377899.P18175219995641763365

`∑[char[A072668(2*n+1)]]`
-/

namespace A377899.P18175219995641763365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377899.P18175219995641763365

namespace A377899

/-- `∑[char[A072668(2*n+1)]]` -/
def P18175219995641763365.Spec : Prop :=
  ∀ n, (P18175219995641763365.a n : ℤ) = A377899 (n + 1)

end A377899

/-! ## A377899.P2831114886616086119

`A004526(A062298(n+1))`
-/

namespace A377899.P2831114886616086119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062298 (n + 1)).toNat

end

end A377899.P2831114886616086119

namespace A377899

/-- `A004526(A062298(n+1))` -/
def P2831114886616086119.Spec : Prop :=
  ∀ n, P2831114886616086119.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P5827275531053124826

`A110654(A065855(n+1))`
-/

namespace A377899.P5827275531053124826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A065855 (n + 1)).toNat

end

end A377899.P5827275531053124826

namespace A377899

/-- `A110654(A065855(n+1))` -/
def P5827275531053124826.Spec : Prop :=
  ∀ n, P5827275531053124826.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P295553589054063674

`A090350(A179278(n+1))`
-/

namespace A377899.P295553589054063674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090350 (A179278 (n + 1)).toNat

end

end A377899.P295553589054063674

namespace A377899

/-- `A090350(A179278(n+1))` -/
def P295553589054063674.Spec : Prop :=
  ∀ n, P295553589054063674.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P3681657434767306536

`A004526(A065855(n+1)+1)`
-/

namespace A377899.P3681657434767306536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065855 (n + 1) + 1).toNat

end

end A377899.P3681657434767306536

namespace A377899

/-- `A004526(A065855(n+1)+1)` -/
def P3681657434767306536.Spec : Prop :=
  ∀ n, P3681657434767306536.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P18197111183901574542

`A110654(A062298(n+1)-1)`
-/

namespace A377899.P18197111183901574542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A062298 (n + 1) - 1).toNat

end

end A377899.P18197111183901574542

namespace A377899

/-- `A110654(A062298(n+1)-1)` -/
def P18197111183901574542.Spec : Prop :=
  ∀ n, P18197111183901574542.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P10693344590674536559

`A110654(n-A000720(n+1))`
-/

namespace A377899.P10693344590674536559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) - A000720 (n + 1)).toNat

end

end A377899.P10693344590674536559

namespace A377899

/-- `A110654(n-A000720(n+1))` -/
def P10693344590674536559.Spec : Prop :=
  ∀ n, P10693344590674536559.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P5169937033208612829

`A008619(∑[A005171(n+1)])-1`
-/

namespace A377899.P5169937033208612829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A377899.P5169937033208612829

namespace A377899

/-- `A008619(∑[A005171(n+1)])-1` -/
def P5169937033208612829.Spec : Prop :=
  ∀ n, P5169937033208612829.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P392587928015676590

`A004526(∑[1-A010051(n+1)])`
-/

namespace A377899.P392587928015676590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377899.P392587928015676590

namespace A377899

/-- `A004526(∑[1-A010051(n+1)])` -/
def P392587928015676590.Spec : Prop :=
  ∀ n, P392587928015676590.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P5845204636249533952

`A110654(∑[A005171(n+1)]-1)`
-/

namespace A377899.P5845204636249533952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A377899.P5845204636249533952

namespace A377899

/-- `A110654(∑[A005171(n+1)]-1)` -/
def P5845204636249533952.Spec : Prop :=
  ∀ n, P5845204636249533952.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P16628227954800256232

`A110654(n-∑[A010051(n+1)])`
-/

namespace A377899.P16628227954800256232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377899.P16628227954800256232

namespace A377899

/-- `A110654(n-∑[A010051(n+1)])` -/
def P16628227954800256232.Spec : Prop :=
  ∀ n, P16628227954800256232.a n = A377899 (n + 1)

end A377899

/-! ## A377899.P1781434011994968428

`A004526(n+1-A000720(n+1))`
-/

namespace A377899.P1781434011994968428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 1 : ℤ) - A000720 (n + 1)).toNat

end

end A377899.P1781434011994968428

namespace A377899

/-- `A004526(n+1-A000720(n+1))` -/
def P1781434011994968428.Spec : Prop :=
  ∀ n, P1781434011994968428.a n = A377899 (n + 1)

end A377899

