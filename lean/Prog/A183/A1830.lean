import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A183002: a(n) is the total number of noncentral divisors in all positive integers <= n.

The programs for A183002, the canonical program `A183002.P1082009122046195699` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183002 has offset 1).

The definition of A183002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183002.P13020891567011540721

`∑[A161840(n+1)]`
-/

namespace A183002.P13020891567011540721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P13020891567011540721

namespace A183002

/-- `∑[A161840(n+1)]` -/
def P13020891567011540721.Spec : Prop :=
  ∀ n, P13020891567011540721.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P18180317045035897933

`∑[2*A072670(n)]`
-/

namespace A183002.P18180317045035897933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P18180317045035897933

namespace A183002

/-- `∑[2*A072670(n)]` -/
def P18180317045035897933.Spec : Prop :=
  ∀ n, P18180317045035897933.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P9690870755604813194

`2*A183003(n+1)`
-/

namespace A183002.P9690870755604813194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183003 (n + 1)

end

end A183002.P9690870755604813194

namespace A183002

/-- `2*A183003(n+1)` -/
def P9690870755604813194.Spec : Prop :=
  ∀ n, P9690870755604813194.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P7394378488933724520

`∑[Δ[A132106(n)]-2]`
-/

namespace A183002.P7394378488933724520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P7394378488933724520

namespace A183002

/-- `∑[Δ[A132106(n)]-2]` -/
def P7394378488933724520.Spec : Prop :=
  ∀ n, P7394378488933724520.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P6193968733084151356

`∑[A161841(n+1)-2]`
-/

namespace A183002.P6193968733084151356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P6193968733084151356

namespace A183002

/-- `∑[A161841(n+1)-2]` -/
def P6193968733084151356.Spec : Prop :=
  ∀ n, P6193968733084151356.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P1082009122046195699

`2*(A091627(n+1)-n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183002

/-- `2*(A091627(n+1)-n)` -/
def P1082009122046195699.Spec : Prop :=
  ∀ n, P1082009122046195699.a n = A183002 (n + 1)

theorem P1082009122046195699.correct : P1082009122046195699.Spec := by
  intro n
  simp only [A183002, Nat.add_sub_cancel]

end A183002

/-! ## A183002.P10628350874342589540

`∑[2*(A038548(n+1)-1)]`
-/

namespace A183002.P10628350874342589540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A038548 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P10628350874342589540

namespace A183002

/-- `∑[2*(A038548(n+1)-1)]` -/
def P10628350874342589540.Spec : Prop :=
  ∀ n, P10628350874342589540.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P6584922491899249740

`∑[and(-2, log2(A100577(n+1)))]`
-/

namespace A183002.P6584922491899249740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (SequenceMachineLib.roundAway (Real.logb 2 (A100577 (n + 1) : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P6584922491899249740

namespace A183002

/-- `∑[and(-2, log2(A100577(n+1)))]` -/
def P6584922491899249740.Spec : Prop :=
  ∀ n, P6584922491899249740.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P7526761765473612600

`2*(A094820(n+1)-(n+1))`
-/

namespace A183002.P7526761765473612600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094820 (n + 1) - (n + 1 : ℤ))

end

end A183002.P7526761765473612600

namespace A183002

/-- `2*(A094820(n+1)-(n+1))` -/
def P7526761765473612600.Spec : Prop :=
  ∀ n, P7526761765473612600.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P16642714111896618110

`A161842(n+1)-2*(n+1)`
-/

namespace A183002.P16642714111896618110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161842 (n + 1) - (2 * (n + 1) : ℤ)

end

end A183002.P16642714111896618110

namespace A183002

/-- `A161842(n+1)-2*(n+1)` -/
def P16642714111896618110.Spec : Prop :=
  ∀ n, P16642714111896618110.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P9812007536737912268

`A132106(n+1)-(2*n+3)`
-/

namespace A183002.P9812007536737912268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 (n + 1) - (2 * n + 3 : ℤ)

end

end A183002.P9812007536737912268

namespace A183002

/-- `A132106(n+1)-(2*n+3)` -/
def P9812007536737912268.Spec : Prop :=
  ∀ n, P9812007536737912268.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P10619668175310373966

`∑[and(A000005(n+1)-1, -2)]`
-/

namespace A183002.P10619668175310373966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1) - 1) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P10619668175310373966

namespace A183002

/-- `∑[and(A000005(n+1)-1, -2)]` -/
def P10619668175310373966.Spec : Prop :=
  ∀ n, P10619668175310373966.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P16869083921978762539

`A002541(n+1)-∑[char[comp[n²-1]]]`
-/

namespace A183002.P16869083921978762539
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183002.P16869083921978762539

namespace A183002

/-- `A002541(n+1)-∑[char[comp[n²-1]]]` -/
def P16869083921978762539.Spec : Prop :=
  ∀ n, P16869083921978762539.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P11510319608472592839

`∑[A052928(A032741(n+1))]`
-/

namespace A183002.P11510319608472592839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A032741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P11510319608472592839

namespace A183002

/-- `∑[A052928(A032741(n+1))]` -/
def P11510319608472592839.Spec : Prop :=
  ∀ n, P11510319608472592839.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P1806439305063392311

`∑[2*A065423(Δ[A132106(n)])]`
-/

namespace A183002.P1806439305063392311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065423 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P1806439305063392311

namespace A183002

/-- `∑[2*A065423(Δ[A132106(n)])]` -/
def P1806439305063392311.Spec : Prop :=
  ∀ n, P1806439305063392311.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P10550266778825376510

`∑[A052928(A334954(n+1)-2)]`
-/

namespace A183002.P10550266778825376510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A334954 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P10550266778825376510

namespace A183002

/-- `∑[A052928(A334954(n+1)-2)]` -/
def P10550266778825376510.Spec : Prop :=
  ∀ n, P10550266778825376510.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P4233231841026612820

`∑[A246416(A145154(n+1))-2]`
-/

namespace A183002.P4233231841026612820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (A145154 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P4233231841026612820

namespace A183002

/-- `∑[A246416(A145154(n+1))-2]` -/
def P4233231841026612820.Spec : Prop :=
  ∀ n, P4233231841026612820.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P9915523518800912954

`A183003(n+1)+∑[A072670(n)]`
-/

namespace A183002.P9915523518800912954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P9915523518800912954

namespace A183002

/-- `A183003(n+1)+∑[A072670(n)]` -/
def P9915523518800912954.Spec : Prop :=
  ∀ n, P9915523518800912954.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P15348697999587218975

`∑[A063655(A038548(n+1)²)-2]`
-/

namespace A183002.P15348697999587218975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A038548 (n + 1) ^ 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P15348697999587218975

namespace A183002

/-- `∑[A063655(A038548(n+1)²)-2]` -/
def P15348697999587218975.Spec : Prop :=
  ∀ n, P15348697999587218975.a n = A183002 (n + 1)

end A183002

/-! ## A183002.P2927969349206697870

`∑[2*A004526(A000005(n+1)-1)]`
-/

namespace A183002.P2927969349206697870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183002.P2927969349206697870

namespace A183002

/-- `∑[2*A004526(A000005(n+1)-1)]` -/
def P2927969349206697870.Spec : Prop :=
  ∀ n, P2927969349206697870.a n = A183002 (n + 1)

end A183002

/-!
# A183003: a(n) = A183002(n)/2.

The programs for A183003, the canonical program `A183003.P6178749893469608523` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183003 has offset 1).

The definition of A183003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183003.P6178749893469608523

`A183002(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A183003

/-- `A183002(n+1)/2` -/
def P6178749893469608523.Spec : Prop :=
  ∀ n, P6178749893469608523.a n = (A183003 (n + 1) : ℚ)

end A183003

/-! ## A183003.P4435169442975689427

`∑[val(∏{d}[n+1, ceil(atan(#))], 4)]`
-/

namespace A183003.P4435169442975689427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ d ∈ Nat.divisors (f2 n), ⌈Real.arctan (d : ℝ)⌉).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P4435169442975689427

namespace A183003

/-- `∑[val(∏{d}[n+1, ceil(atan(#))], 4)]` -/
def P4435169442975689427.Spec : Prop :=
  ∀ n, (P4435169442975689427.a n : ℤ) = A183003 (n + 1)

end A183003

/-! ## A183003.P12568114754971300659

`∑[ceil(∏{e}[n+1, #+1]/2)-1]`
-/

namespace A183003.P12568114754971300659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P12568114754971300659

namespace A183003

/-- `∑[ceil(∏{e}[n+1, #+1]/2)-1]` -/
def P12568114754971300659.Spec : Prop :=
  ∀ n, P12568114754971300659.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P8746460371690071982

`∑[round(∏{e}[n+1, #+1]/2)-1]`
-/

namespace A183003.P8746460371690071982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P8746460371690071982

namespace A183003

/-- `∑[round(∏{e}[n+1, #+1]/2)-1]` -/
def P8746460371690071982.Spec : Prop :=
  ∀ n, P8746460371690071982.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P7089909490885598412

`∑[floor(∑{d}[n+1, lcm(#, n+1)]/(2*n+3))]`
-/

namespace A183003.P7089909490885598412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (2 * n + 3 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P7089909490885598412

namespace A183003

/-- `∑[floor(∑{d}[n+1, lcm(#, n+1)]/(2*n+3))]` -/
def P7089909490885598412.Spec : Prop :=
  ∀ n, P7089909490885598412.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P17409298484017742895

`∑[A072670(n)]`
-/

namespace A183003.P17409298484017742895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P17409298484017742895

namespace A183003

/-- `∑[A072670(n)]` -/
def P17409298484017742895.Spec : Prop :=
  ∀ n, P17409298484017742895.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P12517947679777035040

`A091627(n+1)-n`
-/

namespace A183003.P12517947679777035040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091627 (n + 1) - (n : ℤ)

end

end A183003.P12517947679777035040

namespace A183003

/-- `A091627(n+1)-n` -/
def P12517947679777035040.Spec : Prop :=
  ∀ n, P12517947679777035040.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P2561667039318473315

`∑[A038548(n+1)-1]`
-/

namespace A183003.P2561667039318473315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P2561667039318473315

namespace A183003

/-- `∑[A038548(n+1)-1]` -/
def P2561667039318473315.Spec : Prop :=
  ∀ n, P2561667039318473315.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P15575133290655342213

`∑[A161840(n+1)/2]`
-/

namespace A183003.P15575133290655342213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161840 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P15575133290655342213

namespace A183003

/-- `∑[A161840(n+1)/2]` -/
def P15575133290655342213.Spec : Prop :=
  ∀ n, P15575133290655342213.a n = (A183003 (n + 1) : ℚ)

end A183003

/-! ## A183003.P2975124098172461606

`A094820(n+1)-(n+1)`
-/

namespace A183003.P2975124098172461606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (n + 1) - (n + 1 : ℤ)

end

end A183003.P2975124098172461606

namespace A183003

/-- `A094820(n+1)-(n+1)` -/
def P2975124098172461606.Spec : Prop :=
  ∀ n, P2975124098172461606.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P12477749630035921750

`∑[sqrt(A330571(n+1))-1]`
-/

namespace A183003.P12477749630035921750
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330571 (n + 1) : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P12477749630035921750

namespace A183003

/-- `∑[sqrt(A330571(n+1))-1]` -/
def P12477749630035921750.Spec : Prop :=
  ∀ n, P12477749630035921750.a n = (A183003 (n + 1) : ℝ)

end A183003

/-! ## A183003.P18427458627979835267

`∑[floor(A032741(n+1)/2)]`
-/

namespace A183003.P18427458627979835267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032741 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P18427458627979835267

namespace A183003

/-- `∑[floor(A032741(n+1)/2)]` -/
def P18427458627979835267.Spec : Prop :=
  ∀ n, P18427458627979835267.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P915009973719758249

`∑[floor(sinh(log(A000005(n+1))))]`
-/

namespace A183003.P915009973719758249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A000005 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P915009973719758249

namespace A183003

/-- `∑[floor(sinh(log(A000005(n+1))))]` -/
def P915009973719758249.Spec : Prop :=
  ∀ n, P915009973719758249.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P13940192448788922195

`∑[A161841(n+1)/2-1]`
-/

namespace A183003.P13940192448788922195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161841 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P13940192448788922195

namespace A183003

/-- `∑[A161841(n+1)/2-1]` -/
def P13940192448788922195.Spec : Prop :=
  ∀ n, P13940192448788922195.a n = (A183003 (n + 1) : ℚ)

end A183003

/-! ## A183003.P4310906209393367868

`A161842(n+1)/2-(n+1)`
-/

namespace A183003.P4310906209393367868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161842 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A183003.P4310906209393367868

namespace A183003

/-- `A161842(n+1)/2-(n+1)` -/
def P4310906209393367868.Spec : Prop :=
  ∀ n, P4310906209393367868.a n = (A183003 (n + 1) : ℚ)

end A183003

/-! ## A183003.P15840646224118021862

`∑[round(A000005(2*n+1-n)/2)-1]`
-/

namespace A183003.P15840646224118021862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (2 * n + 1 - n) : ℚ) / 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P15840646224118021862

namespace A183003

/-- `∑[round(A000005(2*n+1-n)/2)-1]` -/
def P15840646224118021862.Spec : Prop :=
  ∀ n, P15840646224118021862.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P9167122910508860089

`∑[A065423(Δ[A132106(n)])]`
-/

namespace A183003.P9167122910508860089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P9167122910508860089

namespace A183003

/-- `∑[A065423(Δ[A132106(n)])]` -/
def P9167122910508860089.Spec : Prop :=
  ∀ n, P9167122910508860089.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P4728965211160338058

`∑[A004526(A032741(n+1))]`
-/

namespace A183003.P4728965211160338058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P4728965211160338058

namespace A183003

/-- `∑[A004526(A032741(n+1))]` -/
def P4728965211160338058.Spec : Prop :=
  ∀ n, P4728965211160338058.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P2851717949509092904

`∑[A004526(A000005(n+1)-1)]`
-/

namespace A183003.P2851717949509092904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P2851717949509092904

namespace A183003

/-- `∑[A004526(A000005(n+1)-1)]` -/
def P2851717949509092904.Spec : Prop :=
  ∀ n, P2851717949509092904.a n = A183003 (n + 1)

end A183003

/-! ## A183003.P7236911716473655172

`∑[A002265(A062011(n+1)-1)]`
-/

namespace A183003.P7236911716473655172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A062011 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183003.P7236911716473655172

namespace A183003

/-- `∑[A002265(A062011(n+1)-1)]` -/
def P7236911716473655172.Spec : Prop :=
  ∀ n, P7236911716473655172.a n = A183003 (n + 1)

end A183003

/-!
# A183004: Toothpick sequence on square grid with toothpicks connected by their endpoints.

The programs for A183004, there is no canonical definition to state claims against.
-/

/-! ## A183004.P304468430644677075

`∑[A183005(n)]`
-/

namespace A183004.P304468430644677075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183004.P304468430644677075

/-! ## A183004.P13537575783943274071

`a(n-1)+A183005(n)%A053808(n)` with `a(0)=0`
-/

namespace A183004.P13537575783943274071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A183005 n) (A053808 n)

end

end A183004.P13537575783943274071

/-! ## A183004.P6603723428282194345

`A139250(n)+A187212(n)-floor(atan(n+1))`
-/

namespace A183004.P6603723428282194345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n + (A187212 n - ⌊Real.arctan (n + 1 : ℝ)⌋)

end

end A183004.P6603723428282194345

/-! ## A183004.P3457497054484144247

`a(n-1)+A183005(A000007(n)+n)` with `a(0)=0, a(1)=1`
-/

namespace A183004.P3457497054484144247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A183005 (A000007 n + (n : ℤ)).toNat

end

end A183004.P3457497054484144247

/-! ## A183004.P15030275452261549407

`A014681(A187212(n)+A139250(n))`
-/

namespace A183004.P15030275452261549407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A187212 n + A139250 n).toNat

end

end A183004.P15030275452261549407

/-!
# A183005: Number of toothpicks added at n-th stage to the toothpick structure of A183004.

The programs for A183005, there is no canonical definition to state claims against.
-/

/-! ## A183005.P15264416676681246488

`A004275(A139251(n)+A043545(n))`
-/

namespace A183005.P15264416676681246488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A139251 n + A043545 n).toNat

end

end A183005.P15264416676681246488

/-! ## A183005.P1978752897113524544

`A187213(n)+A153733(A139251(n))`
-/

namespace A183005.P1978752897113524544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187213 n + A153733 (A139251 n).toNat

end

end A183005.P1978752897113524544

/-! ## A183005.P15877304550231623161

`A004275(or(A043545(n), A139251(n)))`
-/

namespace A183005.P15877304550231623161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.lor (A043545 n) (A139251 n)).toNat

end

end A183005.P15877304550231623161

/-! ## A183005.P8038211715298464416

`A004275(xor(A043545(n), A139251(n)))`
-/

namespace A183005.P8038211715298464416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.xor (A043545 n) (A139251 n)).toNat

end

end A183005.P8038211715298464416

/-! ## A183005.P7485160823390308271

`A139251(n)+A187213(n)%A226922(n+1)`
-/

namespace A183005.P7485160823390308271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n + Int.tmod (A187213 n) (A226922 (n + 1))

end

end A183005.P7485160823390308271

/-!
# A183006: a(n) = 24*A138879(n).

The programs for A183006, there is no canonical definition to state claims against.
-/

/-! ## A183006.P1641791359118600803

`24*A138879(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183006.P1641791359118600803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A138879 (n + 1)

end

end A183006.P1641791359118600803

/-! ## A183006.P15223735604418391443

`A187219(n+1)+A183012(n+1)`
-/

namespace A183006.P15223735604418391443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1) + A183012 (n + 1)

end

end A183006.P15223735604418391443

/-! ## A183006.P16116566161582424184

`Δ[12*A220909(n)]`
-/

namespace A183006.P16116566161582424184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A220909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183006.P16116566161582424184

/-! ## A183006.P9731669157556896245

`Δ[24*A066186(n)]`
-/

namespace A183006.P9731669157556896245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183006.P9731669157556896245

/-! ## A183006.P3009871282280401291

`Δ[n*A183008(n)]`
-/

namespace A183006.P3009871282280401291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A183008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183006.P3009871282280401291

/-! ## A183006.P16295395123285196287

`Δ[A183011(n)+A000041(n)]`
-/

namespace A183006.P16295395123285196287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183006.P16295395123285196287

/-! ## A183006.P12995167448130682102

`Δ[A000041(n)*A008606(n)]`
-/

namespace A183006.P12995167448130682102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183006.P12995167448130682102

/-! ## A183006.P17890939261160354942

`A183009(n+1)-(A183011(n)+A000041(n))`
-/

namespace A183006.P17890939261160354942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183009 (n + 1) - (A183011 n + A000041 n)

end

end A183006.P17890939261160354942

/-! ## A183006.P12494490547316288377

`A002865(n+1)+A183011(n+1)-A183011(n)`
-/

namespace A183006.P12494490547316288377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A183011 (n + 1) - A183011 n)

end

end A183006.P12494490547316288377

/-! ## A183006.P15728282773655066404

`record[24*A206562(n+1)]`
-/

namespace A183006.P15728282773655066404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A206562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183006.P15728282773655066404

/-!
# A183008: a(n) = 24*p(n) = 24*A000041(n).

The programs for A183008, there is no canonical definition to state claims against.
-/

/-! ## A183008.P10948488572859281681

`24*A000041(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183008.P10948488572859281681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000041 n

end

end A183008.P10948488572859281681

/-! ## A183008.P10248351360165223119

`6*A299474(n)`
-/

namespace A183008.P10248351360165223119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A299474 n

end

end A183008.P10248351360165223119

/-! ## A183008.P12783910396208433587

`8*A299473(n)`
-/

namespace A183008.P12783910396208433587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A299473 n

end

end A183008.P12783910396208433587

/-! ## A183008.P5794571125369150730

`12*A139582(n)`
-/

namespace A183008.P5794571125369150730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A139582 n

end

end A183008.P5794571125369150730

/-! ## A183008.P11908349077275737068

`∑[24*A002865(n)]`
-/

namespace A183008.P11908349077275737068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183008.P11908349077275737068

/-!
# A183009: a(n) = 24*n*p(n) = 24*n*A000041(n).

The programs for A183009, there is no canonical definition to state claims against.
-/

/-! ## A183009.P11071237891392020648

`12*A220909(n+1)`
-/

namespace A183009.P11071237891392020648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A220909 (n + 1)

end

end A183009.P11071237891392020648

/-! ## A183009.P5544557099166929540

`24*A066186(n+1)`
-/

namespace A183009.P5544557099166929540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A066186 (n + 1)

end

end A183009.P5544557099166929540

/-! ## A183009.P11748596270935242324

`(n+1)*A183008(n+1)`
-/

namespace A183009.P11748596270935242324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A183008 (n + 1)

end

end A183009.P11748596270935242324

/-! ## A183009.P3367332764910592876

`24*(n+1)*A000041(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183009.P3367332764910592876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * (n + 1) : ℤ) * A000041 (n + 1)

end

end A183009.P3367332764910592876

/-! ## A183009.P8279882485495785083

`A000041(n+1)+A183011(n+1)`
-/

namespace A183009.P8279882485495785083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + A183011 (n + 1)

end

end A183009.P8279882485495785083

/-! ## A183009.P17090201935868535030

`24*A092269(n+1)+12*A220908(n+1)`
-/

namespace A183009.P17090201935868535030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A092269 (n + 1) + 12 * A220908 (n + 1)

end

end A183009.P17090201935868535030

/-! ## A183009.P7345526142493928828

`∑[A183006(n+1)]`
-/

namespace A183009.P7345526142493928828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183009.P7345526142493928828

/-! ## A183009.P7799449890117153857

`∑[24*A138879(n+1)]`
-/

namespace A183009.P7799449890117153857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183009.P7799449890117153857

/-! ## A183009.P13483549003894171736

`∑[abs(Δ[12*A220909(n)])]`
-/

namespace A183009.P13483549003894171736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A220909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183009.P13483549003894171736

/-! ## A183009.P1426858677482521800

`(n+1)*Δ[24*A000070(n)]`
-/

namespace A183009.P1426858677482521800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A183009.P1426858677482521800

/-! ## A183009.P12934026227749461330

`A000041(n+1)*A008606(n+1)`
-/

namespace A183009.P12934026227749461330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) * A008606 (n + 1)

end

end A183009.P12934026227749461330

/-! ## A183009.P5131195157467473378

`A008594(n+1)*A139582(n+1)`
-/

namespace A183009.P5131195157467473378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (n + 1) * A139582 (n + 1)

end

end A183009.P5131195157467473378

/-! ## A183009.P2159372137176555654

`A008590(n+1)*A299473(n+1)`
-/

namespace A183009.P2159372137176555654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1) * A299473 (n + 1)

end

end A183009.P2159372137176555654

/-! ## A183009.P11491291397777963847

`A183011(n+1)+A183011(n+1)/A183010(n+1)`
-/

namespace A183009.P11491291397777963847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183011 (n + 1) : ℚ) + (A183011 (n + 1) : ℚ) / (A183010 (n + 1) : ℚ)

end

end A183009.P11491291397777963847

/-! ## A183009.P5641615723693408641

`Δ[12*∑[A220909(n)]]`
-/

namespace A183009.P5641615723693408641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183009.P5641615723693408641

/-! ## A183009.P5155528870542050545

`A000041(n+1)+A220481(n+1)-A211609(n+1)`
-/

namespace A183009.P5155528870542050545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A220481 (n + 1) - A211609 (n + 1))

end

end A183009.P5155528870542050545

/-! ## A183009.P4017616819942261612

`record[24*A182702(n+1)]`
-/

namespace A183009.P4017616819942261612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A182702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183009.P4017616819942261612

/-!
# A183010: a(n) = 24*n - 1.

The programs for A183010, the canonical program `A183010.P1615208601139071033` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183010 has offset 0).

The definition of A183010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n-1` (program `A183010.P1615208601139071033`, by `A183010.P1615208601139071033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A183010.P1615208601139071033

`24*n-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183010

/-- `24*n-1` -/
def P1615208601139071033.Spec : Prop :=
  ∀ n, P1615208601139071033.a n = A183010 n

theorem P1615208601139071033.correct : P1615208601139071033.Spec := by
  intro n
  simp only [A183010]

end A183010

/-!
# A183011: (24n - 1)p(n): traces of partition class polynomials, with a(0) = -1.

The programs for A183011, there is no canonical definition to state claims against.
-/

/-! ## A183011.P13527846123525464998

`A183010(n)*A000041(n)`
-/

namespace A183011.P13527846123525464998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n * A000041 n

end

end A183011.P13527846123525464998

/-! ## A183011.P11046976942758346305

`(A008606(n)-1)*A000041(n)`
-/

namespace A183011.P11046976942758346305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008606 n - 1) * A000041 n

end

end A183011.P11046976942758346305

/-! ## A183011.P8926065522094890482

`12*A220909(n)-A000041(n)`
-/

namespace A183011.P8926065522094890482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A220909 n - A000041 n

end

end A183011.P8926065522094890482

/-! ## A183011.P9885463280872188155

`24*A066186(n)-A000041(n)`
-/

namespace A183011.P9885463280872188155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A066186 n - A000041 n

end

end A183011.P9885463280872188155

/-! ## A183011.P12063724566884382832

`∑[A002865(n)]*A183010(n)`
-/

namespace A183011.P12063724566884382832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A183010 n

end

end A183011.P12063724566884382832

/-! ## A183011.P12799584546545739811

`A183009(n+1)-(A183006(n+1)+A000041(n))`
-/

namespace A183011.P12799584546545739811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183009 (n + 1) - (A183006 (n + 1) + A000041 n)

end

end A183011.P12799584546545739811

/-! ## A183011.P13412265106899948981

`A035363(2*n)*A183010(n)`
-/

namespace A183011.P13412265106899948981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) * A183010 n

end

end A183011.P13412265106899948981

/-! ## A183011.P5588478115352803718

`A035444(4*n)*A183010(n)`
-/

namespace A183011.P5588478115352803718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) * A183010 n

end

end A183011.P5588478115352803718

/-! ## A183011.P8320207324601071966

`A220481(n)-A211609(n)`
-/

namespace A183011.P8320207324601071966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220481 n - A211609 n

end

end A183011.P8320207324601071966

/-!
# A183012: a(n) = 24*A138879(n) - A187219(n).

The programs for A183012, there is no canonical definition to state claims against.
-/

/-! ## A183012.P3621434723854410487

`24*A138879(n+1)-A187219(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183012.P3621434723854410487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A138879 (n + 1) - A187219 (n + 1)

end

end A183012.P3621434723854410487

/-! ## A183012.P10840046661664222608

`A183006(n+1)-A187219(n+1)`
-/

namespace A183012.P10840046661664222608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183006 (n + 1) - A187219 (n + 1)

end

end A183012.P10840046661664222608

/-! ## A183012.P25366689825255220

`Δ[A183011(n)+A000007(n)]`
-/

namespace A183012.P25366689825255220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183012.P25366689825255220

/-! ## A183012.P16848240983462426930

`Δ[A183011(n)+A057428(n)]`
-/

namespace A183012.P16848240983462426930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183012.P16848240983462426930

/-! ## A183012.P2484906533963004675

`Δ[A183011(n)-A057427(n)]`
-/

namespace A183012.P2484906533963004675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183012.P2484906533963004675

/-!
# A183013: Largest members of k-sociable cycles of order r.

The programs for A183013, there is no canonical definition to state claims against.
-/

/-! ## A183013.P14066733458873823554

`A183019(∑[A183015(n+1)%A000396(n+1)])`
-/

namespace A183013.P14066733458873823554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183015 (n + 1)) (A000396 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183013.P14066733458873823554

/-! ## A183013.P15837273253591942410

`A183019(∑[A183018(n+1)%A000396(n+1)])`
-/

namespace A183013.P15837273253591942410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183018 (n + 1)) (A000396 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183013.P15837273253591942410

/-! ## A183013.P1956129775234692640

`A001065(A183016(n+1))/A183014(n+1)`
-/

namespace A183013.P1956129775234692640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (A183016 (n + 1)).toNat : ℚ) / (A183014 (n + 1) : ℚ)

end

end A183013.P1956129775234692640

/-! ## A183013.P16414986206999194663

`A001065(A183016(n+1))/A183017(n+1)`
-/

namespace A183013.P16414986206999194663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (A183016 (n + 1)).toNat : ℚ) / (A183017 (n + 1) : ℚ)

end

end A183013.P16414986206999194663

/-! ## A183013.P8515053033291195455

`A183019(∑[A183015(n+1)]%A183022(n+1))`
-/

namespace A183013.P8515053033291195455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183019 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A183022 (n + 1))).toNat

end

end A183013.P8515053033291195455

/-!
# A183014: Multiplicities of multisociable cycles sorted by largest term.

The programs for A183014, there is no canonical definition to state claims against.
-/

/-! ## A183014.P9372263365519524805

`A183017(A299703(n+1))`
-/

namespace A183014.P9372263365519524805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (A299703 (n + 1)).toNat

end

end A183014.P9372263365519524805

/-! ## A183014.P14412715593268635660

`A183017(A353838(n+2)-1)`
-/

namespace A183014.P14412715593268635660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (A353838 (n + 2) - 1).toNat

end

end A183014.P14412715593268635660

/-! ## A183014.P15355500547934093854

`A183017(record[A133310(n)/A183017(n+1)])`
-/

namespace A183014.P15355500547934093854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 n : ℚ) / (A183017 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A183014.P15355500547934093854

/-! ## A183014.P672490000200335484

`A183017(record[A133310(n+1)-A183017(n+2)])`
-/

namespace A183014.P672490000200335484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (n + 1) - A183017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A183014.P672490000200335484

/-! ## A183014.P4122826025491015970

`A183017(lt[A161688(n), A324696(n+1)])`
-/

namespace A183014.P4122826025491015970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A183014.P4122826025491015970

/-! ## A183014.P9373808587516363876

`A183017(or(A105570(n), A353838(n+1)))`
-/

namespace A183014.P9373808587516363876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (Int.lor (A105570 n) (A353838 (n + 1))).toNat

end

end A183014.P9373808587516363876

/-! ## A183014.P1003395585562521025

`A183017(or(A000401(n+2), A023808(n+2)))`
-/

namespace A183014.P1003395585562521025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (Int.lor (A000401 (n + 2)) (A023808 (n + 2))).toNat

end

end A183014.P1003395585562521025

/-! ## A183014.P1915340465539669161

`A183017(or(A000401(n+2), A023809(n+2)))`
-/

namespace A183014.P1915340465539669161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (Int.lor (A000401 (n + 2)) (A023809 (n + 2))).toNat

end

end A183014.P1915340465539669161

/-! ## A183014.P18291781569632417956

`A183017(record[A123390(n+1)/A183017(n+1)])`
-/

namespace A183014.P18291781569632417956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123390 (n + 1) : ℚ) / (A183017 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183017 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A183014.P18291781569632417956

/-!
# A183015: Orders of multisociable cycles sorted by largest term.

The programs for A183015, there is no canonical definition to state claims against.
-/

/-! ## A183015.P187711930476067905

`A183018(A023808(n+2))%A088263(n+2)`
-/

namespace A183015.P187711930476067905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183018 (A023808 (n + 2)).toNat) (A088263 (n + 2))

end

end A183015.P187711930476067905

/-! ## A183015.P11309051209729707351

`A183018(A023808(n+2))%A111702(A028262(n))`
-/

namespace A183015.P11309051209729707351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183018 (A023808 (n + 2)).toNat) (A111702 (A028262 n).toNat)

end

end A183015.P11309051209729707351

/-! ## A183015.P9891433873302497646

`A183018(A023808(n+2))+A051709(A088263(n+1))`
-/

namespace A183015.P9891433873302497646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183018 (A023808 (n + 2)).toNat + A051709 (A088263 (n + 1)).toNat

end

end A183015.P9891433873302497646

/-! ## A183015.P10671234990282792799

`A183018(A023808(n+2))+A000038(A001935(n))`
-/

namespace A183015.P10671234990282792799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183018 (A023808 (n + 2)).toNat + A000038 (A001935 n).toNat

end

end A183015.P10671234990282792799

/-! ## A183015.P15233082750006770197

`A183018(round(A000009(n+4)/A284722(2*(n+1))+n))`
-/

namespace A183015.P15233082750006770197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183018 (SequenceMachineLib.roundAway ((A000009 (n + 4) : ℚ) / (A284722 (2 * (n + 1)) : ℚ) + (n : ℚ))).toNat

end

end A183015.P15233082750006770197

/-!
# A183016: Conjectured list of smallest terms of k-sociable cycles of order r.

The programs for A183016, there is no canonical definition to state claims against.
-/

/-! ## A183016.P7169615701778145220

`filter[A183019(n+1), A179527(#)]`
-/

namespace A183016.P7169615701778145220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A183016.P7169615701778145220

/-! ## A183016.P2400171920393949924

`filter[A183019(n+1), A210455(#)]`
-/

namespace A183016.P2400171920393949924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A183016.P2400171920393949924

/-! ## A183016.P15941712406813877557

`A001065(A183013(n+1))/A183014(n+1)`
-/

namespace A183016.P15941712406813877557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (A183013 (n + 1)).toNat : ℚ) / (A183014 (n + 1) : ℚ)

end

end A183016.P15941712406813877557

/-! ## A183016.P256570137092825594

`A001065(A183013(n+1))/A183017(n+1)`
-/

namespace A183016.P256570137092825594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (A183013 (n + 1)).toNat : ℚ) / (A183017 (n + 1) : ℚ)

end

end A183016.P256570137092825594

/-! ## A183016.P2554748656435688685

`A183019(A249773(n+1)*A329399(n+1))`
-/

namespace A183016.P2554748656435688685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183019 (A249773 (n + 1) * A329399 (n + 1)).toNat

end

end A183016.P2554748656435688685

/-!
# A183017: Conjectured list of multiplicities of multisociable cycles sorted by smallest term.

The programs for A183017, there is no canonical definition to state claims against.
-/

/-! ## A183017.P333480276303115633

`A183014(A299441(n+1)-A005926(n))`
-/

namespace A183017.P333480276303115633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (A299441 (n + 1) - A005926 n).toNat

end

end A183017.P333480276303115633

/-! ## A183017.P2458411062875416856

`A183014(A299441(n+1))`
-/

namespace A183017.P2458411062875416856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (A299441 (n + 1)).toNat

end

end A183017.P2458411062875416856

/-! ## A183017.P8500068355624820390

`gcd(A014963(A213718(n+1)), A247533(n+1))`
-/

namespace A183017.P8500068355624820390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A213718 (n + 1)).toNat) (A247533 (n + 1))

end

end A183017.P8500068355624820390

/-! ## A183017.P342373951971291147

`gcd(A183014(A296090(n+1)), A213718(n+1))`
-/

namespace A183017.P342373951971291147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A183014 (A296090 (n + 1)).toNat) (A213718 (n + 1))

end

end A183017.P342373951971291147

/-! ## A183017.P7669872707084309685

`A183014(A296090(n+1)%A104200(n+4))`
-/

namespace A183017.P7669872707084309685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (Int.tmod (A296090 (n + 1)) (A104200 (n + 4))).toNat

end

end A183017.P7669872707084309685

/-! ## A183017.P14600691323708348726

`A183014(A296090(n+1))+A000007(A107192(n+1))`
-/

namespace A183017.P14600691323708348726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183014 (A296090 (n + 1)).toNat + A000007 (A107192 (n + 1)).toNat

end

end A183017.P14600691323708348726

/-! ## A183017.P1901798180206474413

`A039963(A139655(n+1))*A183014(A296090(n+1))`
-/

namespace A183017.P1901798180206474413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A139655 (n + 1)).toNat * A183014 (A296090 (n + 1)).toNat

end

end A183017.P1901798180206474413

/-! ## A183017.P16655466701487010410

`A039963(A165826(n+1))*A183014(A296090(n+1))`
-/

namespace A183017.P16655466701487010410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A165826 (n + 1)).toNat * A183014 (A296090 (n + 1)).toNat

end

end A183017.P16655466701487010410

/-!
# A183019: Conjectured list of multisociable numbers.

The programs for A183019, there is no canonical definition to state claims against.
-/

/-! ## A183019.P12760647262465895140

`∪[A262619(21*(20*n+10))*A262622(n+1), A183013(n+1)]`
-/

namespace A183019.P12760647262465895140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262619 (21 * (20 * n + 10)) * A262622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183019.P12760647262465895140

/-! ## A183019.P16930646625795727736

`∪[A262619(21*(20*n+10))*A262622(n+1), A183016(n+1)]`
-/

namespace A183019.P16930646625795727736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262619 (21 * (20 * n + 10)) * A262622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183019.P16930646625795727736

/-! ## A183019.P5951969818704808674

`∪[A183016(n+1), A347770(A161953(n+4))]`
-/

namespace A183019.P5951969818704808674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347770 (A161953 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183019.P5951969818704808674

/-! ## A183019.P16752362765029899297

`∪[A063990(n+1), A183013(n+1)%A183022(n+1)]`
-/

namespace A183019.P16752362765029899297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183013 (n + 1)) (A183022 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183019.P16752362765029899297

/-! ## A183019.P3648680951787133268

`∪[A063990(n+1), A183016(n+1)%A183022(n+1)]`
-/

namespace A183019.P3648680951787133268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183016 (n + 1)) (A183022 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183019.P3648680951787133268

/-!
# A183023: Largest members of fully k-sociable cycles of order r.

The programs for A183023, there is no canonical definition to state claims against.
-/

/-! ## A183023.P11235116215454569485

`A183029(∑[A183028(n+1)%A183022(n+1)])`
-/

namespace A183023.P11235116215454569485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183028 (n + 1)) (A183022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183023.P11235116215454569485

/-! ## A183023.P3217081318525276798

`A183029(A210434(n)+A029804(n+1))`
-/

namespace A183023.P3217081318525276798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (A210434 n + A029804 (n + 1)).toNat

end

end A183023.P3217081318525276798

/-! ## A183023.P56112615910929987

`A183029(∑[A336534(n)!])`
-/

namespace A183023.P56112615910929987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A336534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183023.P56112615910929987

/-!
# A183024: Multiplicities of fully multisociable cycles sorted by largest term.

The programs for A183024, there is no canonical definition to state claims against.
-/

/-! ## A183024.P8737060123918673319

`ceil(∑{d}[A183023(n+1), acot(#)])`
-/

namespace A183024.P8737060123918673319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.acot (d : ℝ)⌉

end

end A183024.P8737060123918673319

/-! ## A183024.P3143614173467315875

`round(A000203(A183023(n+1))/A183026(n+1))`
-/

namespace A183024.P3143614173467315875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000203 (A183023 (n + 1)).toNat : ℚ) / (A183026 (n + 1) : ℚ))

end

end A183024.P3143614173467315875

/-!
# A183025: Orders of fully multisociable cycles sorted by largest term.

The programs for A183025, there is no canonical definition to state claims against.
-/

/-! ## A183025.P8595075604811584150

`gcd(A106491(3*n+5), A122865(A132276(3*n)))`
-/

namespace A183025.P8595075604811584150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106491 (3 * n + 5)) (A122865 (A132276 (3 * n)).toNat)

end

end A183025.P8595075604811584150

/-! ## A183025.P9405189417891742996

`gcd(10, A003558(A097407(n+1)))`
-/

namespace A183025.P9405189417891742996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A003558 (A097407 (n + 1)).toNat)

end

end A183025.P9405189417891742996

/-! ## A183025.P14318104346265168665

`A001055(or(n+2, A106000(n)))`
-/

namespace A183025.P14318104346265168665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.lor (n + 2 : ℤ) (A106000 n)).toNat

end

end A183025.P14318104346265168665

/-! ## A183025.P7373625015726938645

`A050326(or(n+2, A106000(n)))`
-/

namespace A183025.P7373625015726938645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (Int.lor (n + 2 : ℤ) (A106000 n)).toNat

end

end A183025.P7373625015726938645

/-! ## A183025.P13910486890275555938

`A084113(or(n+2, A106000(n)))`
-/

namespace A183025.P13910486890275555938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084113 (Int.lor (n + 2 : ℤ) (A106000 n)).toNat

end

end A183025.P13910486890275555938

/-!
# A183026: Conjectured list of smallest members of fully k-sociable cycles of order r.

The programs for A183026, there is no canonical definition to state claims against.
-/

/-! ## A183026.P1284945115781135438

`∩[A007620(n+1), A183029(n+1)]`
-/

namespace A183026.P1284945115781135438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183026.P1284945115781135438

/-! ## A183026.P4913376952796790387

`∩[A125225(n+1), A183029(n+1)]`
-/

namespace A183026.P4913376952796790387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183026.P4913376952796790387

/-! ## A183026.P13958672210912492786

`A183029(A183003(n+1)+A044912(n+1))`
-/

namespace A183026.P13958672210912492786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (A183003 (n + 1) + A044912 (n + 1)).toNat

end

end A183026.P13958672210912492786

/-! ## A183026.P9187882566276688129

`A183029(A183003(n+1)+A071274(n+1))`
-/

namespace A183026.P9187882566276688129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (A183003 (n + 1) + A071274 (n + 1)).toNat

end

end A183026.P9187882566276688129

/-! ## A183026.P2783777029919009400

`A183029(A183003(n+1)+A078295(n+1))`
-/

namespace A183026.P2783777029919009400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183029 (A183003 (n + 1) + A078295 (n + 1)).toNat

end

end A183026.P2783777029919009400

/-!
# A183028: Conjectured list of orders of fully multisociable cycles sorted by smallest term.

The programs for A183028, there is no canonical definition to state claims against.
-/

/-! ## A183028.P14148607388132465898

`A239001(A336534(n))`
-/

namespace A183028.P14148607388132465898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239001 (A336534 n).toNat

end

end A183028.P14148607388132465898

/-! ## A183028.P11202215037719078567

`gcd(10, A037382(A113025(n)))`
-/

namespace A183028.P11202215037719078567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A037382 (A113025 n).toNat)

end

end A183028.P11202215037719078567

/-! ## A183028.P13323378839848500039

`A099563(∑{d}[A336534(n), #²])`
-/

namespace A183028.P13323378839848500039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)

end

end A183028.P13323378839848500039

/-! ## A183028.P12902966383265515495

`A327640(A249947(n+1)+A219964(n))`
-/

namespace A183028.P12902966383265515495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327640 (A249947 (n + 1) + A219964 n).toNat

end

end A183028.P12902966383265515495

/-! ## A183028.P3360533733248183221

`gcd(A018900(n+1), A020639(A280486(n)))`
-/

namespace A183028.P3360533733248183221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018900 (n + 1)) (A020639 (A280486 n).toNat)

end

end A183028.P3360533733248183221

/-!
# A183029: Conjectured list of fully multisociable numbers.

The programs for A183029, there is no canonical definition to state claims against.
-/

/-! ## A183029.P7217414693246668761

`∪[A183023(A044912(n+1)+2), A183026(n+1)]`
-/

namespace A183029.P7217414693246668761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183023 (A044912 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183029.P7217414693246668761

/-! ## A183029.P8903324853018921034

`∪[A183023(A044912(n+1)), A183026(n+1)]`
-/

namespace A183029.P8903324853018921034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183023 (A044912 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183029.P8903324853018921034

/-! ## A183029.P422058258360720144

`∪[A183023(A085908(n+1)), A183026(n+1)]`
-/

namespace A183029.P422058258360720144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183023 (A085908 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183029.P422058258360720144

/-!
# A183032: Seconds (rounded down) at which the minute hand overlaps with hour hand on the analog clock.

The programs for A183032, there is no canonical definition to state claims against.
-/

/-! ## A183032.P14886241781939862853

`A181874(n)-A021913(n)`
-/

namespace A183032.P14886241781939862853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181874 n - A021913 n

end

end A183032.P14886241781939862853

/-! ## A183032.P10224967884331954255

`A181874(n)-abs(A132380(n))`
-/

namespace A183032.P10224967884331954255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181874 n - |A132380 n|

end

end A183032.P10224967884331954255

/-! ## A183032.P15275401743050105769

`A181874(n)-Δ[A004524(n)]`
-/

namespace A183032.P15275401743050105769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181874 n - (f1 (n + 1) - f1 n)

end

end A183032.P15275401743050105769

/-! ## A183032.P3972133746439399443

`A181874(n)-A107628(n+1)`
-/

namespace A183032.P3972133746439399443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181874 n - A107628 (n + 1)

end

end A183032.P3972133746439399443

/-! ## A183032.P14857218788769796759

`A181874(n)-A188257(n+1)`
-/

namespace A183032.P14857218788769796759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181874 n - A188257 (n + 1)

end

end A183032.P14857218788769796759

/-!
# A183035: G.f.: A(x) = x*(1-x^2)*Product_{n>=1} (1 + x^(4^n))^3.

The programs for A183035, there is no canonical definition to state claims against.
-/

/-! ## A183035.P9983881237499232444

`A183034(A141310(n))/2`
-/

namespace A183035.P9983881237499232444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183034 (A141310 n).toNat : ℚ) / 2

end

end A183035.P9983881237499232444

/-! ## A183035.P4235921445525019856

`A183034(A043547(n+1))/2`
-/

namespace A183035.P4235921445525019856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183034 (A043547 (n + 1)).toNat : ℚ) / 2

end

end A183035.P4235921445525019856

/-! ## A183035.P3265377668037183783

`Δ[A010873(A132894(A110654(n)))]`
-/

namespace A183035.P3265377668037183783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A132894 (A110654 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183035.P3265377668037183783

/-! ## A183035.P4149729795471543666

`Δ[A135481(∑[A071378(n+2)])]`
-/

namespace A183035.P4149729795471543666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071378 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183035.P4149729795471543666

/-! ## A183035.P283633986491008474

`Δ[A020639(A120849(A080513(n)))]`
-/

namespace A183035.P283633986491008474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120849 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183035.P283633986491008474

/-!
# A183036: G.f.: exp( Sum_{n>=1} A001511(n)*2^A001511(n)*x^n/n ) where A001511(n) equals the 2-adic valuation of 2n.

The programs for A183036, there is no canonical definition to state claims against.
-/

/-! ## A183036.P5526347564808502119

`∑[A162375(A052993(n))]`
-/

namespace A183036.P5526347564808502119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162375 (A052993 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183036.P5526347564808502119

/-! ## A183036.P8458951157724098215

`∑[A119348(A289404(n))]`
-/

namespace A183036.P8458951157724098215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119348 (A289404 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183036.P8458951157724098215

/-! ## A183036.P10004718327423828606

`∑[A337769(A025065(n)²)]`
-/

namespace A183036.P10004718327423828606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A025065 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183036.P10004718327423828606

/-! ## A183036.P4832829848907105601

`∑[A347623(A341972(n)²)]`
-/

namespace A183036.P4832829848907105601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (A341972 (n + 10) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183036.P4832829848907105601

/-!
# A183037: a(n) = A001511(n)*2^A001511(n) where A001511(n) equals the 2-adic valuation of 2n.

The programs for A183037, the canonical program `A183037.P2429531646680014753` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183037 has offset 1).

The definition of A183037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183037.P6681012902671746713

`val(2*(n+1), 2)*2^val(2*(n+1), 2)`
-/

namespace A183037.P6681012902671746713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (n + 1)) 2 * 2 ^ SequenceMachineLib.valuation (2 * (n + 1)) 2

end

end A183037.P6681012902671746713

namespace A183037

/-- `val(2*(n+1), 2)*2^val(2*(n+1), 2)` -/
def P6681012902671746713.Spec : Prop :=
  ∀ n, (P6681012902671746713.a n : ℤ) = A183037 (n + 1)

end A183037

/-! ## A183037.P2429531646680014753

`A001511(n+1)*2^A001511(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A183037

/-- `A001511(n+1)*2^A001511(n+1)` -/
def P2429531646680014753.Spec : Prop :=
  ∀ n, P2429531646680014753.a n = (A183037 (n + 1) : ℚ)

end A183037

/-! ## A183037.P16885242437226155764

`(val(n+1, 2)+1)*(xor(n, n+1)+1)`
-/

namespace A183037.P16885242437226155764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) * (Nat.xor n (n + 1) + 1)

end

end A183037.P16885242437226155764

namespace A183037

/-- `(val(n+1, 2)+1)*(xor(n, n+1)+1)` -/
def P16885242437226155764.Spec : Prop :=
  ∀ n, (P16885242437226155764.a n : ℤ) = A183037 (n + 1)

end A183037

/-! ## A183037.P18201686347300100984

`(xor(n, n+1)+1)*log2(xor(n, n+1)+1)`
-/

namespace A183037.P18201686347300100984
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℝ) * Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A183037.P18201686347300100984

namespace A183037

/-- `(xor(n, n+1)+1)*log2(xor(n, n+1)+1)` -/
def P18201686347300100984.Spec : Prop :=
  ∀ n, P18201686347300100984.a n = (A183037 (n + 1) : ℝ)

end A183037

/-! ## A183037.P1944446871381055450

`(xor(n, n+1)+1)*Δ[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A183037.P1944446871381055450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A183037.P1944446871381055450

namespace A183037

/-- `(xor(n, n+1)+1)*Δ[a(floor(n/2))+n]` -/
def P1944446871381055450.Spec : Prop :=
  ∀ n, P1944446871381055450.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P865096812036505354

`2*and(n+1, -(n+1))*Δ[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A183037.P865096812036505354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A183037.P865096812036505354

namespace A183037

/-- `2*and(n+1, -(n+1))*Δ[a(floor(n/2))+n]` -/
def P865096812036505354.Spec : Prop :=
  ∀ n, P865096812036505354.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P10806223806953173615

`2*(1-and(n, n+1)+n)*Δ[a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A183037.P10806223806953173615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A183037.P10806223806953173615

namespace A183037

/-- `2*(1-and(n, n+1)+n)*Δ[a(floor(n/2))+n]` -/
def P10806223806953173615.Spec : Prop :=
  ∀ n, P10806223806953173615.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P13527780822056893812

`2*(or((a(floor(n/2))+1)*n%2, and(n, -(n+2)))+1)` with `a(0)=2`
-/

namespace A183037.P13527780822056893812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (Int.lor ((a ⌊(n : ℚ) / 2⌋.toNat + 1) * ((n % 2 : ℕ) : ℤ)) (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 1)

end

end A183037.P13527780822056893812

namespace A183037

/-- `2*(or((a(floor(n/2))+1)*n%2, and(n, -(n+2)))+1)` -/
def P13527780822056893812.Spec : Prop :=
  ∀ n, P13527780822056893812.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P15506355236656069556

`A069895(2^val(n+1, 2))`
-/

namespace A183037.P15506355236656069556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069895 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A183037.P15506355236656069556

namespace A183037

/-- `A069895(2^val(n+1, 2))` -/
def P15506355236656069556.Spec : Prop :=
  ∀ n, P15506355236656069556.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P12028329860551388047

`A003314(xor(n, n+1)+1)`
-/

namespace A183037.P12028329860551388047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (Nat.xor n (n + 1) + 1)

end

end A183037.P12028329860551388047

namespace A183037

/-- `A003314(xor(n, n+1)+1)` -/
def P12028329860551388047.Spec : Prop :=
  ∀ n, P12028329860551388047.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P2924059871240990294

`2*A139251(xor(n, n+1))`
-/

namespace A183037.P2924059871240990294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139251 (Nat.xor n (n + 1))

end

end A183037.P2924059871240990294

namespace A183037

/-- `2*A139251(xor(n, n+1))` -/
def P2924059871240990294.Spec : Prop :=
  ∀ n, P2924059871240990294.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P5335496234965590224

`A002064(val(n+1, 2)+1)-1`
-/

namespace A183037.P5335496234965590224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (SequenceMachineLib.valuation (n + 1) 2 + 1) - 1

end

end A183037.P5335496234965590224

namespace A183037

/-- `A002064(val(n+1, 2)+1)-1` -/
def P5335496234965590224.Spec : Prop :=
  ∀ n, P5335496234965590224.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P1568144210344248273

`2*A001787(val(n+1, 2)+1)`
-/

namespace A183037.P1568144210344248273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A183037.P1568144210344248273

namespace A183037

/-- `2*A001787(val(n+1, 2)+1)` -/
def P1568144210344248273.Spec : Prop :=
  ∀ n, P1568144210344248273.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P17857582450786902620

`A003314(2*2^val(n+1, 2))`
-/

namespace A183037.P17857582450786902620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (2 * 2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A183037.P17857582450786902620

namespace A183037

/-- `A003314(2*2^val(n+1, 2))` -/
def P17857582450786902620.Spec : Prop :=
  ∀ n, P17857582450786902620.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P3425872024705387290

`2*A038040(2^val(n+1, 2))`
-/

namespace A183037.P3425872024705387290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038040 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A183037.P3425872024705387290

namespace A183037

/-- `2*A038040(2^val(n+1, 2))` -/
def P3425872024705387290.Spec : Prop :=
  ∀ n, P3425872024705387290.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P15792861577266576334

`2*A191161(2^val(n+1, 2))`
-/

namespace A183037.P15792861577266576334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191161 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A183037.P15792861577266576334

namespace A183037

/-- `2*A191161(2^val(n+1, 2))` -/
def P15792861577266576334.Spec : Prop :=
  ∀ n, P15792861577266576334.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P7009023134279536818

`2*A341766(2^val(n+1, 2))`
-/

namespace A183037.P7009023134279536818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341766 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A183037.P7009023134279536818

namespace A183037

/-- `2*A341766(2^val(n+1, 2))` -/
def P7009023134279536818.Spec : Prop :=
  ∀ n, P7009023134279536818.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P11563334275945443974

`A069895((xor(n, n+1)+1)/2)`
-/

namespace A183037.P11563334275945443974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069895 (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)).toNat

end

end A183037.P11563334275945443974

namespace A183037

/-- `A069895((xor(n, n+1)+1)/2)` -/
def P11563334275945443974.Spec : Prop :=
  ∀ n, P11563334275945443974.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P17962856369833656037

`(val(n+1, 2)+1)*A000079(val(n+1, 2)+1)`
-/

namespace A183037.P17962856369833656037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A000079 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A183037.P17962856369833656037

namespace A183037

/-- `(val(n+1, 2)+1)*A000079(val(n+1, 2)+1)` -/
def P17962856369833656037.Spec : Prop :=
  ∀ n, P17962856369833656037.a n = A183037 (n + 1)

end A183037

/-! ## A183037.P12896533008428269702

`A097064(A085058(n))`
-/

namespace A183037.P12896533008428269702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (A085058 n).toNat

end

end A183037.P12896533008428269702

namespace A183037

/-- `A097064(A085058(n))` -/
def P12896533008428269702.Spec : Prop :=
  ∀ n, P12896533008428269702.a n = A183037 (n + 1)

end A183037

/-!
# A183038: G.f.: exp( Sum_{n>=1} A051064(n)*3^A051064(n)*x^n/n ) where A051064(n) equals the 3-adic valuation of 3n.

The programs for A183038, there is no canonical definition to state claims against.
-/

/-! ## A183038.P6367579396945410953

`∑[A000005(∏[floor(n/3)+3]/3)]`
-/

namespace A183038.P6367579396945410953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183038.P6367579396945410953

/-! ## A183038.P8752116478040994485

`∑[∑[A060843(A374436(n))]]`
-/

namespace A183038.P8752116478040994485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060843 (A374436 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183038.P8752116478040994485

/-! ## A183038.P14016374150016897810

`∑[A319442(∏[A097369(n+2)])]`
-/

namespace A183038.P14016374150016897810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097369 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319442 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183038.P14016374150016897810

/-!
# A183039: a(n) = A051064(n)*3^A051064(n) where A051064(n) equals the 3-adic valuation of 3n.

The programs for A183039, the canonical program `A183039.P14868528515643785156` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183039 has offset 1).

The definition of A183039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183039.P15407946764717199747

`val(3*(n+1), 3)*3^val(3*(n+1), 3)`
-/

namespace A183039.P15407946764717199747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 * (n + 1)) 3 * 3 ^ SequenceMachineLib.valuation (3 * (n + 1)) 3

end

end A183039.P15407946764717199747

namespace A183039

/-- `val(3*(n+1), 3)*3^val(3*(n+1), 3)` -/
def P15407946764717199747.Spec : Prop :=
  ∀ n, (P15407946764717199747.a n : ℤ) = A183039 (n + 1)

end A183039

/-! ## A183039.P14868528515643785156

`A051064(n+1)*3^A051064(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183039

/-- `A051064(n+1)*3^A051064(n+1)` -/
def P14868528515643785156.Spec : Prop :=
  ∀ n, P14868528515643785156.a n = (A183039 (n + 1) : ℚ)

end A183039

/-! ## A183039.P14582189513913605214

`floor((val(n+1, 3)+1)/acot(3^(val(n+1, 3)+1)))`
-/

namespace A183039.P14582189513913605214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.valuation (n + 1) 3 + 1 : ℝ) / SequenceMachineLib.acot (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℝ)⌋

end

end A183039.P14582189513913605214

namespace A183039

/-- `floor((val(n+1, 3)+1)/acot(3^(val(n+1, 3)+1)))` -/
def P14582189513913605214.Spec : Prop :=
  ∀ n, P14582189513913605214.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P1889656549076208104

`round((val(n+1, 3)+1)/acot(3^(val(n+1, 3)+1)))`
-/

namespace A183039.P1889656549076208104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (n + 1) 3 + 1 : ℝ) / SequenceMachineLib.acot (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℝ))

end

end A183039.P1889656549076208104

namespace A183039

/-- `round((val(n+1, 3)+1)/acot(3^(val(n+1, 3)+1)))` -/
def P1889656549076208104.Spec : Prop :=
  ∀ n, P1889656549076208104.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P4611163638509994162

`3^(val(n+1, 3)+1)/(val(n+1, 3)+1)^(-1)`
-/

namespace A183039.P4611163638509994162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 3 + 1 : ℚ) ^ (-1 : ℤ)

end

end A183039.P4611163638509994162

namespace A183039

/-- `3^(val(n+1, 3)+1)/(val(n+1, 3)+1)^(-1)` -/
def P4611163638509994162.Spec : Prop :=
  ∀ n, P4611163638509994162.a n = (A183039 (n + 1) : ℚ)

end A183039

/-! ## A183039.P751066134764539456

`A036290(val(3*(n+1), 3))`
-/

namespace A183039.P751066134764539456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (SequenceMachineLib.valuation (3 * (n + 1)) 3)

end

end A183039.P751066134764539456

namespace A183039

/-- `A036290(val(3*(n+1), 3))` -/
def P751066134764539456.Spec : Prop :=
  ∀ n, P751066134764539456.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P10534272261102802440

`A060352(val(n+1, 3)+1)+1`
-/

namespace A183039.P10534272261102802440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060352 (SequenceMachineLib.valuation (n + 1) 3 + 1) + 1

end

end A183039.P10534272261102802440

namespace A183039

/-- `A060352(val(n+1, 3)+1)+1` -/
def P10534272261102802440.Spec : Prop :=
  ∀ n, P10534272261102802440.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P5177006466099706845

`3^val(record[(6*(1-n))²], 9)*A001222(3^val(record[(6*(1-n))²], 9))`
-/

namespace A183039.P5177006466099706845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (1 - (n : ℤ))) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (1 - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 9 : ℤ) * A001222 (3 ^ SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 9)

end

end A183039.P5177006466099706845

namespace A183039

/-- `3^val(record[(6*(1-n))²], 9)*A001222(3^val(record[(6*(1-n))²], 9))` -/
def P5177006466099706845.Spec : Prop :=
  ∀ n, P5177006466099706845.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P10832112225671859931

`3^val(∑[dr(or(3, 24*n))], 3)*A001222(3^val(∑[dr(or(3, 24*n))], 3))`
-/

namespace A183039.P10832112225671859931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lor 3 (24 * n) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lor 3 (24 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 3 : ℤ) * A001222 (3 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) 3)

end

end A183039.P10832112225671859931

namespace A183039

/-- `3^val(∑[dr(or(3, 24*n))], 3)*A001222(3^val(∑[dr(or(3, 24*n))], 3))` -/
def P10832112225671859931.Spec : Prop :=
  ∀ n, P10832112225671859931.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P3132651521654267840

`A051064(n+1)*A074724(n+1)`
-/

namespace A183039.P3132651521654267840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) * A074724 (n + 1)

end

end A183039.P3132651521654267840

namespace A183039

/-- `A051064(n+1)*A074724(n+1)` -/
def P3132651521654267840.Spec : Prop :=
  ∀ n, P3132651521654267840.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P6415576208110967292

`(A007949(n+1)+1)*A074724(n+1)`
-/

namespace A183039.P6415576208110967292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007949 (n + 1) + 1) * A074724 (n + 1)

end

end A183039.P6415576208110967292

namespace A183039

/-- `(A007949(n+1)+1)*A074724(n+1)` -/
def P6415576208110967292.Spec : Prop :=
  ∀ n, P6415576208110967292.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P3742982408702340464

`(A088838(n+1)-A080278(n+1))*A051064(n+1)`
-/

namespace A183039.P3742982408702340464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088838 (n + 1) - A080278 (n + 1)) * A051064 (n + 1)

end

end A183039.P3742982408702340464

namespace A183039

/-- `(A088838(n+1)-A080278(n+1))*A051064(n+1)` -/
def P3742982408702340464.Spec : Prop :=
  ∀ n, P3742982408702340464.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P12738523970823821340

`A066959(A074724(n+1))`
-/

namespace A183039.P12738523970823821340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (A074724 (n + 1)).toNat

end

end A183039.P12738523970823821340

namespace A183039

/-- `A066959(A074724(n+1))` -/
def P12738523970823821340.Spec : Prop :=
  ∀ n, P12738523970823821340.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P9806715509309143673

`A390616(A088838(n+1))`
-/

namespace A183039.P9806715509309143673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390616 (A088838 (n + 1)).toNat

end

end A183039.P9806715509309143673

namespace A183039

/-- `A390616(A088838(n+1))` -/
def P9806715509309143673.Spec : Prop :=
  ∀ n, P9806715509309143673.a n = A183039 (n + 1)

end A183039

/-! ## A183039.P12495380995573536622

`A382314(A129343(n+1))`
-/

namespace A183039.P12495380995573536622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382314 (A129343 (n + 1)).toNat

end

end A183039.P12495380995573536622

namespace A183039

/-- `A382314(A129343(n+1))` -/
def P12495380995573536622.Spec : Prop :=
  ∀ n, P12495380995573536622.a n = A183039 (n + 1)

end A183039

/-!
# A183041: Least number of knight's moves from (0,0) to (n,1) on infinite chessboard.

The programs for A183041, the canonical program `A183041.P1898339638206451297` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183041 has offset 0).

The definition of A183041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183041.P1898339638206451297

`a(n-4)+2` with `a(0)=3, a(1)=2, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183041

/-- `a(n-4)+2` -/
def P1898339638206451297.Spec : Prop :=
  ∀ n, (P1898339638206451297.a n : ℤ) = A183041 n

theorem P1898339638206451297.correct : P1898339638206451297.Spec := by
  intro n
  simp only [A183041]

end A183041

/-! ## A183041.P765749994562029702

`∑[2%gcd(4, n)]+(1-n)%2`
-/

namespace A183041.P765749994562029702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % Nat.gcd 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (1 - (n : ℤ)) 2

end

end A183041.P765749994562029702

namespace A183041

/-- `∑[2%gcd(4, n)]+(1-n)%2` -/
def P765749994562029702.Spec : Prop :=
  ∀ n, P765749994562029702.a n = A183041 n

end A183041

/-! ## A183041.P16673040890146291398

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=-1, a(2)=-1, a(3)=1, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A183041.P16673040890146291398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183041.P16673040890146291398

namespace A183041

/-- `∑[floor(a(n-4))]` -/
def P16673040890146291398.Spec : Prop :=
  ∀ n, P16673040890146291398.a n = A183041 n

end A183041

/-! ## A183041.P2649507822055263790

`n-or(1, a(n-2)-1)` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A183041.P2649507822055263790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  (n : ℤ) - Int.lor 1 (a (n - 2) - 1)

end

end A183041.P2649507822055263790

namespace A183041

/-- `n-or(1, a(n-2)-1)` -/
def P2649507822055263790.Spec : Prop :=
  ∀ n, P2649507822055263790.a n = A183041 n

end A183041

/-! ## A183041.P12817451994910899680

`2-(and(2, n)-a(n-2))` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A183041.P12817451994910899680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  2 - ((Nat.land 2 n : ℤ) - a (n - 2))

end

end A183041.P12817451994910899680

namespace A183041

/-- `2-(and(2, n)-a(n-2))` -/
def P12817451994910899680.Spec : Prop :=
  ∀ n, P12817451994910899680.a n = A183041 n

end A183041

/-! ## A183041.P8402916149438145170

`n%2-(a(n-2)-n)` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A183041.P8402916149438145170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  ((n % 2 : ℕ) : ℤ) - (a (n - 2) - (n : ℤ))

end

end A183041.P8402916149438145170

namespace A183041

/-- `n%2-(a(n-2)-n)` -/
def P8402916149438145170.Spec : Prop :=
  ∀ n, P8402916149438145170.a n = A183041 n

end A183041

/-! ## A183041.P11617463834076919673

`∑[1/a(n-4)]` with `a(0)=3, a(1)=-1, a(2)=-1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A183041.P11617463834076919673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -1, -1, 1, 1, 1] fun n f1 =>
  1 / f1 (n - 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183041.P11617463834076919673

namespace A183041

/-- `∑[1/a(n-4)]` -/
def P11617463834076919673.Spec : Prop :=
  ∀ n, P11617463834076919673.a n = (A183041 n : ℚ)

end A183041

/-! ## A183041.P11474193243813941222

`∑[a(n-4)^3]` with `a(0)=3, a(1)=-1, a(2)=-1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A183041.P11474193243813941222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1, 1, 1, 1] fun n f1 =>
  f1 (n - 4) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183041.P11474193243813941222

namespace A183041

/-- `∑[a(n-4)^3]` -/
def P11474193243813941222.Spec : Prop :=
  ∀ n, P11474193243813941222.a n = A183041 n

end A183041

/-! ## A183041.P202630138850063390

`2*ceil(n/2)-a(n-2)` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A183041.P202630138850063390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 1] fun n a =>
  2 * ⌈(n : ℚ) / 2⌉ - a (n - 2)

end

end A183041.P202630138850063390

namespace A183041

/-- `2*ceil(n/2)-a(n-2)` -/
def P202630138850063390.Spec : Prop :=
  ∀ n, P202630138850063390.a n = A183041 n

end A183041

/-! ## A183041.P185205623427856305

`A293990(abs(1-n)+1)-n`
-/

namespace A183041.P185205623427856305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293990 (|1 - (n : ℤ)| + 1).toNat - (n : ℤ)

end

end A183041.P185205623427856305

namespace A183041

/-- `A293990(abs(1-n)+1)-n` -/
def P185205623427856305.Spec : Prop :=
  ∀ n, P185205623427856305.a n = A183041 n

end A183041

/-! ## A183041.P5589416802720347582

`2*(A002265(n)+1)-(n-1)%2`
-/

namespace A183041.P5589416802720347582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002265 n + 1) - Int.tmod ((n : ℤ) - 1) 2

end

end A183041.P5589416802720347582

namespace A183041

/-- `2*(A002265(n)+1)-(n-1)%2` -/
def P5589416802720347582.Spec : Prop :=
  ∀ n, P5589416802720347582.a n = A183041 n

end A183041

/-! ## A183041.P12075048622841171714

`A215036(n+1)+A129756(n)`
-/

namespace A183041.P12075048622841171714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215036 (n + 1) + A129756 n

end

end A183041.P12075048622841171714

namespace A183041

/-- `A215036(n+1)+A129756(n)` -/
def P12075048622841171714.Spec : Prop :=
  ∀ n, P12075048622841171714.a n = A183041 n

end A183041

/-! ## A183041.P14612814117925343092

`A065033(or(2, n))+A000038(n)`
-/

namespace A183041.P14612814117925343092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Nat.lor 2 n) + A000038 n

end

end A183041.P14612814117925343092

namespace A183041

/-- `A065033(or(2, n))+A000038(n)` -/
def P14612814117925343092.Spec : Prop :=
  ∀ n, P14612814117925343092.a n = A183041 n

end A183041

/-! ## A183041.P3931159457467827791

`A056594(n)+2*A065033(A065033(n))`
-/

namespace A183041.P3931159457467827791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n + 2 * A065033 (A065033 n).toNat

end

end A183041.P3931159457467827791

namespace A183041

/-- `A056594(n)+2*A065033(A065033(n))` -/
def P3931159457467827791.Spec : Prop :=
  ∀ n, P3931159457467827791.a n = A183041 n

end A183041

/-! ## A183041.P4786381827140039811

`A285869(n+1)+2*A036987(2*n)`
-/

namespace A183041.P4786381827140039811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (n + 1) + 2 * A036987 (2 * n)

end

end A183041.P4786381827140039811

namespace A183041

/-- `A285869(n+1)+2*A036987(2*n)` -/
def P4786381827140039811.Spec : Prop :=
  ∀ n, P4786381827140039811.a n = A183041 n

end A183041

/-! ## A183041.P7149959995311051673

`(A018837(n+1)-A285869(n))*A285869(n+1)`
-/

namespace A183041.P7149959995311051673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018837 (n + 1) - A285869 n) * A285869 (n + 1)

end

end A183041.P7149959995311051673

namespace A183041

/-- `(A018837(n+1)-A285869(n))*A285869(n+1)` -/
def P7149959995311051673.Spec : Prop :=
  ∀ n, P7149959995311051673.a n = A183041 n

end A183041

/-! ## A183041.P16867542775330602445

`A018837(n+1)+A285869(n+1)-A083219(n+1)`
-/

namespace A183041.P16867542775330602445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (n + 1) + (A285869 (n + 1) - A083219 (n + 1))

end

end A183041.P16867542775330602445

namespace A183041

/-- `A018837(n+1)+A285869(n+1)-A083219(n+1)` -/
def P16867542775330602445.Spec : Prop :=
  ∀ n, P16867542775330602445.a n = A183041 n

end A183041

/-! ## A183041.P15022217559146456333

`abs(1-n)+2-A002265(n+2)-A002265(n+2)`
-/

namespace A183041.P15022217559146456333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2 - A002265 (n + 2) - A002265 (n + 2)

end

end A183041.P15022217559146456333

namespace A183041

/-- `abs(1-n)+2-A002265(n+2)-A002265(n+2)` -/
def P15022217559146456333.Spec : Prop :=
  ∀ n, P15022217559146456333.a n = A183041 n

end A183041

/-! ## A183041.P9269583202035510661

`A047878(A047227(n+1))`
-/

namespace A183041.P9269583202035510661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A047227 (n + 1)).toNat

end

end A183041.P9269583202035510661

namespace A183041

/-- `A047878(A047227(n+1))` -/
def P9269583202035510661.Spec : Prop :=
  ∀ n, P9269583202035510661.a n = A183041 n

end A183041

/-! ## A183041.P3894806716060009328

`A047878(A047246(n+2))`
-/

namespace A183041.P3894806716060009328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A047246 (n + 2)).toNat

end

end A183041.P3894806716060009328

namespace A183041

/-- `A047878(A047246(n+2))` -/
def P3894806716060009328.Spec : Prop :=
  ∀ n, P3894806716060009328.a n = A183041 n

end A183041

/-!
# A183042: Least number of knight's moves from (0,0) to the segment of points (0,n), (1,n-1), ..., (n,0) on infinite chessboard.

The programs for A183042, there is no canonical definition to state claims against.
-/

/-! ## A183042.P6340160037312774389

`A183050(n)+A018837(n)`
-/

namespace A183042.P6340160037312774389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183050 n + A018837 n

end

end A183042.P6340160037312774389

/-! ## A183042.P16475778166445092076

`A047876(n-char[2])`
-/

namespace A183042.P16475778166445092076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A183042.P16475778166445092076

/-! ## A183042.P3848137935160943983

`A047876(n)-A010673(A055672(n))`
-/

namespace A183042.P3848137935160943983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - A010673 (A055672 n).toNat

end

end A183042.P3848137935160943983

/-! ## A183042.P11977994588212908500

`A047876(n)-A027656(A136548(n+1))`
-/

namespace A183042.P11977994588212908500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - A027656 (A136548 (n + 1)).toNat

end

end A183042.P11977994588212908500

/-! ## A183042.P13099565052221653706

`A047876(n)-and(2, A038284(n))`
-/

namespace A183042.P13099565052221653706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - Int.land 2 (A038284 n)

end

end A183042.P13099565052221653706

/-! ## A183042.P9619577393811903761

`2*A047877(n-char[2])`
-/

namespace A183042.P9619577393811903761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047877 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A183042.P9619577393811903761

/-! ## A183042.P8476611382934030030

`A047876(n)-and(2, A131577(n))`
-/

namespace A183042.P8476611382934030030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - Int.land 2 (A131577 n)

end

end A183042.P8476611382934030030

/-! ## A183042.P4414562579870393579

`A005843(A047877(n-char[2]))`
-/

namespace A183042.P4414562579870393579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047877 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A183042.P4414562579870393579

/-! ## A183042.P9159884209298635966

`A183050(n)+A049604(∑[n])`
-/

namespace A183042.P9159884209298635966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183050 n + A049604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183042.P9159884209298635966

/-! ## A183042.P14061003488623948667

`A183050(n)+A183043(∑[n])`
-/

namespace A183042.P14061003488623948667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183050 n + A183043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183042.P14061003488623948667

/-!
# A183043: Triangular array, T(i,j)=number of knight's moves to points on vertical segments (n,0), (n,1),...,(n,n) on infinite chessboard.

The programs for A183043, there is no canonical definition to state claims against.
-/

/-! ## A183043.P17245838370252258886

`A065775(A245300(n))`
-/

namespace A183043.P17245838370252258886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 (A245300 n).toNat

end

end A183043.P17245838370252258886

/-! ## A183043.P6879789013486157480

`A183045(A004201(n+1))`
-/

namespace A183043.P6879789013486157480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183045 (A004201 (n + 1)).toNat

end

end A183043.P6879789013486157480

/-! ## A183043.P14426235634127194171

`A183045(A061885(n)+1)`
-/

namespace A183043.P14426235634127194171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183045 (A061885 n + 1).toNat

end

end A183043.P14426235634127194171

/-! ## A183043.P11118354282946661552

`A183045(A057944(n)+1+n)`
-/

namespace A183043.P11118354282946661552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183045 (A057944 n + 1 + (n : ℤ)).toNat

end

end A183043.P11118354282946661552

/-! ## A183043.P9973451018173107114

`A183045(2*n+1-A002262(n))`
-/

namespace A183043.P9973451018173107114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183045 ((2 * n + 1 : ℤ) - A002262 n).toNat

end

end A183043.P9973451018173107114

/-!
# A183044: Sums of least numbers of knight's moves on vertical segments (n,0) to (n,n) on infinite chessboard.

The programs for A183044, there is no canonical definition to state claims against.
-/

/-! ## A183044.P1755956473115839518

`(A183046(n)+A018837(n))/2`
-/

namespace A183044.P1755956473115839518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183046 n + A018837 n : ℚ) / 2

end

end A183044.P1755956473115839518

/-! ## A183044.P14815108227989696633

`A001281(A183046(n)+A018837(n))`
-/

namespace A183044.P14815108227989696633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A183046 n + A018837 n).toNat

end

end A183044.P14815108227989696633

/-! ## A183044.P14034837072736059554

`A018837(A183046(n)+A004526(n))`
-/

namespace A183044.P14034837072736059554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (A183046 n + A004526 n).toNat

end

end A183044.P14034837072736059554

/-! ## A183044.P18322705969114268539

`A004525(A183046(n)+A018837(n))`
-/

namespace A183044.P18322705969114268539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A183046 n + A018837 n).toNat

end

end A183044.P18322705969114268539

/-! ## A183044.P3425738451929106502

`A006370(A183046(n)+A018837(n))`
-/

namespace A183044.P3425738451929106502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A183046 n + A018837 n).toNat

end

end A183044.P3425738451929106502

/-!
# A183045: Triangular array, T(i,j)=number of knight's moves to points on vertical segments (n,-n), (n,-n+1), ... (n,n) on infinite chessboard.

The programs for A183045, there is no canonical definition to state claims against.
-/

/-! ## A183045.P2386314726609937434

`A344129(eq[n, A068226(n+1)])`
-/

namespace A183045.P2386314726609937434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183045.P2386314726609937434

/-! ## A183045.P15653305019360154559

`A001222(A113452(3*(n+1))+A109048(n))`
-/

namespace A183045.P15653305019360154559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A113452 (3 * (n + 1)) + A109048 n).toNat

end

end A183045.P15653305019360154559

/-! ## A183045.P11416879956783016938

`A001222(A178372(n+1)+A176656(n+1))`
-/

namespace A183045.P11416879956783016938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178372 (n + 1) + A176656 (n + 1)).toNat

end

end A183045.P11416879956783016938

/-! ## A183045.P9515335097171881580

`gcd(A139371(n+1), A139401(A139398(n+3)))`
-/

namespace A183045.P9515335097171881580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139371 (n + 1)) (A139401 (A139398 (n + 3)).toNat)

end

end A183045.P9515335097171881580

/-! ## A183045.P10146736905992334221

`A001222(A231006(n)+A032120(n))`
-/

namespace A183045.P10146736905992334221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A231006 n + A032120 n).toNat

end

end A183045.P10146736905992334221

/-!
# A183046: Sums of knight's moves from (0,0) to vertical segments (n,-n) to (n,n) on infinite chessboard.

The programs for A183046, there is no canonical definition to state claims against.
-/

/-! ## A183046.P1775047177847666055

`2*A183044(n)-A018837(n)`
-/

namespace A183046.P1775047177847666055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183044 n - A018837 n

end

end A183046.P1775047177847666055

/-! ## A183046.P18210033948569668473

`2*A183044(n)-A049604(A000217(n))`
-/

namespace A183046.P18210033948569668473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183044 n - A049604 (A000217 n).toNat

end

end A183046.P18210033948569668473

/-! ## A183046.P1565259864504709210

`A005843(A183044(n))-A018837(n)`
-/

namespace A183046.P1565259864504709210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A183044 n).toNat - A018837 n

end

end A183046.P1565259864504709210

/-! ## A183046.P13120792037304426651

`A005843(A183044(n))-A083219(2*char[1]+n)`
-/

namespace A183046.P13120792037304426651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A183044 n).toNat - A083219 (2 * (if ∃ j, f1 j = n then 1 else 0) + n)

end

end A183046.P13120792037304426651

/-! ## A183046.P1937147254004173825

`A005843(A183044(n))-A106249((char[1]+1)*(n+1))`
-/

namespace A183046.P1937147254004173825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A183044 n).toNat - A106249 (((if ∃ j, f1 j = n then 1 else 0) + 1) * (n + 1))

end

end A183046.P1937147254004173825

/-! ## A183046.P17806523478414692824

`A005843(A183044(n))-A049604(A000217(n))`
-/

namespace A183046.P17806523478414692824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A183044 n).toNat - A049604 (A000217 n).toNat

end

end A183046.P17806523478414692824

/-! ## A183046.P14090884523476950607

`A005843(A183044(n))-(A183042(n)-A183050(n))`
-/

namespace A183046.P14090884523476950607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A183044 n).toNat - (A183042 n - A183050 n)

end

end A183046.P14090884523476950607

/-!
# A183047: Sums of least knight's moves from (0,0) to points in the square lattice [-n,n]x[-n,n].

The programs for A183047, there is no canonical definition to state claims against.
-/

/-! ## A183047.P3159440783012189013

`∑[A183048(n)]`
-/

namespace A183047.P3159440783012189013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183047.P3159440783012189013

/-! ## A183047.P3350673728557647072

`A183048(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A183047.P3350673728557647072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A183048 n + a (A023443 n).toNat

end

end A183047.P3350673728557647072

/-!
# A183048: Sums of least number of knight's moves on boundaries of squares [-n,n]x[-n,n] on infinite chessboard.

The programs for A183048, there is no canonical definition to state claims against.
-/

/-! ## A183048.P5310058554000895159

`record[Δ[A183047(A028391(n))]]`
-/

namespace A183048.P5310058554000895159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183047 (A028391 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183048.P5310058554000895159

/-! ## A183048.P9207891048245218225

`record[Δ[A183047(A056847(n))]]`
-/

namespace A183048.P9207891048245218225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183047 (A056847 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183048.P9207891048245218225

/-! ## A183048.P7945483623761148144

`record[Δ[A183047(A057353(n))]]`
-/

namespace A183048.P7945483623761148144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183047 (A057353 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183048.P7945483623761148144

/-! ## A183048.P4729730898749730241

`record[Δ[A183047(A057359(n))]]`
-/

namespace A183048.P4729730898749730241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183047 (A057359 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183048.P4729730898749730241

/-! ## A183048.P238230912556990140

`Δ[A183047(log2(ceil(2^(n-1))))]`
-/

namespace A183048.P238230912556990140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183047 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183048.P238230912556990140

/-!
# A183049: Array of least knight's moves to points (n,0), (n-1,1), ..., (1,n-1) on infinite chessboard.

The programs for A183049, there is no canonical definition to state claims against.
-/

/-! ## A183049.P14710992021818131077

`A065775(comp[∑[n+2]])`
-/

namespace A183049.P14710992021818131077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A183049.P14710992021818131077

/-! ## A183049.P6020748681643833743

`A049604(lt[A002262(n)%2, A124328(n+2)])`
-/

namespace A183049.P6020748681643833743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049604 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A183049.P6020748681643833743

/-!
# A183050: Sums of knight's moves to points as in A183049.

The programs for A183050, there is no canonical definition to state claims against.
-/

/-! ## A183050.P4875567623533748332

`A183052(n)/4`
-/

namespace A183050.P4875567623533748332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183052 n : ℚ) / 4

end

end A183050.P4875567623533748332

/-! ## A183050.P4755720865670385183

`A183042(n)-A018837(n)`
-/

namespace A183050.P4755720865670385183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183042 n - A018837 n

end

end A183050.P4755720865670385183

/-! ## A183050.P4540585736557075914

`A047876(n-char[2])-A018837(n)`
-/

namespace A183050.P4540585736557075914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 (n - (if ∃ j, f1 j = n then 1 else 0)) - A018837 n

end

end A183050.P4540585736557075914

/-! ## A183050.P4256475202570043763

`A047876(n-char[2])-A106249((char[1]+1)*(n+1))`
-/

namespace A183050.P4256475202570043763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 (n - (if ∃ j, f1 j = n then 1 else 0)) - A106249 (((if ∃ j, f2 j = n then 1 else 0) + 1) * (n + 1))

end

end A183050.P4256475202570043763

/-! ## A183050.P12721957241098562712

`A047876(n-char[2])-A047878(A047269(n+1))`
-/

namespace A183050.P12721957241098562712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 (n - (if ∃ j, f1 j = n then 1 else 0)) - A047878 (A047269 (n + 1)).toNat

end

end A183050.P12721957241098562712

/-! ## A183050.P9467207214026297902

`A047876(n)-and(2, A038284(n))-A018837(n)`
-/

namespace A183050.P9467207214026297902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - Int.land 2 (A038284 n) - A018837 n

end

end A183050.P9467207214026297902

/-! ## A183050.P8481346976527617725

`2*A047877(n-char[2])-A018837(n)`
-/

namespace A183050.P8481346976527617725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047877 (n - (if ∃ j, f1 j = n then 1 else 0)) - A018837 n

end

end A183050.P8481346976527617725

/-! ## A183050.P12815377070670560660

`A047876(n)-and(2, A131577(n))-A018837(n)`
-/

namespace A183050.P12815377070670560660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - Int.land 2 (A131577 n) - A018837 n

end

end A183050.P12815377070670560660

/-! ## A183050.P3547965560346160807

`A005843(A047877(n-char[2]))-A018837(n)`
-/

namespace A183050.P3547965560346160807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047877 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat - A018837 n

end

end A183050.P3547965560346160807

/-! ## A183050.P18082216232690071338

`A183042(n)-A049604(∑[n])`
-/

namespace A183050.P18082216232690071338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183042 n - A049604 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183050.P18082216232690071338

/-! ## A183050.P12456956040998432160

`A183042(n)-A183043(∑[n])`
-/

namespace A183050.P12456956040998432160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183042 n - A183043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183050.P12456956040998432160

/-! ## A183050.P8722800230624069296

`A047876(n-char[2])-A049604(A000217(n))`
-/

namespace A183050.P8722800230624069296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 (n - (if ∃ j, f1 j = n then 1 else 0)) - A049604 (A000217 n).toNat

end

end A183050.P8722800230624069296

/-! ## A183050.P1329022947344964283

`A005843(A047877(n-char[2]))-A183043(∑[n])`
-/

namespace A183050.P1329022947344964283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047877 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat - A183043 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A183050.P1329022947344964283

/-! ## A183050.P5958694846600863845

`A047876(n)-and(2, A038284(n))-A183043(∑[n])`
-/

namespace A183050.P5958694846600863845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047876 n - Int.land 2 (A038284 n) - A183043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183050.P5958694846600863845

/-!
# A183052: Sums of knight's moves from (0,0) to points on the square |i|+|j|=n on infinite chessboard.

The programs for A183052, there is no canonical definition to state claims against.
-/

/-! ## A183052.P4377685804394317198

`4*A183050(n)`
-/

namespace A183052.P4377685804394317198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A183050 n

end

end A183052.P4377685804394317198

/-! ## A183052.P2749727504741326359

`4*(A183042(n)-A018837(n))`
-/

namespace A183052.P2749727504741326359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A183042 n - A018837 n)

end

end A183052.P2749727504741326359

/-! ## A183052.P16300165843075116440

`4*(A047876(n-char[2])-A106249((char[1]+1)*(n+1)))`
-/

namespace A183052.P16300165843075116440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047876 (n - (if ∃ j, f1 j = n then 1 else 0)) - A106249 (((if ∃ j, f2 j = n then 1 else 0) + 1) * (n + 1)))

end

end A183052.P16300165843075116440

/-! ## A183052.P17671390507477858983

`4*(A047876(n-char[2])-A047878(A047269(n+1)))`
-/

namespace A183052.P17671390507477858983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A047876 (n - (if ∃ j, f1 j = n then 1 else 0)) - A047878 (A047269 (n + 1)).toNat)

end

end A183052.P17671390507477858983

/-! ## A183052.P9167384096995109164

`4*(2*A047877(n-char[2])-A018837(n))`
-/

namespace A183052.P9167384096995109164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A047877 (n - (if ∃ j, f1 j = n then 1 else 0)) - A018837 n)

end

end A183052.P9167384096995109164

/-! ## A183052.P13469891272570821739

`A008586(A183050(n))`
-/

namespace A183052.P13469891272570821739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A183050 n).toNat

end

end A183052.P13469891272570821739

/-! ## A183052.P6261129234253952353

`4*(A183042(n)-A049604(∑[n]))`
-/

namespace A183052.P6261129234253952353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A183042 n - A049604 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A183052.P6261129234253952353

/-! ## A183052.P16851551225126783930

`4*(A183042(n)-A183043(∑[n]))`
-/

namespace A183052.P16851551225126783930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A183042 n - A183043 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A183052.P16851551225126783930

/-!
# A183053: Sums of knight's moves over the square |i|+|j|<=n on infinite chessboard.

The programs for A183053, there is no canonical definition to state claims against.
-/

/-! ## A183053.P10900994295080052109

`∑[A183052(n)]`
-/

namespace A183053.P10900994295080052109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183053.P10900994295080052109

/-! ## A183053.P13909335703296726062

`∑[4*A183050(n)]`
-/

namespace A183053.P13909335703296726062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A183050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183053.P13909335703296726062

/-! ## A183053.P2480380419659243691

`∑[4*(A183042(n)-A018837(n))]`
-/

namespace A183053.P2480380419659243691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A183042 n - A018837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183053.P2480380419659243691

/-! ## A183053.P10009131146282451697

`∑[4*(2*A047877(n-char[2])-A018837(n))]`
-/

namespace A183053.P10009131146282451697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * A047877 (n - (if ∃ j, f2 j = n then 1 else 0)) - A018837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183053.P10009131146282451697

/-! ## A183053.P9375477510252289763

`∑[A008586(A183050(n))]`
-/

namespace A183053.P9375477510252289763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A183050 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183053.P9375477510252289763

/-! ## A183053.P4885627179508870151

`∑[4*(A183042(n)-A049604(∑[n]))]`
-/

namespace A183053.P4885627179508870151
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A183042 n - A049604 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183053.P4885627179508870151

/-!
# A183054: h(-24*n+1) where h(d) is the class number of the quadratic field with discriminant d.

The programs for A183054, there is no canonical definition to state claims against.
-/

/-! ## A183054.P10197103974461210383

`gcd(A165601(A016969(n)), A188569(n+1))`
-/

namespace A183054.P10197103974461210383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165601 (A016969 n).toNat) (A188569 (n + 1))

end

end A183054.P10197103974461210383

/-! ## A183054.P5554483066650168056

`A202084(23*(n+1)+n)`
-/

namespace A183054.P5554483066650168056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (23 * (n + 1) + n)

end

end A183054.P5554483066650168056

/-!
# A183055: Palindromic partition numbers.

The programs for A183055, there is no canonical definition to state claims against.
-/

/-! ## A183055.P6097023303243498552

`A000041(A134677(n+1))`
-/

namespace A183055.P6097023303243498552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A134677 (n + 1)).toNat

end

end A183055.P6097023303243498552

/-! ## A183055.P4319549254419834291

`A108711(A252797(n+1))`
-/

namespace A183055.P4319549254419834291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108711 (A252797 (n + 1)).toNat

end

end A183055.P4319549254419834291

/-! ## A183055.P5022589903017860337

`A063272(A273009(n+2))`
-/

namespace A183055.P5022589903017860337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A273009 (n + 2)).toNat

end

end A183055.P5022589903017860337

/-! ## A183055.P7166625172336440142

`A000041(lt[0, A372176(n)])`
-/

namespace A183055.P7166625172336440142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A183055.P7166625172336440142

/-!
# A183057: Cyclops emirps.

The programs for A183057, there is no canonical definition to state claims against.
-/

/-! ## A183057.P16504047424230525485

`∩[A134809(n+1), A159614(n+1)]`
-/

namespace A183057.P16504047424230525485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183057.P16504047424230525485

/-! ## A183057.P3246182363211267698

`∩[A159614(n+1), A162199(n+1)]`
-/

namespace A183057.P3246182363211267698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183057.P3246182363211267698

/-! ## A183057.P6617892923885716082

`∩[A134808(n+1), A159614(n+1)]`
-/

namespace A183057.P6617892923885716082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183057.P6617892923885716082

/-!
# A183058: Cyclops Sophie-Germain primes.

The programs for A183058, there is no canonical definition to state claims against.
-/

/-! ## A183058.P5093767897696804630

`∩[A005384(n+1), A134809(n+1)]`
-/

namespace A183058.P5093767897696804630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183058.P5093767897696804630

/-! ## A183058.P16521663580239006541

`∩[A118572(n+1), A134809(n+1)]`
-/

namespace A183058.P16521663580239006541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183058.P16521663580239006541

/-! ## A183058.P4532303469627064650

`∩[A134809(n+1), A161896(n+1)]`
-/

namespace A183058.P4532303469627064650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183058.P4532303469627064650

/-! ## A183058.P864943874535250755

`filter[A134809(n+1), A101264(#)]`
-/

namespace A183058.P864943874535250755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A183058.P864943874535250755

/-!
# A183059: Cyclops primes p such that 2p+1 is also a Cyclops prime.

The programs for A183059, there is no canonical definition to state claims against.
-/

/-! ## A183059.P17067953987628005397

`A183058(p?[A226167(n+1)]-n)`
-/

namespace A183059.P17067953987628005397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ)).toNat

end

end A183059.P17067953987628005397

/-!
# A183060: Number of "ON" cells at n-th stage in a simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A183060, the canonical program `A183060.P15810136757882234641` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183060 has offset 0).

The definition of A183060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183060.P15142437880639750664

`∑[A183061(n)]`
-/

namespace A183060.P15142437880639750664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183060.P15142437880639750664

namespace A183060

/-- `∑[A183061(n)]` -/
def P15142437880639750664.Spec : Prop :=
  ∀ n, P15142437880639750664.a n = A183060 n

end A183060

/-! ## A183060.P15810136757882234641

`floor(A147562(n)/2+n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A183060

/-- `floor(A147562(n)/2+n)` -/
def P15810136757882234641.Spec : Prop :=
  ∀ n, P15810136757882234641.a n = A183060 n

theorem P15810136757882234641.correct : P15810136757882234641.Spec := by
  intro n
  simp only [A183060]

end A183060

/-! ## A183060.P15571559365077563463

`(A147562(n)+A004273(n))/2`
-/

namespace A183060.P15571559365077563463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 n + A004273 n : ℚ) / 2

end

end A183060.P15571559365077563463

namespace A183060

/-- `(A147562(n)+A004273(n))/2` -/
def P15571559365077563463.Spec : Prop :=
  ∀ n, P15571559365077563463.a n = (A183060 n : ℚ)

end A183060

/-! ## A183060.P8631842590331145395

`A004273(n)+A151917(n)-n`
-/

namespace A183060.P8631842590331145395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A151917 n - (n : ℤ))

end

end A183060.P8631842590331145395

namespace A183060

/-- `A004273(n)+A151917(n)-n` -/
def P8631842590331145395.Spec : Prop :=
  ∀ n, P8631842590331145395.a n = A183060 n

end A183060

/-! ## A183060.P13448738227841974943

`A147562(n)+n-A151917(n)`
-/

namespace A183060.P13448738227841974943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n + ((n : ℤ) - A151917 n)

end

end A183060.P13448738227841974943

namespace A183060

/-- `A147562(n)+n-A151917(n)` -/
def P13448738227841974943.Spec : Prop :=
  ∀ n, P13448738227841974943.a n = A183060 n

end A183060

/-! ## A183060.P15377738804583624081

`(A147562(n)+record[A026741(n)])/2`
-/

namespace A183060.P15377738804583624081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A183060.P15377738804583624081

namespace A183060

/-- `(A147562(n)+record[A026741(n)])/2` -/
def P15377738804583624081.Spec : Prop :=
  ∀ n, P15377738804583624081.a n = (A183060 n : ℚ)

end A183060

/-! ## A183060.P4743207037260418226

`A151917(n)+n²%A002061(n)`
-/

namespace A183060.P4743207037260418226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 n + Int.tmod (n ^ 2 : ℤ) (A002061 n)

end

end A183060.P4743207037260418226

namespace A183060

/-- `A151917(n)+n²%A002061(n)` -/
def P4743207037260418226.Spec : Prop :=
  ∀ n, P4743207037260418226.a n = A183060 n

end A183060

/-! ## A183060.P3284447249684842787

`A151917(n)+A005843(n)%(n+1)`
-/

namespace A183060.P3284447249684842787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 n + Int.tmod (A005843 n) (n + 1 : ℤ)

end

end A183060.P3284447249684842787

namespace A183060

/-- `A151917(n)+A005843(n)%(n+1)` -/
def P3284447249684842787.Spec : Prop :=
  ∀ n, P3284447249684842787.a n = A183060 n

end A183060

/-! ## A183060.P16058590564674195303

`A151917(n)+A016777(n)%(n+1)`
-/

namespace A183060.P16058590564674195303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 n + Int.tmod (A016777 n) (n + 1 : ℤ)

end

end A183060.P16058590564674195303

namespace A183060

/-- `A151917(n)+A016777(n)%(n+1)` -/
def P16058590564674195303.Spec : Prop :=
  ∀ n, P16058590564674195303.a n = A183060 n

end A183060

/-! ## A183060.P3068805402754866769

`A151917(n)+A004526(A004273(n))`
-/

namespace A183060.P3068805402754866769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 n + A004526 (A004273 n).toNat

end

end A183060.P3068805402754866769

namespace A183060

/-- `A151917(n)+A004526(A004273(n))` -/
def P3068805402754866769.Spec : Prop :=
  ∀ n, P3068805402754866769.a n = A183060 n

end A183060

/-! ## A183060.P6132404403824323068

`(A147562(n)+A014681(A005843(n)))/2`
-/

namespace A183060.P6132404403824323068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 n + A014681 (A005843 n).toNat : ℚ) / 2

end

end A183060.P6132404403824323068

namespace A183060

/-- `(A147562(n)+A014681(A005843(n)))/2` -/
def P6132404403824323068.Spec : Prop :=
  ∀ n, P6132404403824323068.a n = (A183060 n : ℚ)

end A183060

/-! ## A183060.P4825749778135266043

`(A183148(n+1)-1)/3`
-/

namespace A183060.P4825749778135266043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183148 (n + 1) - 1 : ℚ) / 3

end

end A183060.P4825749778135266043

namespace A183060

/-- `(A183148(n+1)-1)/3` -/
def P4825749778135266043.Spec : Prop :=
  ∀ n, P4825749778135266043.a n = (A183060 n : ℚ)

end A183060

/-! ## A183060.P14286672062063151510

`A151917(n)+log2(A011782(n))`
-/

namespace A183060.P14286672062063151510
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151917 n : ℝ) + Real.logb 2 (A011782 n : ℝ)

end

end A183060.P14286672062063151510

namespace A183060

/-- `A151917(n)+log2(A011782(n))` -/
def P14286672062063151510.Spec : Prop :=
  ∀ n, P14286672062063151510.a n = (A183060 n : ℝ)

end A183060

/-! ## A183060.P17060774272342163674

`A004526(A147562(n))+n`
-/

namespace A183060.P17060774272342163674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147562 n).toNat + (n : ℤ)

end

end A183060.P17060774272342163674

namespace A183060

/-- `A004526(A147562(n))+n` -/
def P17060774272342163674.Spec : Prop :=
  ∀ n, P17060774272342163674.a n = A183060 n

end A183060

/-! ## A183060.P7010042550610562681

`A026741(A147562(n)+record[A026741(n)])`
-/

namespace A183060.P7010042550610562681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A147562 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A183060.P7010042550610562681

namespace A183060

/-- `A026741(A147562(n)+record[A026741(n)])` -/
def P7010042550610562681.Spec : Prop :=
  ∀ n, P7010042550610562681.a n = A183060 n

end A183060

/-! ## A183060.P8275309233534911927

`A026741(A147562(n)+eq[n, A026741(n)])`
-/

namespace A183060.P8275309233534911927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A147562 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A183060.P8275309233534911927

namespace A183060

/-- `A026741(A147562(n)+eq[n, A026741(n)])` -/
def P8275309233534911927.Spec : Prop :=
  ∀ n, P8275309233534911927.a n = A183060 n

end A183060

/-!
# A183061: First differences of A183060.

The programs for A183061, the canonical program `A183061.P3437069056470599292` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183061 has offset 0).

The definition of A183061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183061.P9433652703275443844

`A160173(n)+1-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A183061.P9433652703275443844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A160173 n + (1 - a (n - 1))

end

end A183061.P9433652703275443844

namespace A183061

/-- `A160173(n)+1-a(n-1)` -/
def P9433652703275443844.Spec : Prop :=
  ∀ n, P9433652703275443844.a n = A183061 n

end A183061

/-! ## A183061.P3437069056470599292

`A183060(n)-A183060(A183060(n)-A151917(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A183061

/-- `A183060(n)-A183060(A183060(n)-A151917(n))` -/
def P3437069056470599292.Spec : Prop :=
  ∀ n, P3437069056470599292.a n = A183061 n

theorem P3437069056470599292.correct : P3437069056470599292.Spec := by
  intro n
  simp only [A183061]

end A183061

/-! ## A183061.P5139238907224543102

`Δ[floor(A183148(n)/3)]`
-/

namespace A183061.P5139238907224543102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183148 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183061.P5139238907224543102

namespace A183061

/-- `Δ[floor(A183148(n)/3)]` -/
def P5139238907224543102.Spec : Prop :=
  ∀ n, P5139238907224543102.a n = A183061 n

end A183061

/-! ## A183061.P3976399936349022325

`A183060(n)-A183060(log2(A011782(n)))`
-/

namespace A183061.P3976399936349022325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 n - A183060 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A183061.P3976399936349022325

namespace A183061

/-- `A183060(n)-A183060(log2(A011782(n)))` -/
def P3976399936349022325.Spec : Prop :=
  ∀ n, P3976399936349022325.a n = A183061 n

end A183061

/-! ## A183061.P17041137037307450283

`Δ[A183060(log2(ceil(2^(n-1))))]`
-/

namespace A183061.P17041137037307450283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183060 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183061.P17041137037307450283

namespace A183061

/-- `Δ[A183060(log2(ceil(2^(n-1))))]` -/
def P17041137037307450283.Spec : Prop :=
  ∀ n, P17041137037307450283.a n = A183061 n

end A183061

/-! ## A183061.P9406979098607480138

`A008611(A003972(A131136(n)))`
-/

namespace A183061.P9406979098607480138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A003972 (A131136 n).toNat).toNat

end

end A183061.P9406979098607480138

namespace A183061

/-- `A008611(A003972(A131136(n)))` -/
def P9406979098607480138.Spec : Prop :=
  ∀ n, P9406979098607480138.a n = A183061 n

end A183061

/-! ## A183061.P4329189331511161112

`A002264(A183148(n+1)-A183148(n))`
-/

namespace A183061.P4329189331511161112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A183148 (n + 1) - A183148 n).toNat

end

end A183061.P4329189331511161112

namespace A183061

/-- `A002264(A183148(n+1)-A183148(n))` -/
def P4329189331511161112.Spec : Prop :=
  ∀ n, P4329189331511161112.a n = A183061 n

end A183061

/-! ## A183061.P824277846724751725

`A332249(A186411(n))`
-/

namespace A183061.P824277846724751725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A186411 n).toNat

end

end A183061.P824277846724751725

namespace A183061

/-- `A332249(A186411(n))` -/
def P824277846724751725.Spec : Prop :=
  ∀ n, P824277846724751725.a n = A183061 n

end A183061

/-! ## A183061.P1291582302438065481

`A008615(A183127(n+1))`
-/

namespace A183061.P1291582302438065481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A183127 (n + 1)).toNat

end

end A183061.P1291582302438065481

namespace A183061

/-- `A008615(A183127(n+1))` -/
def P1291582302438065481.Spec : Prop :=
  ∀ n, P1291582302438065481.a n = A183061 n

end A183061

/-! ## A183061.P12636496854362907794

`floor(A183149(n+1)/3)`
-/

namespace A183061.P12636496854362907794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183149 (n + 1) : ℚ) / 3⌋

end

end A183061.P12636496854362907794

namespace A183061

/-- `floor(A183149(n+1)/3)` -/
def P12636496854362907794.Spec : Prop :=
  ∀ n, P12636496854362907794.a n = A183061 n

end A183061

/-!
# A183062: 

The programs for A183062, there is no canonical definition to state claims against.
-/

/-! ## A183062.P585746927244338445

`(A000040(n+1)^29)²`
-/

namespace A183062.P585746927244338445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 29) ^ 2

end

end A183062.P585746927244338445

/-! ## A183062.P10335054776595876444

`p?[A018252(n+1)-7]^58`
-/

namespace A183062.P10335054776595876444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 58

end

end A183062.P10335054776595876444

/-! ## A183062.P4211917722507251625

`A000040(-xor(n, -1))²^29`
-/

namespace A183062.P4211917722507251625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 29

end

end A183062.P4211917722507251625

/-!
# A183063: Number of even divisors of n.

The programs for A183063, the canonical program `A183063.P14549643650991336837` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183063 has offset 1).

The definition of A183063 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183063.P15697906730374952788

`A000005(n+1)-A001227(n+1)`
-/

namespace A183063.P15697906730374952788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001227 (n + 1)

end

end A183063.P15697906730374952788

namespace A183063

/-- `A000005(n+1)-A001227(n+1)` -/
def P15697906730374952788.Spec : Prop :=
  ∀ n, P15697906730374952788.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P9256791507389906695

`A069735(n+1)-A000005(n+1)`
-/

namespace A183063.P9256791507389906695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (n + 1) - A000005 (n + 1)

end

end A183063.P9256791507389906695

namespace A183063

/-- `A069735(n+1)-A000005(n+1)` -/
def P9256791507389906695.Spec : Prop :=
  ∀ n, P9256791507389906695.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P14549643650991336837

`A062011(n+1)-A099777(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183063

/-- `A062011(n+1)-A099777(n+1)` -/
def P14549643650991336837.Spec : Prop :=
  ∀ n, P14549643650991336837.a n = A183063 (n + 1)

theorem P14549643650991336837.correct : P14549643650991336837.Spec := by
  intro n
  simp only [A183063, Nat.add_sub_cancel]

end A183063

/-! ## A183063.P4618838529697863637

`A007814(n+1)*A001227(n+1)`
-/

namespace A183063.P4618838529697863637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) * A001227 (n + 1)

end

end A183063.P4618838529697863637

namespace A183063

/-- `A007814(n+1)*A001227(n+1)` -/
def P4618838529697863637.Spec : Prop :=
  ∀ n, P4618838529697863637.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P12321052808054513529

`A000005(A000265(n+1))*A007814(n+1)`
-/

namespace A183063.P12321052808054513529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat * A007814 (n + 1)

end

end A183063.P12321052808054513529

namespace A183063

/-- `A000005(A000265(n+1))*A007814(n+1)` -/
def P12321052808054513529.Spec : Prop :=
  ∀ n, P12321052808054513529.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P11509240726330467000

`∑{d}[n+1, log2(gcd(2, #))]`
-/

namespace A183063.P11509240726330467000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (Nat.gcd 2 d : ℝ)

end

end A183063.P11509240726330467000

namespace A183063

/-- `∑{d}[n+1, log2(gcd(2, #))]` -/
def P11509240726330467000.Spec : Prop :=
  ∀ n, P11509240726330467000.a n = (A183063 (n + 1) : ℝ)

end A183063

/-! ## A183063.P10862153533581499246

`∑{d}[n+1, (#+1)%2]`
-/

namespace A183063.P10862153533581499246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1) % 2

end

end A183063.P10862153533581499246

namespace A183063

/-- `∑{d}[n+1, (#+1)%2]` -/
def P10862153533581499246.Spec : Prop :=
  ∀ n, (P10862153533581499246.a n : ℤ) = A183063 (n + 1)

end A183063

/-! ## A183063.P15915896932120451541

`∑{d}[n+1, and(1, #+1)]`
-/

namespace A183063.P15915896932120451541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 (d + 1)

end

end A183063.P15915896932120451541

namespace A183063

/-- `∑{d}[n+1, and(1, #+1)]` -/
def P15915896932120451541.Spec : Prop :=
  ∀ n, (P15915896932120451541.a n : ℤ) = A183063 (n + 1)

end A183063

/-! ## A183063.P1784182462652903013

`∑{d}[n+1, or(1, #)-#]`
-/

namespace A183063.P1784182462652903013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lor 1 d : ℤ) - (d : ℤ))

end

end A183063.P1784182462652903013

namespace A183063

/-- `∑{d}[n+1, or(1, #)-#]` -/
def P1784182462652903013.Spec : Prop :=
  ∀ n, P1784182462652903013.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P14070008966035473412

`∑{d}[2*(n+1), (-1)^#]`
-/

namespace A183063.P14070008966035473412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ d

end

end A183063.P14070008966035473412

namespace A183063

/-- `∑{d}[2*(n+1), (-1)^#]` -/
def P14070008966035473412.Spec : Prop :=
  ∀ n, P14070008966035473412.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P16423888416049317869

`Δ[A006218(floor(n/2))]`
-/

namespace A183063.P16423888416049317869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183063.P16423888416049317869

namespace A183063

/-- `Δ[A006218(floor(n/2))]` -/
def P16423888416049317869.Spec : Prop :=
  ∀ n, P16423888416049317869.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P10958805240265211809

`Δ[A054519(floor(n/2))]`
-/

namespace A183063.P10958805240265211809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A183063.P10958805240265211809

namespace A183063

/-- `Δ[A054519(floor(n/2))]` -/
def P10958805240265211809.Spec : Prop :=
  ∀ n, P10958805240265211809.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P7778265550931964428

`1-A325937(2*(n+1))`
-/

namespace A183063.P7778265550931964428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A325937 (2 * (n + 1))

end

end A183063.P7778265550931964428

namespace A183063

/-- `1-A325937(2*(n+1))` -/
def P7778265550931964428.Spec : Prop :=
  ∀ n, P7778265550931964428.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P3540175176458920350

`A325939(2*(n+1))-1`
-/

namespace A183063.P3540175176458920350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (2 * (n + 1)) - 1

end

end A183063.P3540175176458920350

namespace A183063

/-- `A325939(2*(n+1))-1` -/
def P3540175176458920350.Spec : Prop :=
  ∀ n, P3540175176458920350.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P14314184081794341734

`A349212(n+1)%(n+1)`
-/

namespace A183063.P14314184081794341734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349212 (n + 1)) (n + 1 : ℤ)

end

end A183063.P14314184081794341734

namespace A183063

/-- `A349212(n+1)%(n+1)` -/
def P14314184081794341734.Spec : Prop :=
  ∀ n, P14314184081794341734.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P4554498546241294026

`and(1, n)*A069157(n+1)`
-/

namespace A183063.P4554498546241294026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A069157 (n + 1)

end

end A183063.P4554498546241294026

namespace A183063

/-- `and(1, n)*A069157(n+1)` -/
def P4554498546241294026.Spec : Prop :=
  ∀ n, P4554498546241294026.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P7454992927164236034

`and(1, n)*A320111(n+1)`
-/

namespace A183063.P7454992927164236034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A320111 (n + 1)

end

end A183063.P7454992927164236034

namespace A183063

/-- `and(1, n)*A320111(n+1)` -/
def P7454992927164236034.Spec : Prop :=
  ∀ n, P7454992927164236034.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P4194401359980847703

`and(1, n)*A000005(floor(n/2)+1)`
-/

namespace A183063.P4194401359980847703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000005 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A183063.P4194401359980847703

namespace A183063

/-- `and(1, n)*A000005(floor(n/2)+1)` -/
def P4194401359980847703.Spec : Prop :=
  ∀ n, P4194401359980847703.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P8310496769017400019

`A000005(floor((n+1)/2))-a(n-1)` with `a(0)=0`
-/

namespace A183063.P8310496769017400019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 ⌊(n + 1 : ℚ) / 2⌋.toNat - a (n - 1)

end

end A183063.P8310496769017400019

namespace A183063

/-- `A000005(floor((n+1)/2))-a(n-1)` -/
def P8310496769017400019.Spec : Prop :=
  ∀ n, P8310496769017400019.a n = A183063 (n + 1)

end A183063

/-! ## A183063.P8256955400418874368

`A059851(n)-A177235(n+1)`
-/

namespace A183063.P8256955400418874368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 n - A177235 (n + 1)

end

end A183063.P8256955400418874368

namespace A183063

/-- `A059851(n)-A177235(n+1)` -/
def P8256955400418874368.Spec : Prop :=
  ∀ n, P8256955400418874368.a n = A183063 (n + 1)

end A183063

/-!
# A183064: Numbers k such that k^2+1 = 2*p^2, p prime.

The programs for A183064, there is no canonical definition to state claims against.
-/

/-! ## A183064.P10616591760863428526

`A001333(A096650(n+2))`
-/

namespace A183064.P10616591760863428526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A096650 (n + 2)).toNat

end

end A183064.P10616591760863428526

/-! ## A183064.P1964258854698582341

`A008555(2*A096650(n+2))`
-/

namespace A183064.P1964258854698582341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008555 (2 * A096650 (n + 2)).toNat

end

end A183064.P1964258854698582341

/-!
# A183065: Triangle defined by g.f.: Sum_{n>=0} (4*n)!/n!^4 * x^(2*n)*y^n/(1-x-x*y)^(4*n+1), read by rows.

The programs for A183065, there is no canonical definition to state claims against.
-/

/-! ## A183065.P5644788253223587036

`A183066(A004247(n)^A331927(n))`
-/

namespace A183065.P5644788253223587036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183066 (SequenceMachineLib.roundAway ((A004247 n : ℚ) ^ (A331927 n : ℤ))).toNat

end

end A183065.P5644788253223587036

/-! ## A183065.P616715328617650685

`A183066(A014473(n)^A331927(n))`
-/

namespace A183065.P616715328617650685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183066 (SequenceMachineLib.roundAway ((A014473 n : ℚ) ^ (A331927 n : ℤ))).toNat

end

end A183065.P616715328617650685

/-! ## A183065.P3589963677146302982

`A183066(A226545(n)^A331927(n))`
-/

namespace A183065.P3589963677146302982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183066 (SequenceMachineLib.roundAway ((A226545 n : ℚ) ^ (A331927 n : ℤ))).toNat

end

end A183065.P3589963677146302982

/-! ## A183065.P13411509336023204023

`A062325((A201647(n+1)%A100862(n))²+1)`
-/

namespace A183065.P13411509336023204023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (Int.tmod (A201647 (n + 1)) (A100862 n) ^ 2 + 1).toNat

end

end A183065.P13411509336023204023

/-!
# A183066: G.f.: A(x) = (1 + 21*x + 3*x^2 - x^3)/(1-x)^5.

The programs for A183066, the canonical program `A183066.P11164690286361550918` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183066 has offset 0).

The definition of A183066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183066.P11164690286361550918

`1+7*n+11*n²+6*n^3+n^4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183066

/-- `1+7*n+11*n²+6*n^3+n^4` -/
def P11164690286361550918.Spec : Prop :=
  ∀ n, (P11164690286361550918.a n : ℤ) = A183066 n

theorem P11164690286361550918.correct : P11164690286361550918.Spec := by
  intro n
  simp only [A183066]

end A183066

/-! ## A183066.P12182014412247953419

`lcm(n+1, ((n+1)²+n)²+n)`
-/

namespace A183066.P12182014412247953419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (((n + 1) ^ 2 + n) ^ 2 + n)

end

end A183066.P12182014412247953419

namespace A183066

/-- `lcm(n+1, ((n+1)²+n)²+n)` -/
def P12182014412247953419.Spec : Prop :=
  ∀ n, (P12182014412247953419.a n : ℤ) = A183066 n

end A183066

/-! ## A183066.P16000178257805920236

`(2*n*C(n+3, 2)+1)*(n+1)`
-/

namespace A183066.P16000178257805920236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.choose (n + 3) 2 + 1) * (n + 1)

end

end A183066.P16000178257805920236

namespace A183066

/-- `(2*n*C(n+3, 2)+1)*(n+1)` -/
def P16000178257805920236.Spec : Prop :=
  ∀ n, (P16000178257805920236.a n : ℤ) = A183066 n

end A183066

/-! ## A183066.P5183894830391442813

`∑[A272871(n+1)+1]`
-/

namespace A183066.P5183894830391442813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183066.P5183894830391442813

namespace A183066

/-- `∑[A272871(n+1)+1]` -/
def P5183894830391442813.Spec : Prop :=
  ∀ n, P5183894830391442813.a n = A183066 n

end A183066

/-! ## A183066.P9080978103829832713

`∑[A144129(n+1)-n]`
-/

namespace A183066.P9080978103829832713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183066.P9080978103829832713

namespace A183066

/-- `∑[A144129(n+1)-n]` -/
def P9080978103829832713.Spec : Prop :=
  ∀ n, P9080978103829832713.a n = A183066 n

end A183066

/-! ## A183066.P4505524711962632211

`(n+1)*A123972(n+2)`
-/

namespace A183066.P4505524711962632211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123972 (n + 2)

end

end A183066.P4505524711962632211

namespace A183066

/-- `(n+1)*A123972(n+2)` -/
def P4505524711962632211.Spec : Prop :=
  ∀ n, P4505524711962632211.a n = A183066 n

end A183066

/-!
# A183067: G.f.: A(x) = Sum_{n>=0} (4n)!/n!^4 * x^(2n)/(1-2*x)^(4n+1).

The programs for A183067, there is no canonical definition to state claims against.
-/

/-! ## A183067.P5853484235741300742

`A147562(n)+A067567(A050352(n))`
-/

namespace A183067.P5853484235741300742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n + A067567 (A050352 n).toNat

end

end A183067.P5853484235741300742

/-!
# A183068: Central terms of triangle A183065.

The programs for A183068, there is no canonical definition to state claims against.
-/

/-! ## A183068.P2207091849755844154

`A183065(∑[4*n])`
-/

namespace A183068.P2207091849755844154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183068.P2207091849755844154

/-!
# A183069: L.g.f.: Sum_{n>=1,k>=0} CATALAN(n,k)^2 * x^(n+k)/n = Sum_{n>=1} a(n)*x^n/n, where CATALAN(n,k) = n*C(n+2*k-1,k)/(n+k) is the coefficient of x^k in C(x)^n and C(x) is the g.f. of the Catalan numbers.

The programs for A183069, there is no canonical definition to state claims against.
-/

/-! ## A183069.P9201962201600902687

`A003162(Δ[n²])`
-/

namespace A183069.P9201962201600902687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A183069.P9201962201600902687

/-! ## A183069.P17522013022940402552

`record[A003162(A000265(n+1))]`
-/

namespace A183069.P17522013022940402552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003162 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183069.P17522013022940402552

/-! ## A183069.P16283992292293999925

`record[A003162(A065190(n+1))]`
-/

namespace A183069.P16283992292293999925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003162 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183069.P16283992292293999925

/-! ## A183069.P9124498829047630839

`A003161(2*n+1)/A001700(n)`
-/

namespace A183069.P9124498829047630839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 (2 * n + 1) : ℚ) / (A001700 n : ℚ)

end

end A183069.P9124498829047630839

/-! ## A183069.P8383180850435459706

`A003161(2*n+1)/A001405(2*n+1)`
-/

namespace A183069.P8383180850435459706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 (2 * n + 1) : ℚ) / (A001405 (2 * n + 1) : ℚ)

end

end A183069.P8383180850435459706

/-! ## A183069.P4205286166189997157

`A003161(2*n+1)/A037952(2*n+1)`
-/

namespace A183069.P4205286166189997157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 (2 * n + 1) : ℚ) / (A037952 (2 * n + 1) : ℚ)

end

end A183069.P4205286166189997157

/-! ## A183069.P3872659487148750437

`abs(A003161(2*n+1)/A126930(2*n+1))`
-/

namespace A183069.P3872659487148750437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A003161 (2 * n + 1) : ℚ) / (A126930 (2 * n + 1) : ℚ)|

end

end A183069.P3872659487148750437

/-! ## A183069.P3763995293590741091

`A003161(2*n+1)/A007318(2*(n+1)²)`
-/

namespace A183069.P3763995293590741091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003161 (2 * n + 1) : ℚ) / (A007318 (2 * (n + 1) ^ 2) : ℚ)

end

end A183069.P3763995293590741091

/-!
# A183070: G.f.: A(x) = exp( Sum_{n>=1,k>=0} CATALAN(n,k)^2*x^(n+k)/n ), where CATALAN(n,k) = n*C(n+2*k-1,k)/(n+k) is the coefficient of x^k in C(x)^n and C(x) is the g.f. of the Catalan numbers.

The programs for A183070, there is no canonical definition to state claims against.
-/

/-! ## A183070.P10170027399115994787

`A357413(A149396(n))`
-/

namespace A183070.P10170027399115994787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357413 (A149396 n).toNat

end

end A183070.P10170027399115994787

/-! ## A183070.P1903042407928087162

`A194920(∑[A087761(n)])`
-/

namespace A183070.P1903042407928087162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A183070.P1903042407928087162

/-!
# A183071: Positive integers k such that each prime divisor of 2^k - 1 has the form 4j + 3.

The programs for A183071, there is no canonical definition to state claims against.
-/

/-! ## A183071.P17877899230510964403

`log2(A183075(n+1)+1)`
-/

namespace A183071.P17877899230510964403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A183075 (n + 1) + 1 : ℝ)

end

end A183071.P17877899230510964403

/-! ## A183071.P11506604920775715848

`val(A183075(A028310(n+1))+1, 2)`
-/

namespace A183071.P11506604920775715848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A183075 (A028310 (n + 1)).toNat + 1).toNat 2

end

end A183071.P11506604920775715848

/-! ## A183071.P6593149064119392451

`val(A183075(n+1)+1, 2)%A028329(n)`
-/

namespace A183071.P6593149064119392451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A183075 (n + 1) + 1).toNat 2 : ℤ) (A028329 n)

end

end A183071.P6593149064119392451

/-! ## A183071.P6882541832143818902

`val(Δ[A183075(n+1)], A183037(2*n+3))`
-/

namespace A183071.P6882541832143818902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A183037 (2 * n + 3)).toNat

end

end A183071.P6882541832143818902

/-!
# A183072: Positive integers k such that 2^k - 1 is composite and each of its prime divisors has the form 4j + 3.

The programs for A183072, there is no canonical definition to state claims against.
-/

/-! ## A183072.P8372463600272458303

`ceil(log2(A183076(n+1)))`
-/

namespace A183072.P8372463600272458303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A183076 (n + 1) : ℝ)⌉

end

end A183072.P8372463600272458303

/-! ## A183072.P8756526656306034469

`log2(A183076(n+1)+A033999(n)²)`
-/

namespace A183072.P8756526656306034469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A183076 (n + 1) + A033999 n ^ 2 : ℝ)

end

end A183072.P8756526656306034469

/-! ## A183072.P8651776151521241509

`log2(A183076(n+1)+char[A002251(n)])`
-/

namespace A183072.P8651776151521241509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A183076 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℝ)

end

end A183072.P8651776151521241509

/-! ## A183072.P3907798542753265359

`log2(abs(A000035(2*(n+1))-A183076(n+1))+1)`
-/

namespace A183072.P3907798542753265359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|A000035 (2 * (n + 1)) - A183076 (n + 1)| + 1 : ℝ)

end

end A183072.P3907798542753265359

/-! ## A183072.P14942844548499087847

`val(Δ[A183076(n+1)], A141310(2*n+3))`
-/

namespace A183072.P14942844548499087847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A141310 (2 * n + 3)).toNat

end

end A183072.P14942844548499087847

/-!
# A183073: Prime numbers p such that each prime divisor of 2^p - 1 has the form 4j + 3.

The programs for A183073, there is no canonical definition to state claims against.
-/

/-! ## A183073.P1198752257968835479

`p?[A183071(n+1)]`
-/

namespace A183073.P1198752257968835479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183073.P1198752257968835479

/-! ## A183073.P12557924829142860088

`record[A006530(A183071(n+2))]`
-/

namespace A183073.P12557924829142860088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A183071 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183073.P12557924829142860088

/-! ## A183073.P14621045942049846345

`filter[A183071(n+1), A010051(#)]`
-/

namespace A183073.P14621045942049846345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A183073.P14621045942049846345

/-! ## A183073.P17808949697100763058

`filter[A183071(n+1), A069513(#)]`
-/

namespace A183073.P17808949697100763058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A183073.P17808949697100763058

/-! ## A183073.P16490418884401578699

`filter[A183071(n+1), A144101(#)]`
-/

namespace A183073.P16490418884401578699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A183073.P16490418884401578699

/-!
# A183074: Prime numbers p such that 2^p - 1 is composite and each of its prime divisors has the form 4j + 3.

The programs for A183074, there is no canonical definition to state claims against.
-/

/-! ## A183074.P4757679091123417734

`p?[A183072(n+1)]`
-/

namespace A183074.P4757679091123417734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183074.P4757679091123417734

/-! ## A183074.P7967531817744091443

`p?[record[A183072(A022446(n))]]`
-/

namespace A183074.P7967531817744091443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183072 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183074.P7967531817744091443

/-! ## A183074.P13464974920287592717

`p?[record[A183072(A052938(n))]]`
-/

namespace A183074.P13464974920287592717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183072 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183074.P13464974920287592717

/-! ## A183074.P843805941447050955

`p?[record[A183072(A065648(n))]]`
-/

namespace A183074.P843805941447050955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183072 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183074.P843805941447050955

/-! ## A183074.P5126359518568588146

`p?[record[A183072(A106466(n))]]`
-/

namespace A183074.P5126359518568588146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183072 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183074.P5126359518568588146

/-!
# A183075: Numbers of the form 2^k - 1 for which each prime divisor has the form 4j + 3.

The programs for A183075, there is no canonical definition to state claims against.
-/

/-! ## A183075.P12445529429229239495

`2^A183071(n+1)-1`
-/

namespace A183075.P12445529429229239495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A183071 (n + 1) : ℤ) - 1

end

end A183075.P12445529429229239495

/-! ## A183075.P17114205270504996888

`A000225(A183071(n+1))`
-/

namespace A183075.P17114205270504996888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A183071 (n + 1)).toNat

end

end A183075.P17114205270504996888

/-! ## A183075.P17655296787522307001

`A126646(A183071(n+1)-1)`
-/

namespace A183075.P17655296787522307001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A183071 (n + 1) - 1).toNat

end

end A183075.P17655296787522307001

/-! ## A183075.P7248460276313749731

`A217549(A007318(∑[n]))+2^A183071(n+1)`
-/

namespace A183075.P7248460276313749731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217549 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) + (2 : ℚ) ^ (A183071 (n + 1) : ℤ)

end

end A183075.P7248460276313749731

/-! ## A183075.P6340556037291253793

`A008683(A107178(n+1))+2^A183071(n+1)`
-/

namespace A183075.P6340556037291253793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A107178 (n + 1)).toNat : ℚ) + (2 : ℚ) ^ (A183071 (n + 1) : ℤ)

end

end A183075.P6340556037291253793

/-!
# A183076: Composite numbers of the form 2^k - 1 for which each prime divisor has the form 4j + 3.

The programs for A183076, there is no canonical definition to state claims against.
-/

/-! ## A183076.P16651282891468049366

`2^A183072(n+1)-1`
-/

namespace A183076.P16651282891468049366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A183072 (n + 1) : ℤ) - 1

end

end A183076.P16651282891468049366

/-! ## A183076.P2663112814315550457

`A000225(A183072(n+1))`
-/

namespace A183076.P2663112814315550457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A183072 (n + 1)).toNat

end

end A183076.P2663112814315550457

/-! ## A183076.P18324108748884207652

`A126646(A183072(n+1)-1)`
-/

namespace A183076.P18324108748884207652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A183072 (n + 1) - 1).toNat

end

end A183076.P18324108748884207652

/-! ## A183076.P6166334789527186417

`A057428(n+1)+2^A183072(n+1)`
-/

namespace A183076.P6166334789527186417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 (n + 1) : ℚ) + (2 : ℚ) ^ (A183072 (n + 1) : ℤ)

end

end A183076.P6166334789527186417

/-! ## A183076.P9167152184371991746

`or(A001348(n+1), A014234(A183072(n+1)))`
-/

namespace A183076.P9167152184371991746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001348 (n + 1)) (A014234 (A183072 (n + 1)).toNat)

end

end A183076.P9167152184371991746

/-!
# A183077: Numbers of the form 2^p - 1, with p prime, for which each prime divisor has the form 4j + 3.

The programs for A183077, there is no canonical definition to state claims against.
-/

/-! ## A183077.P18024948374710777506

`2^A183073(n+1)-1`
-/

namespace A183077.P18024948374710777506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A183073 (n + 1) : ℤ) - 1

end

end A183077.P18024948374710777506

/-! ## A183077.P16402432071968381070

`A000225(A183073(n+1))`
-/

namespace A183077.P16402432071968381070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A183073 (n + 1)).toNat

end

end A183077.P16402432071968381070

/-! ## A183077.P12381313755312653064

`A019320(A183073(Δ[n²]-n))`
-/

namespace A183077.P12381313755312653064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A183073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A183077.P12381313755312653064

/-! ## A183077.P1693935583473883352

`or(A027375(A183073(n+1)), A028234(n+1))`
-/

namespace A183077.P1693935583473883352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027375 (A183073 (n + 1)).toNat) (A028234 (n + 1))

end

end A183077.P1693935583473883352

/-! ## A183077.P2828950746992790137

`or(A027375(A183073(n+1)), A040140(n+1))`
-/

namespace A183077.P2828950746992790137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027375 (A183073 (n + 1)).toNat) (A040140 (n + 1))

end

end A183077.P2828950746992790137

/-!
# A183081: Tree generated by the Beatty sequence of 4-sqrt(5).

The programs for A183081, there is no canonical definition to state claims against.
-/

/-! ## A183081.P11966661338450011757

`A284120(n+1)+A107846(A294533(n))`
-/

namespace A183081.P11966661338450011757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284120 (n + 1) + A107846 (A294533 n).toNat

end

end A183081.P11966661338450011757

/-!
# A183082: Tree generated by the Beatty sequence of 4-sqrt(6).

The programs for A183082, there is no canonical definition to state claims against.
-/

/-! ## A183082.P10736510386251386764

`A183209(n+1)-A086011(A007677(n))`
-/

namespace A183082.P10736510386251386764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183209 (n + 1) - A086011 (A007677 n).toNat

end

end A183082.P10736510386251386764

/-! ## A183082.P7724279868335889614

`A183209(n+1)-A185284(A048678(n))`
-/

namespace A183082.P7724279868335889614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183209 (n + 1) - A185284 (A048678 n).toNat

end

end A183082.P7724279868335889614

/-! ## A183082.P6064448929791123494

`A183209(n+1)-A185284(A001358(n+1))`
-/

namespace A183082.P6064448929791123494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183209 (n + 1) - A185284 (A001358 (n + 1)).toNat

end

end A183082.P6064448929791123494

/-! ## A183082.P183955406941581107

`A183209(n+1)-A183094(A091584(n+1))`
-/

namespace A183082.P183955406941581107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183209 (n + 1) - A183094 (A091584 (n + 1)).toNat

end

end A183082.P183955406941581107

/-! ## A183082.P15356350644941363933

`A183209(n+1)-A327928(A183176(n+1))`
-/

namespace A183082.P15356350644941363933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183209 (n + 1) - A327928 (A183176 (n + 1)).toNat

end

end A183082.P15356350644941363933

/-!
# A183083: Tree generated by the Beatty sequence of -1+sqrt(8).

The programs for A183083, there is no canonical definition to state claims against.
-/

/-! ## A183083.P7607851713890916756

`xor(n+1, A344462(A027828(n)))`
-/

namespace A183083.P7607851713890916756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A344462 (A027828 n).toNat)

end

end A183083.P7607851713890916756

/-! ## A183083.P15280254917926903352

`A105812(A147456(n+1))+1+n`
-/

namespace A183083.P15280254917926903352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A147456 (n + 1)).toNat + 1 + (n : ℤ)

end

end A183083.P15280254917926903352

/-! ## A183083.P5494183729327277065

`A113220(n+1)-A185284(2*n+1)`
-/

namespace A183083.P5494183729327277065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113220 (n + 1) - A185284 (2 * n + 1)

end

end A183083.P5494183729327277065

/-! ## A183083.P10030242491715189840

`A291769(n)+A105812(A147456(n+1))`
-/

namespace A183083.P10030242491715189840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n + A105812 (A147456 (n + 1)).toNat

end

end A183083.P10030242491715189840

/-! ## A183083.P11426937085505178796

`xor(A102283(A265141(n+3)), A276568(n+1))`
-/

namespace A183083.P11426937085505178796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102283 (A265141 (n + 3)).toNat) (A276568 (n + 1))

end

end A183083.P11426937085505178796

/-!
# A183084: Tree generated by the Beatty sequence of e-1.

The programs for A183084, there is no canonical definition to state claims against.
-/

/-! ## A183084.P1997841338905310647

`xor(A124761(A145903(n)), A178528(n+1))`
-/

namespace A183084.P1997841338905310647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124761 (A145903 n).toNat) (A178528 (n + 1))

end

end A183084.P1997841338905310647

/-! ## A183084.P17780085592155097610

`xor(A025457(A060187(n+1)), A178528(n+1))`
-/

namespace A183084.P17780085592155097610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025457 (A060187 (n + 1)).toNat) (A178528 (n + 1))

end

end A183084.P17780085592155097610

/-! ## A183084.P264322543647598473

`xor(A178528(n+1), A304572(A003242(n)))`
-/

namespace A183084.P264322543647598473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178528 (n + 1)) (A304572 (A003242 n).toNat)

end

end A183084.P264322543647598473

/-! ## A183084.P7065580590568193754

`A185284(2*n+3)+A178528(n+1)`
-/

namespace A183084.P7065580590568193754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 3) + A178528 (n + 1)

end

end A183084.P7065580590568193754

/-! ## A183084.P9468556589634241221

`A178528(n+1)+A056170(A049853(n))`
-/

namespace A183084.P9468556589634241221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178528 (n + 1) + A056170 (A049853 n).toNat

end

end A183084.P9468556589634241221

/-!
# A183085: 

The programs for A183085, there is no canonical definition to state claims against.
-/

/-! ## A183085.P14766365635949353483

`p?[round(8*n/7)]²^30`
-/

namespace A183085.P14766365635949353483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 30

end

end A183085.P14766365635949353483

/-! ## A183085.P173969962828676260

`A000040(n+1)^60`
-/

namespace A183085.P173969962828676260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 60

end

end A183085.P173969962828676260

/-! ## A183085.P4678451897091204965

`(A001248(n+1)^15)²`
-/

namespace A183085.P4678451897091204965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) ^ 15) ^ 2

end

end A183085.P4678451897091204965

/-! ## A183085.P3439203466431619182

`(p?[A018252(n+1)-7]²^15)²`
-/

namespace A183085.P3439203466431619182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 15) ^ 2

end

end A183085.P3439203466431619182

/-! ## A183085.P13059667085518097866

`A006530(4*p?[round(8*n/7)])^60`
-/

namespace A183085.P13059667085518097866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 60

end

end A183085.P13059667085518097866

/-!
# A183087: Generalized canyon primes.

The programs for A183087, there is no canonical definition to state claims against.
-/

/-! ## A183087.P14121212300526701009

`p?[A183086(n+1)]`
-/

namespace A183087.P14121212300526701009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A183087.P14121212300526701009

/-! ## A183087.P7377594110327741772

`∩[A050757(n+1), A183086(n+1)]`
-/

namespace A183087.P7377594110327741772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P7377594110327741772

/-! ## A183087.P773025180538618696

`∩[A071621(n+1), A183086(n+1)]`
-/

namespace A183087.P773025180538618696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P773025180538618696

/-! ## A183087.P3597298112939965631

`∩[A000040(n+1), A183086(n+1)]`
-/

namespace A183087.P3597298112939965631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P3597298112939965631

/-! ## A183087.P17867334841888327700

`∩[A004139(n+1), A183086(n+1)]`
-/

namespace A183087.P17867334841888327700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P17867334841888327700

/-! ## A183087.P16961510701422404809

`∩[A006005(n+1), A183086(n+1)]`
-/

namespace A183087.P16961510701422404809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P16961510701422404809

/-! ## A183087.P9891742578553744176

`∩[A008578(n+1), A183086(n+1)]`
-/

namespace A183087.P9891742578553744176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P9891742578553744176

/-! ## A183087.P11351920115019028277

`∩[A033946(n+1), A183086(n+1)]`
-/

namespace A183087.P11351920115019028277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P11351920115019028277

/-! ## A183087.P8167676719396257987

`∩[A045319(n+1), A183086(n+1)]`
-/

namespace A183087.P8167676719396257987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P8167676719396257987

/-! ## A183087.P11910041293496321174

`∩[A045344(n+1), A183086(n+1)]`
-/

namespace A183087.P11910041293496321174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P11910041293496321174

/-! ## A183087.P10701495052353352333

`∩[A046022(n+1), A183086(n+1)]`
-/

namespace A183087.P10701495052353352333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P10701495052353352333

/-! ## A183087.P5873036908431158352

`∩[A051948(n+1), A183086(n+1)]`
-/

namespace A183087.P5873036908431158352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P5873036908431158352

/-! ## A183087.P4371422444474284273

`∩[A064728(n+1), A183086(n+1)]`
-/

namespace A183087.P4371422444474284273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P4371422444474284273

/-! ## A183087.P14206112857829434836

`∩[A065091(n+1), A183086(n+1)]`
-/

namespace A183087.P14206112857829434836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P14206112857829434836

/-! ## A183087.P16341807346323635746

`∩[A065396(n+1), A183086(n+1)]`
-/

namespace A183087.P16341807346323635746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P16341807346323635746

/-! ## A183087.P328903621970614459

`∩[A066050(n+1), A183086(n+1)]`
-/

namespace A183087.P328903621970614459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P328903621970614459

/-! ## A183087.P18198445463384732838

`∩[A067126(n+1), A183086(n+1)]`
-/

namespace A183087.P18198445463384732838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P18198445463384732838

/-! ## A183087.P10524348541394117898

`∩[A138837(n+1), A183086(n+1)]`
-/

namespace A183087.P10524348541394117898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P10524348541394117898

/-! ## A183087.P8063961672590598833

`∩[A140826(n+1), A183086(n+1)]`
-/

namespace A183087.P8063961672590598833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P8063961672590598833

/-! ## A183087.P958966092038440904

`∩[A161346(n+1), A183086(n+1)]`
-/

namespace A183087.P958966092038440904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183087.P958966092038440904

/-!
# A183088: Total number of parts that are partition numbers A000041 in all partitions of n.

The programs for A183088, there is no canonical definition to state claims against.
-/

/-! ## A183088.P15407352970431313213

`A326957(n)-A102683(A011782(n))`
-/

namespace A183088.P15407352970431313213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326957 n - A102683 (A011782 n).toNat

end

end A183088.P15407352970431313213

/-! ## A183088.P13074196453201107384

`A006128(n)-A326981(n)-A102683(A011782(n))`
-/

namespace A183088.P13074196453201107384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A326981 n - A102683 (A011782 n).toNat

end

end A183088.P13074196453201107384

/-! ## A183088.P12659133118782644465

`A326957(n)-A339825(A288898(n))`
-/

namespace A183088.P12659133118782644465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326957 n - A339825 (A288898 n).toNat

end

end A183088.P12659133118782644465

/-! ## A183088.P5226094443887395906

`xor(A324688(A038141(n+1)), A326957(n))`
-/

namespace A183088.P5226094443887395906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324688 (A038141 (n + 1)).toNat) (A326957 n)

end

end A183088.P5226094443887395906

/-! ## A183088.P15898103116506768754

`A326957(n)-A038141(A038141(n+1)+2)`
-/

namespace A183088.P15898103116506768754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326957 n - A038141 (A038141 (n + 1) + 2).toNat

end

end A183088.P15898103116506768754

/-!
# A183089: Tree generated by the lucky numbers: a(1) = 1; a(2n) = unlucky(a(n)), a(2n+1) = lucky(a(n+1)), where lucky = A000959, unlucky = A050505.

The programs for A183089, there is no canonical definition to state claims against.
-/

/-! ## A183089.P7973403296940421374

`A257731(A246378(A257735(n+1)))`
-/

namespace A183089.P7973403296940421374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257731 (A246378 (A257735 (n + 1)).toNat).toNat

end

end A183089.P7973403296940421374

/-! ## A183089.P15992036084234994635

`A257726(A257735(n+1))`
-/

namespace A183089.P15992036084234994635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A257735 (n + 1)).toNat

end

end A183089.P15992036084234994635

/-! ## A183089.P14056274846264661430

`A257737(A257726(n+1))`
-/

namespace A183089.P14056274846264661430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257737 (A257726 (n + 1)).toNat

end

end A183089.P14056274846264661430

/-! ## A183089.P7835975608233138223

`A257737(A257731(A246378(n+1)))`
-/

namespace A183089.P7835975608233138223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257737 (A257731 (A246378 (n + 1)).toNat).toNat

end

end A183089.P7835975608233138223

/-!
# A183090: Tree generated by A005652, associated with numbers which are not the sum of two Fibonacci numbers.

The programs for A183090, there is no canonical definition to state claims against.
-/

/-! ## A183090.P5273679816046113133

`A185284(2*n+3)+xor(n, floor(n/4))+1`
-/

namespace A183090.P5273679816046113133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 3) + (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋ + 1)

end

end A183090.P5273679816046113133

/-! ## A183090.P6875321441405200441

`A320732(A384437(n))+xor(n, floor(n/4))`
-/

namespace A183090.P6875321441405200441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (A384437 n).toNat + Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋

end

end A183090.P6875321441405200441

/-! ## A183090.P8638334262942301037

`A336737(A181985(n+1))+xor(n, floor(n/4))`
-/

namespace A183090.P8638334262942301037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (A181985 (n + 1)).toNat + Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋

end

end A183090.P8638334262942301037

/-! ## A183090.P16989514594673693607

`(xor(n, floor(n/4))+1)%A255064(2*(n+2))`
-/

namespace A183090.P16989514594673693607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋ + 1) (A255064 (2 * (n + 2)))

end

end A183090.P16989514594673693607

/-!
# A183091: a(n) is the product of the divisors p^k of n where p is prime and k >= 1.

The programs for A183091, the canonical program `A183091.P7771402674124294199` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183091 has offset 1).

The definition of A183091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183091.P14904265821835869739

`A007955(n+1)/A183092(n+1)`
-/

namespace A183091.P14904265821835869739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183092 (n + 1) : ℚ)

end

end A183091.P14904265821835869739

namespace A183091

/-- `A007955(n+1)/A183092(n+1)` -/
def P14904265821835869739.Spec : Prop :=
  ∀ n, P14904265821835869739.a n = (A183091 (n + 1) : ℚ)

end A183091

/-! ## A183091.P7771402674124294199

`(n+1)*a((n+1)/∏{p}[n+1, #]-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A183091

/-- `(n+1)*a((n+1)/∏{p}[n+1, #]-1)` -/
def P7771402674124294199.Spec : Prop :=
  ∀ n, (P7771402674124294199.a n : ℤ) = A183091 (n + 1)

theorem P7771402674124294199.correct : P7771402674124294199.Spec := by
  intro n
  simp only [A183091, Nat.add_sub_cancel]

end A183091

/-! ## A183091.P8340740929199948993

`∏{d}[n+1, A100994(#)]`
-/

namespace A183091.P8340740929199948993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A100994 d

end

end A183091.P8340740929199948993

namespace A183091

/-- `∏{d}[n+1, A100994(#)]` -/
def P8340740929199948993.Spec : Prop :=
  ∀ n, P8340740929199948993.a n = A183091 (n + 1)

end A183091

/-! ## A183091.P4684294148004848322

`sqrt((n+1)*A054496(n+1))`
-/

namespace A183091.P4684294148004848322
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A054496 (n + 1) : ℝ)

end

end A183091.P4684294148004848322

namespace A183091

/-- `sqrt((n+1)*A054496(n+1))` -/
def P4684294148004848322.Spec : Prop :=
  ∀ n, P4684294148004848322.a n = (A183091 (n + 1) : ℝ)

end A183091

/-! ## A183091.P12040991064902922471

`(n+1)*a(A336551(n+1))` with `a(0)=1`
-/

namespace A183091.P12040991064902922471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A336551 (n + 1)).toNat

end

end A183091.P12040991064902922471

namespace A183091

/-- `(n+1)*a(A336551(n+1))` -/
def P12040991064902922471.Spec : Prop :=
  ∀ n, (P12040991064902922471.a n : ℤ) = A183091 (n + 1)

end A183091

/-! ## A183091.P3360217471475714168

`(n+1)*a(A003557(n+1)-1)` with `a(0)=1`
-/

namespace A183091.P3360217471475714168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A003557 (n + 1) - 1).toNat

end

end A183091.P3360217471475714168

namespace A183091

/-- `(n+1)*a(A003557(n+1)-1)` -/
def P3360217471475714168.Spec : Prop :=
  ∀ n, (P3360217471475714168.a n : ℤ) = A183091 (n + 1)

end A183091

/-! ## A183091.P17230226013758965038

`(n+1)*a((n+1)/A007947(n+1)-1)` with `a(0)=1`
-/

namespace A183091.P17230226013758965038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ) - 1)).toNat

end

end A183091.P17230226013758965038

namespace A183091

/-- `(n+1)*a((n+1)/A007947(n+1)-1)` -/
def P17230226013758965038.Spec : Prop :=
  ∀ n, (P17230226013758965038.a n : ℤ) = A183091 (n + 1)

end A183091

/-! ## A183091.P17728476043773845821

`∏{d}[n+1, #^A001222(A014963(#))]`
-/

namespace A183091.P17728476043773845821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A001222 (A014963 d).toNat : ℤ)

end

end A183091.P17728476043773845821

namespace A183091

/-- `∏{d}[n+1, #^A001222(A014963(#))]` -/
def P17728476043773845821.Spec : Prop :=
  ∀ n, P17728476043773845821.a n = (A183091 (n + 1) : ℚ)

end A183091

/-! ## A183091.P966060581564574853

`sqrt(n+1)^Δ[A006218(n)]/A183092(n+1)`
-/

namespace A183091.P966060581564574853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A183092 (n + 1) : ℝ)

end

end A183091.P966060581564574853

namespace A183091

/-- `sqrt(n+1)^Δ[A006218(n)]/A183092(n+1)` -/
def P966060581564574853.Spec : Prop :=
  ∀ n, P966060581564574853.a n = (A183091 (n + 1) : ℝ)

end A183091

/-! ## A183091.P5505987927406482001

`(n+1)^(A000005(n+1)/2)/A183092(n+1)`
-/

namespace A183091.P5505987927406482001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (A183092 (n + 1) : ℝ)

end

end A183091.P5505987927406482001

namespace A183091

/-- `(n+1)^(A000005(n+1)/2)/A183092(n+1)` -/
def P5505987927406482001.Spec : Prop :=
  ∀ n, P5505987927406482001.a n = (A183091 (n + 1) : ℝ)

end A183091

/-! ## A183091.P3187299994769112474

`A061537(n+1)*A061538(n+1)/A183092(n+1)`
-/

namespace A183091.P3187299994769112474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) * A061538 (n + 1) : ℚ) / (A183092 (n + 1) : ℚ)

end

end A183091.P3187299994769112474

namespace A183091

/-- `A061537(n+1)*A061538(n+1)/A183092(n+1)` -/
def P3187299994769112474.Spec : Prop :=
  ∀ n, P3187299994769112474.a n = (A183091 (n + 1) : ℚ)

end A183091

/-! ## A183091.P16193107931614157308

`A291186(n+1)/A183092(n+1)*A306671(n+1)`
-/

namespace A183091.P16193107931614157308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291186 (n + 1) : ℚ) / (A183092 (n + 1) : ℚ) * (A306671 (n + 1) : ℚ)

end

end A183091.P16193107931614157308

namespace A183091

/-- `A291186(n+1)/A183092(n+1)*A306671(n+1)` -/
def P16193107931614157308.Spec : Prop :=
  ∀ n, P16193107931614157308.a n = (A183091 (n + 1) : ℚ)

end A183091

/-!
# A183092: a(n) is the product of divisors d of n such that d is not equal to m^k where m = noncomposite number, k >= 1.

The programs for A183092, the canonical program `A183092.P9748846358186423691` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183092 has offset 1).

The definition of A183092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183092.P9748846358186423691

`A007955(n+1)/A183091(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183092

/-- `A007955(n+1)/A183091(n+1)` -/
def P9748846358186423691.Spec : Prop :=
  ∀ n, P9748846358186423691.a n = (A183092 (n + 1) : ℚ)

end A183092

/-! ## A183092.P5076876198644060209

`∏{d}[n+1, #^(1-A010055(#))]`
-/

namespace A183092.P5076876198644060209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (1 - A010055 d : ℤ)

end

end A183092.P5076876198644060209

namespace A183092

/-- `∏{d}[n+1, #^(1-A010055(#))]` -/
def P5076876198644060209.Spec : Prop :=
  ∀ n, P5076876198644060209.a n = (A183092 (n + 1) : ℚ)

end A183092

/-! ## A183092.P4908679879334578768

`∏{d}[n+1, #^(1-A069513(#))]`
-/

namespace A183092.P4908679879334578768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (1 - A069513 d : ℤ)

end

end A183092.P4908679879334578768

namespace A183092

/-- `∏{d}[n+1, #^(1-A069513(#))]` -/
def P4908679879334578768.Spec : Prop :=
  ∀ n, P4908679879334578768.a n = (A183092 (n + 1) : ℚ)

end A183092

/-! ## A183092.P3375010975868343381

`∏{d}[n+1, gcd(#, A001222(A014963(#)))]`
-/

namespace A183092.P3375010975868343381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A001222 (A014963 d).toNat)

end

end A183092.P3375010975868343381

namespace A183092

/-- `∏{d}[n+1, gcd(#, A001222(A014963(#)))]` -/
def P3375010975868343381.Spec : Prop :=
  ∀ n, (P3375010975868343381.a n : ℤ) = A183092 (n + 1)

end A183092

/-! ## A183092.P15513507781690763454

`(n+1)*A007956(n+1)/A183091(n+1)`
-/

namespace A183092.P15513507781690763454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007956 (n + 1) : ℚ) / (A183091 (n + 1) : ℚ))

end

end A183092.P15513507781690763454

namespace A183092

/-- `(n+1)*A007956(n+1)/A183091(n+1)` -/
def P15513507781690763454.Spec : Prop :=
  ∀ n, P15513507781690763454.a n = (A183092 (n + 1) : ℚ)

end A183092

/-! ## A183092.P12218848470374959320

`sqrt(n+1)^Δ[A006218(n)]/A183091(n+1)`
-/

namespace A183092.P12218848470374959320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A183091 (n + 1) : ℝ)

end

end A183092.P12218848470374959320

namespace A183092

/-- `sqrt(n+1)^Δ[A006218(n)]/A183091(n+1)` -/
def P12218848470374959320.Spec : Prop :=
  ∀ n, P12218848470374959320.a n = (A183092 (n + 1) : ℝ)

end A183092

/-! ## A183092.P1271321175117150856

`(n+1)^(A000005(n+1)/2)/A183091(n+1)`
-/

namespace A183092.P1271321175117150856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (n + 1) : ℚ) / 2 : ℝ) / (A183091 (n + 1) : ℝ)

end

end A183092.P1271321175117150856

namespace A183092

/-- `(n+1)^(A000005(n+1)/2)/A183091(n+1)` -/
def P1271321175117150856.Spec : Prop :=
  ∀ n, P1271321175117150856.a n = (A183092 (n + 1) : ℝ)

end A183092

/-! ## A183092.P11404283910467501968

`A061537(n+1)*A061538(n+1)/A183091(n+1)`
-/

namespace A183092.P11404283910467501968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061537 (n + 1) * A061538 (n + 1) : ℚ) / (A183091 (n + 1) : ℚ)

end

end A183092.P11404283910467501968

namespace A183092

/-- `A061537(n+1)*A061538(n+1)/A183091(n+1)` -/
def P11404283910467501968.Spec : Prop :=
  ∀ n, P11404283910467501968.a n = (A183092 (n + 1) : ℚ)

end A183092

/-! ## A183092.P17481244188465463357

`A291186(n+1)/A183091(n+1)*A306671(n+1)`
-/

namespace A183092.P17481244188465463357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291186 (n + 1) : ℚ) / (A183091 (n + 1) : ℚ) * (A306671 (n + 1) : ℚ)

end

end A183092.P17481244188465463357

namespace A183092

/-- `A291186(n+1)/A183091(n+1)*A306671(n+1)` -/
def P17481244188465463357.Spec : Prop :=
  ∀ n, P17481244188465463357.a n = (A183092 (n + 1) : ℚ)

end A183092

/-!
# A183093: a(n) = number of divisors d of n such that d > 1 and if d = Product_(i) (p_i^e_i) then e_i = 1 for at least one i.

The programs for A183093, the canonical program `A183093.P17608197149960352927` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183093 has offset 1).

The definition of A183093 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183093.P14753897027949408691

`A183095(n+1)-1`
-/

namespace A183093.P14753897027949408691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (n + 1) - 1

end

end A183093.P14753897027949408691

namespace A183093

/-- `A183095(n+1)-1` -/
def P14753897027949408691.Spec : Prop :=
  ∀ n, P14753897027949408691.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P17608197149960352927

`A000005(n+1)-A005361(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183093

/-- `A000005(n+1)-A005361(n+1)` -/
def P17608197149960352927.Spec : Prop :=
  ∀ n, P17608197149960352927.a n = A183093 (n + 1)

theorem P17608197149960352927.correct : P17608197149960352927.Spec := by
  intro n
  simp only [A183093, Nat.add_sub_cancel]

end A183093

/-! ## A183093.P10488090171754815090

`∏{e}[n+1, #+1]-∏{e}[n+1, #]`
-/

namespace A183093.P10488090171754815090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A183093.P10488090171754815090

namespace A183093

/-- `∏{e}[n+1, #+1]-∏{e}[n+1, #]` -/
def P10488090171754815090.Spec : Prop :=
  ∀ n, P10488090171754815090.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P8824498916625443360

`Δ[A006218(n)]-∏{e}[n+1, #]`
-/

namespace A183093.P8824498916625443360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A183093.P8824498916625443360

namespace A183093

/-- `Δ[A006218(n)]-∏{e}[n+1, #]` -/
def P8824498916625443360.Spec : Prop :=
  ∀ n, P8824498916625443360.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P12897435176800509422

`Δ[A006218(n)]-A005361(n+1)`
-/

namespace A183093.P12897435176800509422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005361 (n + 1)

end

end A183093.P12897435176800509422

namespace A183093

/-- `Δ[A006218(n)]-A005361(n+1)` -/
def P12897435176800509422.Spec : Prop :=
  ∀ n, P12897435176800509422.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P441653988827956222

`A081400(n+1)+A001222(n+1)`
-/

namespace A183093.P441653988827956222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (n + 1) + A001222 (n + 1)

end

end A183093.P441653988827956222

namespace A183093

/-- `A081400(n+1)+A001222(n+1)` -/
def P441653988827956222.Spec : Prop :=
  ∀ n, P441653988827956222.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P8522495342926283338

`A391713(n+1)+A309307(n+1)`
-/

namespace A183093.P8522495342926283338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (n + 1) + A309307 (n + 1)

end

end A183093.P8522495342926283338

namespace A183093

/-- `A391713(n+1)+A309307(n+1)` -/
def P8522495342926283338.Spec : Prop :=
  ∀ n, P8522495342926283338.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P6707461720205903481

`A372720(n+1)+A355432(n+1)`
-/

namespace A183093.P6707461720205903481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372720 (n + 1) + A355432 (n + 1)

end

end A183093.P6707461720205903481

namespace A183093

/-- `A372720(n+1)+A355432(n+1)` -/
def P6707461720205903481.Spec : Prop :=
  ∀ n, P6707461720205903481.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P18147603592666857741

`A365788(n+1)-A361235(n+1)`
-/

namespace A183093.P18147603592666857741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - A361235 (n + 1)

end

end A183093.P18147603592666857741

namespace A183093

/-- `A365788(n+1)-A361235(n+1)` -/
def P18147603592666857741.Spec : Prop :=
  ∀ n, P18147603592666857741.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P3193476940390420904

`A073093(n+1)+A081400(n+1)-1`
-/

namespace A183093.P3193476940390420904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) + (A081400 (n + 1) - 1)

end

end A183093.P3193476940390420904

namespace A183093

/-- `A073093(n+1)+A081400(n+1)-1` -/
def P3193476940390420904.Spec : Prop :=
  ∀ n, P3193476940390420904.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P9343484561131869189

`A000005(n+1)-(A183094(n+1)+1)`
-/

namespace A183093.P9343484561131869189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A183094 (n + 1) + 1)

end

end A183093.P9343484561131869189

namespace A183093

/-- `A000005(n+1)-(A183094(n+1)+1)` -/
def P9343484561131869189.Spec : Prop :=
  ∀ n, P9343484561131869189.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P14494415435711923367

`A334954(n+1)-(A005361(n+1)+1)`
-/

namespace A183093.P14494415435711923367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A005361 (n + 1) + 1)

end

end A183093.P14494415435711923367

namespace A183093

/-- `A334954(n+1)-(A005361(n+1)+1)` -/
def P14494415435711923367.Spec : Prop :=
  ∀ n, P14494415435711923367.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P17141290743963397324

`A000005(n+1)-A000005(A003557(n+1))`
-/

namespace A183093.P17141290743963397324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A003557 (n + 1)).toNat

end

end A183093.P17141290743963397324

namespace A183093

/-- `A000005(n+1)-A000005(A003557(n+1))` -/
def P17141290743963397324.Spec : Prop :=
  ∀ n, P17141290743963397324.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P16860992804262778329

`A032741(n+1)-A032741(A003557(n+1))`
-/

namespace A183093.P16860992804262778329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A032741 (A003557 (n + 1)).toNat

end

end A183093.P16860992804262778329

namespace A183093

/-- `A032741(n+1)-A032741(A003557(n+1))` -/
def P16860992804262778329.Spec : Prop :=
  ∀ n, P16860992804262778329.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P3914750834536540072

`A000005(n+1)-A000005(A292589(n+1))`
-/

namespace A183093.P3914750834536540072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A292589 (n + 1)).toNat

end

end A183093.P3914750834536540072

namespace A183093

/-- `A000005(n+1)-A000005(A292589(n+1))` -/
def P3914750834536540072.Spec : Prop :=
  ∀ n, P3914750834536540072.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P8762670675406210030

`A334954(n+1)-A334954(A003557(n+1))`
-/

namespace A183093.P8762670675406210030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A334954 (A003557 (n + 1)).toNat

end

end A183093.P8762670675406210030

namespace A183093

/-- `A334954(n+1)-A334954(A003557(n+1))` -/
def P8762670675406210030.Spec : Prop :=
  ∀ n, P8762670675406210030.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P5149871796636369649

`A000005(n+1)-A000005(A336551(n+1)+1)`
-/

namespace A183093.P5149871796636369649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A336551 (n + 1) + 1).toNat

end

end A183093.P5149871796636369649

namespace A183093

/-- `A000005(n+1)-A000005(A336551(n+1)+1)` -/
def P5149871796636369649.Spec : Prop :=
  ∀ n, P5149871796636369649.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P6502747281693201616

`A034444(n+1)+A048105(n+1)-A005361(n+1)`
-/

namespace A183093.P6502747281693201616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A048105 (n + 1) - A005361 (n + 1))

end

end A183093.P6502747281693201616

namespace A183093

/-- `A034444(n+1)+A048105(n+1)-A005361(n+1)` -/
def P6502747281693201616.Spec : Prop :=
  ∀ n, P6502747281693201616.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P10941543616541501085

`A046951(n+1)+A056595(n+1)-A005361(n+1)`
-/

namespace A183093.P10941543616541501085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A056595 (n + 1) - A005361 (n + 1))

end

end A183093.P10941543616541501085

namespace A183093

/-- `A046951(n+1)+A056595(n+1)-A005361(n+1)` -/
def P10941543616541501085.Spec : Prop :=
  ∀ n, P10941543616541501085.a n = A183093 (n + 1)

end A183093

/-! ## A183093.P18062675976751952062

`A065704(n+1)+A345221(n+1)-A005361(n+1)`
-/

namespace A183093.P18062675976751952062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (n + 1) + (A345221 (n + 1) - A005361 (n + 1))

end

end A183093.P18062675976751952062

namespace A183093

/-- `A065704(n+1)+A345221(n+1)-A005361(n+1)` -/
def P18062675976751952062.Spec : Prop :=
  ∀ n, P18062675976751952062.a n = A183093 (n + 1)

end A183093

/-!
# A183094: a(n) = number of powerful divisors d (excluding 1) of n.

The programs for A183094, the canonical program `A183094.P2300528291682876645` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183094 has offset 1).

The definition of A183094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183094.P2300528291682876645

`A005361(n+1)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183094

/-- `A005361(n+1)-1` -/
def P2300528291682876645.Spec : Prop :=
  ∀ n, P2300528291682876645.a n = A183094 (n + 1)

theorem P2300528291682876645.correct : P2300528291682876645.Spec := by
  intro n
  simp only [A183094, Nat.add_sub_cancel]

end A183094

/-! ## A183094.P11451669500006361102

`A000005(n+1)-A183095(n+1)`
-/

namespace A183094.P11451669500006361102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A183095 (n + 1)

end

end A183094.P11451669500006361102

namespace A183094

/-- `A000005(n+1)-A183095(n+1)` -/
def P11451669500006361102.Spec : Prop :=
  ∀ n, P11451669500006361102.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P14477954816615310350

`∏{e}[n+1, #]-1`
-/

namespace A183094.P14477954816615310350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A183094.P14477954816615310350

namespace A183094

/-- `∏{e}[n+1, #]-1` -/
def P14477954816615310350.Spec : Prop :=
  ∀ n, P14477954816615310350.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P198810346270985444

`floor(log(cosh(∏{e}[n+1, #])))`
-/

namespace A183094.P198810346270985444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A183094.P198810346270985444

namespace A183094

/-- `floor(log(cosh(∏{e}[n+1, #])))` -/
def P198810346270985444.Spec : Prop :=
  ∀ n, P198810346270985444.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P11885261480678763379

`floor(log(sinh(∏{e}[n+1, #])))`
-/

namespace A183094.P11885261480678763379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sinh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌋

end

end A183094.P11885261480678763379

namespace A183094

/-- `floor(log(sinh(∏{e}[n+1, #])))` -/
def P11885261480678763379.Spec : Prop :=
  ∀ n, P11885261480678763379.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P13550345962939916446

`round(log(cosh(∏{e}[n+1, #])))`
-/

namespace A183094.P13550345962939916446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A183094.P13550345962939916446

namespace A183094

/-- `round(log(cosh(∏{e}[n+1, #])))` -/
def P13550345962939916446.Spec : Prop :=
  ∀ n, P13550345962939916446.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P6896416520365354001

`round(log(sinh(∏{e}[n+1, #])))`
-/

namespace A183094.P6896416520365354001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sinh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A183094.P6896416520365354001

namespace A183094

/-- `round(log(sinh(∏{e}[n+1, #])))` -/
def P6896416520365354001.Spec : Prop :=
  ∀ n, P6896416520365354001.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P4510176310923990326

`2^∑{e}[n+1, log2(#)]-1`
-/

namespace A183094.P4510176310923990326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ)) - 1

end

end A183094.P4510176310923990326

namespace A183094

/-- `2^∑{e}[n+1, log2(#)]-1` -/
def P4510176310923990326.Spec : Prop :=
  ∀ n, P4510176310923990326.a n = (A183094 (n + 1) : ℝ)

end A183094

/-! ## A183094.P18068005906232807918

`log2(2^∏{e}[n+1, #]/2)`
-/

namespace A183094.P18068005906232807918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((2 ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / 2 : ℝ)

end

end A183094.P18068005906232807918

namespace A183094

/-- `log2(2^∏{e}[n+1, #]/2)` -/
def P18068005906232807918.Spec : Prop :=
  ∀ n, P18068005906232807918.a n = (A183094 (n + 1) : ℝ)

end A183094

/-! ## A183094.P7414775094056446510

`∏{p}[n+1, val(n+1, #)]-1`
-/

namespace A183094.P7414775094056446510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - 1

end

end A183094.P7414775094056446510

namespace A183094

/-- `∏{p}[n+1, val(n+1, #)]-1` -/
def P7414775094056446510.Spec : Prop :=
  ∀ n, P7414775094056446510.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P4918864557647378352

`(∏{e}[n+1, #]+n)%(n+1)`
-/

namespace A183094.P4918864557647378352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + n) % (n + 1)

end

end A183094.P4918864557647378352

namespace A183094

/-- `(∏{e}[n+1, #]+n)%(n+1)` -/
def P4918864557647378352.Spec : Prop :=
  ∀ n, (P4918864557647378352.a n : ℤ) = A183094 (n + 1)

end A183094

/-! ## A183094.P18090714259439942185

`abs(1-∏{e}[2*n-(n-1), #])`
-/

namespace A183094.P18090714259439942185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)|

end

end A183094.P18090714259439942185

namespace A183094

/-- `abs(1-∏{e}[2*n-(n-1), #])` -/
def P18090714259439942185.Spec : Prop :=
  ∀ n, P18090714259439942185.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P2904466551698788354

`floor(n*∏{e}[n+1, #]/(n+1))`
-/

namespace A183094.P2904466551698788354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / (n + 1 : ℚ))⌋

end

end A183094.P2904466551698788354

namespace A183094

/-- `floor(n*∏{e}[n+1, #]/(n+1))` -/
def P2904466551698788354.Spec : Prop :=
  ∀ n, P2904466551698788354.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P7759416723753078383

`val(A069626(n+1), 2)`
-/

namespace A183094.P7759416723753078383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069626 (n + 1)).toNat 2

end

end A183094.P7759416723753078383

namespace A183094

/-- `val(A069626(n+1), 2)` -/
def P7759416723753078383.Spec : Prop :=
  ∀ n, (P7759416723753078383.a n : ℤ) = A183094 (n + 1)

end A183094

/-! ## A183094.P10789928951338525337

`A002837(∏{e}[n+1, #])`
-/

namespace A183094.P10789928951338525337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A183094.P10789928951338525337

namespace A183094

/-- `A002837(∏{e}[n+1, #])` -/
def P10789928951338525337.Spec : Prop :=
  ∀ n, P10789928951338525337.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P16110291630071494097

`A023443(∏{e}[n+1, #])`
-/

namespace A183094.P16110291630071494097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A183094.P16110291630071494097

namespace A183094

/-- `A023443(∏{e}[n+1, #])` -/
def P16110291630071494097.Spec : Prop :=
  ∀ n, P16110291630071494097.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P4676517597255770782

`abs(A303915(n+1))-1`
-/

namespace A183094.P4676517597255770782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303915 (n + 1)| - 1

end

end A183094.P4676517597255770782

namespace A183094

/-- `abs(A303915(n+1))-1` -/
def P4676517597255770782.Spec : Prop :=
  ∀ n, P4676517597255770782.a n = A183094 (n + 1)

end A183094

/-! ## A183094.P7015750938637177966

`sqrt(A360969(n+1))-1`
-/

namespace A183094.P7015750938637177966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360969 (n + 1) : ℝ) - 1

end

end A183094.P7015750938637177966

namespace A183094

/-- `sqrt(A360969(n+1))-1` -/
def P7015750938637177966.Spec : Prop :=
  ∀ n, P7015750938637177966.a n = (A183094 (n + 1) : ℝ)

end A183094

/-! ## A183094.P4441600293419048494

`sqrt(sqrt(A361132(n+1)))-1`
-/

namespace A183094.P4441600293419048494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361132 (n + 1) : ℝ)) - 1

end

end A183094.P4441600293419048494

namespace A183094

/-- `sqrt(sqrt(A361132(n+1)))-1` -/
def P4441600293419048494.Spec : Prop :=
  ∀ n, P4441600293419048494.a n = (A183094 (n + 1) : ℝ)

end A183094

/-! ## A183094.P17239604692142417409

`A000005((n+1)/∏{p}[n+1, #])-1`
-/

namespace A183094.P17239604692142417409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat - 1

end

end A183094.P17239604692142417409

namespace A183094

/-- `A000005((n+1)/∏{p}[n+1, #])-1` -/
def P17239604692142417409.Spec : Prop :=
  ∀ n, P17239604692142417409.a n = A183094 (n + 1)

end A183094

/-!
# A183095: a(n) = number of divisors d of n that are either 1 or of the form Product_(i) (p_i^e_i) where e_i = 1 for at least one i.

The programs for A183095, the canonical program `A183095.P16118821317782953757` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183095 has offset 1).

The definition of A183095 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183095.P16118821317782953757

`A183093(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A183095

/-- `A183093(n+1)+1` -/
def P16118821317782953757.Spec : Prop :=
  ∀ n, P16118821317782953757.a n = A183095 (n + 1)

theorem P16118821317782953757.correct : P16118821317782953757.Spec := by
  intro n
  simp only [A183095, Nat.add_sub_cancel]

end A183095

/-! ## A183095.P9114338269866340626

`A000005(n+1)-A183094(n+1)`
-/

namespace A183095.P9114338269866340626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A183094 (n + 1)

end

end A183095.P9114338269866340626

namespace A183095

/-- `A000005(n+1)-A183094(n+1)` -/
def P9114338269866340626.Spec : Prop :=
  ∀ n, P9114338269866340626.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P18097604688477291471

`∏{e}[n+1, #+1]+1-∏{e}[n+1, #]`
-/

namespace A183095.P18097604688477291471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A183095.P18097604688477291471

namespace A183095

/-- `∏{e}[n+1, #+1]+1-∏{e}[n+1, #]` -/
def P18097604688477291471.Spec : Prop :=
  ∀ n, P18097604688477291471.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P15639570425212306653

`A081400(n+1)+A073093(n+1)`
-/

namespace A183095.P15639570425212306653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (n + 1) + A073093 (n + 1)

end

end A183095.P15639570425212306653

namespace A183095

/-- `A081400(n+1)+A073093(n+1)` -/
def P15639570425212306653.Spec : Prop :=
  ∀ n, P15639570425212306653.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P5719931247814284727

`A391713(n+1)+A034444(n+1)`
-/

namespace A183095.P5719931247814284727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (n + 1) + A034444 (n + 1)

end

end A183095.P5719931247814284727

namespace A183095

/-- `A391713(n+1)+A034444(n+1)` -/
def P5719931247814284727.Spec : Prop :=
  ∀ n, P5719931247814284727.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P17050919172248690704

`A334954(n+1)-A005361(n+1)`
-/

namespace A183095.P17050919172248690704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A005361 (n + 1)

end

end A183095.P17050919172248690704

namespace A183095

/-- `A334954(n+1)-A005361(n+1)` -/
def P17050919172248690704.Spec : Prop :=
  ∀ n, P17050919172248690704.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P13888253579975211543

`Δ[A006218(n)]+1-A005361(n+1)`
-/

namespace A183095.P13888253579975211543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - A005361 (n + 1)

end

end A183095.P13888253579975211543

namespace A183095

/-- `Δ[A006218(n)]+1-A005361(n+1)` -/
def P13888253579975211543.Spec : Prop :=
  ∀ n, P13888253579975211543.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P11641404225472478109

`A001222(n+1)+A081400(n+1)+1`
-/

namespace A183095.P11641404225472478109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A081400 (n + 1) + 1)

end

end A183095.P11641404225472478109

namespace A183095

/-- `A001222(n+1)+A081400(n+1)+1` -/
def P11641404225472478109.Spec : Prop :=
  ∀ n, P11641404225472478109.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P10066573774989388324

`A355432(n+1)+A372720(n+1)+1`
-/

namespace A183095.P10066573774989388324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1) + (A372720 (n + 1) + 1)

end

end A183095.P10066573774989388324

namespace A183095

/-- `A355432(n+1)+A372720(n+1)+1` -/
def P10066573774989388324.Spec : Prop :=
  ∀ n, P10066573774989388324.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P10379933318994572606

`A000005(n+1)+1-A005361(n+1)`
-/

namespace A183095.P10379933318994572606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A005361 (n + 1))

end

end A183095.P10379933318994572606

namespace A183095

/-- `A000005(n+1)+1-A005361(n+1)` -/
def P10379933318994572606.Spec : Prop :=
  ∀ n, P10379933318994572606.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P2912785229927371862

`A365788(n+1)+1-A361235(n+1)`
-/

namespace A183095.P2912785229927371862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) + (1 - A361235 (n + 1))

end

end A183095.P2912785229927371862

namespace A183095

/-- `A365788(n+1)+1-A361235(n+1)` -/
def P2912785229927371862.Spec : Prop :=
  ∀ n, P2912785229927371862.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P7353219750143194905

`A000005(n+1)-A032741(A003557(n+1))`
-/

namespace A183095.P7353219750143194905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A032741 (A003557 (n + 1)).toNat

end

end A183095.P7353219750143194905

namespace A183095

/-- `A000005(n+1)-A032741(A003557(n+1))` -/
def P7353219750143194905.Spec : Prop :=
  ∀ n, P7353219750143194905.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P43276939013954406

`A000005(n+1)+1-A000005(A292589(n+1))`
-/

namespace A183095.P43276939013954406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A000005 (A292589 (n + 1)).toNat)

end

end A183095.P43276939013954406

namespace A183095

/-- `A000005(n+1)+1-A000005(A292589(n+1))` -/
def P43276939013954406.Spec : Prop :=
  ∀ n, P43276939013954406.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P7864355814057737609

`1-A049820(n+1)+n-A032741(A003557(n+1))`
-/

namespace A183095.P7864355814057737609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049820 (n + 1) + (n : ℤ) - A032741 (A003557 (n + 1)).toNat

end

end A183095.P7864355814057737609

namespace A183095

/-- `1-A049820(n+1)+n-A032741(A003557(n+1))` -/
def P7864355814057737609.Spec : Prop :=
  ∀ n, P7864355814057737609.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P5950262689599976147

`∑{d}[n+1, #+1]-A000203(n+1)-A032741(A003557(n+1))`
-/

namespace A183095.P5950262689599976147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1) - A032741 (A003557 (n + 1)).toNat

end

end A183095.P5950262689599976147

namespace A183095

/-- `∑{d}[n+1, #+1]-A000203(n+1)-A032741(A003557(n+1))` -/
def P5950262689599976147.Spec : Prop :=
  ∀ n, P5950262689599976147.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P12369223523463944721

`A324827(n+1)+A324826(n+1)-A032741(A003557(n+1))`
-/

namespace A183095.P12369223523463944721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324827 (n + 1) + A324826 (n + 1) - A032741 (A003557 (n + 1)).toNat

end

end A183095.P12369223523463944721

namespace A183095

/-- `A324827(n+1)+A324826(n+1)-A032741(A003557(n+1))` -/
def P12369223523463944721.Spec : Prop :=
  ∀ n, P12369223523463944721.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P13110148447505565287

`∑{d}[n+1, A057427(#)]-A032741(A003557(n+1))`
-/

namespace A183095.P13110148447505565287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A032741 (A003557 (n + 1)).toNat

end

end A183095.P13110148447505565287

namespace A183095

/-- `∑{d}[n+1, A057427(#)]-A032741(A003557(n+1))` -/
def P13110148447505565287.Spec : Prop :=
  ∀ n, P13110148447505565287.a n = A183095 (n + 1)

end A183095

/-! ## A183095.P8763185363464338924

`A005361(A064549(n+1))+1-A005361(n+1)`
-/

namespace A183095.P8763185363464338924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A064549 (n + 1)).toNat + (1 - A005361 (n + 1))

end

end A183095.P8763185363464338924

namespace A183095

/-- `A005361(A064549(n+1))+1-A005361(n+1)` -/
def P8763185363464338924.Spec : Prop :=
  ∀ n, P8763185363464338924.a n = A183095 (n + 1)

end A183095

/-!
# A183096: a(n) = number of divisors of n that are not perfect powers.

The programs for A183096, the canonical program `A183096.P3962787682876171308` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183096 has offset 1).

The definition of A183096 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A091050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183096.P3962787682876171308

`A000005(n+1)-A091050(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A183096

/-- `A000005(n+1)-A091050(n+1)` -/
def P3962787682876171308.Spec : Prop :=
  ∀ n, P3962787682876171308.a n = A183096 (n + 1)

theorem P3962787682876171308.correct : P3962787682876171308.Spec := by
  intro n
  simp only [A183096, Nat.add_sub_cancel]

end A183096

/-! ## A183096.P9973751142408737459

`A304817(n+1)-1`
-/

namespace A183096.P9973751142408737459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304817 (n + 1) - 1

end

end A183096.P9973751142408737459

namespace A183096

/-- `A304817(n+1)-1` -/
def P9973751142408737459.Spec : Prop :=
  ∀ n, P9973751142408737459.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P15984654669647621026

`val(A293524(n+1), 2)`
-/

namespace A183096.P15984654669647621026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293524 (n + 1)).toNat 2

end

end A183096.P15984654669647621026

namespace A183096

/-- `val(A293524(n+1), 2)` -/
def P15984654669647621026.Spec : Prop :=
  ∀ n, (P15984654669647621026.a n : ℤ) = A183096 (n + 1)

end A183096

/-! ## A183096.P4448920535123314514

`val(A294873(n+1), 2)`
-/

namespace A183096.P4448920535123314514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294873 (n + 1)).toNat 2

end

end A183096.P4448920535123314514

namespace A183096

/-- `val(A294873(n+1), 2)` -/
def P4448920535123314514.Spec : Prop :=
  ∀ n, (P4448920535123314514.a n : ℤ) = A183096 (n + 1)

end A183096

/-! ## A183096.P2127092960068655121

`∑{d}[n+1, 1-A075802(#)]`
-/

namespace A183096.P2127092960068655121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A075802 d)

end

end A183096.P2127092960068655121

namespace A183096

/-- `∑{d}[n+1, 1-A075802(#)]` -/
def P2127092960068655121.Spec : Prop :=
  ∀ n, P2127092960068655121.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P118756709639112613

`∑{d}[n+1, A316782(#)%2]-1`
-/

namespace A183096.P118756709639112613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A316782 d) 2 - 1

end

end A183096.P118756709639112613

namespace A183096

/-- `∑{d}[n+1, A316782(#)%2]-1` -/
def P118756709639112613.Spec : Prop :=
  ∀ n, P118756709639112613.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P11444483128337840400

`∑{d}[n+1, A010052(#)*A304326((n+1)/#)]`
-/

namespace A183096.P11444483128337840400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A304326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A183096.P11444483128337840400

namespace A183096

/-- `∑{d}[n+1, A010052(#)*A304326((n+1)/#)]` -/
def P11444483128337840400.Spec : Prop :=
  ∀ n, P11444483128337840400.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P15888799591846402963

`A000005(n+1)-(A001222(A294875(n+1))+1)`
-/

namespace A183096.P15888799591846402963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001222 (A294875 (n + 1)).toNat + 1)

end

end A183096.P15888799591846402963

namespace A183096

/-- `A000005(n+1)-(A001222(A294875(n+1))+1)` -/
def P15888799591846402963.Spec : Prop :=
  ∀ n, P15888799591846402963.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P2505925204321893503

`A001222(A293524(n+1)/A294875(n+1))`
-/

namespace A183096.P2505925204321893503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A293524 (n + 1) : ℚ) / (A294875 (n + 1) : ℚ))).toNat

end

end A183096.P2505925204321893503

namespace A183096

/-- `A001222(A293524(n+1)/A294875(n+1))` -/
def P2505925204321893503.Spec : Prop :=
  ∀ n, P2505925204321893503.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P15392996244839386459

`A007814(gcd(A293514(n+1), A294873(n+1)))`
-/

namespace A183096.P15392996244839386459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.gcd (A293514 (n + 1)) (A294873 (n + 1)))

end

end A183096.P15392996244839386459

namespace A183096

/-- `A007814(gcd(A293514(n+1), A294873(n+1)))` -/
def P15392996244839386459.Spec : Prop :=
  ∀ n, P15392996244839386459.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P15297333685239613552

`A316314(A234743(n+1))`
-/

namespace A183096.P15297333685239613552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (A234743 (n + 1)).toNat

end

end A183096.P15297333685239613552

namespace A183096

/-- `A316314(A234743(n+1))` -/
def P15297333685239613552.Spec : Prop :=
  ∀ n, P15297333685239613552.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P16712201620060125415

`A115723(A000217(n+1))-A091050(n+1)`
-/

namespace A183096.P16712201620060125415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115723 (A000217 (n + 1)).toNat - A091050 (n + 1)

end

end A183096.P16712201620060125415

namespace A183096

/-- `A115723(A000217(n+1))-A091050(n+1)` -/
def P16712201620060125415.Spec : Prop :=
  ∀ n, P16712201620060125415.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P11082548614690777998

`A316314(A178442(n+1))`
-/

namespace A183096.P11082548614690777998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (A178442 (n + 1)).toNat

end

end A183096.P11082548614690777998

namespace A183096

/-- `A316314(A178442(n+1))` -/
def P11082548614690777998.Spec : Prop :=
  ∀ n, P11082548614690777998.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P9485830167449588293

`A316398(A234748(n+1))-1`
-/

namespace A183096.P9485830167449588293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316398 (A234748 (n + 1)).toNat - 1

end

end A183096.P9485830167449588293

namespace A183096

/-- `A316398(A234748(n+1))-1` -/
def P9485830167449588293.Spec : Prop :=
  ∀ n, P9485830167449588293.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P5793307688589027022

`A007814(A294873(n+1))`
-/

namespace A183096.P5793307688589027022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A294873 (n + 1)).toNat

end

end A183096.P5793307688589027022

namespace A183096

/-- `A007814(A294873(n+1))` -/
def P5793307688589027022.Spec : Prop :=
  ∀ n, P5793307688589027022.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P14961672878324810660

`A183094(2*A294873(n+1))`
-/

namespace A183096.P14961672878324810660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (2 * A294873 (n + 1)).toNat

end

end A183096.P14961672878324810660

namespace A183096

/-- `A183094(2*A294873(n+1))` -/
def P14961672878324810660.Spec : Prop :=
  ∀ n, P14961672878324810660.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P5563131749575622004

`A091050(2*A294873(n+1))-1`
-/

namespace A183096.P5563131749575622004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (2 * A294873 (n + 1)).toNat - 1

end

end A183096.P5563131749575622004

namespace A183096

/-- `A091050(2*A294873(n+1))-1` -/
def P5563131749575622004.Spec : Prop :=
  ∀ n, P5563131749575622004.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P12545272656386458552

`A051628(A294873(2*n+1-n))`
-/

namespace A183096.P12545272656386458552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A294873 (2 * n + 1 - n)).toNat

end

end A183096.P12545272656386458552

namespace A183096

/-- `A051628(A294873(2*n+1-n))` -/
def P12545272656386458552.Spec : Prop :=
  ∀ n, P12545272656386458552.a n = A183096 (n + 1)

end A183096

/-! ## A183096.P17791451500042605102

`A183094(A294873(n+1)+A294873(n+1))`
-/

namespace A183096.P17791451500042605102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (A294873 (n + 1) + A294873 (n + 1)).toNat

end

end A183096.P17791451500042605102

namespace A183096

/-- `A183094(A294873(n+1)+A294873(n+1))` -/
def P17791451500042605102.Spec : Prop :=
  ∀ n, P17791451500042605102.a n = A183096 (n + 1)

end A183096

/-!
# A183097: a(n) = sum of powerful divisors d (including 1) of n.

The programs for A183097, the canonical program `A183097.P3908447792888475748` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183097 has offset 1).

The definition of A183097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183097.P1734495992289607062

`A000203(n+1)-A183098(n+1)`
-/

namespace A183097.P1734495992289607062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A183098 (n + 1)

end

end A183097.P1734495992289607062

namespace A183097

/-- `A000203(n+1)-A183098(n+1)` -/
def P1734495992289607062.Spec : Prop :=
  ∀ n, P1734495992289607062.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P6513382920708386470

`A183099(n+1)+1`
-/

namespace A183097.P6513382920708386470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183099 (n + 1) + 1

end

end A183097.P6513382920708386470

namespace A183097

/-- `A183099(n+1)+1` -/
def P6513382920708386470.Spec : Prop :=
  ∀ n, P6513382920708386470.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P3908447792888475748

`∑{d}[n+1, #*A112526(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A183097

/-- `∑{d}[n+1, #*A112526(#)]` -/
def P3908447792888475748.Spec : Prop :=
  ∀ n, P3908447792888475748.a n = A183097 (n + 1)

theorem P3908447792888475748.correct : P3908447792888475748.Spec := by
  intro n
  simp only [A183097, Nat.add_sub_cancel]

end A183097

/-! ## A183097.P11654245914340600773

`A345261(A003557(n+1))`
-/

namespace A183097.P11654245914340600773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345261 (A003557 (n + 1)).toNat

end

end A183097.P11654245914340600773

namespace A183097

/-- `A345261(A003557(n+1))` -/
def P11654245914340600773.Spec : Prop :=
  ∀ n, P11654245914340600773.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P2122633368002223181

`∑{d}[A003557(n+1), A064549(#)]`
-/

namespace A183097.P2122633368002223181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064549 d

end

end A183097.P2122633368002223181

namespace A183097

/-- `∑{d}[A003557(n+1), A064549(#)]` -/
def P2122633368002223181.Spec : Prop :=
  ∀ n, P2122633368002223181.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P14375201322490177611

`A088580(n+1)-A183100(n+1)`
-/

namespace A183097.P14375201322490177611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A183100 (n + 1)

end

end A183097.P14375201322490177611

namespace A183097

/-- `A088580(n+1)-A183100(n+1)` -/
def P14375201322490177611.Spec : Prop :=
  ∀ n, P14375201322490177611.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P3293835679838689736

`A345261((n+1)/A007947(n+1))`
-/

namespace A183097.P3293835679838689736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345261 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A183097.P3293835679838689736

namespace A183097

/-- `A345261((n+1)/A007947(n+1))` -/
def P3293835679838689736.Spec : Prop :=
  ∀ n, P3293835679838689736.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P16700444192600525781

`∑{d}[A003557(n+1), #*A007947(#)]`
-/

namespace A183097.P16700444192600525781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A007947 d

end

end A183097.P16700444192600525781

namespace A183097

/-- `∑{d}[A003557(n+1), #*A007947(#)]` -/
def P16700444192600525781.Spec : Prop :=
  ∀ n, P16700444192600525781.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P5235328497319281273

`A000203(n+1)+1-A183100(n+1)`
-/

namespace A183097.P5235328497319281273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A183100 (n + 1))

end

end A183097.P5235328497319281273

namespace A183097

/-- `A000203(n+1)+1-A183100(n+1)` -/
def P5235328497319281273.Spec : Prop :=
  ∀ n, P5235328497319281273.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P17186999631430463441

`A088580(n+1)-(A183098(n+1)+1)`
-/

namespace A183097.P17186999631430463441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A183098 (n + 1) + 1)

end

end A183097.P17186999631430463441

namespace A183097

/-- `A088580(n+1)-(A183098(n+1)+1)` -/
def P17186999631430463441.Spec : Prop :=
  ∀ n, P17186999631430463441.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P2147032623052098280

`∑{d}[n+1, A328641(#)*A358336((n+1)/#)]`
-/

namespace A183097.P2147032623052098280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328641 d * A358336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A183097.P2147032623052098280

namespace A183097

/-- `∑{d}[n+1, A328641(#)*A358336((n+1)/#)]` -/
def P2147032623052098280.Spec : Prop :=
  ∀ n, P2147032623052098280.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P1708628832353307446

`abs(A183098(n+1)-(A001065(n+1)+1+n))`
-/

namespace A183097.P1708628832353307446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183098 (n + 1) - (A001065 (n + 1) + 1 + (n : ℤ))|

end

end A183097.P1708628832353307446

namespace A183097

/-- `abs(A183098(n+1)-(A001065(n+1)+1+n))` -/
def P1708628832353307446.Spec : Prop :=
  ∀ n, P1708628832353307446.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P13292278324741583813

`abs(A183098(n+1)-A064987(n+1)/(n+1))`
-/

namespace A183097.P13292278324741583813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A183098 (n + 1) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)|

end

end A183097.P13292278324741583813

namespace A183097

/-- `abs(A183098(n+1)-A064987(n+1)/(n+1))` -/
def P13292278324741583813.Spec : Prop :=
  ∀ n, P13292278324741583813.a n = (A183097 (n + 1) : ℚ)

end A183097

/-! ## A183097.P14076532320986576996

`abs(A183098(n+1)-(2*(n+1)-A033879(n+1)))`
-/

namespace A183097.P14076532320986576996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183098 (n + 1) - ((2 * (n + 1) : ℤ) - A033879 (n + 1))|

end

end A183097.P14076532320986576996

namespace A183097

/-- `abs(A183098(n+1)-(2*(n+1)-A033879(n+1)))` -/
def P14076532320986576996.Spec : Prop :=
  ∀ n, P14076532320986576996.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P18077648932880684708

`A152770(n+1)+∏{e}[n+1, #+1]+n-A183098(n+1)`
-/

namespace A183097.P18077648932880684708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ) - A183098 (n + 1)

end

end A183097.P18077648932880684708

namespace A183097

/-- `A152770(n+1)+∏{e}[n+1, #+1]+n-A183098(n+1)` -/
def P18077648932880684708.Spec : Prop :=
  ∀ n, P18077648932880684708.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P877885862471042506

`A000010(n+1)+A051612(n+1)-A183098(n+1)`
-/

namespace A183097.P877885862471042506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A183098 (n + 1))

end

end A183097.P877885862471042506

namespace A183097

/-- `A000010(n+1)+A051612(n+1)-A183098(n+1)` -/
def P877885862471042506.Spec : Prop :=
  ∀ n, P877885862471042506.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P13232461817871744140

`A034448(n+1)+A048146(n+1)-A183098(n+1)`
-/

namespace A183097.P13232461817871744140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A183098 (n + 1))

end

end A183097.P13232461817871744140

namespace A183097

/-- `A034448(n+1)+A048146(n+1)-A183098(n+1)` -/
def P13232461817871744140.Spec : Prop :=
  ∀ n, P13232461817871744140.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P13648529714837401169

`A000593(n+1)+A146076(n+1)-A183098(n+1)`
-/

namespace A183097.P13648529714837401169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A183098 (n + 1))

end

end A183097.P13648529714837401169

namespace A183097

/-- `A000593(n+1)+A146076(n+1)-A183098(n+1)` -/
def P13648529714837401169.Spec : Prop :=
  ∀ n, P13648529714837401169.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P9981706584137032365

`A324121(n+1)+A324122(n+1)-A183098(n+1)`
-/

namespace A183097.P9981706584137032365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A183098 (n + 1))

end

end A183097.P9981706584137032365

namespace A183097

/-- `A324121(n+1)+A324122(n+1)-A183098(n+1)` -/
def P9981706584137032365.Spec : Prop :=
  ∀ n, P9981706584137032365.a n = A183097 (n + 1)

end A183097

/-! ## A183097.P1626127450644585364

`A385542(A087560(n+1))`
-/

namespace A183097.P1626127450644585364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385542 (A087560 (n + 1)).toNat

end

end A183097.P1626127450644585364

namespace A183097

/-- `A385542(A087560(n+1))` -/
def P1626127450644585364.Spec : Prop :=
  ∀ n, P1626127450644585364.a n = A183097 (n + 1)

end A183097

/-!
# A183098: a(1) = 0, a(n) = sum of divisors d of n such that if d = Product_{i} (p_i^e_i) then not all e_i are > 1.

The programs for A183098, the canonical program `A183098.P9579120176052522226` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183098 has offset 1).

The definition of A183098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183098.P15401910038060756918

`A183100(n+1)-1`
-/

namespace A183098.P15401910038060756918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183100 (n + 1) - 1

end

end A183098.P15401910038060756918

namespace A183098

/-- `A183100(n+1)-1` -/
def P15401910038060756918.Spec : Prop :=
  ∀ n, P15401910038060756918.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P9579120176052522226

`A000203(n+1)-A183097(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183098

/-- `A000203(n+1)-A183097(n+1)` -/
def P9579120176052522226.Spec : Prop :=
  ∀ n, P9579120176052522226.a n = A183098 (n + 1)

theorem P9579120176052522226.correct : P9579120176052522226.Spec := by
  intro n
  simp only [A183098, Nat.add_sub_cancel]

end A183098

/-! ## A183098.P743511193560874698

`∑{d}[n+1, #%(#*A055231(#))]`
-/

namespace A183098.P743511193560874698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) ((d : ℤ) * A055231 d)

end

end A183098.P743511193560874698

namespace A183098

/-- `∑{d}[n+1, #%(#*A055231(#))]` -/
def P743511193560874698.Spec : Prop :=
  ∀ n, P743511193560874698.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P6013494779887192468

`sqrt(A072861(n+1))-A183097(n+1)`
-/

namespace A183098.P6013494779887192468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A183097 (n + 1) : ℝ)

end

end A183098.P6013494779887192468

namespace A183098

/-- `sqrt(A072861(n+1))-A183097(n+1)` -/
def P6013494779887192468.Spec : Prop :=
  ∀ n, P6013494779887192468.a n = (A183098 (n + 1) : ℝ)

end A183098

/-! ## A183098.P1875959292401161426

`∑[A340793(n+1)]-A183097(n+1)`
-/

namespace A183098.P1875959292401161426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A183097 (n + 1)

end

end A183098.P1875959292401161426

namespace A183098

/-- `∑[A340793(n+1)]-A183097(n+1)` -/
def P1875959292401161426.Spec : Prop :=
  ∀ n, P1875959292401161426.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P15749043734207474093

`A000203(n+1)-(A183099(n+1)+1)`
-/

namespace A183098.P15749043734207474093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A183099 (n + 1) + 1)

end

end A183098.P15749043734207474093

namespace A183098

/-- `A000203(n+1)-(A183099(n+1)+1)` -/
def P15749043734207474093.Spec : Prop :=
  ∀ n, P15749043734207474093.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P2753107446286625243

`A088580(n+1)-(A183097(n+1)+1)`
-/

namespace A183098.P2753107446286625243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A183097 (n + 1) + 1)

end

end A183098.P2753107446286625243

namespace A183098

/-- `A088580(n+1)-(A183097(n+1)+1)` -/
def P2753107446286625243.Spec : Prop :=
  ∀ n, P2753107446286625243.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P10709880098138950850

`A001065(n+1)+1+n-A183097(n+1)`
-/

namespace A183098.P10709880098138950850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A183097 (n + 1)

end

end A183098.P10709880098138950850

namespace A183098

/-- `A001065(n+1)+1+n-A183097(n+1)` -/
def P10709880098138950850.Spec : Prop :=
  ∀ n, P10709880098138950850.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P10214909697527377947

`A155085(n+1)-(n+1)-A183097(n+1)`
-/

namespace A183098.P10214909697527377947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A183097 (n + 1)

end

end A183098.P10214909697527377947

namespace A183098

/-- `A155085(n+1)-(n+1)-A183097(n+1)` -/
def P10214909697527377947.Spec : Prop :=
  ∀ n, P10214909697527377947.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P6199625906606872995

`abs(A183097(n+1)-(2*(n+1)-A033879(n+1)))`
-/

namespace A183098.P6199625906606872995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183097 (n + 1) - ((2 * (n + 1) : ℤ) - A033879 (n + 1))|

end

end A183098.P6199625906606872995

namespace A183098

/-- `abs(A183097(n+1)-(2*(n+1)-A033879(n+1)))` -/
def P6199625906606872995.Spec : Prop :=
  ∀ n, P6199625906606872995.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P7058222126053301674

`A000010(n+1)+A051612(n+1)-A183097(n+1)`
-/

namespace A183098.P7058222126053301674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A051612 (n + 1) - A183097 (n + 1))

end

end A183098.P7058222126053301674

namespace A183098

/-- `A000010(n+1)+A051612(n+1)-A183097(n+1)` -/
def P7058222126053301674.Spec : Prop :=
  ∀ n, P7058222126053301674.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P17875326312535202893

`A034448(n+1)+A048146(n+1)-A183097(n+1)`
-/

namespace A183098.P17875326312535202893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A183097 (n + 1))

end

end A183098.P17875326312535202893

namespace A183098

/-- `A034448(n+1)+A048146(n+1)-A183097(n+1)` -/
def P17875326312535202893.Spec : Prop :=
  ∀ n, P17875326312535202893.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P2322584246769341792

`A000593(n+1)+A146076(n+1)-A183097(n+1)`
-/

namespace A183098.P2322584246769341792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A183097 (n + 1))

end

end A183098.P2322584246769341792

namespace A183098

/-- `A000593(n+1)+A146076(n+1)-A183097(n+1)` -/
def P2322584246769341792.Spec : Prop :=
  ∀ n, P2322584246769341792.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P4794723784149384884

`A091051(n+1)+A183101(n+1)-A183097(n+1)`
-/

namespace A183098.P4794723784149384884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (n + 1) + (A183101 (n + 1) - A183097 (n + 1))

end

end A183098.P4794723784149384884

namespace A183098

/-- `A091051(n+1)+A183101(n+1)-A183097(n+1)` -/
def P4794723784149384884.Spec : Prop :=
  ∀ n, P4794723784149384884.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P3936665178909754584

`A324121(n+1)+A324122(n+1)-A183097(n+1)`
-/

namespace A183098.P3936665178909754584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (n + 1) + (A324122 (n + 1) - A183097 (n + 1))

end

end A183098.P3936665178909754584

namespace A183098

/-- `A324121(n+1)+A324122(n+1)-A183097(n+1)` -/
def P3936665178909754584.Spec : Prop :=
  ∀ n, P3936665178909754584.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P4841148855574616897

`A023443(A183100(n+1))`
-/

namespace A183098.P4841148855574616897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A183100 (n + 1)).toNat

end

end A183098.P4841148855574616897

namespace A183098

/-- `A023443(A183100(n+1))` -/
def P4841148855574616897.Spec : Prop :=
  ∀ n, P4841148855574616897.a n = A183098 (n + 1)

end A183098

/-! ## A183098.P8138721732398021867

`A069770(A069770(∑{d}[n+1, #]))-A183097(n+1)`
-/

namespace A183098.P8138721732398021867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069770 (∑ d ∈ Nat.divisors (f1 n), d)).toNat - A183097 (n + 1)

end

end A183098.P8138721732398021867

namespace A183098

/-- `A069770(A069770(∑{d}[n+1, #]))-A183097(n+1)` -/
def P8138721732398021867.Spec : Prop :=
  ∀ n, P8138721732398021867.a n = A183098 (n + 1)

end A183098

/-!
# A183099: a(n) = sum of powerful divisors d (excluding 1) of n.

The programs for A183099, the canonical program `A183099.P16071666692602553090` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183099 has offset 1).

The definition of A183099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A183099.P16071666692602553090

`A183097(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A183099

/-- `A183097(n+1)-1` -/
def P16071666692602553090.Spec : Prop :=
  ∀ n, P16071666692602553090.a n = A183099 (n + 1)

theorem P16071666692602553090.correct : P16071666692602553090.Spec := by
  intro n
  simp only [A183099, Nat.add_sub_cancel]

end A183099

/-! ## A183099.P14325006767053444721

`A000203(n+1)-A183100(n+1)`
-/

namespace A183099.P14325006767053444721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A183100 (n + 1)

end

end A183099.P14325006767053444721

namespace A183099

/-- `A000203(n+1)-A183100(n+1)` -/
def P14325006767053444721.Spec : Prop :=
  ∀ n, P14325006767053444721.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P12886425609260087237

`A345261(A003557(n+1))-1`
-/

namespace A183099.P12886425609260087237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345261 (A003557 (n + 1)).toNat - 1

end

end A183099.P12886425609260087237

namespace A183099

/-- `A345261(A003557(n+1))-1` -/
def P12886425609260087237.Spec : Prop :=
  ∀ n, P12886425609260087237.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P12041998049542297285

`∑{d}[A003557(n+1), A064549(#)]-1`
-/

namespace A183099.P12041998049542297285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064549 d - 1

end

end A183099.P12041998049542297285

namespace A183099

/-- `∑{d}[A003557(n+1), A064549(#)]-1` -/
def P12041998049542297285.Spec : Prop :=
  ∀ n, P12041998049542297285.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P7254366791354586807

`A000203(n+1)-(A183098(n+1)+1)`
-/

namespace A183099.P7254366791354586807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A183098 (n + 1) + 1)

end

end A183099.P7254366791354586807

namespace A183099

/-- `A000203(n+1)-(A183098(n+1)+1)` -/
def P7254366791354586807.Spec : Prop :=
  ∀ n, P7254366791354586807.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P3623098895660113649

`A088580(n+1)-(A183100(n+1)+1)`
-/

namespace A183099.P3623098895660113649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A183100 (n + 1) + 1)

end

end A183099.P3623098895660113649

namespace A183099

/-- `A088580(n+1)-(A183100(n+1)+1)` -/
def P3623098895660113649.Spec : Prop :=
  ∀ n, P3623098895660113649.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P11353162331489531052

`A088580(n+1)-(A183098(n+1)+2)`
-/

namespace A183099.P11353162331489531052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A183098 (n + 1) + 2)

end

end A183099.P11353162331489531052

namespace A183099

/-- `A088580(n+1)-(A183098(n+1)+2)` -/
def P11353162331489531052.Spec : Prop :=
  ∀ n, P11353162331489531052.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P2431086271541536739

`A001065(n+1)-A183098(n+1)+n`
-/

namespace A183099.P2431086271541536739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A183098 (n + 1) + (n : ℤ)

end

end A183099.P2431086271541536739

namespace A183099

/-- `A001065(n+1)-A183098(n+1)+n` -/
def P2431086271541536739.Spec : Prop :=
  ∀ n, P2431086271541536739.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P4167921327305389098

`A091051(n+1)+A183101(n+1)-A183100(n+1)`
-/

namespace A183099.P4167921327305389098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (n + 1) + (A183101 (n + 1) - A183100 (n + 1))

end

end A183099.P4167921327305389098

namespace A183099

/-- `A091051(n+1)+A183101(n+1)-A183100(n+1)` -/
def P4167921327305389098.Spec : Prop :=
  ∀ n, P4167921327305389098.a n = A183099 (n + 1)

end A183099

/-! ## A183099.P14006513555286096329

`A091051(n+1)-A124259(A342973(n+1))`
-/

namespace A183099.P14006513555286096329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (n + 1) - A124259 (A342973 (n + 1)).toNat

end

end A183099.P14006513555286096329

namespace A183099

/-- `A091051(n+1)-A124259(A342973(n+1))` -/
def P14006513555286096329.Spec : Prop :=
  ∀ n, P14006513555286096329.a n = A183099 (n + 1)

end A183099

