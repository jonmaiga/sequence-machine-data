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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A168200: a(n) = 3*n - a(n-1) + 1, with a(1)=4.

The programs for A168200, the canonical program `A168200.P11422653226212586757` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168200 has offset 1).

The definition of A168200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)-a(n-1)+1` (program `A168200.P11422653226212586757`, by `A168200.P11422653226212586757.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168200.P8503075994853343091

`ogf((4-x)/(1-x-x^2+x^3))`
-/

namespace A168200.P8503075994853343091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1] [1, -1, -1, 1] n

end

end A168200.P8503075994853343091

namespace A168200

/-- `ogf((4-x)/(1-x-x^2+x^3))` -/
def P8503075994853343091.Spec : Prop :=
  ∀ n, P8503075994853343091.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P11422653226212586757

`3*(n+1)-a(n-1)+1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168200

/-- `3*(n+1)-a(n-1)+1` -/
def P11422653226212586757.Spec : Prop :=
  ∀ n, P11422653226212586757.a n = A168200 (n + 1)

theorem P11422653226212586757.correct : P11422653226212586757.Spec := by
  intro n
  simp only [A168200, Nat.add_sub_cancel]

end A168200

/-! ## A168200.P2147505991358074543

`floor(3*(n+2)/2)-(-1)^(n+1)`
-/

namespace A168200.P2147505991358074543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (n + 2) : ℚ) / 2⌋ - (-1) ^ (n + 1)

end

end A168200.P2147505991358074543

namespace A168200

/-- `floor(3*(n+2)/2)-(-1)^(n+1)` -/
def P2147505991358074543.Spec : Prop :=
  ∀ n, P2147505991358074543.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P5562501741176378671

`∑[or(4, -(n%2))]`
-/

namespace A168200.P5562501741176378671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (-((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P5562501741176378671

namespace A168200

/-- `∑[or(4, -(n%2))]` -/
def P5562501741176378671.Spec : Prop :=
  ∀ n, P5562501741176378671.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P9072611728723582475

`3+a(n-2)` with `a(0)=4, a(1)=3`
-/

namespace A168200.P9072611728723582475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 3] fun n a =>
  3 + a (n - 2)

end

end A168200.P9072611728723582475

namespace A168200

/-- `3+a(n-2)` -/
def P9072611728723582475.Spec : Prop :=
  ∀ n, (P9072611728723582475.a n : ℤ) = A168200 (n + 1)

end A168200

/-! ## A168200.P11372187717653830369

`∑[5*gcd(2, n)-6]`
-/

namespace A168200.P11372187717653830369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.gcd 2 n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P11372187717653830369

namespace A168200

/-- `∑[5*gcd(2, n)-6]` -/
def P11372187717653830369.Spec : Prop :=
  ∀ n, P11372187717653830369.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P708240057005010032

`∑[4-5*and(1, n)]`
-/

namespace A168200.P708240057005010032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (5 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P708240057005010032

namespace A168200

/-- `∑[4-5*and(1, n)]` -/
def P708240057005010032.Spec : Prop :=
  ∀ n, P708240057005010032.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P10384848412462507578

`∑[3-a(n-1)]` with `a(0)=4`
-/

namespace A168200.P10384848412462507578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P10384848412462507578

namespace A168200

/-- `∑[3-a(n-1)]` -/
def P10384848412462507578.Spec : Prop :=
  ∀ n, P10384848412462507578.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P5014336984595382976

`∑[∑[ogf((4-x)/(1+x))]]`
-/

namespace A168200.P5014336984595382976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P5014336984595382976

namespace A168200

/-- `∑[∑[ogf((4-x)/(1+x))]]` -/
def P5014336984595382976.Spec : Prop :=
  ∀ n, P5014336984595382976.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P7562116394705479825

`floor(3*xor(1, n+2)/2)`
-/

namespace A168200.P7562116394705479825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Nat.xor 1 (n + 2) : ℚ) / 2)⌋

end

end A168200.P7562116394705479825

namespace A168200

/-- `floor(3*xor(1, n+2)/2)` -/
def P7562116394705479825.Spec : Prop :=
  ∀ n, P7562116394705479825.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P10075165924518585874

`∑[-(-4)^and(1, n+1)]`
-/

namespace A168200.P10075165924518585874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-4) ^ Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P10075165924518585874

namespace A168200

/-- `∑[-(-4)^and(1, n+1)]` -/
def P10075165924518585874.Spec : Prop :=
  ∀ n, P10075165924518585874.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P11181790248982096225

`-∑[(-4)^and(1, n-1)]`
-/

namespace A168200.P11181790248982096225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-4 : ℚ) ^ (Int.land 1 ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168200.P11181790248982096225

namespace A168200

/-- `-∑[(-4)^and(1, n-1)]` -/
def P11181790248982096225.Spec : Prop :=
  ∀ n, P11181790248982096225.a n = (A168200 (n + 1) : ℚ)

end A168200

/-! ## A168200.P11389733761981738553

`∑[or(4, -char[2*n+1])]`
-/

namespace A168200.P11389733761981738553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (-((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P11389733761981738553

namespace A168200

/-- `∑[or(4, -char[2*n+1])]` -/
def P11389733761981738553.Spec : Prop :=
  ∀ n, P11389733761981738553.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P8427850207599090030

`4-floor(ϕ-a(n-2))` with `a(0)=4, a(1)=3`
-/

namespace A168200.P8427850207599090030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  4 - ⌊Real.goldenRatio - (a (n - 2) : ℝ)⌋

end

end A168200.P8427850207599090030

namespace A168200

/-- `4-floor(ϕ-a(n-2))` -/
def P8427850207599090030.Spec : Prop :=
  ∀ n, P8427850207599090030.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P1743116928228361946

`ceil(a(n-2)-(ϕ-4))` with `a(0)=4, a(1)=3`
-/

namespace A168200.P1743116928228361946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  ⌈(a (n - 2) : ℝ) - (Real.goldenRatio - 4)⌉

end

end A168200.P1743116928228361946

namespace A168200

/-- `ceil(a(n-2)-(ϕ-4))` -/
def P1743116928228361946.Spec : Prop :=
  ∀ n, P1743116928228361946.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P2654533887713612334

`5-round(ϕ-a(n-2))` with `a(0)=4, a(1)=3`
-/

namespace A168200.P2654533887713612334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n a =>
  5 - SequenceMachineLib.roundAway (Real.goldenRatio - (a (n - 2) : ℝ))

end

end A168200.P2654533887713612334

namespace A168200

/-- `5-round(ϕ-a(n-2))` -/
def P2654533887713612334.Spec : Prop :=
  ∀ n, P2654533887713612334.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P13837774526747349530

`∑[5-((2*n+1)%4)!]`
-/

namespace A168200.P13837774526747349530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.factorial ((2 * n + 1) % 4) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168200.P13837774526747349530

namespace A168200

/-- `∑[5-((2*n+1)%4)!]` -/
def P13837774526747349530.Spec : Prop :=
  ∀ n, P13837774526747349530.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P6962166568016840940

`ceil(xor(1, n+2)+(n+1)/2)`
-/

namespace A168200.P6962166568016840940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 2) : ℚ) + (n + 1 : ℚ) / 2⌉

end

end A168200.P6962166568016840940

namespace A168200

/-- `ceil(xor(1, n+2)+(n+1)/2)` -/
def P6962166568016840940.Spec : Prop :=
  ∀ n, P6962166568016840940.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P8480805382130065433

`floor(xor(1, n+2)+(n+2)/2)`
-/

namespace A168200.P8480805382130065433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 2) : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A168200.P8480805382130065433

namespace A168200

/-- `floor(xor(1, n+2)+(n+2)/2)` -/
def P8480805382130065433.Spec : Prop :=
  ∀ n, P8480805382130065433.a n = A168200 (n + 1)

end A168200

/-! ## A168200.P1950935459760657539

`round(xor(1, n+2)+(n+1)/2)`
-/

namespace A168200.P1950935459760657539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 2) : ℚ) + (n + 1 : ℚ) / 2)

end

end A168200.P1950935459760657539

namespace A168200

/-- `round(xor(1, n+2)+(n+1)/2)` -/
def P1950935459760657539.Spec : Prop :=
  ∀ n, P1950935459760657539.a n = A168200 (n + 1)

end A168200

/-!
# A168201: Number of representations of n in the form 7*k+11*m (with nonnegative k, m).

The programs for A168201, the canonical program `A168201.P16849005549237807023` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168201 has offset 0).

The definition of A168201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168201.P16849005549237807023

`A025885(n)+A025900(n)-A025876(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168201

/-- `A025885(n)+A025900(n)-A025876(n)` -/
def P16849005549237807023.Spec : Prop :=
  ∀ n, P16849005549237807023.a n = A168201 n

theorem P16849005549237807023.correct : P16849005549237807023.Spec := by
  intro n
  simp only [A168201]

end A168201

/-! ## A168201.P11226705573171358927

`round(A194524(n+2)/7)`
-/

namespace A168201.P11226705573171358927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194524 (n + 2) : ℚ) / 7)

end

end A168201.P11226705573171358927

namespace A168201

/-- `round(A194524(n+2)/7)` -/
def P11226705573171358927.Spec : Prop :=
  ∀ n, P11226705573171358927.a n = A168201 n

end A168201

/-! ## A168201.P9667476156727320254

`A025819(n)-A025910(2*n+3)`
-/

namespace A168201.P9667476156727320254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 n - A025910 (2 * n + 3)

end

end A168201.P9667476156727320254

namespace A168201

/-- `A025819(n)-A025910(2*n+3)` -/
def P9667476156727320254.Spec : Prop :=
  ∀ n, P9667476156727320254.a n = A168201 n

end A168201

/-! ## A168201.P1890478146883386809

`A025819(n)-Δ[A029228(2*n+1)]`
-/

namespace A168201.P1890478146883386809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 n - (f1 (n + 1) - f1 n)

end

end A168201.P1890478146883386809

namespace A168201

/-- `A025819(n)-Δ[A029228(2*n+1)]` -/
def P1890478146883386809.Spec : Prop :=
  ∀ n, P1890478146883386809.a n = A168201 n

end A168201

/-! ## A168201.P2152485990296401745

`ceil(∑[A016242(n)]/A344449(n+1))`
-/

namespace A168201.P2152485990296401745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A344449 (n + 1) : ℚ)⌉

end

end A168201.P2152485990296401745

namespace A168201

/-- `ceil(∑[A016242(n)]/A344449(n+1))` -/
def P2152485990296401745.Spec : Prop :=
  ∀ n, P2152485990296401745.a n = A168201 n

end A168201

/-! ## A168201.P144931571675901946

`ceil(∑[A016242(n)]/A171720(n+2))`
-/

namespace A168201.P144931571675901946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A171720 (n + 2) : ℚ)⌉

end

end A168201.P144931571675901946

namespace A168201

/-- `ceil(∑[A016242(n)]/A171720(n+2))` -/
def P144931571675901946.Spec : Prop :=
  ∀ n, P144931571675901946.a n = A168201 n

end A168201

/-! ## A168201.P8208461367721852710

`A004525(∑[A016242(n)])^A233777(n)`
-/

namespace A168201.P8208461367721852710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016242 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (A233777 n : ℤ)

end

end A168201.P8208461367721852710

namespace A168201

/-- `A004525(∑[A016242(n)])^A233777(n)` -/
def P8208461367721852710.Spec : Prop :=
  ∀ n, P8208461367721852710.a n = (A168201 n : ℚ)

end A168201

/-! ## A168201.P14788374906520283127

`A057427(∑[A016242(n)]*A284475(n+2))`
-/

namespace A168201.P14788374906520283127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((∑ j ∈ Finset.range (n + 1), f1 j) * A284475 (n + 2)).toNat

end

end A168201.P14788374906520283127

namespace A168201

/-- `A057427(∑[A016242(n)]*A284475(n+2))` -/
def P14788374906520283127.Spec : Prop :=
  ∀ n, P14788374906520283127.a n = A168201 n

end A168201

/-! ## A168201.P14012325550259096681

`∑[A011642(n)]`
-/

namespace A168201.P14012325550259096681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168201.P14012325550259096681

namespace A168201

/-- `∑[A011642(n)]` -/
def P14012325550259096681.Spec : Prop :=
  ∀ n, P14012325550259096681.a n = A168201 n

end A168201

/-!
# A168202: a(n) = 3*n - a(n-1) + 1 with n > 1, a(1)=5.

The programs for A168202, the canonical program `A168202.P13299646924475505915` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168202 has offset 1).

The definition of A168202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)-a(n-1)+1` (program `A168202.P13299646924475505915`, by `A168202.P13299646924475505915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168202.P7234417309806561686

`ogf((5-3x+x^2)/(1-x-x^2+x^3))`
-/

namespace A168202.P7234417309806561686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 1] [1, -1, -1, 1] n

end

end A168202.P7234417309806561686

namespace A168202

/-- `ogf((5-3x+x^2)/(1-x-x^2+x^3))` -/
def P7234417309806561686.Spec : Prop :=
  ∀ n, P7234417309806561686.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P13299646924475505915

`3*(n+1)-a(n-1)+1` with `a(0)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168202

/-- `3*(n+1)-a(n-1)+1` -/
def P13299646924475505915.Spec : Prop :=
  ∀ n, P13299646924475505915.a n = A168202 (n + 1)

theorem P13299646924475505915.correct : P13299646924475505915.Spec := by
  intro n
  simp only [A168202, Nat.add_sub_cancel]

end A168202

/-! ## A168202.P8890388799260237970

`(5-9*(-1)^(n+1))/4+3*(n+1)/2`
-/

namespace A168202.P8890388799260237970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - 9 * (-1) ^ (n + 1) : ℚ) / 4 + (3 * (n + 1) : ℚ) / 2

end

end A168202.P8890388799260237970

namespace A168202

/-- `(5-9*(-1)^(n+1))/4+3*(n+1)/2` -/
def P8890388799260237970.Spec : Prop :=
  ∀ n, P8890388799260237970.a n = (A168202 (n + 1) : ℚ)

theorem P8890388799260237970.correct : P8890388799260237970.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168202, Nat.add_sub_cancel, A168202.P8890388799260237970.a, A168202.P13299646924475505915.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168202, Nat.add_sub_cancel, A168202.P8890388799260237970.a, A168202.P13299646924475505915.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168202

/-! ## A168202.P15756547372753658866

`3+a(n-2)` with `a(0)=5, a(1)=2`
-/

namespace A168202.P15756547372753658866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n a =>
  3 + a (n - 2)

end

end A168202.P15756547372753658866

namespace A168202

/-- `3+a(n-2)` -/
def P15756547372753658866.Spec : Prop :=
  ∀ n, (P15756547372753658866.a n : ℤ) = A168202 (n + 1)

end A168202

/-! ## A168202.P7366685463756772550

`∑[3-a(n-1)]` with `a(0)=5, a(1)=-3`
-/

namespace A168202.P7366685463756772550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, -3] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168202.P7366685463756772550

namespace A168202

/-- `∑[3-a(n-1)]` -/
def P7366685463756772550.Spec : Prop :=
  ∀ n, P7366685463756772550.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P17925475954915250966

`∑[∑[ogf((5-3x+x^2)/(1+x))]]`
-/

namespace A168202.P17925475954915250966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168202.P17925475954915250966

namespace A168202

/-- `∑[∑[ogf((5-3x+x^2)/(1+x))]]` -/
def P17925475954915250966.Spec : Prop :=
  ∀ n, P17925475954915250966.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P4512163449066399920

`4-(a(n-1)-3*n)` with `a(0)=5`
-/

namespace A168202.P4512163449066399920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 - (a (n - 1) - (3 * n : ℤ))

end

end A168202.P4512163449066399920

namespace A168202

/-- `4-(a(n-1)-3*n)` -/
def P4512163449066399920.Spec : Prop :=
  ∀ n, P4512163449066399920.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P18112033966164006399

`4-floor(ϕ-a(n-2))` with `a(0)=5, a(1)=2`
-/

namespace A168202.P18112033966164006399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  4 - ⌊Real.goldenRatio - (a (n - 2) : ℝ)⌋

end

end A168202.P18112033966164006399

namespace A168202

/-- `4-floor(ϕ-a(n-2))` -/
def P18112033966164006399.Spec : Prop :=
  ∀ n, P18112033966164006399.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P15833395215978857226

`ceil(a(n-2)-(ϕ-4))` with `a(0)=5, a(1)=2`
-/

namespace A168202.P15833395215978857226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  ⌈(a (n - 2) : ℝ) - (Real.goldenRatio - 4)⌉

end

end A168202.P15833395215978857226

namespace A168202

/-- `ceil(a(n-2)-(ϕ-4))` -/
def P15833395215978857226.Spec : Prop :=
  ∀ n, P15833395215978857226.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P15672783442657461081

`5-round(ϕ-a(n-2))` with `a(0)=5, a(1)=2`
-/

namespace A168202.P15672783442657461081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  5 - SequenceMachineLib.roundAway (Real.goldenRatio - (a (n - 2) : ℝ))

end

end A168202.P15672783442657461081

namespace A168202

/-- `5-round(ϕ-a(n-2))` -/
def P15672783442657461081.Spec : Prop :=
  ∀ n, P15672783442657461081.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P11726976620821743068

`ceil(xor(3, 2*n)-(n-3)/2)`
-/

namespace A168202.P11726976620821743068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (2 * n) : ℚ) - ((n : ℤ) - 3 : ℚ) / 2⌉

end

end A168202.P11726976620821743068

namespace A168202

/-- `ceil(xor(3, 2*n)-(n-3)/2)` -/
def P11726976620821743068.Spec : Prop :=
  ∀ n, P11726976620821743068.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P7300944052437843913

`round(xor(3, 2*n)-(n-3)/2)`
-/

namespace A168202.P7300944052437843913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (2 * n) : ℚ) - ((n : ℤ) - 3 : ℚ) / 2)

end

end A168202.P7300944052437843913

namespace A168202

/-- `round(xor(3, 2*n)-(n-3)/2)` -/
def P7300944052437843913.Spec : Prop :=
  ∀ n, P7300944052437843913.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P9591882852736386102

`A016789(A028242(n))`
-/

namespace A168202.P9591882852736386102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A028242 n).toNat

end

end A168202.P9591882852736386102

namespace A168202

/-- `A016789(A028242(n))` -/
def P9591882852736386102.Spec : Prop :=
  ∀ n, P9591882852736386102.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P5662545391001291812

`A168199(A014681(n+1))`
-/

namespace A168202.P5662545391001291812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A014681 (n + 1)).toNat

end

end A168202.P5662545391001291812

namespace A168202

/-- `A168199(A014681(n+1))` -/
def P5662545391001291812.Spec : Prop :=
  ∀ n, P5662545391001291812.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P14226077002687454139

`A168199(A067060(n+1))`
-/

namespace A168202.P14226077002687454139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A067060 (n + 1)).toNat

end

end A168202.P14226077002687454139

namespace A168202

/-- `A168199(A067060(n+1))` -/
def P14226077002687454139.Spec : Prop :=
  ∀ n, P14226077002687454139.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P5644941228649989008

`A168199(A103889(n+1))`
-/

namespace A168202.P5644941228649989008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A103889 (n + 1)).toNat

end

end A168202.P5644941228649989008

namespace A168202

/-- `A168199(A103889(n+1))` -/
def P5644941228649989008.Spec : Prop :=
  ∀ n, P5644941228649989008.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P4982323078986451528

`A016789(A168236(n+1)-(n+1))`
-/

namespace A168202.P4982323078986451528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A168236 (n + 1) - (n + 1 : ℤ)).toNat

end

end A168202.P4982323078986451528

namespace A168202

/-- `A016789(A168236(n+1)-(n+1))` -/
def P4982323078986451528.Spec : Prop :=
  ∀ n, P4982323078986451528.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P9876364456768974854

`A168199(A115659(n+2))`
-/

namespace A168202.P9876364456768974854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (A115659 (n + 2)).toNat

end

end A168202.P9876364456768974854

namespace A168202

/-- `A168199(A115659(n+2))` -/
def P9876364456768974854.Spec : Prop :=
  ∀ n, P9876364456768974854.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P14486343081335565664

`A168236(xor(1, n+2))`
-/

namespace A168202.P14486343081335565664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168236 (Nat.xor 1 (n + 2))

end

end A168202.P14486343081335565664

namespace A168202

/-- `A168236(xor(1, n+2))` -/
def P14486343081335565664.Spec : Prop :=
  ∀ n, P14486343081335565664.a n = A168202 (n + 1)

end A168202

/-! ## A168202.P10752118675092912308

`abs(Δ[A165355(n+1)])`
-/

namespace A168202.P10752118675092912308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A168202.P10752118675092912308

namespace A168202

/-- `abs(Δ[A165355(n+1)])` -/
def P10752118675092912308.Spec : Prop :=
  ∀ n, P10752118675092912308.a n = A168202 (n + 1)

end A168202

/-!
# A168203: a(n) = 4*n - a(n-1) + 1 with n>1, a(1)=0.

The programs for A168203, the canonical program `A168203.P6599476219410557336` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168203 has offset 1).

The definition of A168203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-a(n-1)+1` (program `A168203.P6599476219410557336`, by `A168203.P6599476219410557336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168203.P2531618238192501495

`ogf((9x-5x^2)/(1-x-x^2+x^3))`
-/

namespace A168203.P2531618238192501495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -5] [1, -1, -1, 1] n

end

end A168203.P2531618238192501495

namespace A168203

/-- `ogf((9x-5x^2)/(1-x-x^2+x^3))` -/
def P2531618238192501495.Spec : Prop :=
  ∀ n, P2531618238192501495.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P6599476219410557336

`4*(n+1)-a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168203

/-- `4*(n+1)-a(n-1)+1` -/
def P6599476219410557336.Spec : Prop :=
  ∀ n, P6599476219410557336.a n = A168203 (n + 1)

theorem P6599476219410557336.correct : P6599476219410557336.Spec := by
  intro n
  simp only [A168203, Nat.add_sub_cancel]

end A168203

/-! ## A168203.P14727618308205605243

`(4*(n+1)+3+7*(-1)^(n+1))/2`
-/

namespace A168203.P14727618308205605243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) + 3 : ℤ) + 7 * (-1) ^ (n + 1) : ℚ) / 2

end

end A168203.P14727618308205605243

namespace A168203

/-- `(4*(n+1)+3+7*(-1)^(n+1))/2` -/
def P14727618308205605243.Spec : Prop :=
  ∀ n, P14727618308205605243.a n = (A168203 (n + 1) : ℚ)

theorem P14727618308205605243.correct : P14727618308205605243.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168203, Nat.add_sub_cancel, A168203.P14727618308205605243.a, A168203.P6599476219410557336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168203, Nat.add_sub_cancel, A168203.P14727618308205605243.a, A168203.P6599476219410557336.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168203

/-! ## A168203.P7878384976201898839

`4+a(n-2)` with `a(0)=0, a(1)=9`
-/

namespace A168203.P7878384976201898839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  4 + a (n - 2)

end

end A168203.P7878384976201898839

namespace A168203

/-- `4+a(n-2)` -/
def P7878384976201898839.Spec : Prop :=
  ∀ n, (P7878384976201898839.a n : ℤ) = A168203 (n + 1)

end A168203

/-! ## A168203.P17015398388379413244

`∑[4-a(n-1)]` with `a(0)=0, a(1)=9`
-/

namespace A168203.P17015398388379413244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168203.P17015398388379413244

namespace A168203

/-- `∑[4-a(n-1)]` -/
def P17015398388379413244.Spec : Prop :=
  ∀ n, P17015398388379413244.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P7188630672614310152

`2*n+7*n%2`
-/

namespace A168203.P7188630672614310152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7 * (n % 2)

end

end A168203.P7188630672614310152

namespace A168203

/-- `2*n+7*n%2` -/
def P7188630672614310152.Spec : Prop :=
  ∀ n, (P7188630672614310152.a n : ℤ) = A168203 (n + 1)

end A168203

/-! ## A168203.P14096185740942553939

`2*n+7*and(1, n)`
-/

namespace A168203.P14096185740942553939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7 * Nat.land 1 n

end

end A168203.P14096185740942553939

namespace A168203

/-- `2*n+7*and(1, n)` -/
def P14096185740942553939.Spec : Prop :=
  ∀ n, (P14096185740942553939.a n : ℤ) = A168203 (n + 1)

end A168203

/-! ## A168203.P11786154509685762501

`∑[∑[ogf((9x-5x^2)/(1+x))]]`
-/

namespace A168203.P11786154509685762501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168203.P11786154509685762501

namespace A168203

/-- `∑[∑[ogf((9x-5x^2)/(1+x))]]` -/
def P11786154509685762501.Spec : Prop :=
  ∀ n, P11786154509685762501.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P4965480024499375994

`4-floor(-a(n-2))` with `a(0)=0, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A168203.P4965480024499375994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  4 - (-a (n - 2))

end

end A168203.P4965480024499375994

namespace A168203

/-- `4-floor(-a(n-2))` -/
def P4965480024499375994.Spec : Prop :=
  ∀ n, P4965480024499375994.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P13585707879360926068

`4-ceil(-a(n-2))` with `a(0)=0, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A168203.P13585707879360926068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  4 - (-a (n - 2))

end

end A168203.P13585707879360926068

namespace A168203

/-- `4-ceil(-a(n-2))` -/
def P13585707879360926068.Spec : Prop :=
  ∀ n, P13585707879360926068.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P16324754404793061764

`4-round(-a(n-2))` with `a(0)=0, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A168203.P16324754404793061764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  4 - (-a (n - 2))

end

end A168203.P16324754404793061764

namespace A168203

/-- `4-round(-a(n-2))` -/
def P16324754404793061764.Spec : Prop :=
  ∀ n, P16324754404793061764.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P722857074667525969

`4*n-(a(n-1)-5)` with `a(0)=0`
-/

namespace A168203.P722857074667525969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 * n : ℤ) - (a (n - 1) - 5)

end

end A168203.P722857074667525969

namespace A168203

/-- `4*n-(a(n-1)-5)` -/
def P722857074667525969.Spec : Prop :=
  ∀ n, P722857074667525969.a n = A168203 (n + 1)

theorem P722857074667525969.correct : P722857074667525969.Spec := by
  intro n
  simp only [A168203, Nat.add_sub_cancel, A168203.P722857074667525969.a, A168203.P6599476219410557336.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168203

/-! ## A168203.P6637465896707951598

`xor(1, A168204(n+1))`
-/

namespace A168203.P6637465896707951598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A168204 (n + 1))

end

end A168203.P6637465896707951598

namespace A168203

/-- `xor(1, A168204(n+1))` -/
def P6637465896707951598.Spec : Prop :=
  ∀ n, P6637465896707951598.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P12510805103620817911

`A010678(n)+2*n`
-/

namespace A168203.P12510805103620817911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n + (2 * n : ℤ)

end

end A168203.P12510805103620817911

namespace A168203

/-- `A010678(n)+2*n` -/
def P12510805103620817911.Spec : Prop :=
  ∀ n, P12510805103620817911.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P15878271922371030302

`A166521(n+1)-(n+1)`
-/

namespace A168203.P15878271922371030302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) - (n + 1 : ℤ)

end

end A168203.P15878271922371030302

namespace A168203

/-- `A166521(n+1)-(n+1)` -/
def P15878271922371030302.Spec : Prop :=
  ∀ n, P15878271922371030302.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P9627162981641300063

`2*A168230(n+1)+n`
-/

namespace A168203.P9627162981641300063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168230 (n + 1) + (n : ℤ)

end

end A168203.P9627162981641300063

namespace A168203

/-- `2*A168230(n+1)+n` -/
def P9627162981641300063.Spec : Prop :=
  ∀ n, P9627162981641300063.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P4066952546456168034

`abs(1-(A010689(n)+2*n))`
-/

namespace A168203.P4066952546456168034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A010689 n + (2 * n : ℤ))|

end

end A168203.P4066952546456168034

namespace A168203

/-- `abs(1-(A010689(n)+2*n))` -/
def P4066952546456168034.Spec : Prop :=
  ∀ n, P4066952546456168034.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P7249770563341314218

`A014601(n)+A010677(n)`
-/

namespace A168203.P7249770563341314218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + A010677 n

end

end A168203.P7249770563341314218

namespace A168203

/-- `A014601(n)+A010677(n)` -/
def P7249770563341314218.Spec : Prop :=
  ∀ n, P7249770563341314218.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P9215676857784777660

`A042948(n)+A010679(n)`
-/

namespace A168203.P9215676857784777660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n + A010679 n

end

end A168203.P9215676857784777660

namespace A168203

/-- `A042948(n)+A010679(n)` -/
def P9215676857784777660.Spec : Prop :=
  ∀ n, P9215676857784777660.a n = A168203 (n + 1)

end A168203

/-! ## A168203.P5162772644031047367

`A060747(n)+A010689(n)`
-/

namespace A168203.P5162772644031047367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + A010689 n

end

end A168203.P5162772644031047367

namespace A168203

/-- `A060747(n)+A010689(n)` -/
def P5162772644031047367.Spec : Prop :=
  ∀ n, P5162772644031047367.a n = A168203 (n + 1)

end A168203

/-!
# A168204: a(n) = 4*n - a(n-1) + 1 with n>1, a(1)=1.

The programs for A168204, the canonical program `A168204.P15065543178631146981` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168204 has offset 1).

The definition of A168204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-a(n-1)+1` (program `A168204.P15065543178631146981`, by `A168204.P15065543178631146981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168204.P7541241021988725718

`ogf((1+7x-4x^2)/(1-x-x^2+x^3))`
-/

namespace A168204.P7541241021988725718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -4] [1, -1, -1, 1] n

end

end A168204.P7541241021988725718

namespace A168204

/-- `ogf((1+7x-4x^2)/(1-x-x^2+x^3))` -/
def P7541241021988725718.Spec : Prop :=
  ∀ n, P7541241021988725718.a n = A168204 (n + 1)

end A168204

/-! ## A168204.P15065543178631146981

`4*(n+1)-a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168204

/-- `4*(n+1)-a(n-1)+1` -/
def P15065543178631146981.Spec : Prop :=
  ∀ n, P15065543178631146981.a n = A168204 (n + 1)

theorem P15065543178631146981.correct : P15065543178631146981.Spec := by
  intro n
  simp only [A168204, Nat.add_sub_cancel]

end A168204

/-! ## A168204.P16482510390146046850

`(4*(n+1)+3+5*(-1)^(n+1))/2`
-/

namespace A168204.P16482510390146046850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) + 3 : ℤ) + 5 * (-1) ^ (n + 1) : ℚ) / 2

end

end A168204.P16482510390146046850

namespace A168204

/-- `(4*(n+1)+3+5*(-1)^(n+1))/2` -/
def P16482510390146046850.Spec : Prop :=
  ∀ n, P16482510390146046850.a n = (A168204 (n + 1) : ℚ)

theorem P16482510390146046850.correct : P16482510390146046850.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168204, Nat.add_sub_cancel, A168204.P16482510390146046850.a, A168204.P15065543178631146981.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168204, Nat.add_sub_cancel, A168204.P16482510390146046850.a, A168204.P15065543178631146981.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168204

/-! ## A168204.P15975030368549989482

`4+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A168204.P15975030368549989482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 + a (n - 2)

end

end A168204.P15975030368549989482

namespace A168204

/-- `4+a(n-2)` -/
def P15975030368549989482.Spec : Prop :=
  ∀ n, (P15975030368549989482.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P1607429157166263734

`∑[4-a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A168204.P1607429157166263734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168204.P1607429157166263734

namespace A168204

/-- `∑[4-a(n-1)]` -/
def P1607429157166263734.Spec : Prop :=
  ∀ n, P1607429157166263734.a n = A168204 (n + 1)

end A168204

/-! ## A168204.P11932249173086547936

`6^(n%2)+2*n`
-/

namespace A168204.P11932249173086547936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n % 2) + 2 * n

end

end A168204.P11932249173086547936

namespace A168204

/-- `6^(n%2)+2*n` -/
def P11932249173086547936.Spec : Prop :=
  ∀ n, (P11932249173086547936.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P2497985810260610052

`6^and(1, n)+2*n`
-/

namespace A168204.P2497985810260610052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ Nat.land 1 n + 2 * n

end

end A168204.P2497985810260610052

namespace A168204

/-- `6^and(1, n)+2*n` -/
def P2497985810260610052.Spec : Prop :=
  ∀ n, (P2497985810260610052.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P2797869455924118987

`C(6, and(1, n))+2*n`
-/

namespace A168204.P2797869455924118987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 (Nat.land 1 n) + 2 * n

end

end A168204.P2797869455924118987

namespace A168204

/-- `C(6, and(1, n))+2*n` -/
def P2797869455924118987.Spec : Prop :=
  ∀ n, (P2797869455924118987.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P4223344219867752281

`∑[∑[ogf((1+7x-4x^2)/(1+x))]]`
-/

namespace A168204.P4223344219867752281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168204.P4223344219867752281

namespace A168204

/-- `∑[∑[ogf((1+7x-4x^2)/(1+x))]]` -/
def P4223344219867752281.Spec : Prop :=
  ∀ n, P4223344219867752281.a n = A168204 (n + 1)

end A168204

/-! ## A168204.P8021182816960298782

`4-floor(-a(n-2))` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A168204.P8021182816960298782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 - (-a (n - 2))

end

end A168204.P8021182816960298782

namespace A168204

/-- `4-floor(-a(n-2))` -/
def P8021182816960298782.Spec : Prop :=
  ∀ n, P8021182816960298782.a n = A168204 (n + 1)

end A168204

/-! ## A168204.P7823685235264497941

`4-ceil(-a(n-2))` with `a(0)=1, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A168204.P7823685235264497941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 - (-a (n - 2))

end

end A168204.P7823685235264497941

namespace A168204

/-- `4-ceil(-a(n-2))` -/
def P7823685235264497941.Spec : Prop :=
  ∀ n, P7823685235264497941.a n = A168204 (n + 1)

end A168204

/-! ## A168204.P15913635528673125618

`4-round(-a(n-2))` with `a(0)=1, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A168204.P15913635528673125618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 - (-a (n - 2))

end

end A168204.P15913635528673125618

namespace A168204

/-- `4-round(-a(n-2))` -/
def P15913635528673125618.Spec : Prop :=
  ∀ n, P15913635528673125618.a n = A168204 (n + 1)

end A168204

/-! ## A168204.P12715251506880030440

`(3*and(1, n))!+2*n`
-/

namespace A168204.P12715251506880030440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * Nat.land 1 n) + 2 * n

end

end A168204.P12715251506880030440

namespace A168204

/-- `(3*and(1, n))!+2*n` -/
def P12715251506880030440.Spec : Prop :=
  ∀ n, (P12715251506880030440.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P2734249106577026265

`xor(2, gcd(2, n))!+2*n`
-/

namespace A168204.P2734249106577026265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 2 (Nat.gcd 2 n)) + 2 * n

end

end A168204.P2734249106577026265

namespace A168204

/-- `xor(2, gcd(2, n))!+2*n` -/
def P2734249106577026265.Spec : Prop :=
  ∀ n, (P2734249106577026265.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P10035021129323164498

`5*and(1, n)+2*n+1`
-/

namespace A168204.P10035021129323164498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.land 1 n + (2 * n + 1)

end

end A168204.P10035021129323164498

namespace A168204

/-- `5*and(1, n)+2*n+1` -/
def P10035021129323164498.Spec : Prop :=
  ∀ n, (P10035021129323164498.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P12898991652150375705

`gcd(6, (n+1)%2)+2*n`
-/

namespace A168204.P12898991652150375705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 ((n + 1) % 2) + 2 * n

end

end A168204.P12898991652150375705

namespace A168204

/-- `gcd(6, (n+1)%2)+2*n` -/
def P12898991652150375705.Spec : Prop :=
  ∀ n, (P12898991652150375705.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P15683207446198381630

`4*n-(a(n-1)-5)` with `a(0)=1`
-/

namespace A168204.P15683207446198381630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - (a (n - 1) - 5)

end

end A168204.P15683207446198381630

namespace A168204

/-- `4*n-(a(n-1)-5)` -/
def P15683207446198381630.Spec : Prop :=
  ∀ n, P15683207446198381630.a n = A168204 (n + 1)

theorem P15683207446198381630.correct : P15683207446198381630.Spec := by
  intro n
  simp only [A168204, Nat.add_sub_cancel, A168204.P15683207446198381630.a, A168204.P15065543178631146981.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168204

/-! ## A168204.P8681236670530712954

`C(6, (n+2)%2)+2*n`
-/

namespace A168204.P8681236670530712954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 6 ((n + 2) % 2) + 2 * n

end

end A168204.P8681236670530712954

namespace A168204

/-- `C(6, (n+2)%2)+2*n` -/
def P8681236670530712954.Spec : Prop :=
  ∀ n, (P8681236670530712954.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P6125308347700220662

`C(4, gcd(4, 2*n))+2*n`
-/

namespace A168204.P6125308347700220662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (Nat.gcd 4 (2 * n)) + 2 * n

end

end A168204.P6125308347700220662

namespace A168204

/-- `C(4, gcd(4, 2*n))+2*n` -/
def P6125308347700220662.Spec : Prop :=
  ∀ n, (P6125308347700220662.a n : ℤ) = A168204 (n + 1)

end A168204

/-! ## A168204.P11879201793517129501

`6-(4/2-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A168204.P11879201793517129501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 - ((4 : ℚ) / 2 - a (n - 2))

end

end A168204.P11879201793517129501

namespace A168204

/-- `6-(4/2-a(n-2))` -/
def P11879201793517129501.Spec : Prop :=
  ∀ n, P11879201793517129501.a n = (A168204 (n + 1) : ℚ)

end A168204

/-!
# A168205: a(n) = 4*n - a(n-1) + 1 with n>1, a(1)=2.

The programs for A168205, the canonical program `A168205.P10323968250721316378` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168205 has offset 1).

The definition of A168205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-a(n-1)+1` (program `A168205.P10323968250721316378`, by `A168205.P10323968250721316378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168205.P4257223277715904289

`ogf((2+5x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168205.P4257223277715904289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -3] [1, -1, -1, 1] n

end

end A168205.P4257223277715904289

namespace A168205

/-- `ogf((2+5x-3x^2)/(1-x-x^2+x^3))` -/
def P4257223277715904289.Spec : Prop :=
  ∀ n, P4257223277715904289.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P10323968250721316378

`4*(n+1)-a(n-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168205

/-- `4*(n+1)-a(n-1)+1` -/
def P10323968250721316378.Spec : Prop :=
  ∀ n, P10323968250721316378.a n = A168205 (n + 1)

theorem P10323968250721316378.correct : P10323968250721316378.Spec := by
  intro n
  simp only [A168205, Nat.add_sub_cancel]

end A168205

/-! ## A168205.P9651974601000679427

`(4*(n+1)+3+3*(-1)^(n+1))/2`
-/

namespace A168205.P9651974601000679427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) + 3 : ℤ) + 3 * (-1) ^ (n + 1) : ℚ) / 2

end

end A168205.P9651974601000679427

namespace A168205

/-- `(4*(n+1)+3+3*(-1)^(n+1))/2` -/
def P9651974601000679427.Spec : Prop :=
  ∀ n, P9651974601000679427.a n = (A168205 (n + 1) : ℚ)

theorem P9651974601000679427.correct : P9651974601000679427.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168205, Nat.add_sub_cancel, A168205.P9651974601000679427.a, A168205.P10323968250721316378.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168205, Nat.add_sub_cancel, A168205.P9651974601000679427.a, A168205.P10323968250721316378.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168205

/-! ## A168205.P15221830285193533625

`4+a(n-2)` with `a(0)=2, a(1)=7`
-/

namespace A168205.P15221830285193533625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  4 + a (n - 2)

end

end A168205.P15221830285193533625

namespace A168205

/-- `4+a(n-2)` -/
def P15221830285193533625.Spec : Prop :=
  ∀ n, (P15221830285193533625.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P597420042267077063

`xor(3, ∑[3^(n%2)])`
-/

namespace A168205.P597420042267077063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168205.P597420042267077063

namespace A168205

/-- `xor(3, ∑[3^(n%2)])` -/
def P597420042267077063.Spec : Prop :=
  ∀ n, (P597420042267077063.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P6424122639593562909

`xor(1, record[or(2, n+1)])`
-/

namespace A168205.P6424122639593562909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A168205.P6424122639593562909

namespace A168205

/-- `xor(1, record[or(2, n+1)])` -/
def P6424122639593562909.Spec : Prop :=
  ∀ n, (P6424122639593562909.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P8054353074994874348

`xor(1, record[xor(2, n+1)])`
-/

namespace A168205.P8054353074994874348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A168205.P8054353074994874348

namespace A168205

/-- `xor(1, record[xor(2, n+1)])` -/
def P8054353074994874348.Spec : Prop :=
  ∀ n, (P8054353074994874348.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P3207455516785033027

`xor(3, ∑[3^and(1, n)])`
-/

namespace A168205.P3207455516785033027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168205.P3207455516785033027

namespace A168205

/-- `xor(3, ∑[3^and(1, n)])` -/
def P3207455516785033027.Spec : Prop :=
  ∀ n, (P3207455516785033027.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P10791318415333115358

`∑[4-a(n-1)]` with `a(0)=2, a(1)=5`
-/

namespace A168205.P10791318415333115358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168205.P10791318415333115358

namespace A168205

/-- `∑[4-a(n-1)]` -/
def P10791318415333115358.Spec : Prop :=
  ∀ n, P10791318415333115358.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P16362085261113234631

`xor(1, or(1, n+3)+n)`
-/

namespace A168205.P16362085261113234631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 (n + 3) + n)

end

end A168205.P16362085261113234631

namespace A168205

/-- `xor(1, or(1, n+3)+n)` -/
def P16362085261113234631.Spec : Prop :=
  ∀ n, (P16362085261113234631.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P3677016800038900277

`Δ[∑[gcd(2, n)²]+n²]`
-/

namespace A168205.P3677016800038900277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168205.P3677016800038900277

namespace A168205

/-- `Δ[∑[gcd(2, n)²]+n²]` -/
def P3677016800038900277.Spec : Prop :=
  ∀ n, P3677016800038900277.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P5421554274750322771

`∑[∑[ogf((2+5x-3x^2)/(1+x))]]`
-/

namespace A168205.P5421554274750322771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168205.P5421554274750322771

namespace A168205

/-- `∑[∑[ogf((2+5x-3x^2)/(1+x))]]` -/
def P5421554274750322771.Spec : Prop :=
  ∀ n, P5421554274750322771.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P14638228688832245166

`4-floor(-a(n-2))` with `a(0)=2, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A168205.P14638228688832245166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  4 - (-a (n - 2))

end

end A168205.P14638228688832245166

namespace A168205

/-- `4-floor(-a(n-2))` -/
def P14638228688832245166.Spec : Prop :=
  ∀ n, P14638228688832245166.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P9688977158182374549

`4-ceil(-a(n-2))` with `a(0)=2, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A168205.P9688977158182374549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  4 - (-a (n - 2))

end

end A168205.P9688977158182374549

namespace A168205

/-- `4-ceil(-a(n-2))` -/
def P9688977158182374549.Spec : Prop :=
  ∀ n, P9688977158182374549.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P17251452515993730613

`4-round(-a(n-2))` with `a(0)=2, a(1)=7`

`round` is left out, it is the identity on integers.
-/

namespace A168205.P17251452515993730613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  4 - (-a (n - 2))

end

end A168205.P17251452515993730613

namespace A168205

/-- `4-round(-a(n-2))` -/
def P17251452515993730613.Spec : Prop :=
  ∀ n, P17251452515993730613.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P15421668925247114503

`xor(3, ∑[(2*n+1)%4])`
-/

namespace A168205.P15421668925247114503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168205.P15421668925247114503

namespace A168205

/-- `xor(3, ∑[(2*n+1)%4])` -/
def P15421668925247114503.Spec : Prop :=
  ∀ n, (P15421668925247114503.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P10859270080672268146

`xor(3, ∑[2*and(1, n)+1])`
-/

namespace A168205.P10859270080672268146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168205.P10859270080672268146

namespace A168205

/-- `xor(3, ∑[2*and(1, n)+1])` -/
def P10859270080672268146.Spec : Prop :=
  ∀ n, (P10859270080672268146.a n : ℤ) = A168205 (n + 1)

end A168205

/-! ## A168205.P2380246408172668430

`or(2, record[or(2, n+1)-1])`
-/

namespace A168205.P2380246408172668430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A168205.P2380246408172668430

namespace A168205

/-- `or(2, record[or(2, n+1)-1])` -/
def P2380246408172668430.Spec : Prop :=
  ∀ n, P2380246408172668430.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P11292247203311776038

`or(2, and(n+3, -2)+n)`
-/

namespace A168205.P11292247203311776038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.land (n + 3 : ℤ) (-2) + (n : ℤ))

end

end A168205.P11292247203311776038

namespace A168205

/-- `or(2, and(n+3, -2)+n)` -/
def P11292247203311776038.Spec : Prop :=
  ∀ n, P11292247203311776038.a n = A168205 (n + 1)

end A168205

/-! ## A168205.P15988742800321716631

`or(2, n+3-or(1, -n))`
-/

namespace A168205.P15988742800321716631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n + 3 : ℤ) - Int.lor 1 (-(n : ℤ)))

end

end A168205.P15988742800321716631

namespace A168205

/-- `or(2, n+3-or(1, -n))` -/
def P15988742800321716631.Spec : Prop :=
  ∀ n, P15988742800321716631.a n = A168205 (n + 1)

end A168205

/-!
# A168206: a(n) = 5*n - a(n-1) + 1 with n>1, a(1)=0.

The programs for A168206, the canonical program `A168206.P8796712618962634624` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168206 has offset 1).

The definition of A168206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)-a(n-1)+1` (program `A168206.P8796712618962634624`, by `A168206.P8796712618962634624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168206.P74827281444484158

`ogf((11x-6x^2)/(1-x-x^2+x^3))`
-/

namespace A168206.P74827281444484158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, -6] [1, -1, -1, 1] n

end

end A168206.P74827281444484158

namespace A168206

/-- `ogf((11x-6x^2)/(1-x-x^2+x^3))` -/
def P74827281444484158.Spec : Prop :=
  ∀ n, P74827281444484158.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P8796712618962634624

`5*(n+1)-a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168206

/-- `5*(n+1)-a(n-1)+1` -/
def P8796712618962634624.Spec : Prop :=
  ∀ n, P8796712618962634624.a n = A168206 (n + 1)

theorem P8796712618962634624.correct : P8796712618962634624.Spec := by
  intro n
  simp only [A168206, Nat.add_sub_cancel]

end A168206

/-! ## A168206.P14883455566630549120

`(10*(n+1)+7+17*(-1)^(n+1))/4`
-/

namespace A168206.P14883455566630549120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) + 7 : ℤ) + 17 * (-1) ^ (n + 1) : ℚ) / 4

end

end A168206.P14883455566630549120

namespace A168206

/-- `(10*(n+1)+7+17*(-1)^(n+1))/4` -/
def P14883455566630549120.Spec : Prop :=
  ∀ n, P14883455566630549120.a n = (A168206 (n + 1) : ℚ)

theorem P14883455566630549120.correct : P14883455566630549120.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168206, Nat.add_sub_cancel, A168206.P14883455566630549120.a, A168206.P8796712618962634624.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168206, Nat.add_sub_cancel, A168206.P14883455566630549120.a, A168206.P8796712618962634624.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168206

/-! ## A168206.P8072720549509426875

`a(n-2)+5` with `a(0)=0, a(1)=11`
-/

namespace A168206.P8072720549509426875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n a =>
  a (n - 2) + 5

end

end A168206.P8072720549509426875

namespace A168206

/-- `a(n-2)+5` -/
def P8072720549509426875.Spec : Prop :=
  ∀ n, (P8072720549509426875.a n : ℤ) = A168206 (n + 1)

end A168206

/-! ## A168206.P8589302681771816625

`∑[5-a(n-1)]` with `a(0)=0, a(1)=11`
-/

namespace A168206.P8589302681771816625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168206.P8589302681771816625

namespace A168206

/-- `∑[5-a(n-1)]` -/
def P8589302681771816625.Spec : Prop :=
  ∀ n, P8589302681771816625.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P6540966664106220611

`5*n-(a(n-1)-6)` with `a(0)=0`
-/

namespace A168206.P6540966664106220611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 6)

end

end A168206.P6540966664106220611

namespace A168206

/-- `5*n-(a(n-1)-6)` -/
def P6540966664106220611.Spec : Prop :=
  ∀ n, P6540966664106220611.a n = A168206 (n + 1)

theorem P6540966664106220611.correct : P6540966664106220611.Spec := by
  intro n
  simp only [A168206, Nat.add_sub_cancel, A168206.P6540966664106220611.a, A168206.P8796712618962634624.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168206

/-! ## A168206.P13115591648608894261

`A166522(n+1)-(n+1)`
-/

namespace A168206.P13115591648608894261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (n + 1) - (n + 1 : ℤ)

end

end A168206.P13115591648608894261

namespace A168206

/-- `A166522(n+1)-(n+1)` -/
def P13115591648608894261.Spec : Prop :=
  ∀ n, P13115591648608894261.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P9955642140487365603

`A010681(n)+A008851(n+1)`
-/

namespace A168206.P9955642140487365603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010681 n + A008851 (n + 1)

end

end A168206.P9955642140487365603

namespace A168206

/-- `A010681(n)+A008851(n+1)` -/
def P9955642140487365603.Spec : Prop :=
  ∀ n, P9955642140487365603.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P16755899925145324560

`A047208(n+1)+A010678(n)`
-/

namespace A168206.P16755899925145324560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047208 (n + 1) + A010678 n

end

end A168206.P16755899925145324560

namespace A168206

/-- `A047208(n+1)+A010678(n)` -/
def P16755899925145324560.Spec : Prop :=
  ∀ n, P16755899925145324560.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P15617848130044940409

`A047218(n+1)+A010679(n)`
-/

namespace A168206.P15617848130044940409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047218 (n + 1) + A010679 n

end

end A168206.P15617848130044940409

namespace A168206

/-- `A047218(n+1)+A010679(n)` -/
def P15617848130044940409.Spec : Prop :=
  ∀ n, P15617848130044940409.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P17184743798050199710

`A168284(n+1)+A010677(n)`
-/

namespace A168206.P17184743798050199710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) + A010677 n

end

end A168206.P17184743798050199710

namespace A168206

/-- `A168284(n+1)+A010677(n)` -/
def P17184743798050199710.Spec : Prop :=
  ∀ n, P17184743798050199710.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P6454622354112020758

`A168321(n+1)+A014601(n)`
-/

namespace A168206.P6454622354112020758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168321 (n + 1) + A014601 n

end

end A168206.P6454622354112020758

namespace A168206

/-- `A168321(n+1)+A014601(n)` -/
def P6454622354112020758.Spec : Prop :=
  ∀ n, P6454622354112020758.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P11198898205506467012

`A168203(n+1)+A030451(n)`
-/

namespace A168206.P11198898205506467012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168203 (n + 1) + A030451 n

end

end A168206.P11198898205506467012

namespace A168206

/-- `A168203(n+1)+A030451(n)` -/
def P11198898205506467012.Spec : Prop :=
  ∀ n, P11198898205506467012.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P8945489363752413621

`A152832(n)+A124356(n+1)`
-/

namespace A168206.P8945489363752413621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 n + A124356 (n + 1)

end

end A168206.P8945489363752413621

namespace A168206

/-- `A152832(n)+A124356(n+1)` -/
def P8945489363752413621.Spec : Prop :=
  ∀ n, P8945489363752413621.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P7981943160909927377

`A008594(n)-A151979(n+1)`
-/

namespace A168206.P7981943160909927377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n - A151979 (n + 1)

end

end A168206.P7981943160909927377

namespace A168206

/-- `A008594(n)-A151979(n+1)` -/
def P7981943160909927377.Spec : Prop :=
  ∀ n, P7981943160909927377.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P6918823864958802974

`A168207(n+1)-A010693(n)`
-/

namespace A168206.P6918823864958802974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168207 (n + 1) - A010693 n

end

end A168206.P6918823864958802974

namespace A168206

/-- `A168207(n+1)-A010693(n)` -/
def P6918823864958802974.Spec : Prop :=
  ∀ n, P6918823864958802974.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P36820829068936996

`A122088(n+1)-A059841(n)`
-/

namespace A168206.P36820829068936996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1) - A059841 n

end

end A168206.P36820829068936996

namespace A168206

/-- `A122088(n+1)-A059841(n)` -/
def P36820829068936996.Spec : Prop :=
  ∀ n, P36820829068936996.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P327754408323185328

`A166521(n+1)-A028242(n)`
-/

namespace A168206.P327754408323185328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1) - A028242 n

end

end A168206.P327754408323185328

namespace A168206

/-- `A166521(n+1)-A028242(n)` -/
def P327754408323185328.Spec : Prop :=
  ∀ n, P327754408323185328.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P17777411018602750606

`A168210(n+1)-A030451(n)`
-/

namespace A168206.P17777411018602750606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168210 (n + 1) - A030451 n

end

end A168206.P17777411018602750606

namespace A168206

/-- `A168210(n+1)-A030451(n)` -/
def P17777411018602750606.Spec : Prop :=
  ∀ n, P17777411018602750606.a n = A168206 (n + 1)

end A168206

/-! ## A168206.P8146892385691684911

`A168410(n+1)-A166519(n)`
-/

namespace A168206.P8146892385691684911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168410 (n + 1) - A166519 n

end

end A168206.P8146892385691684911

namespace A168206

/-- `A168410(n+1)-A166519(n)` -/
def P8146892385691684911.Spec : Prop :=
  ∀ n, P8146892385691684911.a n = A168206 (n + 1)

end A168206

/-!
# A168207: a(n) = 5*n - a(n-1) + 1 with n>1, a(1)=2.

The programs for A168207, the canonical program `A168207.P10832741970449826609` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168207 has offset 1).

The definition of A168207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168207.P17331109567342965190

`ogf((2+12x-9x^2)/(1-x-x^2+x^3))`
-/

namespace A168207.P17331109567342965190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 12, -9] [1, -1, -1, 1] n

end

end A168207.P17331109567342965190

namespace A168207

/-- `ogf((2+12x-9x^2)/(1-x-x^2+x^3))` -/
def P17331109567342965190.Spec : Prop :=
  ∀ n, P17331109567342965190.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P10832741970449826609

`(10*(n+1)+17+19*(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168207

/-- `(10*(n+1)+17+19*(-1)^(n+1))/4` -/
def P10832741970449826609.Spec : Prop :=
  ∀ n, P10832741970449826609.a n = (A168207 (n + 1) : ℚ)

end A168207

/-! ## A168207.P16066694651567998576

`a(n-2)+5` with `a(0)=2, a(1)=14`
-/

namespace A168207.P16066694651567998576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 14] fun n a =>
  a (n - 2) + 5

end

end A168207.P16066694651567998576

namespace A168207

/-- `a(n-2)+5` -/
def P16066694651567998576.Spec : Prop :=
  ∀ n, (P16066694651567998576.a n : ℤ) = A168207 (n + 1)

end A168207

/-! ## A168207.P5953415077995283963

`∑[5-a(n-1)]` with `a(0)=2, a(1)=12`
-/

namespace A168207.P5953415077995283963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 12] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168207.P5953415077995283963

namespace A168207

/-- `∑[5-a(n-1)]` -/
def P5953415077995283963.Spec : Prop :=
  ∀ n, P5953415077995283963.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P15037352449374732382

`5*n-(a(n-1)-11)` with `a(0)=2`
-/

namespace A168207.P15037352449374732382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 11)

end

end A168207.P15037352449374732382

namespace A168207

/-- `5*n-(a(n-1)-11)` -/
def P15037352449374732382.Spec : Prop :=
  ∀ n, P15037352449374732382.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P180786629693823786

`A166520(n+1)+5^(n%2)`
-/

namespace A168207.P180786629693823786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) + (5 ^ (n % 2) : ℤ)

end

end A168207.P180786629693823786

namespace A168207

/-- `A166520(n+1)+5^(n%2)` -/
def P180786629693823786.Spec : Prop :=
  ∀ n, P180786629693823786.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P15291793470094349609

`A047211(n+1)+A010681(n)`
-/

namespace A168207.P15291793470094349609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1) + A010681 n

end

end A168207.P15291793470094349609

namespace A168207

/-- `A047211(n+1)+A010681(n)` -/
def P15291793470094349609.Spec : Prop :=
  ∀ n, P15291793470094349609.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P11840427455686731888

`A047209(n+1)+A010691(n)`
-/

namespace A168207.P11840427455686731888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) + A010691 n

end

end A168207.P11840427455686731888

namespace A168207

/-- `A047209(n+1)+A010691(n)` -/
def P11840427455686731888.Spec : Prop :=
  ∀ n, P11840427455686731888.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P10620092261325140127

`A047208(n+1)+A010700(n)`
-/

namespace A168207.P10620092261325140127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047208 (n + 1) + A010700 n

end

end A168207.P10620092261325140127

namespace A168207

/-- `A047208(n+1)+A010700(n)` -/
def P10620092261325140127.Spec : Prop :=
  ∀ n, P10620092261325140127.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P12585421518904310509

`A122088(n+1)+A010684(n)`
-/

namespace A168207.P12585421518904310509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1) + A010684 n

end

end A168207.P12585421518904310509

namespace A168207

/-- `A122088(n+1)+A010684(n)` -/
def P12585421518904310509.Spec : Prop :=
  ∀ n, P12585421518904310509.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P14633167902630846937

`A166520(n+1)+A010686(n)`
-/

namespace A168207.P14633167902630846937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1) + A010686 n

end

end A168207.P14633167902630846937

namespace A168207

/-- `A166520(n+1)+A010686(n)` -/
def P14633167902630846937.Spec : Prop :=
  ∀ n, P14633167902630846937.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P369278983626001413

`A166539(n+1)+A010677(n)`
-/

namespace A168207.P369278983626001413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) + A010677 n

end

end A168207.P369278983626001413

namespace A168207

/-- `A166539(n+1)+A010677(n)` -/
def P369278983626001413.Spec : Prop :=
  ∀ n, P369278983626001413.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P16622420590319345516

`A168206(n+1)+A010693(n)`
-/

namespace A168207.P16622420590319345516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 1) + A010693 n

end

end A168207.P16622420590319345516

namespace A168207

/-- `A168206(n+1)+A010693(n)` -/
def P16622420590319345516.Spec : Prop :=
  ∀ n, P16622420590319345516.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P3710987979905620189

`A168278(n+1)+A010678(n)`
-/

namespace A168207.P3710987979905620189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168278 (n + 1) + A010678 n

end

end A168207.P3710987979905620189

namespace A168207

/-- `A168278(n+1)+A010678(n)` -/
def P3710987979905620189.Spec : Prop :=
  ∀ n, P3710987979905620189.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P4777694745832219333

`A168282(n+1)+A010689(n)`
-/

namespace A168207.P4777694745832219333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (n + 1) + A010689 n

end

end A168207.P4777694745832219333

namespace A168207

/-- `A168282(n+1)+A010689(n)` -/
def P4777694745832219333.Spec : Prop :=
  ∀ n, P4777694745832219333.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P15797758426405363510

`A168284(n+1)+A010699(n)`
-/

namespace A168207.P15797758426405363510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) + A010699 n

end

end A168207.P15797758426405363510

namespace A168207

/-- `A168284(n+1)+A010699(n)` -/
def P15797758426405363510.Spec : Prop :=
  ∀ n, P15797758426405363510.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P12943360126880134273

`A266327(n)+A047219(n+1)`
-/

namespace A168207.P12943360126880134273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266327 n + A047219 (n + 1)

end

end A168207.P12943360126880134273

namespace A168207

/-- `A266327(n)+A047219(n+1)` -/
def P12943360126880134273.Spec : Prop :=
  ∀ n, P12943360126880134273.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P6556866687687033817

`A122088(n+1)+A010673(n)+1`
-/

namespace A168207.P6556866687687033817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122088 (n + 1) + (A010673 n + 1)

end

end A168207.P6556866687687033817

namespace A168207

/-- `A122088(n+1)+A010673(n)+1` -/
def P6556866687687033817.Spec : Prop :=
  ∀ n, P6556866687687033817.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P8584960346136270752

`A168230(n+1)+A142954(n+1)`
-/

namespace A168207.P8584960346136270752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (n + 1) + A142954 (n + 1)

end

end A168207.P8584960346136270752

namespace A168207

/-- `A168230(n+1)+A142954(n+1)` -/
def P8584960346136270752.Spec : Prop :=
  ∀ n, P8584960346136270752.a n = A168207 (n + 1)

end A168207

/-! ## A168207.P9042151840648561673

`A168210(n+1)+2-A110654(n)`
-/

namespace A168207.P9042151840648561673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168210 (n + 1) + (2 - A110654 n)

end

end A168207.P9042151840648561673

namespace A168207

/-- `A168210(n+1)+2-A110654(n)` -/
def P9042151840648561673.Spec : Prop :=
  ∀ n, P9042151840648561673.a n = A168207 (n + 1)

end A168207

/-!
# A168208: Irregular table of the number of electrons of the n-th element of the PSE in atomic shells, read by rows.

The programs for A168208, there is no canonical definition to state claims against.
-/

/-! ## A168208.P1759271939444525591

`Δ[eq[1, A105153(A059268(n))]]`
-/

namespace A168208.P1759271939444525591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (A059268 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168208.P1759271939444525591

/-! ## A168208.P6122727389429048030

`Δ[eq[1, A024670(A180662(n)+1)%2]]`
-/

namespace A168208.P6122727389429048030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024670 (A180662 n + 1).toNat) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168208.P6122727389429048030

/-! ## A168208.P10124785909443811274

`Δ[lt[A156220(n), 0]]`
-/

namespace A168208.P10124785909443811274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156220 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168208.P10124785909443811274

/-! ## A168208.P17649030817759105644

`Δ[record[n-A100224(n)]]`
-/

namespace A168208.P17649030817759105644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A100224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168208.P17649030817759105644

/-! ## A168208.P13615072752566382424

`Δ[eq[1, A266632(n+1)]]`
-/

namespace A168208.P13615072752566382424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266632 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168208.P13615072752566382424

/-!
# A168209: a(n) = 5*n - a(n-1) + 1 with n>1, a(1)=3.

The programs for A168209, the canonical program `A168209.P6988128330753877386` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168209 has offset 1).

The definition of A168209 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)-a(n-1)+1` (program `A168209.P6988128330753877386`, by `A168209.P6988128330753877386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168209.P7535129136719550569

`ogf((3+5x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168209.P7535129136719550569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, -3] [1, -1, -1, 1] n

end

end A168209.P7535129136719550569

namespace A168209

/-- `ogf((3+5x-3x^2)/(1-x-x^2+x^3))` -/
def P7535129136719550569.Spec : Prop :=
  ∀ n, P7535129136719550569.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P6988128330753877386

`5*(n+1)-a(n-1)+1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168209

/-- `5*(n+1)-a(n-1)+1` -/
def P6988128330753877386.Spec : Prop :=
  ∀ n, P6988128330753877386.a n = A168209 (n + 1)

theorem P6988128330753877386.correct : P6988128330753877386.Spec := by
  intro n
  simp only [A168209, Nat.add_sub_cancel]

end A168209

/-! ## A168209.P16589122215058698177

`(10*(n+1)+7+5*(-1)^(n+1))/4`
-/

namespace A168209.P16589122215058698177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) + 7 : ℤ) + 5 * (-1) ^ (n + 1) : ℚ) / 4

end

end A168209.P16589122215058698177

namespace A168209

/-- `(10*(n+1)+7+5*(-1)^(n+1))/4` -/
def P16589122215058698177.Spec : Prop :=
  ∀ n, P16589122215058698177.a n = (A168209 (n + 1) : ℚ)

theorem P16589122215058698177.correct : P16589122215058698177.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168209, Nat.add_sub_cancel, A168209.P16589122215058698177.a, A168209.P6988128330753877386.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168209, Nat.add_sub_cancel, A168209.P16589122215058698177.a, A168209.P6988128330753877386.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168209

/-! ## A168209.P9439589495949323063

`5+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A168209.P9439589495949323063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  5 + a (n - 2)

end

end A168209.P9439589495949323063

namespace A168209

/-- `5+a(n-2)` -/
def P9439589495949323063.Spec : Prop :=
  ∀ n, (P9439589495949323063.a n : ℤ) = A168209 (n + 1)

end A168209

/-! ## A168209.P12974176363932594612

`∑[5*n%2]+3`
-/

namespace A168209.P12974176363932594612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168209.P12974176363932594612

namespace A168209

/-- `∑[5*n%2]+3` -/
def P12974176363932594612.Spec : Prop :=
  ∀ n, (P12974176363932594612.a n : ℤ) = A168209 (n + 1)

end A168209

/-! ## A168209.P7522964644901457935

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=5, a(2)=0`
-/

namespace A168209.P7522964644901457935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168209.P7522964644901457935

namespace A168209

/-- `∑[abs(a(n-2))]` -/
def P7522964644901457935.Spec : Prop :=
  ∀ n, (P7522964644901457935.a n : ℤ) = A168209 (n + 1)

end A168209

/-! ## A168209.P2784068598209209258

`∑[5-a(n-1)]` with `a(0)=3, a(1)=5`
-/

namespace A168209.P2784068598209209258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168209.P2784068598209209258

namespace A168209

/-- `∑[5-a(n-1)]` -/
def P2784068598209209258.Spec : Prop :=
  ∀ n, P2784068598209209258.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P13884624570807348002

`∑[∑[ogf((3+5x-3x^2)/(1+x))]]`
-/

namespace A168209.P13884624570807348002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168209.P13884624570807348002

namespace A168209

/-- `∑[∑[ogf((3+5x-3x^2)/(1+x))]]` -/
def P13884624570807348002.Spec : Prop :=
  ∀ n, P13884624570807348002.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P13651297375064611439

`round(5*or(1, n+1)/2)`
-/

namespace A168209.P13651297375064611439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((Nat.lor 1 (n + 1) : ℚ) / 2))

end

end A168209.P13651297375064611439

namespace A168209

/-- `round(5*or(1, n+1)/2)` -/
def P13651297375064611439.Spec : Prop :=
  ∀ n, P13651297375064611439.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P401777257886430461

`5*n-(a(n-1)-6)` with `a(0)=3`
-/

namespace A168209.P401777257886430461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 6)

end

end A168209.P401777257886430461

namespace A168209

/-- `5*n-(a(n-1)-6)` -/
def P401777257886430461.Spec : Prop :=
  ∀ n, P401777257886430461.a n = A168209 (n + 1)

theorem P401777257886430461.correct : P401777257886430461.Spec := by
  intro n
  simp only [A168209, Nat.add_sub_cancel, A168209.P401777257886430461.a, A168209.P6988128330753877386.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168209

/-! ## A168209.P18384909221306601263

`A016885(ceil(n/2))`
-/

namespace A168209.P18384909221306601263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 ⌈(n : ℚ) / 2⌉.toNat

end

end A168209.P18384909221306601263

namespace A168209

/-- `A016885(ceil(n/2))` -/
def P18384909221306601263.Spec : Prop :=
  ∀ n, P18384909221306601263.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P10202294955542403306

`∑[A010676(n)]+3`
-/

namespace A168209.P10202294955542403306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168209.P10202294955542403306

namespace A168209

/-- `∑[A010676(n)]+3` -/
def P10202294955542403306.Spec : Prop :=
  ∀ n, P10202294955542403306.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P14545024797179462303

`A168278(n+1)+1`
-/

namespace A168209.P14545024797179462303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168278 (n + 1) + 1

end

end A168209.P14545024797179462303

namespace A168209

/-- `A168278(n+1)+1` -/
def P14545024797179462303.Spec : Prop :=
  ∀ n, P14545024797179462303.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P18409174772665662546

`A168282(n+1)+2`
-/

namespace A168209.P18409174772665662546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (n + 1) + 2

end

end A168209.P18409174772665662546

namespace A168209

/-- `A168282(n+1)+2` -/
def P18409174772665662546.Spec : Prop :=
  ∀ n, P18409174772665662546.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P4252260034964809034

`A168284(n+1)+3`
-/

namespace A168209.P4252260034964809034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) + 3

end

end A168209.P4252260034964809034

namespace A168209

/-- `A168284(n+1)+3` -/
def P4252260034964809034.Spec : Prop :=
  ∀ n, P4252260034964809034.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P6400548308298269196

`5*A080513(n)-2`
-/

namespace A168209.P6400548308298269196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A080513 n - 2

end

end A168209.P6400548308298269196

namespace A168209

/-- `5*A080513(n)-2` -/
def P6400548308298269196.Spec : Prop :=
  ∀ n, P6400548308298269196.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P1822804284289284245

`5*A110654(n)+3`
-/

namespace A168209.P1822804284289284245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A110654 n + 3

end

end A168209.P1822804284289284245

namespace A168209

/-- `5*A110654(n)+3` -/
def P1822804284289284245.Spec : Prop :=
  ∀ n, P1822804284289284245.a n = A168209 (n + 1)

end A168209

/-! ## A168209.P14808783252616061295

`A168420(n+1)/2+1`
-/

namespace A168209.P14808783252616061295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168420 (n + 1) : ℚ) / 2 + 1

end

end A168209.P14808783252616061295

namespace A168209

/-- `A168420(n+1)/2+1` -/
def P14808783252616061295.Spec : Prop :=
  ∀ n, P14808783252616061295.a n = (A168209 (n + 1) : ℚ)

end A168209

/-! ## A168209.P14339593543286530527

`A168457(n+1)/2+2`
-/

namespace A168209.P14339593543286530527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168457 (n + 1) : ℚ) / 2 + 2

end

end A168209.P14339593543286530527

namespace A168209

/-- `A168457(n+1)/2+2` -/
def P14339593543286530527.Spec : Prop :=
  ∀ n, P14339593543286530527.a n = (A168209 (n + 1) : ℚ)

end A168209

/-! ## A168209.P7481508140649757089

`A168461(n+1)/2+3`
-/

namespace A168209.P7481508140649757089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168461 (n + 1) : ℚ) / 2 + 3

end

end A168209.P7481508140649757089

namespace A168209

/-- `A168461(n+1)/2+3` -/
def P7481508140649757089.Spec : Prop :=
  ∀ n, P7481508140649757089.a n = (A168209 (n + 1) : ℚ)

end A168209

/-!
# A168210: a(n) = 6*n - a(n-1) + 1 with n>1, a(1)=0.

The programs for A168210, the canonical program `A168210.P8351528222477707403` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168210 has offset 1).

The definition of A168210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)-a(n-1)+1` (program `A168210.P8351528222477707403`, by `A168210.P8351528222477707403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168210.P16272759396583241992

`ogf((13x-7x^2)/(1-x-x^2+x^3))`
-/

namespace A168210.P16272759396583241992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, -7] [1, -1, -1, 1] n

end

end A168210.P16272759396583241992

namespace A168210

/-- `ogf((13x-7x^2)/(1-x-x^2+x^3))` -/
def P16272759396583241992.Spec : Prop :=
  ∀ n, P16272759396583241992.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P8351528222477707403

`6*(n+1)-a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168210

/-- `6*(n+1)-a(n-1)+1` -/
def P8351528222477707403.Spec : Prop :=
  ∀ n, P8351528222477707403.a n = A168210 (n + 1)

theorem P8351528222477707403.correct : P8351528222477707403.Spec := by
  intro n
  simp only [A168210, Nat.add_sub_cancel]

end A168210

/-! ## A168210.P17116783066908381962

`3*(n+1)+2+5*(-1)^(n+1)`
-/

namespace A168210.P17116783066908381962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) + 2 : ℤ) + 5 * (-1) ^ (n + 1)

end

end A168210.P17116783066908381962

namespace A168210

/-- `3*(n+1)+2+5*(-1)^(n+1)` -/
def P17116783066908381962.Spec : Prop :=
  ∀ n, P17116783066908381962.a n = A168210 (n + 1)

theorem P17116783066908381962.correct : P17116783066908381962.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168210, Nat.add_sub_cancel, A168210.P17116783066908381962.a, A168210.P8351528222477707403.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168210, Nat.add_sub_cancel, A168210.P17116783066908381962.a, A168210.P8351528222477707403.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168210

/-! ## A168210.P3910538045047795746

`a(n-2)+6` with `a(0)=0, a(1)=13`
-/

namespace A168210.P3910538045047795746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n a =>
  a (n - 2) + 6

end

end A168210.P3910538045047795746

namespace A168210

/-- `a(n-2)+6` -/
def P3910538045047795746.Spec : Prop :=
  ∀ n, (P3910538045047795746.a n : ℤ) = A168210 (n + 1)

end A168210

/-! ## A168210.P1555865666593048225

`∑[6-a(n-1)]` with `a(0)=0, a(1)=13`
-/

namespace A168210.P1555865666593048225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168210.P1555865666593048225

namespace A168210

/-- `∑[6-a(n-1)]` -/
def P1555865666593048225.Spec : Prop :=
  ∀ n, P1555865666593048225.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P12474405410183033333

`5*xor(1, n+1)-2*n`
-/

namespace A168210.P12474405410183033333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 (n + 1) : ℤ) - (2 * n : ℤ)

end

end A168210.P12474405410183033333

namespace A168210

/-- `5*xor(1, n+1)-2*n` -/
def P12474405410183033333.Spec : Prop :=
  ∀ n, P12474405410183033333.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P5704792468264372010

`7-(a(n-1)-6*n)` with `a(0)=0`
-/

namespace A168210.P5704792468264372010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 - (a (n - 1) - (6 * n : ℤ))

end

end A168210.P5704792468264372010

namespace A168210

/-- `7-(a(n-1)-6*n)` -/
def P5704792468264372010.Spec : Prop :=
  ∀ n, P5704792468264372010.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P2157406003249042353

`A047225(A010686(n)+n)`
-/

namespace A168210.P2157406003249042353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (A010686 n + (n : ℤ)).toNat

end

end A168210.P2157406003249042353

namespace A168210

/-- `A047225(A010686(n)+n)` -/
def P2157406003249042353.Spec : Prop :=
  ∀ n, P2157406003249042353.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P4497021843835362602

`A047225(A176260(n+1)+n)`
-/

namespace A168210.P4497021843835362602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (A176260 (n + 1) + (n : ℤ)).toNat

end

end A168210.P4497021843835362602

namespace A168210

/-- `A047225(A176260(n+1)+n)` -/
def P4497021843835362602.Spec : Prop :=
  ∀ n, P4497021843835362602.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P16967095676873668225

`A047225(Δ[A047225(n+1)]+n)`
-/

namespace A168210.P16967095676873668225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047225 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A168210.P16967095676873668225

namespace A168210

/-- `A047225(Δ[A047225(n+1)]+n)` -/
def P16967095676873668225.Spec : Prop :=
  ∀ n, P16967095676873668225.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P7187793507104328998

`A032766(A168203(n+1))`
-/

namespace A168210.P7187793507104328998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A168203 (n + 1)).toNat

end

end A168210.P7187793507104328998

namespace A168210

/-- `A032766(A168203(n+1))` -/
def P7187793507104328998.Spec : Prop :=
  ∀ n, P7187793507104328998.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P16682995823356294827

`A168195(A168381(n+1)-n)`
-/

namespace A168210.P16682995823356294827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168195 (A168381 (n + 1) - (n : ℤ)).toNat

end

end A168210.P16682995823356294827

namespace A168210

/-- `A168195(A168381(n+1)-n)` -/
def P16682995823356294827.Spec : Prop :=
  ∀ n, P16682995823356294827.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P5870808311044197950

`A168195(A120634(2*n)+n+2)`
-/

namespace A168210.P5870808311044197950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168195 (A120634 (2 * n) + (n + 2 : ℤ)).toNat

end

end A168210.P5870808311044197950

namespace A168210

/-- `A168195(A120634(2*n)+n+2)` -/
def P5870808311044197950.Spec : Prop :=
  ∀ n, P5870808311044197950.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P10243465529496352793

`A061800(A086970(A124356(n+1))-(n+2))`
-/

namespace A168210.P10243465529496352793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A086970 (A124356 (n + 1)).toNat - (n + 2 : ℤ)).toNat

end

end A168210.P10243465529496352793

namespace A168210

/-- `A061800(A086970(A124356(n+1))-(n+2))` -/
def P10243465529496352793.Spec : Prop :=
  ∀ n, P10243465529496352793.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P7542891006391819363

`A004442(A120634(A120634(2*n))+n+1)`
-/

namespace A168210.P7542891006391819363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A120634 (A120634 (2 * n)).toNat + (n + 1 : ℤ)).toNat

end

end A168210.P7542891006391819363

namespace A168210

/-- `A004442(A120634(A120634(2*n))+n+1)` -/
def P7542891006391819363.Spec : Prop :=
  ∀ n, P7542891006391819363.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P450371097823457347

`A165754(A014681(A165754(2*n+n+3)))`
-/

namespace A168210.P450371097823457347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A014681 (A165754 (2 * n + (n + 3))).toNat).toNat

end

end A168210.P450371097823457347

namespace A168210

/-- `A165754(A014681(A165754(2*n+n+3)))` -/
def P450371097823457347.Spec : Prop :=
  ∀ n, P450371097823457347.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P11224500324717584436

`A145569(A168211(n+1))`
-/

namespace A168210.P11224500324717584436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A168211 (n + 1)).toNat

end

end A168210.P11224500324717584436

namespace A168210

/-- `A145569(A168211(n+1))` -/
def P11224500324717584436.Spec : Prop :=
  ∀ n, P11224500324717584436.a n = A168210 (n + 1)

end A168210

/-! ## A168210.P16824649850833439722

`A030451(2*A168206(n+1)+n)`
-/

namespace A168210.P16824649850833439722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (2 * A168206 (n + 1) + (n : ℤ)).toNat

end

end A168210.P16824649850833439722

namespace A168210

/-- `A030451(2*A168206(n+1)+n)` -/
def P16824649850833439722.Spec : Prop :=
  ∀ n, P16824649850833439722.a n = A168210 (n + 1)

end A168210

/-!
# A168211: a(n) = (9 + 14*n + 23*(-1)^n)/4.

The programs for A168211, the canonical program `A168211.P12699051763274155696` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168211 has offset 1).

The definition of A168211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9+14*(n+1)+23*(-1)^(n+1))/4` (program `A168211.P3943872810995013231`, by `A168211.P3943872810995013231.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168211.P5987053106988784978

`ogf((15x-8x^2)/(1-x-x^2+x^3))`
-/

namespace A168211.P5987053106988784978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15, -8] [1, -1, -1, 1] n

end

end A168211.P5987053106988784978

namespace A168211

/-- `ogf((15x-8x^2)/(1-x-x^2+x^3))` -/
def P5987053106988784978.Spec : Prop :=
  ∀ n, P5987053106988784978.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P12699051763274155696

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=15, a(2)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168211

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P12699051763274155696.Spec : Prop :=
  ∀ n, P12699051763274155696.a n = A168211 (n + 1)

theorem P12699051763274155696.correct : P12699051763274155696.Spec := by
  intro n
  simp only [A168211, Nat.add_sub_cancel]

end A168211

/-! ## A168211.P3943872810995013231

`(9+14*(n+1)+23*(-1)^(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168211.P3943872810995013231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 + 14 * (n + 1) : ℤ) + 23 * (-1) ^ (n + 1) : ℚ) / 4

end

end A168211.P3943872810995013231

namespace A168211

/-- `(9+14*(n+1)+23*(-1)^(n+1))/4` -/
def P3943872810995013231.Spec : Prop :=
  ∀ n, P3943872810995013231.a n = (A168211 (n + 1) : ℚ)

theorem P3943872810995013231.correct : P3943872810995013231.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A168211, Nat.add_sub_cancel, A168211.P3943872810995013231.a, A168211.P12699051763274155696.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A168211, Nat.add_sub_cancel, A168211.P3943872810995013231.a, A168211.P12699051763274155696.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168211

/-! ## A168211.P16973841967859360547

`a(n-2)+7` with `a(0)=0, a(1)=15`
-/

namespace A168211.P16973841967859360547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n a =>
  a (n - 2) + 7

end

end A168211.P16973841967859360547

namespace A168211

/-- `a(n-2)+7` -/
def P16973841967859360547.Spec : Prop :=
  ∀ n, (P16973841967859360547.a n : ℤ) = A168211 (n + 1)

end A168211

/-! ## A168211.P5036627202329803325

`∑[7-a(n-1)]` with `a(0)=0, a(1)=15`
-/

namespace A168211.P5036627202329803325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168211.P5036627202329803325

namespace A168211

/-- `∑[7-a(n-1)]` -/
def P5036627202329803325.Spec : Prop :=
  ∀ n, P5036627202329803325.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P14645434327591231939

`7*n-(a(n-1)-8)` with `a(0)=0`
-/

namespace A168211.P14645434327591231939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 8)

end

end A168211.P14645434327591231939

namespace A168211

/-- `7*n-(a(n-1)-8)` -/
def P14645434327591231939.Spec : Prop :=
  ∀ n, P14645434327591231939.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P4542550436345597698

`∑[7*n%2]+8*n%2`
-/

namespace A168211.P4542550436345597698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * (n % 2)

end

end A168211.P4542550436345597698

namespace A168211

/-- `∑[7*n%2]+8*n%2` -/
def P4542550436345597698.Spec : Prop :=
  ∀ n, (P4542550436345597698.a n : ℤ) = A168211 (n + 1)

end A168211

/-! ## A168211.P1371608179391119004

`A166524(n+1)-(n+1)`
-/

namespace A168211.P1371608179391119004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1) - (n + 1 : ℤ)

end

end A168211.P1371608179391119004

namespace A168211

/-- `A166524(n+1)-(n+1)` -/
def P1371608179391119004.Spec : Prop :=
  ∀ n, P1371608179391119004.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P17698416529504971185

`A056081(n+1)-(10*n+1)`
-/

namespace A168211.P17698416529504971185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056081 (n + 1) - (10 * n + 1 : ℤ)

end

end A168211.P17698416529504971185

namespace A168211

/-- `A056081(n+1)-(10*n+1)` -/
def P17698416529504971185.Spec : Prop :=
  ∀ n, P17698416529504971185.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P1822035115900849808

`A047382(n+1)+A010681(n)`
-/

namespace A168211.P1822035115900849808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) + A010681 n

end

end A168211.P1822035115900849808

namespace A168211

/-- `A047382(n+1)+A010681(n)` -/
def P1822035115900849808.Spec : Prop :=
  ∀ n, P1822035115900849808.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P1057904472400461181

`A168374(n+1)+A010679(n)`
-/

namespace A168211.P1057904472400461181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + A010679 n

end

end A168211.P1057904472400461181

namespace A168211

/-- `A168374(n+1)+A010679(n)` -/
def P1057904472400461181.Spec : Prop :=
  ∀ n, P1057904472400461181.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P4364315208047810029

`A168210(n+1)+A030451(n)`
-/

namespace A168211.P4364315208047810029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168210 (n + 1) + A030451 n

end

end A168211.P4364315208047810029

namespace A168211

/-- `A168210(n+1)+A030451(n)` -/
def P4364315208047810029.Spec : Prop :=
  ∀ n, P4364315208047810029.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P4494836958230243676

`A166523(n+1)-A028242(n)`
-/

namespace A168211.P4494836958230243676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166523 (n + 1) - A028242 n

end

end A168211.P4494836958230243676

namespace A168211

/-- `A166523(n+1)-A028242(n)` -/
def P4494836958230243676.Spec : Prop :=
  ∀ n, P4494836958230243676.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P8720515482906263887

`A113541(n+1)-A146512(n+1)`
-/

namespace A168211.P8720515482906263887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113541 (n + 1) - A146512 (n + 1)

end

end A168211.P8720515482906263887

namespace A168211

/-- `A113541(n+1)-A146512(n+1)` -/
def P8720515482906263887.Spec : Prop :=
  ∀ n, P8720515482906263887.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P12831165221863831525

`A166525(n+1)-A168233(n+1)`
-/

namespace A168211.P12831165221863831525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (n + 1) - A168233 (n + 1)

end

end A168211.P12831165221863831525

namespace A168211

/-- `A166525(n+1)-A168233(n+1)` -/
def P12831165221863831525.Spec : Prop :=
  ∀ n, P12831165221863831525.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P7204079587749667220

`A168206(n+1)+2*A030451(n)`
-/

namespace A168211.P7204079587749667220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168206 (n + 1) + 2 * A030451 n

end

end A168211.P7204079587749667220

namespace A168211

/-- `A168206(n+1)+2*A030451(n)` -/
def P7204079587749667220.Spec : Prop :=
  ∀ n, P7204079587749667220.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P2760461397359087108

`A047355(n+1)+4*A010674(n)`
-/

namespace A168211.P2760461397359087108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + 4 * A010674 n

end

end A168211.P2760461397359087108

namespace A168211

/-- `A047355(n+1)+4*A010674(n)` -/
def P2760461397359087108.Spec : Prop :=
  ∀ n, P2760461397359087108.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P5133621404651226223

`A168198(n+1)+A168198(n+1)+A152832(n)`
-/

namespace A168211.P5133621404651226223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (n + 1) + (A168198 (n + 1) + A152832 n)

end

end A168211.P5133621404651226223

namespace A168211

/-- `A168198(n+1)+A168198(n+1)+A152832(n)` -/
def P5133621404651226223.Spec : Prop :=
  ∀ n, P5133621404651226223.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P5693119670094649458

`A168210(n+1)+A028242(n+1)`
-/

namespace A168211.P5693119670094649458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168210 (n + 1) + A028242 (n + 1)

end

end A168211.P5693119670094649458

namespace A168211

/-- `A168210(n+1)+A028242(n+1)` -/
def P5693119670094649458.Spec : Prop :=
  ∀ n, P5693119670094649458.a n = A168211 (n + 1)

end A168211

/-! ## A168211.P13625685263633909281

`A056020(A014681(n+2))-(n+1)`
-/

namespace A168211.P13625685263633909281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A014681 (n + 2)).toNat - (n + 1 : ℤ)

end

end A168211.P13625685263633909281

namespace A168211

/-- `A056020(A014681(n+2))-(n+1)` -/
def P13625685263633909281.Spec : Prop :=
  ∀ n, P13625685263633909281.a n = A168211 (n + 1)

end A168211

/-!
# A168212: a(n) = 7*n - a(n-1) + 1 with n>1, a(1)=4.

The programs for A168212, the canonical program `A168212.P11676549062035836864` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168212 has offset 1).

The definition of A168212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)-a(n-1)+1` (program `A168212.P11676549062035836864`, by `A168212.P11676549062035836864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168212.P6364650274863423692

`ogf((4+7x-4x^2)/(1-x-x^2+x^3))`
-/

namespace A168212.P6364650274863423692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, -4] [1, -1, -1, 1] n

end

end A168212.P6364650274863423692

namespace A168212

/-- `ogf((4+7x-4x^2)/(1-x-x^2+x^3))` -/
def P6364650274863423692.Spec : Prop :=
  ∀ n, P6364650274863423692.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P11676549062035836864

`7*(n+1)-a(n-1)+1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168212

/-- `7*(n+1)-a(n-1)+1` -/
def P11676549062035836864.Spec : Prop :=
  ∀ n, P11676549062035836864.a n = A168212 (n + 1)

theorem P11676549062035836864.correct : P11676549062035836864.Spec := by
  intro n
  simp only [A168212, Nat.add_sub_cancel]

end A168212

/-! ## A168212.P1391393219768795754

`(9+14*(n+1)+7*(-1)^(n+1))/4`
-/

namespace A168212.P1391393219768795754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 + 14 * (n + 1) : ℤ) + 7 * (-1) ^ (n + 1) : ℚ) / 4

end

end A168212.P1391393219768795754

namespace A168212

/-- `(9+14*(n+1)+7*(-1)^(n+1))/4` -/
def P1391393219768795754.Spec : Prop :=
  ∀ n, P1391393219768795754.a n = (A168212 (n + 1) : ℚ)

theorem P1391393219768795754.correct : P1391393219768795754.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168212, Nat.add_sub_cancel, A168212.P1391393219768795754.a, A168212.P11676549062035836864.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168212, Nat.add_sub_cancel, A168212.P1391393219768795754.a, A168212.P11676549062035836864.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168212

/-! ## A168212.P8666004971656032057

`a(n-2)+7` with `a(0)=4, a(1)=11`
-/

namespace A168212.P8666004971656032057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 11] fun n a =>
  a (n - 2) + 7

end

end A168212.P8666004971656032057

namespace A168212

/-- `a(n-2)+7` -/
def P8666004971656032057.Spec : Prop :=
  ∀ n, (P8666004971656032057.a n : ℤ) = A168212 (n + 1)

end A168212

/-! ## A168212.P6082896236784455271

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=7, a(2)=0`
-/

namespace A168212.P6082896236784455271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168212.P6082896236784455271

namespace A168212

/-- `∑[abs(a(n-2))]` -/
def P6082896236784455271.Spec : Prop :=
  ∀ n, (P6082896236784455271.a n : ℤ) = A168212 (n + 1)

end A168212

/-! ## A168212.P1482644151517115806

`∑[7-a(n-1)]` with `a(0)=4, a(1)=7`
-/

namespace A168212.P1482644151517115806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 7] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168212.P1482644151517115806

namespace A168212

/-- `∑[7-a(n-1)]` -/
def P1482644151517115806.Spec : Prop :=
  ∀ n, P1482644151517115806.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P2022314967231201326

`∑[∑[ogf((4+7x-4x^2)/(1+x))]]`
-/

namespace A168212.P2022314967231201326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168212.P2022314967231201326

namespace A168212

/-- `∑[∑[ogf((4+7x-4x^2)/(1+x))]]` -/
def P2022314967231201326.Spec : Prop :=
  ∀ n, P2022314967231201326.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P43380752489471528

`7*n-(a(n-1)-8)` with `a(0)=4`
-/

namespace A168212.P43380752489471528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (7 * n : ℤ) - (a (n - 1) - 8)

end

end A168212.P43380752489471528

namespace A168212

/-- `7*n-(a(n-1)-8)` -/
def P43380752489471528.Spec : Prop :=
  ∀ n, P43380752489471528.a n = A168212 (n + 1)

theorem P43380752489471528.correct : P43380752489471528.Spec := by
  intro n
  simp only [A168212, Nat.add_sub_cancel, A168212.P43380752489471528.a, A168212.P11676549062035836864.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168212

/-! ## A168212.P7365651346403483100

`record[(n+3)/dr((2*n+1)²)]-(n-1)`
-/

namespace A168212.P7365651346403483100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (SequenceMachineLib.digitalRoot ((2 * n + 1) ^ 2 : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1 : ℚ)

end

end A168212.P7365651346403483100

namespace A168212

/-- `record[(n+3)/dr((2*n+1)²)]-(n-1)` -/
def P7365651346403483100.Spec : Prop :=
  ∀ n, P7365651346403483100.a n = (A168212 (n + 1) : ℚ)

end A168212

/-! ## A168212.P8888213734458844371

`A017029(ceil(n/2))`
-/

namespace A168212.P8888213734458844371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 ⌈(n : ℚ) / 2⌉.toNat

end

end A168212.P8888213734458844371

namespace A168212

/-- `A017029(ceil(n/2))` -/
def P8888213734458844371.Spec : Prop :=
  ∀ n, P8888213734458844371.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P1734200166787378850

`∑[A010678(n)]+4`
-/

namespace A168212.P1734200166787378850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A168212.P1734200166787378850

namespace A168212

/-- `∑[A010678(n)]+4` -/
def P1734200166787378850.Spec : Prop :=
  ∀ n, P1734200166787378850.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P2796701324043410654

`A168331(n+1)+1`
-/

namespace A168212.P2796701324043410654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (n + 1) + 1

end

end A168212.P2796701324043410654

namespace A168212

/-- `A168331(n+1)+1` -/
def P2796701324043410654.Spec : Prop :=
  ∀ n, P2796701324043410654.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P9116683567289845994

`A168333(n+1)+2`
-/

namespace A168212.P9116683567289845994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (n + 1) + 2

end

end A168212.P9116683567289845994

namespace A168212

/-- `A168333(n+1)+2` -/
def P9116683567289845994.Spec : Prop :=
  ∀ n, P9116683567289845994.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P9447636270207378607

`A168337(n+1)+3`
-/

namespace A168212.P9447636270207378607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) + 3

end

end A168212.P9447636270207378607

namespace A168212

/-- `A168337(n+1)+3` -/
def P9447636270207378607.Spec : Prop :=
  ∀ n, P9447636270207378607.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P2342533765977020704

`A168374(n+1)+4`
-/

namespace A168212.P2342533765977020704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) + 4

end

end A168212.P2342533765977020704

namespace A168212

/-- `A168374(n+1)+4` -/
def P2342533765977020704.Spec : Prop :=
  ∀ n, P2342533765977020704.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P4093040762582010727

`A166539(n+1)+2+n`
-/

namespace A168212.P4093040762582010727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) + 2 + (n : ℤ)

end

end A168212.P4093040762582010727

namespace A168212

/-- `A166539(n+1)+2+n` -/
def P4093040762582010727.Spec : Prop :=
  ∀ n, P4093040762582010727.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P15330909012147620164

`A274406(n+1)+4-n`
-/

namespace A168212.P15330909012147620164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) + (4 - (n : ℤ))

end

end A168212.P15330909012147620164

namespace A168212

/-- `A274406(n+1)+4-n` -/
def P15330909012147620164.Spec : Prop :=
  ∀ n, P15330909012147620164.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P12846517110117935972

`Δ[A195043(n)-(2-n)²]`
-/

namespace A168212.P12846517110117935972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195043 n - (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168212.P12846517110117935972

namespace A168212

/-- `Δ[A195043(n)-(2-n)²]` -/
def P12846517110117935972.Spec : Prop :=
  ∀ n, P12846517110117935972.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P11621207804299653593

`A047288(n+1)+A010676(n)`
-/

namespace A168212.P11621207804299653593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047288 (n + 1) + A010676 n

end

end A168212.P11621207804299653593

namespace A168212

/-- `A047288(n+1)+A010676(n)` -/
def P11621207804299653593.Spec : Prop :=
  ∀ n, P11621207804299653593.a n = A168212 (n + 1)

end A168212

/-! ## A168212.P628231248306369119

`A047280(n+1)+A010686(n)`
-/

namespace A168212.P628231248306369119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1) + A010686 n

end

end A168212.P628231248306369119

namespace A168212

/-- `A047280(n+1)+A010686(n)` -/
def P628231248306369119.Spec : Prop :=
  ∀ n, P628231248306369119.a n = A168212 (n + 1)

end A168212

/-!
# A168213: a(n) = (11 + 18*n + 9*(-1)^n)/4.

The programs for A168213, the canonical program `A168213.P11570655118687730077` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168213 has offset 1).

The definition of A168213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11+18*(n+1)+9*(-1)^(n+1))/4` (program `A168213.P409983194819528997`, by `A168213.P409983194819528997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168213.P16002753715903258618

`ogf((5+9x-5x^2)/(1-x-x^2+x^3))`
-/

namespace A168213.P16002753715903258618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 9, -5] [1, -1, -1, 1] n

end

end A168213.P16002753715903258618

namespace A168213

/-- `ogf((5+9x-5x^2)/(1-x-x^2+x^3))` -/
def P16002753715903258618.Spec : Prop :=
  ∀ n, P16002753715903258618.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P11570655118687730077

`9*(n+1)-a(n-1)+1` with `a(0)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168213

/-- `9*(n+1)-a(n-1)+1` -/
def P11570655118687730077.Spec : Prop :=
  ∀ n, P11570655118687730077.a n = A168213 (n + 1)

theorem P11570655118687730077.correct : P11570655118687730077.Spec := by
  intro n
  simp only [A168213, Nat.add_sub_cancel]

end A168213

/-! ## A168213.P409983194819528997

`(11+18*(n+1)+9*(-1)^(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168213.P409983194819528997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 + 18 * (n + 1) : ℤ) + 9 * (-1) ^ (n + 1) : ℚ) / 4

end

end A168213.P409983194819528997

namespace A168213

/-- `(11+18*(n+1)+9*(-1)^(n+1))/4` -/
def P409983194819528997.Spec : Prop :=
  ∀ n, P409983194819528997.a n = (A168213 (n + 1) : ℚ)

theorem P409983194819528997.correct : P409983194819528997.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168213, Nat.add_sub_cancel, A168213.P409983194819528997.a, A168213.P11570655118687730077.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168213, Nat.add_sub_cancel, A168213.P409983194819528997.a, A168213.P11570655118687730077.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168213

/-! ## A168213.P13916108558737705155

`9+a(n-2)` with `a(0)=5, a(1)=14`
-/

namespace A168213.P13916108558737705155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 14] fun n a =>
  9 + a (n - 2)

end

end A168213.P13916108558737705155

namespace A168213

/-- `9+a(n-2)` -/
def P13916108558737705155.Spec : Prop :=
  ∀ n, (P13916108558737705155.a n : ℤ) = A168213 (n + 1)

end A168213

/-! ## A168213.P1306035233687848265

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=9, a(2)=0`
-/

namespace A168213.P1306035233687848265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168213.P1306035233687848265

namespace A168213

/-- `∑[abs(a(n-2))]` -/
def P1306035233687848265.Spec : Prop :=
  ∀ n, (P1306035233687848265.a n : ℤ) = A168213 (n + 1)

end A168213

/-! ## A168213.P11808141778053307970

`∑[9-a(n-1)]` with `a(0)=5, a(1)=9`
-/

namespace A168213.P11808141778053307970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168213.P11808141778053307970

namespace A168213

/-- `∑[9-a(n-1)]` -/
def P11808141778053307970.Spec : Prop :=
  ∀ n, P11808141778053307970.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P8780806881673314867

`∑[∑[ogf((5+9x-5x^2)/(1+x))]]`
-/

namespace A168213.P8780806881673314867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 9, -5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168213.P8780806881673314867

namespace A168213

/-- `∑[∑[ogf((5+9x-5x^2)/(1+x))]]` -/
def P8780806881673314867.Spec : Prop :=
  ∀ n, P8780806881673314867.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P6534717880226941857

`A017221(ceil(n/2))`
-/

namespace A168213.P6534717880226941857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 ⌈(n : ℚ) / 2⌉.toNat

end

end A168213.P6534717880226941857

namespace A168213

/-- `A017221(ceil(n/2))` -/
def P6534717880226941857.Spec : Prop :=
  ∀ n, P6534717880226941857.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P700388883890904439

`∑[10-A040029(n)]`
-/

namespace A168213.P700388883890904439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A040029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168213.P700388883890904439

namespace A168213

/-- `∑[10-A040029(n)]` -/
def P700388883890904439.Spec : Prop :=
  ∀ n, P700388883890904439.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P12949150773650874922

`A168401(n+1)+1`
-/

namespace A168213.P12949150773650874922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168401 (n + 1) + 1

end

end A168213.P12949150773650874922

namespace A168213

/-- `A168401(n+1)+1` -/
def P12949150773650874922.Spec : Prop :=
  ∀ n, P12949150773650874922.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P2777842624215847752

`A168410(n+1)+2`
-/

namespace A168213.P2777842624215847752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168410 (n + 1) + 2

end

end A168213.P2777842624215847752

namespace A168213

/-- `A168410(n+1)+2` -/
def P2777842624215847752.Spec : Prop :=
  ∀ n, P2777842624215847752.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P15586246020715378994

`A168413(n+1)+3`
-/

namespace A168213.P15586246020715378994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (n + 1) + 3

end

end A168213.P15586246020715378994

namespace A168213

/-- `A168413(n+1)+3` -/
def P15586246020715378994.Spec : Prop :=
  ∀ n, P15586246020715378994.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P8134505867057606208

`A168416(n+1)+4`
-/

namespace A168213.P8134505867057606208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168416 (n + 1) + 4

end

end A168213.P8134505867057606208

namespace A168213

/-- `A168416(n+1)+4` -/
def P8134505867057606208.Spec : Prop :=
  ∀ n, P8134505867057606208.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P9823329617553561902

`A168419(n+1)+5`
-/

namespace A168213.P9823329617553561902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (n + 1) + 5

end

end A168213.P9823329617553561902

namespace A168213

/-- `A168419(n+1)+5` -/
def P9823329617553561902.Spec : Prop :=
  ∀ n, P9823329617553561902.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P3757999121466113917

`∑[A036483(a(n-1))]` with `a(0)=5`
-/

namespace A168213.P3757999121466113917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A036483 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168213.P3757999121466113917

namespace A168213

/-- `∑[A036483(a(n-1))]` -/
def P3757999121466113917.Spec : Prop :=
  ∀ n, P3757999121466113917.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P14966636881331163859

`3*A168199(n+1)-1`
-/

namespace A168213.P14966636881331163859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168199 (n + 1) - 1

end

end A168213.P14966636881331163859

namespace A168213

/-- `3*A168199(n+1)-1` -/
def P14966636881331163859.Spec : Prop :=
  ∀ n, P14966636881331163859.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P3987949005129169064

`3*A168233(n+1)+2`
-/

namespace A168213.P3987949005129169064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168233 (n + 1) + 2

end

end A168213.P3987949005129169064

namespace A168213

/-- `3*A168233(n+1)+2` -/
def P3987949005129169064.Spec : Prop :=
  ∀ n, P3987949005129169064.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P7597371556909434357

`A269100(n)-A212161(n)`
-/

namespace A168213.P7597371556909434357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n - A212161 n

end

end A168213.P7597371556909434357

namespace A168213

/-- `A269100(n)-A212161(n)` -/
def P7597371556909434357.Spec : Prop :=
  ∀ n, P7597371556909434357.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P15218235987808858343

`A014682(3*A109613(n+1))`
-/

namespace A168213.P15218235987808858343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (3 * A109613 (n + 1)).toNat

end

end A168213.P15218235987808858343

namespace A168213

/-- `A014682(3*A109613(n+1))` -/
def P15218235987808858343.Spec : Prop :=
  ∀ n, P15218235987808858343.a n = A168213 (n + 1)

end A168213

/-! ## A168213.P11691976302719476771

`A016051(n+1)+A010698(n)`
-/

namespace A168213.P11691976302719476771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1) + A010698 n

end

end A168213.P11691976302719476771

namespace A168213

/-- `A016051(n+1)+A010698(n)` -/
def P11691976302719476771.Spec : Prop :=
  ∀ n, P11691976302719476771.a n = A168213 (n + 1)

end A168213

/-!
# A168214: Least k such that Sum_{i=n..k} 1/i >= n.

The programs for A168214, there is no canonical definition to state claims against.
-/

/-! ## A168214.P6462004005652441625

`A090735(A001787(2*n+1))+A040977(n)`
-/

namespace A168214.P6462004005652441625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A001787 (2 * n + 1)).toNat + A040977 n

end

end A168214.P6462004005652441625

/-!
# A168216: Riordan array (1/(1-x),xc(x)/(1-xc(x))) where c(x)is the g.f. of A000108.It factorizes as A007318*A106566.

The programs for A168216, there is no canonical definition to state claims against.
-/

/-! ## A168216.P8129861390876166542

`abs(A091698(n))`
-/

namespace A168216.P8129861390876166542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091698 n|

end

end A168216.P8129861390876166542

/-! ## A168216.P1183375620397554109

`lcm((-1)^n, A091698(char[1]+n))`
-/

namespace A168216.P1183375620397554109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A091698 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A168216.P1183375620397554109

/-! ## A168216.P6022044250125626305

`A091698(n)*A097807(n)`
-/

namespace A168216.P6022044250125626305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091698 n * A097807 n

end

end A168216.P6022044250125626305

/-! ## A168216.P13880712914572038047

`gcd(A000038(n), A091698(n))`
-/

namespace A168216.P13880712914572038047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A091698 n)

end

end A168216.P13880712914572038047

/-! ## A168216.P1073490691822270298

`lcm(A020985(n)*A091698(n), A020985(n))`
-/

namespace A168216.P1073490691822270298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A091698 n) (A020985 n)

end

end A168216.P1073490691822270298

/-! ## A168216.P9318239806303147333

`∑{d}[A091698(n), A000010(#)]`
-/

namespace A168216.P9318239806303147333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A168216.P9318239806303147333

/-!
# A168217: A triangular sequence based on the first level sum of polynomial coefficients: p(x,n,m)=(1 - x)^(n + m + 1)*Sum[k^(n - 1)*(1 - k)^(m - 1)*x^k, {k, 0, Infinity}]/4.

The programs for A168217, there is no canonical definition to state claims against.
-/

/-! ## A168217.P5247438512409436541

`A101312(A223282(n+1))*A308497(2*(n+2))`
-/

namespace A168217.P5247438512409436541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101312 ((A223282 (n + 1)).toNat + 1901) * A308497 (2 * (n + 2))

end

end A168217.P5247438512409436541

/-!
# A168219: Naturals n for which 1 + 10*n^3 (A168147) is prime.

The programs for A168219, there is no canonical definition to state claims against.
-/

/-! ## A168219.P3314309100615563874

`eq[1, ∑{e}[10*n^3+1, #]]`
-/

namespace A168219.P3314309100615563874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n ^ 3 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168219.P3314309100615563874

/-! ## A168219.P4968606746346164009

`eq[2, ∏{e}[A244729(n)+1, #+1]]`
-/

namespace A168219.P4968606746346164009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244729 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A168219.P4968606746346164009

/-!
# A168220: a(n) = n^4*(n^6 + 1)/2.

The programs for A168220, the canonical program `A168220.P796011456327165198` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168220 has offset 0).

The definition of A168220 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A168220.anchor (n : ℕ) : (A168220 n : ℚ) = (n ^ 4 * (n ^ 6 + 1) : ℚ) / 2` in `Proof.A168.A168220`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168220.P796011456327165198

`n^4*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168220

/-- `n^4*(n^6+1)/2` -/
def P796011456327165198.Spec : Prop :=
  ∀ n, P796011456327165198.a n = (A168220 n : ℚ)

end A168220

/-! ## A168220.P523634161839078305

`n*A168187(n)`
-/

namespace A168220.P523634161839078305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168187 n

end

end A168220.P523634161839078305

namespace A168220

/-- `n*A168187(n)` -/
def P523634161839078305.Spec : Prop :=
  ∀ n, P523634161839078305.a n = A168220 n

end A168220

/-! ## A168220.P9119579737267730235

`n²*A168124(n)`
-/

namespace A168220.P9119579737267730235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168124 n

end

end A168220.P9119579737267730235

namespace A168220

/-- `n²*A168124(n)` -/
def P9119579737267730235.Spec : Prop :=
  ∀ n, P9119579737267730235.a n = A168220 n

end A168220

/-! ## A168220.P2939923633744917058

`n^3*A168029(n)`
-/

namespace A168220.P2939923633744917058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168029 n

end

end A168220.P2939923633744917058

namespace A168220

/-- `n^3*A168029(n)` -/
def P2939923633744917058.Spec : Prop :=
  ∀ n, P2939923633744917058.a n = A168220 n

end A168220

/-! ## A168220.P5548519784680049497

`A060886(n)*A168192(n)`
-/

namespace A168220.P5548519784680049497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060886 n * A168192 n

end

end A168220.P5548519784680049497

namespace A168220

/-- `A060886(n)*A168192(n)` -/
def P5548519784680049497.Spec : Prop :=
  ∀ n, P5548519784680049497.a n = A168220 n

end A168220

/-! ## A168220.P13138097776668297942

`A168124(n)*A253909(n)`
-/

namespace A168220.P13138097776668297942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168124 n * A253909 n

end

end A168220.P13138097776668297942

namespace A168220

/-- `A168124(n)*A253909(n)` -/
def P13138097776668297942.Spec : Prop :=
  ∀ n, P13138097776668297942.a n = A168220 n

end A168220

/-! ## A168220.P5093798006287053039

`2*A101378(n)²-A001015(n)`
-/

namespace A168220.P5093798006287053039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101378 n ^ 2 - A001015 n

end

end A168220.P5093798006287053039

namespace A168220

/-- `2*A101378(n)²-A001015(n)` -/
def P5093798006287053039.Spec : Prop :=
  ∀ n, P5093798006287053039.a n = A168220 n

end A168220

/-! ## A168220.P3689719498687683232

`n²*A027441(n²)`
-/

namespace A168220.P3689719498687683232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A027441 (n ^ 2)

end

end A168220.P3689719498687683232

namespace A168220

/-- `n²*A027441(n²)` -/
def P3689719498687683232.Spec : Prop :=
  ∀ n, P3689719498687683232.a n = A168220 n

end A168220

/-! ## A168220.P15277824291832915195

`A168126(n)+A161680(n²)`
-/

namespace A168220.P15277824291832915195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168126 n + A161680 (n ^ 2)

end

end A168220.P15277824291832915195

namespace A168220

/-- `A168126(n)+A161680(n²)` -/
def P15277824291832915195.Spec : Prop :=
  ∀ n, P15277824291832915195.a n = A168220 n

end A168220

/-! ## A168220.P12673177806648309057

`A101378(n²)`
-/

namespace A168220.P12673177806648309057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101378 (n ^ 2)

end

end A168220.P12673177806648309057

namespace A168220

/-- `A101378(n²)` -/
def P12673177806648309057.Spec : Prop :=
  ∀ n, P12673177806648309057.a n = A168220 n

end A168220

/-!
# A168221: a(n) = A006368(A006368(n)).

The programs for A168221, the canonical program `A168221.P17159314194095188608` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168221 has offset 0).

The definition of A168221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168221.P17159314194095188608

`A006368(A006368(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168221

/-- `A006368(A006368(n))` -/
def P17159314194095188608.Spec : Prop :=
  ∀ n, P17159314194095188608.a n = A168221 n

theorem P17159314194095188608.correct : P17159314194095188608.Spec := by
  intro n
  simp only [A168221]

end A168221

/-! ## A168221.P11301792707435429382

`floor(A165355(floor(A165355(n)/2))/2)`
-/

namespace A168221.P11301792707435429382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165355 ⌊(A165355 n : ℚ) / 2⌋.toNat : ℚ) / 2⌋

end

end A168221.P11301792707435429382

namespace A168221

/-- `floor(A165355(floor(A165355(n)/2))/2)` -/
def P11301792707435429382.Spec : Prop :=
  ∀ n, P11301792707435429382.a n = A168221 n

end A168221

/-! ## A168221.P12978125541326265801

`n-A168223(A006369(n)-A168223(n))`
-/

namespace A168221.P12978125541326265801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168223 (A006369 n - A168223 n).toNat

end

end A168221.P12978125541326265801

namespace A168221

/-- `n-A168223(A006369(n)-A168223(n))` -/
def P12978125541326265801.Spec : Prop :=
  ∀ n, P12978125541326265801.a n = A168221 n

end A168221

/-! ## A168221.P14198468480207124541

`A351412(A351412(n+3))-3`
-/

namespace A168221.P14198468480207124541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351412 (A351412 (n + 3)).toNat - 3

end

end A168221.P14198468480207124541

namespace A168221

/-- `A351412(A351412(n+3))-3` -/
def P14198468480207124541.Spec : Prop :=
  ∀ n, P14198468480207124541.a n = A168221 n

end A168221

/-! ## A168221.P10325093826420656588

`n-A168223(A004526(A165355(n)))`
-/

namespace A168221.P10325093826420656588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168223 (A004526 (A165355 n).toNat).toNat

end

end A168221.P10325093826420656588

namespace A168221

/-- `n-A168223(A004526(A165355(n)))` -/
def P10325093826420656588.Spec : Prop :=
  ∀ n, P10325093826420656588.a n = A168221 n

end A168221

/-! ## A168221.P7854885030153762597

`A004526(A165355(A004526(A165355(n))))`
-/

namespace A168221.P7854885030153762597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165355 (A004526 (A165355 n).toNat).toNat).toNat

end

end A168221.P7854885030153762597

namespace A168221

/-- `A004526(A165355(A004526(A165355(n))))` -/
def P7854885030153762597.Spec : Prop :=
  ∀ n, P7854885030153762597.a n = A168221 n

end A168221

/-!
# A168222: a(n) = A006369(A006369(n)).

The programs for A168222, the canonical program `A168222.P9769663046748618959` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168222 has offset 0).

The definition of A168222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168222.P9769663046748618959

`A006369(A006369(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168222

/-- `A006369(A006369(n))` -/
def P9769663046748618959.Spec : Prop :=
  ∀ n, P9769663046748618959.a n = A168222 n

theorem P9769663046748618959.correct : P9769663046748618959.Spec := by
  intro n
  simp only [A168222]

end A168222

/-! ## A168222.P15481294153347256457

`A006369(round((lcm(3, n)+n)/3))`
-/

namespace A168222.P15481294153347256457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3)).toNat

end

end A168222.P15481294153347256457

namespace A168222

/-- `A006369(round((lcm(3, n)+n)/3))` -/
def P15481294153347256457.Spec : Prop :=
  ∀ n, P15481294153347256457.a n = A168222 n

end A168222

/-! ## A168222.P1143105942456879047

`A168223(sqrt(A173536(n+2)))+n`
-/

namespace A168222.P1143105942456879047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (SequenceMachineLib.roundAway (Real.sqrt (A173536 (n + 2) : ℝ))).toNat + (n : ℤ)

end

end A168222.P1143105942456879047

namespace A168222

/-- `A168223(sqrt(A173536(n+2)))+n` -/
def P1143105942456879047.Spec : Prop :=
  ∀ n, P1143105942456879047.a n = A168222 n

end A168222

/-! ## A168222.P3610636401964543952

`A168223(A168223(n)+A006368(n))+n`
-/

namespace A168222.P3610636401964543952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (A168223 n + A006368 n).toNat + (n : ℤ)

end

end A168222.P3610636401964543952

namespace A168222

/-- `A168223(A168223(n)+A006368(n))+n` -/
def P3610636401964543952.Spec : Prop :=
  ∀ n, P3610636401964543952.a n = A168222 n

end A168222

/-! ## A168222.P7206731083094784849

`A168223(A186101(n)+A087509(n))+n`
-/

namespace A168222.P7206731083094784849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (A186101 n + A087509 n).toNat + (n : ℤ)

end

end A168222.P7206731083094784849

namespace A168222

/-- `A168223(A186101(n)+A087509(n))+n` -/
def P7206731083094784849.Spec : Prop :=
  ∀ n, P7206731083094784849.a n = A168222 n

end A168222

/-! ## A168222.P9256071567843056360

`A168223(A186731(n)+A091684(n))+n`
-/

namespace A168222.P9256071567843056360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (A186731 n + A091684 n).toNat + (n : ℤ)

end

end A168222.P9256071567843056360

namespace A168222

/-- `A168223(A186731(n)+A091684(n))+n` -/
def P9256071567843056360.Spec : Prop :=
  ∀ n, P9256071567843056360.a n = A168222 n

end A168222

/-! ## A168222.P18115720568067852886

`A168223(A071619(n)%A264788(n))+n`
-/

namespace A168222.P18115720568067852886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (Int.tmod (A071619 n) (A264788 n)).toNat + (n : ℤ)

end

end A168222.P18115720568067852886

namespace A168222

/-- `A168223(A071619(n)%A264788(n))+n` -/
def P18115720568067852886.Spec : Prop :=
  ∀ n, P18115720568067852886.a n = A168222 n

end A168222

/-! ## A168222.P1778922993505969586

`A168223(A042965(n+1)/A100063(n))+n`
-/

namespace A168222.P1778922993505969586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168223 (SequenceMachineLib.roundAway ((A042965 (n + 1) : ℚ) / (A100063 n : ℚ))).toNat + (n : ℤ)

end

end A168222.P1778922993505969586

namespace A168222

/-- `A168223(A042965(n+1)/A100063(n))+n` -/
def P1778922993505969586.Spec : Prop :=
  ∀ n, P1778922993505969586.a n = A168222 n

end A168222

/-! ## A168222.P17543255408525088202

`A265667(A265667(n+1))-1`
-/

namespace A168222.P17543255408525088202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A265667 (n + 1)).toNat - 1

end

end A168222.P17543255408525088202

namespace A168222

/-- `A265667(A265667(n+1))-1` -/
def P17543255408525088202.Spec : Prop :=
  ∀ n, P17543255408525088202.a n = A168222 n

end A168222

/-! ## A168222.P16740721723566660377

`Δ[∑[A265667(A265667(n))]-n]`
-/

namespace A168222.P16740721723566660377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A265667 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168222.P16740721723566660377

namespace A168222

/-- `Δ[∑[A265667(A265667(n))]-n]` -/
def P16740721723566660377.Spec : Prop :=
  ∀ n, P16740721723566660377.a n = A168222 n

end A168222

/-!
# A168223: a(n) = A006369(n) - A006368(n).

The programs for A168223, the canonical program `A168223.P6736241960057185808` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168223 has offset 0).

The definition of A168223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168223.P8142566296469690945

`ogf((-x^4+x^5-x^6)/(1+2x+2x^2-3x^4-4x^5-3x^6+2x^8+2x^9+x^10))`
-/

namespace A168223.P8142566296469690945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, -1, 1, -1] [1, 2, 2, 0, -3, -4, -3, 0, 2, 2, 1] n

end

end A168223.P8142566296469690945

namespace A168223

/-- `ogf((-x^4+x^5-x^6)/(1+2x+2x^2-3x^4-4x^5-3x^6+2x^8+2x^9+x^10))` -/
def P8142566296469690945.Spec : Prop :=
  ∀ n, P8142566296469690945.a n = A168223 n

end A168223

/-! ## A168223.P6736241960057185808

`A006369(n)-A006368(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168223

/-- `A006369(n)-A006368(n)` -/
def P6736241960057185808.Spec : Prop :=
  ∀ n, P6736241960057185808.a n = A168223 n

theorem P6736241960057185808.correct : P6736241960057185808.Spec := by
  intro n
  simp only [A168223]

end A168223

/-! ## A168223.P182748845554000213

`round((lcm(3, n)+n)/3)-floor(lcm(2, 3*n+1)/4)`
-/

namespace A168223.P182748845554000213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3) - ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋

end

end A168223.P182748845554000213

namespace A168223

/-- `round((lcm(3, n)+n)/3)-floor(lcm(2, 3*n+1)/4)` -/
def P182748845554000213.Spec : Prop :=
  ∀ n, P182748845554000213.a n = A168223 n

end A168223

/-! ## A168223.P11055953927676208480

`A006369(n)-floor(lcm(2, 3*n+1)/4)`
-/

namespace A168223.P11055953927676208480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - ⌊(Nat.lcm 2 (3 * n + 1) : ℚ) / 4⌋

end

end A168223.P11055953927676208480

namespace A168223

/-- `A006369(n)-floor(lcm(2, 3*n+1)/4)` -/
def P11055953927676208480.Spec : Prop :=
  ∀ n, P11055953927676208480.a n = A168223 n

end A168223

/-! ## A168223.P18228396918026082595

`round((lcm(3, n)+n)/3)-round(A168221(2*n)/3)`
-/

namespace A168223.P18228396918026082595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 3 n + n : ℚ) / 3) - SequenceMachineLib.roundAway ((A168221 (2 * n) : ℚ) / 3)

end

end A168223.P18228396918026082595

namespace A168223

/-- `round((lcm(3, n)+n)/3)-round(A168221(2*n)/3)` -/
def P18228396918026082595.Spec : Prop :=
  ∀ n, P18228396918026082595.a n = A168223 n

end A168223

/-! ## A168223.P2502837222728565093

`A051176(n)+A002264(n+1)-A168221(A006369(n))`
-/

namespace A168223.P2502837222728565093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n + A002264 (n + 1) - A168221 (A006369 n).toNat

end

end A168223.P2502837222728565093

namespace A168223

/-- `A051176(n)+A002264(n+1)-A168221(A006369(n))` -/
def P2502837222728565093.Spec : Prop :=
  ∀ n, P2502837222728565093.a n = A168223 n

end A168223

/-! ## A168223.P12647631088741280121

`A051176(n)+A002264(n+1)-(A004525(n)+n)/A000034(n)`
-/

namespace A168223.P12647631088741280121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051176 n + A002264 (n + 1) : ℚ) - (A004525 n + (n : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A168223.P12647631088741280121

namespace A168223

/-- `A051176(n)+A002264(n+1)-(A004525(n)+n)/A000034(n)` -/
def P12647631088741280121.Spec : Prop :=
  ∀ n, P12647631088741280121.a n = (A168223 n : ℚ)

end A168223

/-! ## A168223.P4809776779583042405

`A051176(n)+A002264(n+1)-A047229(n+1)/(A000035(n)+1)`
-/

namespace A168223.P4809776779583042405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051176 n + A002264 (n + 1) : ℚ) - (A047229 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A168223.P4809776779583042405

namespace A168223

/-- `A051176(n)+A002264(n+1)-A047229(n+1)/(A000035(n)+1)` -/
def P4809776779583042405.Spec : Prop :=
  ∀ n, P4809776779583042405.a n = (A168223 n : ℚ)

end A168223

/-! ## A168223.P4462578610947986302

`A006369(n)-Δ[A274221(n)]`
-/

namespace A168223.P4462578610947986302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - (f1 (n + 1) - f1 n)

end

end A168223.P4462578610947986302

namespace A168223

/-- `A006369(n)-Δ[A274221(n)]` -/
def P4462578610947986302.Spec : Prop :=
  ∀ n, P4462578610947986302.a n = A168223 n

end A168223

/-! ## A168223.P10704738675663004222

`A265667(n+1)-(A006368(n)+1)`
-/

namespace A168223.P10704738675663004222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (n + 1) - (A006368 n + 1)

end

end A168223.P10704738675663004222

namespace A168223

/-- `A265667(n+1)-(A006368(n)+1)` -/
def P10704738675663004222.Spec : Prop :=
  ∀ n, P10704738675663004222.a n = A168223 n

end A168223

/-! ## A168223.P11137935307218000516

`A006369(n)+A274221(n)-A274221(n+1)`
-/

namespace A168223.P11137935307218000516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n + (A274221 n - A274221 (n + 1))

end

end A168223.P11137935307218000516

namespace A168223

/-- `A006369(n)+A274221(n)-A274221(n+1)` -/
def P11137935307218000516.Spec : Prop :=
  ∀ n, P11137935307218000516.a n = A168223 n

end A168223

/-! ## A168223.P13286164943752119053

`A026741(A042965(n+1))-A006368(n)`
-/

namespace A168223.P13286164943752119053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A042965 (n + 1)).toNat - A006368 n

end

end A168223.P13286164943752119053

namespace A168223

/-- `A026741(A042965(n+1))-A006368(n)` -/
def P13286164943752119053.Spec : Prop :=
  ∀ n, P13286164943752119053.a n = A168223 n

end A168223

/-! ## A168223.P11891233116377455354

`A006368(A168222(n))-A006368(n)`
-/

namespace A168223.P11891233116377455354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A168222 n).toNat - A006368 n

end

end A168223.P11891233116377455354

namespace A168223

/-- `A006368(A168222(n))-A006368(n)` -/
def P11891233116377455354.Spec : Prop :=
  ∀ n, P11891233116377455354.a n = A168223 n

end A168223

/-! ## A168223.P4728857047056223223

`A006369(n)-A006369(A168221(n))`
-/

namespace A168223.P4728857047056223223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - A006369 (A168221 n).toNat

end

end A168223.P4728857047056223223

namespace A168223

/-- `A006369(n)-A006369(A168221(n))` -/
def P4728857047056223223.Spec : Prop :=
  ∀ n, P4728857047056223223.a n = A168223 n

end A168223

/-!
# A168224: Where record values occur in A168223.

The programs for A168224, the canonical program `A168224.P11225398715979966645` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168224 has offset 1).

The definition of A168224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168224.P11225398715979966645

`a(n-3)+12` with `a(0)=0, a(1)=5, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168224

/-- `a(n-3)+12` -/
def P11225398715979966645.Spec : Prop :=
  ∀ n, (P11225398715979966645.a n : ℤ) = A168224 (n + 1)

theorem P11225398715979966645.correct : P11225398715979966645.Spec := by
  intro n
  simp only [A168224, Nat.add_sub_cancel]

end A168224

/-! ## A168224.P7246526730733749201

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=4, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A168224.P7246526730733749201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 4, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168224.P7246526730733749201

namespace A168224

/-- `∑[floor(a(n-3))]` -/
def P7246526730733749201.Spec : Prop :=
  ∀ n, (P7246526730733749201.a n : ℤ) = A168224 (n + 1)

end A168224

/-! ## A168224.P5858093447521774947

`C(2, dr(∑[n]))+4*n-1`
-/

namespace A168224.P5858093447521774947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ) + ((4 * n : ℤ) - 1)

end

end A168224.P5858093447521774947

namespace A168224

/-- `C(2, dr(∑[n]))+4*n-1` -/
def P5858093447521774947.Spec : Prop :=
  ∀ n, P5858093447521774947.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P17877128492707601281

`4*n-(1-C(2, dr(∑[n])))`
-/

namespace A168224.P17877128492707601281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (1 - (Nat.choose 2 (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ))

end

end A168224.P17877128492707601281

namespace A168224

/-- `4*n-(1-C(2, dr(∑[n])))` -/
def P17877128492707601281.Spec : Prop :=
  ∀ n, P17877128492707601281.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P10294548530630951923

`record[and(n, n-1)-dr(n^3)]`
-/

namespace A168224.P10294548530630951923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) - (SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168224.P10294548530630951923

namespace A168224

/-- `record[and(n, n-1)-dr(n^3)]` -/
def P10294548530630951923.Spec : Prop :=
  ∀ n, P10294548530630951923.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P16576142991572539978

`∑[a(n-3)%7]` with `a(0)=0, a(1)=5, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A168224.P16576142991572539978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 2, 4, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168224.P16576142991572539978

namespace A168224

/-- `∑[a(n-3)%7]` -/
def P16576142991572539978.Spec : Prop :=
  ∀ n, (P16576142991572539978.a n : ℤ) = A168224 (n + 1)

end A168224

/-! ## A168224.P311220083702949304

`record[xor(3, 2*n-a(n-2))]` with `a(0)=0, a(1)=5`
-/

namespace A168224.P311220083702949304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  Int.xor 3 ((2 * n : ℤ) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168224.P311220083702949304

namespace A168224

/-- `record[xor(3, 2*n-a(n-2))]` -/
def P311220083702949304.Spec : Prop :=
  ∀ n, P311220083702949304.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P17555927815272692230

`4*n+1-abs((1-∑[n])%3)`
-/

namespace A168224.P17555927815272692230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) - |Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 3|

end

end A168224.P17555927815272692230

namespace A168224

/-- `4*n+1-abs((1-∑[n])%3)` -/
def P17555927815272692230.Spec : Prop :=
  ∀ n, P17555927815272692230.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P14628477899083467604

`gcd(n+2, 3%(2*n+1))+2*(2*n-1)`
-/

namespace A168224.P14628477899083467604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 2) (3 % (2 * n + 1)) : ℤ) + 2 * ((2 * n : ℤ) - 1)

end

end A168224.P14628477899083467604

namespace A168224

/-- `gcd(n+2, 3%(2*n+1))+2*(2*n-1)` -/
def P14628477899083467604.Spec : Prop :=
  ∀ n, P14628477899083467604.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P13079968735799279471

`A008706(n)-A061800(n)`
-/

namespace A168224.P13079968735799279471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A061800 n

end

end A168224.P13079968735799279471

namespace A168224

/-- `A008706(n)-A061800(n)` -/
def P13079968735799279471.Spec : Prop :=
  ∀ n, P13079968735799279471.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P7565612110021220616

`A008574(n)-A257075(n)`
-/

namespace A168224.P7565612110021220616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A257075 n

end

end A168224.P7565612110021220616

namespace A168224

/-- `A008574(n)-A257075(n)` -/
def P7565612110021220616.Spec : Prop :=
  ∀ n, P7565612110021220616.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P42753696327403809

`A301694(n)-A168056(n)`
-/

namespace A168224.P42753696327403809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A168056 n

end

end A168224.P42753696327403809

namespace A168224

/-- `A301694(n)-A168056(n)` -/
def P42753696327403809.Spec : Prop :=
  ∀ n, P42753696327403809.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P17248020345097866302

`A008486(n)+n-A257075(n)`
-/

namespace A168224.P17248020345097866302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + ((n : ℤ) - A257075 n)

end

end A168224.P17248020345097866302

namespace A168224

/-- `A008486(n)+n-A257075(n)` -/
def P17248020345097866302.Spec : Prop :=
  ∀ n, P17248020345097866302.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P10224453244067173874

`A008574(n)-A131561(n+1)`
-/

namespace A168224.P10224453244067173874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A131561 (n + 1)

end

end A168224.P10224453244067173874

namespace A168224

/-- `A008574(n)-A131561(n+1)` -/
def P10224453244067173874.Spec : Prop :=
  ∀ n, P10224453244067173874.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P1356767285692730590

`A004273(A047231(n+1))`
-/

namespace A168224.P1356767285692730590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047231 (n + 1)).toNat

end

end A168224.P1356767285692730590

namespace A168224

/-- `A004273(A047231(n+1))` -/
def P1356767285692730590.Spec : Prop :=
  ∀ n, P1356767285692730590.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P1840383639245515601

`A163985(A329680(n+2)+2*n)`
-/

namespace A168224.P1840383639245515601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A329680 (n + 2) + (2 * n : ℤ)).toNat

end

end A168224.P1840383639245515601

namespace A168224

/-- `A163985(A329680(n+2)+2*n)` -/
def P1840383639245515601.Spec : Prop :=
  ∀ n, P1840383639245515601.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P17740685057150958217

`A004273(A278718(2*n)+2*n)`
-/

namespace A168224.P17740685057150958217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A278718 (2 * n) + (2 * n : ℤ)).toNat

end

end A168224.P17740685057150958217

namespace A168224

/-- `A004273(A278718(2*n)+2*n)` -/
def P17740685057150958217.Spec : Prop :=
  ∀ n, P17740685057150958217.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P11589330303148291164

`record[A091685(2*n+1)-A091685(n+1)]`
-/

namespace A168224.P11589330303148291164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 (2 * n + 1) - A091685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168224.P11589330303148291164

namespace A168224

/-- `record[A091685(2*n+1)-A091685(n+1)]` -/
def P11589330303148291164.Spec : Prop :=
  ∀ n, P11589330303148291164.a n = A168224 (n + 1)

end A168224

/-! ## A168224.P12597226037647820814

`A315907(n)-A130823(n+1)`
-/

namespace A168224.P12597226037647820814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315907 n - A130823 (n + 1)

end

end A168224.P12597226037647820814

namespace A168224

/-- `A315907(n)-A130823(n+1)` -/
def P12597226037647820814.Spec : Prop :=
  ∀ n, P12597226037647820814.a n = A168224 (n + 1)

end A168224

/-!
# A168225: a(n) = n^4*(n^7 + 1)/2.

The programs for A168225, the canonical program `A168225.P13376698782999524608` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168225 has offset 0).

The definition of A168225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168225.P13376698782999524608

`n^4*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168225

/-- `n^4*(n^7+1)/2` -/
def P13376698782999524608.Spec : Prop :=
  ∀ n, P13376698782999524608.a n = (A168225 n : ℚ)

end A168225

/-! ## A168225.P6249901171114084712

`n*A168188(n)`
-/

namespace A168225.P6249901171114084712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168188 n

end

end A168225.P6249901171114084712

namespace A168225

/-- `n*A168188(n)` -/
def P6249901171114084712.Spec : Prop :=
  ∀ n, P6249901171114084712.a n = A168225 n

end A168225

/-! ## A168225.P6526797052964357533

`n²*A168125(n)`
-/

namespace A168225.P6526797052964357533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168125 n

end

end A168225.P6526797052964357533

namespace A168225

/-- `n²*A168125(n)` -/
def P6526797052964357533.Spec : Prop :=
  ∀ n, P6526797052964357533.a n = A168225 n

end A168225

/-! ## A168225.P9458893794487919334

`n^3*A168067(n)`
-/

namespace A168225.P9458893794487919334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168067 n

end

end A168225.P9458893794487919334

namespace A168225

/-- `n^3*A168067(n)` -/
def P9458893794487919334.Spec : Prop :=
  ∀ n, P9458893794487919334.a n = A168225 n

end A168225

/-! ## A168225.P5208216902943000796

`A168153(n)+C(n², 2)`
-/

namespace A168225.P5208216902943000796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168225.P5208216902943000796

namespace A168225

/-- `A168153(n)+C(n², 2)` -/
def P5208216902943000796.Spec : Prop :=
  ∀ n, P5208216902943000796.a n = A168225 n

end A168225

/-! ## A168225.P3935273798005917018

`A168125(n)*A253909(n)`
-/

namespace A168225.P3935273798005917018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168125 n * A253909 n

end

end A168225.P3935273798005917018

namespace A168225

/-- `A168125(n)*A253909(n)` -/
def P3935273798005917018.Spec : Prop :=
  ∀ n, P3935273798005917018.a n = A168225 n

end A168225

/-! ## A168225.P2616563947802517423

`A168153(n)+A161680(n²)`
-/

namespace A168225.P2616563947802517423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n + A161680 (n ^ 2)

end

end A168225.P2616563947802517423

namespace A168225

/-- `A168153(n)+A161680(n²)` -/
def P2616563947802517423.Spec : Prop :=
  ∀ n, P2616563947802517423.a n = A168225 n

end A168225

/-!
# A168226: Even numbers which are the sum of two odd abundant numbers.

The programs for A168226, there is no canonical definition to state claims against.
-/

/-! ## A168226.P781064511781027257

`A005231(n+1)+A005231(A061603(n))`
-/

namespace A168226.P781064511781027257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1) + A005231 (A061603 n).toNat

end

end A168226.P781064511781027257

/-! ## A168226.P4852253572075651231

`A174535(n+1)+A174535(A061603(n))`
-/

namespace A168226.P4852253572075651231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174535 (n + 1) + A174535 (A061603 n).toNat

end

end A168226.P4852253572075651231

/-! ## A168226.P15188113673099206487

`A174865(n+1)+A174865(A061603(n))`
-/

namespace A168226.P15188113673099206487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1) + A174865 (A061603 n).toNat

end

end A168226.P15188113673099206487

/-! ## A168226.P14662840022526423696

`A005231(n+1)+A005231(A138472(n)!)`
-/

namespace A168226.P14662840022526423696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1) + A005231 (Nat.factorial (A138472 n).toNat)

end

end A168226.P14662840022526423696

/-! ## A168226.P8925503388196443340

`A005231(n+1)+A005231(A287383(n))`
-/

namespace A168226.P8925503388196443340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1) + A005231 (A287383 n).toNat

end

end A168226.P8925503388196443340

/-!
# A168227: a(n) = n^4*(n^8 + 1)/2.

The programs for A168227, the canonical program `A168227.P2029161794550816356` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168227 has offset 0).

The definition of A168227 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A168227.anchor (n : ℕ) : (A168227 n : ℚ) = (n ^ 4 * (n ^ 8 + 1) : ℚ) / 2` in `Proof.A168.A168227`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168227.P2029161794550816356

`n^4*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168227

/-- `n^4*(n^8+1)/2` -/
def P2029161794550816356.Spec : Prop :=
  ∀ n, P2029161794550816356.a n = (A168227 n : ℚ)

end A168227

/-! ## A168227.P16364269512655895757

`lcm(n, (n^12+n²²)/2)`
-/

namespace A168227.P16364269512655895757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n ^ 12 + (n ^ 2) ^ 2 : ℚ) / 2))

end

end A168227.P16364269512655895757

namespace A168227

/-- `lcm(n, (n^12+n²²)/2)` -/
def P16364269512655895757.Spec : Prop :=
  ∀ n, (P16364269512655895757.a n : ℤ) = A168227 n

end A168227

/-! ## A168227.P7491054016387242303

`n*A168189(n)`
-/

namespace A168227.P7491054016387242303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168189 n

end

end A168227.P7491054016387242303

namespace A168227

/-- `n*A168189(n)` -/
def P7491054016387242303.Spec : Prop :=
  ∀ n, P7491054016387242303.a n = A168227 n

end A168227

/-! ## A168227.P15557946085821077243

`n²*A168126(n)`
-/

namespace A168227.P15557946085821077243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168126 n

end

end A168227.P15557946085821077243

namespace A168227

/-- `n²*A168126(n)` -/
def P15557946085821077243.Spec : Prop :=
  ∀ n, P15557946085821077243.a n = A168227 n

end A168227

/-! ## A168227.P6044335250912065375

`n^3*A168116(n)`
-/

namespace A168227.P6044335250912065375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168116 n

end

end A168227.P6044335250912065375

namespace A168227

/-- `n^3*A168116(n)` -/
def P6044335250912065375.Spec : Prop :=
  ∀ n, P6044335250912065375.a n = A168227 n

end A168227

/-! ## A168227.P13071584188220340127

`A168126(n)*A253909(n)`
-/

namespace A168227.P13071584188220340127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168126 n * A253909 n

end

end A168227.P13071584188220340127

namespace A168227

/-- `A168126(n)*A253909(n)` -/
def P13071584188220340127.Spec : Prop :=
  ∀ n, P13071584188220340127.a n = A168227 n

end A168227

/-! ## A168227.P7680975576410839097

`n²*A021003(n²)`
-/

namespace A168227.P7680975576410839097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A021003 (n ^ 2)

end

end A168227.P7680975576410839097

namespace A168227

/-- `n²*A021003(n²)` -/
def P7680975576410839097.Spec : Prop :=
  ∀ n, P7680975576410839097.a n = A168227 n

end A168227

/-! ## A168227.P14586727220398159866

`A168122(n²)`
-/

namespace A168227.P14586727220398159866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 (n ^ 2)

end

end A168227.P14586727220398159866

namespace A168227

/-- `A168122(n²)` -/
def P14586727220398159866.Spec : Prop :=
  ∀ n, P14586727220398159866.a n = A168227 n

end A168227

/-! ## A168227.P10106423732247896748

`record[gcd(A053186(n), A168122(n))]`
-/

namespace A168227.P10106423732247896748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053186 n) (A168122 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168227.P10106423732247896748

namespace A168227

/-- `record[gcd(A053186(n), A168122(n))]` -/
def P10106423732247896748.Spec : Prop :=
  ∀ n, (P10106423732247896748.a n : ℤ) = A168227 n

end A168227

/-!
# A168230: a(n) = n + 2 - a(n-1) for n>1; a(1) = 0.

The programs for A168230, the canonical program `A168230.P8054118140932111500` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168230 has offset 1).

The definition of A168230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+3-a(n-1)` (program `A168230.P8054118140932111500`, by `A168230.P8054118140932111500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168230.P10959846939260906200

`a(n-2)+1` with `a(0)=0, a(1)=4`
-/

namespace A168230.P10959846939260906200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 1

end

end A168230.P10959846939260906200

namespace A168230

/-- `a(n-2)+1` -/
def P10959846939260906200.Spec : Prop :=
  ∀ n, (P10959846939260906200.a n : ℤ) = A168230 (n + 1)

end A168230

/-! ## A168230.P8054118140932111500

`n+3-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168230

/-- `n+3-a(n-1)` -/
def P8054118140932111500.Spec : Prop :=
  ∀ n, P8054118140932111500.a n = A168230 (n + 1)

theorem P8054118140932111500.correct : P8054118140932111500.Spec := by
  intro n
  simp only [A168230, Nat.add_sub_cancel]

end A168230

/-! ## A168230.P16405914630733220991

`ogf((4x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168230.P16405914630733220991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3] [1, -1, -1, 1] n

end

end A168230.P16405914630733220991

namespace A168230

/-- `ogf((4x-3x^2)/(1-x-x^2+x^3))` -/
def P16405914630733220991.Spec : Prop :=
  ∀ n, P16405914630733220991.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P8308450618718320943

`(7*(-1)^(n+1)+2*(n+1)+5)/4`
-/

namespace A168230.P8308450618718320943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (-1) ^ (n + 1) + (2 * (n + 1) : ℤ) + 5 : ℚ) / 4

end

end A168230.P8308450618718320943

namespace A168230

/-- `(7*(-1)^(n+1)+2*(n+1)+5)/4` -/
def P8308450618718320943.Spec : Prop :=
  ∀ n, P8308450618718320943.a n = (A168230 (n + 1) : ℚ)

theorem P8308450618718320943.correct : P8308450618718320943.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168230, Nat.add_sub_cancel, A168230.P8308450618718320943.a, A168230.P8054118140932111500.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168230, Nat.add_sub_cancel, A168230.P8308450618718320943.a, A168230.P8054118140932111500.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168230

/-! ## A168230.P12520261789154055645

`∑[1-a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A168230.P12520261789154055645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168230.P12520261789154055645

namespace A168230

/-- `∑[1-a(n-1)]` -/
def P12520261789154055645.Spec : Prop :=
  ∀ n, P12520261789154055645.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P9246973614698001025

`3-(a(n-1)-n)` with `a(0)=0`
-/

namespace A168230.P9246973614698001025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - (a (n - 1) - (n : ℤ))

end

end A168230.P9246973614698001025

namespace A168230

/-- `3-(a(n-1)-n)` -/
def P9246973614698001025.Spec : Prop :=
  ∀ n, P9246973614698001025.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P17283823874497840508

`∑[∑[ogf((4x-3x^2)/(1+x))]]`
-/

namespace A168230.P17283823874497840508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168230.P17283823874497840508

namespace A168230

/-- `∑[∑[ogf((4x-3x^2)/(1+x))]]` -/
def P17283823874497840508.Spec : Prop :=
  ∀ n, P17283823874497840508.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P15403655326351708019

`∑[5-gcd(2, n)^3]+3`
-/

namespace A168230.P15403655326351708019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 2 n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A168230.P15403655326351708019

namespace A168230

/-- `∑[5-gcd(2, n)^3]+3` -/
def P15403655326351708019.Spec : Prop :=
  ∀ n, P15403655326351708019.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P216800965722698902

`floor(n/2+4*n%2)`
-/

namespace A168230.P216800965722698902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 + ((4 * (n % 2) : ℕ) : ℚ)⌋

end

end A168230.P216800965722698902

namespace A168230

/-- `floor(n/2+4*n%2)` -/
def P216800965722698902.Spec : Prop :=
  ∀ n, P216800965722698902.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P9484184514242331507

`floor(4*and(1, n)+n/2)`
-/

namespace A168230.P9484184514242331507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * Nat.land 1 n : ℚ) + (n : ℚ) / 2⌋

end

end A168230.P9484184514242331507

namespace A168230

/-- `floor(4*and(1, n)+n/2)` -/
def P9484184514242331507.Spec : Prop :=
  ∀ n, P9484184514242331507.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P470923927808282705

`round(A010674(n)+n/2)`
-/

namespace A168230.P470923927808282705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010674 n : ℚ) + (n : ℚ) / 2)

end

end A168230.P470923927808282705

namespace A168230

/-- `round(A010674(n)+n/2)` -/
def P470923927808282705.Spec : Prop :=
  ∀ n, P470923927808282705.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P17165720427845274600

`A168198(n+1)-(n+1)`
-/

namespace A168230.P17165720427845274600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168198 (n + 1) - (n + 1 : ℤ)

end

end A168230.P17165720427845274600

namespace A168230

/-- `A168198(n+1)-(n+1)` -/
def P17165720427845274600.Spec : Prop :=
  ∀ n, P17165720427845274600.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P13514956377925516899

`A168374(n+1)-3*n`
-/

namespace A168230.P13514956377925516899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168374 (n + 1) - (3 * n : ℤ)

end

end A168230.P13514956377925516899

namespace A168230

/-- `A168374(n+1)-3*n` -/
def P13514956377925516899.Spec : Prop :=
  ∀ n, P13514956377925516899.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P12187866062172661077

`A274406(n+1)-4*n`
-/

namespace A168230.P12187866062172661077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) - (4 * n : ℤ)

end

end A168230.P12187866062172661077

namespace A168230

/-- `A274406(n+1)-4*n` -/
def P12187866062172661077.Spec : Prop :=
  ∀ n, P12187866062172661077.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P7560196698166300331

`5*n-A090570(n+1)`
-/

namespace A168230.P7560196698166300331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A090570 (n + 1)

end

end A168230.P7560196698166300331

namespace A168230

/-- `5*n-A090570(n+1)` -/
def P7560196698166300331.Spec : Prop :=
  ∀ n, P7560196698166300331.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P13297052012989288693

`abs(A014682(xor(1, n+1))-n)`
-/

namespace A168230.P13297052012989288693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014682 (Nat.xor 1 (n + 1)) - (n : ℤ)|

end

end A168230.P13297052012989288693

namespace A168230

/-- `abs(A014682(xor(1, n+1))-n)` -/
def P13297052012989288693.Spec : Prop :=
  ∀ n, P13297052012989288693.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P9952864416332698396

`A166539(n+1)-2*(n+1)`
-/

namespace A168230.P9952864416332698396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166539 (n + 1) - (2 * (n + 1) : ℤ)

end

end A168230.P9952864416332698396

namespace A168230

/-- `A166539(n+1)-2*(n+1)` -/
def P9952864416332698396.Spec : Prop :=
  ∀ n, P9952864416332698396.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P17915982997349157984

`A168331(n+1)-3*(n+1)`
-/

namespace A168230.P17915982997349157984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168331 (n + 1) - (3 * (n + 1) : ℤ)

end

end A168230.P17915982997349157984

namespace A168230

/-- `A168331(n+1)-3*(n+1)` -/
def P17915982997349157984.Spec : Prop :=
  ∀ n, P17915982997349157984.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P12064118059865373826

`4*(n+1)-A168373(n+1)`
-/

namespace A168230.P12064118059865373826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A168373 (n + 1)

end

end A168230.P12064118059865373826

namespace A168230

/-- `4*(n+1)-A168373(n+1)` -/
def P12064118059865373826.Spec : Prop :=
  ∀ n, P12064118059865373826.a n = A168230 (n + 1)

end A168230

/-! ## A168230.P4790985846803532769

`A010675(n)+A004526(n)`
-/

namespace A168230.P4790985846803532769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n + A004526 n

end

end A168230.P4790985846803532769

namespace A168230

/-- `A010675(n)+A004526(n)` -/
def P4790985846803532769.Spec : Prop :=
  ∀ n, P4790985846803532769.a n = A168230 (n + 1)

end A168230

/-!
# A168231: a(n)^2 = digital sum of (A076503(n))^2.

The programs for A168231, there is no canonical definition to state claims against.
-/

/-! ## A168231.P7719322813455216832

`sqrt(∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P7719322813455216832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℝ)

end

end A168231.P7719322813455216832

/-! ## A168231.P13422389337902734438

`A000188(∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P13422389337902734438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168231.P13422389337902734438

/-! ## A168231.P7184205410609298794

`A000196(∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P7184205410609298794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168231.P7184205410609298794

/-! ## A168231.P8193994625753078571

`A003059(∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P8193994625753078571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168231.P8193994625753078571

/-! ## A168231.P9006585628897799765

`A027907(∑{digits}[A076503(n+1)², #]+1)`
-/

namespace A168231.P9006585628897799765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1)

end

end A168231.P9006585628897799765

/-! ## A168231.P12844523104928474624

`A088226(∑{digits}[A076503(n+1)², #])+1`
-/

namespace A168231.P12844523104928474624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A168231.P12844523104928474624

/-! ## A168231.P2182726779208737192

`A002260(2*∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P2182726779208737192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A168231.P2182726779208737192

/-! ## A168231.P3185980364187250906

`A002262(2*∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P3185980364187250906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A168231.P3185980364187250906

/-! ## A168231.P5867508180968828878

`A025663(2*∑{digits}[A076503(n+1)², #])`
-/

namespace A168231.P5867508180968828878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025663 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A168231.P5867508180968828878

/-! ## A168231.P15725887275308466222

`A000267(∑{digits}[A076503(n+1)², #])/2`
-/

namespace A168231.P15725887275308466222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000267 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℚ) / 2

end

end A168231.P15725887275308466222

/-! ## A168231.P14957213858960063964

`A028310(root(∑{digits}[A076503(n+1)², #], 2))`
-/

namespace A168231.P14957213858960063964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A168231.P14957213858960063964

/-! ## A168231.P17345210793904267693

`A066729(∑{digits}[A076503(n+1)², #])%10`
-/

namespace A168231.P17345210793904267693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066729 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum) 10

end

end A168231.P17345210793904267693

/-!
# A168232: a(n) = (2*n - 3*(-1)^n - 1)/2.

The programs for A168232, the canonical program `A168232.P7885086089654887095` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168232 has offset 1).

The definition of A168232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168232.P1744199734580488155

`ogf((2-2x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168232.P1744199734580488155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 2] [1, -1, -1, 1] n

end

end A168232.P1744199734580488155

namespace A168232

/-- `ogf((2-2x+2x^2)/(1-x-x^2+x^3))` -/
def P1744199734580488155.Spec : Prop :=
  ∀ n, P1744199734580488155.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P16161016508826980587

`(2*(n+1)-3*(-1)^(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168232.P16161016508826980587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1) - 1 : ℚ) / 2

end

end A168232.P16161016508826980587

namespace A168232

/-- `(2*(n+1)-3*(-1)^(n+1)-1)/2` -/
def P16161016508826980587.Spec : Prop :=
  ∀ n, P16161016508826980587.a n = (A168232 (n + 1) : ℚ)

end A168232

/-! ## A168232.P7885086089654887095

`2*A028242(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168232

/-- `2*A028242(n)` -/
def P7885086089654887095.Spec : Prop :=
  ∀ n, P7885086089654887095.a n = A168232 (n + 1)

theorem P7885086089654887095.correct : P7885086089654887095.Spec := by
  intro n
  simp only [A168232, Nat.add_sub_cancel]

end A168232

/-! ## A168232.P12544079941174252830

`abs(Δ[lcm(2, n)])`
-/

namespace A168232.P12544079941174252830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A168232.P12544079941174252830

namespace A168232

/-- `abs(Δ[lcm(2, n)])` -/
def P12544079941174252830.Spec : Prop :=
  ∀ n, P12544079941174252830.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P16772339121695404575

`and(abs(xor(n, -2)), -2)`
-/

namespace A168232.P16772339121695404575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |Int.xor (n : ℤ) (-2)| (-2)

end

end A168232.P16772339121695404575

namespace A168232

/-- `and(abs(xor(n, -2)), -2)` -/
def P16772339121695404575.Spec : Prop :=
  ∀ n, P16772339121695404575.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P6881796940234978034

`or(1, n)+(-1)^n`
-/

namespace A168232.P6881796940234978034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (-1) ^ n

end

end A168232.P6881796940234978034

namespace A168232

/-- `or(1, n)+(-1)^n` -/
def P6881796940234978034.Spec : Prop :=
  ∀ n, P6881796940234978034.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P8185234251538743434

`a(n-2)+2` with `a(0)=2, a(1)=0`
-/

namespace A168232.P8185234251538743434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 2) + 2

end

end A168232.P8185234251538743434

namespace A168232

/-- `a(n-2)+2` -/
def P8185234251538743434.Spec : Prop :=
  ∀ n, (P8185234251538743434.a n : ℤ) = A168232 (n + 1)

end A168232

/-! ## A168232.P14550924548694439177

`and(xor(1, n)+1, -2)`
-/

namespace A168232.P14550924548694439177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.xor 1 n + 1 : ℤ) (-2)

end

end A168232.P14550924548694439177

namespace A168232

/-- `and(xor(1, n)+1, -2)` -/
def P14550924548694439177.Spec : Prop :=
  ∀ n, P14550924548694439177.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P10705760342203290879

`1-or(1, -xor(1, n))`
-/

namespace A168232.P10705760342203290879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-(Nat.xor 1 n : ℤ))

end

end A168232.P10705760342203290879

namespace A168232

/-- `1-or(1, -xor(1, n))` -/
def P10705760342203290879.Spec : Prop :=
  ∀ n, P10705760342203290879.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P972117700570306644

`2*ceil(xor(1, n)/2)`
-/

namespace A168232.P972117700570306644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(Nat.xor 1 n : ℚ) / 2⌉

end

end A168232.P972117700570306644

namespace A168232

/-- `2*ceil(xor(1, n)/2)` -/
def P972117700570306644.Spec : Prop :=
  ∀ n, P972117700570306644.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P16352065870045855169

`2*round(xor(1, n)/2)`
-/

namespace A168232.P16352065870045855169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

end

end A168232.P16352065870045855169

namespace A168232

/-- `2*round(xor(1, n)/2)` -/
def P16352065870045855169.Spec : Prop :=
  ∀ n, P16352065870045855169.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P13903406128131922930

`gcd(2, n)²-2+n`
-/

namespace A168232.P13903406128131922930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 2 + (n : ℤ)

end

end A168232.P13903406128131922930

namespace A168232

/-- `gcd(2, n)²-2+n` -/
def P13903406128131922930.Spec : Prop :=
  ∀ n, P13903406128131922930.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P2186354679004549729

`gcd(4, n²)-(2-n)`
-/

namespace A168232.P2186354679004549729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n ^ 2) : ℤ) - (2 - (n : ℤ))

end

end A168232.P2186354679004549729

namespace A168232

/-- `gcd(4, n²)-(2-n)` -/
def P2186354679004549729.Spec : Prop :=
  ∀ n, P2186354679004549729.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P963062627524777013

`and(-2, -xor(n, -2))`
-/

namespace A168232.P963062627524777013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (-Int.xor (n : ℤ) (-2))

end

end A168232.P963062627524777013

namespace A168232

/-- `and(-2, -xor(n, -2))` -/
def P963062627524777013.Spec : Prop :=
  ∀ n, P963062627524777013.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P18103291597310872699

`char[2*n]+xor(1, n)`
-/

namespace A168232.P18103291597310872699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.xor 1 n

end

end A168232.P18103291597310872699

namespace A168232

/-- `char[2*n]+xor(1, n)` -/
def P18103291597310872699.Spec : Prop :=
  ∀ n, (P18103291597310872699.a n : ℤ) = A168232 (n + 1)

end A168232

/-! ## A168232.P5574538163227639334

`2-3*n%2+n`
-/

namespace A168232.P5574538163227639334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((3 * (n % 2) : ℕ) : ℤ) + (n : ℤ)

end

end A168232.P5574538163227639334

namespace A168232

/-- `2-3*n%2+n` -/
def P5574538163227639334.Spec : Prop :=
  ∀ n, P5574538163227639334.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P10668935834878494622

`2-((3*n)%6-n)`
-/

namespace A168232.P10668935834878494622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((3 * n % 6 : ℕ) : ℤ) - (n : ℤ))

end

end A168232.P10668935834878494622

namespace A168232

/-- `2-((3*n)%6-n)` -/
def P10668935834878494622.Spec : Prop :=
  ∀ n, P10668935834878494622.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P14622399161629145135

`n+2-3*and(1, n)`
-/

namespace A168232.P14622399161629145135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (3 * Nat.land 1 n : ℤ)

end

end A168232.P14622399161629145135

namespace A168232

/-- `n+2-3*and(1, n)` -/
def P14622399161629145135.Spec : Prop :=
  ∀ n, P14622399161629145135.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P5031862686423192288

`2*n-a(n-1)` with `a(0)=2`
-/

namespace A168232.P5031862686423192288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * n : ℤ) - a (n - 1)

end

end A168232.P5031862686423192288

namespace A168232

/-- `2*n-a(n-1)` -/
def P5031862686423192288.Spec : Prop :=
  ∀ n, P5031862686423192288.a n = A168232 (n + 1)

end A168232

/-! ## A168232.P17092922205803454672

`n+3-4^and(1, n)`
-/

namespace A168232.P17092922205803454672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (4 ^ Nat.land 1 n : ℤ)

end

end A168232.P17092922205803454672

namespace A168232

/-- `n+3-4^and(1, n)` -/
def P17092922205803454672.Spec : Prop :=
  ∀ n, P17092922205803454672.a n = A168232 (n + 1)

end A168232

/-!
# A168233: a(n) = 3*n - a(n-1) - 1 for n>0, a(1)=1.

The programs for A168233, the canonical program `A168233.P11416951452911761425` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168233 has offset 1).

The definition of A168233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)-a(n-1)-1` (program `A168233.P11416951452911761425`, by `A168233.P11416951452911761425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168233.P9054831545988036225

`ogf((1+3x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168233.P9054831545988036225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, -1, -1, 1] n

end

end A168233.P9054831545988036225

namespace A168233

/-- `ogf((1+3x-x^2)/(1-x-x^2+x^3))` -/
def P9054831545988036225.Spec : Prop :=
  ∀ n, P9054831545988036225.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P13754110998244832385

`3*floor((n+1)/2)+1`
-/

namespace A168233.P13754110998244832385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n + 1 : ℚ) / 2⌋ + 1

end

end A168233.P13754110998244832385

namespace A168233

/-- `3*floor((n+1)/2)+1` -/
def P13754110998244832385.Spec : Prop :=
  ∀ n, P13754110998244832385.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P11416951452911761425

`3*(n+1)-a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168233

/-- `3*(n+1)-a(n-1)-1` -/
def P11416951452911761425.Spec : Prop :=
  ∀ n, P11416951452911761425.a n = A168233 (n + 1)

theorem P11416951452911761425.correct : P11416951452911761425.Spec := by
  intro n
  simp only [A168233, Nat.add_sub_cancel]

end A168233

/-! ## A168233.P13776255869820865046

`A016777(floor((n+1)/2))`
-/

namespace A168233.P13776255869820865046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A168233.P13776255869820865046

namespace A168233

/-- `A016777(floor((n+1)/2))` -/
def P13776255869820865046.Spec : Prop :=
  ∀ n, P13776255869820865046.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P8998359937305373258

`3+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A168233.P8998359937305373258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 + a (n - 2)

end

end A168233.P8998359937305373258

namespace A168233

/-- `3+a(n-2)` -/
def P8998359937305373258.Spec : Prop :=
  ∀ n, (P8998359937305373258.a n : ℤ) = A168233 (n + 1)

end A168233

/-! ## A168233.P16982681342922197093

`∑[3-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A168233.P16982681342922197093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168233.P16982681342922197093

namespace A168233

/-- `∑[3-a(n-1)]` -/
def P16982681342922197093.Spec : Prop :=
  ∀ n, P16982681342922197093.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P15419052990500911715

`∑[gcd(2, n+1)²]-n`
-/

namespace A168233.P15419052990500911715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A168233.P15419052990500911715

namespace A168233

/-- `∑[gcd(2, n+1)²]-n` -/
def P15419052990500911715.Spec : Prop :=
  ∀ n, P15419052990500911715.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P10497716580299742712

`∑[∑[ogf((1+3x-x^2)/(1+x))]]`
-/

namespace A168233.P10497716580299742712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168233.P10497716580299742712

namespace A168233

/-- `∑[∑[ogf((1+3x-x^2)/(1+x))]]` -/
def P10497716580299742712.Spec : Prop :=
  ∀ n, P10497716580299742712.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P5055018509537141171

`round(xor(1, 3*(n+1))/2)`
-/

namespace A168233.P5055018509537141171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (3 * (n + 1)) : ℚ) / 2)

end

end A168233.P5055018509537141171

namespace A168233

/-- `round(xor(1, 3*(n+1))/2)` -/
def P5055018509537141171.Spec : Prop :=
  ∀ n, P5055018509537141171.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P11472283846078508360

`ceil(or(1, n+1)+n/2)`
-/

namespace A168233.P11472283846078508360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A168233.P11472283846078508360

namespace A168233

/-- `ceil(or(1, n+1)+n/2)` -/
def P11472283846078508360.Spec : Prop :=
  ∀ n, P11472283846078508360.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P7672783803758566512

`round(or(1, n+1)+n/2)`
-/

namespace A168233.P7672783803758566512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 1) : ℚ) + (n : ℚ) / 2)

end

end A168233.P7672783803758566512

namespace A168233

/-- `round(or(1, n+1)+n/2)` -/
def P7672783803758566512.Spec : Prop :=
  ∀ n, P7672783803758566512.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P2740760253176375468

`ceil(xor(1, n+3)/2+n)`
-/

namespace A168233.P2740760253176375468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 3) : ℚ) / 2 + (n : ℚ)⌉

end

end A168233.P2740760253176375468

namespace A168233

/-- `ceil(xor(1, n+3)/2+n)` -/
def P2740760253176375468.Spec : Prop :=
  ∀ n, P2740760253176375468.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P7991242765613988881

`round(xor(1, n+3)/2+n)`
-/

namespace A168233.P7991242765613988881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 3) : ℚ) / 2 + (n : ℚ))

end

end A168233.P7991242765613988881

namespace A168233

/-- `round(xor(1, n+3)/2+n)` -/
def P7991242765613988881.Spec : Prop :=
  ∀ n, P7991242765613988881.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P5608615760051530196

`(3*(n%2+n)+2)/2`
-/

namespace A168233.P5608615760051530196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n % 2 + n) + 2 : ℕ) : ℚ) / 2

end

end A168233.P5608615760051530196

namespace A168233

/-- `(3*(n%2+n)+2)/2` -/
def P5608615760051530196.Spec : Prop :=
  ∀ n, P5608615760051530196.a n = (A168233 (n + 1) : ℚ)

end A168233

/-! ## A168233.P9578648374302001549

`ceil(a(n-2)-(ϕ-4))` with `a(0)=1, a(1)=4`
-/

namespace A168233.P9578648374302001549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌈(a (n - 2) : ℝ) - (Real.goldenRatio - 4)⌉

end

end A168233.P9578648374302001549

namespace A168233

/-- `ceil(a(n-2)-(ϕ-4))` -/
def P9578648374302001549.Spec : Prop :=
  ∀ n, P9578648374302001549.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P4013721953384247721

`floor(a(n-2)-(ϕ-5))` with `a(0)=1, a(1)=4`
-/

namespace A168233.P4013721953384247721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(a (n - 2) : ℝ) - (Real.goldenRatio - 5)⌋

end

end A168233.P4013721953384247721

namespace A168233

/-- `floor(a(n-2)-(ϕ-5))` -/
def P4013721953384247721.Spec : Prop :=
  ∀ n, P4013721953384247721.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P13259130088477670765

`round(a(n-2)-(ϕ-5))` with `a(0)=1, a(1)=4`
-/

namespace A168233.P13259130088477670765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℝ) - (Real.goldenRatio - 5))

end

end A168233.P13259130088477670765

namespace A168233

/-- `round(a(n-2)-(ϕ-5))` -/
def P13259130088477670765.Spec : Prop :=
  ∀ n, P13259130088477670765.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P17293705270986238850

`floor(or(1, n+1)+(n+1)/2)`
-/

namespace A168233.P17293705270986238850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 1) : ℚ) + (n + 1 : ℚ) / 2⌋

end

end A168233.P17293705270986238850

namespace A168233

/-- `floor(or(1, n+1)+(n+1)/2)` -/
def P17293705270986238850.Spec : Prop :=
  ∀ n, P17293705270986238850.a n = A168233 (n + 1)

end A168233

/-! ## A168233.P5333659483874966173

`floor(xor(1, n+1)+(n+2)/2)`
-/

namespace A168233.P5333659483874966173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 1) : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A168233.P5333659483874966173

namespace A168233

/-- `floor(xor(1, n+1)+(n+2)/2)` -/
def P5333659483874966173.Spec : Prop :=
  ∀ n, P5333659483874966173.a n = A168233 (n + 1)

end A168233

/-!
# A168234: A138100(n) + A168142(n).

The programs for A168234, there is no canonical definition to state claims against.
-/

/-! ## A168234.P3565736860873027876

`A138100(n+1)+A168142(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168234.P3565736860873027876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 (n + 1) + A168142 (n + 1)

end

end A168234.P3565736860873027876

/-! ## A168234.P13213369498615326383

`A199502(2*∑[char[∑[2*n²]]]²+1)`
-/

namespace A168234.P13213369498615326383
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199502 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1)

end

end A168234.P13213369498615326383

/-! ## A168234.P12270651760532097299

`filter[A171710(n+1), A120529(#)]`
-/

namespace A168234.P12270651760532097299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120529 (f1 j).toNat = 1) n)

end

end A168234.P12270651760532097299

/-! ## A168234.P15406354906944759230

`A166911(∑[char[A006331(n+1)]])`
-/

namespace A168234.P15406354906944759230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168234.P15406354906944759230

/-! ## A168234.P7701674411483761473

`A166911(∑[char[A006331(n)]]-1)`
-/

namespace A168234.P7701674411483761473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166911 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A168234.P7701674411483761473

/-! ## A168234.P7448581869839723553

`A171710(A168142(n+1)+comp[Δ[lcm(3, n)]])`
-/

namespace A168234.P7448581869839723553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A168142 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A168234.P7448581869839723553

/-! ## A168234.P10905414698907167345

`A171710(A138100(A168142(n+1))+n)`
-/

namespace A168234.P10905414698907167345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A138100 (A168142 (n + 1)).toNat + (n : ℤ)).toNat

end

end A168234.P10905414698907167345

/-! ## A168234.P13680456647882724838

`A171710(A168142(n+1)+∑[A124763(n)])`
-/

namespace A168234.P13680456647882724838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A168142 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168234.P13680456647882724838

/-! ## A168234.P14324529995109652420

`A171710(A138100(n+1))`
-/

namespace A168234.P14324529995109652420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171710 (A138100 (n + 1)).toNat

end

end A168234.P14324529995109652420

/-! ## A168234.P12505771737723875092

`A138101(A138100(n+1)-n)`
-/

namespace A168234.P12505771737723875092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (A138100 (n + 1) - (n : ℤ)).toNat

end

end A168234.P12505771737723875092

/-!
# A168235: a(n) = 1+5*n+7*n^2.

The programs for A168235, the canonical program `A168235.P4515148941199972180` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168235 has offset 1).

The definition of A168235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+5*(n+1)+7*(n+1)²` (program `A168235.P4515148941199972180`, by `A168235.P4515148941199972180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168235.P12445768650489378624

`ogf((13+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A168235.P12445768650489378624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, 0, 1] [1, -3, 3, -1] n

end

end A168235.P12445768650489378624

namespace A168235

/-- `ogf((13+x^2)/(1-3x+3x^2-x^3))` -/
def P12445768650489378624.Spec : Prop :=
  ∀ n, P12445768650489378624.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P4515148941199972180

`1+5*(n+1)+7*(n+1)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168235

/-- `1+5*(n+1)+7*(n+1)²` -/
def P4515148941199972180.Spec : Prop :=
  ∀ n, (P4515148941199972180.a n : ℤ) = A168235 (n + 1)

theorem P4515148941199972180.correct : P4515148941199972180.Spec := by
  intro n
  simp only [A168235, Nat.add_sub_cancel]

end A168235

/-! ## A168235.P17281995022682530896

`∑[a(n-1)+14]` with `a(0)=13, a(1)=26`
-/

namespace A168235.P17281995022682530896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 26] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168235.P17281995022682530896

namespace A168235

/-- `∑[a(n-1)+14]` -/
def P17281995022682530896.Spec : Prop :=
  ∀ n, (P17281995022682530896.a n : ℤ) = A168235 (n + 1)

end A168235

/-! ## A168235.P16964031035749254374

`∑[13*(n+1)]+C(n, 2)`
-/

namespace A168235.P16964031035749254374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2

end

end A168235.P16964031035749254374

namespace A168235

/-- `∑[13*(n+1)]+C(n, 2)` -/
def P16964031035749254374.Spec : Prop :=
  ∀ n, (P16964031035749254374.a n : ℤ) = A168235 (n + 1)

end A168235

/-! ## A168235.P16023723219458972961

`14*n+a(n-1)+12` with `a(0)=13`
-/

namespace A168235.P16023723219458972961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  14 * n + a (n - 1) + 12

end

end A168235.P16023723219458972961

namespace A168235

/-- `14*n+a(n-1)+12` -/
def P16023723219458972961.Spec : Prop :=
  ∀ n, (P16023723219458972961.a n : ℤ) = A168235 (n + 1)

theorem P16023723219458972961.correct : P16023723219458972961.Spec := by
  intro n
  induction n with
  | zero => simp [A168235, A168235.P16023723219458972961.a, A168235.P4515148941199972180.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A168235, Nat.add_sub_cancel, A168235.P16023723219458972961.a, A168235.P4515148941199972180.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A168235

/-! ## A168235.P7664167305354400436

`∑[A063151(n+1)+6]`
-/

namespace A168235.P7664167305354400436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063151 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168235.P7664167305354400436

namespace A168235

/-- `∑[A063151(n+1)+6]` -/
def P7664167305354400436.Spec : Prop :=
  ∀ n, P7664167305354400436.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P6082401299546679474

`or(1, (n+2)*(A016969(n)+n)+2)`
-/

namespace A168235.P6082401299546679474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 2 : ℤ) * (A016969 n + (n : ℤ)) + 2)

end

end A168235.P6082401299546679474

namespace A168235

/-- `or(1, (n+2)*(A016969(n)+n)+2)` -/
def P6082401299546679474.Spec : Prop :=
  ∀ n, P6082401299546679474.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P11707902887909468938

`abs((n+2)*(A016945(n)+n+3)+1-n)`
-/

namespace A168235.P11707902887909468938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * (A016945 n + (n + 3 : ℤ)) + 1 - (n : ℤ)|

end

end A168235.P11707902887909468938

namespace A168235

/-- `abs((n+2)*(A016945(n)+n+3)+1-n)` -/
def P11707902887909468938.Spec : Prop :=
  ∀ n, P11707902887909468938.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P9206577764503811745

`A100162(n+2)/(n+2)`
-/

namespace A168235.P9206577764503811745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100162 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A168235.P9206577764503811745

namespace A168235

/-- `A100162(n+2)/(n+2)` -/
def P9206577764503811745.Spec : Prop :=
  ∀ n, P9206577764503811745.a n = (A168235 (n + 1) : ℚ)

end A168235

/-! ## A168235.P15687123287298062651

`Δ[a(n-1)+A005892(n)+n]` with `a(0)=1`
-/

namespace A168235.P15687123287298062651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A005892 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168235.P15687123287298062651

namespace A168235

/-- `Δ[a(n-1)+A005892(n)+n]` -/
def P15687123287298062651.Spec : Prop :=
  ∀ n, P15687123287298062651.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P13333126208618237681

`Δ[A063521(n)+A003154(n+1)]`
-/

namespace A168235.P13333126208618237681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063521 n + A003154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168235.P13333126208618237681

namespace A168235

/-- `Δ[A063521(n)+A003154(n+1)]` -/
def P13333126208618237681.Spec : Prop :=
  ∀ n, P13333126208618237681.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P11800819077052702464

`Δ[A214659(n+1)]`
-/

namespace A168235.P11800819077052702464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168235.P11800819077052702464

namespace A168235

/-- `Δ[A214659(n+1)]` -/
def P11800819077052702464.Spec : Prop :=
  ∀ n, P11800819077052702464.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P7639631631091209481

`abs(A051866(n+2)+n²-1)`
-/

namespace A168235.P7639631631091209481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051866 (n + 2) + ((n ^ 2 : ℤ) - 1)|

end

end A168235.P7639631631091209481

namespace A168235

/-- `abs(A051866(n+2)+n²-1)` -/
def P7639631631091209481.Spec : Prop :=
  ∀ n, P7639631631091209481.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P11417496578497874599

`or(1, (A016921(n+2)+n)*(n+1)-n)`
-/

namespace A168235.P11417496578497874599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((A016921 (n + 2) + (n : ℤ)) * (n + 1 : ℤ) - (n : ℤ))

end

end A168235.P11417496578497874599

namespace A168235

/-- `or(1, (A016921(n+2)+n)*(n+1)-n)` -/
def P11417496578497874599.Spec : Prop :=
  ∀ n, P11417496578497874599.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P13812708899198360100

`abs((Δ[A000567(n+2)]+n)*(n+1)-n)`
-/

namespace A168235.P13812708899198360100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n + (n : ℤ)) * (n + 1 : ℤ) - (n : ℤ)|

end

end A168235.P13812708899198360100

namespace A168235

/-- `abs((Δ[A000567(n+2)]+n)*(n+1)-n)` -/
def P13812708899198360100.Spec : Prop :=
  ∀ n, P13812708899198360100.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P2540423216846427574

`or(1, A101425(2*n+1))`
-/

namespace A168235.P2540423216846427574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101425 (2 * n + 1))

end

end A168235.P2540423216846427574

namespace A168235

/-- `or(1, A101425(2*n+1))` -/
def P2540423216846427574.Spec : Prop :=
  ∀ n, P2540423216846427574.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P11981858257350989252

`A271937(2*(n+1))`
-/

namespace A168235.P11981858257350989252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 (2 * (n + 1))

end

end A168235.P11981858257350989252

namespace A168235

/-- `A271937(2*(n+1))` -/
def P11981858257350989252.Spec : Prop :=
  ∀ n, P11981858257350989252.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P13401896130110329763

`Δ[Δ[A111385(A005843(n+1))]]`
-/

namespace A168235.P13401896130110329763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111385 (A005843 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168235.P13401896130110329763

namespace A168235

/-- `Δ[Δ[A111385(A005843(n+1))]]` -/
def P13401896130110329763.Spec : Prop :=
  ∀ n, P13401896130110329763.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P1852886714537944724

`A008739(7*(n+1))`
-/

namespace A168235.P1852886714537944724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 (7 * (n + 1))

end

end A168235.P1852886714537944724

namespace A168235

/-- `A008739(7*(n+1))` -/
def P1852886714537944724.Spec : Prop :=
  ∀ n, P1852886714537944724.a n = A168235 (n + 1)

end A168235

/-! ## A168235.P15443956661880684093

`∑[A312655(3*n)+12]`
-/

namespace A168235.P15443956661880684093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 (3 * n) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168235.P15443956661880684093

namespace A168235

/-- `∑[A312655(3*n)+12]` -/
def P15443956661880684093.Spec : Prop :=
  ∀ n, P15443956661880684093.a n = A168235 (n + 1)

end A168235

/-!
# A168236: a(n) = (6*n - 3*(-1)^n - 1)/4.

The programs for A168236, the canonical program `A168236.P1241624258800015786` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168236 has offset 1).

The definition of A168236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*(n+1)-3*(-1)^(n+1)-1)/4` (program `A168236.P2882836042928031799`, by `A168236.P2882836042928031799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168236.P11926182535974865518

`ogf((2+x^2)/(1-x-x^2+x^3))`
-/

namespace A168236.P11926182535974865518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, -1, -1, 1] n

end

end A168236.P11926182535974865518

namespace A168236

/-- `ogf((2+x^2)/(1-x-x^2+x^3))` -/
def P11926182535974865518.Spec : Prop :=
  ∀ n, P11926182535974865518.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P1241624258800015786

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168236

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1241624258800015786.Spec : Prop :=
  ∀ n, P1241624258800015786.a n = A168236 (n + 1)

theorem P1241624258800015786.correct : P1241624258800015786.Spec := by
  intro n
  simp only [A168236, Nat.add_sub_cancel]

end A168236

/-! ## A168236.P2882836042928031799

`(6*(n+1)-3*(-1)^(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168236.P2882836042928031799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1) - 1 : ℚ) / 4

end

end A168236.P2882836042928031799

namespace A168236

/-- `(6*(n+1)-3*(-1)^(n+1)-1)/4` -/
def P2882836042928031799.Spec : Prop :=
  ∀ n, P2882836042928031799.a n = (A168236 (n + 1) : ℚ)

theorem P2882836042928031799.correct : P2882836042928031799.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A168236, Nat.add_sub_cancel, A168236.P2882836042928031799.a, A168236.P1241624258800015786.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A168236, Nat.add_sub_cancel, A168236.P2882836042928031799.a, A168236.P1241624258800015786.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168236

/-! ## A168236.P9535703867963546455

`A016789(floor(n/2))`
-/

namespace A168236.P9535703867963546455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 ⌊(n : ℚ) / 2⌋.toNat

end

end A168236.P9535703867963546455

namespace A168236

/-- `A016789(floor(n/2))` -/
def P9535703867963546455.Spec : Prop :=
  ∀ n, P9535703867963546455.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P2836031773895008939

`3+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A168236.P2836031773895008939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  3 + a (n - 2)

end

end A168236.P2836031773895008939

namespace A168236

/-- `3+a(n-2)` -/
def P2836031773895008939.Spec : Prop :=
  ∀ n, (P2836031773895008939.a n : ℤ) = A168236 (n + 1)

end A168236

/-! ## A168236.P11838789072563952698

`ceil(3*or(1, n)/2)`
-/

namespace A168236.P11838789072563952698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((Nat.lor 1 n : ℚ) / 2)⌉

end

end A168236.P11838789072563952698

namespace A168236

/-- `ceil(3*or(1, n)/2)` -/
def P11838789072563952698.Spec : Prop :=
  ∀ n, P11838789072563952698.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P9177136263809026631

`round(3*or(1, n)/2)`
-/

namespace A168236.P9177136263809026631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((Nat.lor 1 n : ℚ) / 2))

end

end A168236.P9177136263809026631

namespace A168236

/-- `round(3*or(1, n)/2)` -/
def P9177136263809026631.Spec : Prop :=
  ∀ n, P9177136263809026631.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P10521552436737423812

`∑[3-a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A168236.P10521552436737423812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168236.P10521552436737423812

namespace A168236

/-- `∑[3-a(n-1)]` -/
def P10521552436737423812.Spec : Prop :=
  ∀ n, P10521552436737423812.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P1639391393334417082

`∑[∑[ogf((2+x^2)/(1+x))]]`
-/

namespace A168236.P1639391393334417082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168236.P1639391393334417082

namespace A168236

/-- `∑[∑[ogf((2+x^2)/(1+x))]]` -/
def P1639391393334417082.Spec : Prop :=
  ∀ n, P1639391393334417082.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P16261085504417800518

`floor(3*or(3, 2*n)/4)`
-/

namespace A168236.P16261085504417800518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((Nat.lor 3 (2 * n) : ℚ) / 4)⌋

end

end A168236.P16261085504417800518

namespace A168236

/-- `floor(3*or(3, 2*n)/4)` -/
def P16261085504417800518.Spec : Prop :=
  ∀ n, P16261085504417800518.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P5438094474322249631

`ceil(or(1, n)+(n+1)/2)`
-/

namespace A168236.P5438094474322249631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) + (n + 1 : ℚ) / 2⌉

end

end A168236.P5438094474322249631

namespace A168236

/-- `ceil(or(1, n)+(n+1)/2)` -/
def P5438094474322249631.Spec : Prop :=
  ∀ n, P5438094474322249631.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P8636405530924013013

`floor(or(1, n)+(n+2)/2)`
-/

namespace A168236.P8636405530924013013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A168236.P8636405530924013013

namespace A168236

/-- `floor(or(1, n)+(n+2)/2)` -/
def P8636405530924013013.Spec : Prop :=
  ∀ n, P8636405530924013013.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P12534245387801363532

`round(or(1, n)+(n+1)/2)`
-/

namespace A168236.P12534245387801363532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) + (n + 1 : ℚ) / 2)

end

end A168236.P12534245387801363532

namespace A168236

/-- `round(or(1, n)+(n+1)/2)` -/
def P12534245387801363532.Spec : Prop :=
  ∀ n, P12534245387801363532.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P17496774382038544519

`ceil(xor(1, n)/2+n+1)`
-/

namespace A168236.P17496774382038544519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2 + (n + 1 : ℚ)⌉

end

end A168236.P17496774382038544519

namespace A168236

/-- `ceil(xor(1, n)/2+n+1)` -/
def P17496774382038544519.Spec : Prop :=
  ∀ n, P17496774382038544519.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P10597355706586580417

`round(xor(1, n)/2+n+1)`
-/

namespace A168236.P10597355706586580417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2 + (n + 1 : ℚ))

end

end A168236.P10597355706586580417

namespace A168236

/-- `round(xor(1, n)/2+n+1)` -/
def P10597355706586580417.Spec : Prop :=
  ∀ n, P10597355706586580417.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P2908855171298783335

`floor(xor(1, n)+(n+3)/2)`
-/

namespace A168236.P2908855171298783335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) + (n + 3 : ℚ) / 2⌋

end

end A168236.P2908855171298783335

namespace A168236

/-- `floor(xor(1, n)+(n+3)/2)` -/
def P2908855171298783335.Spec : Prop :=
  ∀ n, P2908855171298783335.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P12196332765622946841

`floor(gcd(2, n)+n/2+n)`
-/

namespace A168236.P12196332765622946841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 n : ℚ) + ((n : ℚ) / 2 + (n : ℚ))⌋

end

end A168236.P12196332765622946841

namespace A168236

/-- `floor(gcd(2, n)+n/2+n)` -/
def P12196332765622946841.Spec : Prop :=
  ∀ n, P12196332765622946841.a n = A168236 (n + 1)

end A168236

/-! ## A168236.P10293981642048954238

`∑[log2(runs[val(2*n+1, 9)])]`
-/

namespace A168236.P10293981642048954238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 9

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168236.P10293981642048954238

namespace A168236

/-- `∑[log2(runs[val(2*n+1, 9)])]` -/
def P10293981642048954238.Spec : Prop :=
  ∀ n, P10293981642048954238.a n = (A168236 (n + 1) : ℝ)

end A168236

/-! ## A168236.P15224841848156209156

`(3*(n-n%2)+4)/2`
-/

namespace A168236.P15224841848156209156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((n : ℤ) - ((n % 2 : ℕ) : ℤ)) + 4 : ℚ) / 2

end

end A168236.P15224841848156209156

namespace A168236

/-- `(3*(n-n%2)+4)/2` -/
def P15224841848156209156.Spec : Prop :=
  ∀ n, P15224841848156209156.a n = (A168236 (n + 1) : ℚ)

end A168236

/-! ## A168236.P18231892711108394155

`3*n-(a(n-1)-1)` with `a(0)=2`
-/

namespace A168236.P18231892711108394155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 * n : ℤ) - (a (n - 1) - 1)

end

end A168236.P18231892711108394155

namespace A168236

/-- `3*n-(a(n-1)-1)` -/
def P18231892711108394155.Spec : Prop :=
  ∀ n, P18231892711108394155.a n = A168236 (n + 1)

end A168236

/-!
# A168237: a(n) = (6*n + 3*(-1)^n - 3)/4.

The programs for A168237, the canonical program `A168237.P12346762420407185560` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168237 has offset 0).

The definition of A168237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168237.P12346762420407185560

`3*floor(n/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168237

/-- `3*floor(n/2)` -/
def P12346762420407185560.Spec : Prop :=
  ∀ n, P12346762420407185560.a n = A168237 n

theorem P12346762420407185560.correct : P12346762420407185560.Spec := by
  intro n
  simp only [A168237]

end A168237

/-! ## A168237.P6030035561516829548

`ogf(3x^2/(1-x-x^2+x^3))`
-/

namespace A168237.P6030035561516829548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -1, -1, 1] n

end

end A168237.P6030035561516829548

namespace A168237

/-- `ogf(3x^2/(1-x-x^2+x^3))` -/
def P6030035561516829548.Spec : Prop :=
  ∀ n, P6030035561516829548.a n = A168237 n

end A168237

/-! ## A168237.P16144499980385937737

`(6*n+3*(-1)^n-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168237.P16144499980385937737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) + 3 * (-1) ^ n - 3 : ℚ) / 4

end

end A168237.P16144499980385937737

namespace A168237

/-- `(6*n+3*(-1)^n-3)/4` -/
def P16144499980385937737.Spec : Prop :=
  ∀ n, P16144499980385937737.a n = (A168237 n : ℚ)

end A168237

/-! ## A168237.P4517647422140119444

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A168237.P4517647422140119444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A168237.P4517647422140119444

namespace A168237

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P4517647422140119444.Spec : Prop :=
  ∀ n, P4517647422140119444.a n = A168237 n

end A168237

/-! ## A168237.P17256778466704476928

`3+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A168237.P17256778466704476928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 + a (n - 2)

end

end A168237.P17256778466704476928

namespace A168237

/-- `3+a(n-2)` -/
def P17256778466704476928.Spec : Prop :=
  ∀ n, (P17256778466704476928.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P10603551814336142411

`3*and(n, -2)/2`
-/

namespace A168237.P10603551814336142411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Int.land (n : ℤ) (-2) : ℚ) / 2

end

end A168237.P10603551814336142411

namespace A168237

/-- `3*and(n, -2)/2` -/
def P10603551814336142411.Spec : Prop :=
  ∀ n, P10603551814336142411.a n = (A168237 n : ℚ)

end A168237

/-! ## A168237.P17236624173283104809

`∑[xor(1, gcd(2, n))]-3`
-/

namespace A168237.P17236624173283104809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A168237.P17236624173283104809

namespace A168237

/-- `∑[xor(1, gcd(2, n))]-3` -/
def P17236624173283104809.Spec : Prop :=
  ∀ n, P17236624173283104809.a n = A168237 n

end A168237

/-! ## A168237.P593382812145764616

`∑[3*∑{p}[n, val(#, 2)]]`
-/

namespace A168237.P593382812145764616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P593382812145764616

namespace A168237

/-- `∑[3*∑{p}[n, val(#, 2)]]` -/
def P593382812145764616.Spec : Prop :=
  ∀ n, (P593382812145764616.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P3755087989824427287

`∑[3*val(∏{p}[n, #], 2)]`
-/

namespace A168237.P3755087989824427287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P3755087989824427287

namespace A168237

/-- `∑[3*val(∏{p}[n, #], 2)]` -/
def P3755087989824427287.Spec : Prop :=
  ∀ n, (P3755087989824427287.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P17062751557081829664

`∑[3*∑{p}[n, C(2, #)]]`
-/

namespace A168237.P17062751557081829664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P17062751557081829664

namespace A168237

/-- `∑[3*∑{p}[n, C(2, #)]]` -/
def P17062751557081829664.Spec : Prop :=
  ∀ n, (P17062751557081829664.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P3687480023668884795

`∑[∑{p}[n, val(#^3, 2)]]`
-/

namespace A168237.P3687480023668884795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (p ^ 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P3687480023668884795

namespace A168237

/-- `∑[∑{p}[n, val(#^3, 2)]]` -/
def P3687480023668884795.Spec : Prop :=
  ∀ n, (P3687480023668884795.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P3567150009489083136

`∑[val(∏{p}[n, #^3], 2)]`
-/

namespace A168237.P3567150009489083136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p ^ 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P3567150009489083136

namespace A168237

/-- `∑[val(∏{p}[n, #^3], 2)]` -/
def P3567150009489083136.Spec : Prop :=
  ∀ n, (P3567150009489083136.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P13970039873291675559

`∑[∑{p}[n, C(C(3, #), 2)]]`
-/

namespace A168237.P13970039873291675559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.choose 3 p) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P13970039873291675559

namespace A168237

/-- `∑[∑{p}[n, C(C(3, #), 2)]]` -/
def P13970039873291675559.Spec : Prop :=
  ∀ n, (P13970039873291675559.a n : ℤ) = A168237 n

end A168237

/-! ## A168237.P12111937762758199115

`∑[3-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A168237.P12111937762758199115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P12111937762758199115

namespace A168237

/-- `∑[3-a(n-1)]` -/
def P12111937762758199115.Spec : Prop :=
  ∀ n, P12111937762758199115.a n = A168237 n

end A168237

/-! ## A168237.P16323446587911086512

`3*(n-n%2)/2`
-/

namespace A168237.P16323446587911086512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((n : ℤ) - ((n % 2 : ℕ) : ℤ)) : ℚ) / 2

end

end A168237.P16323446587911086512

namespace A168237

/-- `3*(n-n%2)/2` -/
def P16323446587911086512.Spec : Prop :=
  ∀ n, P16323446587911086512.a n = (A168237 n : ℚ)

end A168237

/-! ## A168237.P12905400726974057166

`∑[(n²-1)%4]+1`
-/

namespace A168237.P12905400726974057166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168237.P12905400726974057166

namespace A168237

/-- `∑[(n²-1)%4]+1` -/
def P12905400726974057166.Spec : Prop :=
  ∀ n, P12905400726974057166.a n = A168237 n

end A168237

/-! ## A168237.P2445438762134503111

`1-∑[(1-n²)%4]`
-/

namespace A168237.P2445438762134503111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n ^ 2 : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P2445438762134503111

namespace A168237

/-- `1-∑[(1-n²)%4]` -/
def P2445438762134503111.Spec : Prop :=
  ∀ n, P2445438762134503111.a n = A168237 n

end A168237

/-! ## A168237.P5879348850567217700

`∑[gcd(4, n²)-1]-3`
-/

namespace A168237.P5879348850567217700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n ^ 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A168237.P5879348850567217700

namespace A168237

/-- `∑[gcd(4, n²)-1]-3` -/
def P5879348850567217700.Spec : Prop :=
  ∀ n, P5879348850567217700.a n = A168237 n

end A168237

/-! ## A168237.P6024539193657115809

`∑[and(3, n²-1)]-3`
-/

namespace A168237.P6024539193657115809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A168237.P6024539193657115809

namespace A168237

/-- `∑[and(3, n²-1)]-3` -/
def P6024539193657115809.Spec : Prop :=
  ∀ n, P6024539193657115809.a n = A168237 n

end A168237

/-! ## A168237.P7912186520082259915

`∑[3*char[lcm(2, n+1)]]`
-/

namespace A168237.P7912186520082259915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168237.P7912186520082259915

namespace A168237

/-- `∑[3*char[lcm(2, n+1)]]` -/
def P7912186520082259915.Spec : Prop :=
  ∀ n, (P7912186520082259915.a n : ℤ) = A168237 n

end A168237

/-!
# A168238: Number of different 0-moment rowing configurations for 4n rowers.

The programs for A168238, there is no canonical definition to state claims against.
-/

/-! ## A168238.P589240426150381780

`A063074(n+1)/2`
-/

namespace A168238.P589240426150381780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063074 (n + 1) : ℚ) / 2

end

end A168238.P589240426150381780

/-! ## A168238.P13658144805162197973

`Δ[∑[A063074(n)]/2]`
-/

namespace A168238.P13658144805162197973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063074 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168238.P13658144805162197973

/-! ## A168238.P2037162959980600559

`A029895(2*(n+1))/2`
-/

namespace A168238.P2037162959980600559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029895 (2 * (n + 1)) : ℚ) / 2

end

end A168238.P2037162959980600559

/-! ## A168238.P6615062636448128455

`round(A029895(n+2+n)/2)`
-/

namespace A168238.P6615062636448128455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A029895 (n + 2 + n) : ℚ) / 2)

end

end A168238.P6615062636448128455

/-! ## A168238.P7712425567775233784

`record[A029895(n)/(2-A270010(n))]`
-/

namespace A168238.P7712425567775233784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029895 n : ℚ) / (2 - A270010 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168238.P7712425567775233784

/-!
# A168240: a(n) = 13*n^2 + 7*n + 1.

The programs for A168240, the canonical program `A168240.P4961287680406946690` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168240 has offset 1).

The definition of A168240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*(n+1)²+7*(n+1)+1` (program `A168240.P4961287680406946690`, by `A168240.P4961287680406946690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168240.P15739195104898347565

`ogf((21+4x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A168240.P15739195104898347565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [21, 4, 1] [1, -3, 3, -1] n

end

end A168240.P15739195104898347565

namespace A168240

/-- `ogf((21+4x+x^2)/(1-3x+3x^2-x^3))` -/
def P15739195104898347565.Spec : Prop :=
  ∀ n, P15739195104898347565.a n = A168240 (n + 1)

end A168240

/-! ## A168240.P4961287680406946690

`13*(n+1)²+7*(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168240

/-- `13*(n+1)²+7*(n+1)+1` -/
def P4961287680406946690.Spec : Prop :=
  ∀ n, (P4961287680406946690.a n : ℤ) = A168240 (n + 1)

theorem P4961287680406946690.correct : P4961287680406946690.Spec := by
  intro n
  simp only [A168240, Nat.add_sub_cancel]

end A168240

/-! ## A168240.P8140399959630563878

`∑[a(n-1)+26]` with `a(0)=21, a(1)=46`
-/

namespace A168240.P8140399959630563878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 46] fun n f1 =>
  f1 (n - 1) + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168240.P8140399959630563878

namespace A168240

/-- `∑[a(n-1)+26]` -/
def P8140399959630563878.Spec : Prop :=
  ∀ n, (P8140399959630563878.a n : ℤ) = A168240 (n + 1)

end A168240

/-! ## A168240.P11071685923333005233

`ceil(A161935(2*n+3)/4)`
-/

namespace A168240.P11071685923333005233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161935 (2 * n + 3) : ℚ) / 4⌉

end

end A168240.P11071685923333005233

namespace A168240

/-- `ceil(A161935(2*n+3)/4)` -/
def P11071685923333005233.Spec : Prop :=
  ∀ n, P11071685923333005233.a n = A168240 (n + 1)

end A168240

/-! ## A168240.P6342990487068672758

`∑[A008592(2*(n+1))+A008458(n)]`
-/

namespace A168240.P6342990487068672758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (2 * (n + 1)) + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168240.P6342990487068672758

namespace A168240

/-- `∑[A008592(2*(n+1))+A008458(n)]` -/
def P6342990487068672758.Spec : Prop :=
  ∀ n, P6342990487068672758.a n = A168240 (n + 1)

end A168240

/-! ## A168240.P5130888167436990373

`∑[A298040(2*(n+1))+A008458(n)]`
-/

namespace A168240.P5130888167436990373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298040 (2 * (n + 1)) + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168240.P5130888167436990373

namespace A168240

/-- `∑[A298040(2*(n+1))+A008458(n)]` -/
def P5130888167436990373.Spec : Prop :=
  ∀ n, P5130888167436990373.a n = A168240 (n + 1)

end A168240

/-!
# A168241: n-th squarefree number plus n-th non-single or nonisolated number.

The programs for A168241, the canonical program `A168241.P2699333600308786319` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168241 has offset 1).

The definition of A168241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168241.P2699333600308786319

`A005117(n+1)+A167707(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A168241

/-- `A005117(n+1)+A167707(n+1)` -/
def P2699333600308786319.Spec : Prop :=
  ∀ n, P2699333600308786319.a n = A168241 (n + 1)

theorem P2699333600308786319.correct : P2699333600308786319.Spec := by
  intro n
  simp only [A168241, Nat.add_sub_cancel]

end A168241

/-! ## A168241.P2886543183108462069

`A167707(n+1)+comp[A105570(n)]`
-/

namespace A168241.P2886543183108462069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A168241.P2886543183108462069

namespace A168241

/-- `A167707(n+1)+comp[A105570(n)]` -/
def P2886543183108462069.Spec : Prop :=
  ∀ n, P2886543183108462069.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P17661135999211058454

`A167707(n+1)+A077377(n+1)`
-/

namespace A168241.P17661135999211058454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + A077377 (n + 1)

end

end A168241.P17661135999211058454

namespace A168241

/-- `A167707(n+1)+A077377(n+1)` -/
def P17661135999211058454.Spec : Prop :=
  ∀ n, P17661135999211058454.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P4738071890146319966

`A243348(n+1)+A168045(n+1)`
-/

namespace A168241.P4738071890146319966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + A168045 (n + 1)

end

end A168241.P4738071890146319966

namespace A168241

/-- `A243348(n+1)+A168045(n+1)` -/
def P4738071890146319966.Spec : Prop :=
  ∀ n, P4738071890146319966.a n = A168241 (n + 1)

theorem P4738071890146319966.correct : P4738071890146319966.Spec := by
  intro n
  simp only [A168241, Nat.add_sub_cancel, A168241.P4738071890146319966.a, A168241.P2699333600308786319.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A167707, A167707.P14412773003900474856.f1, A167707.P14412773003900474856.f2, A167707.P14412773003900474856.a, A168045, A168045.P1578608336335439883.a, A243348, A243348.P5579662287376898014.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A093178, A093178.P12085837158869515185.a, A283265, A283265.P16513607417697021488.a, A292438, A292438.P17678663792653604288.a, A129950, A129950.P15295767996041627134.a, A323162, A323162.P4199434762193306250.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A164292, A164292.P14089630238313038939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168241

/-! ## A168241.P5933222198534329690

`A348506(n+1)+A167707(n+1)`
-/

namespace A168241.P5933222198534329690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1) + A167707 (n + 1)

end

end A168241.P5933222198534329690

namespace A168241

/-- `A348506(n+1)+A167707(n+1)` -/
def P5933222198534329690.Spec : Prop :=
  ∀ n, P5933222198534329690.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P2536629491788821122

`A367801(n+1)+A167707(n+1)`
-/

namespace A168241.P2536629491788821122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1) + A167707 (n + 1)

end

end A168241.P2536629491788821122

namespace A168241

/-- `A367801(n+1)+A167707(n+1)` -/
def P2536629491788821122.Spec : Prop :=
  ∀ n, P2536629491788821122.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P12824668052106779670

`A167707(n+1)+record[A007913(n+1)]`
-/

namespace A168241.P12824668052106779670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168241.P12824668052106779670

namespace A168241

/-- `A167707(n+1)+record[A007913(n+1)]` -/
def P12824668052106779670.Spec : Prop :=
  ∀ n, P12824668052106779670.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P13893582006396732460

`A167707(n+1)+eq[1, abs(A008683(n+1))]+1`
-/

namespace A168241.P13893582006396732460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A168241.P13893582006396732460

namespace A168241

/-- `A167707(n+1)+eq[1, abs(A008683(n+1))]+1` -/
def P13893582006396732460.Spec : Prop :=
  ∀ n, P13893582006396732460.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P15019766595376298826

`A167707(n+1)+eq[A001222(n+1), A001221(n+1)]+1`
-/

namespace A168241.P15019766595376298826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℤ)

end

end A168241.P15019766595376298826

namespace A168241

/-- `A167707(n+1)+eq[A001222(n+1), A001221(n+1)]+1` -/
def P15019766595376298826.Spec : Prop :=
  ∀ n, P15019766595376298826.a n = A168241 (n + 1)

end A168241

/-! ## A168241.P705326923992633551

`A167887(n+1)-A168249(n+1)`
-/

namespace A168241.P705326923992633551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167887 (n + 1) - A168249 (n + 1)

end

end A168241.P705326923992633551

namespace A168241

/-- `A167887(n+1)-A168249(n+1)` -/
def P705326923992633551.Spec : Prop :=
  ∀ n, P705326923992633551.a n = A168241 (n + 1)

theorem P705326923992633551.correct : P705326923992633551.Spec := by
  intro n
  simp only [A168241, Nat.add_sub_cancel, A168241.P705326923992633551.a, A168241.P2699333600308786319.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A167707, A167707.P14412773003900474856.f1, A167707.P14412773003900474856.f2, A167707.P14412773003900474856.a, A167887, A167887.P6811191950323054762.a, A168249, A168249.P10517048205738276799.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A093178, A093178.P12085837158869515185.a, A167706, A167706.P11488542031625927943.f1, A167706.P11488542031625927943.f2, A167706.P11488542031625927943.a, A283265, A283265.P16513607417697021488.a, A292438, A292438.P17678663792653604288.a, A007510, A007510.P12699692636498883418.a, A014574, A014574.P4587706211531852143.a, A129950, A129950.P15295767996041627134.a, A323162, A323162.P4199434762193306250.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A164292, A164292.P14089630238313038939.a, A176656, A176656.P13726643682834785047.f1, A176656.P13726643682834785047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168241

/-!
# A168243: Expansion of e.g.f. Product_{i>=1} (1 + x^i)^(1/i).

The programs for A168243, there is no canonical definition to state claims against.
-/

/-! ## A168243.P13916344751157073130

`A276746(n)+A007814(A030019(n))`
-/

namespace A168243.P13916344751157073130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276746 n + A007814 (A030019 n).toNat

end

end A168243.P13916344751157073130

/-! ## A168243.P9658883586327843590

`A276746(n)+A048105(A110170(n))`
-/

namespace A168243.P9658883586327843590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276746 n + A048105 (A110170 n).toNat

end

end A168243.P9658883586327843590

/-! ## A168243.P5692385637520335358

`A276746(n)+A049084(A276747(n))`
-/

namespace A168243.P5692385637520335358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276746 n + A049084 (A276747 n).toNat

end

end A168243.P5692385637520335358

/-!
# A168244: a(n) = 1 + 3*n - 2*n^2.

The programs for A168244, the canonical program `A168244.P12441156488712508968` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168244 has offset 0).

The definition of A168244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3*n-2*n²` (program `A168244.P12441156488712508968`, by `A168244.P12441156488712508968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168244.P483039871593226348

`ogf((1-x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A168244.P483039871593226348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, -3, 3, -1] n

end

end A168244.P483039871593226348

namespace A168244

/-- `ogf((1-x-4x^2)/(1-3x+3x^2-x^3))` -/
def P483039871593226348.Spec : Prop :=
  ∀ n, P483039871593226348.a n = A168244 n

end A168244

/-! ## A168244.P12441156488712508968

`1+3*n-2*n²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168244

/-- `1+3*n-2*n²` -/
def P12441156488712508968.Spec : Prop :=
  ∀ n, P12441156488712508968.a n = A168244 n

theorem P12441156488712508968.correct : P12441156488712508968.Spec := by
  intro n
  simp only [A168244]

end A168244

/-! ## A168244.P15438537412527301118

`∑[a(n-1)-4]` with `a(0)=1, a(1)=1`
-/

namespace A168244.P15438537412527301118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168244.P15438537412527301118

namespace A168244

/-- `∑[a(n-1)-4]` -/
def P15438537412527301118.Spec : Prop :=
  ∀ n, P15438537412527301118.a n = A168244 n

end A168244

/-! ## A168244.P2106124161486888104

`n+1-4*C(n, 2)`
-/

namespace A168244.P2106124161486888104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (4 * Nat.choose n 2 : ℤ)

end

end A168244.P2106124161486888104

namespace A168244

/-- `n+1-4*C(n, 2)` -/
def P2106124161486888104.Spec : Prop :=
  ∀ n, P2106124161486888104.a n = A168244 n

theorem P2106124161486888104.correct : P2106124161486888104.Spec := by
  intro n
  simp only [A168244, Nat.add_sub_cancel, A168244.P2106124161486888104.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168244

/-! ## A168244.P11261502670264454176

`∑[3-lcm(2, 1-2*n)]`
-/

namespace A168244.P11261502670264454176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Int.lcm 2 (1 - (2 * n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168244.P11261502670264454176

namespace A168244

/-- `∑[3-lcm(2, 1-2*n)]` -/
def P11261502670264454176.Spec : Prop :=
  ∀ n, P11261502670264454176.a n = A168244 n

end A168244

/-! ## A168244.P8061904262319554894

`xor((n-2)*Δ[n²], -1)`
-/

namespace A168244.P8061904262319554894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (-1)

end

end A168244.P8061904262319554894

namespace A168244

/-- `xor((n-2)*Δ[n²], -1)` -/
def P8061904262319554894.Spec : Prop :=
  ∀ n, P8061904262319554894.a n = A168244 n

end A168244

/-! ## A168244.P9033867191645296871

`Δ[∑[n²]-lcm(n, (n-1)²)]`
-/

namespace A168244.P9033867191645296871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Int.lcm (n : ℤ) (((n : ℤ) - 1) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168244.P9033867191645296871

namespace A168244

/-- `Δ[∑[n²]-lcm(n, (n-1)²)]` -/
def P9033867191645296871.Spec : Prop :=
  ∀ n, P9033867191645296871.a n = A168244 n

end A168244

/-! ## A168244.P18291598191642160132

`-((n-2)*or(1, 2*n)+1)`
-/

namespace A168244.P18291598191642160132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2) * (Nat.lor 1 (2 * n) : ℤ) + 1)

end

end A168244.P18291598191642160132

namespace A168244

/-- `-((n-2)*or(1, 2*n)+1)` -/
def P18291598191642160132.Spec : Prop :=
  ∀ n, P18291598191642160132.a n = A168244 n

end A168244

/-! ## A168244.P4686822784080351710

`-((n-2)*xor(1, 2*n)+1)`
-/

namespace A168244.P4686822784080351710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2) * (Nat.xor 1 (2 * n) : ℤ) + 1)

end

end A168244.P4686822784080351710

namespace A168244

/-- `-((n-2)*xor(1, 2*n)+1)` -/
def P4686822784080351710.Spec : Prop :=
  ∀ n, P4686822784080351710.a n = A168244 n

end A168244

/-! ## A168244.P11877614066526577181

`floor(a(n-1)+5-4*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168244.P11877614066526577181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (5 - (4 * n : ℤ))

end

end A168244.P11877614066526577181

namespace A168244

/-- `floor(a(n-1)+5-4*n)` -/
def P11877614066526577181.Spec : Prop :=
  ∀ n, P11877614066526577181.a n = A168244 n

theorem P11877614066526577181.correct : P11877614066526577181.Spec := by
  intro n
  induction n with
  | zero => simp [A168244, A168244.P11877614066526577181.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A168244, Nat.add_sub_cancel, A168244.P11877614066526577181.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A168244

/-! ## A168244.P5791653805840182040

`floor(2*n-(C(2*n, 2)-ϕ))`
-/

namespace A168244.P5791653805840182040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) - ((Nat.choose (2 * n) 2 : ℝ) - Real.goldenRatio)⌋

end

end A168244.P5791653805840182040

namespace A168244

/-- `floor(2*n-(C(2*n, 2)-ϕ))` -/
def P5791653805840182040.Spec : Prop :=
  ∀ n, P5791653805840182040.a n = A168244 n

end A168244

/-! ## A168244.P3354125129476465059

`4*((a(n-1)+5)/4-n)` with `a(0)=1`
-/

namespace A168244.P3354125129476465059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((a (n - 1) + 5) / 4 - (n : ℚ))

end

end A168244.P3354125129476465059

namespace A168244

/-- `4*((a(n-1)+5)/4-n)` -/
def P3354125129476465059.Spec : Prop :=
  ∀ n, P3354125129476465059.a n = (A168244 n : ℚ)

theorem P3354125129476465059.correct : P3354125129476465059.Spec := by
  intro n
  induction n with
  | zero => simp [A168244, A168244.P3354125129476465059.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A168244, Nat.add_sub_cancel, A168244.P3354125129476465059.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A168244

/-! ## A168244.P17952109626465392277

`floor(4*(2-n)-(3-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168244.P17952109626465392277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (2 - (n : ℤ)) - (3 - a (n - 1))

end

end A168244.P17952109626465392277

namespace A168244

/-- `floor(4*(2-n)-(3-a(n-1)))` -/
def P17952109626465392277.Spec : Prop :=
  ∀ n, P17952109626465392277.a n = A168244 n

theorem P17952109626465392277.correct : P17952109626465392277.Spec := by
  intro n
  induction n with
  | zero => simp [A168244, A168244.P17952109626465392277.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A168244, Nat.add_sub_cancel, A168244.P17952109626465392277.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A168244

/-! ## A168244.P16587281182026958017

`round(2*n-(n-1)/acot(2*n+1))`
-/

namespace A168244.P16587281182026958017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) - ((n : ℤ) - 1 : ℝ) / SequenceMachineLib.acot (2 * n + 1 : ℝ))

end

end A168244.P16587281182026958017

namespace A168244

/-- `round(2*n-(n-1)/acot(2*n+1))` -/
def P16587281182026958017.Spec : Prop :=
  ∀ n, P16587281182026958017.a n = A168244 n

end A168244

/-! ## A168244.P12421464372066500631

`-(gcd(n, n+1)+(2*n+1)*(n-2))`
-/

namespace A168244.P12421464372066500631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((Nat.gcd n (n + 1) : ℤ) + (2 * n + 1 : ℤ) * ((n : ℤ) - 2))

end

end A168244.P12421464372066500631

namespace A168244

/-- `-(gcd(n, n+1)+(2*n+1)*(n-2))` -/
def P12421464372066500631.Spec : Prop :=
  ∀ n, P12421464372066500631.a n = A168244 n

theorem P12421464372066500631.correct : P12421464372066500631.Spec := by
  intro n
  simp only [A168244, Nat.add_sub_cancel, A168244.P12421464372066500631.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A168244

/-! ## A168244.P4539940558075137575

`2*(a(n-1)-2-a(n-2)/2)` with `a(0)=1, a(1)=2`
-/

namespace A168244.P4539940558075137575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - 2 - a (n - 2) / 2)

end

end A168244.P4539940558075137575

namespace A168244

/-- `2*(a(n-1)-2-a(n-2)/2)` -/
def P4539940558075137575.Spec : Prop :=
  ∀ n, P4539940558075137575.a n = (A168244 n : ℚ)

theorem P4539940558075137575.correct : P4539940558075137575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168244, Nat.add_sub_cancel, A168244.P4539940558075137575.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A168244, Nat.add_sub_cancel, A168244.P4539940558075137575.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168244

/-! ## A168244.P8971092020636926988

`-((n-2)*and(2*n+1, 2*n)+n-1)`
-/

namespace A168244.P8971092020636926988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 2) * (Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 1))

end

end A168244.P8971092020636926988

namespace A168244

/-- `-((n-2)*and(2*n+1, 2*n)+n-1)` -/
def P8971092020636926988.Spec : Prop :=
  ∀ n, P8971092020636926988.a n = A168244 n

end A168244

/-! ## A168244.P7171736075907347751

`(n+1-(n-1)*2*n)*and(1, 2*n+1)`
-/

namespace A168244.P7171736075907347751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((n : ℤ) - 1) * (2 * n : ℤ)) * (Nat.land 1 (2 * n + 1) : ℤ)

end

end A168244.P7171736075907347751

namespace A168244

/-- `(n+1-(n-1)*2*n)*and(1, 2*n+1)` -/
def P7171736075907347751.Spec : Prop :=
  ∀ n, P7171736075907347751.a n = A168244 n

theorem P7171736075907347751.correct : P7171736075907347751.Spec := by
  intro n
  simp only [A168244, Nat.add_sub_cancel, A168244.P7171736075907347751.a, A168244.P12441156488712508968.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A168244

/-! ## A168244.P8888032270921400336

`∑{#}[2*n, 2-((-1)^#+n)]`
-/

namespace A168244.P8888032270921400336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 - ((-1) ^ k + (n : ℤ)))

end

end A168244.P8888032270921400336

namespace A168244

/-- `∑{#}[2*n, 2-((-1)^#+n)]` -/
def P8888032270921400336.Spec : Prop :=
  ∀ n, P8888032270921400336.a n = A168244 n

end A168244

/-!
# A168245: prime(prime(n+1))-2*prime(n).

The programs for A168245, the canonical program `A168245.P15876759879409695683` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168245 has offset 1).

The definition of A168245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(n+2))-2*A000040(n+1)` (program `A168245.P15876759879409695683`, by `A168245.P15876759879409695683.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168245.P5546774106743624338

`A006450(n+2)-A100484(n+1)`
-/

namespace A168245.P5546774106743624338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - A100484 (n + 1)

end

end A168245.P5546774106743624338

namespace A168245

/-- `A006450(n+2)-A100484(n+1)` -/
def P5546774106743624338.Spec : Prop :=
  ∀ n, P5546774106743624338.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P15876759879409695683

`A000040(A000040(n+2))-2*A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168245

/-- `A000040(A000040(n+2))-2*A000040(n+1)` -/
def P15876759879409695683.Spec : Prop :=
  ∀ n, P15876759879409695683.a n = A168245 (n + 1)

theorem P15876759879409695683.correct : P15876759879409695683.Spec := by
  intro n
  simp only [A168245, Nat.add_sub_cancel]

end A168245

/-! ## A168245.P66760186584754721

`A006450(n+2)-2*A000040(n+1)`
-/

namespace A168245.P66760186584754721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - 2 * A000040 (n + 1)

end

end A168245.P66760186584754721

namespace A168245

/-- `A006450(n+2)-2*A000040(n+1)` -/
def P66760186584754721.Spec : Prop :=
  ∀ n, P66760186584754721.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P17308859987752693115

`A066066(n+1)+A006450(n+2)-A031215(n+1)`
-/

namespace A168245.P17308859987752693115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + (A006450 (n + 2) - A031215 (n + 1))

end

end A168245.P17308859987752693115

namespace A168245

/-- `A066066(n+1)+A006450(n+2)-A031215(n+1)` -/
def P17308859987752693115.Spec : Prop :=
  ∀ n, P17308859987752693115.a n = A168245 (n + 1)

theorem P17308859987752693115.correct : P17308859987752693115.Spec := by
  intro n
  simp only [A168245, Nat.add_sub_cancel, A168245.P17308859987752693115.a, A168245.P15876759879409695683.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A031215, A031215.P2952175553723239727.a, A066066, A066066.P16664765326660587690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168245

/-! ## A168245.P6235672024159588262

`A006450(n+2)-2*A008578(n+2)`
-/

namespace A168245.P6235672024159588262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - 2 * A008578 (n + 2)

end

end A168245.P6235672024159588262

namespace A168245

/-- `A006450(n+2)-2*A008578(n+2)` -/
def P6235672024159588262.Spec : Prop :=
  ∀ n, P6235672024159588262.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P8844439958937127480

`A006450(n+2)-2*A182986(n+2)`
-/

namespace A168245.P8844439958937127480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 2) - 2 * A182986 (n + 2)

end

end A168245.P8844439958937127480

namespace A168245

/-- `A006450(n+2)-2*A182986(n+2)` -/
def P8844439958937127480.Spec : Prop :=
  ∀ n, P8844439958937127480.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P10205491658818739676

`A000040(A065091(n+1))-A100484(n+1)`
-/

namespace A168245.P10205491658818739676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065091 (n + 1)).toNat - A100484 (n + 1)

end

end A168245.P10205491658818739676

namespace A168245

/-- `A000040(A065091(n+1))-A100484(n+1)` -/
def P10205491658818739676.Spec : Prop :=
  ∀ n, P10205491658818739676.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P1994188825655395237

`A000040(A000040(n+2))-A100484(n+1)`
-/

namespace A168245.P1994188825655395237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - A100484 (n + 1)

end

end A168245.P1994188825655395237

namespace A168245

/-- `A000040(A000040(n+2))-A100484(n+1)` -/
def P1994188825655395237.Spec : Prop :=
  ∀ n, P1994188825655395237.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P8723844312626044828

`A000040(A000040(n+2))-A001747(n+2)`
-/

namespace A168245.P8723844312626044828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - A001747 (n + 2)

end

end A168245.P8723844312626044828

namespace A168245

/-- `A000040(A000040(n+2))-A001747(n+2)` -/
def P8723844312626044828.Spec : Prop :=
  ∀ n, P8723844312626044828.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P7715161673126153565

`A006005(A006005(n+2))-A001747(n+2)`
-/

namespace A168245.P7715161673126153565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A006005 (n + 2)).toNat - A001747 (n + 2)

end

end A168245.P7715161673126153565

namespace A168245

/-- `A006005(A006005(n+2))-A001747(n+2)` -/
def P7715161673126153565.Spec : Prop :=
  ∀ n, P7715161673126153565.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P17614448636449111970

`A000040(A000040(n+2))-record[A061228(n+2)]`
-/

namespace A168245.P17614448636449111970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P17614448636449111970

namespace A168245

/-- `A000040(A000040(n+2))-record[A061228(n+2)]` -/
def P17614448636449111970.Spec : Prop :=
  ∀ n, P17614448636449111970.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P14200713993397280364

`A000040(A000040(n+2))-record[A074320(n+2)]`
-/

namespace A168245.P14200713993397280364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P14200713993397280364

namespace A168245

/-- `A000040(A000040(n+2))-record[A074320(n+2)]` -/
def P14200713993397280364.Spec : Prop :=
  ∀ n, P14200713993397280364.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P4059910239747667266

`A000040(A000040(n+2))-record[A074828(n+2)]`
-/

namespace A168245.P4059910239747667266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P4059910239747667266

namespace A168245

/-- `A000040(A000040(n+2))-record[A074828(n+2)]` -/
def P4059910239747667266.Spec : Prop :=
  ∀ n, P4059910239747667266.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P8349413882831086930

`A000040(A000040(n+2))-record[A143545(n+2)]`
-/

namespace A168245.P8349413882831086930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P8349413882831086930

namespace A168245

/-- `A000040(A000040(n+2))-record[A143545(n+2)]` -/
def P8349413882831086930.Spec : Prop :=
  ∀ n, P8349413882831086930.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P18199694914359259040

`A000040(A000040(n+2))-record[A159475(n+2)]`
-/

namespace A168245.P18199694914359259040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P18199694914359259040

namespace A168245

/-- `A000040(A000040(n+2))-record[A159475(n+2)]` -/
def P18199694914359259040.Spec : Prop :=
  ∀ n, P18199694914359259040.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P10242246543003499657

`A000040(A000040(n+2))-record[A243502(n+2)]`
-/

namespace A168245.P10242246543003499657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243502 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P10242246543003499657

namespace A168245

/-- `A000040(A000040(n+2))-record[A243502(n+2)]` -/
def P10242246543003499657.Spec : Prop :=
  ∀ n, P10242246543003499657.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P12854409491694339868

`A000040(A000040(n+2))-record[A251561(n+2)]`
-/

namespace A168245.P12854409491694339868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251561 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P12854409491694339868

namespace A168245

/-- `A000040(A000040(n+2))-record[A251561(n+2)]` -/
def P12854409491694339868.Spec : Prop :=
  ∀ n, P12854409491694339868.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P15942079200691404815

`A000040(A000040(n+2))-record[A256415(n+2)]`
-/

namespace A168245.P15942079200691404815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168245.P15942079200691404815

namespace A168245

/-- `A000040(A000040(n+2))-record[A256415(n+2)]` -/
def P15942079200691404815.Spec : Prop :=
  ∀ n, P15942079200691404815.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P7493706399971532106

`A000040(A045344(n+1))-lcm(2, A000040(n+1))`
-/

namespace A168245.P7493706399971532106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A045344 (n + 1)).toNat - (Int.lcm 2 (A000040 (n + 1)) : ℤ)

end

end A168245.P7493706399971532106

namespace A168245

/-- `A000040(A045344(n+1))-lcm(2, A000040(n+1))` -/
def P7493706399971532106.Spec : Prop :=
  ∀ n, P7493706399971532106.a n = A168245 (n + 1)

end A168245

/-! ## A168245.P4335857357587474820

`A000040(A000040(n+2))-A005843(A000040(n+1))`
-/

namespace A168245.P4335857357587474820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 2)).toNat - A005843 (A000040 (n + 1)).toNat

end

end A168245.P4335857357587474820

namespace A168245

/-- `A000040(A000040(n+2))-A005843(A000040(n+1))` -/
def P4335857357587474820.Spec : Prop :=
  ∀ n, P4335857357587474820.a n = A168245 (n + 1)

end A168245

/-!
# A168246: Inverse Weigh transform of n!.

The programs for A168246, there is no canonical definition to state claims against.
-/

/-! ## A168246.P14808448380620306051

`∑{d}[n+1, A036987(#-1)*A112354((n+1)/#)]`
-/

namespace A168246.P14808448380620306051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A112354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A168246.P14808448380620306051

/-! ## A168246.P7220677566753239672

`A110654(A158094(n+1)+A112354(n+1))`
-/

namespace A168246.P7220677566753239672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A158094 (n + 1) + A112354 (n + 1)).toNat

end

end A168246.P7220677566753239672

/-!
# A168248: a(n) = A168174(n)-10^12.

The programs for A168248, there is no canonical definition to state claims against.
-/

/-! ## A168248.P8658073647500995270

`A168174(n+1)-10^12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168248.P8658073647500995270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168174 (n + 1) - (10 ^ 12 : ℤ)

end

end A168248.P8658073647500995270

/-! ## A168248.P14314070987018930429

`A168174(n+1)%A250863(A160338(n+1))`
-/

namespace A168248.P14314070987018930429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168174 (n + 1)) (A250863 (A160338 (n + 1)).toNat)

end

end A168248.P14314070987018930429

/-!
# A168249: n-th single or isolated number minus n-th squarefree number.

The programs for A168249, the canonical program `A168249.P10517048205738276799` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168249 has offset 1).

The definition of A168249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168249.P10517048205738276799

`A167706(n+1)-A005117(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168249

/-- `A167706(n+1)-A005117(n+1)` -/
def P10517048205738276799.Spec : Prop :=
  ∀ n, P10517048205738276799.a n = A168249 (n + 1)

theorem P10517048205738276799.correct : P10517048205738276799.Spec := by
  intro n
  simp only [A168249, Nat.add_sub_cancel]

end A168249

/-! ## A168249.P17349180178481604840

`A167706(n+1)-A077377(n+1)`
-/

namespace A168249.P17349180178481604840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A077377 (n + 1)

end

end A168249.P17349180178481604840

namespace A168249

/-- `A167706(n+1)-A077377(n+1)` -/
def P17349180178481604840.Spec : Prop :=
  ∀ n, P17349180178481604840.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P11073055799552848687

`A168343(n+1)-A243348(n+1)`
-/

namespace A168249.P11073055799552848687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168343 (n + 1) - A243348 (n + 1)

end

end A168249.P11073055799552848687

namespace A168249

/-- `A168343(n+1)-A243348(n+1)` -/
def P11073055799552848687.Spec : Prop :=
  ∀ n, P11073055799552848687.a n = A168249 (n + 1)

theorem P11073055799552848687.correct : P11073055799552848687.Spec := by
  intro n
  simp only [A168249, Nat.add_sub_cancel, A168249.P11073055799552848687.a, A168249.P10517048205738276799.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A167706, A167706.P11488542031625927943.f1, A167706.P11488542031625927943.f2, A167706.P11488542031625927943.a, A168343, A168343.P10702448307998344180.a, A243348, A243348.P5579662287376898014.a, A007510, A007510.P12699692636498883418.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014574, A014574.P4587706211531852143.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A176656, A176656.P13726643682834785047.f1, A176656.P13726643682834785047.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A334142, A334142.P15450815124474884519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168249

/-! ## A168249.P12718694363471361802

`A167706(n+1)-A348506(n+1)`
-/

namespace A168249.P12718694363471361802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A348506 (n + 1)

end

end A168249.P12718694363471361802

namespace A168249

/-- `A167706(n+1)-A348506(n+1)` -/
def P12718694363471361802.Spec : Prop :=
  ∀ n, P12718694363471361802.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P10219273737513646863

`A167706(n+1)-A367801(n+1)`
-/

namespace A168249.P10219273737513646863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A367801 (n + 1)

end

end A168249.P10219273737513646863

namespace A168249

/-- `A167706(n+1)-A367801(n+1)` -/
def P10219273737513646863.Spec : Prop :=
  ∀ n, P10219273737513646863.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P2022205728985007711

`A167706(n+1)-A076144(n+2)`
-/

namespace A168249.P2022205728985007711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A076144 (n + 2)

end

end A168249.P2022205728985007711

namespace A168249

/-- `A167706(n+1)-A076144(n+2)` -/
def P2022205728985007711.Spec : Prop :=
  ∀ n, P2022205728985007711.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P6741895372606073408

`A167706(n+1)-record[A007913(n+1)]`
-/

namespace A168249.P6741895372606073408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168249.P6741895372606073408

namespace A168249

/-- `A167706(n+1)-record[A007913(n+1)]` -/
def P6741895372606073408.Spec : Prop :=
  ∀ n, P6741895372606073408.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P8846434647105871293

`A167706(n+1)-record[A007947(n+1)]`
-/

namespace A168249.P8846434647105871293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168249.P8846434647105871293

namespace A168249

/-- `A167706(n+1)-record[A007947(n+1)]` -/
def P8846434647105871293.Spec : Prop :=
  ∀ n, P8846434647105871293.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P16977534205570244810

`A167706(n+1)-(eq[1, abs(A008683(n+1))]+1)`
-/

namespace A168249.P16977534205570244810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A168249.P16977534205570244810

namespace A168249

/-- `A167706(n+1)-(eq[1, abs(A008683(n+1))]+1)` -/
def P16977534205570244810.Spec : Prop :=
  ∀ n, P16977534205570244810.a n = A168249 (n + 1)

end A168249

/-! ## A168249.P14805282346312845408

`A167887(n+1)-A168241(n+1)`
-/

namespace A168249.P14805282346312845408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167887 (n + 1) - A168241 (n + 1)

end

end A168249.P14805282346312845408

namespace A168249

/-- `A167887(n+1)-A168241(n+1)` -/
def P14805282346312845408.Spec : Prop :=
  ∀ n, P14805282346312845408.a n = A168249 (n + 1)

theorem P14805282346312845408.correct : P14805282346312845408.Spec := by
  intro n
  simp only [A168249, Nat.add_sub_cancel, A168249.P14805282346312845408.a, A168249.P10517048205738276799.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A167706, A167706.P11488542031625927943.f1, A167706.P11488542031625927943.f2, A167706.P11488542031625927943.a, A167887, A167887.P6811191950323054762.a, A168241, A168241.P2699333600308786319.a, A007510, A007510.P12699692636498883418.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A014574, A014574.P4587706211531852143.a, A167707, A167707.P14412773003900474856.f1, A167707.P14412773003900474856.f2, A167707.P14412773003900474856.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A093178, A093178.P12085837158869515185.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A176656, A176656.P13726643682834785047.f1, A176656.P13726643682834785047.a, A283265, A283265.P16513607417697021488.a, A292438, A292438.P17678663792653604288.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A129950, A129950.P15295767996041627134.a, A166597, A166597.P14552351031517696526.a, A323162, A323162.P4199434762193306250.a, A334142, A334142.P15450815124474884519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168249

/-!
# A168250: a(n) = sum of digits of A168174(n).

The programs for A168250, there is no canonical definition to state claims against.
-/

/-! ## A168250.P18072719478216721471

`∑{digits}[A168248(n+1), #]+1`
-/

namespace A168250.P18072719478216721471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A168250.P18072719478216721471

/-! ## A168250.P15199735496696700072

`A004442(∑{digits}[A168248(n+1), #])`
-/

namespace A168250.P15199735496696700072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168250.P15199735496696700072

/-! ## A168250.P16980286968245239736

`A007918(∑{digits}[A168248(n+1), #])`
-/

namespace A168250.P16980286968245239736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168250.P16980286968245239736

/-! ## A168250.P12218653576347598177

`A020725(∑{digits}[A168248(n+1), #])`
-/

namespace A168250.P12218653576347598177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168250.P12218653576347598177

/-! ## A168250.P11623893809265514799

`A059843(∑{digits}[A168248(n+1), #])`
-/

namespace A168250.P11623893809265514799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A168250.P11623893809265514799

/-!
# A168251: a(n) = n^2 if n is odd, n^2*2^(n-2) if n is even.

The programs for A168251, the canonical program `A168251.P1397566828352810060` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168251 has offset 0).

The definition of A168251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168251.P1397566828352810060

`n²*2^((n-2)*(1+(-1)^n)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168251

/-- `n²*2^((n-2)*(1+(-1)^n)/2)` -/
def P1397566828352810060.Spec : Prop :=
  ∀ n, P1397566828352810060.a n = (A168251 n : ℝ)

end A168251

/-! ## A168251.P4854365555663739224

`(n*round(abs(1-A131575(n+1))/2))²`
-/

namespace A168251.P4854365555663739224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * SequenceMachineLib.roundAway ((|1 - A131575 (n + 1)| : ℚ) / 2)) ^ 2

end

end A168251.P4854365555663739224

namespace A168251

/-- `(n*round(abs(1-A131575(n+1))/2))²` -/
def P4854365555663739224.Spec : Prop :=
  ∀ n, P4854365555663739224.a n = A168251 n

end A168251

/-! ## A168251.P2911898926939792414

`(n*A034008(A027656(n)))²`
-/

namespace A168251.P2911898926939792414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A034008 (A027656 n).toNat) ^ 2

end

end A168251.P2911898926939792414

namespace A168251

/-- `(n*A034008(A027656(n)))²` -/
def P2911898926939792414.Spec : Prop :=
  ∀ n, P2911898926939792414.a n = A168251 n

end A168251

/-! ## A168251.P11847474254965085101

`(n*A011782(A142150(n)))²`
-/

namespace A168251.P11847474254965085101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A011782 (A142150 n).toNat) ^ 2

end

end A168251.P11847474254965085101

namespace A168251

/-- `(n*A011782(A142150(n)))²` -/
def P11847474254965085101.Spec : Prop :=
  ∀ n, P11847474254965085101.a n = A168251 n

end A168251

/-! ## A168251.P336181606289456678

`(n*A011782(A057979(n+1)))²`
-/

namespace A168251.P336181606289456678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A011782 (A057979 (n + 1)).toNat) ^ 2

end

end A168251.P336181606289456678

namespace A168251

/-- `(n*A011782(A057979(n+1)))²` -/
def P336181606289456678.Spec : Prop :=
  ∀ n, P336181606289456678.a n = A168251 n

end A168251

/-! ## A168251.P11581420702684438475

`(n*A158780(A124625(n+1)))²`
-/

namespace A168251.P11581420702684438475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A158780 (A124625 (n + 1)).toNat) ^ 2

end

end A168251.P11581420702684438475

namespace A168251

/-- `(n*A158780(A124625(n+1)))²` -/
def P11581420702684438475.Spec : Prop :=
  ∀ n, P11581420702684438475.a n = A168251 n

end A168251

/-! ## A168251.P4668402044297872897

`(n*A011782(n-A029578(n)))²`
-/

namespace A168251.P4668402044297872897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A011782 ((n : ℤ) - A029578 n).toNat) ^ 2

end

end A168251.P4668402044297872897

namespace A168251

/-- `(n*A011782(n-A029578(n)))²` -/
def P4668402044297872897.Spec : Prop :=
  ∀ n, P4668402044297872897.a n = A168251 n

end A168251

/-! ## A168251.P16012545049512258419

`(n*A011782(n)/A011782(A029579(n)))²`
-/

namespace A168251.P16012545049512258419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * ((A011782 n : ℚ) / (A011782 (A029579 n).toNat : ℚ))) ^ 2

end

end A168251.P16012545049512258419

namespace A168251

/-- `(n*A011782(n)/A011782(A029579(n)))²` -/
def P16012545049512258419.Spec : Prop :=
  ∀ n, P16012545049512258419.a n = (A168251 n : ℚ)

end A168251

/-!
# A168252: Numbers n such that n is squarefree and n is non-single or nonisolated.

The programs for A168252, there is no canonical definition to state claims against.
-/

/-! ## A168252.P10875614295009484255

`record[∏{p}[A167707(n+1), #]]`
-/

namespace A168252.P10875614295009484255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168252.P10875614295009484255

/-! ## A168252.P9522470016988332337

`record[A007913(A167707(n+2))]`
-/

namespace A168252.P9522470016988332337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A167707 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168252.P9522470016988332337

/-! ## A168252.P16296140775695195298

`filter[A167707(n+2), A008966(#)]`
-/

namespace A168252.P16296140775695195298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A168252.P16296140775695195298

/-! ## A168252.P7208576787243595855

`∩[A005117(n+1), A167707(n+1)]`
-/

namespace A168252.P7208576787243595855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168252.P7208576787243595855

/-! ## A168252.P202182232613863161

`∩[A167707(n+1), A348506(n+1)]`
-/

namespace A168252.P202182232613863161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168252.P202182232613863161

/-!
# A168253: a(n) is the smallest prime q such that, for the previous prime p and the following prime r, the fraction (q-p)/(r-q) has denominator n (or 0, if such a prime does not exist).

The programs for A168253, there is no canonical definition to state claims against.
-/

/-! ## A168253.P3850784600151136529

`p?[A244218(n)-A297519(n+1)]`
-/

namespace A168253.P3850784600151136529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244218 n - A297519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168253.P3850784600151136529

/-!
# A168254: Numbers n with property that n^3+n^2+{3,5} are twin primes.

The programs for A168254, there is no canonical definition to state claims against.
-/

/-! ## A168254.P17475119319233643404

`A339506(A286857(n))-A141285(n+1)`
-/

namespace A168254.P17475119319233643404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339506 (A286857 n).toNat - A141285 (n + 1)

end

end A168254.P17475119319233643404

/-!
# A168255: n appears n-th nonprime number times.

The programs for A168255, the canonical program `A168255.P269391709555101397` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168255 has offset 1).

The definition of A168255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168255.P269391709555101397

`∑[char[A051349(n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168255

/-- `∑[char[A051349(n)]]` -/
def P269391709555101397.Spec : Prop :=
  ∀ n, (P269391709555101397.a n : ℤ) = A168255 (n + 1)

theorem P269391709555101397.correct : P269391709555101397.Spec := by
  intro n
  simp only [A168255, Nat.add_sub_cancel]

end A168255

/-! ## A168255.P4300794521219740843

`∑[char[A101203(n)]]`
-/

namespace A168255.P4300794521219740843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P4300794521219740843

namespace A168255

/-- `∑[char[A101203(n)]]` -/
def P4300794521219740843.Spec : Prop :=
  ∀ n, (P4300794521219740843.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P16315503349007893605

`∑[char[∑[A141468(n+1)]]]`
-/

namespace A168255.P16315503349007893605
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P16315503349007893605

namespace A168255

/-- `∑[char[∑[A141468(n+1)]]]` -/
def P16315503349007893605.Spec : Prop :=
  ∀ n, (P16315503349007893605.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P14939001004913897538

`∑[char[∑[n%A007918(n)]]]`
-/

namespace A168255.P14939001004913897538
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007918 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P14939001004913897538

namespace A168255

/-- `∑[char[∑[n%A007918(n)]]]` -/
def P14939001004913897538.Spec : Prop :=
  ∀ n, (P14939001004913897538.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P5131325994521739132

`∑[char[A175967(n+1)-1]]`
-/

namespace A168255.P5131325994521739132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P5131325994521739132

namespace A168255

/-- `∑[char[A175967(n+1)-1]]` -/
def P5131325994521739132.Spec : Prop :=
  ∀ n, (P5131325994521739132.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P17116520492122153975

`∑[char[∑[comp[A000040(n+1)]]]]`
-/

namespace A168255.P17116520492122153975
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P17116520492122153975

namespace A168255

/-- `∑[char[∑[comp[A000040(n+1)]]]]` -/
def P17116520492122153975.Spec : Prop :=
  ∀ n, (P17116520492122153975.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P5777210450521996945

`∑[char[∑[comp[A006530(n+2)]]]]`
-/

namespace A168255.P5777210450521996945
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P5777210450521996945

namespace A168255

/-- `∑[char[∑[comp[A006530(n+2)]]]]` -/
def P5777210450521996945.Spec : Prop :=
  ∀ n, (P5777210450521996945.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P17805372559772568799

`∑[char[∑[comp[A020639(n+2)]]]]`
-/

namespace A168255.P17805372559772568799
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P17805372559772568799

namespace A168255

/-- `∑[char[∑[comp[A020639(n+2)]]]]` -/
def P17805372559772568799.Spec : Prop :=
  ∀ n, (P17805372559772568799.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P6646935184158997350

`∑[char[∑[A018252(n+1)]]]+1`
-/

namespace A168255.P6646935184158997350
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168255.P6646935184158997350

namespace A168255

/-- `∑[char[∑[A018252(n+1)]]]+1` -/
def P6646935184158997350.Spec : Prop :=
  ∀ n, (P6646935184158997350.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P12615694022045836592

`∑[char[∑[(n+1)%A151800(n)]]]+1`
-/

namespace A168255.P12615694022045836592
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A151800 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168255.P12615694022045836592

namespace A168255

/-- `∑[char[∑[(n+1)%A151800(n)]]]+1` -/
def P12615694022045836592.Spec : Prop :=
  ∀ n, (P12615694022045836592.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P1275845272232725223

`∑[char[comp[A175970(n+1)]]]`
-/

namespace A168255.P1275845272232725223
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175970 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P1275845272232725223

namespace A168255

/-- `∑[char[comp[A175970(n+1)]]]` -/
def P1275845272232725223.Spec : Prop :=
  ∀ n, (P1275845272232725223.a n : ℤ) = A168255 (n + 1)

end A168255

/-! ## A168255.P3706123550822475007

`A111654(A111655(n+1)+n)`
-/

namespace A168255.P3706123550822475007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A111655 (n + 1) + (n : ℤ)).toNat

end

end A168255.P3706123550822475007

namespace A168255

/-- `A111654(A111655(n+1)+n)` -/
def P3706123550822475007.Spec : Prop :=
  ∀ n, P3706123550822475007.a n = A168255 (n + 1)

end A168255

/-! ## A168255.P8727759215617088951

`A111654(A002808(A111654(n+1))+n)`
-/

namespace A168255.P8727759215617088951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A002808 (A111654 (n + 1)).toNat + (n : ℤ)).toNat

end

end A168255.P8727759215617088951

namespace A168255

/-- `A111654(A002808(A111654(n+1))+n)` -/
def P8727759215617088951.Spec : Prop :=
  ∀ n, P8727759215617088951.a n = A168255 (n + 1)

end A168255

/-!
# A168256: Triangle read by rows: Catalan number C(n) repeated n+1 times.

The programs for A168256, the canonical program `A168256.P13667276612289959880` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168256 has offset 0).

The definition of A168256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168256.P13667276612289959880

`A000108(row(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A168256

/-- `A000108(row(n))` -/
def P13667276612289959880.Spec : Prop :=
  ∀ n, P13667276612289959880.a n = A168256 n

theorem P13667276612289959880.correct : P13667276612289959880.Spec := by
  intro n
  simp only [A168256]

end A168256

/-! ## A168256.P10704473798108214214

`abs(A168491(row(n)))`
-/

namespace A168256.P10704473798108214214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (SequenceMachineLib.triRow n)|

end

end A168256.P10704473798108214214

namespace A168256

/-- `abs(A168491(row(n)))` -/
def P10704473798108214214.Spec : Prop :=
  ∀ n, P10704473798108214214.a n = A168256 n

end A168256

/-! ## A168256.P13852286209138783386

`A120588(∑[char[∑[n]]])`
-/

namespace A168256.P13852286209138783386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168256.P13852286209138783386

namespace A168256

/-- `A120588(∑[char[∑[n]]])` -/
def P13852286209138783386.Spec : Prop :=
  ∀ n, P13852286209138783386.a n = A168256 n

end A168256

/-! ## A168256.P17309449252893997122

`A120304(row(n))+2`
-/

namespace A168256.P17309449252893997122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (SequenceMachineLib.triRow n) + 2

end

end A168256.P17309449252893997122

namespace A168256

/-- `A120304(row(n))+2` -/
def P17309449252893997122.Spec : Prop :=
  ∀ n, P17309449252893997122.a n = A168256 n

theorem P17309449252893997122.correct : P17309449252893997122.Spec := by
  intro n
  simp only [A168256, Nat.add_sub_cancel, A168256.P17309449252893997122.a, A168256.P13667276612289959880.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168256

/-! ## A168256.P15159702701334504733

`A028303(2*row(n))`
-/

namespace A168256.P15159702701334504733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * SequenceMachineLib.triRow n)

end

end A168256.P15159702701334504733

namespace A168256

/-- `A028303(2*row(n))` -/
def P15159702701334504733.Spec : Prop :=
  ∀ n, P15159702701334504733.a n = A168256 n

end A168256

/-! ## A168256.P12597136447172445804

`A028304(2*row(n))`
-/

namespace A168256.P12597136447172445804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * SequenceMachineLib.triRow n)

end

end A168256.P12597136447172445804

namespace A168256

/-- `A028304(2*row(n))` -/
def P12597136447172445804.Spec : Prop :=
  ∀ n, P12597136447172445804.a n = A168256 n

end A168256

/-! ## A168256.P12203864137434837652

`A057977(2*row(n))`
-/

namespace A168256.P12203864137434837652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * SequenceMachineLib.triRow n)

end

end A168256.P12203864137434837652

namespace A168256

/-- `A057977(2*row(n))` -/
def P12203864137434837652.Spec : Prop :=
  ∀ n, P12203864137434837652.a n = A168256 n

end A168256

/-! ## A168256.P3879967720386343053

`A208355(2*row(n))`
-/

namespace A168256.P3879967720386343053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * SequenceMachineLib.triRow n)

end

end A168256.P3879967720386343053

namespace A168256

/-- `A208355(2*row(n))` -/
def P3879967720386343053.Spec : Prop :=
  ∀ n, P3879967720386343053.a n = A168256 n

end A168256

/-! ## A168256.P15665293963952165923

`A039598(C(row(n), 2))`
-/

namespace A168256.P15665293963952165923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (Nat.choose (SequenceMachineLib.triRow n) 2)

end

end A168256.P15665293963952165923

namespace A168256

/-- `A039598(C(row(n), 2))` -/
def P15665293963952165923.Spec : Prop :=
  ∀ n, P15665293963952165923.a n = A168256 n

end A168256

/-! ## A168256.P260970949385994133

`A039599(n-col(n))`
-/

namespace A168256.P260970949385994133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (n - SequenceMachineLib.triCol n)

end

end A168256.P260970949385994133

namespace A168256

/-- `A039599(n-col(n))` -/
def P260970949385994133.Spec : Prop :=
  ∀ n, P260970949385994133.a n = A168256 n

end A168256

/-! ## A168256.P9417059327636898221

`A288386(n-col(n))`
-/

namespace A168256.P9417059327636898221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 (n - SequenceMachineLib.triCol n)

end

end A168256.P9417059327636898221

namespace A168256

/-- `A288386(n-col(n))` -/
def P9417059327636898221.Spec : Prop :=
  ∀ n, P9417059327636898221.a n = A168256 n

end A168256

/-! ## A168256.P3057739928039416624

`A028304(row(n)+row(n))`
-/

namespace A168256.P3057739928039416624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (SequenceMachineLib.triRow n + SequenceMachineLib.triRow n)

end

end A168256.P3057739928039416624

namespace A168256

/-- `A028304(row(n)+row(n))` -/
def P3057739928039416624.Spec : Prop :=
  ∀ n, P3057739928039416624.a n = A168256 n

end A168256

/-! ## A168256.P2897580732286815338

`A057977(row(n)+row(n))`
-/

namespace A168256.P2897580732286815338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (SequenceMachineLib.triRow n + SequenceMachineLib.triRow n)

end

end A168256.P2897580732286815338

namespace A168256

/-- `A057977(row(n)+row(n))` -/
def P2897580732286815338.Spec : Prop :=
  ∀ n, P2897580732286815338.a n = A168256 n

end A168256

/-! ## A168256.P3108687926379054170

`A000108(∑[char[∑[n+1]]])`
-/

namespace A168256.P3108687926379054170
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168256.P3108687926379054170

namespace A168256

/-- `A000108(∑[char[∑[n+1]]])` -/
def P3108687926379054170.Spec : Prop :=
  ∀ n, P3108687926379054170.a n = A168256 n

end A168256

/-! ## A168256.P13805455799593119165

`A028304(2*∑[char[∑[n+1]]])`
-/

namespace A168256.P13805455799593119165
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A168256.P13805455799593119165

namespace A168256

/-- `A028304(2*∑[char[∑[n+1]]])` -/
def P13805455799593119165.Spec : Prop :=
  ∀ n, P13805455799593119165.a n = A168256 n

end A168256

/-! ## A168256.P13569590867678385098

`A057977(2*∑[char[∑[n+1]]])`
-/

namespace A168256.P13569590867678385098
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A168256.P13569590867678385098

namespace A168256

/-- `A057977(2*∑[char[∑[n+1]]])` -/
def P13569590867678385098.Spec : Prop :=
  ∀ n, P13569590867678385098.a n = A168256 n

end A168256

/-! ## A168256.P13289537157979539664

`A126120(2*∑[char[∑[n+1]]])`
-/

namespace A168256.P13289537157979539664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A168256.P13289537157979539664

namespace A168256

/-- `A126120(2*∑[char[∑[n+1]]])` -/
def P13289537157979539664.Spec : Prop :=
  ∀ n, P13289537157979539664.a n = A168256 n

end A168256

/-! ## A168256.P5528317427175957713

`A028364(A057944(n))`
-/

namespace A168256.P5528317427175957713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A057944 n).toNat

end

end A168256.P5528317427175957713

namespace A168256

/-- `A028364(A057944(n))` -/
def P5528317427175957713.Spec : Prop :=
  ∀ n, P5528317427175957713.a n = A168256 n

end A168256

/-! ## A168256.P6354634741426275469

`A089408(A131507(n))`
-/

namespace A168256.P6354634741426275469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A131507 n).toNat

end

end A168256.P6354634741426275469

namespace A168256

/-- `A089408(A131507(n))` -/
def P6354634741426275469.Spec : Prop :=
  ∀ n, P6354634741426275469.a n = A168256 n

end A168256

/-! ## A168256.P5031658385717853237

`A028303(A279891(n))`
-/

namespace A168256.P5031658385717853237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A279891 n).toNat

end

end A168256.P5031658385717853237

namespace A168256

/-- `A028303(A279891(n))` -/
def P5031658385717853237.Spec : Prop :=
  ∀ n, P5031658385717853237.a n = A168256 n

end A168256

/-! ## A168256.P336382410937463793

`C(2*row(n), row(n))/(row(n)+1)`
-/

namespace A168256.P336382410937463793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triRow n) : ℚ) / (SequenceMachineLib.triRow n + 1 : ℚ)

end

end A168256.P336382410937463793

namespace A168256

/-- `C(2*row(n), row(n))/(row(n)+1)` -/
def P336382410937463793.Spec : Prop :=
  ∀ n, P336382410937463793.a n = (A168256 n : ℚ)

end A168256

/-!
# A168258: Triangle read by rows, A101688 * A000012 as infinite lower triangular matrices.

The programs for A168258, the canonical program `A168258.P8738172613031762915` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168258 has offset 1).

The definition of A168258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168258.P11298167565700164766

`T(n-2,k)+(T(n-1,k+1)-T(n-1,k))*(T(n-1,k+1)-T(n-2,k-1))+1` with `a(0)=1`
-/

namespace A168258.P11298167565700164766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUp2Left a n) + 1

end

end A168258.P11298167565700164766

namespace A168258

/-- `T(n-2,k)+(T(n-1,k+1)-T(n-1,k))*(T(n-1,k+1)-T(n-2,k-1))+1` -/
def P11298167565700164766.Spec : Prop :=
  ∀ n, P11298167565700164766.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P14938826051679520496

`T(1, T(T(n-1,k), row(n)-T(n-1,k)))+T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A168258.P14938826051679520496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a 1 ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) ((SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triUp a n : ℕ) : ℤ)) : ℕ) : ℤ) + SequenceMachineLib.triUp a n

end

end A168258.P14938826051679520496

namespace A168258

/-- `T(1, T(T(n-1,k), row(n)-T(n-1,k)))+T(n-1,k)` -/
def P14938826051679520496.Spec : Prop :=
  ∀ n, (P14938826051679520496.a n : ℤ) = A168258 (n + 1)

end A168258

/-! ## A168258.P3666166830217317390

`A115514(1-A004197(n)+n)`
-/

namespace A168258.P3666166830217317390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (1 - A004197 n + (n : ℤ)).toNat

end

end A168258.P3666166830217317390

namespace A168258

/-- `A115514(1-A004197(n)+n)` -/
def P3666166830217317390.Spec : Prop :=
  ∀ n, P3666166830217317390.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P8738172613031762915

`A115514(1-A053616(n)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A168258

/-- `A115514(1-A053616(n)+n)` -/
def P8738172613031762915.Spec : Prop :=
  ∀ n, P8738172613031762915.a n = A168258 (n + 1)

theorem P8738172613031762915.correct : P8738172613031762915.Spec := by
  intro n
  simp only [A168258, Nat.add_sub_cancel]

end A168258

/-! ## A168258.P7898573068632615223

`A115514(1-(A004197(n)-n))`
-/

namespace A168258.P7898573068632615223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (1 - (A004197 n - (n : ℤ))).toNat

end

end A168258.P7898573068632615223

namespace A168258

/-- `A115514(1-(A004197(n)-n))` -/
def P7898573068632615223.Spec : Prop :=
  ∀ n, P7898573068632615223.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P4423840636020723534

`A115514(1-(A053616(n)-n))`
-/

namespace A168258.P4423840636020723534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (1 - (A053616 n - (n : ℤ))).toNat

end

end A168258.P4423840636020723534

namespace A168258

/-- `A115514(1-(A053616(n)-n))` -/
def P4423840636020723534.Spec : Prop :=
  ∀ n, P4423840636020723534.a n = A168258 (n + 1)

theorem P4423840636020723534.correct : P4423840636020723534.Spec := by
  intro n
  simp only [A168258, Nat.add_sub_cancel, A168258.P4423840636020723534.a, A168258.P8738172613031762915.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168258

/-! ## A168258.P3973150297079987014

`A115514(2-A003983(n+1)+n)`
-/

namespace A168258.P3973150297079987014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (2 - A003983 (n + 1) + (n : ℤ)).toNat

end

end A168258.P3973150297079987014

namespace A168258

/-- `A115514(2-A003983(n+1)+n)` -/
def P3973150297079987014.Spec : Prop :=
  ∀ n, P3973150297079987014.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P2906063932698443824

`ceil((A025581(n)+A003983(n+1))/2)`
-/

namespace A168258.P2906063932698443824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n + A003983 (n + 1) : ℚ) / 2⌉

end

end A168258.P2906063932698443824

namespace A168258

/-- `ceil((A025581(n)+A003983(n+1))/2)` -/
def P2906063932698443824.Spec : Prop :=
  ∀ n, P2906063932698443824.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P5308335143395579831

`round((A004736(n+1)+A004197(n))/2)`
-/

namespace A168258.P5308335143395579831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004736 (n + 1) + A004197 n : ℚ) / 2)

end

end A168258.P5308335143395579831

namespace A168258

/-- `round((A004736(n+1)+A004197(n))/2)` -/
def P5308335143395579831.Spec : Prop :=
  ∀ n, P5308335143395579831.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P5699499020986361924

`A008619(A025581(n)+A004197(n))`
-/

namespace A168258.P5699499020986361924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n + A004197 n).toNat

end

end A168258.P5699499020986361924

namespace A168258

/-- `A008619(A025581(n)+A004197(n))` -/
def P5699499020986361924.Spec : Prop :=
  ∀ n, P5699499020986361924.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P12466125725844534589

`A004526(A004736(n+1)+A003983(n+1))`
-/

namespace A168258.P12466125725844534589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004736 (n + 1) + A003983 (n + 1)).toNat

end

end A168258.P12466125725844534589

namespace A168258

/-- `A004526(A004736(n+1)+A003983(n+1))` -/
def P12466125725844534589.Spec : Prop :=
  ∀ n, P12466125725844534589.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P8630635688631971271

`ceil(A185908(A038722(n+1))/2)`
-/

namespace A168258.P8630635688631971271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A185908 (A038722 (n + 1)).toNat : ℚ) / 2⌉

end

end A168258.P8630635688631971271

namespace A168258

/-- `ceil(A185908(A038722(n+1))/2)` -/
def P8630635688631971271.Spec : Prop :=
  ∀ n, P8630635688631971271.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P7304190446108506758

`A135840(A051125(n+1)+2+n)`
-/

namespace A168258.P7304190446108506758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135840 (A051125 (n + 1) + 2 + (n : ℤ)).toNat

end

end A168258.P7304190446108506758

namespace A168258

/-- `A135840(A051125(n+1)+2+n)` -/
def P7304190446108506758.Spec : Prop :=
  ∀ n, P7304190446108506758.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P12951412204009012267

`A391246(A099884(n))`
-/

namespace A168258.P12951412204009012267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391246 (A099884 n).toNat

end

end A168258.P12951412204009012267

namespace A168258

/-- `A391246(A099884(n))` -/
def P12951412204009012267.Spec : Prop :=
  ∀ n, P12951412204009012267.a n = A168258 (n + 1)

end A168258

/-! ## A168258.P3107996528253463616

`A391246(A023758(n+2))`
-/

namespace A168258.P3107996528253463616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391246 (A023758 (n + 2)).toNat

end

end A168258.P3107996528253463616

namespace A168258

/-- `A391246(A023758(n+2))` -/
def P3107996528253463616.Spec : Prop :=
  ∀ n, P3107996528253463616.a n = A168258 (n + 1)

end A168258

/-!
# A168259: Eigensequence of triangle A168258.

The programs for A168259, there is no canonical definition to state claims against.
-/

/-! ## A168259.P4650437920256247235

`A168260(C(n+3, 2))`
-/

namespace A168259.P4650437920256247235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168260 (Nat.choose (n + 3) 2)

end

end A168259.P4650437920256247235

/-! ## A168259.P1527317552641387417

`A168260(∑[n+2]+1)`
-/

namespace A168259.P1527317552641387417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A168259.P1527317552641387417

/-! ## A168259.P13351067217990953961

`record[A168260(A133825(n))]`
-/

namespace A168259.P13351067217990953961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168260 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168259.P13351067217990953961

/-! ## A168259.P5857544325418303814

`record[A168260(∑[A203814(n)])]`
-/

namespace A168259.P5857544325418303814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168260 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168259.P5857544325418303814

/-! ## A168259.P3606484759529102986

`record[A168260(A038722(n+1))]`
-/

namespace A168259.P3606484759529102986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168260 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168259.P3606484759529102986

/-!
# A168261: Triangle read by rows, A115361 * the diagonalized variant of A018819.

The programs for A168261, there is no canonical definition to state claims against.
-/

/-! ## A168261.P17419898955864370588

`A018819(A002262(n))*A115361(n)`
-/

namespace A168261.P17419898955864370588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A002262 n).toNat * A115361 n

end

end A168261.P17419898955864370588

/-! ## A168261.P11869693813629172495

`lcm(A018819(A002262(n)), A115358(n))`
-/

namespace A168261.P11869693813629172495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A018819 (A002262 n).toNat) (A115358 n)

end

end A168261.P11869693813629172495

/-! ## A168261.P1601577992734764317

`A018819(log2(A059268(n)))*A115361(n)`
-/

namespace A168261.P1601577992734764317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A115361 n

end

end A168261.P1601577992734764317

/-! ## A168261.P14352669021661683465

`A018819(A002260(n+1)-1)*A115361(n)`
-/

namespace A168261.P14352669021661683465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A002260 (n + 1) - 1).toNat * A115361 n

end

end A168261.P14352669021661683465

/-! ## A168261.P11532283439979438518

`A018819(A002262(n))*A346085(A115358(n)^n+1)`
-/

namespace A168261.P11532283439979438518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A002262 n).toNat * A346085 (A115358 n ^ n + 1).toNat

end

end A168261.P11532283439979438518

/-!
# A168262: Intersection of A003418 and A116998.

The programs for A168262, there is no canonical definition to state claims against.
-/

/-! ## A168262.P13628029213688445222

`A051451(A059879(n+1))`
-/

namespace A168262.P13628029213688445222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A059879 (n + 1)).toNat

end

end A168262.P13628029213688445222

/-! ## A168262.P13068808467982572687

`A051451(A079002(n+1))`
-/

namespace A168262.P13068808467982572687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A079002 (n + 1)).toNat

end

end A168262.P13068808467982572687

/-! ## A168262.P2407016050555030761

`record[A058312(∑[A048004(n)])]`
-/

namespace A168262.P2407016050555030761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168262.P2407016050555030761

/-! ## A168262.P11319613219960125150

`record[A058312(∑[A111579(n)])]`
-/

namespace A168262.P11319613219960125150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168262.P11319613219960125150

/-! ## A168262.P12702151669764471208

`record[A058312(∑[A140997(n)])]`
-/

namespace A168262.P12702151669764471208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168262.P12702151669764471208

/-!
# A168263: For any m < n, and for all values of k, d(n^k) > d(m^k). (Let k, m, and n represent positive integers only.)

The programs for A168263, there is no canonical definition to state claims against.
-/

/-! ## A168263.P13495291961189576921

`filter[A288784(n), A322586(#)]`
-/

namespace A168263.P13495291961189576921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A168263.P13495291961189576921

/-! ## A168263.P543539829242005590

`filter[A002182(n+1), A380536(#)]`
-/

namespace A168263.P543539829242005590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A168263.P543539829242005590

/-! ## A168263.P8576113385164665048

`filter[A060735(n+1), A322586(#)]`
-/

namespace A168263.P8576113385164665048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A168263.P8576113385164665048

/-! ## A168263.P6796574756321104609

`filter[A004394(n+1), A380536(#)]`
-/

namespace A168263.P6796574756321104609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A168263.P6796574756321104609

/-! ## A168263.P14500262299995499389

`filter[A007416(n+1), A380536(#)]`
-/

namespace A168263.P14500262299995499389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380536 (f1 j).toNat = 1) n)

end

end A168263.P14500262299995499389

/-!
# A168264: For all sufficiently high values of k, d(n^k) > d(m^k) for all m < n. (Let k, m, and n represent positive integers only.)

The programs for A168264, there is no canonical definition to state claims against.
-/

/-! ## A168264.P1620648611677732107

`filter[A288784(n), A322585(#)]`
-/

namespace A168264.P1620648611677732107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A168264.P1620648611677732107

/-! ## A168264.P9848208358580614561

`record[A324384(A025487(n+1))]`
-/

namespace A168264.P9848208358580614561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324384 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168264.P9848208358580614561

/-! ## A168264.P17433913944458411058

`record[A324384(A329899(n+1))]`
-/

namespace A168264.P17433913944458411058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324384 (A329899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168264.P17433913944458411058

/-! ## A168264.P7008782922174751790

`record[A324384(A051466(n+2))]`
-/

namespace A168264.P7008782922174751790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324384 (A051466 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168264.P7008782922174751790

/-! ## A168264.P4978040412155122601

`filter[A060735(n+1), A322585(#)]`
-/

namespace A168264.P4978040412155122601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A168264.P4978040412155122601

/-!
# A168265: a(n) = A003557(A060735(n)).

The programs for A168265, the canonical program `A168265.P14574112734370718742` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168265 has offset 1).

The definition of A168265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168265.P14574112734370718742

`A003557(A060735(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A168265

/-- `A003557(A060735(n+1))` -/
def P14574112734370718742.Spec : Prop :=
  ∀ n, P14574112734370718742.a n = A168265 (n + 1)

theorem P14574112734370718742.correct : P14574112734370718742.Spec := by
  intro n
  simp only [A168265, Nat.add_sub_cancel]

end A168265

/-! ## A168265.P4948379090628529095

`A020652(eq[1, A001222(A038567(n))])`
-/

namespace A168265.P4948379090628529095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168265.P4948379090628529095

namespace A168265

/-- `A020652(eq[1, A001222(A038567(n))])` -/
def P4948379090628529095.Spec : Prop :=
  ∀ n, P4948379090628529095.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P10433482516953054219

`A020652(eq[2, A000005(A038567(n))])`
-/

namespace A168265.P10433482516953054219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A038567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168265.P10433482516953054219

namespace A168265

/-- `A020652(eq[2, A000005(A038567(n))])` -/
def P10433482516953054219.Spec : Prop :=
  ∀ n, P10433482516953054219.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P8853328540362767267

`A037125(eq[1, A226520(n+1)²])`
-/

namespace A168265.P8853328540362767267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168265.P8853328540362767267

namespace A168265

/-- `A037125(eq[1, A226520(n+1)²])` -/
def P8853328540362767267.Spec : Prop :=
  ∀ n, P8853328540362767267.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P10825794476371469253

`A037125(lt[1, A037125(n+1)])`
-/

namespace A168265.P10825794476371469253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168265.P10825794476371469253

namespace A168265

/-- `A037125(lt[1, A037125(n+1)])` -/
def P10825794476371469253.Spec : Prop :=
  ∀ n, P10825794476371469253.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P4124368342055919131

`A037125(comp[eq[1, A037125(n+1)]])`
-/

namespace A168265.P4124368342055919131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A168265.P4124368342055919131

namespace A168265

/-- `A037125(comp[eq[1, A037125(n+1)]])` -/
def P4124368342055919131.Spec : Prop :=
  ∀ n, P4124368342055919131.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P8766912990378945793

`A037125(comp[n-A037125(n+1)]+1)`
-/

namespace A168265.P8766912990378945793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A037125 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A168265.P8766912990378945793

namespace A168265

/-- `A037125(comp[n-A037125(n+1)]+1)` -/
def P8766912990378945793.Spec : Prop :=
  ∀ n, P8766912990378945793.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P4056797136818459032

`(A343048(n)+1)/Δ[A343048(n)]`
-/

namespace A168265.P4056797136818459032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343048 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343048 n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A168265.P4056797136818459032

namespace A168265

/-- `(A343048(n)+1)/Δ[A343048(n)]` -/
def P4056797136818459032.Spec : Prop :=
  ∀ n, P4056797136818459032.a n = (A168265 (n + 1) : ℚ)

end A168265

/-! ## A168265.P10968297036297695697

`A060735(n+1)/(A343048(n+1)-A343048(n))`
-/

namespace A168265.P10968297036297695697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060735 (n + 1) : ℚ) / (A343048 (n + 1) - A343048 n : ℚ)

end

end A168265.P10968297036297695697

namespace A168265

/-- `A060735(n+1)/(A343048(n+1)-A343048(n))` -/
def P10968297036297695697.Spec : Prop :=
  ∀ n, P10968297036297695697.a n = (A168265 (n + 1) : ℚ)

end A168265

/-! ## A168265.P5439091931265616008

`A060735(n+1)/(A060735(n+2)-A060735(n+1))`
-/

namespace A168265.P5439091931265616008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060735 (n + 1) : ℚ) / (A060735 (n + 2) - A060735 (n + 1) : ℚ)

end

end A168265.P5439091931265616008

namespace A168265

/-- `A060735(n+1)/(A060735(n+2)-A060735(n+1))` -/
def P5439091931265616008.Spec : Prop :=
  ∀ n, P5439091931265616008.a n = (A168265 (n + 1) : ℚ)

end A168265

/-! ## A168265.P5633854784311726785

`A037125(eq[1, A268921(n+1)²])`
-/

namespace A168265.P5633854784311726785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268921 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168265.P5633854784311726785

namespace A168265

/-- `A037125(eq[1, A268921(n+1)²])` -/
def P5633854784311726785.Spec : Prop :=
  ∀ n, P5633854784311726785.a n = A168265 (n + 1)

end A168265

/-! ## A168265.P11391092601999440116

`A020652(eq[1, ∑{e}[A038567(n), #]])`
-/

namespace A168265.P11391092601999440116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A168265.P11391092601999440116

namespace A168265

/-- `A020652(eq[1, ∑{e}[A038567(n), #]])` -/
def P11391092601999440116.Spec : Prop :=
  ∀ n, P11391092601999440116.a n = A168265 (n + 1)

end A168265

/-!
# A168266: A003557(A168264(n)).

The programs for A168266, there is no canonical definition to state claims against.
-/

/-! ## A168266.P3731923389103934972

`A003557(A168264(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168266.P3731923389103934972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A168264 (n + 1)).toNat

end

end A168266.P3731923389103934972

/-! ## A168266.P15090033695622980210

`A305899(A007052(T(n-1,k-1)))` with `a(0)=1`
-/

namespace A168266.P15090033695622980210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305899 (A007052 (SequenceMachineLib.triUpLeft a n).toNat).toNat

end

end A168266.P15090033695622980210

/-! ## A168266.P1450497039903049266

`A165359(A265066(T(n,k-1)))` with `a(0)=1`
-/

namespace A168266.P1450497039903049266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165359 (A265066 (SequenceMachineLib.triLeft a n).toNat).toNat

end

end A168266.P1450497039903049266

/-! ## A168266.P1151572681866823760

`A051700(A105060(n+1))`
-/

namespace A168266.P1151572681866823760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A105060 (n + 1)).toNat

end

end A168266.P1151572681866823760

/-! ## A168266.P14319343671906785238

`A182861(A165313(n+1))`
-/

namespace A168266.P14319343671906785238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182861 (A165313 (n + 1)).toNat

end

end A168266.P14319343671906785238

/-!
# A168267: Range of values of A168266.

The programs for A168267, there is no canonical definition to state claims against.
-/

/-! ## A168267.P14010300207410534387

`∩[A140999(n+1), A330813(n+1)]`
-/

namespace A168267.P14010300207410534387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168267.P14010300207410534387

/-! ## A168267.P9649755461653182447

`A130891(A308912(n+1))`
-/

namespace A168267.P9649755461653182447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A308912 (n + 1)).toNat

end

end A168267.P9649755461653182447

/-! ## A168267.P9033979366335993553

`A051724(A343014(n+5))`
-/

namespace A168267.P9033979366335993553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A343014 (n + 5)).toNat

end

end A168267.P9033979366335993553

/-! ## A168267.P15529016339667606560

`A072941(A308912(n+1))`
-/

namespace A168267.P15529016339667606560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072941 (A308912 (n + 1)).toNat

end

end A168267.P15529016339667606560

/-! ## A168267.P12554365967594398443

`∩[A140999(n+1), A325763(n+1)]`
-/

namespace A168267.P12554365967594398443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168267.P12554365967594398443

/-!
# A168268: G.f.: exp( Sum_{n>=1} A007837(n)*x^n/n ), where A007837(n) = number of partitions of n-set with distinct block sizes.

The programs for A168268, there is no canonical definition to state claims against.
-/

/-! ## A168268.P11913031570296965755

`A317709(ceil(A317712(n+1)/3))`
-/

namespace A168268.P11913031570296965755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317709 ⌈(A317712 (n + 1) : ℚ) / 3⌉.toNat

end

end A168268.P11913031570296965755

/-! ## A168268.P5031324270375384180

`A364350(A088953(n)-A287896(n+1))`
-/

namespace A168268.P5031324270375384180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A088953 n - A287896 (n + 1)).toNat

end

end A168268.P5031324270375384180

/-!
# A168269: a(n) = 2*n - (-1)^n.

The programs for A168269, the canonical program `A168269.P17258309218056554498` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168269 has offset 1).

The definition of A168269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-(-1)^(n+1)` (program `A168269.P17258309218056554498`, by `A168269.P17258309218056554498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168269.P4934876759696351185

`ogf((3+x^2)/(1-x-x^2+x^3))`
-/

namespace A168269.P4934876759696351185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 1] [1, -1, -1, 1] n

end

end A168269.P4934876759696351185

namespace A168269

/-- `ogf((3+x^2)/(1-x-x^2+x^3))` -/
def P4934876759696351185.Spec : Prop :=
  ∀ n, P4934876759696351185.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P17258309218056554498

`2*(n+1)-(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168269

/-- `2*(n+1)-(-1)^(n+1)` -/
def P17258309218056554498.Spec : Prop :=
  ∀ n, P17258309218056554498.a n = A168269 (n + 1)

theorem P17258309218056554498.correct : P17258309218056554498.Spec := by
  intro n
  simp only [A168269, Nat.add_sub_cancel]

end A168269

/-! ## A168269.P8840233310914288288

`or(3, 2*n)`
-/

namespace A168269.P8840233310914288288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * n)

end

end A168269.P8840233310914288288

namespace A168269

/-- `or(3, 2*n)` -/
def P8840233310914288288.Spec : Prop :=
  ∀ n, (P8840233310914288288.a n : ℤ) = A168269 (n + 1)

end A168269

/-! ## A168269.P14381842382147101443

`abs(or(2, Δ[n²]))`
-/

namespace A168269.P14381842382147101443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A168269.P14381842382147101443

namespace A168269

/-- `abs(or(2, Δ[n²]))` -/
def P14381842382147101443.Spec : Prop :=
  ∀ n, P14381842382147101443.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P16707909215283920778

`lcm(2, or(1, n))+1`
-/

namespace A168269.P16707909215283920778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n) + 1

end

end A168269.P16707909215283920778

namespace A168269

/-- `lcm(2, or(1, n))+1` -/
def P16707909215283920778.Spec : Prop :=
  ∀ n, (P16707909215283920778.a n : ℤ) = A168269 (n + 1)

end A168269

/-! ## A168269.P13175289600827751743

`xor(1, n+2)+n`
-/

namespace A168269.P13175289600827751743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) + n

end

end A168269.P13175289600827751743

namespace A168269

/-- `xor(1, n+2)+n` -/
def P13175289600827751743.Spec : Prop :=
  ∀ n, (P13175289600827751743.a n : ℤ) = A168269 (n + 1)

end A168269

/-! ## A168269.P12890555130052602487

`filter[or(2, n), #%2]`
-/

namespace A168269.P12890555130052602487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 2 = 1) n)

end

end A168269.P12890555130052602487

namespace A168269

/-- `filter[or(2, n), #%2]` -/
def P12890555130052602487.Spec : Prop :=
  ∀ n, (P12890555130052602487.a n : ℤ) = A168269 (n + 1)

end A168269

/-! ## A168269.P17001007533525155964

`floor(record[or(6, n)/2])`
-/

namespace A168269.P17001007533525155964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A168269.P17001007533525155964

namespace A168269

/-- `floor(record[or(6, n)/2])` -/
def P17001007533525155964.Spec : Prop :=
  ∀ n, P17001007533525155964.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P14091335894661943207

`a(n-2)+4` with `a(0)=3, a(1)=3`
-/

namespace A168269.P14091335894661943207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + 4

end

end A168269.P14091335894661943207

namespace A168269

/-- `a(n-2)+4` -/
def P14091335894661943207.Spec : Prop :=
  ∀ n, (P14091335894661943207.a n : ℤ) = A168269 (n + 1)

theorem P14091335894661943207.correct : P14091335894661943207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168269, Nat.add_sub_cancel, A168269.P14091335894661943207.a, A168269.P17258309218056554498.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168269, Nat.add_sub_cancel, A168269.P14091335894661943207.a, A168269.P17258309218056554498.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168269

/-! ## A168269.P5760587627868997334

`2*and(n, -2)+3`
-/

namespace A168269.P5760587627868997334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-2) + 3

end

end A168269.P5760587627868997334

namespace A168269

/-- `2*and(n, -2)+3` -/
def P5760587627868997334.Spec : Prop :=
  ∀ n, P5760587627868997334.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P17219797671030767494

`xor(3, 2*and(n, -2))`
-/

namespace A168269.P17219797671030767494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 * Int.land (n : ℤ) (-2))

end

end A168269.P17219797671030767494

namespace A168269

/-- `xor(3, 2*and(n, -2))` -/
def P17219797671030767494.Spec : Prop :=
  ∀ n, P17219797671030767494.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P10766292896141521785

`xor(3, 4*floor(n/2))`
-/

namespace A168269.P10766292896141521785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (4 * ⌊(n : ℚ) / 2⌋)

end

end A168269.P10766292896141521785

namespace A168269

/-- `xor(3, 4*floor(n/2))` -/
def P10766292896141521785.Spec : Prop :=
  ∀ n, P10766292896141521785.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P3925429988444743596

`Δ[n-or(1, -n²)]`
-/

namespace A168269.P3925429988444743596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 1 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168269.P3925429988444743596

namespace A168269

/-- `Δ[n-or(1, -n²)]` -/
def P3925429988444743596.Spec : Prop :=
  ∀ n, P3925429988444743596.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P413625649413874088

`-and(-3, Δ[-n²])`
-/

namespace A168269.P413625649413874088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (-3) (f1 (n + 1) - f1 n)

end

end A168269.P413625649413874088

namespace A168269

/-- `-and(-3, Δ[-n²])` -/
def P413625649413874088.Spec : Prop :=
  ∀ n, P413625649413874088.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P892573613909934284

`∑[4-a(n-1)]` with `a(0)=3, a(1)=0`
-/

namespace A168269.P892573613909934284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168269.P892573613909934284

namespace A168269

/-- `∑[4-a(n-1)]` -/
def P892573613909934284.Spec : Prop :=
  ∀ n, P892573613909934284.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P18186225850540444331

`Δ[or(1, n+1)+n²]`
-/

namespace A168269.P18186225850540444331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168269.P18186225850540444331

namespace A168269

/-- `Δ[or(1, n+1)+n²]` -/
def P18186225850540444331.Spec : Prop :=
  ∀ n, P18186225850540444331.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P5961038184255616673

`∑[xor(3, 2*n)]-n²`
-/

namespace A168269.P5961038184255616673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A168269.P5961038184255616673

namespace A168269

/-- `∑[xor(3, 2*n)]-n²` -/
def P5961038184255616673.Spec : Prop :=
  ∀ n, P5961038184255616673.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P13626510602300513999

`Δ[∑[2*n]-gcd(2, n)]`
-/

namespace A168269.P13626510602300513999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168269.P13626510602300513999

namespace A168269

/-- `Δ[∑[2*n]-gcd(2, n)]` -/
def P13626510602300513999.Spec : Prop :=
  ∀ n, P13626510602300513999.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P6906996815769182411

`Δ[and(1, n)+2*∑[n]]`
-/

namespace A168269.P6906996815769182411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168269.P6906996815769182411

namespace A168269

/-- `Δ[and(1, n)+2*∑[n]]` -/
def P6906996815769182411.Spec : Prop :=
  ∀ n, P6906996815769182411.a n = A168269 (n + 1)

end A168269

/-! ## A168269.P10126135182469400485

`Δ[n%2+n²+n]`
-/

namespace A168269.P10126135182469400485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168269.P10126135182469400485

namespace A168269

/-- `Δ[n%2+n²+n]` -/
def P10126135182469400485.Spec : Prop :=
  ∀ n, P10126135182469400485.a n = A168269 (n + 1)

end A168269

/-!
# A168270: Squarefree numbers which are also isolated numbers.

The programs for A168270, there is no canonical definition to state claims against.
-/

/-! ## A168270.P14631496613945893633

`record[∏{p}[A167706(n+1), #]]`
-/

namespace A168270.P14631496613945893633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168270.P14631496613945893633

/-! ## A168270.P9611387689278693054

`record[A007913(A167706(n+1))]`
-/

namespace A168270.P9611387689278693054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A167706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168270.P9611387689278693054

/-! ## A168270.P14215799838462703746

`record[A007947(A167706(n+2))]`
-/

namespace A168270.P14215799838462703746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A167706 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168270.P14215799838462703746

/-! ## A168270.P15149665324645191294

`filter[A167706(n+1), A008966(#)]`
-/

namespace A168270.P15149665324645191294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A168270.P15149665324645191294

/-! ## A168270.P6647491752876971043

`filter[A167706(n+1), A051903(#)]`
-/

namespace A168270.P6647491752876971043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051903 (f1 j).toNat = 1) n)

end

end A168270.P6647491752876971043

/-! ## A168270.P15172782171533022025

`filter[A167706(n+1), A323154(#)]`
-/

namespace A168270.P15172782171533022025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A168270.P15172782171533022025

/-! ## A168270.P8391459748777133792

`filter[A167706(n+1), A371087(#)]`
-/

namespace A168270.P8391459748777133792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A168270.P8391459748777133792

/-! ## A168270.P13274753267634677975

`∩[A005117(n+1), A167706(n+1)]`
-/

namespace A168270.P13274753267634677975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168270.P13274753267634677975

/-! ## A168270.P14963130135920080304

`∩[A064594(n+1), A167706(n+1)]`
-/

namespace A168270.P14963130135920080304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168270.P14963130135920080304

/-! ## A168270.P14955661338140688244

`∩[A144146(n+1), A167706(n+1)]`
-/

namespace A168270.P14955661338140688244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168270.P14955661338140688244

/-!
# A168271: a(n) = prime(nonprime(n)) - nonprime(prime(n)).

The programs for A168271, the canonical program `A168271.P11427339168696885429` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168271 has offset 1).

The definition of A168271 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168271.P11427339168696885429

`A007821(n+1)-A144570(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168271

/-- `A007821(n+1)-A144570(n+1)` -/
def P11427339168696885429.Spec : Prop :=
  ∀ n, P11427339168696885429.a n = A168271 (n + 1)

theorem P11427339168696885429.correct : P11427339168696885429.Spec := by
  intro n
  simp only [A168271, Nat.add_sub_cancel]

end A168271

/-! ## A168271.P17788344456386183324

`A000040(A018252(n+1))-A144570(n+1)`
-/

namespace A168271.P17788344456386183324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 1)).toNat - A144570 (n + 1)

end

end A168271.P17788344456386183324

namespace A168271

/-- `A000040(A018252(n+1))-A144570(n+1)` -/
def P17788344456386183324.Spec : Prop :=
  ∀ n, P17788344456386183324.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P7927751370443026712

`A007821(n+1)-A141468(Δ[A007504(n)])`
-/

namespace A168271.P7927751370443026712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A141468 (f1 (n + 1) - f1 n).toNat

end

end A168271.P7927751370443026712

namespace A168271

/-- `A007821(n+1)-A141468(Δ[A007504(n)])` -/
def P7927751370443026712.Spec : Prop :=
  ∀ n, P7927751370443026712.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P1865962640692809923

`A007821(n+1)-A018252(record[A037225(n)])`
-/

namespace A168271.P1865962640692809923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A168271.P1865962640692809923

namespace A168271

/-- `A007821(n+1)-A018252(record[A037225(n)])` -/
def P1865962640692809923.Spec : Prop :=
  ∀ n, P1865962640692809923.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P1989809741453099463

`A007821(n+1)-A018252(A006093(n+1))`
-/

namespace A168271.P1989809741453099463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A018252 (A006093 (n + 1)).toNat

end

end A168271.P1989809741453099463

namespace A168271

/-- `A007821(n+1)-A018252(A006093(n+1))` -/
def P1989809741453099463.Spec : Prop :=
  ∀ n, P1989809741453099463.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P16025001609932999193

`A007821(n+1)-A141468(A000040(n+1))`
-/

namespace A168271.P16025001609932999193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A141468 (A000040 (n + 1)).toNat

end

end A168271.P16025001609932999193

namespace A168271

/-- `A007821(n+1)-A141468(A000040(n+1))` -/
def P16025001609932999193.Spec : Prop :=
  ∀ n, P16025001609932999193.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P10898822827202614327

`A007821(n+1)-A018252(A000040(n+1)-1)`
-/

namespace A168271.P10898822827202614327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A018252 (A000040 (n + 1) - 1).toNat

end

end A168271.P10898822827202614327

namespace A168271

/-- `A007821(n+1)-A018252(A000040(n+1)-1)` -/
def P10898822827202614327.Spec : Prop :=
  ∀ n, P10898822827202614327.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P7741815763423671040

`A000040(A018252(n+1))-A018252(A006093(n+1))`
-/

namespace A168271.P7741815763423671040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 1)).toNat - A018252 (A006093 (n + 1)).toNat

end

end A168271.P7741815763423671040

namespace A168271

/-- `A000040(A018252(n+1))-A018252(A006093(n+1))` -/
def P7741815763423671040.Spec : Prop :=
  ∀ n, P7741815763423671040.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P4619539553901152370

`A000040(A018252(n+1))-A018252(A000040(n+1)-1)`
-/

namespace A168271.P4619539553901152370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018252 (n + 1)).toNat - A018252 (A000040 (n + 1) - 1).toNat

end

end A168271.P4619539553901152370

namespace A168271

/-- `A000040(A018252(n+1))-A018252(A000040(n+1)-1)` -/
def P4619539553901152370.Spec : Prop :=
  ∀ n, P4619539553901152370.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P12708264225523352816

`A007821(n+1)-A141468(p?[A014681(n)])`
-/

namespace A168271.P12708264225523352816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A141468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A168271.P12708264225523352816

namespace A168271

/-- `A007821(n+1)-A141468(p?[A014681(n)])` -/
def P12708264225523352816.Spec : Prop :=
  ∀ n, P12708264225523352816.a n = A168271 (n + 1)

end A168271

/-! ## A168271.P17925547084451301899

`A007821(n+1)-A141468(p?[A006370(n)])`
-/

namespace A168271.P17925547084451301899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A141468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A168271.P17925547084451301899

namespace A168271

/-- `A007821(n+1)-A141468(p?[A006370(n)])` -/
def P17925547084451301899.Spec : Prop :=
  ∀ n, P17925547084451301899.a n = A168271 (n + 1)

end A168271

/-!
# A168272: a(n) = abs(prime(prime(n))-prime(nonprime(n))).

The programs for A168272, the canonical program `A168272.P13748373025009212725` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168272 has offset 1).

The definition of A168272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168272.P13748373025009212725

`abs(A006450(n+1)-A007821(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168272

/-- `abs(A006450(n+1)-A007821(n+1))` -/
def P13748373025009212725.Spec : Prop :=
  ∀ n, P13748373025009212725.a n = A168272 (n + 1)

theorem P13748373025009212725.correct : P13748373025009212725.Spec := by
  intro n
  simp only [A168272, Nat.add_sub_cancel]

end A168272

/-! ## A168272.P12499896663779048908

`abs(A007821(n+1)-(A168152(n+1)+A000040(n+1)))`
-/

namespace A168272.P12499896663779048908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007821 (n + 1) - (A168152 (n + 1) + A000040 (n + 1))|

end

end A168272.P12499896663779048908

namespace A168272

/-- `abs(A007821(n+1)-(A168152(n+1)+A000040(n+1)))` -/
def P12499896663779048908.Spec : Prop :=
  ∀ n, P12499896663779048908.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P1297058227349585644

`abs(A007821(n+1)-(A168152(n+1)+A008864(n+1)-1))`
-/

namespace A168272.P1297058227349585644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007821 (n + 1) - (A168152 (n + 1) + (A008864 (n + 1) - 1))|

end

end A168272.P1297058227349585644

namespace A168272

/-- `abs(A007821(n+1)-(A168152(n+1)+A008864(n+1)-1))` -/
def P1297058227349585644.Spec : Prop :=
  ∀ n, P1297058227349585644.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P15410676311109968949

`abs(A006450(n+1)-A000040(A018252(n+1)))`
-/

namespace A168272.P15410676311109968949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006450 (n + 1) - A000040 (A018252 (n + 1)).toNat|

end

end A168272.P15410676311109968949

namespace A168272

/-- `abs(A006450(n+1)-A000040(A018252(n+1)))` -/
def P15410676311109968949.Spec : Prop :=
  ∀ n, P15410676311109968949.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P1741751292744013472

`abs(A006450(n+1)-A008578(A018252(n+1)+1))`
-/

namespace A168272.P1741751292744013472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006450 (n + 1) - A008578 (A018252 (n + 1) + 1).toNat|

end

end A168272.P1741751292744013472

namespace A168272

/-- `abs(A006450(n+1)-A008578(A018252(n+1)+1))` -/
def P1741751292744013472.Spec : Prop :=
  ∀ n, P1741751292744013472.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P12233301060265210988

`abs(A006450(n+1)-p?[A320628(n+1)])`
-/

namespace A168272.P12233301060265210988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006450 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A168272.P12233301060265210988

namespace A168272

/-- `abs(A006450(n+1)-p?[A320628(n+1)])` -/
def P12233301060265210988.Spec : Prop :=
  ∀ n, P12233301060265210988.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P2318795379778740454

`abs(A007821(n+1)-p?[A076610(n+1)])`
-/

namespace A168272.P2318795379778740454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007821 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A168272.P2318795379778740454

namespace A168272

/-- `abs(A007821(n+1)-p?[A076610(n+1)])` -/
def P2318795379778740454.Spec : Prop :=
  ∀ n, P2318795379778740454.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P5678094811919530607

`abs(A000040(A000040(n+1))-A007821(n+1))`
-/

namespace A168272.P5678094811919530607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (A000040 (n + 1)).toNat - A007821 (n + 1)|

end

end A168272.P5678094811919530607

namespace A168272

/-- `abs(A000040(A000040(n+1))-A007821(n+1))` -/
def P5678094811919530607.Spec : Prop :=
  ∀ n, P5678094811919530607.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P9360677840002662921

`abs(A008578(A008578(n+2)+1)-A007821(n+1))`
-/

namespace A168272.P9360677840002662921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (A008578 (n + 2) + 1).toNat - A007821 (n + 1)|

end

end A168272.P9360677840002662921

namespace A168272

/-- `abs(A008578(A008578(n+2)+1)-A007821(n+1))` -/
def P9360677840002662921.Spec : Prop :=
  ∀ n, P9360677840002662921.a n = A168272 (n + 1)

end A168272

/-! ## A168272.P14903905303962544817

`abs(A007821(n+1)-p?[A064988(n+1)])`
-/

namespace A168272.P14903905303962544817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007821 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A168272.P14903905303962544817

namespace A168272

/-- `abs(A007821(n+1)-p?[A064988(n+1)])` -/
def P14903905303962544817.Spec : Prop :=
  ∀ n, P14903905303962544817.a n = A168272 (n + 1)

end A168272

/-!
# A168273: a(n) = 2*n + (-1)^n - 1.

The programs for A168273, the canonical program `A168273.P14882009876558213195` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168273 has offset 1).

The definition of A168273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)+(-1)^(n+1)-1` (program `A168273.P14882009876558213195`, by `A168273.P14882009876558213195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168273.P16359382970109851993

`ogf(4x/(1-x-x^2+x^3))`
-/

namespace A168273.P16359382970109851993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -1, -1, 1] n

end

end A168273.P16359382970109851993

namespace A168273

/-- `ogf(4x/(1-x-x^2+x^3))` -/
def P16359382970109851993.Spec : Prop :=
  ∀ n, P16359382970109851993.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P18081216316381666525

`2*(n+1)-2*(n+1)%2`
-/

namespace A168273.P18081216316381666525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((2 * ((n + 1) % 2) : ℕ) : ℤ)

end

end A168273.P18081216316381666525

namespace A168273

/-- `2*(n+1)-2*(n+1)%2` -/
def P18081216316381666525.Spec : Prop :=
  ∀ n, P18081216316381666525.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P13594695503172468456

`2*(n+1)-1+(-1)^(n+1)`
-/

namespace A168273.P13594695503172468456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1)

end

end A168273.P13594695503172468456

namespace A168273

/-- `2*(n+1)-1+(-1)^(n+1)` -/
def P13594695503172468456.Spec : Prop :=
  ∀ n, P13594695503172468456.a n = A168273 (n + 1)

theorem P13594695503172468456.correct : P13594695503172468456.Spec := by
  intro n
  simp only [A168273, Nat.add_sub_cancel, A168273.P13594695503172468456.a, A168273.P14882009876558213195.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168273

/-! ## A168273.P14882009876558213195

`2*(n+1)+(-1)^(n+1)-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168273

/-- `2*(n+1)+(-1)^(n+1)-1` -/
def P14882009876558213195.Spec : Prop :=
  ∀ n, P14882009876558213195.a n = A168273 (n + 1)

theorem P14882009876558213195.correct : P14882009876558213195.Spec := by
  intro n
  simp only [A168273, Nat.add_sub_cancel]

end A168273

/-! ## A168273.P6169069282725161331

`A008586(floor((n+1)/2))`
-/

namespace A168273.P6169069282725161331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A168273.P6169069282725161331

namespace A168273

/-- `A008586(floor((n+1)/2))` -/
def P6169069282725161331.Spec : Prop :=
  ∀ n, P6169069282725161331.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P11256032107866000715

`2*A052928(n+1)`
-/

namespace A168273.P11256032107866000715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052928 (n + 1)

end

end A168273.P11256032107866000715

namespace A168273

/-- `2*A052928(n+1)` -/
def P11256032107866000715.Spec : Prop :=
  ∀ n, P11256032107866000715.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P16799054549955780114

`Δ[or(1, n²)]`
-/

namespace A168273.P16799054549955780114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168273.P16799054549955780114

namespace A168273

/-- `Δ[or(1, n²)]` -/
def P16799054549955780114.Spec : Prop :=
  ∀ n, P16799054549955780114.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P11653409453680136256

`Δ[and(n², -2)]`
-/

namespace A168273.P11653409453680136256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168273.P11653409453680136256

namespace A168273

/-- `Δ[and(n², -2)]` -/
def P11653409453680136256.Spec : Prop :=
  ∀ n, P11653409453680136256.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P3158929930171517336

`∑[4*n%2]`
-/

namespace A168273.P3158929930171517336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168273.P3158929930171517336

namespace A168273

/-- `∑[4*n%2]` -/
def P3158929930171517336.Spec : Prop :=
  ∀ n, (P3158929930171517336.a n : ℤ) = A168273 (n + 1)

end A168273

/-! ## A168273.P11223978466480008602

`∑[4*and(1, n)]`
-/

namespace A168273.P11223978466480008602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168273.P11223978466480008602

namespace A168273

/-- `∑[4*and(1, n)]` -/
def P11223978466480008602.Spec : Prop :=
  ∀ n, (P11223978466480008602.a n : ℤ) = A168273 (n + 1)

end A168273

/-! ## A168273.P12770887585899231990

`∑[lcm(4, and(1, n))]`
-/

namespace A168273.P12770887585899231990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168273.P12770887585899231990

namespace A168273

/-- `∑[lcm(4, and(1, n))]` -/
def P12770887585899231990.Spec : Prop :=
  ∀ n, (P12770887585899231990.a n : ℤ) = A168273 (n + 1)

end A168273

/-! ## A168273.P14621320187321086613

`xor(1, n+1)+n`
-/

namespace A168273.P14621320187321086613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1) + n

end

end A168273.P14621320187321086613

namespace A168273

/-- `xor(1, n+1)+n` -/
def P14621320187321086613.Spec : Prop :=
  ∀ n, (P14621320187321086613.a n : ℤ) = A168273 (n + 1)

end A168273

/-! ## A168273.P15391504971590802509

`2*(and(1, n)+n)`
-/

namespace A168273.P15391504971590802509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.land 1 n + n)

end

end A168273.P15391504971590802509

namespace A168273

/-- `2*(and(1, n)+n)` -/
def P15391504971590802509.Spec : Prop :=
  ∀ n, (P15391504971590802509.a n : ℤ) = A168273 (n + 1)

end A168273

/-! ## A168273.P8595524495364872630

`∑[and(4, (-1)^n)]`
-/

namespace A168273.P8595524495364872630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168273.P8595524495364872630

namespace A168273

/-- `∑[and(4, (-1)^n)]` -/
def P8595524495364872630.Spec : Prop :=
  ∀ n, P8595524495364872630.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P2858288376440041230

`∑[2*Δ[or(1, n)]]`
-/

namespace A168273.P2858288376440041230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168273.P2858288376440041230

namespace A168273

/-- `∑[2*Δ[or(1, n)]]` -/
def P2858288376440041230.Spec : Prop :=
  ∀ n, P2858288376440041230.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P3193509647481442257

`Δ[gcd(2, n)+n²]`
-/

namespace A168273.P3193509647481442257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168273.P3193509647481442257

namespace A168273

/-- `Δ[gcd(2, n)+n²]` -/
def P3193509647481442257.Spec : Prop :=
  ∀ n, P3193509647481442257.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P3675343339177455121

`∑[and(2, -n²)²]`
-/

namespace A168273.P3675343339177455121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168273.P3675343339177455121

namespace A168273

/-- `∑[and(2, -n²)²]` -/
def P3675343339177455121.Spec : Prop :=
  ∀ n, P3675343339177455121.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P17617132770547404125

`a(n-2)+4` with `a(0)=0, a(1)=4`
-/

namespace A168273.P17617132770547404125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 4

end

end A168273.P17617132770547404125

namespace A168273

/-- `a(n-2)+4` -/
def P17617132770547404125.Spec : Prop :=
  ∀ n, (P17617132770547404125.a n : ℤ) = A168273 (n + 1)

theorem P17617132770547404125.correct : P17617132770547404125.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168273, Nat.add_sub_cancel, A168273.P17617132770547404125.a, A168273.P14882009876558213195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168273, Nat.add_sub_cancel, A168273.P17617132770547404125.a, A168273.P14882009876558213195.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168273

/-! ## A168273.P14080043904346072288

`2*(1-or(1, -n))`
-/

namespace A168273.P14080043904346072288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - Int.lor 1 (-(n : ℤ)))

end

end A168273.P14080043904346072288

namespace A168273

/-- `2*(1-or(1, -n))` -/
def P14080043904346072288.Spec : Prop :=
  ∀ n, P14080043904346072288.a n = A168273 (n + 1)

end A168273

/-! ## A168273.P13202608920035900934

`lcm(2, 4*round(n/2))`
-/

namespace A168273.P13202608920035900934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (4 * SequenceMachineLib.roundAway ((n : ℚ) / 2))

end

end A168273.P13202608920035900934

namespace A168273

/-- `lcm(2, 4*round(n/2))` -/
def P13202608920035900934.Spec : Prop :=
  ∀ n, (P13202608920035900934.a n : ℤ) = A168273 (n + 1)

end A168273

/-!
# A168274: Primes p such that 10*p^3 + 1 is prime.

The programs for A168274, there is no canonical definition to state claims against.
-/

/-! ## A168274.P4949885119389664830

`p?[A168219(n+1)]`
-/

namespace A168274.P4949885119389664830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168274.P4949885119389664830

/-! ## A168274.P11177858178164538293

`p?[record[A168219(A236858(n))]]`
-/

namespace A168274.P11177858178164538293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168274.P11177858178164538293

/-! ## A168274.P9473275020660213052

`p?[record[A168219(A324346(n))]]`
-/

namespace A168274.P9473275020660213052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168274.P9473275020660213052

/-! ## A168274.P4971990684758148363

`p?[record[A168219(A324347(n))]]`
-/

namespace A168274.P4971990684758148363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168274.P4971990684758148363

/-! ## A168274.P18185033921917779774

`record[A020639(A168219(n+2))]`
-/

namespace A168274.P18185033921917779774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A168219 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168274.P18185033921917779774

/-! ## A168274.P5174609210766269074

`filter[A168219(n+1), A010051(#)]`
-/

namespace A168274.P5174609210766269074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A168274.P5174609210766269074

/-! ## A168274.P14314648893434966293

`filter[A168219(n+2), A080339(#)]`
-/

namespace A168274.P14314648893434966293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A168274.P14314648893434966293

/-! ## A168274.P15056934806255727130

`filter[A168219(n+2), A080545(#)]`
-/

namespace A168274.P15056934806255727130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A168274.P15056934806255727130

/-! ## A168274.P2723380143139027590

`∩[A000040(n+1), A168219(n+1)]`
-/

namespace A168274.P2723380143139027590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168274.P2723380143139027590

/-! ## A168274.P6846854382616079177

`∩[A004139(n+1), A168219(n+1)]`
-/

namespace A168274.P6846854382616079177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168274.P6846854382616079177

/-!
# A168275: Number of letters in n-th prime (in Latin).

The programs for A168275, there is no canonical definition to state claims against.
-/

/-! ## A168275.P9059268098458655701

`A132984(A000040(n+1))`
-/

namespace A168275.P9059268098458655701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132984 (A000040 (n + 1)).toNat

end

end A168275.P9059268098458655701

/-! ## A168275.P5827623774770567434

`A132984(p?[comp[n²]])`
-/

namespace A168275.P5827623774770567434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132984 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A168275.P5827623774770567434

/-! ## A168275.P13231652370337594375

`A132984(A390240(n))`
-/

namespace A168275.P13231652370337594375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132984 (A390240 n).toNat

end

end A168275.P13231652370337594375

/-! ## A168275.P17598924134525618796

`A132984(Δ[A007504(n)])`
-/

namespace A168275.P17598924134525618796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132984 (f1 (n + 1) - f1 n).toNat

end

end A168275.P17598924134525618796

/-! ## A168275.P7294826479075795269

`A132984(A030291(n+1))`
-/

namespace A168275.P7294826479075795269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132984 (A030291 (n + 1)).toNat

end

end A168275.P7294826479075795269

/-!
# A168276: a(n) = 2*n - (-1)^n - 1.

The programs for A168276, the canonical program `A168276.P17467409103627978845` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168276 has offset 1).

The definition of A168276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-(-1)^(n+1)-1` (program `A168276.P17467409103627978845`, by `A168276.P17467409103627978845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168276.P18284607216985234553

`4*n-a(n-1)` with `a(0)=2`
-/

namespace A168276.P18284607216985234553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 * n : ℤ) - a (n - 1)

end

end A168276.P18284607216985234553

namespace A168276

/-- `4*n-a(n-1)` -/
def P18284607216985234553.Spec : Prop :=
  ∀ n, P18284607216985234553.a n = A168276 (n + 1)

theorem P18284607216985234553.correct : P18284607216985234553.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168276, Nat.add_sub_cancel, A168276.P18284607216985234553.a, A168276.P17467409103627978845.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168276, Nat.add_sub_cancel, A168276.P18284607216985234553.a, A168276.P17467409103627978845.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168276

/-! ## A168276.P10003410274806679842

`ogf((2+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168276.P10003410274806679842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 2] [1, -1, -1, 1] n

end

end A168276.P10003410274806679842

namespace A168276

/-- `ogf((2+2x^2)/(1-x-x^2+x^3))` -/
def P10003410274806679842.Spec : Prop :=
  ∀ n, P10003410274806679842.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P4109450594745756054

`2*(n+1)-1-(-1)^(n+1)`
-/

namespace A168276.P4109450594745756054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 1 - (-1) ^ (n + 1)

end

end A168276.P4109450594745756054

namespace A168276

/-- `2*(n+1)-1-(-1)^(n+1)` -/
def P4109450594745756054.Spec : Prop :=
  ∀ n, P4109450594745756054.a n = A168276 (n + 1)

theorem P4109450594745756054.correct : P4109450594745756054.Spec := by
  intro n
  simp only [A168276, Nat.add_sub_cancel, A168276.P4109450594745756054.a, A168276.P17467409103627978845.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168276

/-! ## A168276.P17467409103627978845

`2*(n+1)-(-1)^(n+1)-1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168276

/-- `2*(n+1)-(-1)^(n+1)-1` -/
def P17467409103627978845.Spec : Prop :=
  ∀ n, P17467409103627978845.a n = A168276 (n + 1)

theorem P17467409103627978845.correct : P17467409103627978845.Spec := by
  intro n
  simp only [A168276, Nat.add_sub_cancel]

end A168276

/-! ## A168276.P6308955366744070097

`2*A109613(n)`
-/

namespace A168276.P6308955366744070097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109613 n

end

end A168276.P6308955366744070097

namespace A168276

/-- `2*A109613(n)` -/
def P6308955366744070097.Spec : Prop :=
  ∀ n, P6308955366744070097.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P2911804642717702873

`2*or(1, n)`
-/

namespace A168276.P2911804642717702873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

end

end A168276.P2911804642717702873

namespace A168276

/-- `2*or(1, n)` -/
def P2911804642717702873.Spec : Prop :=
  ∀ n, (P2911804642717702873.a n : ℤ) = A168276 (n + 1)

end A168276

/-! ## A168276.P2644058117653144030

`lcm(2, or(1, n))`
-/

namespace A168276.P2644058117653144030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.lor 1 n)

end

end A168276.P2644058117653144030

namespace A168276

/-- `lcm(2, or(1, n))` -/
def P2644058117653144030.Spec : Prop :=
  ∀ n, (P2644058117653144030.a n : ℤ) = A168276 (n + 1)

end A168276

/-! ## A168276.P13671010443365011266

`n-xor(n, -2)`
-/

namespace A168276.P13671010443365011266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (-2)

end

end A168276.P13671010443365011266

namespace A168276

/-- `n-xor(n, -2)` -/
def P13671010443365011266.Spec : Prop :=
  ∀ n, P13671010443365011266.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P11540827912740778223

`and(record[or(2, n)], -2)`
-/

namespace A168276.P11540827912740778223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (-2)

end

end A168276.P11540827912740778223

namespace A168276

/-- `and(record[or(2, n)], -2)` -/
def P11540827912740778223.Spec : Prop :=
  ∀ n, P11540827912740778223.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P11800326766848551313

`xor(1, n)+n+1`
-/

namespace A168276.P11800326766848551313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + (n + 1)

end

end A168276.P11800326766848551313

namespace A168276

/-- `xor(1, n)+n+1` -/
def P11800326766848551313.Spec : Prop :=
  ∀ n, (P11800326766848551313.a n : ℤ) = A168276 (n + 1)

end A168276

/-! ## A168276.P5316684819026137010

`Δ[or(1, n²+1)]`
-/

namespace A168276.P5316684819026137010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168276.P5316684819026137010

namespace A168276

/-- `Δ[or(1, n²+1)]` -/
def P5316684819026137010.Spec : Prop :=
  ∀ n, P5316684819026137010.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P3374593265623714844

`or(2, Δ[n²]-1)`
-/

namespace A168276.P3374593265623714844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1)

end

end A168276.P3374593265623714844

namespace A168276

/-- `or(2, Δ[n²]-1)` -/
def P3374593265623714844.Spec : Prop :=
  ∀ n, P3374593265623714844.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P8866610536510245769

`Δ[n%2+n²]`
-/

namespace A168276.P8866610536510245769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168276.P8866610536510245769

namespace A168276

/-- `Δ[n%2+n²]` -/
def P8866610536510245769.Spec : Prop :=
  ∀ n, P8866610536510245769.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P16784543530355267861

`Δ[n²-gcd(2, n)]`
-/

namespace A168276.P16784543530355267861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168276.P16784543530355267861

namespace A168276

/-- `Δ[n²-gcd(2, n)]` -/
def P16784543530355267861.Spec : Prop :=
  ∀ n, P16784543530355267861.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P13005724166683847334

`Δ[and(1, n)+n²]`
-/

namespace A168276.P13005724166683847334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A168276.P13005724166683847334

namespace A168276

/-- `Δ[and(1, n)+n²]` -/
def P13005724166683847334.Spec : Prop :=
  ∀ n, P13005724166683847334.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P18173922976340169387

`Δ[-or(1, -n²)]`
-/

namespace A168276.P18173922976340169387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168276.P18173922976340169387

namespace A168276

/-- `Δ[-or(1, -n²)]` -/
def P18173922976340169387.Spec : Prop :=
  ∀ n, P18173922976340169387.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P3407727261639755279

`a(n-2)+4` with `a(0)=2, a(1)=2`
-/

namespace A168276.P3407727261639755279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 4

end

end A168276.P3407727261639755279

namespace A168276

/-- `a(n-2)+4` -/
def P3407727261639755279.Spec : Prop :=
  ∀ n, (P3407727261639755279.a n : ℤ) = A168276 (n + 1)

theorem P3407727261639755279.correct : P3407727261639755279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168276, Nat.add_sub_cancel, A168276.P3407727261639755279.a, A168276.P17467409103627978845.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168276, Nat.add_sub_cancel, A168276.P3407727261639755279.a, A168276.P17467409103627978845.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168276

/-! ## A168276.P15099135768787360719

`2*(and(n, -2)+1)`
-/

namespace A168276.P15099135768787360719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.land (n : ℤ) (-2) + 1)

end

end A168276.P15099135768787360719

namespace A168276

/-- `2*(and(n, -2)+1)` -/
def P15099135768787360719.Spec : Prop :=
  ∀ n, P15099135768787360719.a n = A168276 (n + 1)

end A168276

/-! ## A168276.P1550080775701547881

`or(1, n)/sqrt(1/4)`
-/

namespace A168276.P1550080775701547881
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A168276.P1550080775701547881

namespace A168276

/-- `or(1, n)/sqrt(1/4)` -/
def P1550080775701547881.Spec : Prop :=
  ∀ n, P1550080775701547881.a n = (A168276 (n + 1) : ℝ)

end A168276

/-! ## A168276.P5735744887096843300

`2/or(1, n)^-1`
-/

namespace A168276.P5735744887096843300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.lor 1 n : ℚ) ^ (-1 : ℤ)

end

end A168276.P5735744887096843300

namespace A168276

/-- `2/or(1, n)^-1` -/
def P5735744887096843300.Spec : Prop :=
  ∀ n, P5735744887096843300.a n = (A168276 (n + 1) : ℚ)

end A168276

/-!
# A168277: a(n) = 2*n - (-1)^n - 2.

The programs for A168277, the canonical program `A168277.P992471471811324076` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168277 has offset 1).

The definition of A168277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-(-1)^(n+1)-2` (program `A168277.P992471471811324076`, by `A168277.P992471471811324076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168277.P3820454690542225454

`ogf((1+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168277.P3820454690542225454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -1, -1, 1] n

end

end A168277.P3820454690542225454

namespace A168277

/-- `ogf((1+3x^2)/(1-x-x^2+x^3))` -/
def P3820454690542225454.Spec : Prop :=
  ∀ n, P3820454690542225454.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P14492732144005346080

`4*(n+1)-a(n-1)-6` with `a(0)=1`
-/

namespace A168277.P14492732144005346080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (n + 1) : ℤ) - a (n - 1) - 6

end

end A168277.P14492732144005346080

namespace A168277

/-- `4*(n+1)-a(n-1)-6` -/
def P14492732144005346080.Spec : Prop :=
  ∀ n, P14492732144005346080.a n = A168277 (n + 1)

theorem P14492732144005346080.correct : P14492732144005346080.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168277, Nat.add_sub_cancel, A168277.P14492732144005346080.a, A168277.P992471471811324076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168277, Nat.add_sub_cancel, A168277.P14492732144005346080.a, A168277.P992471471811324076.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168277

/-! ## A168277.P992471471811324076

`2*(n+1)-(-1)^(n+1)-2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168277

/-- `2*(n+1)-(-1)^(n+1)-2` -/
def P992471471811324076.Spec : Prop :=
  ∀ n, P992471471811324076.a n = A168277 (n + 1)

theorem P992471471811324076.correct : P992471471811324076.Spec := by
  intro n
  simp only [A168277, Nat.add_sub_cancel]

end A168277

/-! ## A168277.P11711882768834855952

`xor(1, n)+n`
-/

namespace A168277.P11711882768834855952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + n

end

end A168277.P11711882768834855952

namespace A168277

/-- `xor(1, n)+n` -/
def P11711882768834855952.Spec : Prop :=
  ∀ n, (P11711882768834855952.a n : ℤ) = A168277 (n + 1)

end A168277

/-! ## A168277.P14219073743627258494

`and(Δ[n²], -3)`
-/

namespace A168277.P14219073743627258494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (-3)

end

end A168277.P14219073743627258494

namespace A168277

/-- `and(Δ[n²], -3)` -/
def P14219073743627258494.Spec : Prop :=
  ∀ n, P14219073743627258494.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P233047470368470250

`or(1, comp[or(2, n)])`
-/

namespace A168277.P233047470368470250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A168277.P233047470368470250

namespace A168277

/-- `or(1, comp[or(2, n)])` -/
def P233047470368470250.Spec : Prop :=
  ∀ n, (P233047470368470250.a n : ℤ) = A168277 (n + 1)

end A168277

/-! ## A168277.P15388637796710807273

`2*or(1, n)-1`
-/

namespace A168277.P15388637796710807273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - 1

end

end A168277.P15388637796710807273

namespace A168277

/-- `2*or(1, n)-1` -/
def P15388637796710807273.Spec : Prop :=
  ∀ n, P15388637796710807273.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P14490355122157494402

`lcm(2, or(1, n))-1`
-/

namespace A168277.P14490355122157494402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor 1 n) : ℤ) - 1

end

end A168277.P14490355122157494402

namespace A168277

/-- `lcm(2, or(1, n))-1` -/
def P14490355122157494402.Spec : Prop :=
  ∀ n, P14490355122157494402.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P10811105751666550549

`xor(3, 2*or(1, n))`
-/

namespace A168277.P10811105751666550549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * Nat.lor 1 n)

end

end A168277.P10811105751666550549

namespace A168277

/-- `xor(3, 2*or(1, n))` -/
def P10811105751666550549.Spec : Prop :=
  ∀ n, (P10811105751666550549.a n : ℤ) = A168277 (n + 1)

end A168277

/-! ## A168277.P17791207474790644083

`or(2, Δ[n²])-2`
-/

namespace A168277.P17791207474790644083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - 2

end

end A168277.P17791207474790644083

namespace A168277

/-- `or(2, Δ[n²])-2` -/
def P17791207474790644083.Spec : Prop :=
  ∀ n, P17791207474790644083.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P13558372090240390229

`filter[or(1, n), #%4]`
-/

namespace A168277.P13558372090240390229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 4 = 1) n)

end

end A168277.P13558372090240390229

namespace A168277

/-- `filter[or(1, n), #%4]` -/
def P13558372090240390229.Spec : Prop :=
  ∀ n, (P13558372090240390229.a n : ℤ) = A168277 (n + 1)

end A168277

/-! ## A168277.P4316045009363473524

`or(1, lt[n, or(2, n)])`
-/

namespace A168277.P4316045009363473524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A168277.P4316045009363473524

namespace A168277

/-- `or(1, lt[n, or(2, n)])` -/
def P4316045009363473524.Spec : Prop :=
  ∀ n, (P4316045009363473524.a n : ℤ) = A168277 (n + 1)

end A168277

/-! ## A168277.P1147392311073303254

`-or(2, Δ[-n²])`
-/

namespace A168277.P1147392311073303254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (f1 (n + 1) - f1 n)

end

end A168277.P1147392311073303254

namespace A168277

/-- `-or(2, Δ[-n²])` -/
def P1147392311073303254.Spec : Prop :=
  ∀ n, P1147392311073303254.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P4568143642905583498

`4+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A168277.P4568143642905583498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 + a (n - 2)

end

end A168277.P4568143642905583498

namespace A168277

/-- `4+a(n-2)` -/
def P4568143642905583498.Spec : Prop :=
  ∀ n, (P4568143642905583498.a n : ℤ) = A168277 (n + 1)

theorem P4568143642905583498.correct : P4568143642905583498.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A168277, Nat.add_sub_cancel, A168277.P4568143642905583498.a, A168277.P992471471811324076.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A168277, Nat.add_sub_cancel, A168277.P4568143642905583498.a, A168277.P992471471811324076.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168277

/-! ## A168277.P7958009426055954409

`2*and(n, -2)+1`
-/

namespace A168277.P7958009426055954409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-2) + 1

end

end A168277.P7958009426055954409

namespace A168277

/-- `2*and(n, -2)+1` -/
def P7958009426055954409.Spec : Prop :=
  ∀ n, P7958009426055954409.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P1465548744209122458

`or(1, 2*and(n, -2))`
-/

namespace A168277.P1465548744209122458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * Int.land (n : ℤ) (-2))

end

end A168277.P1465548744209122458

namespace A168277

/-- `or(1, 2*and(n, -2))` -/
def P1465548744209122458.Spec : Prop :=
  ∀ n, P1465548744209122458.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P6160691420463909722

`xor(1, 2*and(n, -2))`
-/

namespace A168277.P6160691420463909722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * Int.land (n : ℤ) (-2))

end

end A168277.P6160691420463909722

namespace A168277

/-- `xor(1, 2*and(n, -2))` -/
def P6160691420463909722.Spec : Prop :=
  ∀ n, P6160691420463909722.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P12301727422541975119

`or(1, 4*floor(n/2))`
-/

namespace A168277.P12301727422541975119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * ⌊(n : ℚ) / 2⌋)

end

end A168277.P12301727422541975119

namespace A168277

/-- `or(1, 4*floor(n/2))` -/
def P12301727422541975119.Spec : Prop :=
  ∀ n, P12301727422541975119.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P8868156500416779787

`xor(1, 4*floor(n/2))`
-/

namespace A168277.P8868156500416779787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * ⌊(n : ℚ) / 2⌋)

end

end A168277.P8868156500416779787

namespace A168277

/-- `xor(1, 4*floor(n/2))` -/
def P8868156500416779787.Spec : Prop :=
  ∀ n, P8868156500416779787.a n = A168277 (n + 1)

end A168277

/-! ## A168277.P1135563207938029479

`round(xor(2, 6*n)/3)`
-/

namespace A168277.P1135563207938029479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (6 * n) : ℚ) / 3)

end

end A168277.P1135563207938029479

namespace A168277

/-- `round(xor(2, 6*n)/3)` -/
def P1135563207938029479.Spec : Prop :=
  ∀ n, P1135563207938029479.a n = A168277 (n + 1)

end A168277

/-!
# A168278: a(n) = (10*n + 5*(-1)^n + 3)/4.

The programs for A168278, the canonical program `A168278.P12800739313724074722` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168278 has offset 1).

The definition of A168278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168278.P12800739313724074722

`ogf((2+5x-2x^2)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168278

/-- `ogf((2+5x-2x^2)/(1-x-x^2+x^3))` -/
def P12800739313724074722.Spec : Prop :=
  ∀ n, P12800739313724074722.a n = A168278 (n + 1)

theorem P12800739313724074722.correct : P12800739313724074722.Spec := by
  intro n
  simp only [A168278, Nat.add_sub_cancel]

end A168278

/-! ## A168278.P12096908640869179239

`(10*(n+1)+5*(-1)^(n+1)+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168278.P12096908640869179239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) + 3 : ℚ) / 4

end

end A168278.P12096908640869179239

namespace A168278

/-- `(10*(n+1)+5*(-1)^(n+1)+3)/4` -/
def P12096908640869179239.Spec : Prop :=
  ∀ n, P12096908640869179239.a n = (A168278 (n + 1) : ℚ)

end A168278

/-! ## A168278.P80779956992525217

`A168282(n+1)+1`
-/

namespace A168278.P80779956992525217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168282 (n + 1) + 1

end

end A168278.P80779956992525217

namespace A168278

/-- `A168282(n+1)+1` -/
def P80779956992525217.Spec : Prop :=
  ∀ n, P80779956992525217.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P856558773525434606

`A016873(floor((n+1)/2))`
-/

namespace A168278.P856558773525434606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A168278.P856558773525434606

namespace A168278

/-- `A016873(floor((n+1)/2))` -/
def P856558773525434606.Spec : Prop :=
  ∀ n, P856558773525434606.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P16345877252881121341

`5+a(n-2)` with `a(0)=2, a(1)=7`
-/

namespace A168278.P16345877252881121341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  5 + a (n - 2)

end

end A168278.P16345877252881121341

namespace A168278

/-- `5+a(n-2)` -/
def P16345877252881121341.Spec : Prop :=
  ∀ n, (P16345877252881121341.a n : ℤ) = A168278 (n + 1)

end A168278

/-! ## A168278.P1386229556835235930

`∑[5*n%2]+2`
-/

namespace A168278.P1386229556835235930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168278.P1386229556835235930

namespace A168278

/-- `∑[5*n%2]+2` -/
def P1386229556835235930.Spec : Prop :=
  ∀ n, (P1386229556835235930.a n : ℤ) = A168278 (n + 1)

end A168278

/-! ## A168278.P6426674180962047674

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=5, a(2)=0`
-/

namespace A168278.P6426674180962047674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168278.P6426674180962047674

namespace A168278

/-- `∑[abs(a(n-2))]` -/
def P6426674180962047674.Spec : Prop :=
  ∀ n, (P6426674180962047674.a n : ℤ) = A168278 (n + 1)

end A168278

/-! ## A168278.P7040591337950312074

`∑[5-a(n-1)]` with `a(0)=2, a(1)=5`
-/

namespace A168278.P7040591337950312074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168278.P7040591337950312074

namespace A168278

/-- `∑[5-a(n-1)]` -/
def P7040591337950312074.Spec : Prop :=
  ∀ n, P7040591337950312074.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P17007860864383449401

`∑[∑[ogf((2+5x-2x^2)/(1+x))]]`
-/

namespace A168278.P17007860864383449401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168278.P17007860864383449401

namespace A168278

/-- `∑[∑[ogf((2+5x-2x^2)/(1+x))]]` -/
def P17007860864383449401.Spec : Prop :=
  ∀ n, P17007860864383449401.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P11927536052108923193

`floor(5*or(1, n+1)/2)`
-/

namespace A168278.P11927536052108923193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((Nat.lor 1 (n + 1) : ℚ) / 2)⌋

end

end A168278.P11927536052108923193

namespace A168278

/-- `floor(5*or(1, n+1)/2)` -/
def P11927536052108923193.Spec : Prop :=
  ∀ n, P11927536052108923193.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P2831541562007103412

`5*n-(a(n-1)-4)` with `a(0)=2`
-/

namespace A168278.P2831541562007103412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 4)

end

end A168278.P2831541562007103412

namespace A168278

/-- `5*n-(a(n-1)-4)` -/
def P2831541562007103412.Spec : Prop :=
  ∀ n, P2831541562007103412.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P2413823699973905968

`∑[A010676(n)]+2`
-/

namespace A168278.P2413823699973905968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168278.P2413823699973905968

namespace A168278

/-- `∑[A010676(n)]+2` -/
def P2413823699973905968.Spec : Prop :=
  ∀ n, P2413823699973905968.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P12336153028071185573

`∑[A049071(n)+2]`
-/

namespace A168278.P12336153028071185573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049071 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168278.P12336153028071185573

namespace A168278

/-- `∑[A049071(n)+2]` -/
def P12336153028071185573.Spec : Prop :=
  ∀ n, P12336153028071185573.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P17593013414724010769

`A168209(n+1)-1`
-/

namespace A168278.P17593013414724010769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168209 (n + 1) - 1

end

end A168278.P17593013414724010769

namespace A168278

/-- `A168209(n+1)-1` -/
def P17593013414724010769.Spec : Prop :=
  ∀ n, P17593013414724010769.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P747755431871128113

`A168284(n+1)+2`
-/

namespace A168278.P747755431871128113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) + 2

end

end A168278.P747755431871128113

namespace A168278

/-- `A168284(n+1)+2` -/
def P747755431871128113.Spec : Prop :=
  ∀ n, P747755431871128113.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P10765093128051526532

`5*A110654(n)+2`
-/

namespace A168278.P10765093128051526532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A110654 n + 2

end

end A168278.P10765093128051526532

namespace A168278

/-- `5*A110654(n)+2` -/
def P10765093128051526532.Spec : Prop :=
  ∀ n, P10765093128051526532.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P6968821846534254436

`5*A080513(n)-3`
-/

namespace A168278.P6968821846534254436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A080513 n - 3

end

end A168278.P6968821846534254436

namespace A168278

/-- `5*A080513(n)-3` -/
def P6968821846534254436.Spec : Prop :=
  ∀ n, P6968821846534254436.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P4966494588933018043

`∑[A036478(a(n-1))]` with `a(0)=2`
-/

namespace A168278.P4966494588933018043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A036478 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168278.P4966494588933018043

namespace A168278

/-- `∑[A036478(a(n-1))]` -/
def P4966494588933018043.Spec : Prop :=
  ∀ n, P4966494588933018043.a n = A168278 (n + 1)

end A168278

/-! ## A168278.P9578066563014828427

`A168457(n+1)/2+1`
-/

namespace A168278.P9578066563014828427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168457 (n + 1) : ℚ) / 2 + 1

end

end A168278.P9578066563014828427

namespace A168278

/-- `A168457(n+1)/2+1` -/
def P9578066563014828427.Spec : Prop :=
  ∀ n, P9578066563014828427.a n = (A168278 (n + 1) : ℚ)

end A168278

/-! ## A168278.P8715019987396093826

`A168461(n+1)/2+2`
-/

namespace A168278.P8715019987396093826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168461 (n + 1) : ℚ) / 2 + 2

end

end A168278.P8715019987396093826

namespace A168278

/-- `A168461(n+1)/2+2` -/
def P8715019987396093826.Spec : Prop :=
  ∀ n, P8715019987396093826.a n = (A168278 (n + 1) : ℚ)

end A168278

/-!
# A168279: (n+1)-th prime nonprime minus (n+1)-th prime.

The programs for A168279, the canonical program `A168279.P12753250464981237638` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168279 has offset 1).

The definition of A168279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168279.P12753250464981237638

`A144570(n+2)-A000040(n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168279

/-- `A144570(n+2)-A000040(n+2)` -/
def P12753250464981237638.Spec : Prop :=
  ∀ n, P12753250464981237638.a n = A168279 (n + 1)

theorem P12753250464981237638.correct : P12753250464981237638.Spec := by
  intro n
  simp only [A168279, Nat.add_sub_cancel]

end A168279

/-! ## A168279.P12602646406162381274

`A144570(n+2)-(A161671(n+2)+A141468(n+2))`
-/

namespace A168279.P12602646406162381274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 2) - (A161671 (n + 2) + A141468 (n + 2))

end

end A168279.P12602646406162381274

namespace A168279

/-- `A144570(n+2)-(A161671(n+2)+A141468(n+2))` -/
def P12602646406162381274.Spec : Prop :=
  ∀ n, P12602646406162381274.a n = A168279 (n + 1)

theorem P12602646406162381274.correct : P12602646406162381274.Spec := by
  intro n
  simp only [A168279, Nat.add_sub_cancel, A168279.P12602646406162381274.a, A168279.P12753250464981237638.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A141468, A141468.P3389662916050695948.f1, A141468.P3389662916050695948.a, A144570, A144570.P11118034758568014224.a, A161671, A161671.P6686431630733255058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168279

/-! ## A168279.P18190665329359916563

`A000720(A144570(n+2))-1`
-/

namespace A168279.P18190665329359916563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A144570 (n + 2)).toNat - 1

end

end A168279.P18190665329359916563

namespace A168279

/-- `A000720(A144570(n+2))-1` -/
def P18190665329359916563.Spec : Prop :=
  ∀ n, P18190665329359916563.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P10835184800128451074

`A018252(record[A000010(n+3)])-p?[2*n+1]`
-/

namespace A168279.P10835184800128451074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A168279.P10835184800128451074

namespace A168279

/-- `A018252(record[A000010(n+3)])-p?[2*n+1]` -/
def P10835184800128451074.Spec : Prop :=
  ∀ n, P10835184800128451074.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P8852986410421058733

`A141468(A065091(n+1))-A065091(n+1)`
-/

namespace A168279.P8852986410421058733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A065091 (n + 1)).toNat - A065091 (n + 1)

end

end A168279.P8852986410421058733

namespace A168279

/-- `A141468(A065091(n+1))-A065091(n+1)` -/
def P8852986410421058733.Spec : Prop :=
  ∀ n, P8852986410421058733.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P12230834106630416925

`A018252(A006093(n+2))-A000040(n+2)`
-/

namespace A168279.P12230834106630416925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006093 (n + 2)).toNat - A000040 (n + 2)

end

end A168279.P12230834106630416925

namespace A168279

/-- `A018252(A006093(n+2))-A000040(n+2)` -/
def P12230834106630416925.Spec : Prop :=
  ∀ n, P12230834106630416925.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P15923771699486423004

`A141468(A006005(n+2))-A006005(n+2)`
-/

namespace A168279.P15923771699486423004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A006005 (n + 2)).toNat - A006005 (n + 2)

end

end A168279.P15923771699486423004

namespace A168279

/-- `A141468(A006005(n+2))-A006005(n+2)` -/
def P15923771699486423004.Spec : Prop :=
  ∀ n, P15923771699486423004.a n = A168279 (n + 1)

theorem P15923771699486423004.correct : P15923771699486423004.Spec := by
  intro n
  simp only [A168279, Nat.add_sub_cancel, A168279.P15923771699486423004.a, A168279.P12753250464981237638.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006005, A006005.P1228063357782503489.a, A141468, A141468.P3389662916050695948.f1, A141468.P3389662916050695948.a, A144570, A144570.P11118034758568014224.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168279

/-! ## A168279.P16709190570322872465

`A018252(record[A000010(n+3)])-A065091(n+1)`
-/

namespace A168279.P16709190570322872465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A065091 (n + 1)

end

end A168279.P16709190570322872465

namespace A168279

/-- `A018252(record[A000010(n+3)])-A065091(n+1)` -/
def P16709190570322872465.Spec : Prop :=
  ∀ n, P16709190570322872465.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P12394773938379314463

`A018252(record[A000010(n+3)])-A000040(n+2)`
-/

namespace A168279.P12394773938379314463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000040 (n + 2)

end

end A168279.P12394773938379314463

namespace A168279

/-- `A018252(record[A000010(n+3)])-A000040(n+2)` -/
def P12394773938379314463.Spec : Prop :=
  ∀ n, P12394773938379314463.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P14222751414460646512

`A018252(record[A000010(n+3)])-A006005(n+2)`
-/

namespace A168279.P14222751414460646512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A006005 (n + 2)

end

end A168279.P14222751414460646512

namespace A168279

/-- `A018252(record[A000010(n+3)])-A006005(n+2)` -/
def P14222751414460646512.Spec : Prop :=
  ∀ n, P14222751414460646512.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P2994161348974488637

`A018252(A000040(n+2)-1)-A000040(n+2)`
-/

namespace A168279.P2994161348974488637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 2) - 1).toNat - A000040 (n + 2)

end

end A168279.P2994161348974488637

namespace A168279

/-- `A018252(A000040(n+2)-1)-A000040(n+2)` -/
def P2994161348974488637.Spec : Prop :=
  ∀ n, P2994161348974488637.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P4703833797723916437

`A073169(p?[2*n+1]-2)-2`
-/

namespace A168279.P4703833797723916437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 2) - 2

end

end A168279.P4703833797723916437

namespace A168279

/-- `A073169(p?[2*n+1]-2)-2` -/
def P4703833797723916437.Spec : Prop :=
  ∀ n, P4703833797723916437.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P14717210229834199969

`A173073(A000040(n+2))-1`
-/

namespace A168279.P14717210229834199969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (A000040 (n + 2)).toNat - 1

end

end A168279.P14717210229834199969

namespace A168279

/-- `A173073(A000040(n+2))-1` -/
def P14717210229834199969.Spec : Prop :=
  ∀ n, P14717210229834199969.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P2293035680744824415

`A073425(A000040(n+2)-2)-1`
-/

namespace A168279.P2293035680744824415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (A000040 (n + 2) - 2).toNat - 1

end

end A168279.P2293035680744824415

namespace A168279

/-- `A073425(A000040(n+2)-2)-1` -/
def P2293035680744824415.Spec : Prop :=
  ∀ n, P2293035680744824415.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P6286237578844317489

`A065090(A065091(n+1))-A065091(n+1)`
-/

namespace A168279.P6286237578844317489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A065091 (n + 1)).toNat - A065091 (n + 1)

end

end A168279.P6286237578844317489

namespace A168279

/-- `A065090(A065091(n+1))-A065091(n+1)` -/
def P6286237578844317489.Spec : Prop :=
  ∀ n, P6286237578844317489.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P17680130614379876525

`A122825(A135731(n+1))-A135731(n+1)`
-/

namespace A168279.P17680130614379876525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (A135731 (n + 1)).toNat - A135731 (n + 1)

end

end A168279.P17680130614379876525

namespace A168279

/-- `A122825(A135731(n+1))-A135731(n+1)` -/
def P17680130614379876525.Spec : Prop :=
  ∀ n, P17680130614379876525.a n = A168279 (n + 1)

end A168279

/-! ## A168279.P7570548385431906295

`A033270(A144570(n+2))`
-/

namespace A168279.P7570548385431906295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A144570 (n + 2)).toNat

end

end A168279.P7570548385431906295

namespace A168279

/-- `A033270(A144570(n+2))` -/
def P7570548385431906295.Spec : Prop :=
  ∀ n, P7570548385431906295.a n = A168279 (n + 1)

end A168279

/-!
# A168280: a(n) = (1 - 5*(-1)^n + 10*n)/4.

The programs for A168280, the canonical program `A168280.P16599915534966423728` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168280 has offset 1).

The definition of A168280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1-5*(-1)^(n+1)+10*(n+1))/4` (program `A168280.P2797360423300701118`, by `A168280.P2797360423300701118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168280.P11039701690838017890

`ogf((4+x^2)/(1-x-x^2+x^3))`
-/

namespace A168280.P11039701690838017890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 1] [1, -1, -1, 1] n

end

end A168280.P11039701690838017890

namespace A168280

/-- `ogf((4+x^2)/(1-x-x^2+x^3))` -/
def P11039701690838017890.Spec : Prop :=
  ∀ n, P11039701690838017890.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P16599915534966423728

`5*(n+1)-a(n-1)-2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168280

/-- `5*(n+1)-a(n-1)-2` -/
def P16599915534966423728.Spec : Prop :=
  ∀ n, P16599915534966423728.a n = A168280 (n + 1)

theorem P16599915534966423728.correct : P16599915534966423728.Spec := by
  intro n
  simp only [A168280, Nat.add_sub_cancel]

end A168280

/-! ## A168280.P2797360423300701118

`(1-5*(-1)^(n+1)+10*(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168280.P2797360423300701118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - 5 * (-1) ^ (n + 1) + (10 * (n + 1) : ℤ) : ℚ) / 4

end

end A168280.P2797360423300701118

namespace A168280

/-- `(1-5*(-1)^(n+1)+10*(n+1))/4` -/
def P2797360423300701118.Spec : Prop :=
  ∀ n, P2797360423300701118.a n = (A168280 (n + 1) : ℚ)

theorem P2797360423300701118.correct : P2797360423300701118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168280, Nat.add_sub_cancel, A168280.P2797360423300701118.a, A168280.P16599915534966423728.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168280, Nat.add_sub_cancel, A168280.P2797360423300701118.a, A168280.P16599915534966423728.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168280

/-! ## A168280.P12818246345890400330

`5+a(n-2)` with `a(0)=4, a(1)=4`
-/

namespace A168280.P12818246345890400330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  5 + a (n - 2)

end

end A168280.P12818246345890400330

namespace A168280

/-- `5+a(n-2)` -/
def P12818246345890400330.Spec : Prop :=
  ∀ n, (P12818246345890400330.a n : ℤ) = A168280 (n + 1)

end A168280

/-! ## A168280.P9595325843591799096

`∑[5-a(n-1)]` with `a(0)=4, a(1)=0`
-/

namespace A168280.P9595325843591799096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168280.P9595325843591799096

namespace A168280

/-- `∑[5-a(n-1)]` -/
def P9595325843591799096.Spec : Prop :=
  ∀ n, P9595325843591799096.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P1265971221483586752

`∑[∑[ogf((4+x^2)/(1+x))]]`
-/

namespace A168280.P1265971221483586752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168280.P1265971221483586752

namespace A168280

/-- `∑[∑[ogf((4+x^2)/(1+x))]]` -/
def P1265971221483586752.Spec : Prop :=
  ∀ n, P1265971221483586752.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P10244510516990647000

`ceil(5*or(3, 2*n)/4)`
-/

namespace A168280.P10244510516990647000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((Nat.lor 3 (2 * n) : ℚ) / 4)⌉

end

end A168280.P10244510516990647000

namespace A168280

/-- `ceil(5*or(3, 2*n)/4)` -/
def P10244510516990647000.Spec : Prop :=
  ∀ n, P10244510516990647000.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P1525980519049093404

`round(5*or(3, 2*n)/4)`
-/

namespace A168280.P1525980519049093404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((Nat.lor 3 (2 * n) : ℚ) / 4))

end

end A168280.P1525980519049093404

namespace A168280

/-- `round(5*or(3, 2*n)/4)` -/
def P1525980519049093404.Spec : Prop :=
  ∀ n, P1525980519049093404.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P13254959919114645255

`5*n-(a(n-1)-3)` with `a(0)=4`
-/

namespace A168280.P13254959919114645255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 3)

end

end A168280.P13254959919114645255

namespace A168280

/-- `5*n-(a(n-1)-3)` -/
def P13254959919114645255.Spec : Prop :=
  ∀ n, P13254959919114645255.a n = A168280 (n + 1)

theorem P13254959919114645255.correct : P13254959919114645255.Spec := by
  intro n
  simp only [A168280, Nat.add_sub_cancel, A168280.P13254959919114645255.a, A168280.P16599915534966423728.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168280

/-! ## A168280.P7547917971790483737

`A298468(or(1, n))`
-/

namespace A168280.P7547917971790483737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 (Nat.lor 1 n)

end

end A168280.P7547917971790483737

namespace A168280

/-- `A298468(or(1, n))` -/
def P7547917971790483737.Spec : Prop :=
  ∀ n, P7547917971790483737.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P15128114685627179441

`∑[log2(A040271(n))]`
-/

namespace A168280.P15128114685627179441
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040271 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168280.P15128114685627179441

namespace A168280

/-- `∑[log2(A040271(n))]` -/
def P15128114685627179441.Spec : Prop :=
  ∀ n, P15128114685627179441.a n = (A168280 (n + 1) : ℝ)

end A168280

/-! ## A168280.P15156847111603076361

`A016897(floor(n/2))`
-/

namespace A168280.P15156847111603076361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 ⌊(n : ℚ) / 2⌋.toNat

end

end A168280.P15156847111603076361

namespace A168280

/-- `A016897(floor(n/2))` -/
def P15156847111603076361.Spec : Prop :=
  ∀ n, P15156847111603076361.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P12851869052323775625

`A168283(n+1)+1`
-/

namespace A168280.P12851869052323775625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168283 (n + 1) + 1

end

end A168280.P12851869052323775625

namespace A168280

/-- `A168283(n+1)+1` -/
def P12851869052323775625.Spec : Prop :=
  ∀ n, P12851869052323775625.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P4797718728777060752

`A166598(n+1)-1`
-/

namespace A168280.P4797718728777060752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166598 (n + 1) - 1

end

end A168280.P4797718728777060752

namespace A168280

/-- `A166598(n+1)-1` -/
def P4797718728777060752.Spec : Prop :=
  ∀ n, P4797718728777060752.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P3525493030707365967

`5*A008619(n)-1`
-/

namespace A168280.P3525493030707365967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008619 n - 1

end

end A168280.P3525493030707365967

namespace A168280

/-- `5*A008619(n)-1` -/
def P3525493030707365967.Spec : Prop :=
  ∀ n, P3525493030707365967.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P9440404894129959436

`5*A004526(n)+4`
-/

namespace A168280.P9440404894129959436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004526 n + 4

end

end A168280.P9440404894129959436

namespace A168280

/-- `5*A004526(n)+4` -/
def P9440404894129959436.Spec : Prop :=
  ∀ n, P9440404894129959436.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P2182111665160306665

`A047204(or(1, n)+1)`
-/

namespace A168280.P2182111665160306665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047204 (Nat.lor 1 n + 1)

end

end A168280.P2182111665160306665

namespace A168280

/-- `A047204(or(1, n)+1)` -/
def P2182111665160306665.Spec : Prop :=
  ∀ n, P2182111665160306665.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P14966286485266393784

`A047208(or(1, n)+1)`
-/

namespace A168280.P14966286485266393784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047208 (Nat.lor 1 n + 1)

end

end A168280.P14966286485266393784

namespace A168280

/-- `A047208(or(1, n)+1)` -/
def P14966286485266393784.Spec : Prop :=
  ∀ n, P14966286485266393784.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P13830702489021907907

`A047209(or(1, n)+1)`
-/

namespace A168280.P13830702489021907907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (Nat.lor 1 n + 1)

end

end A168280.P13830702489021907907

namespace A168280

/-- `A047209(or(1, n)+1)` -/
def P13830702489021907907.Spec : Prop :=
  ∀ n, P13830702489021907907.a n = A168280 (n + 1)

end A168280

/-! ## A168280.P10506494988836639578

`A168200(n+1)+n`
-/

namespace A168280.P10506494988836639578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168200 (n + 1) + (n : ℤ)

end

end A168280.P10506494988836639578

namespace A168280

/-- `A168200(n+1)+n` -/
def P10506494988836639578.Spec : Prop :=
  ∀ n, P10506494988836639578.a n = A168280 (n + 1)

end A168280

/-!
# A168281: Triangle T(n,m) = 2*(min(n - m + 1, m))^2 read by rows.

The programs for A168281, the canonical program `A168281.P1468629803331935945` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168281 has offset 1).

The definition of A168281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168281.P1468629803331935945

`2*A106314(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A168281

/-- `2*A106314(n+1)` -/
def P1468629803331935945.Spec : Prop :=
  ∀ n, P1468629803331935945.a n = A168281 (n + 1)

theorem P1468629803331935945.correct : P1468629803331935945.Spec := by
  intro n
  simp only [A168281, Nat.add_sub_cancel]

end A168281

/-! ## A168281.P15510352134117244815

`2*A003983(n+1)²`
-/

namespace A168281.P15510352134117244815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003983 (n + 1) ^ 2

end

end A168281.P15510352134117244815

namespace A168281

/-- `2*A003983(n+1)²` -/
def P15510352134117244815.Spec : Prop :=
  ∀ n, P15510352134117244815.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P7273902594644860405

`2*(A004197(n)+1)²`
-/

namespace A168281.P7273902594644860405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004197 n + 1) ^ 2

end

end A168281.P7273902594644860405

namespace A168281

/-- `2*(A004197(n)+1)²` -/
def P7273902594644860405.Spec : Prop :=
  ∀ n, P7273902594644860405.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P8899692957204523995

`1-A400875(1+T(n-2,k-1))` with `a(0)=2`
-/

namespace A168281.P8899692957204523995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - A400875 (1 + SequenceMachineLib.triUp2Left a n).toNat

end

end A168281.P8899692957204523995

namespace A168281

/-- `1-A400875(1+T(n-2,k-1))` -/
def P8899692957204523995.Spec : Prop :=
  ∀ n, P8899692957204523995.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P5071015019221306927

`2*(log2(A144464(n))+1)²`
-/

namespace A168281.P5071015019221306927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.logb 2 (A144464 n : ℝ) + 1) ^ 2

end

end A168281.P5071015019221306927

namespace A168281

/-- `2*(log2(A144464(n))+1)²` -/
def P5071015019221306927.Spec : Prop :=
  ∀ n, P5071015019221306927.a n = (A168281 (n + 1) : ℝ)

end A168281

/-! ## A168281.P15677896373943499615

`(A157454(n+1)+1)²/2`
-/

namespace A168281.P15677896373943499615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A157454 (n + 1) + 1) ^ 2 : ℚ) / 2

end

end A168281.P15677896373943499615

namespace A168281

/-- `(A157454(n+1)+1)²/2` -/
def P15677896373943499615.Spec : Prop :=
  ∀ n, P15677896373943499615.a n = (A168281 (n + 1) : ℚ)

end A168281

/-! ## A168281.P12738575692216350594

`2*(val(A036561(n), 6)+1)²`
-/

namespace A168281.P12738575692216350594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1) ^ 2

end

end A168281.P12738575692216350594

namespace A168281

/-- `2*(val(A036561(n), 6)+1)²` -/
def P12738575692216350594.Spec : Prop :=
  ∀ n, (P12738575692216350594.a n : ℤ) = A168281 (n + 1)

theorem P12738575692216350594.correct : P12738575692216350594.Spec := by
  intro n
  simp only [A168281, Nat.add_sub_cancel, A168281.P12738575692216350594.a, A168281.P1468629803331935945.a, A036561, A036561.P7490084913005378529.a, A106314, A106314.P15491378883024418281.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A168281

/-! ## A168281.P16041604089280583421

`A001105(A003983(n+1))`
-/

namespace A168281.P16041604089280583421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A003983 (n + 1)).toNat

end

end A168281.P16041604089280583421

namespace A168281

/-- `A001105(A003983(n+1))` -/
def P16041604089280583421.Spec : Prop :=
  ∀ n, P16041604089280583421.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P13741520840351264304

`A001105(A004197(n)+1)`
-/

namespace A168281.P13741520840351264304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A004197 n + 1).toNat

end

end A168281.P13741520840351264304

namespace A168281

/-- `A001105(A004197(n)+1)` -/
def P13741520840351264304.Spec : Prop :=
  ∀ n, P13741520840351264304.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P11867247744712228204

`A004277(A106314(n+1))`
-/

namespace A168281.P11867247744712228204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A106314 (n + 1)).toNat

end

end A168281.P11867247744712228204

namespace A168281

/-- `A004277(A106314(n+1))` -/
def P11867247744712228204.Spec : Prop :=
  ∀ n, P11867247744712228204.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P17759979975972689617

`A070216(A106255(n+1))`
-/

namespace A168281.P17759979975972689617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (A106255 (n + 1)).toNat

end

end A168281.P17759979975972689617

namespace A168281

/-- `A070216(A106255(n+1))` -/
def P17759979975972689617.Spec : Prop :=
  ∀ n, P17759979975972689617.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P12589790961429219409

`A053439(A157454(n+1))`
-/

namespace A168281.P12589790961429219409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053439 (A157454 (n + 1)).toNat

end

end A168281.P12589790961429219409

namespace A168281

/-- `A053439(A157454(n+1))` -/
def P12589790961429219409.Spec : Prop :=
  ∀ n, P12589790961429219409.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P5189027546533366728

`A005843(A003983(n+1)²)`
-/

namespace A168281.P5189027546533366728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003983 (n + 1) ^ 2).toNat

end

end A168281.P5189027546533366728

namespace A168281

/-- `A005843(A003983(n+1)²)` -/
def P5189027546533366728.Spec : Prop :=
  ∀ n, P5189027546533366728.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P3603143456639528542

`A005843((A004197(n)+1)²)`
-/

namespace A168281.P3603143456639528542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((A004197 n + 1) ^ 2).toNat

end

end A168281.P3603143456639528542

namespace A168281

/-- `A005843((A004197(n)+1)²)` -/
def P3603143456639528542.Spec : Prop :=
  ∀ n, P3603143456639528542.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P14148357540477297070

`A007607(A003983(n+1)²)`
-/

namespace A168281.P14148357540477297070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (A003983 (n + 1) ^ 2).toNat

end

end A168281.P14148357540477297070

namespace A168281

/-- `A007607(A003983(n+1)²)` -/
def P14148357540477297070.Spec : Prop :=
  ∀ n, P14148357540477297070.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P18094853494230760647

`2*A008621(A115281(n))²`
-/

namespace A168281.P18094853494230760647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008621 (A115281 n).toNat ^ 2

end

end A168281.P18094853494230760647

namespace A168281

/-- `2*A008621(A115281(n))²` -/
def P18094853494230760647.Spec : Prop :=
  ∀ n, P18094853494230760647.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P15767580325882002358

`2*A008619(A157458(n))²`
-/

namespace A168281.P15767580325882002358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 (A157458 n).toNat ^ 2

end

end A168281.P15767580325882002358

namespace A168281

/-- `2*A008619(A157458(n))²` -/
def P15767580325882002358.Spec : Prop :=
  ∀ n, P15767580325882002358.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P7453659083526929670

`A000982(A157454(n+1)+1)`
-/

namespace A168281.P7453659083526929670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A157454 (n + 1) + 1).toNat

end

end A168281.P7453659083526929670

namespace A168281

/-- `A000982(A157454(n+1)+1)` -/
def P7453659083526929670.Spec : Prop :=
  ∀ n, P7453659083526929670.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P14376931239860998691

`A087327(A157454(n+1)+1)`
-/

namespace A168281.P14376931239860998691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087327 (A157454 (n + 1) + 1).toNat

end

end A168281.P14376931239860998691

namespace A168281

/-- `A087327(A157454(n+1)+1)` -/
def P14376931239860998691.Spec : Prop :=
  ∀ n, P14376931239860998691.a n = A168281 (n + 1)

end A168281

/-! ## A168281.P9303980087559792334

`A058331(A004197(n)+1)-1`
-/

namespace A168281.P9303980087559792334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (A004197 n + 1).toNat - 1

end

end A168281.P9303980087559792334

namespace A168281

/-- `A058331(A004197(n)+1)-1` -/
def P9303980087559792334.Spec : Prop :=
  ∀ n, P9303980087559792334.a n = A168281 (n + 1)

end A168281

/-!
# A168282: a(n) = (10*n + 5*(-1)^n - 1)/4.

The programs for A168282, the canonical program `A168282.P6292292966215389216` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168282 has offset 1).

The definition of A168282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*(n+1)+5*(-1)^(n+1)-1)/4` (program `A168282.P10931242335522338646`, by `A168282.P10931242335522338646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168282.P4069939297607337744

`ogf((1+5x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168282.P4069939297607337744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -1] [1, -1, -1, 1] n

end

end A168282.P4069939297607337744

namespace A168282

/-- `ogf((1+5x-x^2)/(1-x-x^2+x^3))` -/
def P4069939297607337744.Spec : Prop :=
  ∀ n, P4069939297607337744.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P6292292966215389216

`5*(n+1)-a(n-1)-3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168282

/-- `5*(n+1)-a(n-1)-3` -/
def P6292292966215389216.Spec : Prop :=
  ∀ n, P6292292966215389216.a n = A168282 (n + 1)

theorem P6292292966215389216.correct : P6292292966215389216.Spec := by
  intro n
  simp only [A168282, Nat.add_sub_cancel]

end A168282

/-! ## A168282.P10931242335522338646

`(10*(n+1)+5*(-1)^(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168282.P10931242335522338646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 1 : ℚ) / 4

end

end A168282.P10931242335522338646

namespace A168282

/-- `(10*(n+1)+5*(-1)^(n+1)-1)/4` -/
def P10931242335522338646.Spec : Prop :=
  ∀ n, P10931242335522338646.a n = (A168282 (n + 1) : ℚ)

theorem P10931242335522338646.correct : P10931242335522338646.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168282, Nat.add_sub_cancel, A168282.P10931242335522338646.a, A168282.P6292292966215389216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168282, Nat.add_sub_cancel, A168282.P10931242335522338646.a, A168282.P6292292966215389216.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168282

/-! ## A168282.P15324824229171786794

`A168278(n+1)-1`
-/

namespace A168282.P15324824229171786794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168278 (n + 1) - 1

end

end A168282.P15324824229171786794

namespace A168282

/-- `A168278(n+1)-1` -/
def P15324824229171786794.Spec : Prop :=
  ∀ n, P15324824229171786794.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P9244926124796061546

`5+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A168282.P9244926124796061546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 + a (n - 2)

end

end A168282.P9244926124796061546

namespace A168282

/-- `5+a(n-2)` -/
def P9244926124796061546.Spec : Prop :=
  ∀ n, (P9244926124796061546.a n : ℤ) = A168282 (n + 1)

end A168282

/-! ## A168282.P8720966994894893149

`∑[5*n%2]+1`
-/

namespace A168282.P8720966994894893149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168282.P8720966994894893149

namespace A168282

/-- `∑[5*n%2]+1` -/
def P8720966994894893149.Spec : Prop :=
  ∀ n, (P8720966994894893149.a n : ℤ) = A168282 (n + 1)

end A168282

/-! ## A168282.P8714632947473260827

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=5, a(2)=0`
-/

namespace A168282.P8714632947473260827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168282.P8714632947473260827

namespace A168282

/-- `∑[abs(a(n-2))]` -/
def P8714632947473260827.Spec : Prop :=
  ∀ n, (P8714632947473260827.a n : ℤ) = A168282 (n + 1)

end A168282

/-! ## A168282.P16402863399186275258

`∑[5-a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A168282.P16402863399186275258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168282.P16402863399186275258

namespace A168282

/-- `∑[5-a(n-1)]` -/
def P16402863399186275258.Spec : Prop :=
  ∀ n, P16402863399186275258.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P15609676014572197963

`∑[∑[ogf((1+5x-x^2)/(1+x))]]`
-/

namespace A168282.P15609676014572197963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168282.P15609676014572197963

namespace A168282

/-- `∑[∑[ogf((1+5x-x^2)/(1+x))]]` -/
def P15609676014572197963.Spec : Prop :=
  ∀ n, P15609676014572197963.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P8510222519122623894

`5*n-(a(n-1)-2)` with `a(0)=1`
-/

namespace A168282.P8510222519122623894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 2)

end

end A168282.P8510222519122623894

namespace A168282

/-- `5*n-(a(n-1)-2)` -/
def P8510222519122623894.Spec : Prop :=
  ∀ n, P8510222519122623894.a n = A168282 (n + 1)

theorem P8510222519122623894.correct : P8510222519122623894.Spec := by
  intro n
  simp only [A168282, Nat.add_sub_cancel, A168282.P8510222519122623894.a, A168282.P6292292966215389216.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168282

/-! ## A168282.P3963559668971896708

`∑[gcd(2, n+1)]+xor(1, n+1)`
-/

namespace A168282.P3963559668971896708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 (n + 1)

end

end A168282.P3963559668971896708

namespace A168282

/-- `∑[gcd(2, n+1)]+xor(1, n+1)` -/
def P3963559668971896708.Spec : Prop :=
  ∀ n, (P3963559668971896708.a n : ℤ) = A168282 (n + 1)

end A168282

/-! ## A168282.P15930207322074222863

`A016861(ceil(n/2))`
-/

namespace A168282.P15930207322074222863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 ⌈(n : ℚ) / 2⌉.toNat

end

end A168282.P15930207322074222863

namespace A168282

/-- `A016861(ceil(n/2))` -/
def P15930207322074222863.Spec : Prop :=
  ∀ n, P15930207322074222863.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P5296418820909819903

`∑[A010676(n)]+1`
-/

namespace A168282.P5296418820909819903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A168282.P5296418820909819903

namespace A168282

/-- `∑[A010676(n)]+1` -/
def P5296418820909819903.Spec : Prop :=
  ∀ n, P5296418820909819903.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P8576616180201335400

`∑[and(5, A280193(n))]`
-/

namespace A168282.P8576616180201335400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168282.P8576616180201335400

namespace A168282

/-- `∑[and(5, A280193(n))]` -/
def P8576616180201335400.Spec : Prop :=
  ∀ n, P8576616180201335400.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P9389497891774042664

`∑[A010687(n)]-n`
-/

namespace A168282.P9389497891774042664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168282.P9389497891774042664

namespace A168282

/-- `∑[A010687(n)]-n` -/
def P9389497891774042664.Spec : Prop :=
  ∀ n, P9389497891774042664.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P2927703119635127023

`A168284(n+1)+1`
-/

namespace A168282.P2927703119635127023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) + 1

end

end A168282.P2927703119635127023

namespace A168282

/-- `A168284(n+1)+1` -/
def P2927703119635127023.Spec : Prop :=
  ∀ n, P2927703119635127023.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P5827580623033099212

`A168209(n+1)-2`
-/

namespace A168282.P5827580623033099212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168209 (n + 1) - 2

end

end A168282.P5827580623033099212

namespace A168282

/-- `A168209(n+1)-2` -/
def P5827580623033099212.Spec : Prop :=
  ∀ n, P5827580623033099212.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P7558294372728357874

`5*A110654(n)+1`
-/

namespace A168282.P7558294372728357874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A110654 n + 1

end

end A168282.P7558294372728357874

namespace A168282

/-- `5*A110654(n)+1` -/
def P7558294372728357874.Spec : Prop :=
  ∀ n, P7558294372728357874.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P17661182392168901869

`5*A080513(n)-4`
-/

namespace A168282.P17661182392168901869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A080513 n - 4

end

end A168282.P17661182392168901869

namespace A168282

/-- `5*A080513(n)-4` -/
def P17661182392168901869.Spec : Prop :=
  ∀ n, P17661182392168901869.a n = A168282 (n + 1)

end A168282

/-! ## A168282.P1105373929195857932

`A168461(n+1)/2+1`
-/

namespace A168282.P1105373929195857932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168461 (n + 1) : ℚ) / 2 + 1

end

end A168282.P1105373929195857932

namespace A168282

/-- `A168461(n+1)/2+1` -/
def P1105373929195857932.Spec : Prop :=
  ∀ n, P1105373929195857932.a n = (A168282 (n + 1) : ℚ)

end A168282

/-!
# A168283: a(n) = (10*n - 5*(-1)^n - 3)/4.

The programs for A168283, the canonical program `A168283.P13137697684236794595` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168283 has offset 1).

The definition of A168283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*(n+1)-5*(-1)^(n+1)-3)/4` (program `A168283.P7970962976415562418`, by `A168283.P7970962976415562418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168283.P3200723896326504143

`ogf((3+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168283.P3200723896326504143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2] [1, -1, -1, 1] n

end

end A168283.P3200723896326504143

namespace A168283

/-- `ogf((3+2x^2)/(1-x-x^2+x^3))` -/
def P3200723896326504143.Spec : Prop :=
  ∀ n, P3200723896326504143.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P13137697684236794595

`5*(n+1)-a(n-1)-4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168283

/-- `5*(n+1)-a(n-1)-4` -/
def P13137697684236794595.Spec : Prop :=
  ∀ n, P13137697684236794595.a n = A168283 (n + 1)

theorem P13137697684236794595.correct : P13137697684236794595.Spec := by
  intro n
  simp only [A168283, Nat.add_sub_cancel]

end A168283

/-! ## A168283.P7970962976415562418

`(10*(n+1)-5*(-1)^(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168283.P7970962976415562418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) - 3 : ℚ) / 4

end

end A168283.P7970962976415562418

namespace A168283

/-- `(10*(n+1)-5*(-1)^(n+1)-3)/4` -/
def P7970962976415562418.Spec : Prop :=
  ∀ n, P7970962976415562418.a n = (A168283 (n + 1) : ℚ)

theorem P7970962976415562418.correct : P7970962976415562418.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168283, Nat.add_sub_cancel, A168283.P7970962976415562418.a, A168283.P13137697684236794595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168283, Nat.add_sub_cancel, A168283.P7970962976415562418.a, A168283.P13137697684236794595.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168283

/-! ## A168283.P173174612670459068

`5+a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A168283.P173174612670459068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  5 + a (n - 2)

end

end A168283.P173174612670459068

namespace A168283

/-- `5+a(n-2)` -/
def P173174612670459068.Spec : Prop :=
  ∀ n, (P173174612670459068.a n : ℤ) = A168283 (n + 1)

end A168283

/-! ## A168283.P7911441334607321778

`ceil(5*or(1, n)/2)`
-/

namespace A168283.P7911441334607321778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((Nat.lor 1 n : ℚ) / 2)⌉

end

end A168283.P7911441334607321778

namespace A168283

/-- `ceil(5*or(1, n)/2)` -/
def P7911441334607321778.Spec : Prop :=
  ∀ n, P7911441334607321778.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P4401095384378753177

`round(5*or(1, n)/2)`
-/

namespace A168283.P4401095384378753177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((Nat.lor 1 n : ℚ) / 2))

end

end A168283.P4401095384378753177

namespace A168283

/-- `round(5*or(1, n)/2)` -/
def P4401095384378753177.Spec : Prop :=
  ∀ n, P4401095384378753177.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P17363682517910929913

`∑[gcd(2, n)]+xor(1, n)`
-/

namespace A168283.P17363682517910929913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.xor 1 n

end

end A168283.P17363682517910929913

namespace A168283

/-- `∑[gcd(2, n)]+xor(1, n)` -/
def P17363682517910929913.Spec : Prop :=
  ∀ n, (P17363682517910929913.a n : ℤ) = A168283 (n + 1)

end A168283

/-! ## A168283.P9026665157595945835

`∑[5-a(n-1)]` with `a(0)=3, a(1)=0`
-/

namespace A168283.P9026665157595945835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168283.P9026665157595945835

namespace A168283

/-- `∑[5-a(n-1)]` -/
def P9026665157595945835.Spec : Prop :=
  ∀ n, P9026665157595945835.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P17070238367549239916

`∑[∑[ogf((3+2x^2)/(1+x))]]`
-/

namespace A168283.P17070238367549239916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168283.P17070238367549239916

namespace A168283

/-- `∑[∑[ogf((3+2x^2)/(1+x))]]` -/
def P17070238367549239916.Spec : Prop :=
  ∀ n, P17070238367549239916.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P2071761132688113190

`floor(5*or(3, 2*n)/4)`
-/

namespace A168283.P2071761132688113190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((Nat.lor 3 (2 * n) : ℚ) / 4)⌋

end

end A168283.P2071761132688113190

namespace A168283

/-- `floor(5*or(3, 2*n)/4)` -/
def P2071761132688113190.Spec : Prop :=
  ∀ n, P2071761132688113190.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P11056406413144451274

`5*n-(a(n-1)-1)` with `a(0)=3`
-/

namespace A168283.P11056406413144451274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (5 * n : ℤ) - (a (n - 1) - 1)

end

end A168283.P11056406413144451274

namespace A168283

/-- `5*n-(a(n-1)-1)` -/
def P11056406413144451274.Spec : Prop :=
  ∀ n, P11056406413144451274.a n = A168283 (n + 1)

theorem P11056406413144451274.correct : P11056406413144451274.Spec := by
  intro n
  simp only [A168283, Nat.add_sub_cancel, A168283.P11056406413144451274.a, A168283.P13137697684236794595.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168283

/-! ## A168283.P8742243643944738

`A047204(or(1, n))`
-/

namespace A168283.P8742243643944738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047204 (Nat.lor 1 n)

end

end A168283.P8742243643944738

namespace A168283

/-- `A047204(or(1, n))` -/
def P8742243643944738.Spec : Prop :=
  ∀ n, P8742243643944738.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P18004346780961460561

`A168209(or(1, n))`
-/

namespace A168283.P18004346780961460561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168209 (Nat.lor 1 n)

end

end A168283.P18004346780961460561

namespace A168283

/-- `A168209(or(1, n))` -/
def P18004346780961460561.Spec : Prop :=
  ∀ n, P18004346780961460561.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P13790561742561335624

`A185452(or(1, n))`
-/

namespace A168283.P13790561742561335624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185452 (Nat.lor 1 n)

end

end A168283.P13790561742561335624

namespace A168283

/-- `A185452(or(1, n))` -/
def P13790561742561335624.Spec : Prop :=
  ∀ n, P13790561742561335624.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P12256147040828737894

`A016885(floor(n/2))`
-/

namespace A168283.P12256147040828737894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 ⌊(n : ℚ) / 2⌋.toNat

end

end A168283.P12256147040828737894

namespace A168283

/-- `A016885(floor(n/2))` -/
def P12256147040828737894.Spec : Prop :=
  ∀ n, P12256147040828737894.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P4550438203442796863

`∑[3-A049071(n)]`
-/

namespace A168283.P4550438203442796863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168283.P4550438203442796863

namespace A168283

/-- `∑[3-A049071(n)]` -/
def P4550438203442796863.Spec : Prop :=
  ∀ n, P4550438203442796863.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P12867053611795001105

`∑[A040011(n)]-n`
-/

namespace A168283.P12867053611795001105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A168283.P12867053611795001105

namespace A168283

/-- `∑[A040011(n)]-n` -/
def P12867053611795001105.Spec : Prop :=
  ∀ n, P12867053611795001105.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P13559883786541180090

`A168280(n+1)-1`
-/

namespace A168283.P13559883786541180090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168280 (n + 1) - 1

end

end A168283.P13559883786541180090

namespace A168283

/-- `A168280(n+1)-1` -/
def P13559883786541180090.Spec : Prop :=
  ∀ n, P13559883786541180090.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P5165457072806964367

`A166598(n+1)-2`
-/

namespace A168283.P5165457072806964367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166598 (n + 1) - 2

end

end A168283.P5165457072806964367

namespace A168283

/-- `A166598(n+1)-2` -/
def P5165457072806964367.Spec : Prop :=
  ∀ n, P5165457072806964367.a n = A168283 (n + 1)

end A168283

/-! ## A168283.P11980304316075529533

`3+5*A004526(n)`
-/

namespace A168283.P11980304316075529533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + 5 * A004526 n

end

end A168283.P11980304316075529533

namespace A168283

/-- `3+5*A004526(n)` -/
def P11980304316075529533.Spec : Prop :=
  ∀ n, P11980304316075529533.a n = A168283 (n + 1)

end A168283

/-!
# A168284: a(n) = (10*n + 5*(-1)^n - 5)/4.

The programs for A168284, the canonical program `A168284.P593276418060880336` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168284 has offset 1).

The definition of A168284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*(n+1)+5*(-1)^(n+1)-5)/4` (program `A168284.P10511563362255340886`, by `A168284.P10511563362255340886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168284.P10665630313810089122

`ogf(5x/(1-x-x^2+x^3))`
-/

namespace A168284.P10665630313810089122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -1, -1, 1] n

end

end A168284.P10665630313810089122

namespace A168284

/-- `ogf(5x/(1-x-x^2+x^3))` -/
def P10665630313810089122.Spec : Prop :=
  ∀ n, P10665630313810089122.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P593276418060880336

`5*n-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168284

/-- `5*n-a(n-1)` -/
def P593276418060880336.Spec : Prop :=
  ∀ n, P593276418060880336.a n = A168284 (n + 1)

theorem P593276418060880336.correct : P593276418060880336.Spec := by
  intro n
  simp only [A168284, Nat.add_sub_cancel]

end A168284

/-! ## A168284.P10511563362255340886

`(10*(n+1)+5*(-1)^(n+1)-5)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168284.P10511563362255340886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 5 : ℚ) / 4

end

end A168284.P10511563362255340886

namespace A168284

/-- `(10*(n+1)+5*(-1)^(n+1)-5)/4` -/
def P10511563362255340886.Spec : Prop :=
  ∀ n, P10511563362255340886.a n = (A168284 (n + 1) : ℚ)

theorem P10511563362255340886.correct : P10511563362255340886.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168284, Nat.add_sub_cancel, A168284.P10511563362255340886.a, A168284.P593276418060880336.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168284, Nat.add_sub_cancel, A168284.P10511563362255340886.a, A168284.P593276418060880336.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168284

/-! ## A168284.P6750324236261529113

`5*A004526(n+1)`
-/

namespace A168284.P6750324236261529113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004526 (n + 1)

end

end A168284.P6750324236261529113

namespace A168284

/-- `5*A004526(n+1)` -/
def P6750324236261529113.Spec : Prop :=
  ∀ n, P6750324236261529113.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P6139137597463745666

`∑[5*n%2]`
-/

namespace A168284.P6139137597463745666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P6139137597463745666

namespace A168284

/-- `∑[5*n%2]` -/
def P6139137597463745666.Spec : Prop :=
  ∀ n, (P6139137597463745666.a n : ℤ) = A168284 (n + 1)

end A168284

/-! ## A168284.P4330860007393149653

`∑[5*and(1, n)]`
-/

namespace A168284.P4330860007393149653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P4330860007393149653

namespace A168284

/-- `∑[5*and(1, n)]` -/
def P4330860007393149653.Spec : Prop :=
  ∀ n, (P4330860007393149653.a n : ℤ) = A168284 (n + 1)

end A168284

/-! ## A168284.P4000142161893603017

`∑[lcm(5, and(1, n))]`
-/

namespace A168284.P4000142161893603017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P4000142161893603017

namespace A168284

/-- `∑[lcm(5, and(1, n))]` -/
def P4000142161893603017.Spec : Prop :=
  ∀ n, (P4000142161893603017.a n : ℤ) = A168284 (n + 1)

end A168284

/-! ## A168284.P1569068285183657209

`∑[and(5, -n^4)]`
-/

namespace A168284.P1569068285183657209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (-(n ^ 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P1569068285183657209

namespace A168284

/-- `∑[and(5, -n^4)]` -/
def P1569068285183657209.Spec : Prop :=
  ∀ n, P1569068285183657209.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P16268959787856353949

`a(n-2)+5` with `a(0)=0, a(1)=5`
-/

namespace A168284.P16268959787856353949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 2) + 5

end

end A168284.P16268959787856353949

namespace A168284

/-- `a(n-2)+5` -/
def P16268959787856353949.Spec : Prop :=
  ∀ n, (P16268959787856353949.a n : ℤ) = A168284 (n + 1)

end A168284

/-! ## A168284.P3662002730278316216

`∑[5*(2-gcd(2, n))]`
-/

namespace A168284.P3662002730278316216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P3662002730278316216

namespace A168284

/-- `∑[5*(2-gcd(2, n))]` -/
def P3662002730278316216.Spec : Prop :=
  ∀ n, P3662002730278316216.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P12806865238977852556

`∑[5-a(n-1)]` with `a(0)=0`
-/

namespace A168284.P12806865238977852556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P12806865238977852556

namespace A168284

/-- `∑[5-a(n-1)]` -/
def P12806865238977852556.Spec : Prop :=
  ∀ n, P12806865238977852556.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P15630186346714441731

`5*∑[n]/or(1, n)`
-/

namespace A168284.P15630186346714441731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A168284.P15630186346714441731

namespace A168284

/-- `5*∑[n]/or(1, n)` -/
def P15630186346714441731.Spec : Prop :=
  ∀ n, P15630186346714441731.a n = (A168284 (n + 1) : ℚ)

end A168284

/-! ## A168284.P10382623138562140347

`∑[∑[ogf(5x/(1+x))]]`
-/

namespace A168284.P10382623138562140347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P10382623138562140347

namespace A168284

/-- `∑[∑[ogf(5x/(1+x))]]` -/
def P10382623138562140347.Spec : Prop :=
  ∀ n, P10382623138562140347.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P7923687814096588648

`∑[6^(n²%2)-1]`
-/

namespace A168284.P7923687814096588648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n ^ 2 % 2) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P7923687814096588648

namespace A168284

/-- `∑[6^(n²%2)-1]` -/
def P7923687814096588648.Spec : Prop :=
  ∀ n, P7923687814096588648.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P638196218588780722

`∑[5%xor(n, n+1)²]`
-/

namespace A168284.P638196218588780722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 % Nat.xor n (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P638196218588780722

namespace A168284

/-- `∑[5%xor(n, n+1)²]` -/
def P638196218588780722.Spec : Prop :=
  ∀ n, (P638196218588780722.a n : ℤ) = A168284 (n + 1)

end A168284

/-! ## A168284.P6085353534226706911

`5*and(n+1, -2)/2`
-/

namespace A168284.P6085353534226706911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * Int.land (n + 1 : ℤ) (-2) : ℚ) / 2

end

end A168284.P6085353534226706911

namespace A168284

/-- `5*and(n+1, -2)/2` -/
def P6085353534226706911.Spec : Prop :=
  ∀ n, P6085353534226706911.a n = (A168284 (n + 1) : ℚ)

end A168284

/-! ## A168284.P3968542687617803955

`5-floor(-a(n-2))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A168284.P3968542687617803955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 - (-a (n - 2))

end

end A168284.P3968542687617803955

namespace A168284

/-- `5-floor(-a(n-2))` -/
def P3968542687617803955.Spec : Prop :=
  ∀ n, P3968542687617803955.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P13336685747528310471

`5-ceil(-a(n-2))` with `a(0)=0, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A168284.P13336685747528310471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 - (-a (n - 2))

end

end A168284.P13336685747528310471

namespace A168284

/-- `5-ceil(-a(n-2))` -/
def P13336685747528310471.Spec : Prop :=
  ∀ n, P13336685747528310471.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P17368756237537121048

`5-round(-a(n-2))` with `a(0)=0, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A168284.P17368756237537121048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 - (-a (n - 2))

end

end A168284.P17368756237537121048

namespace A168284

/-- `5-round(-a(n-2))` -/
def P17368756237537121048.Spec : Prop :=
  ∀ n, P17368756237537121048.a n = A168284 (n + 1)

end A168284

/-! ## A168284.P6170901429099212376

`∑[6-6^((n+1)%2)]`
-/

namespace A168284.P6170901429099212376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (6 ^ ((n + 1) % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168284.P6170901429099212376

namespace A168284

/-- `∑[6-6^((n+1)%2)]` -/
def P6170901429099212376.Spec : Prop :=
  ∀ n, P6170901429099212376.a n = A168284 (n + 1)

end A168284

/-!
# A168285: a(n) = ((n-th nonprime)-th prime) - (n-th nonprime).

The programs for A168285, the canonical program `A168285.P1652759272398697817` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168285 has offset 1).

The definition of A168285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168285.P1652759272398697817

`A007821(n+1)-A018252(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A168285

/-- `A007821(n+1)-A018252(n+1)` -/
def P1652759272398697817.Spec : Prop :=
  ∀ n, P1652759272398697817.a n = A168285 (n + 1)

theorem P1652759272398697817.correct : P1652759272398697817.Spec := by
  intro n
  simp only [A168285, Nat.add_sub_cancel]

end A168285

/-! ## A168285.P6012570135377182389

`A007821(n+1)-Δ[A051349(n)]`
-/

namespace A168285.P6012570135377182389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - (f1 (n + 1) - f1 n)

end

end A168285.P6012570135377182389

namespace A168285

/-- `A007821(n+1)-Δ[A051349(n)]` -/
def P6012570135377182389.Spec : Prop :=
  ∀ n, P6012570135377182389.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P6075605973896734124

`A007821(n+1)-A141468(n+2)`
-/

namespace A168285.P6075605973896734124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A141468 (n + 2)

end

end A168285.P6075605973896734124

namespace A168285

/-- `A007821(n+1)-A141468(n+2)` -/
def P6075605973896734124.Spec : Prop :=
  ∀ n, P6075605973896734124.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P3769103630206954137

`A007821(n+1)-∑[A054546(n+1)]`
-/

namespace A168285.P3769103630206954137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168285.P3769103630206954137

namespace A168285

/-- `A007821(n+1)-∑[A054546(n+1)]` -/
def P3769103630206954137.Spec : Prop :=
  ∀ n, P3769103630206954137.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P1703959014992653836

`p?[A141437(n+1)]-A018252(n+1)`
-/

namespace A168285.P1703959014992653836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A018252 (n + 1)

end

end A168285.P1703959014992653836

namespace A168285

/-- `p?[A141437(n+1)]-A018252(n+1)` -/
def P1703959014992653836.Spec : Prop :=
  ∀ n, P1703959014992653836.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P8744497488995149870

`A144570(n+1)+A168271(n+1)-A141468(n+2)`
-/

namespace A168285.P8744497488995149870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 1) + (A168271 (n + 1) - A141468 (n + 2))

end

end A168285.P8744497488995149870

namespace A168285

/-- `A144570(n+1)+A168271(n+1)-A141468(n+2)` -/
def P8744497488995149870.Spec : Prop :=
  ∀ n, P8744497488995149870.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P114355872354317938

`A014689(A018252(n+1))`
-/

namespace A168285.P114355872354317938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A018252 (n + 1)).toNat

end

end A168285.P114355872354317938

namespace A168285

/-- `A014689(A018252(n+1))` -/
def P114355872354317938.Spec : Prop :=
  ∀ n, P114355872354317938.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P13770500361286490267

`A014689(A065090(n+2))`
-/

namespace A168285.P13770500361286490267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A065090 (n + 2)).toNat

end

end A168285.P13770500361286490267

namespace A168285

/-- `A014689(A065090(n+2))` -/
def P13770500361286490267.Spec : Prop :=
  ∀ n, P13770500361286490267.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P5082366695319457897

`A014689(A141468(n+2))`
-/

namespace A168285.P5082366695319457897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A141468 (n + 2)).toNat

end

end A168285.P5082366695319457897

namespace A168285

/-- `A014689(A141468(n+2))` -/
def P5082366695319457897.Spec : Prop :=
  ∀ n, P5082366695319457897.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P16984849564672690419

`A014689(A073425(n)+1+n)`
-/

namespace A168285.P16984849564672690419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A073425 n + 1 + (n : ℤ)).toNat

end

end A168285.P16984849564672690419

namespace A168285

/-- `A014689(A073425(n)+1+n)` -/
def P16984849564672690419.Spec : Prop :=
  ∀ n, P16984849564672690419.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P11063617009206112917

`A014689(A173073(n+2)+n+1)`
-/

namespace A168285.P11063617009206112917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A173073 (n + 2) + (n + 1 : ℤ)).toNat

end

end A168285.P11063617009206112917

namespace A168285

/-- `A014689(A173073(n+2)+n+1)` -/
def P11063617009206112917.Spec : Prop :=
  ∀ n, P11063617009206112917.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P1165802693163591477

`record[A000040(n+1)-A143545(n+1)]`
-/

namespace A168285.P1165802693163591477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A143545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168285.P1165802693163591477

namespace A168285

/-- `record[A000040(n+1)-A143545(n+1)]` -/
def P1165802693163591477.Spec : Prop :=
  ∀ n, P1165802693163591477.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P4944392111845258851

`record[A000040(n+1)-(n+1)-C(A006530(n+1), n)%(n+1)²]`
-/

namespace A168285.P4944392111845258851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) - ((Nat.choose (A006530 (n + 1)).toNat n % (n + 1) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168285.P4944392111845258851

namespace A168285

/-- `record[A000040(n+1)-(n+1)-C(A006530(n+1), n)%(n+1)²]` -/
def P4944392111845258851.Spec : Prop :=
  ∀ n, P4944392111845258851.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P17341239449316548129

`record[A000040(n+1)-(n+1)-C(A020639(n+1), n)%(n+1)²]`
-/

namespace A168285.P17341239449316548129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) - ((Nat.choose (A020639 (n + 1)).toNat n % (n + 1) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168285.P17341239449316548129

namespace A168285

/-- `record[A000040(n+1)-(n+1)-C(A020639(n+1), n)%(n+1)²]` -/
def P17341239449316548129.Spec : Prop :=
  ∀ n, P17341239449316548129.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P9661759919836511626

`record[A000040(n+1)-(n+1)-(n+1)*(3%A000005(n+1))%3]`
-/

namespace A168285.P9661759919836511626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) - (n + 1 : ℤ) * Int.tmod (Int.tmod 3 (A000005 (n + 1))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168285.P9661759919836511626

namespace A168285

/-- `record[A000040(n+1)-(n+1)-(n+1)*(3%A000005(n+1))%3]` -/
def P9661759919836511626.Spec : Prop :=
  ∀ n, P9661759919836511626.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P11288837089725462191

`record[A000040(n+1)-(n+1)-(n+1)*floor(n/(A000203(n+1)-2))]`
-/

namespace A168285.P11288837089725462191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) - (n + 1 : ℤ) * ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168285.P11288837089725462191

namespace A168285

/-- `record[A000040(n+1)-(n+1)-(n+1)*floor(n/(A000203(n+1)-2))]` -/
def P11288837089725462191.Spec : Prop :=
  ∀ n, P11288837089725462191.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P3824291988186118767

`A014689(A051349(n+1)-A051349(n))`
-/

namespace A168285.P3824291988186118767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A051349 (n + 1) - A051349 n).toNat

end

end A168285.P3824291988186118767

namespace A168285

/-- `A014689(A051349(n+1)-A051349(n))` -/
def P3824291988186118767.Spec : Prop :=
  ∀ n, P3824291988186118767.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P15521001442562888944

`A014689(A163249(n+1)-A014689(n+1))`
-/

namespace A168285.P15521001442562888944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A163249 (n + 1) - A014689 (n + 1)).toNat

end

end A168285.P15521001442562888944

namespace A168285

/-- `A014689(A163249(n+1)-A014689(n+1))` -/
def P15521001442562888944.Spec : Prop :=
  ∀ n, P15521001442562888944.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P5823898353131377095

`A006093(A018252(n+1))-comp[A006093(n+1)]`
-/

namespace A168285.P5823898353131377095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A018252 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A168285.P5823898353131377095

namespace A168285

/-- `A006093(A018252(n+1))-comp[A006093(n+1)]` -/
def P5823898353131377095.Spec : Prop :=
  ∀ n, P5823898353131377095.a n = A168285 (n + 1)

end A168285

/-! ## A168285.P8699915605996456018

`A000040(A222307(2*n+1))-A222307(2*n+1)`
-/

namespace A168285.P8699915605996456018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A222307 (2 * n + 1)).toNat - A222307 (2 * n + 1)

end

end A168285.P8699915605996456018

namespace A168285

/-- `A000040(A222307(2*n+1))-A222307(2*n+1)` -/
def P8699915605996456018.Spec : Prop :=
  ∀ n, P8699915605996456018.a n = A168285 (n + 1)

end A168285

/-!
# A168286: a(n) = (6*n + 3*(-1)^n + 1)/2.

The programs for A168286, the canonical program `A168286.P16015750036660321858` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168286 has offset 1).

The definition of A168286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6*(n+1)+3*(-1)^(n+1)+1)/2` (program `A168286.P197014687430256711`, by `A168286.P197014687430256711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168286.P15573883387246683259

`ogf((2+6x-2x^2)/(1-x-x^2+x^3))`
-/

namespace A168286.P15573883387246683259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -2] [1, -1, -1, 1] n

end

end A168286.P15573883387246683259

namespace A168286

/-- `ogf((2+6x-2x^2)/(1-x-x^2+x^3))` -/
def P15573883387246683259.Spec : Prop :=
  ∀ n, P15573883387246683259.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P16015750036660321858

`6*(n+1)-a(n-1)-2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168286

/-- `6*(n+1)-a(n-1)-2` -/
def P16015750036660321858.Spec : Prop :=
  ∀ n, P16015750036660321858.a n = A168286 (n + 1)

theorem P16015750036660321858.correct : P16015750036660321858.Spec := by
  intro n
  simp only [A168286, Nat.add_sub_cancel]

end A168286

/-! ## A168286.P197014687430256711

`(6*(n+1)+3*(-1)^(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168286.P197014687430256711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) + 3 * (-1) ^ (n + 1) + 1 : ℚ) / 2

end

end A168286.P197014687430256711

namespace A168286

/-- `(6*(n+1)+3*(-1)^(n+1)+1)/2` -/
def P197014687430256711.Spec : Prop :=
  ∀ n, P197014687430256711.a n = (A168286 (n + 1) : ℚ)

theorem P197014687430256711.correct : P197014687430256711.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168286, Nat.add_sub_cancel, A168286.P197014687430256711.a, A168286.P16015750036660321858.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168286, Nat.add_sub_cancel, A168286.P197014687430256711.a, A168286.P16015750036660321858.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A168286

/-! ## A168286.P6795452594726092802

`A168301(n+1)+1`
-/

namespace A168286.P6795452594726092802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168301 (n + 1) + 1

end

end A168286.P6795452594726092802

namespace A168286

/-- `A168301(n+1)+1` -/
def P6795452594726092802.Spec : Prop :=
  ∀ n, P6795452594726092802.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P9077451107173766084

`2*A168233(n+1)`
-/

namespace A168286.P9077451107173766084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168233 (n + 1)

end

end A168286.P9077451107173766084

namespace A168286

/-- `2*A168233(n+1)` -/
def P9077451107173766084.Spec : Prop :=
  ∀ n, P9077451107173766084.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P12715439987635532030

`6+a(n-2)` with `a(0)=2, a(1)=8`
-/

namespace A168286.P12715439987635532030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  6 + a (n - 2)

end

end A168286.P12715439987635532030

namespace A168286

/-- `6+a(n-2)` -/
def P12715439987635532030.Spec : Prop :=
  ∀ n, (P12715439987635532030.a n : ℤ) = A168286 (n + 1)

end A168286

/-! ## A168286.P13838095635751798747

`5-3*or(1, -n)`
-/

namespace A168286.P13838095635751798747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 3 * Int.lor 1 (-(n : ℤ))

end

end A168286.P13838095635751798747

namespace A168286

/-- `5-3*or(1, -n)` -/
def P13838095635751798747.Spec : Prop :=
  ∀ n, P13838095635751798747.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P6103417949756322772

`3*or(1, n+1)-1`
-/

namespace A168286.P6103417949756322772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 1 (n + 1) : ℤ) - 1

end

end A168286.P6103417949756322772

namespace A168286

/-- `3*or(1, n+1)-1` -/
def P6103417949756322772.Spec : Prop :=
  ∀ n, P6103417949756322772.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P4354633647509791387

`xor(1, 3*or(1, n+1))`
-/

namespace A168286.P4354633647509791387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * Nat.lor 1 (n + 1))

end

end A168286.P4354633647509791387

namespace A168286

/-- `xor(1, 3*or(1, n+1))` -/
def P4354633647509791387.Spec : Prop :=
  ∀ n, (P4354633647509791387.a n : ℤ) = A168286 (n + 1)

end A168286

/-! ## A168286.P2200768087948781139

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=6, a(2)=0`
-/

namespace A168286.P2200768087948781139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168286.P2200768087948781139

namespace A168286

/-- `∑[abs(a(n-2))]` -/
def P2200768087948781139.Spec : Prop :=
  ∀ n, (P2200768087948781139.a n : ℤ) = A168286 (n + 1)

end A168286

/-! ## A168286.P6177000607505833061

`∑[6-a(n-1)]` with `a(0)=2, a(1)=6`
-/

namespace A168286.P6177000607505833061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168286.P6177000607505833061

namespace A168286

/-- `∑[6-a(n-1)]` -/
def P6177000607505833061.Spec : Prop :=
  ∀ n, P6177000607505833061.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P5586575501487586038

`3*(n%2+n)+2`
-/

namespace A168286.P5586575501487586038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2 + n) + 2

end

end A168286.P5586575501487586038

namespace A168286

/-- `3*(n%2+n)+2` -/
def P5586575501487586038.Spec : Prop :=
  ∀ n, (P5586575501487586038.a n : ℤ) = A168286 (n + 1)

end A168286

/-! ## A168286.P3358196265820223688

`∑[∑[ogf((2+6x-2x^2)/(1+x))]]`
-/

namespace A168286.P3358196265820223688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168286.P3358196265820223688

namespace A168286

/-- `∑[∑[ogf((2+6x-2x^2)/(1+x))]]` -/
def P3358196265820223688.Spec : Prop :=
  ∀ n, P3358196265820223688.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P5883003025834533382

`3*and(n+1, -2)+2`
-/

namespace A168286.P5883003025834533382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n + 1 : ℤ) (-2) + 2

end

end A168286.P5883003025834533382

namespace A168286

/-- `3*and(n+1, -2)+2` -/
def P5883003025834533382.Spec : Prop :=
  ∀ n, P5883003025834533382.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P10765558421332895156

`∑[3*2*and(1, n)]+2`
-/

namespace A168286.P10765558421332895156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168286.P10765558421332895156

namespace A168286

/-- `∑[3*2*and(1, n)]+2` -/
def P10765558421332895156.Spec : Prop :=
  ∀ n, (P10765558421332895156.a n : ℤ) = A168286 (n + 1)

end A168286

/-! ## A168286.P17721617290234336094

`6-floor(-a(n-2))` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A168286.P17721617290234336094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  6 - (-a (n - 2))

end

end A168286.P17721617290234336094

namespace A168286

/-- `6-floor(-a(n-2))` -/
def P17721617290234336094.Spec : Prop :=
  ∀ n, P17721617290234336094.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P8053428812512635983

`6-ceil(-a(n-2))` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A168286.P8053428812512635983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  6 - (-a (n - 2))

end

end A168286.P8053428812512635983

namespace A168286

/-- `6-ceil(-a(n-2))` -/
def P8053428812512635983.Spec : Prop :=
  ∀ n, P8053428812512635983.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P4619333867972119227

`6-round(-a(n-2))` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A168286.P4619333867972119227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  6 - (-a (n - 2))

end

end A168286.P4619333867972119227

namespace A168286

/-- `6-round(-a(n-2))` -/
def P4619333867972119227.Spec : Prop :=
  ∀ n, P4619333867972119227.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P6022743094296697044

`3*(n+2)-gcd(2, n)²`
-/

namespace A168286.P6022743094296697044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) : ℤ) - (Nat.gcd 2 n ^ 2 : ℤ)

end

end A168286.P6022743094296697044

namespace A168286

/-- `3*(n+2)-gcd(2, n)²` -/
def P6022743094296697044.Spec : Prop :=
  ∀ n, P6022743094296697044.a n = A168286 (n + 1)

end A168286

/-! ## A168286.P17482351925650004146

`xor(1, record[xor(2, n+1)])+n`
-/

namespace A168286.P17482351925650004146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + n

end

end A168286.P17482351925650004146

namespace A168286

/-- `xor(1, record[xor(2, n+1)])+n` -/
def P17482351925650004146.Spec : Prop :=
  ∀ n, (P17482351925650004146.a n : ℤ) = A168286 (n + 1)

end A168286

/-!
# A168287: T(n,k) = 2*A046802(n,k) - A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168287, there is no canonical definition to state claims against.
-/

/-! ## A168287.P4836014534035030642

`2*A046802(C(row(n)+1, 2)+col(n))-A007318(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168287.P4836014534035030642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046802 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A168287.P4836014534035030642

/-! ## A168287.P11812843916587378692

`2*A046802(n)-A007318(n)`
-/

namespace A168287.P11812843916587378692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046802 n - A007318 n

end

end A168287.P11812843916587378692

/-! ## A168287.P16956856251829948531

`2*A046802(n)-abs(A130595(n))`
-/

namespace A168287.P16956856251829948531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046802 n - |A130595 n|

end

end A168287.P16956856251829948531

/-! ## A168287.P7178172252743736592

`2*A046802(n)-sqrt(A008459(n))`
-/

namespace A168287.P7178172252743736592
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A046802 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A168287.P7178172252743736592

/-! ## A168287.P13902574661143058562

`2*A046802(n)-Δ[A102363(n)]`
-/

namespace A168287.P13902574661143058562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046802 n - (f1 (n + 1) - f1 n)

end

end A168287.P13902574661143058562

/-! ## A168287.P14942500851291580802

`2*A046802(n)-A028326(n)/2`
-/

namespace A168287.P14942500851291580802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A046802 n : ℚ) - (A028326 n : ℚ) / 2

end

end A168287.P14942500851291580802

/-! ## A168287.P12562277767533975898

`A046802(n)+A046802(n)-(A014473(n)+1)`
-/

namespace A168287.P12562277767533975898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n + (A046802 n - (A014473 n + 1))

end

end A168287.P12562277767533975898

/-! ## A168287.P11237451045886134455

`A007318(n)+A168288(n)-A046802(n)`
-/

namespace A168287.P11237451045886134455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A168288 n - A046802 n)

end

end A168287.P11237451045886134455

/-! ## A168287.P705149858217556738

`Δ[A102363(n)]+A168288(n)-A046802(n)`
-/

namespace A168287.P705149858217556738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A168288 n - A046802 n)

end

end A168287.P705149858217556738

/-! ## A168287.P11255819864692884125

`(A168288(n)+A046802(n))/2`
-/

namespace A168287.P11255819864692884125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168288 n + A046802 n : ℚ) / 2

end

end A168287.P11255819864692884125

/-! ## A168287.P15111252118697219855

`A046802(n)+A168289(n)-A168288(n)`
-/

namespace A168287.P15111252118697219855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n + (A168289 n - A168288 n)

end

end A168287.P15111252118697219855

/-! ## A168287.P14385866797636800999

`2*A046802(n)-A078898(A028326(n))`
-/

namespace A168287.P14385866797636800999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046802 n - A078898 (A028326 n).toNat

end

end A168287.P14385866797636800999

/-!
# A168288: T(n,k) = 3*A046802(n,k) - 2*A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168288, there is no canonical definition to state claims against.
-/

/-! ## A168288.P16379516618663444526

`3*A046802(C(row(n)+1, 2)+col(n))-2*A007318(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168288.P16379516618663444526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046802 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 2 * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A168288.P16379516618663444526

/-! ## A168288.P15053468937830129649

`3*A046802(n)-A028326(n)`
-/

namespace A168288.P15053468937830129649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046802 n - A028326 n

end

end A168288.P15053468937830129649

/-! ## A168288.P13400370132740501856

`3*A046802(n)-2*A007318(n)`
-/

namespace A168288.P13400370132740501856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046802 n - 2 * A007318 n

end

end A168288.P13400370132740501856

/-! ## A168288.P198523826128661532

`A046802(n)+A168287(n)-A007318(n)`
-/

namespace A168288.P198523826128661532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n + (A168287 n - A007318 n)

end

end A168288.P198523826128661532

/-! ## A168288.P14770225115905164633

`2*A168287(n)-A046802(n)`
-/

namespace A168288.P14770225115905164633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168287 n - A046802 n

end

end A168288.P14770225115905164633

/-! ## A168288.P18091078924112905468

`(A168290(n)+A046802(n))/2`
-/

namespace A168288.P18091078924112905468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168290 n + A046802 n : ℚ) / 2

end

end A168288.P18091078924112905468

/-! ## A168288.P11614147164210727351

`(A168289(n)+A168287(n))/2`
-/

namespace A168288.P11614147164210727351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168289 n + A168287 n : ℚ) / 2

end

end A168288.P11614147164210727351

/-! ## A168288.P9076413863659880451

`A007318(n)+A168289(n)-A046802(n)`
-/

namespace A168288.P9076413863659880451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A168289 n - A046802 n)

end

end A168288.P9076413863659880451

/-! ## A168288.P1895234990383155189

`A046802(n)+A168289(n)-A168287(n)`
-/

namespace A168288.P1895234990383155189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n + (A168289 n - A168287 n)

end

end A168288.P1895234990383155189

/-! ## A168288.P5431525458413646538

`2*A168289(n)-A168290(n)`
-/

namespace A168288.P5431525458413646538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168289 n - A168290 n

end

end A168288.P5431525458413646538

/-!
# A168289: T(n,k) = 4*A046802(n,k) - 3*A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168289, there is no canonical definition to state claims against.
-/

/-! ## A168289.P9342780797962144312

`4*A046802(C(row(n)+1, 2)+col(n))-3*A007318(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168289.P9342780797962144312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A046802 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 3 * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A168289.P9342780797962144312

/-! ## A168289.P17095029450121416283

`2*A168287(n)-A007318(n)`
-/

namespace A168289.P17095029450121416283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168287 n - A007318 n

end

end A168289.P17095029450121416283

/-! ## A168289.P9966555111452886523

`2*A168288(n)-A168287(n)`
-/

namespace A168289.P9966555111452886523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168288 n - A168287 n

end

end A168289.P9966555111452886523

/-! ## A168289.P14850968687874162794

`2*A168287(n)-abs(A108086(n))`
-/

namespace A168289.P14850968687874162794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168287 n - |A108086 n|

end

end A168289.P14850968687874162794

/-! ## A168289.P17024955056471418863

`2*A168287(n)-abs(A130595(n))`
-/

namespace A168289.P17024955056471418863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168287 n - |A130595 n|

end

end A168289.P17024955056471418863

/-! ## A168289.P2861829516119506891

`2*A168287(n)-sqrt(A008459(n))`
-/

namespace A168289.P2861829516119506891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A168287 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A168289.P2861829516119506891

/-! ## A168289.P9538543017981969170

`2*A168287(n)-Δ[A102363(n)]`
-/

namespace A168289.P9538543017981969170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168287 n - (f1 (n + 1) - f1 n)

end

end A168289.P9538543017981969170

/-! ## A168289.P15406068416344258501

`A046802(n)+A168288(n)-A007318(n)`
-/

namespace A168289.P15406068416344258501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n + (A168288 n - A007318 n)

end

end A168289.P15406068416344258501

/-! ## A168289.P3619698021524878526

`A007318(n)+A168290(n)-A046802(n)`
-/

namespace A168289.P3619698021524878526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A168290 n - A046802 n)

end

end A168289.P3619698021524878526

/-! ## A168289.P7085050073790194796

`A168287(n)+A168288(n)-A046802(n)`
-/

namespace A168289.P7085050073790194796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + (A168288 n - A046802 n)

end

end A168289.P7085050073790194796

/-! ## A168289.P747706706753287204

`(A168290(n)+A168288(n))/2`
-/

namespace A168289.P747706706753287204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168290 n + A168288 n : ℚ) / 2

end

end A168289.P747706706753287204

/-!
# A168290: T(n,k) = 5*A046802(n,k) - 4*A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168290, there is no canonical definition to state claims against.
-/

/-! ## A168290.P13870805862915326066

`5*A046802(C(row(n)+1, 2)+col(n))-4*A007318(C(row(n)+1, 2)+col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168290.P13870805862915326066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A046802 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 4 * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A168290.P13870805862915326066

/-! ## A168290.P12338651750252428028

`2*A168288(n)-A046802(n)`
-/

namespace A168290.P12338651750252428028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168288 n - A046802 n

end

end A168290.P12338651750252428028

/-! ## A168290.P5939119642436586809

`A046802(n)+A168289(n)-A007318(n)`
-/

namespace A168290.P5939119642436586809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046802 n + (A168289 n - A007318 n)

end

end A168290.P5939119642436586809

/-! ## A168290.P15310393278014290250

`A168287(n)+A168288(n)-A007318(n)`
-/

namespace A168290.P15310393278014290250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + (A168288 n - A007318 n)

end

end A168290.P15310393278014290250

/-! ## A168290.P57503960484750846

`A168287(n)+A168289(n)-A046802(n)`
-/

namespace A168290.P57503960484750846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + (A168289 n - A046802 n)

end

end A168290.P57503960484750846

/-! ## A168290.P15254202287893450777

`A168288(n)+A168289(n)-A168287(n)`
-/

namespace A168290.P15254202287893450777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168288 n + (A168289 n - A168287 n)

end

end A168290.P15254202287893450777

/-! ## A168290.P12236518361913176228

`A168287(n)+A168288(n)-Δ[A102363(n)]`
-/

namespace A168290.P12236518361913176228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168287 n + (A168288 n - (f1 (n + 1) - f1 n))

end

end A168290.P12236518361913176228

/-! ## A168290.P4866511652261983157

`A007318(n)+5*(A046802(n)-(A014473(n)+1))`
-/

namespace A168290.P4866511652261983157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 5 * (A046802 n - (A014473 n + 1))

end

end A168290.P4866511652261983157

/-! ## A168290.P4787576597379722805

`2*A168289(n)-A168288(n)`
-/

namespace A168290.P4787576597379722805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168289 n - A168288 n

end

end A168290.P4787576597379722805

/-!
# A168291: T(n,k) = 4*A046802(n,k) - 2*A008518(n,k) - A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168291, there is no canonical definition to state claims against.
-/

/-! ## A168291.P9943758372613352099

`A157177(n)+A124762(A184173(n))`
-/

namespace A168291.P9943758372613352099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157177 n + A124762 (A184173 n).toNat

end

end A168291.P9943758372613352099

/-! ## A168291.P7805976345645856657

`A033677(lcm(A154980(n), A157177(n)))`
-/

namespace A168291.P7805976345645856657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (Int.lcm (A154980 n) (A157177 n))

end

end A168291.P7805976345645856657

/-! ## A168291.P14214706267521250050

`A003056(A188666(A166340(n+1))²)`
-/

namespace A168291.P14214706267521250050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A188666 (A166340 (n + 1)).toNat ^ 2).toNat

end

end A168291.P14214706267521250050

/-! ## A168291.P4324876633182170895

`A307707(A154983(n)²)+A046802(n)`
-/

namespace A168291.P4324876633182170895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A154983 n ^ 2).toNat + A046802 n

end

end A168291.P4324876633182170895

/-! ## A168291.P7506643363874187541

`A062068(A022182(n))`
-/

namespace A168291.P7506643363874187541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A022182 n).toNat

end

end A168291.P7506643363874187541

/-!
# A168292: T(n,k) = 24*A046802(n,k) - 9*A008518(n,k) - 8*A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168292, there is no canonical definition to state claims against.
-/

/-! ## A168292.P4482523148176532636

`A168293(n)+6*A168287(n)`
-/

namespace A168292.P4482523148176532636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168293 n + 6 * A168287 n

end

end A168292.P4482523148176532636

/-! ## A168292.P7943409678027532376

`A168293(n)+A008458(A168287(n))`
-/

namespace A168292.P7943409678027532376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168293 n + A008458 (A168287 n).toNat

end

end A168292.P7943409678027532376

/-! ## A168292.P17457969319503606131

`A168293(n)+A008458(2*A046802(n)-A007318(n))`
-/

namespace A168292.P17457969319503606131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168293 n + A008458 (2 * A046802 n - A007318 n).toNat

end

end A168292.P17457969319503606131

/-! ## A168292.P11800651952788113408

`A168293(n)+A008458(A157221(n))`
-/

namespace A168292.P11800651952788113408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168293 n + A008458 (A157221 n).toNat

end

end A168292.P11800651952788113408

/-! ## A168292.P2342368288003070098

`A083277(A154231(n))+A008458(A157221(n))`
-/

namespace A168292.P2342368288003070098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A154231 n).toNat + A008458 (A157221 n).toNat

end

end A168292.P2342368288003070098

/-!
# A168293: T(n,k) = 12*A046802(n,k) - 9*A008518(n,k) - 2*A007318(n,k), triangle read by rows (0 <= k <= n).

The programs for A168293, there is no canonical definition to state claims against.
-/

/-! ## A168293.P10428377182345270569

`A168292(n)-6*A168287(n)`
-/

namespace A168293.P10428377182345270569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168292 n - 6 * A168287 n

end

end A168293.P10428377182345270569

/-! ## A168293.P3845452181899611423

`A168292(round(sqrt(n²+1)))%(6*A168287(n))`
-/

namespace A168293.P3845452181899611423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168292 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (6 * A168287 n)

end

end A168293.P3845452181899611423

/-! ## A168293.P8386493523066214614

`A168292(n)%or(6*A168287(n), A000038(n))`
-/

namespace A168293.P8386493523066214614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168292 n) (Int.lor (6 * A168287 n) (A000038 n))

end

end A168293.P8386493523066214614

/-! ## A168293.P12933861080713647390

`A168292(n)-A008458(A168287(n))`
-/

namespace A168293.P12933861080713647390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168292 n - A008458 (A168287 n).toNat

end

end A168293.P12933861080713647390

/-! ## A168293.P6650911761354363087

`A083277(A154231(n))`
-/

namespace A168293.P6650911761354363087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A154231 n).toNat

end

end A168293.P6650911761354363087

/-!
# A168294: Carryless product n times n+1.

The programs for A168294, there is no canonical definition to state claims against.
-/

/-! ## A168294.P18337939959685998912

`A059692(2*(1+n)²)`
-/

namespace A168294.P18337939959685998912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (2 * (1 + n) ^ 2)

end

end A168294.P18337939959685998912

/-! ## A168294.P13514305254597354305

`lcm(2, A059692(∑[a(n-1)+4]))` with `a(0)=2`
-/

namespace A168294.P13514305254597354305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A059692 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A168294.P13514305254597354305

/-! ## A168294.P9876592128288829794

`A059692(A001105(n+1))%A299279(n)`
-/

namespace A168294.P9876592128288829794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059692 (A001105 (n + 1)).toNat) (A299279 n)

end

end A168294.P9876592128288829794

/-! ## A168294.P3014496657381214591

`A059692(A001105(n+1))*A358691(n+5)`
-/

namespace A168294.P3014496657381214591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A001105 (n + 1)).toNat * A358691 (n + 5)

end

end A168294.P3014496657381214591

/-! ## A168294.P8139239903019553550

`A059692(A001105(n+1))+A007814(A003961(n+1))`
-/

namespace A168294.P8139239903019553550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A001105 (n + 1)).toNat + A007814 (A003961 (n + 1)).toNat

end

end A168294.P8139239903019553550

/-! ## A168294.P8727599367177469908

`A059692(A001105(n+1))+A007814(A069611(n+1))`
-/

namespace A168294.P8727599367177469908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A001105 (n + 1)).toNat + A007814 (A069611 (n + 1)).toNat

end

end A168294.P8727599367177469908

/-!
# A168296: Worpitzky form polynomials for the {1,16,1} A142462 sequence: p(x,n) = Sum_{k=1..n} A(n, k)*binomial(x + k - 1, n - 1).

The programs for A168296, there is no canonical definition to state claims against.
-/

/-! ## A168296.P211253336285618150

`A104758(A219694(n+1))*A139526(n+2)`
-/

namespace A168296.P211253336285618150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104758 (A219694 (n + 1)).toNat * A139526 (n + 2)

end

end A168296.P211253336285618150

/-!
# A168297: a(n) = n^3 + (1-n)^2.

The programs for A168297, the canonical program `A168297.P10015316482910448573` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168297 has offset 0).

The definition of A168297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(1-n)²` (program `A168297.P10015316482910448573`, by `A168297.P10015316482910448573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168297.P10015316482910448573

`n^3+(1-n)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168297

/-- `n^3+(1-n)²` -/
def P10015316482910448573.Spec : Prop :=
  ∀ n, P10015316482910448573.a n = A168297 n

theorem P10015316482910448573.correct : P10015316482910448573.Spec := by
  intro n
  simp only [A168297]

end A168297

/-! ## A168297.P3598278253665830867

`ogf((1-3x+11x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A168297.P3598278253665830867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 11, -3] [1, -4, 6, -4, 1] n

end

end A168297.P3598278253665830867

namespace A168297

/-- `ogf((1-3x+11x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3598278253665830867.Spec : Prop :=
  ∀ n, P3598278253665830867.a n = A168297 n

end A168297

/-! ## A168297.P12935668182898161755

`or(1, (∑[n]-1)*2*n)`
-/

namespace A168297.P12935668182898161755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (2 * n : ℤ))

end

end A168297.P12935668182898161755

namespace A168297

/-- `or(1, (∑[n]-1)*2*n)` -/
def P12935668182898161755.Spec : Prop :=
  ∀ n, P12935668182898161755.a n = A168297 n

end A168297

/-! ## A168297.P13175584058681340634

`xor(1, (∑[n]-1)*2*n)`
-/

namespace A168297.P13175584058681340634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (2 * n : ℤ))

end

end A168297.P13175584058681340634

namespace A168297

/-- `xor(1, (∑[n]-1)*2*n)` -/
def P13175584058681340634.Spec : Prop :=
  ∀ n, P13175584058681340634.a n = A168297 n

end A168297

/-! ## A168297.P12097440216842757981

`abs(xor(1, (n+2)*(n²-n)))`
-/

namespace A168297.P12097440216842757981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n + 2 : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ)))|

end

end A168297.P12097440216842757981

namespace A168297

/-- `abs(xor(1, (n+2)*(n²-n)))` -/
def P12097440216842757981.Spec : Prop :=
  ∀ n, P12097440216842757981.a n = A168297 n

end A168297

/-! ## A168297.P1047011824304139829

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=-1, a(2)=8`
-/

namespace A168297.P1047011824304139829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168297.P1047011824304139829

namespace A168297

/-- `∑[∑[a(n-1)+6]]` -/
def P1047011824304139829.Spec : Prop :=
  ∀ n, P1047011824304139829.a n = A168297 n

end A168297

/-! ## A168297.P16263270690551288325

`abs(or(1, (n-1)*n*(n+2)))`
-/

namespace A168297.P16263270690551288325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((n : ℤ) - 1) * (n * (n + 2) : ℤ))|

end

end A168297.P16263270690551288325

namespace A168297

/-- `abs(or(1, (n-1)*n*(n+2)))` -/
def P16263270690551288325.Spec : Prop :=
  ∀ n, P16263270690551288325.a n = A168297 n

end A168297

/-! ## A168297.P533082578415810398

`ceil((n+1)*(acot(n+1)-n)²)`
-/

namespace A168297.P533082578415810398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (SequenceMachineLib.acot (n + 1 : ℝ) - (n : ℝ)) ^ 2⌉

end

end A168297.P533082578415810398

namespace A168297

/-- `ceil((n+1)*(acot(n+1)-n)²)` -/
def P533082578415810398.Spec : Prop :=
  ∀ n, P533082578415810398.a n = A168297 n

end A168297

/-! ## A168297.P15045799411450686391

`floor(lcm(n+1, n²)+ϕ-2*n)`
-/

namespace A168297.P15045799411450686391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) (n ^ 2) : ℝ) + (Real.goldenRatio - (2 * n : ℝ))⌋

end

end A168297.P15045799411450686391

namespace A168297

/-- `floor(lcm(n+1, n²)+ϕ-2*n)` -/
def P15045799411450686391.Spec : Prop :=
  ∀ n, P15045799411450686391.a n = A168297 n

end A168297

/-! ## A168297.P8273931483660595439

`Δ[∑[lcm(n, (n-1)²)]-(n-1)²]`
-/

namespace A168297.P8273931483660595439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (((n : ℤ) - 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168297.P8273931483660595439

namespace A168297

/-- `Δ[∑[lcm(n, (n-1)²)]-(n-1)²]` -/
def P8273931483660595439.Spec : Prop :=
  ∀ n, P8273931483660595439.a n = A168297 n

end A168297

/-! ## A168297.P5989134101730552388

`abs((n-1)*record[(n-1)²]-(n-2))`
-/

namespace A168297.P5989134101730552388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 2)|

end

end A168297.P5989134101730552388

namespace A168297

/-- `abs((n-1)*record[(n-1)²]-(n-2))` -/
def P5989134101730552388.Spec : Prop :=
  ∀ n, P5989134101730552388.a n = A168297 n

end A168297

/-! ## A168297.P1544547652360340154

`floor(a(n-1)+(2*n+n+2)*(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168297.P1544547652360340154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + (n + 2) : ℤ) * ((n : ℤ) - 1)

end

end A168297.P1544547652360340154

namespace A168297

/-- `floor(a(n-1)+(2*n+n+2)*(n-1))` -/
def P1544547652360340154.Spec : Prop :=
  ∀ n, P1544547652360340154.a n = A168297 n

theorem P1544547652360340154.correct : P1544547652360340154.Spec := by
  intro n
  induction n with
  | zero => simp [A168297, A168297.P1544547652360340154.a, A168297.P10015316482910448573.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A168297, Nat.add_sub_cancel, A168297.P1544547652360340154.a, A168297.P10015316482910448573.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A168297

/-! ## A168297.P16712745900145300229

`abs(3*n-A053698(n))`
-/

namespace A168297.P16712745900145300229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A053698 n|

end

end A168297.P16712745900145300229

namespace A168297

/-- `abs(3*n-A053698(n))` -/
def P16712745900145300229.Spec : Prop :=
  ∀ n, P16712745900145300229.a n = A168297 n

end A168297

/-! ## A168297.P8521196502255635018

`abs(A242135(n)+n²+1)`
-/

namespace A168297.P8521196502255635018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242135 n + (n ^ 2 + 1 : ℤ)|

end

end A168297.P8521196502255635018

namespace A168297

/-- `abs(A242135(n)+n²+1)` -/
def P8521196502255635018.Spec : Prop :=
  ∀ n, P8521196502255635018.a n = A168297 n

end A168297

/-! ## A168297.P2408449828341387178

`abs(∑[A049450(n)]-n+1-n)`
-/

namespace A168297.P2408449828341387178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) + 1 - (n : ℤ)|

end

end A168297.P2408449828341387178

namespace A168297

/-- `abs(∑[A049450(n)]-n+1-n)` -/
def P2408449828341387178.Spec : Prop :=
  ∀ n, P2408449828341387178.a n = A168297 n

end A168297

/-! ## A168297.P12811282872386215610

`((n-1)*A054000(n+1)+2)/2`
-/

namespace A168297.P12811282872386215610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A054000 (n + 1) + 2 : ℚ) / 2

end

end A168297.P12811282872386215610

namespace A168297

/-- `((n-1)*A054000(n+1)+2)/2` -/
def P12811282872386215610.Spec : Prop :=
  ∀ n, P12811282872386215610.a n = (A168297 n : ℚ)

theorem P12811282872386215610.correct : P12811282872386215610.Spec := by
  intro n
  simp only [A168297, Nat.add_sub_cancel, A168297.P12811282872386215610.a, A168297.P10015316482910448573.a, A054000, A054000.P17308049870375270601.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A168297

/-! ## A168297.P17797931119629294367

`abs(2*n*A000217(n)+1-2*n)`
-/

namespace A168297.P17797931119629294367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * A000217 n + 1 - (2 * n : ℤ)|

end

end A168297.P17797931119629294367

namespace A168297

/-- `abs(2*n*A000217(n)+1-2*n)` -/
def P17797931119629294367.Spec : Prop :=
  ∀ n, P17797931119629294367.a n = A168297 n

end A168297

/-! ## A168297.P10199671381038440019

`A060888(n)%A304159(n+1)`
-/

namespace A168297.P10199671381038440019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060888 n) (A304159 (n + 1))

end

end A168297.P10199671381038440019

namespace A168297

/-- `A060888(n)%A304159(n+1)` -/
def P10199671381038440019.Spec : Prop :=
  ∀ n, P10199671381038440019.a n = A168297 n

end A168297

/-! ## A168297.P14078763824519270181

`A272162(n)%A106229(n+1)`
-/

namespace A168297.P14078763824519270181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272162 n) (A106229 (n + 1))

end

end A168297.P14078763824519270181

namespace A168297

/-- `A272162(n)%A106229(n+1)` -/
def P14078763824519270181.Spec : Prop :=
  ∀ n, P14078763824519270181.a n = A168297 n

end A168297

/-! ## A168297.P4659981392942104717

`∑[A033428(A000007(n)+n)-(n+2)]`
-/

namespace A168297.P4659981392942104717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A000007 n + (n : ℤ)).toNat - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168297.P4659981392942104717

namespace A168297

/-- `∑[A033428(A000007(n)+n)-(n+2)]` -/
def P4659981392942104717.Spec : Prop :=
  ∀ n, P4659981392942104717.a n = A168297 n

end A168297

/-!
# A168298: a(n) = 1 - n^2*2^n.

The programs for A168298, the canonical program `A168298.P12875536655596633023` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168298 has offset 0).

The definition of A168298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-n²*2^n` (program `A168298.P12875536655596633023`, by `A168298.P12875536655596633023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168298.P12875536655596633023

`1-n²*2^n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168298

/-- `1-n²*2^n` -/
def P12875536655596633023.Spec : Prop :=
  ∀ n, P12875536655596633023.a n = A168298 n

theorem P12875536655596633023.correct : P12875536655596633023.Spec := by
  intro n
  simp only [A168298]

end A168298

/-! ## A168298.P15611068307631233447

`ogf((1-8x+10x^2-4x^3)/(1-7x+18x^2-20x^3+8x^4))`
-/

namespace A168298.P15611068307631233447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 10, -4] [1, -7, 18, -20, 8] n

end

end A168298.P15611068307631233447

namespace A168298

/-- `ogf((1-8x+10x^2-4x^3)/(1-7x+18x^2-20x^3+8x^4))` -/
def P15611068307631233447.Spec : Prop :=
  ∀ n, P15611068307631233447.a n = A168298 n

end A168298

/-! ## A168298.P16614532022181918435

`or(1, -A007758(n))`
-/

namespace A168298.P16614532022181918435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A007758 n)

end

end A168298.P16614532022181918435

namespace A168298

/-- `or(1, -A007758(n))` -/
def P16614532022181918435.Spec : Prop :=
  ∀ n, P16614532022181918435.a n = A168298 n

end A168298

/-! ## A168298.P6315858921356574751

`or(1, -(n*A036289(n)))`
-/

namespace A168298.P6315858921356574751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((n : ℤ) * A036289 n))

end

end A168298.P6315858921356574751

namespace A168298

/-- `or(1, -(n*A036289(n)))` -/
def P6315858921356574751.Spec : Prop :=
  ∀ n, P6315858921356574751.a n = A168298 n

end A168298

/-! ## A168298.P17787856799551075531

`or(1, -(n*A134401(n)))`
-/

namespace A168298.P17787856799551075531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((n : ℤ) * A134401 n))

end

end A168298.P17787856799551075531

namespace A168298

/-- `or(1, -(n*A134401(n)))` -/
def P17787856799551075531.Spec : Prop :=
  ∀ n, P17787856799551075531.a n = A168298 n

end A168298

/-! ## A168298.P4618541312128668631

`or(1, -(n²*A000079(n)))`
-/

namespace A168298.P4618541312128668631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((n ^ 2 : ℤ) * A000079 n))

end

end A168298.P4618541312128668631

namespace A168298

/-- `or(1, -(n²*A000079(n)))` -/
def P4618541312128668631.Spec : Prop :=
  ∀ n, P4618541312128668631.a n = A168298 n

end A168298

/-! ## A168298.P6428202569073879473

`or(1, -(n*A097064(n+1)))`
-/

namespace A168298.P6428202569073879473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((n : ℤ) * A097064 (n + 1)))

end

end A168298.P6428202569073879473

namespace A168298

/-- `or(1, -(n*A097064(n+1)))` -/
def P6428202569073879473.Spec : Prop :=
  ∀ n, P6428202569073879473.a n = A168298 n

end A168298

/-! ## A168298.P16997470056787664879

`or(1, 1-n²*A131577(n+1))`
-/

namespace A168298.P16997470056787664879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - (n ^ 2 : ℤ) * A131577 (n + 1))

end

end A168298.P16997470056787664879

namespace A168298

/-- `or(1, 1-n²*A131577(n+1))` -/
def P16997470056787664879.Spec : Prop :=
  ∀ n, P16997470056787664879.a n = A168298 n

end A168298

/-! ## A168298.P9444170908088395914

`∑[A011782(n)-n*A001792(n)]`
-/

namespace A168298.P9444170908088395914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (n : ℤ) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168298.P9444170908088395914

namespace A168298

/-- `∑[A011782(n)-n*A001792(n)]` -/
def P9444170908088395914.Spec : Prop :=
  ∀ n, P9444170908088395914.a n = A168298 n

end A168298

/-! ## A168298.P449922450400696828

`or(1, n²*A131577(n+1)*A057428(n))`
-/

namespace A168298.P449922450400696828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) * A131577 (n + 1) * A057428 n)

end

end A168298.P449922450400696828

namespace A168298

/-- `or(1, n²*A131577(n+1)*A057428(n))` -/
def P449922450400696828.Spec : Prop :=
  ∀ n, P449922450400696828.a n = A168298 n

end A168298

/-!
# A168299: a(n) = 1 + 3^n * n^3.

The programs for A168299, the canonical program `A168299.P11582015306639737325` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168299 has offset 0).

The definition of A168299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3^n*n^3` (program `A168299.P11582015306639737325`, by `A168299.P11582015306639737325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168299.P11582015306639737325

`1+3^n*n^3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A168299

/-- `1+3^n*n^3` -/
def P11582015306639737325.Spec : Prop :=
  ∀ n, (P11582015306639737325.a n : ℤ) = A168299 n

theorem P11582015306639737325.correct : P11582015306639737325.Spec := by
  intro n
  simp only [A168299]

end A168299

/-! ## A168299.P13611348387258584271

`abs(xor(3^n*n^3, (-1)^n))`
-/

namespace A168299.P13611348387258584271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 ^ n * n ^ 3 : ℤ) ((-1) ^ n)|

end

end A168299.P13611348387258584271

namespace A168299

/-- `abs(xor(3^n*n^3, (-1)^n))` -/
def P13611348387258584271.Spec : Prop :=
  ∀ n, P13611348387258584271.a n = A168299 n

end A168299

/-! ## A168299.P8354232274448939120

`(-1)^n*xor(3^n*n^3, (-1)^n)`
-/

namespace A168299.P8354232274448939120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * Int.xor (3 ^ n * n ^ 3 : ℤ) ((-1) ^ n)

end

end A168299.P8354232274448939120

namespace A168299

/-- `(-1)^n*xor(3^n*n^3, (-1)^n)` -/
def P8354232274448939120.Spec : Prop :=
  ∀ n, P8354232274448939120.a n = A168299 n

end A168299

/-! ## A168299.P1860931411103383403

`or(A062074(n)+1, A000007(n))`
-/

namespace A168299.P1860931411103383403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062074 n + 1) (A000007 n)

end

end A168299.P1860931411103383403

namespace A168299

/-- `or(A062074(n)+1, A000007(n))` -/
def P1860931411103383403.Spec : Prop :=
  ∀ n, P1860931411103383403.a n = A168299 n

end A168299

/-! ## A168299.P1859643489339218966

`(n*A127960(n)+1)%A027080(n+2)`
-/

namespace A168299.P1859643489339218966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A127960 n + 1) (A027080 (n + 2))

end

end A168299.P1859643489339218966

namespace A168299

/-- `(n*A127960(n)+1)%A027080(n+2)` -/
def P1859643489339218966.Spec : Prop :=
  ∀ n, P1859643489339218966.a n = A168299 n

end A168299

/-! ## A168299.P15471552554969742376

`record[A140303(n)*A198063(n)+1]`
-/

namespace A168299.P15471552554969742376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n * A198063 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168299.P15471552554969742376

namespace A168299

/-- `record[A140303(n)*A198063(n)+1]` -/
def P15471552554969742376.Spec : Prop :=
  ∀ n, P15471552554969742376.a n = A168299 n

end A168299

