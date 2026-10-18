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
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080800: Similar to A080799 but count only division steps.

The programs for A080800, the canonical program `A080800.P12081424921699225605` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080800 has offset 1).

The definition of A080800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080800.P12081424921699225605

`floor(log2(n+2))+3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080800

/-- `floor(log2(n+2))+3` -/
def P12081424921699225605.Spec : Prop :=
  ∀ n, (P12081424921699225605.a n : ℤ) = A080800 (n + 1)

theorem P12081424921699225605.correct : P12081424921699225605.Spec := by
  intro n
  simp only [A080800, Nat.add_sub_cancel]

end A080800

/-! ## A080800.P5079299771574305434

`ceil(record[log2(lcm(2, n)+11)])`
-/

namespace A080800.P5079299771574305434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lcm 2 n + 11 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A080800.P5079299771574305434

namespace A080800

/-- `ceil(record[log2(lcm(2, n)+11)])` -/
def P5079299771574305434.Spec : Prop :=
  ∀ n, P5079299771574305434.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P15387800114835474136

`ceil(log2(record[or(5, n)+4]))`
-/

namespace A080800.P15387800114835474136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌉

end

end A080800.P15387800114835474136

namespace A080800

/-- `ceil(log2(record[or(5, n)+4]))` -/
def P15387800114835474136.Spec : Prop :=
  ∀ n, P15387800114835474136.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P8139204740802254891

`ceil(record[log2(xor(3, n)+6)])`
-/

namespace A080800.P8139204740802254891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor 3 n + 6 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A080800.P8139204740802254891

namespace A080800

/-- `ceil(record[log2(xor(3, n)+6)])` -/
def P8139204740802254891.Spec : Prop :=
  ∀ n, P8139204740802254891.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P17231579007729681657

`ceil(log2(4/acot(n+2)))`
-/

namespace A080800.P17231579007729681657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (4 / SequenceMachineLib.acot (n + 2 : ℝ))⌉

end

end A080800.P17231579007729681657

namespace A080800

/-- `ceil(log2(4/acot(n+2)))` -/
def P17231579007729681657.Spec : Prop :=
  ∀ n, P17231579007729681657.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P917855556862309362

`and(31, ceil(log2(n+3))+2)`
-/

namespace A080800.P917855556862309362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 31 (⌈Real.logb 2 (n + 3 : ℝ)⌉ + 2)

end

end A080800.P917855556862309362

namespace A080800

/-- `and(31, ceil(log2(n+3))+2)` -/
def P917855556862309362.Spec : Prop :=
  ∀ n, P917855556862309362.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P1151158038254549815

`ceil(log2(or(2, 4*(n+2))+1))`
-/

namespace A080800.P1151158038254549815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Nat.lor 2 (4 * (n + 2)) + 1 : ℝ)⌉

end

end A080800.P1151158038254549815

namespace A080800

/-- `ceil(log2(or(2, 4*(n+2))+1))` -/
def P1151158038254549815.Spec : Prop :=
  ∀ n, P1151158038254549815.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P4412556656819372352

`ceil(log2(2*xor(1, 2*n)+9))`
-/

namespace A080800.P4412556656819372352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * Nat.xor 1 (2 * n) + 9 : ℝ)⌉

end

end A080800.P4412556656819372352

namespace A080800

/-- `ceil(log2(2*xor(1, 2*n)+9))` -/
def P4412556656819372352.Spec : Prop :=
  ∀ n, P4412556656819372352.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P6533901576450595232

`ceil(log2(Δ[C(2*(n+2), 2)]+1))`
-/

namespace A080800.P6533901576450595232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 : ℝ)⌉

end

end A080800.P6533901576450595232

namespace A080800

/-- `ceil(log2(Δ[C(2*(n+2), 2)]+1))` -/
def P6533901576450595232.Spec : Prop :=
  ∀ n, P6533901576450595232.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P14856242165127400507

`floor(∑[a(n-1)/floor((n+1)*a(n-1))])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A080800.P14856242165127400507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) / (⌊(n + 1 : ℚ) * f1 (n - 1)⌋ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A080800.P14856242165127400507

namespace A080800

/-- `floor(∑[a(n-1)/floor((n+1)*a(n-1))])` -/
def P14856242165127400507.Spec : Prop :=
  ∀ n, P14856242165127400507.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P8322936793716729717

`floor(log2(A004768(n+1)))`
-/

namespace A080800.P8322936793716729717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A004768 (n + 1)).toNat

end

end A080800.P8322936793716729717

namespace A080800

/-- `floor(log2(A004768(n+1)))` -/
def P8322936793716729717.Spec : Prop :=
  ∀ n, (P8322936793716729717.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P16106547207397467030

`floor(log2(A004769(n+1)))`
-/

namespace A080800.P16106547207397467030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A004769 (n + 1)).toNat

end

end A080800.P16106547207397467030

namespace A080800

/-- `floor(log2(A004769(n+1)))` -/
def P16106547207397467030.Spec : Prop :=
  ∀ n, (P16106547207397467030.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P3886782022527070451

`A020705(A059939(n+1))`
-/

namespace A080800.P3886782022527070451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A059939 (n + 1)).toNat

end

end A080800.P3886782022527070451

namespace A080800

/-- `A020705(A059939(n+1))` -/
def P3886782022527070451.Spec : Prop :=
  ∀ n, P3886782022527070451.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P6047633015330407817

`floor(log2(Δ[A078371(n)]))`
-/

namespace A080800.P6047633015330407817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (f1 (n + 1) - f1 n).toNat

end

end A080800.P6047633015330407817

namespace A080800

/-- `floor(log2(Δ[A078371(n)]))` -/
def P6047633015330407817.Spec : Prop :=
  ∀ n, (P6047633015330407817.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P13856832528858813071

`floor(log2(A273481(n+1)))`
-/

namespace A080800.P13856832528858813071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A273481 (n + 1)).toNat

end

end A080800.P13856832528858813071

namespace A080800

/-- `floor(log2(A273481(n+1)))` -/
def P13856832528858813071.Spec : Prop :=
  ∀ n, (P13856832528858813071.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P15320453891610731806

`Δ[A033156(n+2)]`
-/

namespace A080800.P15320453891610731806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033156 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080800.P15320453891610731806

namespace A080800

/-- `Δ[A033156(n+2)]` -/
def P15320453891610731806.Spec : Prop :=
  ∀ n, P15320453891610731806.a n = A080800 (n + 1)

end A080800

/-! ## A080800.P13876671163294675165

`floor(log2(A004771(n+2)))`
-/

namespace A080800.P13876671163294675165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A004771 (n + 2)).toNat

end

end A080800.P13876671163294675165

namespace A080800

/-- `floor(log2(A004771(n+2)))` -/
def P13876671163294675165.Spec : Prop :=
  ∀ n, (P13876671163294675165.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P5673967291311237828

`floor(log2(A008590(n+2)))`
-/

namespace A080800.P5673967291311237828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A008590 (n + 2)).toNat

end

end A080800.P5673967291311237828

namespace A080800

/-- `floor(log2(A008590(n+2)))` -/
def P5673967291311237828.Spec : Prop :=
  ∀ n, (P5673967291311237828.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P3744369610794469153

`floor(log2(A017077(n+2)))`
-/

namespace A080800.P3744369610794469153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A017077 (n + 2)).toNat

end

end A080800.P3744369610794469153

namespace A080800

/-- `floor(log2(A017077(n+2)))` -/
def P3744369610794469153.Spec : Prop :=
  ∀ n, (P3744369610794469153.a n : ℤ) = A080800 (n + 1)

end A080800

/-! ## A080800.P14808425950321460667

`A070941(A062383(n+2))`
-/

namespace A080800.P14808425950321460667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A062383 (n + 2)).toNat

end

end A080800.P14808425950321460667

namespace A080800

/-- `A070941(A062383(n+2))` -/
def P14808425950321460667.Spec : Prop :=
  ∀ n, P14808425950321460667.a n = A080800 (n + 1)

end A080800

/-!
# A080801: Similar to A080799 but count only addition steps.

The programs for A080801, the canonical program `A080801.P9987531529484354991` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080801 has offset 1).

The definition of A080801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080801.P2017568387277614267

`A023416(n+2)+1`
-/

namespace A080801.P2017568387277614267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 2) + 1

end

end A080801.P2017568387277614267

namespace A080801

/-- `A023416(n+2)+1` -/
def P2017568387277614267.Spec : Prop :=
  ∀ n, P2017568387277614267.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P9987531529484354991

`A008687(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080801

/-- `A008687(n+3)` -/
def P9987531529484354991.Spec : Prop :=
  ∀ n, P9987531529484354991.a n = A080801 (n + 1)

theorem P9987531529484354991.correct : P9987531529484354991.Spec := by
  intro n
  simp only [A080801, Nat.add_sub_cancel]

end A080801

/-! ## A080801.P16622684368362912366

`a(gcd(n, ∑[n])-1)+(-1)^n` with `a(0)=2`
-/

namespace A080801.P16622684368362912366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) - 1) + (-1) ^ n

end

end A080801.P16622684368362912366

namespace A080801

/-- `a(gcd(n, ∑[n])-1)+(-1)^n` -/
def P16622684368362912366.Spec : Prop :=
  ∀ n, P16622684368362912366.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P2228417846611021753

`a(∑[n-1]%n)+(-1)^n` with `a(0)=2`
-/

namespace A080801.P2228417846611021753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n : ℤ)).toNat + (-1) ^ n

end

end A080801.P2228417846611021753

namespace A080801

/-- `a(∑[n-1]%n)+(-1)^n` -/
def P2228417846611021753.Spec : Prop :=
  ∀ n, P2228417846611021753.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P16250730818855046333

`a(n-1-∑[n]%n)+(-1)^n` with `a(0)=2`
-/

namespace A080801.P16250730818855046333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - 1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % n : ℕ) : ℤ)).toNat + (-1) ^ n

end

end A080801.P16250730818855046333

namespace A080801

/-- `a(n-1-∑[n]%n)+(-1)^n` -/
def P16250730818855046333.Spec : Prop :=
  ∀ n, P16250730818855046333.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P1179182574253934689

`a(floor(n/2)-1)+(n+1)%2` with `a(0)=2, a(1)=1`
-/

namespace A080801.P1179182574253934689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat + (n + 1) % 2

end

end A080801.P1179182574253934689

namespace A080801

/-- `a(floor(n/2)-1)+(n+1)%2` -/
def P1179182574253934689.Spec : Prop :=
  ∀ n, (P1179182574253934689.a n : ℤ) = A080801 (n + 1)

end A080801

/-! ## A080801.P15260365695736949596

`char[2*n]+floor(a(floor(n/2)-1))` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080801.P15260365695736949596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A080801.P15260365695736949596

namespace A080801

/-- `char[2*n]+floor(a(floor(n/2)-1))` -/
def P15260365695736949596.Spec : Prop :=
  ∀ n, (P15260365695736949596.a n : ℤ) = A080801 (n + 1)

end A080801

/-! ## A080801.P9848687662547476984

`a(n-ceil(C(or(1, n), n)/2))+(-1)^n` with `a(0)=2`
-/

namespace A080801.P9848687662547476984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉).toNat + (-1) ^ n

end

end A080801.P9848687662547476984

namespace A080801

/-- `a(n-ceil(C(or(1, n), n)/2))+(-1)^n` -/
def P9848687662547476984.Spec : Prop :=
  ∀ n, P9848687662547476984.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P4556810228277572329

`A290251(n+2)`
-/

namespace A080801.P4556810228277572329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (n + 2)

end

end A080801.P4556810228277572329

namespace A080801

/-- `A290251(n+2)` -/
def P4556810228277572329.Spec : Prop :=
  ∀ n, P4556810228277572329.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P13632354555453694297

`log2(A267584(n+2))`
-/

namespace A080801.P13632354555453694297
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A267584 (n + 2) : ℝ)

end

end A080801.P13632354555453694297

namespace A080801

/-- `log2(A267584(n+2))` -/
def P13632354555453694297.Spec : Prop :=
  ∀ n, P13632354555453694297.a n = (A080801 (n + 1) : ℝ)

end A080801

/-! ## A080801.P12437301006115930807

`∑[A135523(n+2)]-n`
-/

namespace A080801.P12437301006115930807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A080801.P12437301006115930807

namespace A080801

/-- `∑[A135523(n+2)]-n` -/
def P12437301006115930807.Spec : Prop :=
  ∀ n, P12437301006115930807.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P4382416687423816594

`A080799(n+1)-A080800(n+1)`
-/

namespace A080801.P4382416687423816594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080799 (n + 1) - A080800 (n + 1)

end

end A080801.P4382416687423816594

namespace A080801

/-- `A080799(n+1)-A080800(n+1)` -/
def P4382416687423816594.Spec : Prop :=
  ∀ n, P4382416687423816594.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P12751896168143183228

`A080791(n+2)+1`
-/

namespace A080801.P12751896168143183228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 2) + 1

end

end A080801.P12751896168143183228

namespace A080801

/-- `A080791(n+2)+1` -/
def P12751896168143183228.Spec : Prop :=
  ∀ n, P12751896168143183228.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P13620250852184469713

`Δ[A059015(n+1)]+1`
-/

namespace A080801.P13620250852184469713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A080801.P13620250852184469713

namespace A080801

/-- `Δ[A059015(n+1)]+1` -/
def P13620250852184469713.Spec : Prop :=
  ∀ n, P13620250852184469713.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P9207904058201092326

`n+3-A117123(n+2)`
-/

namespace A080801.P9207904058201092326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A117123 (n + 2)

end

end A080801.P9207904058201092326

namespace A080801

/-- `n+3-A117123(n+2)` -/
def P9207904058201092326.Spec : Prop :=
  ∀ n, P9207904058201092326.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P17355209486667788826

`A065120(A073137(n+2))`
-/

namespace A080801.P17355209486667788826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A073137 (n + 2)).toNat

end

end A080801.P17355209486667788826

namespace A080801

/-- `A065120(A073137(n+2))` -/
def P17355209486667788826.Spec : Prop :=
  ∀ n, P17355209486667788826.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P4261614894838640890

`A077168(A080791(n+2))`
-/

namespace A080801.P4261614894838640890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A080791 (n + 2)).toNat

end

end A080801.P4261614894838640890

namespace A080801

/-- `A077168(A080791(n+2))` -/
def P4261614894838640890.Spec : Prop :=
  ∀ n, P4261614894838640890.a n = A080801 (n + 1)

end A080801

/-! ## A080801.P14016308439389083241

`val(A329887(n+2), 2)`
-/

namespace A080801.P14016308439389083241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329887 (n + 2)).toNat 2

end

end A080801.P14016308439389083241

namespace A080801

/-- `val(A329887(n+2), 2)` -/
def P14016308439389083241.Spec : Prop :=
  ∀ n, (P14016308439389083241.a n : ℤ) = A080801 (n + 1)

end A080801

/-! ## A080801.P6355913435750591031

`log2(Δ[A064194(n+2)])`
-/

namespace A080801.P6355913435750591031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064194 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A080801.P6355913435750591031

namespace A080801

/-- `log2(Δ[A064194(n+2)])` -/
def P6355913435750591031.Spec : Prop :=
  ∀ n, P6355913435750591031.a n = (A080801 (n + 1) : ℝ)

end A080801

/-! ## A080801.P12320465196100896224

`Δ[A181132(n+1)]+1`
-/

namespace A080801.P12320465196100896224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A080801.P12320465196100896224

namespace A080801

/-- `Δ[A181132(n+1)]+1` -/
def P12320465196100896224.Spec : Prop :=
  ∀ n, P12320465196100896224.a n = A080801 (n + 1)

end A080801

/-!
# A080804: Least number of connected subgraphs of the binary cube GF(2)^n such that every vertex of GF(2)^n lies in at least one of the subgraphs and no two vertices lie in the same set of subgraphs (such a collection is called an identifying set).

The programs for A080804, the canonical program `A080804.P8435519799802809666` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080804 has offset 1).

The definition of A080804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080804.P8435519799802809666

`n+1+floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080804

/-- `n+1+floor(log2(n+1))` -/
def P8435519799802809666.Spec : Prop :=
  ∀ n, (P8435519799802809666.a n : ℤ) = A080804 (n + 1)

theorem P8435519799802809666.correct : P8435519799802809666.Spec := by
  intro n
  simp only [A080804, Nat.add_sub_cancel]

end A080804

/-! ## A080804.P10910497818797561440

`comp[or(n, 2^n)-1]`
-/

namespace A080804.P10910497818797561440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 ^ n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080804.P10910497818797561440

namespace A080804

/-- `comp[or(n, 2^n)-1]` -/
def P10910497818797561440.Spec : Prop :=
  ∀ n, (P10910497818797561440.a n : ℤ) = A080804 (n + 1)

end A080804

/-! ## A080804.P7677057232780558247

`comp[xor(n, 2^n)-1]`
-/

namespace A080804.P7677057232780558247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 ^ n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080804.P7677057232780558247

namespace A080804

/-- `comp[xor(n, 2^n)-1]` -/
def P7677057232780558247.Spec : Prop :=
  ∀ n, (P7677057232780558247.a n : ℤ) = A080804 (n + 1)

end A080804

/-! ## A080804.P2116472918624533480

`∑[char[xor(n, n+1)]+1]`
-/

namespace A080804.P2116472918624533480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P2116472918624533480

namespace A080804

/-- `∑[char[xor(n, n+1)]+1]` -/
def P2116472918624533480.Spec : Prop :=
  ∀ n, (P2116472918624533480.a n : ℤ) = A080804 (n + 1)

end A080804

/-! ## A080804.P12565180965468576778

`∑[C(2, C(2, ∏{p}[n+1, #]))]`
-/

namespace A080804.P12565180965468576778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P12565180965468576778

namespace A080804

/-- `∑[C(2, C(2, ∏{p}[n+1, #]))]` -/
def P12565180965468576778.Spec : Prop :=
  ∀ n, (P12565180965468576778.a n : ℤ) = A080804 (n + 1)

end A080804

/-! ## A080804.P8181245999564860423

`∑[ceil(acot(and(n+1, n-1)))]`
-/

namespace A080804.P8181245999564860423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (Int.land (n + 1 : ℤ) ((n : ℤ) - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P8181245999564860423

namespace A080804

/-- `∑[ceil(acot(and(n+1, n-1)))]` -/
def P8181245999564860423.Spec : Prop :=
  ∀ n, P8181245999564860423.a n = A080804 (n + 1)

end A080804

/-! ## A080804.P448204947325807210

`∑[ratio[2*a(floor(n/2))]]` with `a(0)=1, a(1)=1`
-/

namespace A080804.P448204947325807210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P448204947325807210

namespace A080804

/-- `∑[ratio[2*a(floor(n/2))]]` -/
def P448204947325807210.Spec : Prop :=
  ∀ n, P448204947325807210.a n = (A080804 (n + 1) : ℚ)

end A080804

/-! ## A080804.P2250034183063260373

`∑[round(or(n, n+1)/(n+1))]`
-/

namespace A080804.P2250034183063260373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (n + 1) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P2250034183063260373

namespace A080804

/-- `∑[round(or(n, n+1)/(n+1))]` -/
def P2250034183063260373.Spec : Prop :=
  ∀ n, P2250034183063260373.a n = A080804 (n + 1)

end A080804

/-! ## A080804.P5263874004902612603

`∑[ceil(xor(n, n+1)/(n+1))]`
-/

namespace A080804.P5263874004902612603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P5263874004902612603

namespace A080804

/-- `∑[ceil(xor(n, n+1)/(n+1))]` -/
def P5263874004902612603.Spec : Prop :=
  ∀ n, P5263874004902612603.a n = A080804 (n + 1)

end A080804

/-! ## A080804.P18233832284282845596

`∑[round(ratio[or(2*n+1, n+2)])]`
-/

namespace A080804.P18233832284282845596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n + 1) (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P18233832284282845596

namespace A080804

/-- `∑[round(ratio[or(2*n+1, n+2)])]` -/
def P18233832284282845596.Spec : Prop :=
  ∀ n, P18233832284282845596.a n = A080804 (n + 1)

end A080804

/-! ## A080804.P12629145456607761495

`∑[floor(and(n+1, 2*n)/(n+1))+1]`
-/

namespace A080804.P12629145456607761495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (n + 1) (2 * n) : ℚ) / (n + 1 : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P12629145456607761495

namespace A080804

/-- `∑[floor(and(n+1, 2*n)/(n+1))+1]` -/
def P12629145456607761495.Spec : Prop :=
  ∀ n, P12629145456607761495.a n = A080804 (n + 1)

end A080804

/-! ## A080804.P2042304095824575306

`comp[A052944(n)]`
-/

namespace A080804.P2042304095824575306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080804.P2042304095824575306

namespace A080804

/-- `comp[A052944(n)]` -/
def P2042304095824575306.Spec : Prop :=
  ∀ n, (P2042304095824575306.a n : ℤ) = A080804 (n + 1)

end A080804

/-! ## A080804.P15184487020799782949

`∑[abs(A286299(n))]`
-/

namespace A080804.P15184487020799782949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286299 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080804.P15184487020799782949

namespace A080804

/-- `∑[abs(A286299(n))]` -/
def P15184487020799782949.Spec : Prop :=
  ∀ n, P15184487020799782949.a n = A080804 (n + 1)

end A080804

/-!
# A080806: Positive integer values of n such that 6*n^2-5 is a square.

The programs for A080806, the canonical program `A080806.P3674201817425840537` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080806 has offset 1).

The definition of A080806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080806.P3674201817425840537

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080806

/-- `10*a(n-2)-a(n-4)` -/
def P3674201817425840537.Spec : Prop :=
  ∀ n, P3674201817425840537.a n = A080806 (n + 1)

theorem P3674201817425840537.correct : P3674201817425840537.Spec := by
  intro n
  simp only [A080806, Nat.add_sub_cancel]

end A080806

/-! ## A080806.P12448881141883170055

`2*A077288(n)+1`
-/

namespace A080806.P12448881141883170055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077288 n + 1

end

end A080806.P12448881141883170055

namespace A080806

/-- `2*A077288(n)+1` -/
def P12448881141883170055.Spec : Prop :=
  ∀ n, P12448881141883170055.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P12670285815812537965

`2*A181442(n)-1`
-/

namespace A080806.P12670285815812537965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181442 n - 1

end

end A080806.P12670285815812537965

namespace A080806

/-- `2*A181442(n)-1` -/
def P12670285815812537965.Spec : Prop :=
  ∀ n, P12670285815812537965.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P3406040899793832000

`A131093(A007494(n)+1)`
-/

namespace A080806.P3406040899793832000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131093 (A007494 n + 1).toNat

end

end A080806.P3406040899793832000

namespace A080806

/-- `A131093(A007494(n)+1)` -/
def P3406040899793832000.Spec : Prop :=
  ∀ n, P3406040899793832000.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P16108355184168793164

`A131093(A032766(n+1))`
-/

namespace A080806.P16108355184168793164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131093 (A032766 (n + 1)).toNat

end

end A080806.P16108355184168793164

namespace A080806

/-- `A131093(A032766(n+1))` -/
def P16108355184168793164.Spec : Prop :=
  ∀ n, P16108355184168793164.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P16074670917036716974

`A181442(n)+A077288(n)`
-/

namespace A080806.P16074670917036716974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 n + A077288 n

end

end A080806.P16074670917036716974

namespace A080806

/-- `A181442(n)+A077288(n)` -/
def P16074670917036716974.Spec : Prop :=
  ∀ n, P16074670917036716974.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P703395600448412567

`Δ[A041007(n)-A080872(n)]`
-/

namespace A080806.P703395600448412567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 n - A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080806.P703395600448412567

namespace A080806

/-- `Δ[A041007(n)-A080872(n)]` -/
def P703395600448412567.Spec : Prop :=
  ∀ n, P703395600448412567.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P8474304837984176383

`A131093(A001651(n+2)-1)`
-/

namespace A080806.P8474304837984176383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131093 (A001651 (n + 2) - 1).toNat

end

end A080806.P8474304837984176383

namespace A080806

/-- `A131093(A001651(n+2)-1)` -/
def P8474304837984176383.Spec : Prop :=
  ∀ n, P8474304837984176383.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P13845991030644038577

`A233450(n+2)-A077291(n)`
-/

namespace A080806.P13845991030644038577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 2) - A077291 n

end

end A080806.P13845991030644038577

namespace A080806

/-- `A233450(n+2)-A077291(n)` -/
def P13845991030644038577.Spec : Prop :=
  ∀ n, P13845991030644038577.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P5364584445943536899

`Δ[A080873(n+1)-A080874(n)]`
-/

namespace A080806.P5364584445943536899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1) - A080874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080806.P5364584445943536899

namespace A080806

/-- `Δ[A080873(n+1)-A080874(n)]` -/
def P5364584445943536899.Spec : Prop :=
  ∀ n, P5364584445943536899.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P14985501273344487588

`A165517(n+1)+1-A077291(n)`
-/

namespace A080806.P14985501273344487588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165517 (n + 1) + (1 - A077291 n)

end

end A080806.P14985501273344487588

namespace A080806

/-- `A165517(n+1)+1-A077291(n)` -/
def P14985501273344487588.Spec : Prop :=
  ∀ n, P14985501273344487588.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P15916195120159043460

`(A080872(n+1)+A080872(n))/2`
-/

namespace A080806.P15916195120159043460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080872 (n + 1) + A080872 n : ℚ) / 2

end

end A080806.P15916195120159043460

namespace A080806

/-- `(A080872(n+1)+A080872(n))/2` -/
def P15916195120159043460.Spec : Prop :=
  ∀ n, P15916195120159043460.a n = (A080806 (n + 1) : ℚ)

end A080806

/-! ## A080806.P13597545776828320478

`(A129445(n+1)+A074061(n))/2`
-/

namespace A080806.P13597545776828320478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129445 (n + 1) + A074061 n : ℚ) / 2

end

end A080806.P13597545776828320478

namespace A080806

/-- `(A129445(n+1)+A074061(n))/2` -/
def P13597545776828320478.Spec : Prop :=
  ∀ n, P13597545776828320478.a n = (A080806 (n + 1) : ℚ)

end A080806

/-! ## A080806.P16761632836743366862

`A131093(A005408(n)-A004526(n))`
-/

namespace A080806.P16761632836743366862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131093 (A005408 n - A004526 n).toNat

end

end A080806.P16761632836743366862

namespace A080806

/-- `A131093(A005408(n)-A004526(n))` -/
def P16761632836743366862.Spec : Prop :=
  ∀ n, P16761632836743366862.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P7858388173532989843

`A008683(A046389(n+1))+2*A181442(n)`
-/

namespace A080806.P7858388173532989843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A046389 (n + 1)).toNat + 2 * A181442 n

end

end A080806.P7858388173532989843

namespace A080806

/-- `A008683(A046389(n+1))+2*A181442(n)` -/
def P7858388173532989843.Spec : Prop :=
  ∀ n, P7858388173532989843.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P17869094992190147858

`A008683(A065091(n+1))+2*A181442(n)`
-/

namespace A080806.P17869094992190147858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat + 2 * A181442 n

end

end A080806.P17869094992190147858

namespace A080806

/-- `A008683(A065091(n+1))+2*A181442(n)` -/
def P17869094992190147858.Spec : Prop :=
  ∀ n, P17869094992190147858.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P14750608407306838673

`A008683(A225184(n+1))+2*A181442(n)`
-/

namespace A080806.P14750608407306838673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A225184 (n + 1)).toNat + 2 * A181442 n

end

end A080806.P14750608407306838673

namespace A080806

/-- `A008683(A225184(n+1))+2*A181442(n)` -/
def P14750608407306838673.Spec : Prop :=
  ∀ n, P14750608407306838673.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P6683009290833079103

`A008683(A238086(n+1))+2*A181442(n)`
-/

namespace A080806.P6683009290833079103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A238086 (n + 1)).toNat + 2 * A181442 n

end

end A080806.P6683009290833079103

namespace A080806

/-- `A008683(A238086(n+1))+2*A181442(n)` -/
def P6683009290833079103.Spec : Prop :=
  ∀ n, P6683009290833079103.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P7420493389976775808

`A328310(A033216(n+1))+2*A181442(n)`
-/

namespace A080806.P7420493389976775808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A033216 (n + 1)).toNat + 2 * A181442 n

end

end A080806.P7420493389976775808

namespace A080806

/-- `A328310(A033216(n+1))+2*A181442(n)` -/
def P7420493389976775808.Spec : Prop :=
  ∀ n, P7420493389976775808.a n = A080806 (n + 1)

end A080806

/-! ## A080806.P16223515372734465401

`A008683(A142547(n+1))+2*A181442(n)`
-/

namespace A080806.P16223515372734465401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A142547 (n + 1)).toNat + 2 * A181442 n

end

end A080806.P16223515372734465401

namespace A080806

/-- `A008683(A142547(n+1))+2*A181442(n)` -/
def P16223515372734465401.Spec : Prop :=
  ∀ n, P16223515372734465401.a n = A080806 (n + 1)

end A080806

/-!
# A080808: a(1) = 4, a(n)= smallest n-th power obtained by inserting digits anywhere in a(n-1).

The programs for A080808, there is no canonical definition to state claims against.
-/

/-! ## A080808.P5162553058932420670

`A097661(n+1)^(n+1)`
-/

namespace A080808.P5162553058932420670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097661 (n + 1) ^ (n + 1)

end

end A080808.P5162553058932420670

/-!
# A080812: a(1) = 9, a(n)= smallest n-th power obtained by inserting digits anywhere in a(n-1).

The programs for A080812, there is no canonical definition to state claims against.
-/

/-! ## A080812.P13577433665199373726

`A080808(n+1)+A080796(n)*A080797(n)`
-/

namespace A080812.P13577433665199373726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080808 (n + 1) + A080796 n * A080797 n

end

end A080812.P13577433665199373726

/-!
# A080813: Lexicographically largest overlap-free binary sequence.

The programs for A080813, the canonical program `A080813.P10164319532213098643` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080813 has offset 1).

The definition of A080813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080813.P4543805855160779428

`1-A308901(n+1)`
-/

namespace A080813.P4543805855160779428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A308901 (n + 1)

end

end A080813.P4543805855160779428

namespace A080813

/-- `1-A308901(n+1)` -/
def P4543805855160779428.Spec : Prop :=
  ∀ n, P4543805855160779428.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P7964871938951379246

`xor(1, A308901(Δ[n²]-n))`
-/

namespace A080813.P7964871938951379246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A308901 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A080813.P7964871938951379246

namespace A080813

/-- `xor(1, A308901(Δ[n²]-n))` -/
def P7964871938951379246.Spec : Prop :=
  ∀ n, P7964871938951379246.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P17807448682721071648

`abs(1-A308901(n-log2(1/2)))`
-/

namespace A080813.P17807448682721071648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A308901 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat|

end

end A080813.P17807448682721071648

namespace A080813

/-- `abs(1-A308901(n-log2(1/2)))` -/
def P17807448682721071648.Spec : Prop :=
  ∀ n, P17807448682721071648.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P6054436056531530840

`xor(3, A308901(abs(2*n-abs(1-n))))-2`
-/

namespace A080813.P6054436056531530840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A308901 |((2 * n : ℤ) - |1 - (n : ℤ)|)|.toNat) - 2

end

end A080813.P6054436056531530840

namespace A080813

/-- `xor(3, A308901(abs(2*n-abs(1-n))))-2` -/
def P6054436056531530840.Spec : Prop :=
  ∀ n, P6054436056531530840.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P12220684738255296886

`A254377(abs(10-A004273(n)))`
-/

namespace A080813.P12220684738255296886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 |10 - A004273 n|.toNat

end

end A080813.P12220684738255296886

namespace A080813

/-- `A254377(abs(10-A004273(n)))` -/
def P12220684738255296886.Spec : Prop :=
  ∀ n, P12220684738255296886.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P15462826852589102415

`A000007(n*A308901(n+1))`
-/

namespace A080813.P15462826852589102415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A308901 (n + 1)).toNat

end

end A080813.P15462826852589102415

namespace A080813

/-- `A000007(n*A308901(n+1))` -/
def P15462826852589102415.Spec : Prop :=
  ∀ n, P15462826852589102415.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P10164319532213098643

`A000120(A008574(n)%(n+2))%2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080813

/-- `A000120(A008574(n)%(n+2))%2` -/
def P10164319532213098643.Spec : Prop :=
  ∀ n, P10164319532213098643.a n = A080813 (n + 1)

theorem P10164319532213098643.correct : P10164319532213098643.Spec := by
  intro n
  simp only [A080813, Nat.add_sub_cancel]

end A080813

/-! ## A080813.P804923445072740417

`A000045(C(n, A308901(n+1)+n))`
-/

namespace A080813.P804923445072740417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (A308901 (n + 1) + (n : ℤ)).toNat)

end

end A080813.P804923445072740417

namespace A080813

/-- `A000045(C(n, A308901(n+1)+n))` -/
def P804923445072740417.Spec : Prop :=
  ∀ n, P804923445072740417.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P6340634362765301841

`xor(A007318(C(2, n)), A308901(n+1))²`
-/

namespace A080813.P6340634362765301841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose 2 n)) (A308901 (n + 1)) ^ 2

end

end A080813.P6340634362765301841

namespace A080813

/-- `xor(A007318(C(2, n)), A308901(n+1))²` -/
def P6340634362765301841.Spec : Prop :=
  ∀ n, P6340634362765301841.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P6697746949910902236

`xor(A000108(C(2, 2*n)), A308901(n+1))²`
-/

namespace A080813.P6697746949910902236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000108 (Nat.choose 2 (2 * n))) (A308901 (n + 1)) ^ 2

end

end A080813.P6697746949910902236

namespace A080813

/-- `xor(A000108(C(2, 2*n)), A308901(n+1))²` -/
def P6697746949910902236.Spec : Prop :=
  ∀ n, P6697746949910902236.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P15583964453747516213

`C(A007318(n), A308901(n+1)+A007318(n))`
-/

namespace A080813.P15583964453747516213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat (A308901 (n + 1) + A007318 n).toNat

end

end A080813.P15583964453747516213

namespace A080813

/-- `C(A007318(n), A308901(n+1)+A007318(n))` -/
def P15583964453747516213.Spec : Prop :=
  ∀ n, (P15583964453747516213.a n : ℤ) = A080813 (n + 1)

end A080813

/-! ## A080813.P13635409612703136131

`A010060((n+1)²%A241749(n))`
-/

namespace A080813.P13635409612703136131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.tmod ((n + 1) ^ 2 : ℤ) (A241749 n)).toNat

end

end A080813.P13635409612703136131

namespace A080813

/-- `A010060((n+1)²%A241749(n))` -/
def P13635409612703136131.Spec : Prop :=
  ∀ n, P13635409612703136131.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P5502155714254275099

`A010059(abs(10-A004273(n)))`
-/

namespace A080813.P5502155714254275099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 |10 - A004273 n|.toNat

end

end A080813.P5502155714254275099

namespace A080813

/-- `A010059(abs(10-A004273(n)))` -/
def P5502155714254275099.Spec : Prop :=
  ∀ n, P5502155714254275099.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P4741313763686322088

`(A000120(abs(10-A004273(n)))+1)%2`
-/

namespace A080813.P4741313763686322088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 |10 - A004273 n|.toNat + 1) 2

end

end A080813.P4741313763686322088

namespace A080813

/-- `(A000120(abs(10-A004273(n)))+1)%2` -/
def P4741313763686322088.Spec : Prop :=
  ∀ n, P4741313763686322088.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P7561725106944213960

`A159782((2*n+1)*A308901(n+1))`
-/

namespace A080813.P7561725106944213960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 ((2 * n + 1 : ℤ) * A308901 (n + 1)).toNat

end

end A080813.P7561725106944213960

namespace A080813

/-- `A159782((2*n+1)*A308901(n+1))` -/
def P7561725106944213960.Spec : Prop :=
  ∀ n, P7561725106944213960.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P4298711695432458720

`A000035(A308901(n+1)+2*n+1)`
-/

namespace A080813.P4298711695432458720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A308901 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A080813.P4298711695432458720

namespace A080813

/-- `A000035(A308901(n+1)+2*n+1)` -/
def P4298711695432458720.Spec : Prop :=
  ∀ n, P4298711695432458720.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P14836573559584403311

`xor(A014963(10*(n+1)), A308901(n+1))²`
-/

namespace A080813.P14836573559584403311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (10 * (n + 1))) (A308901 (n + 1)) ^ 2

end

end A080813.P14836573559584403311

namespace A080813

/-- `xor(A014963(10*(n+1)), A308901(n+1))²` -/
def P14836573559584403311.Spec : Prop :=
  ∀ n, P14836573559584403311.a n = A080813 (n + 1)

end A080813

/-! ## A080813.P1776941975441929471

`C(A000108(n), A308901(n+1)+A000108(n))`
-/

namespace A080813.P1776941975441929471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n).toNat (A308901 (n + 1) + A000108 n).toNat

end

end A080813.P1776941975441929471

namespace A080813

/-- `C(A000108(n), A308901(n+1)+A000108(n))` -/
def P1776941975441929471.Spec : Prop :=
  ∀ n, (P1776941975441929471.a n : ℤ) = A080813 (n + 1)

end A080813

/-!
# A080814: Successive words in the formal D0L language that produces the Thue-Morse sequence A001285 (start with 1, map 1 -> 12, 2 -> 21).

The programs for A080814, there is no canonical definition to state claims against.
-/

/-! ## A080814.P4624309371107803533

`A225188(∑[A046930(n+2)])`
-/

namespace A080814.P4624309371107803533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080814.P4624309371107803533

/-! ## A080814.P7536216537307660198

`A225188(A172275(n)+A008486(n))`
-/

namespace A080814.P7536216537307660198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225188 (A172275 n + A008486 n).toNat

end

end A080814.P7536216537307660198

/-!
# A080815: Successive strings in the construction of the Thue-Morse sequence A001285.

The programs for A080815, there is no canonical definition to state claims against.
-/

/-! ## A080815.P10928832567473482650

`A225188(∑[A046930(n+1)])`
-/

namespace A080815.P10928832567473482650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080815.P10928832567473482650

/-!
# A080816: Triangle read by rows in which n-th row gives trajectory of n (omitting n itself) under the map k -> k+1 if k odd, k -> k/2 if k even.

The programs for A080816, there is no canonical definition to state claims against.
-/

/-! ## A080816.P17288154473458199803

`A046951(A000040(∑[∑[n+10]])+1)`
-/

namespace A080816.P17288154473458199803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A080816.P17288154473458199803

/-!
# A080817: Leading diagonal of triangle in A080818.

The programs for A080817, the canonical program `A080817.P9958374020944606549` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080817 has offset 1).

The definition of A080817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080817.P9958374020944606549

`ceil(sqrt((n+1)*(n+2)/2))²-(n+1)*n/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080817

/-- `ceil(sqrt((n+1)*(n+2)/2))²-(n+1)*n/2` -/
def P9958374020944606549.Spec : Prop :=
  ∀ n, P9958374020944606549.a n = (A080817 (n + 1) : ℚ)

end A080817

/-! ## A080817.P763396068734847068

`∑[Δ[A175032(n)]+1]`
-/

namespace A080817.P763396068734847068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080817.P763396068734847068

namespace A080817

/-- `∑[Δ[A175032(n)]+1]` -/
def P763396068734847068.Spec : Prop :=
  ∀ n, P763396068734847068.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P11843647763926099328

`abs(A175032(n+1)+∑[n+1]-∑[n])`
-/

namespace A080817.P11843647763926099328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175032 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A080817.P11843647763926099328

namespace A080817

/-- `abs(A175032(n+1)+∑[n+1]-∑[n])` -/
def P11843647763926099328.Spec : Prop :=
  ∀ n, P11843647763926099328.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P8760629712676577363

`abs(A080819(n+1)-A000217(n))`
-/

namespace A080817.P8760629712676577363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080819 (n + 1) - A000217 n|

end

end A080817.P8760629712676577363

namespace A080817

/-- `abs(A080819(n+1)-A000217(n))` -/
def P8760629712676577363.Spec : Prop :=
  ∀ n, P8760629712676577363.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P9209298091937598488

`A000027(A080819(n+1)-A000217(n))`
-/

namespace A080817.P9209298091937598488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A080819 (n + 1) - A000217 n).toNat

end

end A080817.P9209298091937598488

namespace A080817

/-- `A000027(A080819(n+1)-A000217(n))` -/
def P9209298091937598488.Spec : Prop :=
  ∀ n, P9209298091937598488.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P5790077272419507280

`A080820(A214857(A175032(n+1)+n))`
-/

namespace A080817.P5790077272419507280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (A214857 (A175032 (n + 1) + (n : ℤ)).toNat).toNat

end

end A080817.P5790077272419507280

namespace A080817

/-- `A080820(A214857(A175032(n+1)+n))` -/
def P5790077272419507280.Spec : Prop :=
  ∀ n, P5790077272419507280.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P10322281134488084218

`A080818(∑[n+1])`
-/

namespace A080817.P10322281134488084218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080817.P10322281134488084218

namespace A080817

/-- `A080818(∑[n+1])` -/
def P10322281134488084218.Spec : Prop :=
  ∀ n, P10322281134488084218.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P10362660410767540085

`abs(A048761(∑[n+1])-∑[n])`
-/

namespace A080817.P10362660410767540085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048761 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

end

end A080817.P10362660410767540085

namespace A080817

/-- `abs(A048761(∑[n+1])-∑[n])` -/
def P10362660410767540085.Spec : Prop :=
  ∀ n, P10362660410767540085.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P3737394606408694145

`∑[Δ[A068527(C(n+1, 2))]+1]`
-/

namespace A080817.P3737394606408694145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (Nat.choose (n + 1) 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080817.P3737394606408694145

namespace A080817

/-- `∑[Δ[A068527(C(n+1, 2))]+1]` -/
def P3737394606408694145.Spec : Prop :=
  ∀ n, P3737394606408694145.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P3835785829597945222

`∑[Δ[A048761(A000217(n))]-n]`
-/

namespace A080817.P3835785829597945222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (A000217 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080817.P3835785829597945222

namespace A080817

/-- `∑[Δ[A048761(A000217(n))]-n]` -/
def P3835785829597945222.Spec : Prop :=
  ∀ n, P3835785829597945222.a n = A080817 (n + 1)

end A080817

/-! ## A080817.P10645182482866430666

`A000027(A048761(∑[n+1])-∑[n])`
-/

namespace A080817.P10645182482866430666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A048761 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A080817.P10645182482866430666

namespace A080817

/-- `A000027(A048761(∑[n+1])-∑[n])` -/
def P10645182482866430666.Spec : Prop :=
  ∀ n, P10645182482866430666.a n = A080817 (n + 1)

end A080817

/-!
# A080818: Triangle read by rows in which the n-th row contains n distinct numbers whose sum is the smallest square.

The programs for A080818, the canonical program `A080818.P16206206201295920908` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080818 has offset 1).

The definition of A080818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080818.P16206206201295920908

`A068527(A127773(n+1))+A002260(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080818

/-- `A068527(A127773(n+1))+A002260(n+1)` -/
def P16206206201295920908.Spec : Prop :=
  ∀ n, P16206206201295920908.a n = A080818 (n + 1)

theorem P16206206201295920908.correct : P16206206201295920908.Spec := by
  intro n
  simp only [A080818, Nat.add_sub_cancel]

end A080818

/-! ## A080818.P11519916675649245556

`A068527(A127773(n+1))+A002262(n)+1`
-/

namespace A080818.P11519916675649245556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + (A002262 n + 1)

end

end A080818.P11519916675649245556

namespace A080818

/-- `A068527(A127773(n+1))+A002262(n)+1` -/
def P11519916675649245556.Spec : Prop :=
  ∀ n, P11519916675649245556.a n = A080818 (n + 1)

end A080818

/-! ## A080818.P7071564671692607575

`A068527(A127773(n+1))+1-A057944(n)+n`
-/

namespace A080818.P7071564671692607575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + (1 - A057944 n + (n : ℤ))

end

end A080818.P7071564671692607575

namespace A080818

/-- `A068527(A127773(n+1))+1-A057944(n)+n` -/
def P7071564671692607575.Spec : Prop :=
  ∀ n, P7071564671692607575.a n = A080818 (n + 1)

end A080818

/-! ## A080818.P8343919839251163830

`A068527(A127773(n+1))+A004736(A038722(n+1))`
-/

namespace A080818.P8343919839251163830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + A004736 (A038722 (n + 1)).toNat

end

end A080818.P8343919839251163830

namespace A080818

/-- `A068527(A127773(n+1))+A004736(A038722(n+1))` -/
def P8343919839251163830.Spec : Prop :=
  ∀ n, P8343919839251163830.a n = A080818 (n + 1)

end A080818

/-! ## A080818.P14186748725033012477

`A122197(A189151(n+1))+A068527(A127773(n+1))`
-/

namespace A080818.P14186748725033012477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A189151 (n + 1)).toNat + A068527 (A127773 (n + 1)).toNat

end

end A080818.P14186748725033012477

namespace A080818

/-- `A122197(A189151(n+1))+A068527(A127773(n+1))` -/
def P14186748725033012477.Spec : Prop :=
  ∀ n, P14186748725033012477.a n = A080818 (n + 1)

end A080818

/-! ## A080818.P9970687893610521628

`A068527(A127773(n+1))+A000005(A059268(n))`
-/

namespace A080818.P9970687893610521628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A127773 (n + 1)).toNat + A000005 (A059268 n).toNat

end

end A080818.P9970687893610521628

namespace A080818

/-- `A068527(A127773(n+1))+A000005(A059268(n))` -/
def P9970687893610521628.Spec : Prop :=
  ∀ n, P9970687893610521628.a n = A080818 (n + 1)

end A080818

/-!
# A080819: Row sums from triangle in A080818.

The programs for A080819, the canonical program `A080819.P12038575862420267273` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080819 has offset 1).

The definition of A080819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080819.P12038575862420267273

`ceil(sqrt((n+1)*(n+2)/2))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080819

/-- `ceil(sqrt((n+1)*(n+2)/2))²` -/
def P12038575862420267273.Spec : Prop :=
  ∀ n, P12038575862420267273.a n = A080819 (n + 1)

theorem P12038575862420267273.correct : P12038575862420267273.Spec := by
  intro n
  simp only [A080819, Nat.add_sub_cancel]

end A080819

/-! ## A080819.P8440539351543185677

`ceil(sqrt(C(n+2, 2)))^2`
-/

namespace A080819.P8440539351543185677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (n + 2) 2 : ℝ)⌉ ^ 2

end

end A080819.P8440539351543185677

namespace A080819

/-- `ceil(sqrt(C(n+2, 2)))^2` -/
def P8440539351543185677.Spec : Prop :=
  ∀ n, P8440539351543185677.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P10624166869655920509

`root(ceil(sqrt(C(n+2, 2))), 1/2)`
-/

namespace A080819.P10624166869655920509
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (Nat.choose (n + 2) 2 : ℝ)⌉ : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A080819.P10624166869655920509

namespace A080819

/-- `root(ceil(sqrt(C(n+2, 2))), 1/2)` -/
def P10624166869655920509.Spec : Prop :=
  ∀ n, P10624166869655920509.a n = (A080819 (n + 1) : ℝ)

end A080819

/-! ## A080819.P6000190547481502308

`ceil(sqrt(tan(3)+∑[n+1]))^2`
-/

namespace A080819.P6000190547481502308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.tan (3 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌉ ^ 2

end

end A080819.P6000190547481502308

namespace A080819

/-- `ceil(sqrt(tan(3)+∑[n+1]))^2` -/
def P6000190547481502308.Spec : Prop :=
  ∀ n, P6000190547481502308.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P5021984694459457873

`and(-3, floor(-sqrt(∑[n+1]))²)`
-/

namespace A080819.P5021984694459457873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (⌊-Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋ ^ 2)

end

end A080819.P5021984694459457873

namespace A080819

/-- `and(-3, floor(-sqrt(∑[n+1]))²)` -/
def P5021984694459457873.Spec : Prop :=
  ∀ n, P5021984694459457873.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P11745362079045349736

`A080817(n+1)+∑[n]`
-/

namespace A080819.P11745362079045349736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080817 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080819.P11745362079045349736

namespace A080819

/-- `A080817(n+1)+∑[n]` -/
def P11745362079045349736.Spec : Prop :=
  ∀ n, P11745362079045349736.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P18393675799075411144

`A000290(ceil(sqrt(∑[n+1])))`
-/

namespace A080819.P18393675799075411144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A080819.P18393675799075411144

namespace A080819

/-- `A000290(ceil(sqrt(∑[n+1])))` -/
def P18393675799075411144.Spec : Prop :=
  ∀ n, P18393675799075411144.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P3867515634156397014

`∑[Δ[A175032(n)]+1+n]`
-/

namespace A080819.P3867515634156397014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080819.P3867515634156397014

namespace A080819

/-- `∑[Δ[A175032(n)]+1+n]` -/
def P3867515634156397014.Spec : Prop :=
  ∀ n, P3867515634156397014.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P17494002089934031704

`A175032(n+1)+∑[n+1]`
-/

namespace A080819.P17494002089934031704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080819.P17494002089934031704

namespace A080819

/-- `A175032(n+1)+∑[n+1]` -/
def P17494002089934031704.Spec : Prop :=
  ∀ n, P17494002089934031704.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P13706250747327822950

`A080820(n+1)*A080820(n+1)`
-/

namespace A080819.P13706250747327822950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080820 (n + 1) * A080820 (n + 1)

end

end A080819.P13706250747327822950

namespace A080819

/-- `A080820(n+1)*A080820(n+1)` -/
def P13706250747327822950.Spec : Prop :=
  ∀ n, P13706250747327822950.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P12995348031138940245

`A048761(∑[n+1])`
-/

namespace A080819.P12995348031138940245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080819.P12995348031138940245

namespace A080819

/-- `A048761(∑[n+1])` -/
def P12995348031138940245.Spec : Prop :=
  ∀ n, P12995348031138940245.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P2624713812392869224

`A048760(A080820(n+1)²)`
-/

namespace A080819.P2624713812392869224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A080820 (n + 1) ^ 2).toNat

end

end A080819.P2624713812392869224

namespace A080819

/-- `A048760(A080820(n+1)²)` -/
def P2624713812392869224.Spec : Prop :=
  ∀ n, P2624713812392869224.a n = A080819 (n + 1)

end A080819

/-! ## A080819.P15462923142983432865

`A080818(A000217(n+1))+A000217(n)`
-/

namespace A080819.P15462923142983432865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080818 (A000217 (n + 1)).toNat + A000217 n

end

end A080819.P15462923142983432865

namespace A080819

/-- `A080818(A000217(n+1))+A000217(n)` -/
def P15462923142983432865.Spec : Prop :=
  ∀ n, P15462923142983432865.a n = A080819 (n + 1)

end A080819

/-!
# A080820: Least m such that m^2 >= n*(n+1)/2.

The programs for A080820, the canonical program `A080820.P3405857355669494182` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080820 has offset 1).

The definition of A080820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080820.P8781427434907948427

`ceil(sqrt((n+1)*(n+2)/2))`
-/

namespace A080820.P8781427434907948427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ)⌉

end

end A080820.P8781427434907948427

namespace A080820

/-- `ceil(sqrt((n+1)*(n+2)/2))` -/
def P8781427434907948427.Spec : Prop :=
  ∀ n, P8781427434907948427.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P3405857355669494182

`A080819(n+1)^(1/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080820

/-- `A080819(n+1)^(1/2)` -/
def P3405857355669494182.Spec : Prop :=
  ∀ n, P3405857355669494182.a n = (A080820 (n + 1) : ℝ)

end A080820

/-! ## A080820.P330311252399827594

`floor(sqrt(C(n+2, 2)-1))+1`
-/

namespace A080820.P330311252399827594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((Nat.choose (n + 2) 2 : ℤ) - 1) + 1

end

end A080820.P330311252399827594

namespace A080820

/-- `floor(sqrt(C(n+2, 2)-1))+1` -/
def P330311252399827594.Spec : Prop :=
  ∀ n, P330311252399827594.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P4352308454185515965

`round(sqrt(∑[n+1]+a(n-1)))` with `a(0)=1`
-/

namespace A080820.P4352308454185515965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) : ℝ))

end

end A080820.P4352308454185515965

namespace A080820

/-- `round(sqrt(∑[n+1]+a(n-1)))` -/
def P4352308454185515965.Spec : Prop :=
  ∀ n, P4352308454185515965.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P15088643096999933451

`n+1-floor(∑[n]/(a(n-1)+n+1))` with `a(0)=1`
-/

namespace A080820.P15088643096999933451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (a (n - 1) + (n + 1 : ℤ) : ℚ)⌋

end

end A080820.P15088643096999933451

namespace A080820

/-- `n+1-floor(∑[n]/(a(n-1)+n+1))` -/
def P15088643096999933451.Spec : Prop :=
  ∀ n, P15088643096999933451.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P4215346509549631320

`sqrt(A080819(n+1))`
-/

namespace A080820.P4215346509549631320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080819 (n + 1) : ℝ)

end

end A080820.P4215346509549631320

namespace A080820

/-- `sqrt(A080819(n+1))` -/
def P4215346509549631320.Spec : Prop :=
  ∀ n, P4215346509549631320.a n = (A080820 (n + 1) : ℝ)

end A080820

/-! ## A080820.P4047702470011086481

`A186219(n+1)-n`
-/

namespace A080820.P4047702470011086481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1) - (n : ℤ)

end

end A080820.P4047702470011086481

namespace A080820

/-- `A186219(n+1)-n` -/
def P4047702470011086481.Spec : Prop :=
  ∀ n, P4047702470011086481.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P14924292182483740489

`floor(sqrt(A000096(n)))+1`
-/

namespace A080820.P14924292182483740489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000096 n) + 1

end

end A080820.P14924292182483740489

namespace A080820

/-- `floor(sqrt(A000096(n)))+1` -/
def P14924292182483740489.Spec : Prop :=
  ∀ n, P14924292182483740489.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P16969284360913720483

`floor(sqrt(sqrt(A033487(n))))+1`
-/

namespace A080820.P16969284360913720483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A033487 n : ℝ))⌋ + 1

end

end A080820.P16969284360913720483

namespace A080820

/-- `floor(sqrt(sqrt(A033487(n))))+1` -/
def P16969284360913720483.Spec : Prop :=
  ∀ n, P16969284360913720483.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P7912700488458223189

`floor(sqrt(A000217(n)+n))+1`
-/

namespace A080820.P7912700488458223189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000217 n + (n : ℤ)) + 1

end

end A080820.P7912700488458223189

namespace A080820

/-- `floor(sqrt(A000217(n)+n))+1` -/
def P7912700488458223189.Spec : Prop :=
  ∀ n, P7912700488458223189.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P9505911409939495925

`floor(sqrt(A080754(n+1)+∑[n]))`
-/

namespace A080820.P9505911409939495925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080754 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A080820.P9505911409939495925

namespace A080820

/-- `floor(sqrt(A080754(n+1)+∑[n]))` -/
def P9505911409939495925.Spec : Prop :=
  ∀ n, P9505911409939495925.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P16325566524972772839

`A000027(ceil(sqrt(A000217(n+1))))`
-/

namespace A080820.P16325566524972772839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈Real.sqrt (A000217 (n + 1) : ℝ)⌉.toNat

end

end A080820.P16325566524972772839

namespace A080820

/-- `A000027(ceil(sqrt(A000217(n+1))))` -/
def P16325566524972772839.Spec : Prop :=
  ∀ n, P16325566524972772839.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P2524155865761747045

`floor(sqrt(A000124(n+1)-2))+1`
-/

namespace A080820.P2524155865761747045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000124 (n + 1) - 2) + 1

end

end A080820.P2524155865761747045

namespace A080820

/-- `floor(sqrt(A000124(n+1)-2))+1` -/
def P2524155865761747045.Spec : Prop :=
  ∀ n, P2524155865761747045.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P2394975340717425030

`A188134(4*ceil(sqrt(A000217(n+1))))`
-/

namespace A080820.P2394975340717425030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (4 * ⌈Real.sqrt (A000217 (n + 1) : ℝ)⌉).toNat

end

end A080820.P2394975340717425030

namespace A080820

/-- `A188134(4*ceil(sqrt(A000217(n+1))))` -/
def P2394975340717425030.Spec : Prop :=
  ∀ n, P2394975340717425030.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P8089275314568726909

`A248231(A248231(A248232(n+2)))-(n+1)`
-/

namespace A080820.P8089275314568726909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A248231 (A248232 (n + 2)).toNat).toNat - (n + 1 : ℤ)

end

end A080820.P8089275314568726909

namespace A080820

/-- `A248231(A248231(A248232(n+2)))-(n+1)` -/
def P8089275314568726909.Spec : Prop :=
  ∀ n, P8089275314568726909.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P17303652944602152650

`A000079(n)+ceil(sqrt(A000217(n+1)))-2^n`
-/

namespace A080820.P17303652944602152650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ⌈Real.sqrt (A000217 (n + 1) : ℝ)⌉ - (2 ^ n : ℤ)

end

end A080820.P17303652944602152650

namespace A080820

/-- `A000079(n)+ceil(sqrt(A000217(n+1)))-2^n` -/
def P17303652944602152650.Spec : Prop :=
  ∀ n, P17303652944602152650.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P14941371752279098245

`A194920(A360926(n+1))`
-/

namespace A080820.P14941371752279098245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A360926 (n + 1)).toNat

end

end A080820.P14941371752279098245

namespace A080820

/-- `A194920(A360926(n+1))` -/
def P14941371752279098245.Spec : Prop :=
  ∀ n, P14941371752279098245.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P885566491661355971

`∑[A281871(A000096(n+1)-1)]`
-/

namespace A080820.P885566491661355971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281871 (A000096 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080820.P885566491661355971

namespace A080820

/-- `∑[A281871(A000096(n+1)-1)]` -/
def P885566491661355971.Spec : Prop :=
  ∀ n, P885566491661355971.a n = A080820 (n + 1)

end A080820

/-! ## A080820.P7658859907211459016

`A003059(∑[n+1])`
-/

namespace A080820.P7658859907211459016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080820.P7658859907211459016

namespace A080820

/-- `A003059(∑[n+1])` -/
def P7658859907211459016.Spec : Prop :=
  ∀ n, P7658859907211459016.a n = A080820 (n + 1)

end A080820

/-!
# A080821: Primes in the accumulated tally of steps in the x+1 problem: Repeat until 1 is reached: if x is even divide by 2, otherwise add 1.

The programs for A080821, the canonical program `A080821.P11448847452303854669` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080821 has offset 1).

The definition of A080821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080821.P8695979750999730982

`p?[∑[A061313(n+1)]]`
-/

namespace A080821.P8695979750999730982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P8695979750999730982

namespace A080821

/-- `p?[∑[A061313(n+1)]]` -/
def P8695979750999730982.Spec : Prop :=
  ∀ n, P8695979750999730982.a n = A080821 (n + 1)

end A080821

/-! ## A080821.P1609535228349428242

`p?[∑[A119477(n+1)-1]]`
-/

namespace A080821.P1609535228349428242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P1609535228349428242

namespace A080821

/-- `p?[∑[A119477(n+1)-1]]` -/
def P1609535228349428242.Spec : Prop :=
  ∀ n, P1609535228349428242.a n = A080821 (n + 1)

end A080821

/-! ## A080821.P11448847452303854669

`p?[A181132(n)+A001855(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080821

/-- `p?[A181132(n)+A001855(n+1)]` -/
def P11448847452303854669.Spec : Prop :=
  ∀ n, P11448847452303854669.a n = A080821 (n + 1)

theorem P11448847452303854669.correct : P11448847452303854669.Spec := by
  intro n
  simp only [A080821, Nat.add_sub_cancel]

end A080821

/-! ## A080821.P2311019192590555386

`p?[A083652(n)+A181132(n)-1]`
-/

namespace A080821.P2311019192590555386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n + (A181132 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P2311019192590555386

namespace A080821

/-- `p?[A083652(n)+A181132(n)-1]` -/
def P2311019192590555386.Spec : Prop :=
  ∀ n, P2311019192590555386.a n = A080821 (n + 1)

end A080821

/-! ## A080821.P9051739447524323810

`p?[∑[A056792(A054429(n+1))]]`
-/

namespace A080821.P9051739447524323810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A054429 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080821.P9051739447524323810

namespace A080821

/-- `p?[∑[A056792(A054429(n+1))]]` -/
def P9051739447524323810.Spec : Prop :=
  ∀ n, P9051739447524323810.a n = A080821 (n + 1)

end A080821

/-!
# A080822: Primes in A058633.

The programs for A080822, there is no canonical definition to state claims against.
-/

/-! ## A080822.P9355545959195029356

`p?[A058633(n+1)]`
-/

namespace A080822.P9355545959195029356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080822.P9355545959195029356

/-! ## A080822.P13720324944894879286

`p?[∑[A006577(n+1)]]`
-/

namespace A080822.P13720324944894879286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080822.P13720324944894879286

/-! ## A080822.P8311910124089247460

`p?[∑[A008908(n+1)-1]]`
-/

namespace A080822.P8311910124089247460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080822.P8311910124089247460

/-! ## A080822.P13395141145025555660

`p?[A186701(n+1)-(n+1)]`
-/

namespace A080822.P13395141145025555660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186701 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080822.P13395141145025555660

/-! ## A080822.P11086845457029211199

`p?[∑[A139399(2*(n+1))]+n]`
-/

namespace A080822.P11086845457029211199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080822.P11086845457029211199

/-! ## A080822.P18221407773298775640

`p?[∑[A139399(4*(n+1))]]`
-/

namespace A080822.P18221407773298775640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080822.P18221407773298775640

/-! ## A080822.P9329655459840084320

`∩[A000040(n+1), A058633(n+1)]`
-/

namespace A080822.P9329655459840084320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P9329655459840084320

/-! ## A080822.P9550402609306342881

`∩[A004139(n+1), A058633(n+1)]`
-/

namespace A080822.P9550402609306342881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P9550402609306342881

/-! ## A080822.P10825681343594265654

`∩[A045319(n+1), A058633(n+1)]`
-/

namespace A080822.P10825681343594265654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P10825681343594265654

/-! ## A080822.P5195044081754005341

`∩[A045344(n+1), A058633(n+1)]`
-/

namespace A080822.P5195044081754005341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P5195044081754005341

/-! ## A080822.P803196740010253420

`∩[A051948(n+1), A058633(n+1)]`
-/

namespace A080822.P803196740010253420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P803196740010253420

/-! ## A080822.P3388180774791803960

`∩[A053813(n+1), A058633(n+1)]`
-/

namespace A080822.P3388180774791803960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P3388180774791803960

/-! ## A080822.P9479856245287784673

`∩[A058633(n+1), A064728(n+1)]`
-/

namespace A080822.P9479856245287784673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P9479856245287784673

/-! ## A080822.P5928478670288683665

`∩[A058633(n+1), A065091(n+1)]`
-/

namespace A080822.P5928478670288683665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P5928478670288683665

/-! ## A080822.P3004406730183986364

`∩[A058633(n+1), A070303(n+1)]`
-/

namespace A080822.P3004406730183986364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P3004406730183986364

/-! ## A080822.P15036318469409077102

`∩[A058633(n+1), A071621(n+1)]`
-/

namespace A080822.P15036318469409077102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P15036318469409077102

/-! ## A080822.P4803532468077855461

`∩[A058633(n+1), A075763(n+1)]`
-/

namespace A080822.P4803532468077855461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P4803532468077855461

/-! ## A080822.P10676087594400834068

`∩[A058633(n+1), A083249(n+1)]`
-/

namespace A080822.P10676087594400834068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P10676087594400834068

/-! ## A080822.P7717878594265839812

`∩[A058633(n+1), A106118(n+1)]`
-/

namespace A080822.P7717878594265839812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P7717878594265839812

/-! ## A080822.P10604432314889456781

`∩[A058633(n+1), A106119(n+1)]`
-/

namespace A080822.P10604432314889456781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080822.P10604432314889456781

/-!
# A080825: Triangle read by rows in which n-th row gives trajectory of n (omitting n itself) under the map k -> k-1 if k odd, k -> k/2 if k even.

The programs for A080825, there is no canonical definition to state claims against.
-/

/-! ## A080825.P16058776018056378170

`A340581(∑[A340285(n+4)])`
-/

namespace A080825.P16058776018056378170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340285 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080825.P16058776018056378170

/-! ## A080825.P3731484927247849043

`A123584(A330914(n+1)+4)`
-/

namespace A080825.P3731484927247849043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123584 (A330914 (n + 1) + 4).toNat

end

end A080825.P3731484927247849043

/-! ## A080825.P13605622852195689060

`A209279(lt[1, A268482(n+1)])`
-/

namespace A080825.P13605622852195689060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A080825.P13605622852195689060

/-! ## A080825.P4810589193344833938

`A082404(∑[A000045(A046643(n+1))])`
-/

namespace A080825.P4810589193344833938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A046643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080825.P4810589193344833938

/-! ## A080825.P9807559972277050849

`A345116(A057546(n)+A054055(n))`
-/

namespace A080825.P9807559972277050849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345116 (A057546 n + A054055 n).toNat

end

end A080825.P9807559972277050849

/-!
# A080827: Rounded up staircase on natural numbers.

The programs for A080827, the canonical program `A080827.P6240030565834132494` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080827 has offset 1).

The definition of A080827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080827.P6240030565834132494

`floor((n+1)²/2)+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080827

/-- `floor((n+1)²/2)+1` -/
def P6240030565834132494.Spec : Prop :=
  ∀ n, P6240030565834132494.a n = A080827 (n + 1)

theorem P6240030565834132494.correct : P6240030565834132494.Spec := by
  intro n
  simp only [A080827, Nat.add_sub_cancel]

end A080827

/-! ## A080827.P12709205614078060497

`or(1, ∑[or(1, n)])`
-/

namespace A080827.P12709205614078060497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080827.P12709205614078060497

namespace A080827

/-- `or(1, ∑[or(1, n)])` -/
def P12709205614078060497.Spec : Prop :=
  ∀ n, (P12709205614078060497.a n : ℤ) = A080827 (n + 1)

end A080827

/-! ## A080827.P11035173768810264523

`ceil(cosh(log((n+1)²)))`
-/

namespace A080827.P11035173768810264523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌉

end

end A080827.P11035173768810264523

namespace A080827

/-- `ceil(cosh(log((n+1)²)))` -/
def P11035173768810264523.Spec : Prop :=
  ∀ n, P11035173768810264523.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P12621872545585669952

`or(1, a(n-1)+n)` with `a(0)=1`
-/

namespace A080827.P12621872545585669952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (a (n - 1) + n)

end

end A080827.P12621872545585669952

namespace A080827

/-- `or(1, a(n-1)+n)` -/
def P12621872545585669952.Spec : Prop :=
  ∀ n, (P12621872545585669952.a n : ℤ) = A080827 (n + 1)

end A080827

/-! ## A080827.P10446867925895432546

`or(1, ceil((n+1)²/2))`
-/

namespace A080827.P10446867925895432546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈((n + 1) ^ 2 : ℚ) / 2⌉

end

end A080827.P10446867925895432546

namespace A080827

/-- `or(1, ceil((n+1)²/2))` -/
def P10446867925895432546.Spec : Prop :=
  ∀ n, P10446867925895432546.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P17968476769095301072

`round(or(1, (n+1)²)/2)`
-/

namespace A080827.P17968476769095301072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 ((n + 1) ^ 2) : ℚ) / 2)

end

end A080827.P17968476769095301072

namespace A080827

/-- `round(or(1, (n+1)²)/2)` -/
def P17968476769095301072.Spec : Prop :=
  ∀ n, P17968476769095301072.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P14805639674154085592

`∑[a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A080827.P14805639674154085592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080827.P14805639674154085592

namespace A080827

/-- `∑[a(n-2)+2]` -/
def P14805639674154085592.Spec : Prop :=
  ∀ n, (P14805639674154085592.a n : ℤ) = A080827 (n + 1)

end A080827

/-! ## A080827.P512230244882965854

`(or(1, (n+1)²)+1)/2`
-/

namespace A080827.P512230244882965854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((n + 1) ^ 2) + 1 : ℚ) / 2

end

end A080827.P512230244882965854

namespace A080827

/-- `(or(1, (n+1)²)+1)/2` -/
def P512230244882965854.Spec : Prop :=
  ∀ n, P512230244882965854.a n = (A080827 (n + 1) : ℚ)

end A080827

/-! ## A080827.P3454998070368200542

`ceil(C(n+2, 2)-n/2)`
-/

namespace A080827.P3454998070368200542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) - (n : ℚ) / 2⌉

end

end A080827.P3454998070368200542

namespace A080827

/-- `ceil(C(n+2, 2)-n/2)` -/
def P3454998070368200542.Spec : Prop :=
  ∀ n, P3454998070368200542.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P12120357107489792910

`round(C(n+2, 2)-n/2)`
-/

namespace A080827.P12120357107489792910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℚ) - (n : ℚ) / 2)

end

end A080827.P12120357107489792910

namespace A080827

/-- `round(C(n+2, 2)-n/2)` -/
def P12120357107489792910.Spec : Prop :=
  ∀ n, P12120357107489792910.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P1384679310063492489

`xor(1, ceil((n+2)*n/2))`
-/

namespace A080827.P1384679310063492489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(n + 2 : ℚ) * ((n : ℚ) / 2)⌉

end

end A080827.P1384679310063492489

namespace A080827

/-- `xor(1, ceil((n+2)*n/2))` -/
def P1384679310063492489.Spec : Prop :=
  ∀ n, P1384679310063492489.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P7617037364766981691

`ceil(record[((1-n)²+1)/2])`
-/

namespace A080827.P7617037364766981691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A080827.P7617037364766981691

namespace A080827

/-- `ceil(record[((1-n)²+1)/2])` -/
def P7617037364766981691.Spec : Prop :=
  ∀ n, P7617037364766981691.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P15882529756808343450

`round(record[((1-n)²+1)/2])`
-/

namespace A080827.P15882529756808343450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A080827.P15882529756808343450

namespace A080827

/-- `round(record[((1-n)²+1)/2])` -/
def P15882529756808343450.Spec : Prop :=
  ∀ n, P15882529756808343450.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P17509214702412526360

`ceil((cos(1)+(n+1)²)/2)`
-/

namespace A080827.P17509214702412526360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 2⌉

end

end A080827.P17509214702412526360

namespace A080827

/-- `ceil((cos(1)+(n+1)²)/2)` -/
def P17509214702412526360.Spec : Prop :=
  ∀ n, P17509214702412526360.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P9088301034926955459

`round(cos(1)+(n+1)²/2)`
-/

namespace A080827.P9088301034926955459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 2 : ℝ))

end

end A080827.P9088301034926955459

namespace A080827

/-- `round(cos(1)+(n+1)²/2)` -/
def P9088301034926955459.Spec : Prop :=
  ∀ n, P9088301034926955459.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P13848245822209855028

`ceil((sin(1)+(n+1)²)/2)`
-/

namespace A080827.P13848245822209855028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + ((n + 1) ^ 2 : ℝ)) / 2⌉

end

end A080827.P13848245822209855028

namespace A080827

/-- `ceil((sin(1)+(n+1)²)/2)` -/
def P13848245822209855028.Spec : Prop :=
  ∀ n, P13848245822209855028.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P13604492958917597307

`round(sin(1)+(n+1)²/2)`
-/

namespace A080827.P13604492958917597307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 2 : ℝ))

end

end A080827.P13604492958917597307

namespace A080827

/-- `round(sin(1)+(n+1)²/2)` -/
def P13604492958917597307.Spec : Prop :=
  ∀ n, P13604492958917597307.a n = A080827 (n + 1)

end A080827

/-! ## A080827.P17241727176368180666

`A099392(n+2)`
-/

namespace A080827.P17241727176368180666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 2)

end

end A080827.P17241727176368180666

namespace A080827

/-- `A099392(n+2)` -/
def P17241727176368180666.Spec : Prop :=
  ∀ n, P17241727176368180666.a n = A080827 (n + 1)

end A080827

/-!
# A080829: Primes that terminate at 20,10,5 in the 3x-1 problem: Repeat, if x is even divide by 2 else multiply by 3 and subtract 1, until 5 is reached.

The programs for A080829, there is no canonical definition to state claims against.
-/

/-! ## A080829.P10742190233936192367

`p?[A039504(n+1)]`
-/

namespace A080829.P10742190233936192367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080829.P10742190233936192367

/-! ## A080829.P5918893121845236636

`filter[A039504(n+1), A010051(#)]`
-/

namespace A080829.P5918893121845236636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A080829.P5918893121845236636

/-! ## A080829.P5093749546388253963

`filter[A039504(n+1), A323152(#)]`
-/

namespace A080829.P5093749546388253963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A080829.P5093749546388253963

/-! ## A080829.P11270805187070753950

`filter[A039504(n+1), A323153(#)]`
-/

namespace A080829.P11270805187070753950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A080829.P11270805187070753950

/-! ## A080829.P16508724951387187964

`filter[A039504(n+1), A340371(#)]`
-/

namespace A080829.P16508724951387187964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A080829.P16508724951387187964

/-! ## A080829.P2479523263025328926

`filter[A039504(n+1), A353670(#)]`
-/

namespace A080829.P2479523263025328926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A080829.P2479523263025328926

/-! ## A080829.P1192510612767522702

`filter[A039504(n+1), A365716(#)]`
-/

namespace A080829.P1192510612767522702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A080829.P1192510612767522702

/-! ## A080829.P2880944594312584380

`filter[A039504(n+1), A379969(#)]`
-/

namespace A080829.P2880944594312584380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A080829.P2880944594312584380

/-! ## A080829.P16360502337315975810

`filter[A039504(n+1), A380467(#)]`
-/

namespace A080829.P16360502337315975810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A080829.P16360502337315975810

/-! ## A080829.P12790181081004024505

`∩[A000040(n+1), A039504(n+1)]`
-/

namespace A080829.P12790181081004024505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P12790181081004024505

/-! ## A080829.P1229994754860879144

`∩[A001751(n+1), A039504(n+1)]`
-/

namespace A080829.P1229994754860879144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P1229994754860879144

/-! ## A080829.P2815732180563261512

`∩[A006005(n+1), A039504(n+1)]`
-/

namespace A080829.P2815732180563261512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P2815732180563261512

/-! ## A080829.P2561701500386459078

`∩[A008578(n+1), A039504(n+1)]`
-/

namespace A080829.P2561701500386459078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P2561701500386459078

/-! ## A080829.P2907925524410353200

`∩[A039504(n+1), A045344(n+1)]`
-/

namespace A080829.P2907925524410353200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P2907925524410353200

/-! ## A080829.P16255309951343544322

`∩[A039504(n+1), A046022(n+1)]`
-/

namespace A080829.P16255309951343544322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P16255309951343544322

/-! ## A080829.P16441636108184579449

`∩[A039504(n+1), A051948(n+1)]`
-/

namespace A080829.P16441636108184579449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P16441636108184579449

/-! ## A080829.P11798105138218828974

`∩[A039504(n+1), A053577(n+1)]`
-/

namespace A080829.P11798105138218828974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P11798105138218828974

/-! ## A080829.P11344368042071323041

`∩[A039504(n+1), A053813(n+1)]`
-/

namespace A080829.P11344368042071323041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P11344368042071323041

/-! ## A080829.P2730272974549683142

`∩[A039504(n+1), A058363(n+1)]`
-/

namespace A080829.P2730272974549683142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P2730272974549683142

/-! ## A080829.P7277160344136070263

`∩[A039504(n+1), A062972(n+1)]`
-/

namespace A080829.P7277160344136070263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080829.P7277160344136070263

/-!
# A080830: Primes that terminate at 68,34,17 in the 3x-1 problem: Repeat, if x is even divide by 2 else multiply by 3 and subtract 1, until 17 is reached.

The programs for A080830, there is no canonical definition to state claims against.
-/

/-! ## A080830.P12300447475090590311

`p?[A039505(n+1)]`
-/

namespace A080830.P12300447475090590311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080830.P12300447475090590311

/-! ## A080830.P14651075233568767352

`filter[A039505(n+1), A010051(#)]`
-/

namespace A080830.P14651075233568767352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A080830.P14651075233568767352

/-! ## A080830.P9221251172019581913

`filter[A039505(n+1), A323152(#)]`
-/

namespace A080830.P9221251172019581913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A080830.P9221251172019581913

/-! ## A080830.P9102235354709488753

`filter[A039505(n+1), A323153(#)]`
-/

namespace A080830.P9102235354709488753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A080830.P9102235354709488753

/-! ## A080830.P6418776920291901727

`filter[A039505(n+1), A340371(#)]`
-/

namespace A080830.P6418776920291901727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A080830.P6418776920291901727

/-! ## A080830.P11068156837007611792

`filter[A039505(n+1), A353670(#)]`
-/

namespace A080830.P11068156837007611792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A080830.P11068156837007611792

/-! ## A080830.P7311579763993154427

`filter[A039505(n+1), A365716(#)]`
-/

namespace A080830.P7311579763993154427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A080830.P7311579763993154427

/-! ## A080830.P13064671009082246777

`filter[A039505(n+1), A379969(#)]`
-/

namespace A080830.P13064671009082246777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A080830.P13064671009082246777

/-! ## A080830.P2572160467401133110

`filter[A039505(n+1), A380467(#)]`
-/

namespace A080830.P2572160467401133110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A080830.P2572160467401133110

/-! ## A080830.P1332553727276863284

`record[A006530(or(1, A039505(n+1)))]`
-/

namespace A080830.P1332553727276863284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A039505 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080830.P1332553727276863284

/-! ## A080830.P17539657679101238768

`record[A020639(or(1, A039505(n+1)))]`
-/

namespace A080830.P17539657679101238768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A039505 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080830.P17539657679101238768

/-! ## A080830.P13633971971205880584

`∩[A000040(n+1), A039505(n+1)]`
-/

namespace A080830.P13633971971205880584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P13633971971205880584

/-! ## A080830.P3904521830889931002

`∩[A001751(n+1), A039505(n+1)]`
-/

namespace A080830.P3904521830889931002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P3904521830889931002

/-! ## A080830.P8704836574870087611

`∩[A004139(n+1), A039505(n+1)]`
-/

namespace A080830.P8704836574870087611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P8704836574870087611

/-! ## A080830.P2185026563463270939

`∩[A006005(n+1), A039505(n+1)]`
-/

namespace A080830.P2185026563463270939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P2185026563463270939

/-! ## A080830.P1912343365732223708

`∩[A008578(n+1), A039505(n+1)]`
-/

namespace A080830.P1912343365732223708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P1912343365732223708

/-! ## A080830.P237607152792844454

`∩[A033946(n+1), A039505(n+1)]`
-/

namespace A080830.P237607152792844454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P237607152792844454

/-! ## A080830.P2554600599154465722

`∩[A039505(n+1), A045319(n+1)]`
-/

namespace A080830.P2554600599154465722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P2554600599154465722

/-! ## A080830.P1202835838031997629

`∩[A039505(n+1), A045344(n+1)]`
-/

namespace A080830.P1202835838031997629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P1202835838031997629

/-! ## A080830.P1173069548491831048

`∩[A039505(n+1), A046022(n+1)]`
-/

namespace A080830.P1173069548491831048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080830.P1173069548491831048

/-!
# A080831: Expansion of e.g.f. exp(tan(exp(x)-1)).

The programs for A080831, there is no canonical definition to state claims against.
-/

/-! ## A080831.P7060246699033491330

`A326178(A037143(n!))`
-/

namespace A080831.P7060246699033491330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A037143 (Nat.factorial n)).toNat

end

end A080831.P7060246699033491330

/-! ## A080831.P1324490059872276386

`A201690(n+1)+A000389(A049988(n))`
-/

namespace A080831.P1324490059872276386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201690 (n + 1) + A000389 (A049988 n).toNat

end

end A080831.P1324490059872276386

/-! ## A080831.P13971477413373943096

`A201690(n+1)+A074088(A005041(n))`
-/

namespace A080831.P13971477413373943096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201690 (n + 1) + A074088 (A005041 n).toNat

end

end A080831.P13971477413373943096

/-!
# A080832: Expansion of e.g.f. exp(x) * (sec(exp(x) - 1))^2.

The programs for A080832, there is no canonical definition to state claims against.
-/

/-! ## A080832.P3288656370201777384

`A317022(n+1)-A139134(n+1)`
-/

namespace A080832.P3288656370201777384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317022 (n + 1) - A139134 (n + 1)

end

end A080832.P3288656370201777384

/-! ## A080832.P15296911718358457228

`xor(A194019(n), A237451(A113731(n+1)))`
-/

namespace A080832.P15296911718358457228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A194019 n) (A237451 (A113731 (n + 1)).toNat)

end

end A080832.P15296911718358457228

/-!
# A080833: E.g.f.: exp( x/(1 - x - x^2) ).

The programs for A080833, there is no canonical definition to state claims against.
-/

/-! ## A080833.P4890008934121876777

`A019554(A293527(n))`
-/

namespace A080833.P4890008934121876777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A293527 n).toNat

end

end A080833.P4890008934121876777

/-! ## A080833.P12702809773305586368

`A014681(A293527(n)+1)`
-/

namespace A080833.P12702809773305586368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A293527 n + 1).toNat

end

end A080833.P12702809773305586368

/-!
# A080835: E.g.f.: exp( x/( 1 - x - x^2 - x^3 ) ).

The programs for A080835, there is no canonical definition to state claims against.
-/

/-! ## A080835.P5901024008796324177

`A165998(A293021(n)-n!)`
-/

namespace A080835.P5901024008796324177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (A293021 n - (Nat.factorial n : ℤ)).toNat

end

end A080835.P5901024008796324177

/-! ## A080835.P7126926775832425266

`A103889(A082579(n))-A000262(n)`
-/

namespace A080835.P7126926775832425266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A082579 n).toNat - A000262 n

end

end A080835.P7126926775832425266

/-!
# A080837: Jouka numbers: either the number is divisible by 7 or 11 or has a 7 in its decimal representation.

The programs for A080837, there is no canonical definition to state claims against.
-/

/-! ## A080837.P17343480855187448731

`A196245(A212449(n+1)+A016116(n))`
-/

namespace A080837.P17343480855187448731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196245 (A212449 (n + 1) + A016116 n).toNat

end

end A080837.P17343480855187448731

/-! ## A080837.P16869379216227424519

`A347878(2*n+5)-A351014(A006265(n+3))`
-/

namespace A080837.P16869379216227424519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347878 (2 * n + 5) - A351014 (A006265 (n + 3)).toNat

end

end A080837.P16869379216227424519

/-! ## A080837.P17100415986616177516

`eq[(n-∑{digits}[n, #])/9, A140086(n+2)]`
-/

namespace A080837.P17100415986616177516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A080837.P17100415986616177516

/-! ## A080837.P8462138052636495408

`eq[A059995(n), A140086(n+2)]`
-/

namespace A080837.P8462138052636495408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140086 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080837.P8462138052636495408

/-!
# A080838: Orchard crossing number of complete bipartite graph K_{1,n}.

The programs for A080838, the canonical program `A080838.P2744391514346187096` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080838 has offset 1).

The definition of A080838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080838.P2744391514346187096

`(n+1)/16*(2*(n+1)²-8*(n+1)+7+(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080838

/-- `(n+1)/16*(2*(n+1)²-8*(n+1)+7+(-1)^(n+1))` -/
def P2744391514346187096.Spec : Prop :=
  ∀ n, P2744391514346187096.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P1052670808821540409

`∑[∑[gcd(n, ∑[n])]-n]`
-/

namespace A080838.P1052670808821540409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080838.P1052670808821540409

namespace A080838

/-- `∑[∑[gcd(n, ∑[n])]-n]` -/
def P1052670808821540409.Spec : Prop :=
  ∀ n, P1052670808821540409.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P7186075840192784234

`∑[∑[lcm(2, n)/2]-n]`
-/

namespace A080838.P7186075840192784234
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080838.P7186075840192784234

namespace A080838

/-- `∑[∑[lcm(2, n)/2]-n]` -/
def P7186075840192784234.Spec : Prop :=
  ∀ n, P7186075840192784234.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P3676864037051351449

`∑[∑[n/(2-and(1, n))]-n]`
-/

namespace A080838.P3676864037051351449
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080838.P3676864037051351449

namespace A080838

/-- `∑[∑[n/(2-and(1, n))]-n]` -/
def P3676864037051351449.Spec : Prop :=
  ∀ n, P3676864037051351449.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P4217571892848918357

`∑[∑[-n/or(n, -2)]-n]`
-/

namespace A080838.P4217571892848918357
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080838.P4217571892848918357

namespace A080838

/-- `∑[∑[-n/or(n, -2)]-n]` -/
def P4217571892848918357.Spec : Prop :=
  ∀ n, P4217571892848918357.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P1257207881846710315

`∑[a(n-2)+3]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A080838.P1257207881846710315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A080838.P1257207881846710315

namespace A080838

/-- `∑[a(n-2)+3]+a(n-2)` -/
def P1257207881846710315.Spec : Prop :=
  ∀ n, (P1257207881846710315.a n : ℤ) = A080838 (n + 1)

end A080838

/-! ## A080838.P17741460680137763816

`A361276(n)-1`
-/

namespace A080838.P17741460680137763816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361276 n - 1

end

end A080838.P17741460680137763816

namespace A080838

/-- `A361276(n)-1` -/
def P17741460680137763816.Spec : Prop :=
  ∀ n, P17741460680137763816.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P3111848407579368927

`A109900(n)-∑[n]`
-/

namespace A080838.P3111848407579368927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080838.P3111848407579368927

namespace A080838

/-- `A109900(n)-∑[n]` -/
def P3111848407579368927.Spec : Prop :=
  ∀ n, P3111848407579368927.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P5635696217490593861

`∑[A001318(n)]-∑[n]`
-/

namespace A080838.P5635696217490593861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A080838.P5635696217490593861

namespace A080838

/-- `∑[A001318(n)]-∑[n]` -/
def P5635696217490593861.Spec : Prop :=
  ∀ n, P5635696217490593861.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P16788290867308526873

`∑[A131355(n)]-(n+1)`
-/

namespace A080838.P16788290867308526873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A080838.P16788290867308526873

namespace A080838

/-- `∑[A131355(n)]-(n+1)` -/
def P16788290867308526873.Spec : Prop :=
  ∀ n, P16788290867308526873.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P1095668319148062923

`∑[n²]-∑[A085787(n)]`
-/

namespace A080838.P1095668319148062923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A080838.P1095668319148062923

namespace A080838

/-- `∑[n²]-∑[A085787(n)]` -/
def P1095668319148062923.Spec : Prop :=
  ∀ n, P1095668319148062923.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P5800391341788608335

`A172517(n+1)/(4*(n+1))`
-/

namespace A080838.P5800391341788608335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172517 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A080838.P5800391341788608335

namespace A080838

/-- `A172517(n+1)/(4*(n+1))` -/
def P5800391341788608335.Spec : Prop :=
  ∀ n, P5800391341788608335.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P13303230002117948511

`∑[A211539(n)]-A211539(n)`
-/

namespace A080838.P13303230002117948511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211539 n

end

end A080838.P13303230002117948511

namespace A080838

/-- `∑[A211539(n)]-A211539(n)` -/
def P13303230002117948511.Spec : Prop :=
  ∀ n, P13303230002117948511.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P10475527183033062762

`A111384(n+1)-A002620(n)`
-/

namespace A080838.P10475527183033062762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (n + 1) - A002620 n

end

end A080838.P10475527183033062762

namespace A080838

/-- `A111384(n+1)-A002620(n)` -/
def P10475527183033062762.Spec : Prop :=
  ∀ n, P10475527183033062762.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P13165743949330305645

`A167875(n)-A088003(n+1)`
-/

namespace A080838.P13165743949330305645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 n - A088003 (n + 1)

end

end A080838.P13165743949330305645

namespace A080838

/-- `A167875(n)-A088003(n+1)` -/
def P13165743949330305645.Spec : Prop :=
  ∀ n, P13165743949330305645.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P9828955492337810673

`A294172(n+1)-A008778(n)`
-/

namespace A080838.P9828955492337810673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294172 (n + 1) - A008778 n

end

end A080838.P9828955492337810673

namespace A080838

/-- `A294172(n+1)-A008778(n)` -/
def P9828955492337810673.Spec : Prop :=
  ∀ n, P9828955492337810673.a n = A080838 (n + 1)

end A080838

/-! ## A080838.P985144756299459595

`(A212964(n)+A006584(n))/2`
-/

namespace A080838.P985144756299459595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212964 n + A006584 n : ℚ) / 2

end

end A080838.P985144756299459595

namespace A080838

/-- `(A212964(n)+A006584(n))/2` -/
def P985144756299459595.Spec : Prop :=
  ∀ n, P985144756299459595.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P4878436113924940683

`A006584(n)+A280186(n)/2`
-/

namespace A080838.P4878436113924940683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006584 n : ℚ) + (A280186 n : ℚ) / 2

end

end A080838.P4878436113924940683

namespace A080838

/-- `A006584(n)+A280186(n)/2` -/
def P4878436113924940683.Spec : Prop :=
  ∀ n, P4878436113924940683.a n = (A080838 (n + 1) : ℚ)

end A080838

/-! ## A080838.P9964908518347741525

`A212964(n)-A280186(n)/2`
-/

namespace A080838.P9964908518347741525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212964 n : ℚ) - (A280186 n : ℚ) / 2

end

end A080838.P9964908518347741525

namespace A080838

/-- `A212964(n)-A280186(n)/2` -/
def P9964908518347741525.Spec : Prop :=
  ∀ n, P9964908518347741525.a n = (A080838 (n + 1) : ℚ)

end A080838

/-!
# A080839: Number of positive increasing integer sequences of length n with Gilbreath transform (that is, the diagonal of leading successive absolute differences) given by {1,1,1,1,1,...}.

The programs for A080839, there is no canonical definition to state claims against.
-/

/-! ## A080839.P15657852101090018439

`A130571(A000930(∑[n]-n))`
-/

namespace A080839.P15657852101090018439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130571 (A000930 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat

end

end A080839.P15657852101090018439

/-! ## A080839.P9316327321045743338

`floor(∏[sqrt(A274168(3*n))])`
-/

namespace A080839.P9316327321045743338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A274168 (3 * n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A080839.P9316327321045743338

/-! ## A080839.P9228858680976852824

`A127757(∏[a(n-1)+2]+2)` with `a(0)=-1, a(1)=-1`
-/

namespace A080839.P9228858680976852824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (∏ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A080839.P9228858680976852824

/-!
# A080840: Number of cousin primes < 10^n, such that only the upper member of each prime cousin pair is counted.

The programs for A080840, there is no canonical definition to state claims against.
-/

/-! ## A080840.P16992373182954362987

`A093737(n+1)+1`
-/

namespace A080840.P16992373182954362987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093737 (n + 1) + 1

end

end A080840.P16992373182954362987

/-! ## A080840.P4961298629218475176

`A152052(n+1)-A010054(A091588(n))`
-/

namespace A080840.P4961298629218475176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152052 (n + 1) - A010054 (A091588 n).toNat

end

end A080840.P4961298629218475176

/-! ## A080840.P8839403541870060851

`A152052(n+1)-A098108(A001147(n))`
-/

namespace A080840.P8839403541870060851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152052 (n + 1) - A098108 (A001147 n).toNat

end

end A080840.P8839403541870060851

/-!
# A080841: Number of pairs (p,q) of (not necessarily consecutive) primes with q-p = 6 and q < 10^n.

The programs for A080841, there is no canonical definition to state claims against.
-/

/-! ## A080841.P7026411894918175640

`A093738(n+1)+A055737(n+1)`
-/

namespace A080841.P7026411894918175640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093738 (n + 1) + A055737 (n + 1)

end

end A080841.P7026411894918175640

/-!
# A080843: Tribonacci word: limit S(infinity), where S(0) = 0, S(1) = 0,1, S(2) = 0,1,0,2 and for n >= 0, S(n+3) = S(n+2) S(n+1) S(n).

The programs for A080843, the canonical program `A080843.P14729485223719297457` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080843 has offset 0).

The definition of A080843 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092782, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080843.P14729485223719297457

`A092782(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080843

/-- `A092782(n+1)-1` -/
def P14729485223719297457.Spec : Prop :=
  ∀ n, P14729485223719297457.a n = A080843 n

theorem P14729485223719297457.correct : P14729485223719297457.Spec := by
  intro n
  simp only [A080843]

end A080843

/-! ## A080843.P3598274813930305065

`1-A317198(n)`
-/

namespace A080843.P3598274813930305065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317198 n

end

end A080843.P3598274813930305065

namespace A080843

/-- `1-A317198(n)` -/
def P3598274813930305065.Spec : Prop :=
  ∀ n, P3598274813930305065.a n = A080843 n

end A080843

/-! ## A080843.P16980860186226940696

`A356898(n)%3`
-/

namespace A080843.P16980860186226940696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356898 n) 3

end

end A080843.P16980860186226940696

namespace A080843

/-- `A356898(n)%3` -/
def P16980860186226940696.Spec : Prop :=
  ∀ n, P16980860186226940696.a n = A080843 n

end A080843

/-! ## A080843.P8901480493583340507

`4-Δ[A278040(n)]`
-/

namespace A080843.P8901480493583340507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A080843.P8901480493583340507

namespace A080843

/-- `4-Δ[A278040(n)]` -/
def P8901480493583340507.Spec : Prop :=
  ∀ n, P8901480493583340507.a n = A080843 n

end A080843

/-! ## A080843.P14125989973808285464

`val(Δ[A278041(n)], 2)`
-/

namespace A080843.P14125989973808285464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A080843.P14125989973808285464

namespace A080843

/-- `val(Δ[A278041(n)], 2)` -/
def P14125989973808285464.Spec : Prop :=
  ∀ n, (P14125989973808285464.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P220750602448426929

`4-A276789(n+1)`
-/

namespace A080843.P220750602448426929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A276789 (n + 1)

end

end A080843.P220750602448426929

namespace A080843

/-- `4-A276789(n+1)` -/
def P220750602448426929.Spec : Prop :=
  ∀ n, P220750602448426929.a n = A080843 n

end A080843

/-! ## A080843.P16931054594424589578

`5-A305394(n+1)`
-/

namespace A080843.P16931054594424589578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A305394 (n + 1)

end

end A080843.P16931054594424589578

namespace A080843

/-- `5-A305394(n+1)` -/
def P16931054594424589578.Spec : Prop :=
  ∀ n, P16931054594424589578.a n = A080843 n

end A080843

/-! ## A080843.P11544694197245228882

`A278045(n+1)%3`
-/

namespace A080843.P11544694197245228882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278045 (n + 1)) 3

end

end A080843.P11544694197245228882

namespace A080843

/-- `A278045(n+1)%3` -/
def P11544694197245228882.Spec : Prop :=
  ∀ n, P11544694197245228882.a n = A080843 n

end A080843

/-! ## A080843.P14130165274991565667

`val(A276792(n+1), 2)`
-/

namespace A080843.P14130165274991565667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276792 (n + 1)).toNat 2

end

end A080843.P14130165274991565667

namespace A080843

/-- `val(A276792(n+1), 2)` -/
def P14130165274991565667.Spec : Prop :=
  ∀ n, (P14130165274991565667.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P2986687402930049367

`val(A278038(n)+1, 2)`
-/

namespace A080843.P2986687402930049367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278038 n + 1).toNat 2

end

end A080843.P2986687402930049367

namespace A080843

/-- `val(A278038(n)+1, 2)` -/
def P2986687402930049367.Spec : Prop :=
  ∀ n, (P2986687402930049367.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P12009547446103555312

`val(A352103(n+1), 2)`
-/

namespace A080843.P12009547446103555312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A352103 (n + 1)).toNat 2

end

end A080843.P12009547446103555312

namespace A080843

/-- `val(A352103(n+1), 2)` -/
def P12009547446103555312.Spec : Prop :=
  ∀ n, (P12009547446103555312.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P3231929409059935814

`4-Δ[A003145(n+1)]`
-/

namespace A080843.P3231929409059935814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A080843.P3231929409059935814

namespace A080843

/-- `4-Δ[A003145(n+1)]` -/
def P3231929409059935814.Spec : Prop :=
  ∀ n, P3231929409059935814.a n = A080843 n

end A080843

/-! ## A080843.P12255436358553059292

`5-Δ[A140103(n+1)]`
-/

namespace A080843.P12255436358553059292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A080843.P12255436358553059292

namespace A080843

/-- `5-Δ[A140103(n+1)]` -/
def P12255436358553059292.Spec : Prop :=
  ∀ n, P12255436358553059292.a n = A080843 n

end A080843

/-! ## A080843.P18359984088412573324

`val(Δ[A003146(n+1)], 2)`
-/

namespace A080843.P18359984088412573324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A080843.P18359984088412573324

namespace A080843

/-- `val(Δ[A003146(n+1)], 2)` -/
def P18359984088412573324.Spec : Prop :=
  ∀ n, (P18359984088412573324.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P11750550749783678984

`(A317193(n+1)+2)%3`
-/

namespace A080843.P11750550749783678984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317193 (n + 1) + 2) 3

end

end A080843.P11750550749783678984

namespace A080843

/-- `(A317193(n+1)+2)%3` -/
def P11750550749783678984.Spec : Prop :=
  ∀ n, P11750550749783678984.a n = A080843 n

end A080843

/-! ## A080843.P7517167779901129822

`val(A003726(n+1)+1, 2)`
-/

namespace A080843.P7517167779901129822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003726 (n + 1) + 1).toNat 2

end

end A080843.P7517167779901129822

namespace A080843

/-- `val(A003726(n+1)+1, 2)` -/
def P7517167779901129822.Spec : Prop :=
  ∀ n, (P7517167779901129822.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P18117626904812131583

`val(A319431(n+1)-1, 2)`
-/

namespace A080843.P18117626904812131583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319431 (n + 1) - 1).toNat 2

end

end A080843.P18117626904812131583

namespace A080843

/-- `val(A319431(n+1)-1, 2)` -/
def P18117626904812131583.Spec : Prop :=
  ∀ n, (P18117626904812131583.a n : ℤ) = A080843 n

end A080843

/-! ## A080843.P14755492419247883425

`floor(log2(round(8/A275925(n+2)))²)`
-/

namespace A080843.P14755492419247883425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.roundAway (8 / (A275925 (n + 2) : ℚ)) : ℝ) ^ 2⌋

end

end A080843.P14755492419247883425

namespace A080843

/-- `floor(log2(round(8/A275925(n+2)))²)` -/
def P14755492419247883425.Spec : Prop :=
  ∀ n, P14755492419247883425.a n = A080843 n

end A080843

/-!
# A080844: G.f. is F^2, where F is g.f. for Fibonacci word (A003849).

The programs for A080844, there is no canonical definition to state claims against.
-/

/-! ## A080844.P235429371370955345

`A019446(A019446(n+1))-A295540(n+2)`
-/

namespace A080844.P235429371370955345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A019446 (n + 1)).toNat - A295540 (n + 2)

end

end A080844.P235429371370955345

/-! ## A080844.P17055464796151630697

`(A113533(n+1)-∑[A003842(n)])/2`
-/

namespace A080844.P17055464796151630697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113533 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A080844.P17055464796151630697

/-! ## A080844.P7797048368408640601

`A014682(A113533(n+1)-∑[A003842(n)])`
-/

namespace A080844.P7797048368408640601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A113533 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080844.P7797048368408640601

/-! ## A080844.P6804041647025921110

`(A113533(A008619(2*n))-∑[A003842(n)])*1/2`
-/

namespace A080844.P6804041647025921110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A113533 (A008619 (2 * n)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * ((1 : ℚ) / 2)

end

end A080844.P6804041647025921110

/-! ## A080844.P13062846541726946510

`∑[A003849(n)]-A259598(n+2)`
-/

namespace A080844.P13062846541726946510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259598 (n + 2)

end

end A080844.P13062846541726946510

/-! ## A080844.P8726858025476423881

`∑[A003842(n)-1]-A259598(n+2)`
-/

namespace A080844.P8726858025476423881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A259598 (n + 2)

end

end A080844.P8726858025476423881

/-! ## A080844.P18038654490961484514

`A005206(A005206(n))-A259598(n+2)`
-/

namespace A080844.P18038654490961484514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 n).toNat - A259598 (n + 2)

end

end A080844.P18038654490961484514

/-!
# A080845: G.f. is 1/F, where x*F is g.f. for Fibonacci word (A003849).

The programs for A080845, there is no canonical definition to state claims against.
-/

/-! ## A080845.P1319361711279385716

`(-1)^n*A000045(A052920(n)^A128059(n))`
-/

namespace A080845.P1319361711279385716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A128059 n : ℤ))).toNat

end

end A080845.P1319361711279385716

/-! ## A080845.P14306272219296553385

`(-1)^n*A005206(A052920(n)^A128059(n))`
-/

namespace A080845.P14306272219296553385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A005206 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A128059 n : ℤ))).toNat

end

end A080845.P14306272219296553385

/-! ## A080845.P4926071441876996195

`A000045(A052920(n)^A128059(n))*A033999(n)`
-/

namespace A080845.P4926071441876996195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A128059 n : ℤ))).toNat * A033999 n

end

end A080845.P4926071441876996195

/-! ## A080845.P7701525647830750693

`A000045(A052920(n)^A128059(n))*A062157(n+1)`
-/

namespace A080845.P7701525647830750693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A128059 n : ℤ))).toNat * A062157 (n + 1)

end

end A080845.P7701525647830750693

/-! ## A080845.P8345440326747565867

`A000045(A052920(n)^A128059(n))/A033999(n+2)`
-/

namespace A080845.P8345440326747565867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A128059 n : ℤ))).toNat : ℚ) / (A033999 (n + 2) : ℚ)

end

end A080845.P8345440326747565867

/-!
# A080846: Fixed point of the morphism 0->010, 1->011, starting from a(1) = 0.

The programs for A080846, the canonical program `A080846.P6350490556575780844` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080846 has offset 1).

The definition of A080846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080846.P13386906444663615364

`((n+1)/3^val(n+1, 3))%3-1`
-/

namespace A080846.P13386906444663615364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3 - 1

end

end A080846.P13386906444663615364

namespace A080846

/-- `((n+1)/3^val(n+1, 3))%3-1` -/
def P13386906444663615364.Spec : Prop :=
  ∀ n, P13386906444663615364.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P6350490556575780844

`(A062756(n)-A062756(n+1)+1)/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080846

/-- `(A062756(n)-A062756(n+1)+1)/2` -/
def P6350490556575780844.Spec : Prop :=
  ∀ n, P6350490556575780844.a n = (A080846 (n + 1) : ℚ)

end A080846

/-! ## A080846.P3744483530662407670

`Δ[a(floor(n/3))+round(n/3)]` with `a(0)=0`
-/

namespace A080846.P3744483530662407670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + SequenceMachineLib.roundAway ((n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080846.P3744483530662407670

namespace A080846

/-- `Δ[a(floor(n/3))+round(n/3)]` -/
def P3744483530662407670.Spec : Prop :=
  ∀ n, P3744483530662407670.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P7758269860870471445

`log2(((n+1)/3^val(n+1, 3))%3)`
-/

namespace A080846.P7758269860870471445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3 : ℝ)

end

end A080846.P7758269860870471445

namespace A080846

/-- `log2(((n+1)/3^val(n+1, 3))%3)` -/
def P7758269860870471445.Spec : Prop :=
  ∀ n, P7758269860870471445.a n = (A080846 (n + 1) : ℝ)

end A080846

/-! ## A080846.P8689964163491260018

`abs(Δ[A136690(n)])`
-/

namespace A080846.P8689964163491260018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A080846.P8689964163491260018

namespace A080846

/-- `abs(Δ[A136690(n)])` -/
def P8689964163491260018.Spec : Prop :=
  ∀ n, P8689964163491260018.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P11954891879996820443

`log2(A060236(n+1))`
-/

namespace A080846.P11954891879996820443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060236 (n + 1) : ℝ)

end

end A080846.P11954891879996820443

namespace A080846

/-- `log2(A060236(n+1))` -/
def P11954891879996820443.Spec : Prop :=
  ∀ n, P11954891879996820443.a n = (A080846 (n + 1) : ℝ)

end A080846

/-! ## A080846.P2390842368573469833

`1-A137893(n+1)`
-/

namespace A080846.P2390842368573469833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137893 (n + 1)

end

end A080846.P2390842368573469833

namespace A080846

/-- `1-A137893(n+1)` -/
def P2390842368573469833.Spec : Prop :=
  ∀ n, P2390842368573469833.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P6310080451817060411

`A319444(n+1)%2`
-/

namespace A080846.P6310080451817060411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319444 (n + 1)) 2

end

end A080846.P6310080451817060411

namespace A080846

/-- `A319444(n+1)%2` -/
def P6310080451817060411.Spec : Prop :=
  ∀ n, P6310080451817060411.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P16317906347825629628

`A373592(n+1)%2`
-/

namespace A080846.P16317906347825629628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373592 (n + 1)) 2

end

end A080846.P16317906347825629628

namespace A080846

/-- `A373592(n+1)%2` -/
def P16317906347825629628.Spec : Prop :=
  ∀ n, P16317906347825629628.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P10671790565523515331

`ceil(1/A109041(n+1))`
-/

namespace A080846.P10671790565523515331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A109041 (n + 1) : ℚ)⌉

end

end A080846.P10671790565523515331

namespace A080846

/-- `ceil(1/A109041(n+1))` -/
def P10671790565523515331.Spec : Prop :=
  ∀ n, P10671790565523515331.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P17947357494181388775

`(1-Δ[A062756(n)])/2`
-/

namespace A080846.P17947357494181388775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A080846.P17947357494181388775

namespace A080846

/-- `(1-Δ[A062756(n)])/2` -/
def P17947357494181388775.Spec : Prop :=
  ∀ n, P17947357494181388775.a n = (A080846 (n + 1) : ℚ)

end A080846

/-! ## A080846.P13809814883006951818

`char[A026179(n+2)-1]`
-/

namespace A080846.P13809814883006951818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080846.P13809814883006951818

namespace A080846

/-- `char[A026179(n+2)-1]` -/
def P13809814883006951818.Spec : Prop :=
  ∀ n, (P13809814883006951818.a n : ℤ) = A080846 (n + 1)

end A080846

/-! ## A080846.P13085267290048728686

`char[A026232(n+1)-2]`
-/

namespace A080846.P13085267290048728686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080846.P13085267290048728686

namespace A080846

/-- `char[A026232(n+1)-2]` -/
def P13085267290048728686.Spec : Prop :=
  ∀ n, (P13085267290048728686.a n : ℤ) = A080846 (n + 1)

end A080846

/-! ## A080846.P10206760828070758487

`and(2, Δ[A117966(n)])/2`
-/

namespace A080846.P10206760828070758487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A080846.P10206760828070758487

namespace A080846

/-- `and(2, Δ[A117966(n)])/2` -/
def P10206760828070758487.Spec : Prop :=
  ∀ n, P10206760828070758487.a n = (A080846 (n + 1) : ℚ)

end A080846

/-! ## A080846.P297458816022076548

`char[lt[A327252(n+1), 0]]`
-/

namespace A080846.P297458816022076548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A080846.P297458816022076548

namespace A080846

/-- `char[lt[A327252(n+1), 0]]` -/
def P297458816022076548.Spec : Prop :=
  ∀ n, (P297458816022076548.a n : ℤ) = A080846 (n + 1)

end A080846

/-! ## A080846.P17106822299603870163

`char[lt[A327252(n), 1]-1]`
-/

namespace A080846.P17106822299603870163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080846.P17106822299603870163

namespace A080846

/-- `char[lt[A327252(n), 1]-1]` -/
def P17106822299603870163.Spec : Prop :=
  ∀ n, (P17106822299603870163.a n : ℤ) = A080846 (n + 1)

end A080846

/-! ## A080846.P2897226823474205330

`round(n/A026215(n+1))`
-/

namespace A080846.P2897226823474205330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A026215 (n + 1) : ℚ))

end

end A080846.P2897226823474205330

namespace A080846

/-- `round(n/A026215(n+1))` -/
def P2897226823474205330.Spec : Prop :=
  ∀ n, P2897226823474205330.a n = A080846 (n + 1)

end A080846

/-! ## A080846.P3924107999218170108

`(1-A343785(n+1))/2`
-/

namespace A080846.P3924107999218170108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A343785 (n + 1) : ℚ) / 2

end

end A080846.P3924107999218170108

namespace A080846

/-- `(1-A343785(n+1))/2` -/
def P3924107999218170108.Spec : Prop :=
  ∀ n, P3924107999218170108.a n = (A080846 (n + 1) : ℚ)

end A080846

/-! ## A080846.P9356539279402390501

`gcd(2, A140316(n+1))-1`
-/

namespace A080846.P9356539279402390501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A140316 (n + 1)) : ℤ) - 1

end

end A080846.P9356539279402390501

namespace A080846

/-- `gcd(2, A140316(n+1))-1` -/
def P9356539279402390501.Spec : Prop :=
  ∀ n, P9356539279402390501.a n = A080846 (n + 1)

end A080846

/-!
# A080847: a(n) = mu(n)+2, where mu is the Moebius function (A008683).

The programs for A080847, the canonical program `A080847.P15039464906544920582` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080847 has offset 1).

The definition of A080847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080847.P15039464906544920582

`round(∏{p}[n+1, -#]/Δ[n²])+2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080847

/-- `round(∏{p}[n+1, -#]/Δ[n²])+2` -/
def P15039464906544920582.Spec : Prop :=
  ∀ n, P15039464906544920582.a n = A080847 (n + 1)

theorem P15039464906544920582.correct : P15039464906544920582.Spec := by
  intro n
  simp only [A080847, Nat.add_sub_cancel]

end A080847

/-! ## A080847.P2333780344215245813

`round(acot(∏{e}[n+1, -#])+n+1)+1-n`
-/

namespace A080847.P2333780344215245813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ)) + (1 - (n : ℤ))

end

end A080847.P2333780344215245813

namespace A080847

/-- `round(acot(∏{e}[n+1, -#])+n+1)+1-n` -/
def P2333780344215245813.Spec : Prop :=
  ∀ n, P2333780344215245813.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P1450610311466442103

`A007423(n+1)+1`
-/

namespace A080847.P1450610311466442103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + 1

end

end A080847.P1450610311466442103

namespace A080847

/-- `A007423(n+1)+1` -/
def P1450610311466442103.Spec : Prop :=
  ∀ n, P1450610311466442103.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P17042895332239696920

`A008683(n+1)+2`
-/

namespace A080847.P17042895332239696920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 2

end

end A080847.P17042895332239696920

namespace A080847

/-- `A008683(n+1)+2` -/
def P17042895332239696920.Spec : Prop :=
  ∀ n, P17042895332239696920.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P4245717260755005427

`A231821(n+1)-1`
-/

namespace A080847.P4245717260755005427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) - 1

end

end A080847.P4245717260755005427

namespace A080847

/-- `A231821(n+1)-1` -/
def P4245717260755005427.Spec : Prop :=
  ∀ n, P4245717260755005427.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P7066986035925146362

`4-A129979(n+1)`
-/

namespace A080847.P7066986035925146362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A129979 (n + 1)

end

end A080847.P7066986035925146362

namespace A080847

/-- `4-A129979(n+1)` -/
def P7066986035925146362.Spec : Prop :=
  ∀ n, P7066986035925146362.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P14740401048192201076

`floor(sqrt(A228409(n+1)))`
-/

namespace A080847.P14740401048192201076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A228409 (n + 1))

end

end A080847.P14740401048192201076

namespace A080847

/-- `floor(sqrt(A228409(n+1)))` -/
def P14740401048192201076.Spec : Prop :=
  ∀ n, P14740401048192201076.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P12117211639286058451

`abs(A076544(n+1))+1`
-/

namespace A080847.P12117211639286058451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076544 (n + 1)| + 1

end

end A080847.P12117211639286058451

namespace A080847

/-- `abs(A076544(n+1))+1` -/
def P12117211639286058451.Spec : Prop :=
  ∀ n, P12117211639286058451.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P5728166275263242171

`(A133695(n+1)+5)/2`
-/

namespace A080847.P5728166275263242171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133695 (n + 1) + 5 : ℚ) / 2

end

end A080847.P5728166275263242171

namespace A080847

/-- `(A133695(n+1)+5)/2` -/
def P5728166275263242171.Spec : Prop :=
  ∀ n, P5728166275263242171.a n = (A080847 (n + 1) : ℚ)

end A080847

/-! ## A080847.P4257294953801191138

`A162512(n+1)%2+2`
-/

namespace A080847.P4257294953801191138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 + 2

end

end A080847.P4257294953801191138

namespace A080847

/-- `A162512(n+1)%2+2` -/
def P4257294953801191138.Spec : Prop :=
  ∀ n, P4257294953801191138.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P14507875767349621907

`A076369(n+1)+1-n`
-/

namespace A080847.P14507875767349621907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) + (1 - (n : ℤ))

end

end A080847.P14507875767349621907

namespace A080847

/-- `A076369(n+1)+1-n` -/
def P14507875767349621907.Spec : Prop :=
  ∀ n, P14507875767349621907.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P14810596672623557273

`A080848(n+1)/(n+1)`
-/

namespace A080847.P14810596672623557273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080848 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A080847.P14810596672623557273

namespace A080847

/-- `A080848(n+1)/(n+1)` -/
def P14810596672623557273.Spec : Prop :=
  ∀ n, P14810596672623557273.a n = (A080847 (n + 1) : ℚ)

end A080847

/-! ## A080847.P2867587855360136977

`A127440(n)+a(n-1)` with `a(0)=3`
-/

namespace A080847.P2867587855360136977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A127440 n + a (n - 1)

end

end A080847.P2867587855360136977

namespace A080847

/-- `A127440(n)+a(n-1)` -/
def P2867587855360136977.Spec : Prop :=
  ∀ n, P2867587855360136977.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P10668852228331555896

`floor(exp(A140664(n+1)))+1`
-/

namespace A080847.P10668852228331555896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A140664 (n + 1) : ℝ)⌋ + 1

end

end A080847.P10668852228331555896

namespace A080847

/-- `floor(exp(A140664(n+1)))+1` -/
def P10668852228331555896.Spec : Prop :=
  ∀ n, P10668852228331555896.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P9970068044571425459

`A080849(n+1)/(n+1)²`
-/

namespace A080847.P9970068044571425459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080849 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A080847.P9970068044571425459

namespace A080847

/-- `A080849(n+1)/(n+1)²` -/
def P9970068044571425459.Spec : Prop :=
  ∀ n, P9970068044571425459.a n = (A080847 (n + 1) : ℚ)

end A080847

/-! ## A080847.P6875851154004187732

`(A073184(n+1)+1)%3+1`
-/

namespace A080847.P6875851154004187732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073184 (n + 1) + 1) 3 + 1

end

end A080847.P6875851154004187732

namespace A080847

/-- `(A073184(n+1)+1)%3+1` -/
def P6875851154004187732.Spec : Prop :=
  ∀ n, P6875851154004187732.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P17555225986898518246

`A061669(n+1)/(n+1)+1`
-/

namespace A080847.P17555225986898518246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A080847.P17555225986898518246

namespace A080847

/-- `A061669(n+1)/(n+1)+1` -/
def P17555225986898518246.Spec : Prop :=
  ∀ n, P17555225986898518246.a n = (A080847 (n + 1) : ℚ)

end A080847

/-! ## A080847.P12819738152003252599

`A055615(n+1)/(n+1)+2`
-/

namespace A080847.P12819738152003252599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

end

end A080847.P12819738152003252599

namespace A080847

/-- `A055615(n+1)/(n+1)+2` -/
def P12819738152003252599.Spec : Prop :=
  ∀ n, P12819738152003252599.a n = (A080847 (n + 1) : ℚ)

end A080847

/-! ## A080847.P14751736265161218608

`2-Δ[a(n-1)-A008683(n)]` with `a(0)=0`
-/

namespace A080847.P14751736265161218608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A008683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A080847.P14751736265161218608

namespace A080847

/-- `2-Δ[a(n-1)-A008683(n)]` -/
def P14751736265161218608.Spec : Prop :=
  ∀ n, P14751736265161218608.a n = A080847 (n + 1)

end A080847

/-! ## A080847.P13545258621087982735

`and(3, A008683(2*n-(n-1))-2)`
-/

namespace A080847.P13545258621087982735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A008683 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - 2)

end

end A080847.P13545258621087982735

namespace A080847

/-- `and(3, A008683(2*n-(n-1))-2)` -/
def P13545258621087982735.Spec : Prop :=
  ∀ n, P13545258621087982735.a n = A080847 (n + 1)

end A080847

/-!
# A080848: a(n) = n*(mu(n)+2), where mu is the Moebius function (A008683).

The programs for A080848, the canonical program `A080848.P739722207543014438` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080848 has offset 1).

The definition of A080848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080848.P739722207543014438

`A061669(n+1)+1+n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080848

/-- `A061669(n+1)+1+n` -/
def P739722207543014438.Spec : Prop :=
  ∀ n, P739722207543014438.a n = A080848 (n + 1)

theorem P739722207543014438.correct : P739722207543014438.Spec := by
  intro n
  simp only [A080848, Nat.add_sub_cancel]

end A080848

/-! ## A080848.P13492995696508905078

`(n+1)*A080847(n+1)`
-/

namespace A080848.P13492995696508905078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080847 (n + 1)

end

end A080848.P13492995696508905078

namespace A080848

/-- `(n+1)*A080847(n+1)` -/
def P13492995696508905078.Spec : Prop :=
  ∀ n, P13492995696508905078.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P8399621187797586591

`A080849(n+1)/(n+1)`
-/

namespace A080848.P8399621187797586591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080849 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A080848.P8399621187797586591

namespace A080848

/-- `A080849(n+1)/(n+1)` -/
def P8399621187797586591.Spec : Prop :=
  ∀ n, P8399621187797586591.a n = (A080848 (n + 1) : ℚ)

end A080848

/-! ## A080848.P14651505541839538851

`(n+1)*(A007423(n+1)+1)`
-/

namespace A080848.P14651505541839538851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007423 (n + 1) + 1)

end

end A080848.P14651505541839538851

namespace A080848

/-- `(n+1)*(A007423(n+1)+1)` -/
def P14651505541839538851.Spec : Prop :=
  ∀ n, P14651505541839538851.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P7283304606114589538

`(n+1)*(A008683(n+1)+2)`
-/

namespace A080848.P7283304606114589538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008683 (n + 1) + 2)

end

end A080848.P7283304606114589538

namespace A080848

/-- `(n+1)*(A008683(n+1)+2)` -/
def P7283304606114589538.Spec : Prop :=
  ∀ n, P7283304606114589538.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P16187580376611254630

`A055615(n+1)+2*(n+1)`
-/

namespace A080848.P16187580376611254630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) + (2 * (n + 1) : ℤ)

end

end A080848.P16187580376611254630

namespace A080848

/-- `A055615(n+1)+2*(n+1)` -/
def P16187580376611254630.Spec : Prop :=
  ∀ n, P16187580376611254630.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P9311386382751514441

`(n+1)*(A231821(n+1)-1)`
-/

namespace A080848.P9311386382751514441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A231821 (n + 1) - 1)

end

end A080848.P9311386382751514441

namespace A080848

/-- `(n+1)*(A231821(n+1)-1)` -/
def P9311386382751514441.Spec : Prop :=
  ∀ n, P9311386382751514441.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P7647285123071832901

`(n+1)*(4-A129979(n+1))`
-/

namespace A080848.P7647285123071832901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (4 - A129979 (n + 1))

end

end A080848.P7647285123071832901

namespace A080848

/-- `(n+1)*(4-A129979(n+1))` -/
def P7647285123071832901.Spec : Prop :=
  ∀ n, P7647285123071832901.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P6504457730582928494

`(n+1)*(A162512(n+1)%2+2)`
-/

namespace A080848.P6504457730582928494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (Int.tmod (A162512 (n + 1)) 2 + 2)

end

end A080848.P6504457730582928494

namespace A080848

/-- `(n+1)*(A162512(n+1)%2+2)` -/
def P6504457730582928494.Spec : Prop :=
  ∀ n, P6504457730582928494.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P14203158105503053311

`(n+1)*(A076369(n+1)-(n-1))`
-/

namespace A080848.P14203158105503053311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A076369 (n + 1) - ((n : ℤ) - 1))

end

end A080848.P14203158105503053311

namespace A080848

/-- `(n+1)*(A076369(n+1)-(n-1))` -/
def P14203158105503053311.Spec : Prop :=
  ∀ n, P14203158105503053311.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P5206711449498648290

`(n+1)*A000045(round(∏{p}[n+1, -#]/Δ[n²])+3)`
-/

namespace A080848.P5206711449498648290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 3).toNat

end

end A080848.P5206711449498648290

namespace A080848

/-- `(n+1)*A000045(round(∏{p}[n+1, -#]/Δ[n²])+3)` -/
def P5206711449498648290.Spec : Prop :=
  ∀ n, P5206711449498648290.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P5025269854349518855

`(n+1)*A036584(A293227(n+1))`
-/

namespace A080848.P5025269854349518855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036584 (A293227 (n + 1)).toNat

end

end A080848.P5025269854349518855

namespace A080848

/-- `(n+1)*A036584(A293227(n+1))` -/
def P5025269854349518855.Spec : Prop :=
  ∀ n, P5025269854349518855.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P4992438696706801781

`(n+1)*A068073(A349912(n+1))`
-/

namespace A080848.P4992438696706801781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068073 (A349912 (n + 1)).toNat

end

end A080848.P4992438696706801781

namespace A080848

/-- `(n+1)*A068073(A349912(n+1))` -/
def P4992438696706801781.Spec : Prop :=
  ∀ n, P4992438696706801781.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P8390526732411707591

`(n+1)*A004572(A074823(n+1)+1)`
-/

namespace A080848.P8390526732411707591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004572 (A074823 (n + 1) + 1).toNat

end

end A080848.P8390526732411707591

namespace A080848

/-- `(n+1)*A004572(A074823(n+1)+1)` -/
def P8390526732411707591.Spec : Prop :=
  ∀ n, P8390526732411707591.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P5788385292606313130

`A000096(n+1)+A055615(n+1)-A000217(n)`
-/

namespace A080848.P5788385292606313130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (A055615 (n + 1) - A000217 n)

end

end A080848.P5788385292606313130

namespace A080848

/-- `A000096(n+1)+A055615(n+1)-A000217(n)` -/
def P5788385292606313130.Spec : Prop :=
  ∀ n, P5788385292606313130.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P3395902458232331999

`A002378(n+1)+A055615(n+1)-A002378(n)`
-/

namespace A080848.P3395902458232331999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + (A055615 (n + 1) - A002378 n)

end

end A080848.P3395902458232331999

namespace A080848

/-- `A002378(n+1)+A055615(n+1)-A002378(n)` -/
def P3395902458232331999.Spec : Prop :=
  ∀ n, P3395902458232331999.a n = A080848 (n + 1)

end A080848

/-! ## A080848.P224097615757115530

`abs((A181434(n+1)/2+1)*2*(n+1))`
-/

namespace A080848.P224097615757115530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((A181434 (n + 1) : ℚ) / 2 + 1) * (2 * (n + 1) : ℚ)|

end

end A080848.P224097615757115530

namespace A080848

/-- `abs((A181434(n+1)/2+1)*2*(n+1))` -/
def P224097615757115530.Spec : Prop :=
  ∀ n, P224097615757115530.a n = (A080848 (n + 1) : ℚ)

end A080848

/-! ## A080848.P16394902141755257644

`A349126(A003961(n+1))+n+1`
-/

namespace A080848.P16394902141755257644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349126 (A003961 (n + 1)).toNat + (n + 1 : ℤ)

end

end A080848.P16394902141755257644

namespace A080848

/-- `A349126(A003961(n+1))+n+1` -/
def P16394902141755257644.Spec : Prop :=
  ∀ n, P16394902141755257644.a n = A080848 (n + 1)

end A080848

/-!
# A080849: a(n) = (mu(n)+2)*n^2, where mu is the Moebius function (A008683).

The programs for A080849, the canonical program `A080849.P14518128900101485434` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080849 has offset 1).

The definition of A080849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080848, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080849.P14518128900101485434

`(n+1)*A080848(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080849

/-- `(n+1)*A080848(n+1)` -/
def P14518128900101485434.Spec : Prop :=
  ∀ n, P14518128900101485434.a n = A080849 (n + 1)

theorem P14518128900101485434.correct : P14518128900101485434.Spec := by
  intro n
  simp only [A080849, Nat.add_sub_cancel]

end A080849

/-! ## A080849.P5989520738049019981

`A000290(n+1)*A080847(n+1)`
-/

namespace A080849.P5989520738049019981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A080847 (n + 1)

end

end A080849.P5989520738049019981

namespace A080849

/-- `A000290(n+1)*A080847(n+1)` -/
def P5989520738049019981.Spec : Prop :=
  ∀ n, P5989520738049019981.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P15143342145512777686

`(n+1)²*(A008683(n+1)+2)`
-/

namespace A080849.P15143342145512777686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (A008683 (n + 1) + 2)

end

end A080849.P15143342145512777686

namespace A080849

/-- `(n+1)²*(A008683(n+1)+2)` -/
def P15143342145512777686.Spec : Prop :=
  ∀ n, P15143342145512777686.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P12487787044138413992

`(n+1)*(A061669(n+1)+n+1)`
-/

namespace A080849.P12487787044138413992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061669 (n + 1) + (n + 1 : ℤ))

end

end A080849.P12487787044138413992

namespace A080849

/-- `(n+1)*(A061669(n+1)+n+1)` -/
def P12487787044138413992.Spec : Prop :=
  ∀ n, P12487787044138413992.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P3402320938850045996

`(A162512(n+1)%2+2)*(n+1)²`
-/

namespace A080849.P3402320938850045996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A162512 (n + 1)) 2 + 2) * ((n + 1) ^ 2 : ℤ)

end

end A080849.P3402320938850045996

namespace A080849

/-- `(A162512(n+1)%2+2)*(n+1)²` -/
def P3402320938850045996.Spec : Prop :=
  ∀ n, P3402320938850045996.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P6200177745304849635

`(A076369(n+1)-n+1)*(n+1)²`
-/

namespace A080849.P6200177745304849635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076369 (n + 1) - (n : ℤ) + 1) * ((n + 1) ^ 2 : ℤ)

end

end A080849.P6200177745304849635

namespace A080849

/-- `(A076369(n+1)-n+1)*(n+1)²` -/
def P6200177745304849635.Spec : Prop :=
  ∀ n, P6200177745304849635.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P14070376765395528085

`(n+1)²+A334657(n+1)+(n+1)²`
-/

namespace A080849.P14070376765395528085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A334657 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A080849.P14070376765395528085

namespace A080849

/-- `(n+1)²+A334657(n+1)+(n+1)²` -/
def P14070376765395528085.Spec : Prop :=
  ∀ n, P14070376765395528085.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P2765006082455366537

`(n+1)²+(n+1)²*A007423(n+1)`
-/

namespace A080849.P2765006082455366537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) * A007423 (n + 1)

end

end A080849.P2765006082455366537

namespace A080849

/-- `(n+1)²+(n+1)²*A007423(n+1)` -/
def P2765006082455366537.Spec : Prop :=
  ∀ n, P2765006082455366537.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P16736695259212156623

`(n+1)²*A231821(n+1)-(n+1)²`
-/

namespace A080849.P16736695259212156623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A231821 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A080849.P16736695259212156623

namespace A080849

/-- `(n+1)²*A231821(n+1)-(n+1)²` -/
def P16736695259212156623.Spec : Prop :=
  ∀ n, P16736695259212156623.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P7637144840789566492

`A080848(n+1)²/A080847(n+1)`
-/

namespace A080849.P7637144840789566492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080848 (n + 1) ^ 2 : ℚ) / (A080847 (n + 1) : ℚ)

end

end A080849.P7637144840789566492

namespace A080849

/-- `A080848(n+1)²/A080847(n+1)` -/
def P7637144840789566492.Spec : Prop :=
  ∀ n, P7637144840789566492.a n = (A080849 (n + 1) : ℚ)

end A080849

/-! ## A080849.P11679838316311335546

`(A008683(n+1)+2)*∑[A005408(n)]`
-/

namespace A080849.P11679838316311335546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080849.P11679838316311335546

namespace A080849

/-- `(A008683(n+1)+2)*∑[A005408(n)]` -/
def P11679838316311335546.Spec : Prop :=
  ∀ n, P11679838316311335546.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P12349701284044593727

`(A008683(n+1)+2)*Δ[A000330(n)]`
-/

namespace A080849.P12349701284044593727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 2) * (f1 (n + 1) - f1 n)

end

end A080849.P12349701284044593727

namespace A080849

/-- `(A008683(n+1)+2)*Δ[A000330(n)]` -/
def P12349701284044593727.Spec : Prop :=
  ∀ n, P12349701284044593727.a n = A080849 (n + 1)

end A080849

/-! ## A080849.P13990922200197633221

`(A008683(n+1)+2)*record[A051494(n)]`
-/

namespace A080849.P13990922200197633221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080849.P13990922200197633221

namespace A080849

/-- `(A008683(n+1)+2)*record[A051494(n)]` -/
def P13990922200197633221.Spec : Prop :=
  ∀ n, P13990922200197633221.a n = A080849 (n + 1)

end A080849

/-!
# A080850: Number triangle related to a problem of Knuth.

The programs for A080850, there is no canonical definition to state claims against.
-/

/-! ## A080850.P7502388937212197173

`A159255(lt[A113360(n+3), A113360(n)])`
-/

namespace A080850.P7502388937212197173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159255 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080850.P7502388937212197173

/-! ## A080850.P17216396852418819698

`∑{e}[A246117(A115104(n+1)), #]+1`
-/

namespace A080850.P17216396852418819698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246117 (A115104 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A080850.P17216396852418819698

/-! ## A080850.P12935390782945389702

`A032556(A125171(n))+A004247(n)`
-/

namespace A080850.P12935390782945389702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032556 (A125171 n).toNat + A004247 n

end

end A080850.P12935390782945389702

/-! ## A080850.P13785737991880607811

`A108611(A119502(n))+A007318(n)`
-/

namespace A080850.P13785737991880607811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A119502 n).toNat + A007318 n

end

end A080850.P13785737991880607811

/-! ## A080850.P16301125162798489845

`A339927(A047848(n))+A007318(n)`
-/

namespace A080850.P16301125162798489845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339927 (A047848 n).toNat + A007318 n

end

end A080850.P16301125162798489845

/-!
# A080851: Square array of pyramidal numbers, read by antidiagonals.

The programs for A080851, there is no canonical definition to state claims against.
-/

/-! ## A080851.P13202515490366558826

`A261720(n+1)-A000292(A002262(n))`
-/

namespace A080851.P13202515490366558826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261720 (n + 1) - A000292 (A002262 n).toNat

end

end A080851.P13202515490366558826

/-! ## A080851.P3452497708195209556

`A261720(n+1)-A000292(A025668(n+1))`
-/

namespace A080851.P3452497708195209556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261720 (n + 1) - A000292 (A025668 (n + 1)).toNat

end

end A080851.P3452497708195209556

/-! ## A080851.P10865548516999798980

`A261720(n+1)-A000292(val(A036561(n), 3))`
-/

namespace A080851.P10865548516999798980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261720 (n + 1) - A000292 (SequenceMachineLib.valuation (A036561 n).toNat 3)

end

end A080851.P10865548516999798980

/-! ## A080851.P8261846537500485552

`A209518(n)+A016389(A176561(n))`
-/

namespace A080851.P8261846537500485552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n + A016389 (A176561 n).toNat

end

end A080851.P8261846537500485552

/-!
# A080852: Square array of 4D pyramidal numbers, read by antidiagonals.

The programs for A080852, there is no canonical definition to state claims against.
-/

/-! ## A080852.P11665426304251153433

`A351831(A259325(n)+A208341(n))`
-/

namespace A080852.P11665426304251153433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A259325 n + A208341 n).toNat

end

end A080852.P11665426304251153433

/-! ## A080852.P7845857604024262101

`A007318(lt[1, A171882(n+1)])`
-/

namespace A080852.P7845857604024262101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A080852.P7845857604024262101

/-! ## A080852.P17302050730532664900

`A007318(lt[1, A171882(n)]-1)`
-/

namespace A080852.P17302050730532664900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A080852.P17302050730532664900

/-! ## A080852.P10135440318976709818

`A062145(n)/A055642(A022180(n))`
-/

namespace A080852.P10135440318976709818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062145 n : ℚ) / (A055642 (A022180 n).toNat : ℚ)

end

end A080852.P10135440318976709818

/-! ## A080852.P9063876406957087051

`A007318(lt[A029904(n), A039948(n)])`
-/

namespace A080852.P9063876406957087051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029904 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080852.P9063876406957087051

/-!
# A080853: Square array of generalized polygonal numbers, read by antidiagonals.

The programs for A080853, the canonical program `A080853.P4382216278735816275` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080853 has offset 0).

The definition of A080853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080853.P8426017818060058867

`(C(comp[∑[n]]-n, 2)-(n+1))*A139600(n)+1`
-/

namespace A080853.P8426017818060058867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A139600 n + 1

end

end A080853.P8426017818060058867

namespace A080853

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A139600(n)+1` -/
def P8426017818060058867.Spec : Prop :=
  ∀ n, P8426017818060058867.a n = A080853 n

end A080853

/-! ## A080853.P6366052973884127769

`A285192(n)+1-A062707(n)`
-/

namespace A080853.P6366052973884127769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 n + (1 - A062707 n)

end

end A080853.P6366052973884127769

namespace A080853

/-- `A285192(n)+1-A062707(n)` -/
def P6366052973884127769.Spec : Prop :=
  ∀ n, P6366052973884127769.a n = A080853 n

end A080853

/-! ## A080853.P9168002302931275366

`A025581(n)*A139600(n)+1`
-/

namespace A080853.P9168002302931275366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n * A139600 n + 1

end

end A080853.P9168002302931275366

namespace A080853

/-- `A025581(n)*A139600(n)+1` -/
def P9168002302931275366.Spec : Prop :=
  ∀ n, P9168002302931275366.a n = A080853 n

end A080853

/-! ## A080853.P14400545971311396976

`A285192(n)+2-A101321(n)`
-/

namespace A080853.P14400545971311396976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 n + (2 - A101321 n)

end

end A080853.P14400545971311396976

namespace A080853

/-- `A285192(n)+2-A101321(n)` -/
def P14400545971311396976.Spec : Prop :=
  ∀ n, P14400545971311396976.a n = A080853 n

end A080853

/-! ## A080853.P4382216278735816275

`A000217(A077028(n))-A062707(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080853

/-- `A000217(A077028(n))-A062707(n)` -/
def P4382216278735816275.Spec : Prop :=
  ∀ n, P4382216278735816275.a n = A080853 n

theorem P4382216278735816275.correct : P4382216278735816275.Spec := by
  intro n
  simp only [A080853]

end A080853

/-! ## A080853.P10024320338251704325

`A000124(A077028(n))-A101321(n)`
-/

namespace A080853.P10024320338251704325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A077028 n).toNat - A101321 n

end

end A080853.P10024320338251704325

namespace A080853

/-- `A000124(A077028(n))-A101321(n)` -/
def P10024320338251704325.Spec : Prop :=
  ∀ n, P10024320338251704325.a n = A080853 n

end A080853

/-! ## A080853.P8031281038807290443

`A000124(A004247(n)+1)-A101321(n)`
-/

namespace A080853.P8031281038807290443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004247 n + 1).toNat - A101321 n

end

end A080853.P8031281038807290443

namespace A080853

/-- `A000124(A004247(n)+1)-A101321(n)` -/
def P8031281038807290443.Spec : Prop :=
  ∀ n, P8031281038807290443.a n = A080853 n

end A080853

/-! ## A080853.P4671054927490993234

`A285192(n)+A024000(A062707(n))`
-/

namespace A080853.P4671054927490993234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 n + A024000 (A062707 n).toNat

end

end A080853.P4671054927490993234

namespace A080853

/-- `A285192(n)+A024000(A062707(n))` -/
def P4671054927490993234.Spec : Prop :=
  ∀ n, P4671054927490993234.a n = A080853 n

end A080853

/-! ## A080853.P12453176524420447558

`A239331(n)-A004247(n)`
-/

namespace A080853.P12453176524420447558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 n - A004247 n

end

end A080853.P12453176524420447558

namespace A080853

/-- `A239331(n)-A004247(n)` -/
def P12453176524420447558.Spec : Prop :=
  ∀ n, P12453176524420447558.a n = A080853 n

end A080853

/-!
# A080854: Numbers which can be expressed as the sum of two distinct primes in exactly five ways.

The programs for A080854, there is no canonical definition to state claims against.
-/

/-! ## A080854.P112297062400786290

`eq[11, or(1, A002126(n))]`
-/

namespace A080854.P112297062400786290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080854.P112297062400786290

/-! ## A080854.P11478497740219990612

`eq[5, A117929(n+1)]+1`
-/

namespace A080854.P11478497740219990612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080854.P11478497740219990612

/-! ## A080854.P9705967251178217189

`2*(eq[5, A061357(n+1)]+1)`
-/

namespace A080854.P9705967251178217189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080854.P9705967251178217189

/-! ## A080854.P16705551712618150823

`eq[5, floor(A002126(abs(1-n)+1)/2)]`
-/

namespace A080854.P16705551712618150823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002126 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080854.P16705551712618150823

/-! ## A080854.P18314285689564194336

`eq[1, A326634(A002126(n))]`
-/

namespace A080854.P18314285689564194336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326634 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080854.P18314285689564194336

/-!
# A080855: a(n) = (9*n^2 - 3*n + 2)/2.

The programs for A080855, the canonical program `A080855.P11017831889788592155` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080855 has offset 0).

The definition of A080855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²-3*n+2)/2` (program `A080855.P16973719529028597133`, by `A080855.P16973719529028597133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080855.P11017831889788592155

`9*n+a(n-1)-6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080855

/-- `9*n+a(n-1)-6` -/
def P11017831889788592155.Spec : Prop :=
  ∀ n, P11017831889788592155.a n = A080855 n

theorem P11017831889788592155.correct : P11017831889788592155.Spec := by
  intro n
  simp only [A080855]

end A080855

/-! ## A080855.P16973719529028597133

`(9*n²-3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080855.P16973719529028597133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n ^ 2 : ℤ) - (3 * n : ℤ) + 2 : ℚ) / 2

end

end A080855.P16973719529028597133

namespace A080855

/-- `(9*n²-3*n+2)/2` -/
def P16973719529028597133.Spec : Prop :=
  ∀ n, P16973719529028597133.a n = (A080855 n : ℚ)

theorem P16973719529028597133.correct : P16973719529028597133.Spec := by
  intro n
  induction n with
  | zero => simp [A080855, A080855.P16973719529028597133.a, A080855.P11017831889788592155.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A080855, Nat.add_sub_cancel, A080855.P16973719529028597133.a, A080855.P11017831889788592155.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A080855

/-! ## A080855.P7075387628512483199

`A227776(n)-3*A000217(n)`
-/

namespace A080855.P7075387628512483199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n - 3 * A000217 n

end

end A080855.P7075387628512483199

namespace A080855

/-- `A227776(n)-3*A000217(n)` -/
def P7075387628512483199.Spec : Prop :=
  ∀ n, P7075387628512483199.a n = A080855 n

end A080855

/-! ## A080855.P18205164457706984244

`A152947(3*n+1)`
-/

namespace A080855.P18205164457706984244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (3 * n + 1)

end

end A080855.P18205164457706984244

namespace A080855

/-- `A152947(3*n+1)` -/
def P18205164457706984244.Spec : Prop :=
  ∀ n, P18205164457706984244.a n = A080855 n

end A080855

/-! ## A080855.P11379711840234239783

`C(3*n, 2)+1`
-/

namespace A080855.P11379711840234239783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2 + 1

end

end A080855.P11379711840234239783

namespace A080855

/-- `C(3*n, 2)+1` -/
def P11379711840234239783.Spec : Prop :=
  ∀ n, (P11379711840234239783.a n : ℤ) = A080855 n

end A080855

/-! ## A080855.P8196424438493312858

`∑[a(n-1)+9]` with `a(0)=1, a(1)=3`
-/

namespace A080855.P8196424438493312858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080855.P8196424438493312858

namespace A080855

/-- `∑[a(n-1)+9]` -/
def P8196424438493312858.Spec : Prop :=
  ∀ n, (P8196424438493312858.a n : ℤ) = A080855 n

end A080855

/-! ## A080855.P12139382641363029448

`abs(xor(-1, C(3*n, 2)))`
-/

namespace A080855.P12139382641363029448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (Nat.choose (3 * n) 2 : ℤ)|

end

end A080855.P12139382641363029448

namespace A080855

/-- `abs(xor(-1, C(3*n, 2)))` -/
def P12139382641363029448.Spec : Prop :=
  ∀ n, P12139382641363029448.a n = A080855 n

end A080855

/-! ## A080855.P5788122530385091845

`-xor(-1, C(3*n, 2))`
-/

namespace A080855.P5788122530385091845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.choose (3 * n) 2 : ℤ)

end

end A080855.P5788122530385091845

namespace A080855

/-- `-xor(-1, C(3*n, 2))` -/
def P5788122530385091845.Spec : Prop :=
  ∀ n, P5788122530385091845.a n = A080855 n

end A080855

/-! ## A080855.P17375967821659989232

`7-∑[a(n-1)-9]` with `a(0)=6`
-/

namespace A080855.P17375967821659989232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080855.P17375967821659989232

namespace A080855

/-- `7-∑[a(n-1)-9]` -/
def P17375967821659989232.Spec : Prop :=
  ∀ n, P17375967821659989232.a n = A080855 n

end A080855

/-! ## A080855.P18096491646903810897

`(2*n)²-(n-1-C(n, 2))`
-/

namespace A080855.P18096491646903810897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ))

end

end A080855.P18096491646903810897

namespace A080855

/-- `(2*n)²-(n-1-C(n, 2))` -/
def P18096491646903810897.Spec : Prop :=
  ∀ n, P18096491646903810897.a n = A080855 n

end A080855

/-! ## A080855.P6354115188167487956

`abs(abs(1-n)-C(3*n, 2)-n)`
-/

namespace A080855.P6354115188167487956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - (n : ℤ)| - (Nat.choose (3 * n) 2 : ℤ) - (n : ℤ))|

end

end A080855.P6354115188167487956

namespace A080855

/-- `abs(abs(1-n)-C(3*n, 2)-n)` -/
def P6354115188167487956.Spec : Prop :=
  ∀ n, P6354115188167487956.a n = A080855 n

end A080855

/-! ## A080855.P3931765859490849735

`A062741(n)+1`
-/

namespace A080855.P3931765859490849735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + 1

end

end A080855.P3931765859490849735

namespace A080855

/-- `A062741(n)+1` -/
def P3931765859490849735.Spec : Prop :=
  ∀ n, P3931765859490849735.a n = A080855 n

end A080855

/-! ## A080855.P3371947251821839493

`A140064(n)+n`
-/

namespace A080855.P3371947251821839493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n + (n : ℤ)

end

end A080855.P3371947251821839493

namespace A080855

/-- `A140064(n)+n` -/
def P3371947251821839493.Spec : Prop :=
  ∀ n, P3371947251821839493.a n = A080855 n

end A080855

/-! ## A080855.P13139495140201154349

`A276819(n)-n`
-/

namespace A080855.P13139495140201154349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n - (n : ℤ)

end

end A080855.P13139495140201154349

namespace A080855

/-- `A276819(n)-n` -/
def P13139495140201154349.Spec : Prop :=
  ∀ n, P13139495140201154349.a n = A080855 n

end A080855

/-! ## A080855.P10398401985055436858

`A172043(n)-∑[n]`
-/

namespace A080855.P10398401985055436858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172043 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080855.P10398401985055436858

namespace A080855

/-- `A172043(n)-∑[n]` -/
def P10398401985055436858.Spec : Prop :=
  ∀ n, P10398401985055436858.a n = A080855 n

end A080855

/-! ## A080855.P10601820676736333430

`3*A000326(n)+1`
-/

namespace A080855.P10601820676736333430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000326 n + 1

end

end A080855.P10601820676736333430

namespace A080855

/-- `3*A000326(n)+1` -/
def P10601820676736333430.Spec : Prop :=
  ∀ n, P10601820676736333430.a n = A080855 n

end A080855

/-! ## A080855.P10606659021394868607

`A152743(n)/2+1`
-/

namespace A080855.P10606659021394868607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152743 n : ℚ) / 2 + 1

end

end A080855.P10606659021394868607

namespace A080855

/-- `A152743(n)/2+1` -/
def P10606659021394868607.Spec : Prop :=
  ∀ n, P10606659021394868607.a n = (A080855 n : ℚ)

end A080855

/-! ## A080855.P6344754659427858261

`A152996(n)/3+1`
-/

namespace A080855.P6344754659427858261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152996 n : ℚ) / 3 + 1

end

end A080855.P6344754659427858261

namespace A080855

/-- `A152996(n)/3+1` -/
def P6344754659427858261.Spec : Prop :=
  ∀ n, P6344754659427858261.a n = (A080855 n : ℚ)

end A080855

/-!
# A080856: a(n) = 8*n^2 - 4*n + 1.

The programs for A080856, the canonical program `A080856.P3251155691184586344` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080856 has offset 0).

The definition of A080856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²-4*n+1` (program `A080856.P3251155691184586344`, by `A080856.P3251155691184586344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080856.P3251155691184586344

`8*n²-4*n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080856

/-- `8*n²-4*n+1` -/
def P3251155691184586344.Spec : Prop :=
  ∀ n, P3251155691184586344.a n = A080856 n

theorem P3251155691184586344.correct : P3251155691184586344.Spec := by
  intro n
  simp only [A080856]

end A080856

/-! ## A080856.P15565417347152896151

`or(1, 4*C(2*n, 2))`
-/

namespace A080856.P15565417347152896151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * Nat.choose (2 * n) 2)

end

end A080856.P15565417347152896151

namespace A080856

/-- `or(1, 4*C(2*n, 2))` -/
def P15565417347152896151.Spec : Prop :=
  ∀ n, (P15565417347152896151.a n : ℤ) = A080856 n

end A080856

/-! ## A080856.P9168876619667034289

`xor(1, 4*C(2*n, 2))`
-/

namespace A080856.P9168876619667034289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * Nat.choose (2 * n) 2)

end

end A080856.P9168876619667034289

namespace A080856

/-- `xor(1, 4*C(2*n, 2))` -/
def P9168876619667034289.Spec : Prop :=
  ∀ n, (P9168876619667034289.a n : ℤ) = A080856 n

end A080856

/-! ## A080856.P8185849689681130087

`∑[a(n-1)+16]` with `a(0)=1, a(1)=4`
-/

namespace A080856.P8185849689681130087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080856.P8185849689681130087

namespace A080856

/-- `∑[a(n-1)+16]` -/
def P8185849689681130087.Spec : Prop :=
  ∀ n, (P8185849689681130087.a n : ℤ) = A080856 n

end A080856

/-! ## A080856.P2088345886627971185

`or(1, 2*((2*n)²-2*n))`
-/

namespace A080856.P2088345886627971185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (((2 * n) ^ 2 : ℤ) - (2 * n : ℤ)))

end

end A080856.P2088345886627971185

namespace A080856

/-- `or(1, 2*((2*n)²-2*n))` -/
def P2088345886627971185.Spec : Prop :=
  ∀ n, P2088345886627971185.a n = A080856 n

end A080856

/-! ## A080856.P6831166932946808124

`xor(1, 2*((2*n)²-2*n))`
-/

namespace A080856.P6831166932946808124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * (((2 * n) ^ 2 : ℤ) - (2 * n : ℤ)))

end

end A080856.P6831166932946808124

namespace A080856

/-- `xor(1, 2*((2*n)²-2*n))` -/
def P6831166932946808124.Spec : Prop :=
  ∀ n, P6831166932946808124.a n = A080856 n

end A080856

/-! ## A080856.P15576630173347020257

`floor(a(n-1)-4*(3-4*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080856.P15576630173347020257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 4 * (3 - (4 * n : ℤ))

end

end A080856.P15576630173347020257

namespace A080856

/-- `floor(a(n-1)-4*(3-4*n))` -/
def P15576630173347020257.Spec : Prop :=
  ∀ n, P15576630173347020257.a n = A080856 n

theorem P15576630173347020257.correct : P15576630173347020257.Spec := by
  intro n
  induction n with
  | zero => simp [A080856, A080856.P15576630173347020257.a, A080856.P3251155691184586344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A080856, Nat.add_sub_cancel, A080856.P15576630173347020257.a, A080856.P3251155691184586344.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A080856

/-! ## A080856.P12256670077295413096

`(A081593(n)+3)/4`
-/

namespace A080856.P12256670077295413096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081593 n + 3 : ℚ) / 4

end

end A080856.P12256670077295413096

namespace A080856

/-- `(A081593(n)+3)/4` -/
def P12256670077295413096.Spec : Prop :=
  ∀ n, P12256670077295413096.a n = (A080856 n : ℚ)

end A080856

/-! ## A080856.P1845453330783214529

`ceil(A131098(n+1)²/2)`
-/

namespace A080856.P1845453330783214529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131098 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A080856.P1845453330783214529

namespace A080856

/-- `ceil(A131098(n+1)²/2)` -/
def P1845453330783214529.Spec : Prop :=
  ∀ n, P1845453330783214529.a n = A080856 n

end A080856

/-! ## A080856.P16731575623258979765

`∪[A051470(n+1), A060820(n+1)]`
-/

namespace A080856.P16731575623258979765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080856.P16731575623258979765

namespace A080856

/-- `∪[A051470(n+1), A060820(n+1)]` -/
def P16731575623258979765.Spec : Prop :=
  ∀ n, (P16731575623258979765.a n : ℤ) = A080856 n

end A080856

/-! ## A080856.P1930034064594161766

`record[n*A066104(n)+1]`
-/

namespace A080856.P1930034064594161766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066104 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080856.P1930034064594161766

namespace A080856

/-- `record[n*A066104(n)+1]` -/
def P1930034064594161766.Spec : Prop :=
  ∀ n, P1930034064594161766.a n = A080856 n

end A080856

/-! ## A080856.P9003282635290586363

`record[(n+1)*A064680(n)+1]`
-/

namespace A080856.P9003282635290586363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064680 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080856.P9003282635290586363

namespace A080856

/-- `record[(n+1)*A064680(n)+1]` -/
def P9003282635290586363.Spec : Prop :=
  ∀ n, P9003282635290586363.a n = A080856 n

end A080856

/-! ## A080856.P12078152419386596232

`record[n*A065171(n+1)+1]`
-/

namespace A080856.P12078152419386596232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065171 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080856.P12078152419386596232

namespace A080856

/-- `record[n*A065171(n+1)+1]` -/
def P12078152419386596232.Spec : Prop :=
  ∀ n, P12078152419386596232.a n = A080856 n

end A080856

/-! ## A080856.P5483731439957014690

`record[n*A065260(n+1)+1]`
-/

namespace A080856.P5483731439957014690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065260 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080856.P5483731439957014690

namespace A080856

/-- `record[n*A065260(n+1)+1]` -/
def P5483731439957014690.Spec : Prop :=
  ∀ n, P5483731439957014690.a n = A080856 n

end A080856

/-! ## A080856.P13119502488764101177

`A001844(A004273(n))`
-/

namespace A080856.P13119502488764101177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A004273 n).toNat

end

end A080856.P13119502488764101177

namespace A080856

/-- `A001844(A004273(n))` -/
def P13119502488764101177.Spec : Prop :=
  ∀ n, P13119502488764101177.a n = A080856 n

end A080856

/-! ## A080856.P12465756112748440733

`∩[A001844(n), A296911(n)]`
-/

namespace A080856.P12465756112748440733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296911 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080856.P12465756112748440733

namespace A080856

/-- `∩[A001844(n), A296911(n)]` -/
def P12465756112748440733.Spec : Prop :=
  ∀ n, (P12465756112748440733.a n : ℤ) = A080856 n

end A080856

/-! ## A080856.P14389914918861558133

`record[A046092(A006257(n))+1]`
-/

namespace A080856.P14389914918861558133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A006257 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080856.P14389914918861558133

namespace A080856

/-- `record[A046092(A006257(n))+1]` -/
def P14389914918861558133.Spec : Prop :=
  ∀ n, P14389914918861558133.a n = A080856 n

end A080856

/-!
# A080857: a(n) = (25*n^2 - 15*n + 2)/2.

The programs for A080857, the canonical program `A080857.P17150637537546813711` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080857 has offset 0).

The definition of A080857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(25*n²-15*n+2)/2` (program `A080857.P4587309287745874291`, by `A080857.P4587309287745874291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080857.P17150637537546813711

`25*n+a(n-1)-20` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080857

/-- `25*n+a(n-1)-20` -/
def P17150637537546813711.Spec : Prop :=
  ∀ n, P17150637537546813711.a n = A080857 n

theorem P17150637537546813711.correct : P17150637537546813711.Spec := by
  intro n
  simp only [A080857]

end A080857

/-! ## A080857.P4587309287745874291

`(25*n²-15*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080857.P4587309287745874291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((25 * n ^ 2 : ℤ) - (15 * n : ℤ) + 2 : ℚ) / 2

end

end A080857.P4587309287745874291

namespace A080857

/-- `(25*n²-15*n+2)/2` -/
def P4587309287745874291.Spec : Prop :=
  ∀ n, P4587309287745874291.a n = (A080857 n : ℚ)

theorem P4587309287745874291.correct : P4587309287745874291.Spec := by
  intro n
  induction n with
  | zero => simp [A080857, A080857.P4587309287745874291.a, A080857.P17150637537546813711.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A080857, Nat.add_sub_cancel, A080857.P4587309287745874291.a, A080857.P17150637537546813711.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A080857

/-! ## A080857.P12071425166468625473

`∑[a(n-1)+25]` with `a(0)=1, a(1)=5`
-/

namespace A080857.P12071425166468625473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080857.P12071425166468625473

namespace A080857

/-- `∑[a(n-1)+25]` -/
def P12071425166468625473.Spec : Prop :=
  ∀ n, (P12071425166468625473.a n : ℤ) = A080857 n

end A080857

/-! ## A080857.P11707766614659099731

`record[C(n, 2)-(lcm(5, n)-1)]`
-/

namespace A080857.P11707766614659099731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((Nat.lcm 5 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080857.P11707766614659099731

namespace A080857

/-- `record[C(n, 2)-(lcm(5, n)-1)]` -/
def P11707766614659099731.Spec : Prop :=
  ∀ n, P11707766614659099731.a n = A080857 n

end A080857

/-! ## A080857.P2547897551011442079

`5*(5*C(n, 2)+n)+1`
-/

namespace A080857.P2547897551011442079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * Nat.choose n 2 + n) + 1

end

end A080857.P2547897551011442079

namespace A080857

/-- `5*(5*C(n, 2)+n)+1` -/
def P2547897551011442079.Spec : Prop :=
  ∀ n, (P2547897551011442079.a n : ℤ) = A080857 n

end A080857

/-! ## A080857.P1367925887617672378

`A153785(n)+1`
-/

namespace A080857.P1367925887617672378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153785 n + 1

end

end A080857.P1367925887617672378

namespace A080857

/-- `A153785(n)+1` -/
def P1367925887617672378.Spec : Prop :=
  ∀ n, P1367925887617672378.a n = A080857 n

end A080857

/-! ## A080857.P18137241478061967693

`A185212(n)+∑[n]`
-/

namespace A080857.P18137241478061967693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080857.P18137241478061967693

namespace A080857

/-- `A185212(n)+∑[n]` -/
def P18137241478061967693.Spec : Prop :=
  ∀ n, P18137241478061967693.a n = A080857 n

end A080857

/-! ## A080857.P12659878327344413460

`5*A000566(n)+1`
-/

namespace A080857.P12659878327344413460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000566 n + 1

end

end A080857.P12659878327344413460

namespace A080857

/-- `5*A000566(n)+1` -/
def P12659878327344413460.Spec : Prop :=
  ∀ n, P12659878327344413460.a n = A080857 n

end A080857

/-! ## A080857.P1106673376092993002

`5*A192136(n)-4`
-/

namespace A080857.P1106673376092993002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A192136 n - 4

end

end A080857.P1106673376092993002

namespace A080857

/-- `5*A192136(n)-4` -/
def P1106673376092993002.Spec : Prop :=
  ∀ n, P1106673376092993002.a n = A080857 n

end A080857

/-! ## A080857.P9366843218709453407

`A383465(n)-2*n`
-/

namespace A080857.P9366843218709453407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383465 n - (2 * n : ℤ)

end

end A080857.P9366843218709453407

namespace A080857

/-- `A383465(n)-2*n` -/
def P9366843218709453407.Spec : Prop :=
  ∀ n, P9366843218709453407.a n = A080857 n

end A080857

/-! ## A080857.P9843122141836786251

`A081587(n)-5*n`
-/

namespace A080857.P9843122141836786251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081587 n - (5 * n : ℤ)

end

end A080857.P9843122141836786251

namespace A080857

/-- `A081587(n)-5*n` -/
def P9843122141836786251.Spec : Prop :=
  ∀ n, P9843122141836786251.a n = A080857 n

end A080857

/-! ## A080857.P10938433457738393553

`A152767(n)+∑[n+1]`
-/

namespace A080857.P10938433457738393553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152767 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080857.P10938433457738393553

namespace A080857

/-- `A152767(n)+∑[n+1]` -/
def P10938433457738393553.Spec : Prop :=
  ∀ n, P10938433457738393553.a n = A080857 n

end A080857

/-! ## A080857.P15486785128491580097

`A051875(n)+A001844(n)`
-/

namespace A080857.P15486785128491580097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n + A001844 n

end

end A080857.P15486785128491580097

namespace A080857

/-- `A051875(n)+A001844(n)` -/
def P15486785128491580097.Spec : Prop :=
  ∀ n, P15486785128491580097.a n = A080857 n

end A080857

/-! ## A080857.P13499180203760701928

`A062741(n)+A033567(n)`
-/

namespace A080857.P13499180203760701928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n + A033567 n

end

end A080857.P13499180203760701928

namespace A080857

/-- `A062741(n)+A033567(n)` -/
def P13499180203760701928.Spec : Prop :=
  ∀ n, P13499180203760701928.a n = A080857 n

end A080857

/-! ## A080857.P14819009437938294936

`A053755(n)+A051871(n)`
-/

namespace A080857.P14819009437938294936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n + A051871 n

end

end A080857.P14819009437938294936

namespace A080857

/-- `A053755(n)+A051871(n)` -/
def P14819009437938294936.Spec : Prop :=
  ∀ n, P14819009437938294936.a n = A080857 n

end A080857

/-! ## A080857.P5497521725847948100

`A056108(n)+A051873(n)`
-/

namespace A080857.P5497521725847948100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n + A051873 n

end

end A080857.P5497521725847948100

namespace A080857

/-- `A056108(n)+A051873(n)` -/
def P5497521725847948100.Spec : Prop :=
  ∀ n, P5497521725847948100.a n = A080857 n

end A080857

/-! ## A080857.P7141895504597057128

`A080856(n)+A051682(n)`
-/

namespace A080857.P7141895504597057128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n + A051682 n

end

end A080857.P7141895504597057128

namespace A080857

/-- `A080856(n)+A051682(n)` -/
def P7141895504597057128.Spec : Prop :=
  ∀ n, P7141895504597057128.a n = A080857 n

end A080857

/-! ## A080857.P7141937861858187344

`A125201(n)+A022266(n)`
-/

namespace A080857.P7141937861858187344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n + A022266 n

end

end A080857.P7141937861858187344

namespace A080857

/-- `A125201(n)+A022266(n)` -/
def P7141937861858187344.Spec : Prop :=
  ∀ n, P7141937861858187344.a n = A080857 n

end A080857

/-! ## A080857.P6496377958781576169

`A153794(n)+A000124(n)`
-/

namespace A080857.P6496377958781576169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + A000124 n

end

end A080857.P6496377958781576169

namespace A080857

/-- `A153794(n)+A000124(n)` -/
def P6496377958781576169.Spec : Prop :=
  ∀ n, P6496377958781576169.a n = A080857 n

end A080857

/-! ## A080857.P3825643210225838060

`A158186(n)+A005476(n)`
-/

namespace A080857.P3825643210225838060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158186 n + A005476 n

end

end A080857.P3825643210225838060

namespace A080857

/-- `A158186(n)+A005476(n)` -/
def P3825643210225838060.Spec : Prop :=
  ∀ n, P3825643210225838060.a n = A080857 n

end A080857

/-!
# A080858: Triangle read by rows: T(n,k), n >=1, 0 <= k <= C(n,k), = number of n X n symmetric positive definite matrices with 2's on the main diagonal and 1's and 0's elsewhere and with k 1's above the diagonal.

The programs for A080858, there is no canonical definition to state claims against.
-/

/-! ## A080858.P16574769000194768150

`A084546(n+1)-A357704(A084546(n))`
-/

namespace A080858.P16574769000194768150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084546 (n + 1) - A357704 (A084546 n).toNat

end

end A080858.P16574769000194768150

/-!
# A080859: a(n) = 6*n^2 + 4*n + 1.

The programs for A080859, the canonical program `A080859.P14823795919072812333` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080859 has offset 0).

The definition of A080859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²+4*n+1` (program `A080859.P14823795919072812333`, by `A080859.P14823795919072812333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080859.P14823795919072812333

`6*n²+4*n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080859

/-- `6*n²+4*n+1` -/
def P14823795919072812333.Spec : Prop :=
  ∀ n, (P14823795919072812333.a n : ℤ) = A080859 n

theorem P14823795919072812333.correct : P14823795919072812333.Spec := by
  intro n
  simp only [A080859]

end A080859

/-! ## A080859.P6467463395753833596

`A186424(2*n)`
-/

namespace A080859.P6467463395753833596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 (2 * n)

end

end A080859.P6467463395753833596

namespace A080859

/-- `A186424(2*n)` -/
def P6467463395753833596.Spec : Prop :=
  ∀ n, P6467463395753833596.a n = A080859 n

end A080859

/-! ## A080859.P1983984264622360611

`Δ[n*C(2*n, 2)]`
-/

namespace A080859.P1983984264622360611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A080859.P1983984264622360611

namespace A080859

/-- `Δ[n*C(2*n, 2)]` -/
def P1983984264622360611.Spec : Prop :=
  ∀ n, P1983984264622360611.a n = A080859 n

end A080859

/-! ## A080859.P2436526586064854640

`∑[a(n-1)+12]` with `a(0)=1, a(1)=10`
-/

namespace A080859.P2436526586064854640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080859.P2436526586064854640

namespace A080859

/-- `∑[a(n-1)+12]` -/
def P2436526586064854640.Spec : Prop :=
  ∀ n, (P2436526586064854640.a n : ℤ) = A080859 n

end A080859

/-! ## A080859.P11542167183430112639

`or(1, n*(6*n+4))`
-/

namespace A080859.P11542167183430112639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (6 * n + 4))

end

end A080859.P11542167183430112639

namespace A080859

/-- `or(1, n*(6*n+4))` -/
def P11542167183430112639.Spec : Prop :=
  ∀ n, (P11542167183430112639.a n : ℤ) = A080859 n

end A080859

/-! ## A080859.P14924623809663876788

`xor(1, n*(6*n+4))`
-/

namespace A080859.P14924623809663876788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (6 * n + 4))

end

end A080859.P14924623809663876788

namespace A080859

/-- `xor(1, n*(6*n+4))` -/
def P14924623809663876788.Spec : Prop :=
  ∀ n, (P14924623809663876788.a n : ℤ) = A080859 n

end A080859

/-! ## A080859.P5429581037343439558

`floor(12*n-(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080859.P5429581037343439558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (12 * n : ℤ) - (2 - a (n - 1))

end

end A080859.P5429581037343439558

namespace A080859

/-- `floor(12*n-(2-a(n-1)))` -/
def P5429581037343439558.Spec : Prop :=
  ∀ n, P5429581037343439558.a n = A080859 n

theorem P5429581037343439558.correct : P5429581037343439558.Spec := by
  intro n
  induction n with
  | zero => simp [A080859, A080859.P5429581037343439558.a, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A080859, Nat.add_sub_cancel, A080859.P5429581037343439558.a, A080859.P14823795919072812333.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A080859

/-! ## A080859.P12198051567856911643

`round((2*n+n+2)/acot(2*n))`
-/

namespace A080859.P12198051567856911643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + (n + 2) : ℝ) / SequenceMachineLib.acot (2 * n : ℝ))

end

end A080859.P12198051567856911643

namespace A080859

/-- `round((2*n+n+2)/acot(2*n))` -/
def P12198051567856911643.Spec : Prop :=
  ∀ n, P12198051567856911643.a n = A080859 n

end A080859

/-! ## A080859.P9078631751196784820

`abs(n-lcm(2*n+n+1, 2*n+1))`
-/

namespace A080859.P9078631751196784820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (Nat.lcm (2 * n + (n + 1)) (2 * n + 1) : ℤ)|

end

end A080859.P9078631751196784820

namespace A080859

/-- `abs(n-lcm(2*n+n+1, 2*n+1))` -/
def P9078631751196784820.Spec : Prop :=
  ∀ n, P9078631751196784820.a n = A080859 n

end A080859

/-! ## A080859.P2798647572062309170

`Δ[n*A000384(n)]`
-/

namespace A080859.P2798647572062309170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080859.P2798647572062309170

namespace A080859

/-- `Δ[n*A000384(n)]` -/
def P2798647572062309170.Spec : Prop :=
  ∀ n, P2798647572062309170.a n = A080859 n

end A080859

/-! ## A080859.P13780559451939685080

`(A014641(n)+1)/2`
-/

namespace A080859.P13780559451939685080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014641 n + 1 : ℚ) / 2

end

end A080859.P13780559451939685080

namespace A080859

/-- `(A014641(n)+1)/2` -/
def P13780559451939685080.Spec : Prop :=
  ∀ n, P13780559451939685080.a n = (A080859 n : ℚ)

end A080859

/-! ## A080859.P2572300036800595010

`(A081275(n)+2)/3`
-/

namespace A080859.P2572300036800595010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081275 n + 2 : ℚ) / 3

end

end A080859.P2572300036800595010

namespace A080859

/-- `(A081275(n)+2)/3` -/
def P2572300036800595010.Spec : Prop :=
  ∀ n, P2572300036800595010.a n = (A080859 n : ℚ)

end A080859

/-! ## A080859.P1944122403206615251

`ceil(sqrt(A027628(n))+n)`
-/

namespace A080859.P1944122403206615251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A027628 n : ℝ) + (n : ℝ)⌉

end

end A080859.P1944122403206615251

namespace A080859

/-- `ceil(sqrt(A027628(n))+n)` -/
def P1944122403206615251.Spec : Prop :=
  ∀ n, P1944122403206615251.a n = A080859 n

end A080859

/-! ## A080859.P4388220867245357263

`Δ[A033431(n)-n²]`
-/

namespace A080859.P4388220867245357263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080859.P4388220867245357263

namespace A080859

/-- `Δ[A033431(n)-n²]` -/
def P4388220867245357263.Spec : Prop :=
  ∀ n, P4388220867245357263.a n = A080859 n

end A080859

/-! ## A080859.P18216174819044573872

`Δ[n²*A004273(n)]`
-/

namespace A080859.P18216174819044573872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080859.P18216174819044573872

namespace A080859

/-- `Δ[n²*A004273(n)]` -/
def P18216174819044573872.Spec : Prop :=
  ∀ n, P18216174819044573872.a n = A080859 n

end A080859

/-! ## A080859.P2673545728124340285

`(sqrt(A014793(n))+1)/2`
-/

namespace A080859.P2673545728124340285
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A014793 n : ℝ) + 1) / 2

end

end A080859.P2673545728124340285

namespace A080859

/-- `(sqrt(A014793(n))+1)/2` -/
def P2673545728124340285.Spec : Prop :=
  ∀ n, P2673545728124340285.a n = (A080859 n : ℝ)

end A080859

/-! ## A080859.P3096517616010849047

`Δ[n/2*A002939(n)]`
-/

namespace A080859.P3096517616010849047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A002939 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080859.P3096517616010849047

namespace A080859

/-- `Δ[n/2*A002939(n)]` -/
def P3096517616010849047.Spec : Prop :=
  ∀ n, P3096517616010849047.a n = (A080859 n : ℚ)

end A080859

/-!
# A080860: a(n) = 10*n^2 + 5*n + 1.

The programs for A080860, the canonical program `A080860.P16619193845645420021` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080860 has offset 0).

The definition of A080860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²+5*n+1` (program `A080860.P16619193845645420021`, by `A080860.P16619193845645420021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080860.P16619193845645420021

`10*n²+5*n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080860

/-- `10*n²+5*n+1` -/
def P16619193845645420021.Spec : Prop :=
  ∀ n, (P16619193845645420021.a n : ℤ) = A080860 n

theorem P16619193845645420021.correct : P16619193845645420021.Spec := by
  intro n
  simp only [A080860]

end A080860

/-! ## A080860.P8903736435320841919

`∑[a(n-1)+20]` with `a(0)=1, a(1)=15`
-/

namespace A080860.P8903736435320841919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080860.P8903736435320841919

namespace A080860

/-- `∑[a(n-1)+20]` -/
def P8903736435320841919.Spec : Prop :=
  ∀ n, (P8903736435320841919.a n : ℤ) = A080860 n

end A080860

/-! ## A080860.P2280455108012328358

`abs(4-5*A084849(n))`
-/

namespace A080860.P2280455108012328358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 5 * A084849 n|

end

end A080860.P2280455108012328358

namespace A080860

/-- `abs(4-5*A084849(n))` -/
def P2280455108012328358.Spec : Prop :=
  ∀ n, P2280455108012328358.a n = A080860 n

end A080860

/-! ## A080860.P2208942428149417223

`ceil(A033574(n)/2-n)`
-/

namespace A080860.P2208942428149417223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033574 n : ℚ) / 2 - (n : ℚ)⌉

end

end A080860.P2208942428149417223

namespace A080860

/-- `ceil(A033574(n)/2-n)` -/
def P2208942428149417223.Spec : Prop :=
  ∀ n, P2208942428149417223.a n = A080860 n

end A080860

/-! ## A080860.P922498683907596443

`∑[A158558(n)]/(n+1)`
-/

namespace A080860.P922498683907596443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A080860.P922498683907596443

namespace A080860

/-- `∑[A158558(n)]/(n+1)` -/
def P922498683907596443.Spec : Prop :=
  ∀ n, P922498683907596443.a n = (A080860 n : ℚ)

end A080860

/-! ## A080860.P13297643113406949742

`(A005904(n)-n)/(n+1)`
-/

namespace A080860.P13297643113406949742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005904 n - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A080860.P13297643113406949742

namespace A080860

/-- `(A005904(n)-n)/(n+1)` -/
def P13297643113406949742.Spec : Prop :=
  ∀ n, P13297643113406949742.a n = (A080860 n : ℚ)

end A080860

/-! ## A080860.P3998826803354670072

`abs(A016778(n)+n²-n)`
-/

namespace A080860.P3998826803354670072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016778 n + (n ^ 2 : ℤ) - (n : ℤ)|

end

end A080860.P3998826803354670072

namespace A080860

/-- `abs(A016778(n)+n²-n)` -/
def P3998826803354670072.Spec : Prop :=
  ∀ n, P3998826803354670072.a n = A080860 n

end A080860

/-! ## A080860.P5960017856557366895

`abs(n²+A016777(n)²-n)`
-/

namespace A080860.P5960017856557366895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) + A016777 n ^ 2 - (n : ℤ)|

end

end A080860.P5960017856557366895

namespace A080860

/-- `abs(n²+A016777(n)²-n)` -/
def P5960017856557366895.Spec : Prop :=
  ∀ n, P5960017856557366895.a n = A080860 n

end A080860

/-! ## A080860.P6900935106651912005

`(C(A008592(n)+3, 2)+2)/5`
-/

namespace A080860.P6900935106651912005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008592 n + 3).toNat 2 + 2 : ℚ) / 5

end

end A080860.P6900935106651912005

namespace A080860

/-- `(C(A008592(n)+3, 2)+2)/5` -/
def P6900935106651912005.Spec : Prop :=
  ∀ n, P6900935106651912005.a n = (A080860 n : ℚ)

end A080860

/-! ## A080860.P10203224061201711120

`abs(2*n*A016885(n)+1-n)`
-/

namespace A080860.P10203224061201711120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) * A016885 n) + 1 - (n : ℤ)|

end

end A080860.P10203224061201711120

namespace A080860

/-- `abs(2*n*A016885(n)+1-n)` -/
def P10203224061201711120.Spec : Prop :=
  ∀ n, P10203224061201711120.a n = A080860 n

end A080860

/-! ## A080860.P3167401412067763856

`A005891(2*n)`
-/

namespace A080860.P3167401412067763856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (2 * n)

end

end A080860.P3167401412067763856

namespace A080860

/-- `A005891(2*n)` -/
def P3167401412067763856.Spec : Prop :=
  ∀ n, P3167401412067763856.a n = A080860 n

end A080860

/-! ## A080860.P3074158034433371624

`A164015(2*n)/5`
-/

namespace A080860.P3074158034433371624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164015 (2 * n) : ℚ) / 5

end

end A080860.P3074158034433371624

namespace A080860

/-- `A164015(2*n)/5` -/
def P3074158034433371624.Spec : Prop :=
  ∀ n, P3074158034433371624.a n = (A080860 n : ℚ)

end A080860

/-! ## A080860.P5447996546990909195

`A386485(Δ[n²])/2`
-/

namespace A080860.P5447996546990909195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A080860.P5447996546990909195

namespace A080860

/-- `A386485(Δ[n²])/2` -/
def P5447996546990909195.Spec : Prop :=
  ∀ n, P5447996546990909195.a n = (A080860 n : ℚ)

end A080860

/-! ## A080860.P14571501048565541510

`ceil(A062786(2*n+1)/2)`
-/

namespace A080860.P14571501048565541510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062786 (2 * n + 1) : ℚ) / 2⌉

end

end A080860.P14571501048565541510

namespace A080860

/-- `ceil(A062786(2*n+1)/2)` -/
def P14571501048565541510.Spec : Prop :=
  ∀ n, P14571501048565541510.a n = A080860 n

end A080860

/-! ## A080860.P3061994494467721423

`A006564(2*n+1)/(2*n+1)`
-/

namespace A080860.P3061994494467721423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006564 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A080860.P3061994494467721423

namespace A080860

/-- `A006564(2*n+1)/(2*n+1)` -/
def P3061994494467721423.Spec : Prop :=
  ∀ n, P3061994494467721423.a n = (A080860 n : ℚ)

end A080860

/-! ## A080860.P8289067711647493100

`∑[A008706(A004273(2*n))]`
-/

namespace A080860.P8289067711647493100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A004273 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080860.P8289067711647493100

namespace A080860

/-- `∑[A008706(A004273(2*n))]` -/
def P8289067711647493100.Spec : Prop :=
  ∀ n, P8289067711647493100.a n = A080860 n

end A080860

/-! ## A080860.P2830462685058216569

`∑[A135042(4*n)]`
-/

namespace A080860.P2830462685058216569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080860.P2830462685058216569

namespace A080860

/-- `∑[A135042(4*n)]` -/
def P2830462685058216569.Spec : Prop :=
  ∀ n, P2830462685058216569.a n = A080860 n

end A080860

/-! ## A080860.P7549836969666978195

`A087099(3*n+n+1)`
-/

namespace A080860.P7549836969666978195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (3 * n + (n + 1))

end

end A080860.P7549836969666978195

namespace A080860

/-- `A087099(3*n+n+1)` -/
def P7549836969666978195.Spec : Prop :=
  ∀ n, P7549836969666978195.a n = A080860 n

end A080860

/-!
# A080861: a(n) = 15*n^2 + 6*n + 1.

The programs for A080861, the canonical program `A080861.P7317652164599099843` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080861 has offset 0).

The definition of A080861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²+6*n+1` (program `A080861.P7317652164599099843`, by `A080861.P7317652164599099843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080861.P7317652164599099843

`15*n²+6*n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080861

/-- `15*n²+6*n+1` -/
def P7317652164599099843.Spec : Prop :=
  ∀ n, (P7317652164599099843.a n : ℤ) = A080861 n

theorem P7317652164599099843.correct : P7317652164599099843.Spec := by
  intro n
  simp only [A080861]

end A080861

/-! ## A080861.P12132160830921428569

`∑[a(n-1)+30]` with `a(0)=1, a(1)=21`
-/

namespace A080861.P12132160830921428569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080861.P12132160830921428569

namespace A080861

/-- `∑[a(n-1)+30]` -/
def P12132160830921428569.Spec : Prop :=
  ∀ n, (P12132160830921428569.a n : ℤ) = A080861 n

end A080861

/-! ## A080861.P17239263471645320615

`abs(2*n-A144459(n))`
-/

namespace A080861.P17239263471645320615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A144459 n|

end

end A080861.P17239263471645320615

namespace A080861

/-- `abs(2*n-A144459(n))` -/
def P17239263471645320615.Spec : Prop :=
  ∀ n, P17239263471645320615.a n = A080861 n

end A080861

/-! ## A080861.P9351516424668021449

`abs(3*n-A134153(n))`
-/

namespace A080861.P9351516424668021449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A134153 n|

end

end A080861.P9351516424668021449

namespace A080861

/-- `abs(3*n-A134153(n))` -/
def P9351516424668021449.Spec : Prop :=
  ∀ n, P9351516424668021449.a n = A080861 n

end A080861

/-! ## A080861.P5533043672460252611

`abs((n-2*A016777(n))*3*n-1)`
-/

namespace A080861.P5533043672460252611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 2 * A016777 n) * (3 * n : ℤ) - 1|

end

end A080861.P5533043672460252611

namespace A080861

/-- `abs((n-2*A016777(n))*3*n-1)` -/
def P5533043672460252611.Spec : Prop :=
  ∀ n, P5533043672460252611.a n = A080861 n

end A080861

/-! ## A080861.P6829043480779418821

`round(sqrt(A016816(n))-A005563(n))`
-/

namespace A080861.P6829043480779418821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A016816 n : ℝ) - (A005563 n : ℝ))

end

end A080861.P6829043480779418821

namespace A080861

/-- `round(sqrt(A016816(n))-A005563(n))` -/
def P6829043480779418821.Spec : Prop :=
  ∀ n, P6829043480779418821.a n = A080861 n

end A080861

/-! ## A080861.P16303137995045992763

`or(A272039(n)+A168668(n), A003982(n))`
-/

namespace A080861.P16303137995045992763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A272039 n + A168668 n) (A003982 n)

end

end A080861.P16303137995045992763

namespace A080861

/-- `or(A272039(n)+A168668(n), A003982(n))` -/
def P16303137995045992763.Spec : Prop :=
  ∀ n, P16303137995045992763.a n = A080861 n

end A080861

/-! ## A080861.P13987120567232648934

`(A158463(n)+A080663(n+1))%A201121(n+1)`
-/

namespace A080861.P13987120567232648934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 n + A080663 (n + 1)) (A201121 (n + 1))

end

end A080861.P13987120567232648934

namespace A080861

/-- `(A158463(n)+A080663(n+1))%A201121(n+1)` -/
def P13987120567232648934.Spec : Prop :=
  ∀ n, P13987120567232648934.a n = A080861 n

end A080861

/-! ## A080861.P4611958016564087037

`Δ[A135503(n)+A006566(n)]`
-/

namespace A080861.P4611958016564087037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A006566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080861.P4611958016564087037

namespace A080861

/-- `Δ[A135503(n)+A006566(n)]` -/
def P4611958016564087037.Spec : Prop :=
  ∀ n, P4611958016564087037.a n = A080861 n

end A080861

/-! ## A080861.P2811438930854985539

`∑[A008592(comp[A032766(n+1)])+1]`
-/

namespace A080861.P2811438930854985539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080861.P2811438930854985539

namespace A080861

/-- `∑[A008592(comp[A032766(n+1)])+1]` -/
def P2811438930854985539.Spec : Prop :=
  ∀ n, P2811438930854985539.a n = A080861 n

end A080861

/-! ## A080861.P16209797198494866571

`∑[A087446(A131055(or(1, 5*n)-n))]`
-/

namespace A080861.P16209797198494866571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087446 (A131055 (Nat.lor 1 (5 * n) - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080861.P16209797198494866571

namespace A080861

/-- `∑[A087446(A131055(or(1, 5*n)-n))]` -/
def P16209797198494866571.Spec : Prop :=
  ∀ n, P16209797198494866571.a n = A080861 n

end A080861

/-! ## A080861.P5553366906220094392

`A158138(A008458(n))`
-/

namespace A080861.P5553366906220094392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158138 (A008458 n).toNat

end

end A080861.P5553366906220094392

namespace A080861

/-- `A158138(A008458(n))` -/
def P5553366906220094392.Spec : Prop :=
  ∀ n, P5553366906220094392.a n = A080861 n

end A080861

/-! ## A080861.P5419501874929792114

`A025776(30*n)`
-/

namespace A080861.P5419501874929792114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025776 (30 * n)

end

end A080861.P5419501874929792114

namespace A080861

/-- `A025776(30*n)` -/
def P5419501874929792114.Spec : Prop :=
  ∀ n, P5419501874929792114.a n = A080861 n

end A080861

/-! ## A080861.P591359111108990154

`A000027(A144459(n)-2*n)`
-/

namespace A080861.P591359111108990154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A144459 n - (2 * n : ℤ)).toNat

end

end A080861.P591359111108990154

namespace A080861

/-- `A000027(A144459(n)-2*n)` -/
def P591359111108990154.Spec : Prop :=
  ∀ n, P591359111108990154.a n = A080861 n

end A080861

/-! ## A080861.P3619040041400116345

`A025812(4*3*5*n)`
-/

namespace A080861.P3619040041400116345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (4 * (3 * (5 * n)))

end

end A080861.P3619040041400116345

namespace A080861

/-- `A025812(4*3*5*n)` -/
def P3619040041400116345.Spec : Prop :=
  ∀ n, P3619040041400116345.a n = A080861 n

end A080861

/-!
# A080862: Numbers which can be expressed as the sum of two distinct primes in exactly six ways.

The programs for A080862, there is no canonical definition to state claims against.
-/

/-! ## A080862.P2234658766405937880

`eq[6, A117929(n+1)]+1`
-/

namespace A080862.P2234658766405937880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080862.P2234658766405937880

/-! ## A080862.P4969975438037635751

`2*(eq[6, A061357(n+1)]+1)`
-/

namespace A080862.P4969975438037635751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A080862.P4969975438037635751

/-! ## A080862.P4796957428204510875

`eq[2, A307968(A002126(n))]`
-/

namespace A080862.P4796957428204510875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307968 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080862.P4796957428204510875

/-! ## A080862.P11024579080559698189

`eq[6, A117929(A028310(n))]`
-/

namespace A080862.P11024579080559698189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080862.P11024579080559698189

/-! ## A080862.P13528364232693438353

`A011760(eq[6, A117929(n+1)])`
-/

namespace A080862.P13528364232693438353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080862.P13528364232693438353

/-!
# A080863: Numbers n such that spf(n)-2 = spf(n+2), where spf=A020639 (smallest prime factor).

The programs for A080863, there is no canonical definition to state claims against.
-/

/-! ## A080863.P2993354358457521935

`A080864(n+1)-2`
-/

namespace A080863.P2993354358457521935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080864 (n + 1) - 2

end

end A080863.P2993354358457521935

/-! ## A080863.P15189374793124007265

`A165872(A077800(n+1))+A080864(n+1)`
-/

namespace A080863.P15189374793124007265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A077800 (n + 1)).toNat + A080864 (n + 1)

end

end A080863.P15189374793124007265

/-! ## A080863.P10619169735018728386

`A023444(A080864(n+1))`
-/

namespace A080863.P10619169735018728386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080864 (n + 1)).toNat

end

end A080863.P10619169735018728386

/-! ## A080863.P17799870806010037291

`A023446(A080864(n+1)+2)`
-/

namespace A080863.P17799870806010037291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A080864 (n + 1) + 2).toNat

end

end A080863.P17799870806010037291

/-! ## A080863.P11408887606802920922

`A023443(xor(1, A080864(n+1)))`
-/

namespace A080863.P11408887606802920922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.xor 1 (A080864 (n + 1))).toNat

end

end A080863.P11408887606802920922

/-! ## A080863.P8668950575962381600

`A114284(A080864(n+1)+1)+A080864(n+1)`
-/

namespace A080863.P8668950575962381600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 (A080864 (n + 1) + 1).toNat + A080864 (n + 1)

end

end A080863.P8668950575962381600

/-! ## A080863.P2950024750149895133

`A306653(A140564(n+1))+A080864(n+1)`
-/

namespace A080863.P2950024750149895133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306653 (A140564 (n + 1)).toNat + A080864 (n + 1)

end

end A080863.P2950024750149895133

/-! ## A080863.P8040940335122507289

`A327276(A058020(n+1))+A080864(n+1)`
-/

namespace A080863.P8040940335122507289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (A058020 (n + 1)).toNat + A080864 (n + 1)

end

end A080863.P8040940335122507289

/-! ## A080863.P3558685334781675963

`A114284(A072154(xor(1, n²)))+A080864(n+1)`
-/

namespace A080863.P3558685334781675963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 (A072154 (Nat.xor 1 (n ^ 2))).toNat + A080864 (n + 1)

end

end A080863.P3558685334781675963

/-!
# A080864: Numbers n such that spf(n)+2 = spf(n-2), where spf=A020639 (smallest prime factor).

The programs for A080864, there is no canonical definition to state claims against.
-/

/-! ## A080864.P820039032158526926

`A080863(n+1)+2`
-/

namespace A080864.P820039032158526926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080863 (n + 1) + 2

end

end A080864.P820039032158526926

/-! ## A080864.P14551939708018134766

`A009056(A080863(n+1))`
-/

namespace A080864.P14551939708018134766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A080863 (n + 1)).toNat

end

end A080864.P14551939708018134766

/-! ## A080864.P5939161675566748867

`eq[A020639(n+2)+2, A020639(A233583(n+1))]+2`
-/

namespace A080864.P5939161675566748867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A080864.P5939161675566748867

/-!
# A080869: a(n+1) = floor( (a(n) + 1)^(1 + 1/n) ), with a(1) = 1.

The programs for A080869, the canonical program `A080869.P3618680052607912243` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080869 has offset 1).

The definition of A080869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080869.P3618680052607912243

`floor((a(n-1)+1)^((n+1)/n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080869

/-- `floor((a(n-1)+1)^((n+1)/n))` -/
def P3618680052607912243.Spec : Prop :=
  ∀ n, P3618680052607912243.a n = A080869 (n + 1)

theorem P3618680052607912243.correct : P3618680052607912243.Spec := by
  intro n
  simp only [A080869, Nat.add_sub_cancel]

end A080869

/-! ## A080869.P4341164096584057690

`∑[A065475(A084798(n))]`
-/

namespace A080869.P4341164096584057690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A084798 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080869.P4341164096584057690

namespace A080869

/-- `∑[A065475(A084798(n))]` -/
def P4341164096584057690.Spec : Prop :=
  ∀ n, P4341164096584057690.a n = A080869 (n + 1)

end A080869

/-! ## A080869.P12253186554076393159

`A018914(n)-A011655(A146641(n+1))`
-/

namespace A080869.P12253186554076393159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018914 n - A011655 (A146641 (n + 1)).toNat

end

end A080869.P12253186554076393159

namespace A080869

/-- `A018914(n)-A011655(A146641(n+1))` -/
def P12253186554076393159.Spec : Prop :=
  ∀ n, P12253186554076393159.a n = A080869 (n + 1)

end A080869

/-! ## A080869.P8428853982180144964

`A018914(n)-A228039(4^n)`
-/

namespace A080869.P8428853982180144964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018914 n - A228039 (4 ^ n)

end

end A080869.P8428853982180144964

namespace A080869

/-- `A018914(n)-A228039(4^n)` -/
def P8428853982180144964.Spec : Prop :=
  ∀ n, P8428853982180144964.a n = A080869 (n + 1)

end A080869

/-! ## A080869.P2352468308582456219

`(A018914(n)-1)%A334333(2*n+1)`
-/

namespace A080869.P2352468308582456219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018914 n - 1) (A334333 (2 * n + 1))

end

end A080869.P2352468308582456219

namespace A080869

/-- `(A018914(n)-1)%A334333(2*n+1)` -/
def P2352468308582456219.Spec : Prop :=
  ∀ n, P2352468308582456219.a n = A080869 (n + 1)

end A080869

/-!
# A080870: a(n+1) is smallest number with a(n+1)^n > (a(n)+1)^(n+1), with a(1)=1.

The programs for A080870, the canonical program `A080870.P16649772531557653049` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080870 has offset 1).

The definition of A080870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080870.P16649772531557653049

`floor((a(n-1)+1)^((n+1)/n))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080870

/-- `floor((a(n-1)+1)^((n+1)/n))+1` -/
def P16649772531557653049.Spec : Prop :=
  ∀ n, P16649772531557653049.a n = A080870 (n + 1)

theorem P16649772531557653049.correct : P16649772531557653049.Spec := by
  intro n
  simp only [A080870, Nat.add_sub_cancel]

end A080870

/-! ## A080870.P193356900840987988

`A065475(floor((a(n-1)+1)^((n+1)/n)))` with `a(0)=1`
-/

namespace A080870.P193356900840987988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065475 ⌊(a (n - 1) + 1 : ℝ) ^ ((n + 1 : ℚ) / (n : ℚ) : ℝ)⌋.toNat

end

end A080870.P193356900840987988

namespace A080870

/-- `A065475(floor((a(n-1)+1)^((n+1)/n)))` -/
def P193356900840987988.Spec : Prop :=
  ∀ n, P193356900840987988.a n = A080870 (n + 1)

end A080870

/-! ## A080870.P13432090921144715334

`A094768(2*n+3)-A276625(A178963(n))`
-/

namespace A080870.P13432090921144715334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094768 (2 * n + 3) - A276625 (A178963 n).toNat

end

end A080870.P13432090921144715334

namespace A080870

/-- `A094768(2*n+3)-A276625(A178963(n))` -/
def P13432090921144715334.Spec : Prop :=
  ∀ n, P13432090921144715334.a n = A080870 (n + 1)

end A080870

/-!
# A080871: a(n)*a(n+3) - a(n+1)*a(n+2) = 3, given a(0)=a(1)=1, a(2)=4.

The programs for A080871, the canonical program `A080871.P5351954291107781830` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080871 has offset 0).

The definition of A080871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080871.P5351954291107781830

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080871

/-- `8*a(n-2)-a(n-4)` -/
def P5351954291107781830.Spec : Prop :=
  ∀ n, P5351954291107781830.a n = A080871 n

theorem P5351954291107781830.correct : P5351954291107781830.Spec := by
  intro n
  simp only [A080871]

end A080871

/-! ## A080871.P6742024529543838368

`A237262(n+1)-A041023(n)%A199336(n+1)`
-/

namespace A080871.P6742024529543838368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) - Int.tmod (A041023 n) (A199336 (n + 1))

end

end A080871.P6742024529543838368

namespace A080871

/-- `A237262(n+1)-A041023(n)%A199336(n+1)` -/
def P6742024529543838368.Spec : Prop :=
  ∀ n, P6742024529543838368.a n = A080871 n

end A080871

/-! ## A080871.P7855822227821554873

`gcd(A001090(n), A105045(2*n+1))`
-/

namespace A080871.P7855822227821554873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001090 n) (A105045 (2 * n + 1))

end

end A080871.P7855822227821554873

namespace A080871

/-- `gcd(A001090(n), A105045(2*n+1))` -/
def P7855822227821554873.Spec : Prop :=
  ∀ n, (P7855822227821554873.a n : ℤ) = A080871 n

end A080871

/-! ## A080871.P5705277682354556227

`gcd(A105045(2*n), A105045(A005408(n)))`
-/

namespace A080871.P5705277682354556227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105045 (2 * n)) (A105045 (A005408 n).toNat)

end

end A080871.P5705277682354556227

namespace A080871

/-- `gcd(A105045(2*n), A105045(A005408(n)))` -/
def P5705277682354556227.Spec : Prop :=
  ∀ n, (P5705277682354556227.a n : ℤ) = A080871 n

end A080871

/-! ## A080871.P2262089142667833427

`gcd(A001090(n), A182432(n))`
-/

namespace A080871.P2262089142667833427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001090 n) (A182432 n)

end

end A080871.P2262089142667833427

namespace A080871

/-- `gcd(A001090(n), A182432(n))` -/
def P2262089142667833427.Spec : Prop :=
  ∀ n, (P2262089142667833427.a n : ℤ) = A080871 n

end A080871

/-!
# A080872: a(n)*a(n+3) - a(n+1)*a(n+2) = 4, given a(0)=a(1)=1, a(2)=5.

The programs for A080872, the canonical program `A080872.P6967931245012140735` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080872 has offset 0).

The definition of A080872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080872.P6967931245012140735

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080872

/-- `10*a(n-2)-a(n-4)` -/
def P6967931245012140735.Spec : Prop :=
  ∀ n, P6967931245012140735.a n = A080872 n

theorem P6967931245012140735.correct : P6967931245012140735.Spec := by
  intro n
  simp only [A080872]

end A080872

/-! ## A080872.P16340030361718562812

`Δ[A129444(n+1)]`
-/

namespace A080872.P16340030361718562812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080872.P16340030361718562812

namespace A080872

/-- `Δ[A129444(n+1)]` -/
def P16340030361718562812.Spec : Prop :=
  ∀ n, P16340030361718562812.a n = A080872 n

end A080872

/-! ## A080872.P4101978064122722508

`A129444(n+2)-A129444(n+1)`
-/

namespace A080872.P4101978064122722508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (n + 2) - A129444 (n + 1)

end

end A080872.P4101978064122722508

namespace A080872

/-- `A129444(n+2)-A129444(n+1)` -/
def P4101978064122722508.Spec : Prop :=
  ∀ n, P4101978064122722508.a n = A080872 n

end A080872

/-! ## A080872.P17613959575223411902

`Δ[A136331(n)/3]`
-/

namespace A080872.P17613959575223411902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136331 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080872.P17613959575223411902

namespace A080872

/-- `Δ[A136331(n)/3]` -/
def P17613959575223411902.Spec : Prop :=
  ∀ n, P17613959575223411902.a n = (A080872 n : ℚ)

end A080872

/-! ## A080872.P18083258565490898165

`2*A080806(n+1)-Δ[A233450(n+1)]`
-/

namespace A080872.P18083258565490898165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080806 (n + 1) - (f1 (n + 1) - f1 n)

end

end A080872.P18083258565490898165

namespace A080872

/-- `2*A080806(n+1)-Δ[A233450(n+1)]` -/
def P18083258565490898165.Spec : Prop :=
  ∀ n, P18083258565490898165.a n = A080872 n

end A080872

/-! ## A080872.P12292285066538577934

`A233450(n+1)-(A077291(n)-2*A077288(n)-1)`
-/

namespace A080872.P12292285066538577934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 1) - (A077291 n - 2 * A077288 n - 1)

end

end A080872.P12292285066538577934

namespace A080872

/-- `A233450(n+1)-(A077291(n)-2*A077288(n)-1)` -/
def P12292285066538577934.Spec : Prop :=
  ∀ n, P12292285066538577934.a n = A080872 n

end A080872

/-! ## A080872.P14773904830865002251

`A233450(n+1)-((A180483(n)-1)%A181442(n)-1)`
-/

namespace A080872.P14773904830865002251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 1) - (Int.tmod (A180483 n - 1) (A181442 n) - 1)

end

end A080872.P14773904830865002251

namespace A080872

/-- `A233450(n+1)-((A180483(n)-1)%A181442(n)-1)` -/
def P14773904830865002251.Spec : Prop :=
  ∀ n, P14773904830865002251.a n = A080872 n

end A080872

/-! ## A080872.P8826797492026090635

`Δ[A077291(n)-A080806(n+1)]`
-/

namespace A080872.P8826797492026090635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 n - A080806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080872.P8826797492026090635

namespace A080872

/-- `Δ[A077291(n)-A080806(n+1)]` -/
def P8826797492026090635.Spec : Prop :=
  ∀ n, P8826797492026090635.a n = A080872 n

end A080872

/-! ## A080872.P707712902076833209

`Δ[A077291(n)-2*A077288(n)]`
-/

namespace A080872.P707712902076833209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077291 n - 2 * A077288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080872.P707712902076833209

namespace A080872

/-- `Δ[A077291(n)-2*A077288(n)]` -/
def P707712902076833209.Spec : Prop :=
  ∀ n, P707712902076833209.a n = A080872 n

end A080872

/-! ## A080872.P9907516883828178814

`Δ[A041006(n)]%Δ[A080806(n+1)]`
-/

namespace A080872.P9907516883828178814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A080872.P9907516883828178814

namespace A080872

/-- `Δ[A041006(n)]%Δ[A080806(n+1)]` -/
def P9907516883828178814.Spec : Prop :=
  ∀ n, P9907516883828178814.a n = A080872 n

end A080872

/-! ## A080872.P18122830147834534707

`Δ[A165517(n+1)]%Δ[A080806(n+1)]`
-/

namespace A080872.P18122830147834534707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A080872.P18122830147834534707

namespace A080872

/-- `Δ[A165517(n+1)]%Δ[A080806(n+1)]` -/
def P18122830147834534707.Spec : Prop :=
  ∀ n, P18122830147834534707.a n = A080872 n

end A080872

/-! ## A080872.P4130472971325767970

`A054318(n)/a(n-1)` with `a(0)=1`
-/

namespace A080872.P4130472971325767970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A054318 n : ℚ) / a (n - 1)

end

end A080872.P4130472971325767970

namespace A080872

/-- `A054318(n)/a(n-1)` -/
def P4130472971325767970.Spec : Prop :=
  ∀ n, P4130472971325767970.a n = (A080872 n : ℚ)

end A080872

/-! ## A080872.P13115175412373008750

`gcd(A004189(n), A171640(n+1))`
-/

namespace A080872.P13115175412373008750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004189 n) (A171640 (n + 1))

end

end A080872.P13115175412373008750

namespace A080872

/-- `gcd(A004189(n), A171640(n+1))` -/
def P13115175412373008750.Spec : Prop :=
  ∀ n, (P13115175412373008750.a n : ℤ) = A080872 n

end A080872

/-! ## A080872.P13454854958760970746

`gcd(A004189(n), A181442(A004273(n)))`
-/

namespace A080872.P13454854958760970746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004189 n) (A181442 (A004273 n).toNat)

end

end A080872.P13454854958760970746

namespace A080872

/-- `gcd(A004189(n), A181442(A004273(n)))` -/
def P13454854958760970746.Spec : Prop :=
  ∀ n, (P13454854958760970746.a n : ℤ) = A080872 n

end A080872

/-! ## A080872.P12203126480590324143

`gcd(A054318(n+1), A122652(n))`
-/

namespace A080872.P12203126480590324143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054318 (n + 1)) (A122652 n)

end

end A080872.P12203126480590324143

namespace A080872

/-- `gcd(A054318(n+1), A122652(n))` -/
def P12203126480590324143.Spec : Prop :=
  ∀ n, (P12203126480590324143.a n : ℤ) = A080872 n

end A080872

/-! ## A080872.P2701099505002503384

`gcd(A181442(2*n+1)-A004189(n+1), A181442(2*n))`
-/

namespace A080872.P2701099505002503384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181442 (2 * n + 1) - A004189 (n + 1)) (A181442 (2 * n))

end

end A080872.P2701099505002503384

namespace A080872

/-- `gcd(A181442(2*n+1)-A004189(n+1), A181442(2*n))` -/
def P2701099505002503384.Spec : Prop :=
  ∀ n, (P2701099505002503384.a n : ℤ) = A080872 n

end A080872

/-!
# A080873: a(n)*a(n+3) - a(n+1)*a(n+2) = 5, given a(0)=a(1)=1, a(2)=2.

The programs for A080873, the canonical program `A080873.P13654955056398525867` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080873 has offset 0).

The definition of A080873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080873.P13654955056398525867

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080873

/-- `10*a(n-2)-a(n-4)` -/
def P13654955056398525867.Spec : Prop :=
  ∀ n, P13654955056398525867.a n = A080873 n

theorem P13654955056398525867.correct : P13654955056398525867.Spec := by
  intro n
  simp only [A080873]

end A080873

/-! ## A080873.P11486783998551040271

`a(n-1)*A010702(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A080873.P11486783998551040271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A010702 n - a (n - 2)

end

end A080873.P11486783998551040271

namespace A080873

/-- `a(n-1)*A010702(n)-a(n-2)` -/
def P11486783998551040271.Spec : Prop :=
  ∀ n, P11486783998551040271.a n = A080873 n

end A080873

/-! ## A080873.P10728089391535481455

`A080874(n)-A004189(A004526(n))`
-/

namespace A080873.P10728089391535481455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 n - A004189 (A004526 n).toNat

end

end A080873.P10728089391535481455

namespace A080873

/-- `A080874(n)-A004189(A004526(n))` -/
def P10728089391535481455.Spec : Prop :=
  ∀ n, P10728089391535481455.a n = A080873 n

end A080873

/-! ## A080873.P4667546405927889853

`A152450(n)-A001078(A142150(n))`
-/

namespace A080873.P4667546405927889853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152450 n - A001078 (A142150 n).toNat

end

end A080873.P4667546405927889853

namespace A080873

/-- `A152450(n)-A001078(A142150(n))` -/
def P4667546405927889853.Spec : Prop :=
  ∀ n, P4667546405927889853.a n = A080873 n

end A080873

/-! ## A080873.P17005471356927255556

`2*A080872(n)-A152448(n)-A001078(A142150(n))`
-/

namespace A080873.P17005471356927255556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080872 n - A152448 n - A001078 (A142150 n).toNat

end

end A080873.P17005471356927255556

namespace A080873

/-- `2*A080872(n)-A152448(n)-A001078(A142150(n))` -/
def P17005471356927255556.Spec : Prop :=
  ∀ n, P17005471356927255556.a n = A080873 n

end A080873

/-! ## A080873.P13872377613709602872

`∑[A140781(n)]/A085376(n+1)`
-/

namespace A080873.P13872377613709602872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140781 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A085376 (n + 1) : ℚ)

end

end A080873.P13872377613709602872

namespace A080873

/-- `∑[A140781(n)]/A085376(n+1)` -/
def P13872377613709602872.Spec : Prop :=
  ∀ n, P13872377613709602872.a n = (A080873 n : ℚ)

end A080873

/-!
# A080874: a(n)*a(n+3) - a(n+1)*a(n+2) = 5, given a(0)=a(1)=1, a(2)=3.

The programs for A080874, the canonical program `A080874.P2681462505490945935` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080874 has offset 0).

The definition of A080874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080874.P2681462505490945935

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080874

/-- `10*a(n-2)-a(n-4)` -/
def P2681462505490945935.Spec : Prop :=
  ∀ n, P2681462505490945935.a n = A080874 n

theorem P2681462505490945935.correct : P2681462505490945935.Spec := by
  intro n
  simp only [A080874]

end A080874

/-! ## A080874.P2601550276781758782

`A080873(n)+A004189(A004526(n))`
-/

namespace A080874.P2601550276781758782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 n + A004189 (A004526 n).toNat

end

end A080874.P2601550276781758782

namespace A080874

/-- `A080873(n)+A004189(A004526(n))` -/
def P2601550276781758782.Spec : Prop :=
  ∀ n, P2601550276781758782.a n = A080874 n

end A080874

/-! ## A080874.P8452444771243054739

`A041007(n)+A080873(n)-A129445(n+1)`
-/

namespace A080874.P8452444771243054739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 n + (A080873 n - A129445 (n + 1))

end

end A080874.P8452444771243054739

namespace A080874

/-- `A041007(n)+A080873(n)-A129445(n+1)` -/
def P8452444771243054739.Spec : Prop :=
  ∀ n, P8452444771243054739.a n = A080874 n

end A080874

/-! ## A080874.P3335619102147174465

`A259595(n)%A077410(A028310(n))`
-/

namespace A080874.P3335619102147174465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259595 n) (A077410 (A028310 n).toNat)

end

end A080874.P3335619102147174465

namespace A080874

/-- `A259595(n)%A077410(A028310(n))` -/
def P3335619102147174465.Spec : Prop :=
  ∀ n, P3335619102147174465.a n = A080874 n

end A080874

/-! ## A080874.P14414158776974002730

`A080873(n+1)+A080873(n+1)-A085376(n+1)`
-/

namespace A080874.P14414158776974002730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (n + 1) + (A080873 (n + 1) - A085376 (n + 1))

end

end A080874.P14414158776974002730

namespace A080874

/-- `A080873(n+1)+A080873(n+1)-A085376(n+1)` -/
def P14414158776974002730.Spec : Prop :=
  ∀ n, P14414158776974002730.a n = A080874 n

end A080874

/-! ## A080874.P1543066360064069761

`A080873(n+3)%Δ[A074061(n)]`
-/

namespace A080874.P1543066360064069761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080873 (n + 3)) (f1 (n + 1) - f1 n)

end

end A080874.P1543066360064069761

namespace A080874

/-- `A080873(n+3)%Δ[A074061(n)]` -/
def P1543066360064069761.Spec : Prop :=
  ∀ n, P1543066360064069761.a n = A080874 n

end A080874

/-!
# A080875: a(n)*a(n+3) - a(n+1)*a(n+2) = 5, given a(0)=a(1)=1, a(2)=6.

The programs for A080875, there is no canonical definition to state claims against.
-/

/-! ## A080875.P3188672804834285152

`(a(n-1)*a(n-2)+5)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A080875.P3188672804834285152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  (a (n - 1) * a (n - 2) + 5) / a (n - 3)

end

end A080875.P3188672804834285152

/-! ## A080875.P9046009107032951495

`A253621(n)/a(n-1)` with `a(0)=1`
-/

namespace A080875.P9046009107032951495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A253621 n : ℚ) / a (n - 1)

end

end A080875.P9046009107032951495

/-! ## A080875.P14844853089121755925

`gcd(∑[A023038(n)], A253621(n+1))`
-/

namespace A080875.P14844853089121755925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A253621 (n + 1))

end

end A080875.P14844853089121755925

/-! ## A080875.P1522989813184142260

`gcd(A041059(A004273(n)), A133272(n+1))`
-/

namespace A080875.P1522989813184142260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041059 (A004273 n).toNat) (A133272 (n + 1))

end

end A080875.P1522989813184142260

/-! ## A080875.P6404415174282628254

`gcd(A023038(n)+1, ceil(A041059(2*n)/2))`
-/

namespace A080875.P6404415174282628254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023038 n + 1) ⌈(A041059 (2 * n) : ℚ) / 2⌉

end

end A080875.P6404415174282628254

/-!
# A080876: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0) = 1, a(1) = 1, and a(2) = 1.

The programs for A080876, the canonical program `A080876.P2438473256737132746` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080876 has offset 0).

The definition of A080876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080876.P2438473256737132746

`4*(2*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080876

/-- `4*(2*a(n-2)-a(n-4))` -/
def P2438473256737132746.Spec : Prop :=
  ∀ n, P2438473256737132746.a n = A080876 n

theorem P2438473256737132746.correct : P2438473256737132746.Spec := by
  intro n
  simp only [A080876]

end A080876

/-! ## A080876.P12646489625662600992

`abs(A080040(n)-A080882(n))`
-/

namespace A080876.P12646489625662600992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080040 n - A080882 n|

end

end A080876.P12646489625662600992

namespace A080876

/-- `abs(A080040(n)-A080882(n))` -/
def P12646489625662600992.Spec : Prop :=
  ∀ n, P12646489625662600992.a n = A080876 n

end A080876

/-! ## A080876.P5749726248111178156

`(A080040(n)-A080882(n))*A033999(n)`
-/

namespace A080876.P5749726248111178156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080040 n - A080882 n) * A033999 n

end

end A080876.P5749726248111178156

namespace A080876

/-- `(A080040(n)-A080882(n))*A033999(n)` -/
def P5749726248111178156.Spec : Prop :=
  ∀ n, P5749726248111178156.a n = A080876 n

end A080876

/-! ## A080876.P6734254790141202225

`(A080040(n)-A080882(n))*A057077(2*n)`
-/

namespace A080876.P6734254790141202225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080040 n - A080882 n) * A057077 (2 * n)

end

end A080876.P6734254790141202225

namespace A080876

/-- `(A080040(n)-A080882(n))*A057077(2*n)` -/
def P6734254790141202225.Spec : Prop :=
  ∀ n, P6734254790141202225.a n = A080876 n

end A080876

/-! ## A080876.P6412770766917707699

`(A080040(n)-A080882(n))*(A109499(n)-A015521(n))`
-/

namespace A080876.P6412770766917707699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080040 n - A080882 n) * (A109499 n - A015521 n)

end

end A080876.P6412770766917707699

namespace A080876

/-- `(A080040(n)-A080882(n))*(A109499(n)-A015521(n))` -/
def P6412770766917707699.Spec : Prop :=
  ∀ n, P6412770766917707699.a n = A080876 n

end A080876

/-! ## A080876.P5290042438496688636

`A094433(n)/A182522(n)`
-/

namespace A080876.P5290042438496688636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094433 n : ℚ) / (A182522 n : ℚ)

end

end A080876.P5290042438496688636

namespace A080876

/-- `A094433(n)/A182522(n)` -/
def P5290042438496688636.Spec : Prop :=
  ∀ n, P5290042438496688636.a n = (A080876 n : ℚ)

end A080876

/-!
# A080877: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0)=1, a(1)=1, a(2)=2.

The programs for A080877, the canonical program `A080877.P8771896507845911148` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080877 has offset 0).

The definition of A080877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080877.P8771896507845911148

`6*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080877

/-- `6*a(n-2)-4*a(n-4)` -/
def P8771896507845911148.Spec : Prop :=
  ∀ n, P8771896507845911148.a n = A080877 n

theorem P8771896507845911148.correct : P8771896507845911148.Spec := by
  intro n
  simp only [A080877]

end A080877

/-! ## A080877.P8815462984702831171

`A080878(n)-A084326(A004526(n))`
-/

namespace A080877.P8815462984702831171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 n - A084326 (A004526 n).toNat

end

end A080877.P8815462984702831171

namespace A080877

/-- `A080878(n)-A084326(A004526(n))` -/
def P8815462984702831171.Spec : Prop :=
  ∀ n, P8815462984702831171.a n = A080877 n

end A080877

/-! ## A080877.P17982595340420743186

`A016116(n+1)/2*A005247(n)-A084326(A004526(n))`
-/

namespace A080877.P17982595340420743186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) / 2 * (A005247 n : ℚ) - (A084326 (A004526 n).toNat : ℚ)

end

end A080877.P17982595340420743186

namespace A080877

/-- `A016116(n+1)/2*A005247(n)-A084326(A004526(n))` -/
def P17982595340420743186.Spec : Prop :=
  ∀ n, P17982595340420743186.a n = (A080877 n : ℚ)

end A080877

/-!
# A080878: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0)=1, a(1)=1, a(2)=3.

The programs for A080878, the canonical program `A080878.P2200094174464789267` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080878 has offset 0).

The definition of A080878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080878.P2200094174464789267

`6*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080878

/-- `6*a(n-2)-4*a(n-4)` -/
def P2200094174464789267.Spec : Prop :=
  ∀ n, P2200094174464789267.a n = A080878 n

theorem P2200094174464789267.correct : P2200094174464789267.Spec := by
  intro n
  simp only [A080878]

end A080878

/-! ## A080878.P17574208089240816606

`2*floor(ϕ²*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A080878.P17574208089240816606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A080878.P17574208089240816606

namespace A080878

/-- `2*floor(ϕ²*a(n-2))` -/
def P17574208089240816606.Spec : Prop :=
  ∀ n, P17574208089240816606.a n = A080878 n

end A080878

/-! ## A080878.P6773298257745054849

`A016116(n+1)/2*A005247(n)`
-/

namespace A080878.P6773298257745054849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) / 2 * (A005247 n : ℚ)

end

end A080878.P6773298257745054849

namespace A080878

/-- `A016116(n+1)/2*A005247(n)` -/
def P6773298257745054849.Spec : Prop :=
  ∀ n, P6773298257745054849.a n = (A080878 n : ℚ)

end A080878

/-! ## A080878.P7871141957824960967

`A080877(n+1)/A000034(n)`
-/

namespace A080878.P7871141957824960967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080877 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A080878.P7871141957824960967

namespace A080878

/-- `A080877(n+1)/A000034(n)` -/
def P7871141957824960967.Spec : Prop :=
  ∀ n, P7871141957824960967.a n = (A080878 n : ℚ)

end A080878

/-! ## A080878.P11332352072291898374

`A080877(n+1)/A080879(n+1)*A080882(n)`
-/

namespace A080878.P11332352072291898374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080877 (n + 1) : ℚ) / (A080879 (n + 1) : ℚ) * (A080882 n : ℚ)

end

end A080878.P11332352072291898374

namespace A080878

/-- `A080877(n+1)/A080879(n+1)*A080882(n)` -/
def P11332352072291898374.Spec : Prop :=
  ∀ n, P11332352072291898374.a n = (A080878 n : ℚ)

end A080878

/-!
# A080879: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0)=1, a(1)=1, a(2)=6.

The programs for A080879, the canonical program `A080879.P11083065937678121648` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080879 has offset 0).

The definition of A080879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080879.P11083065937678121648

`floor(2*(sqrt(3)+2)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080879

/-- `floor(2*(sqrt(3)+2)*a(n-2))` -/
def P11083065937678121648.Spec : Prop :=
  ∀ n, P11083065937678121648.a n = A080879 n

theorem P11083065937678121648.correct : P11083065937678121648.Spec := by
  intro n
  simp only [A080879]

end A080879

/-! ## A080879.P18052697967345856671

`A080876(n+3)/A010694(n)`
-/

namespace A080879.P18052697967345856671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080876 (n + 3) : ℚ) / (A010694 n : ℚ)

end

end A080879.P18052697967345856671

namespace A080879

/-- `A080876(n+3)/A010694(n)` -/
def P18052697967345856671.Spec : Prop :=
  ∀ n, P18052697967345856671.a n = (A080879 n : ℚ)

end A080879

/-! ## A080879.P1379035257005774939

`A086405(n)/A074324(n+1)`
-/

namespace A080879.P1379035257005774939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n : ℚ) / (A074324 (n + 1) : ℚ)

end

end A080879.P1379035257005774939

namespace A080879

/-- `A086405(n)/A074324(n+1)` -/
def P1379035257005774939.Spec : Prop :=
  ∀ n, P1379035257005774939.a n = (A080879 n : ℚ)

end A080879

/-! ## A080879.P1865278277894461273

`A086405(n)/A166552(n+1)`
-/

namespace A080879.P1865278277894461273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n : ℚ) / (A166552 (n + 1) : ℚ)

end

end A080879.P1865278277894461273

namespace A080879

/-- `A086405(n)/A166552(n+1)` -/
def P1865278277894461273.Spec : Prop :=
  ∀ n, P1865278277894461273.a n = (A080879 n : ℚ)

end A080879

/-! ## A080879.P1594050119305090649

`A086405(n)/A211221(A065190(n+1))`
-/

namespace A080879.P1594050119305090649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n : ℚ) / (A211221 (A065190 (n + 1)).toNat : ℚ)

end

end A080879.P1594050119305090649

namespace A080879

/-- `A086405(n)/A211221(A065190(n+1))` -/
def P1594050119305090649.Spec : Prop :=
  ∀ n, P1594050119305090649.a n = (A080879 n : ℚ)

end A080879

/-! ## A080879.P15663920447859311099

`(A094434(n+1)+A094433(n+1))/A074324(n+1)`
-/

namespace A080879.P15663920447859311099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094434 (n + 1) + A094433 (n + 1) : ℚ) / (A074324 (n + 1) : ℚ)

end

end A080879.P15663920447859311099

namespace A080879

/-- `(A094434(n+1)+A094433(n+1))/A074324(n+1)` -/
def P15663920447859311099.Spec : Prop :=
  ∀ n, P15663920447859311099.a n = (A080879 n : ℚ)

end A080879

/-! ## A080879.P8720938905895318953

`(A206948(n+1)+A012781(n+1))/A074324(n+1)`
-/

namespace A080879.P8720938905895318953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206948 (n + 1) + A012781 (n + 1) : ℚ) / (A074324 (n + 1) : ℚ)

end

end A080879.P8720938905895318953

namespace A080879

/-- `(A206948(n+1)+A012781(n+1))/A074324(n+1)` -/
def P8720938905895318953.Spec : Prop :=
  ∀ n, P8720938905895318953.a n = (A080879 n : ℚ)

end A080879

/-!
# A080880: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0)=1, a(1)=2, a(2)=2.

The programs for A080880, the canonical program `A080880.P3591932084647429931` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080880 has offset 0).

The definition of A080880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080880.P3591932084647429931

`gcd(2, n)+4*(a(n-2)-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080880

/-- `gcd(2, n)+4*(a(n-2)-1)` -/
def P3591932084647429931.Spec : Prop :=
  ∀ n, P3591932084647429931.a n = A080880 n

theorem P3591932084647429931.correct : P3591932084647429931.Spec := by
  intro n
  simp only [A080880]

end A080880

/-! ## A080880.P8954270813689031306

`4*a(n-2)-(n%2+2)` with `a(0)=1, a(1)=2`
-/

namespace A080880.P8954270813689031306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) - ((n % 2 + 2 : ℕ) : ℤ)

end

end A080880.P8954270813689031306

namespace A080880

/-- `4*a(n-2)-(n%2+2)` -/
def P8954270813689031306.Spec : Prop :=
  ∀ n, P8954270813689031306.a n = A080880 n

end A080880

/-! ## A080880.P9900748373450642003

`A092808(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A080880.P9900748373450642003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092808 (n - 1) + a (n - 1)

end

end A080880.P9900748373450642003

namespace A080880

/-- `A092808(n-1)+a(n-1)` -/
def P9900748373450642003.Spec : Prop :=
  ∀ n, P9900748373450642003.a n = A080880 n

end A080880

/-! ## A080880.P233933962113408391

`∑[A001045(abs(A057077(2*n)+1-n))]`
-/

namespace A080880.P233933962113408391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 |A057077 (2 * n) + 1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080880.P233933962113408391

namespace A080880

/-- `∑[A001045(abs(A057077(2*n)+1-n))]` -/
def P233933962113408391.Spec : Prop :=
  ∀ n, P233933962113408391.a n = A080880 n

end A080880

/-! ## A080880.P580943890278005034

`∑[A001045(abs(A057077(2*n)-(n-1)))]`
-/

namespace A080880.P580943890278005034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 |A057077 (2 * n) - ((n : ℤ) - 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080880.P580943890278005034

namespace A080880

/-- `∑[A001045(abs(A057077(2*n)-(n-1)))]` -/
def P580943890278005034.Spec : Prop :=
  ∀ n, P580943890278005034.a n = A080880 n

end A080880

/-! ## A080880.P3490206109221183529

`A001045(n)+A005578(n)-A001045(A052928(n))`
-/

namespace A080880.P3490206109221183529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A005578 n - A001045 (A052928 n).toNat)

end

end A080880.P3490206109221183529

namespace A080880

/-- `A001045(n)+A005578(n)-A001045(A052928(n))` -/
def P3490206109221183529.Spec : Prop :=
  ∀ n, P3490206109221183529.a n = A080880 n

end A080880

/-! ## A080880.P8459611895327336295

`(2^n+2)/(gcd(2, n)+1)`
-/

namespace A080880.P8459611895327336295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) / (Nat.gcd 2 n + 1 : ℚ)

end

end A080880.P8459611895327336295

namespace A080880

/-- `(2^n+2)/(gcd(2, n)+1)` -/
def P8459611895327336295.Spec : Prop :=
  ∀ n, P8459611895327336295.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P11351402605902137847

`(2^n+2)/(3-n%2)`
-/

namespace A080880.P11351402605902137847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) / (3 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A080880.P11351402605902137847

namespace A080880

/-- `(2^n+2)/(3-n%2)` -/
def P11351402605902137847.Spec : Prop :=
  ∀ n, P11351402605902137847.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P334713585077333064

`(2^n+2)/(3-and(1, n))`
-/

namespace A080880.P334713585077333064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) / (3 - (Nat.land 1 n : ℤ) : ℚ)

end

end A080880.P334713585077333064

namespace A080880

/-- `(2^n+2)/(3-and(1, n))` -/
def P334713585077333064.Spec : Prop :=
  ∀ n, P334713585077333064.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P8695614535743527444

`(2^n+2)/xor(3, and(1, n))`
-/

namespace A080880.P8695614535743527444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) / (Nat.xor 3 (Nat.land 1 n) : ℚ)

end

end A080880.P8695614535743527444

namespace A080880

/-- `(2^n+2)/xor(3, and(1, n))` -/
def P8695614535743527444.Spec : Prop :=
  ∀ n, P8695614535743527444.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P106519564895411264

`floor(∑[4*a(n-2)]/3)` with `a(0)=4, a(1)=2, a(2)=1`
-/

namespace A080880.P106519564895411264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 1] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A080880.P106519564895411264

namespace A080880

/-- `floor(∑[4*a(n-2)]/3)` -/
def P106519564895411264.Spec : Prop :=
  ∀ n, P106519564895411264.a n = A080880 n

end A080880

/-! ## A080880.P12671866914233447943

`(2^n+2)/A010693(n+1)`
-/

namespace A080880.P12671866914233447943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) / (A010693 (n + 1) : ℚ)

end

end A080880.P12671866914233447943

namespace A080880

/-- `(2^n+2)/A010693(n+1)` -/
def P12671866914233447943.Spec : Prop :=
  ∀ n, P12671866914233447943.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P1788613353695372945

`(2^n+2)/(4-A176895(2*n))`
-/

namespace A080880.P1788613353695372945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℚ) / (4 - A176895 (2 * n) : ℚ)

end

end A080880.P1788613353695372945

namespace A080880

/-- `(2^n+2)/(4-A176895(2*n))` -/
def P1788613353695372945.Spec : Prop :=
  ∀ n, P1788613353695372945.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P15544444979441474360

`A084221(n)-A084184(n)`
-/

namespace A080880.P15544444979441474360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 n - A084184 n

end

end A080880.P15544444979441474360

namespace A080880

/-- `A084221(n)-A084184(n)` -/
def P15544444979441474360.Spec : Prop :=
  ∀ n, P15544444979441474360.a n = A080880 n

end A080880

/-! ## A080880.P299385565394859631

`A277955(n)-A136324(n)`
-/

namespace A080880.P299385565394859631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n - A136324 n

end

end A080880.P299385565394859631

namespace A080880

/-- `A277955(n)-A136324(n)` -/
def P299385565394859631.Spec : Prop :=
  ∀ n, P299385565394859631.a n = A080880 n

end A080880

/-! ## A080880.P5872691706882281804

`A052548(n)/A176059(n)`
-/

namespace A080880.P5872691706882281804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 n : ℚ) / (A176059 n : ℚ)

end

end A080880.P5872691706882281804

namespace A080880

/-- `A052548(n)/A176059(n)` -/
def P5872691706882281804.Spec : Prop :=
  ∀ n, P5872691706882281804.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P13424792927863570415

`A052548(n)/(A059841(n)+2)`
-/

namespace A080880.P13424792927863570415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 n : ℚ) / (A059841 n + 2 : ℚ)

end

end A080880.P13424792927863570415

namespace A080880

/-- `A052548(n)/(A059841(n)+2)` -/
def P13424792927863570415.Spec : Prop :=
  ∀ n, P13424792927863570415.a n = (A080880 n : ℚ)

end A080880

/-! ## A080880.P15544977065959679876

`∑[A092808(n)]+1-A092808(n)`
-/

namespace A080880.P15544977065959679876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A092808 n)

end

end A080880.P15544977065959679876

namespace A080880

/-- `∑[A092808(n)]+1-A092808(n)` -/
def P15544977065959679876.Spec : Prop :=
  ∀ n, P15544977065959679876.a n = A080880 n

end A080880

/-! ## A080880.P18252385539479452323

`A094359(n+1)+A094359(n)-A084184(n)`
-/

namespace A080880.P18252385539479452323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094359 (n + 1) + (A094359 n - A084184 n)

end

end A080880.P18252385539479452323

namespace A080880

/-- `A094359(n+1)+A094359(n)-A084184(n)` -/
def P18252385539479452323.Spec : Prop :=
  ∀ n, P18252385539479452323.a n = A080880 n

end A080880

/-!
# A080881: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0)=1, a(1)=2, a(2)=10.

The programs for A080881, there is no canonical definition to state claims against.
-/

/-! ## A080881.P12131527768098692346

`A153800(A324697(n+1))-A342096(n+3)`
-/

namespace A080881.P12131527768098692346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (A324697 (n + 1)).toNat - A342096 (n + 3)

end

end A080881.P12131527768098692346

/-!
# A080882: a(n)*a(n+3) - a(n+1)*a(n+2) = 2^n, given a(0)=1, a(1)=3, a(2)=7.

The programs for A080882, the canonical program `A080882.P8678678925857784112` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080882 has offset 0).

The definition of A080882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080882.P8678678925857784112

`8*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=22`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080882

/-- `8*a(n-2)-4*a(n-4)` -/
def P8678678925857784112.Spec : Prop :=
  ∀ n, P8678678925857784112.a n = A080882 n

theorem P8678678925857784112.correct : P8678678925857784112.Spec := by
  intro n
  simp only [A080882]

end A080882

/-! ## A080882.P1821552736990766958

`floor(2*(sqrt(3)+2)*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A080882.P1821552736990766958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊2 * ((Real.sqrt (3 : ℝ) + 2) * (a (n - 2) : ℝ))⌋

end

end A080882.P1821552736990766958

namespace A080882

/-- `floor(2*(sqrt(3)+2)*a(n-2))` -/
def P1821552736990766958.Spec : Prop :=
  ∀ n, P1821552736990766958.a n = A080882 n

end A080882

/-! ## A080882.P9835530934418337252

`A080879(n+1)/A000034(n)`
-/

namespace A080882.P9835530934418337252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080879 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A080882.P9835530934418337252

namespace A080882

/-- `A080879(n+1)/A000034(n)` -/
def P9835530934418337252.Spec : Prop :=
  ∀ n, P9835530934418337252.a n = (A080882 n : ℚ)

end A080882

/-! ## A080882.P5643665218759385355

`A080879(n+1)/Δ[A032766(n)]`
-/

namespace A080882.P5643665218759385355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080879 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A080882.P5643665218759385355

namespace A080882

/-- `A080879(n+1)/Δ[A032766(n)]` -/
def P5643665218759385355.Spec : Prop :=
  ∀ n, P5643665218759385355.a n = (A080882 n : ℚ)

end A080882

/-! ## A080882.P18107704767060537832

`A080879(n+1)/A329903(A000040(n+1))`
-/

namespace A080882.P18107704767060537832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080879 (n + 1) : ℚ) / (A329903 (A000040 (n + 1)).toNat : ℚ)

end

end A080882.P18107704767060537832

namespace A080882

/-- `A080879(n+1)/A329903(A000040(n+1))` -/
def P18107704767060537832.Spec : Prop :=
  ∀ n, P18107704767060537832.a n = (A080882 n : ℚ)

end A080882

/-! ## A080882.P1423510485309473652

`A080879(n+1)/A080877(n+1)*A080878(n)`
-/

namespace A080882.P1423510485309473652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080879 (n + 1) : ℚ) / (A080877 (n + 1) : ℚ) * (A080878 n : ℚ)

end

end A080882.P1423510485309473652

namespace A080882

/-- `A080879(n+1)/A080877(n+1)*A080878(n)` -/
def P1423510485309473652.Spec : Prop :=
  ∀ n, P1423510485309473652.a n = (A080882 n : ℚ)

end A080882

/-! ## A080882.P8864420653485322389

`A080876(n+4)/4`
-/

namespace A080882.P8864420653485322389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080876 (n + 4) : ℚ) / 4

end

end A080882.P8864420653485322389

namespace A080882

/-- `A080876(n+4)/4` -/
def P8864420653485322389.Spec : Prop :=
  ∀ n, P8864420653485322389.a n = (A080882 n : ℚ)

end A080882

/-!
# A080883: Distance of n to next square.

The programs for A080883, the canonical program `A080883.P9881556766966149884` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080883 has offset 0).

The definition of A080883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080883.P13977308134595163170

`∑[char[n²]]²-n`
-/

namespace A080883.P13977308134595163170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)

end

end A080883.P13977308134595163170

namespace A080883

/-- `∑[char[n²]]²-n` -/
def P13977308134595163170.Spec : Prop :=
  ∀ n, P13977308134595163170.a n = A080883 n

end A080883

/-! ## A080883.P9881556766966149884

`abs(A048761(n+1)-n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A080883

/-- `abs(A048761(n+1)-n)` -/
def P9881556766966149884.Spec : Prop :=
  ∀ n, P9881556766966149884.a n = A080883 n

theorem P9881556766966149884.correct : P9881556766966149884.Spec := by
  intro n
  simp only [A080883]

end A080883

/-! ## A080883.P18227709668962084622

`abs(2*n-A165776(n))`
-/

namespace A080883.P18227709668962084622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A165776 n|

end

end A080883.P18227709668962084622

namespace A080883

/-- `abs(2*n-A165776(n))` -/
def P18227709668962084622.Spec : Prop :=
  ∀ n, P18227709668962084622.a n = A080883 n

end A080883

/-! ## A080883.P9340911926168773893

`abs(∑[A010052(n)]²-n)`
-/

namespace A080883.P9340911926168773893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)|

end

end A080883.P9340911926168773893

namespace A080883

/-- `abs(∑[A010052(n)]²-n)` -/
def P9340911926168773893.Spec : Prop :=
  ∀ n, P9340911926168773893.a n = A080883 n

end A080883

/-! ## A080883.P3549899450267442120

`abs((A000196(n)+1)²-n)`
-/

namespace A080883.P3549899450267442120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000196 n + 1) ^ 2 - (n : ℤ)|

end

end A080883.P3549899450267442120

namespace A080883

/-- `abs((A000196(n)+1)²-n)` -/
def P3549899450267442120.Spec : Prop :=
  ∀ n, P3549899450267442120.a n = A080883 n

end A080883

/-! ## A080883.P822112979073523792

`abs(A003059(n+1)²-n)`
-/

namespace A080883.P822112979073523792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003059 (n + 1) ^ 2 - (n : ℤ)|

end

end A080883.P822112979073523792

namespace A080883

/-- `abs(A003059(n+1)²-n)` -/
def P822112979073523792.Spec : Prop :=
  ∀ n, P822112979073523792.a n = A080883 n

end A080883

/-! ## A080883.P800174904727017038

`abs(A000290(floor(sqrt(n))+1)-n)`
-/

namespace A080883.P800174904727017038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (Nat.sqrt n + 1) - (n : ℤ)|

end

end A080883.P800174904727017038

namespace A080883

/-- `abs(A000290(floor(sqrt(n))+1)-n)` -/
def P800174904727017038.Spec : Prop :=
  ∀ n, P800174904727017038.a n = A080883 n

end A080883

/-! ## A080883.P8300827448273922207

`A071797(A020703(n+1))`
-/

namespace A080883.P8300827448273922207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A020703 (n + 1)).toNat

end

end A080883.P8300827448273922207

namespace A080883

/-- `A071797(A020703(n+1))` -/
def P8300827448273922207.Spec : Prop :=
  ∀ n, P8300827448273922207.a n = A080883 n

end A080883

/-! ## A080883.P38850790964249936

`gcd(Δ[A048761(n)], A068527(n))`
-/

namespace A080883.P38850790964249936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A068527 n)

end

end A080883.P38850790964249936

namespace A080883

/-- `gcd(Δ[A048761(n)], A068527(n))` -/
def P38850790964249936.Spec : Prop :=
  ∀ n, (P38850790964249936.a n : ℤ) = A080883 n

end A080883

/-! ## A080883.P15128002613688406736

`A338829(A338829(A048761(n+1)-n))`
-/

namespace A080883.P15128002613688406736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 (A338829 (A048761 (n + 1) - (n : ℤ)).toNat).toNat

end

end A080883.P15128002613688406736

namespace A080883

/-- `A338829(A338829(A048761(n+1)-n))` -/
def P15128002613688406736.Spec : Prop :=
  ∀ n, P15128002613688406736.a n = A080883 n

end A080883

/-! ## A080883.P14108818685337246500

`A000027(A068527(n+1)+1)`
-/

namespace A080883.P14108818685337246500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A068527 (n + 1) + 1).toNat

end

end A080883.P14108818685337246500

namespace A080883

/-- `A000027(A068527(n+1)+1)` -/
def P14108818685337246500.Spec : Prop :=
  ∀ n, P14108818685337246500.a n = A080883 n

end A080883

/-! ## A080883.P10634984185693137198

`A179753(A078358(n+1))`
-/

namespace A080883.P10634984185693137198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A078358 (n + 1)).toNat

end

end A080883.P10634984185693137198

namespace A080883

/-- `A179753(A078358(n+1))` -/
def P10634984185693137198.Spec : Prop :=
  ∀ n, P10634984185693137198.a n = A080883 n

end A080883

/-! ## A080883.P11793621143239958243

`A179753(A000196(n)+n+1)`
-/

namespace A080883.P11793621143239958243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A000196 n + (n + 1 : ℤ)).toNat

end

end A080883.P11793621143239958243

namespace A080883

/-- `A179753(A000196(n)+n+1)` -/
def P11793621143239958243.Spec : Prop :=
  ∀ n, P11793621143239958243.a n = A080883 n

end A080883

/-! ## A080883.P13492596013797991676

`A179753(A003059(n+1)+n)`
-/

namespace A080883.P13492596013797991676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A003059 (n + 1) + (n : ℤ)).toNat

end

end A080883.P13492596013797991676

namespace A080883

/-- `A179753(A003059(n+1)+n)` -/
def P13492596013797991676.Spec : Prop :=
  ∀ n, P13492596013797991676.a n = A080883 n

end A080883

/-! ## A080883.P12658030823416624947

`A179753(A135034(n+1)+n)`
-/

namespace A080883.P12658030823416624947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A135034 (n + 1) + (n : ℤ)).toNat

end

end A080883.P12658030823416624947

namespace A080883

/-- `A179753(A135034(n+1)+n)` -/
def P12658030823416624947.Spec : Prop :=
  ∀ n, P12658030823416624947.a n = A080883 n

end A080883

/-! ## A080883.P4768432330581777273

`A256243(A071797(n+1)+n+1)`
-/

namespace A080883.P4768432330581777273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256243 (A071797 (n + 1) + (n + 1 : ℤ)).toNat

end

end A080883.P4768432330581777273

namespace A080883

/-- `A256243(A071797(n+1)+n+1)` -/
def P4768432330581777273.Spec : Prop :=
  ∀ n, P4768432330581777273.a n = A080883 n

end A080883

/-! ## A080883.P537009441761830683

`A179753(A000194(A000037(n+1))+n)`
-/

namespace A080883.P537009441761830683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179753 (A000194 (A000037 (n + 1)).toNat + (n : ℤ)).toNat

end

end A080883.P537009441761830683

namespace A080883

/-- `A179753(A000194(A000037(n+1))+n)` -/
def P537009441761830683.Spec : Prop :=
  ∀ n, P537009441761830683.a n = A080883 n

end A080883

/-! ## A080883.P6187761124311043396

`A053186(A056893(A048761(n+1)-n))`
-/

namespace A080883.P6187761124311043396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A056893 (A048761 (n + 1) - (n : ℤ)).toNat).toNat

end

end A080883.P6187761124311043396

namespace A080883

/-- `A053186(A056893(A048761(n+1)-n))` -/
def P6187761124311043396.Spec : Prop :=
  ∀ n, P6187761124311043396.a n = A080883 n

end A080883

/-! ## A080883.P2497199729547317550

`A004736(A007606(n+1))`
-/

namespace A080883.P2497199729547317550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A007606 (n + 1)).toNat

end

end A080883.P2497199729547317550

namespace A080883

/-- `A004736(A007606(n+1))` -/
def P2497199729547317550.Spec : Prop :=
  ∀ n, P2497199729547317550.a n = A080883 n

end A080883

/-! ## A080883.P6735622723991804170

`A004736(A161983(n+1))`
-/

namespace A080883.P6735622723991804170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A161983 (n + 1)).toNat

end

end A080883.P6735622723991804170

namespace A080883

/-- `A004736(A161983(n+1))` -/
def P6735622723991804170.Spec : Prop :=
  ∀ n, P6735622723991804170.a n = A080883 n

end A080883

/-!
# A080884: Sum of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

The programs for A080884, the canonical program `A080884.P7272597157666030189` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080884 has offset 1).

The definition of A080884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080884.P14174624995229445941

`char[comp[floor(ϕ*n)-1]]+char[xor(n, Δ[n²])]`
-/

namespace A080884.P14174624995229445941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

end

end A080884.P14174624995229445941

namespace A080884

/-- `char[comp[floor(ϕ*n)-1]]+char[xor(n, Δ[n²])]` -/
def P14174624995229445941.Spec : Prop :=
  ∀ n, (P14174624995229445941.a n : ℤ) = A080884 (n + 1)

end A080884

/-! ## A080884.P7384648177249380040

`2-char[xor(n, 2*n)]-Δ[floor((n+1)/ϕ)]`
-/

namespace A080884.P7384648177249380040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A080884.P7384648177249380040

namespace A080884

/-- `2-char[xor(n, 2*n)]-Δ[floor((n+1)/ϕ)]` -/
def P7384648177249380040.Spec : Prop :=
  ∀ n, P7384648177249380040.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P10948635815471177432

`C(2-char[xor(n, 2*n)], Δ[floor(ϕ*(n+1))])`
-/

namespace A080884.P10948635815471177432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat (f2 (n + 1) - f2 n).toNat

end

end A080884.P10948635815471177432

namespace A080884

/-- `C(2-char[xor(n, 2*n)], Δ[floor(ϕ*(n+1))])` -/
def P10948635815471177432.Spec : Prop :=
  ∀ n, (P10948635815471177432.a n : ℤ) = A080884 (n + 1)

end A080884

/-! ## A080884.P10507007903374602522

`char[xor(n, Δ[n²])]+1-Δ[floor((n+1)/ϕ)]`
-/

namespace A080884.P10507007903374602522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (1 - (f3 (n + 1) - f3 n))

end

end A080884.P10507007903374602522

namespace A080884

/-- `char[xor(n, Δ[n²])]+1-Δ[floor((n+1)/ϕ)]` -/
def P10507007903374602522.Spec : Prop :=
  ∀ n, P10507007903374602522.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P16646520893677715109

`Δ[ceil((n+1)/ϕ²)]+1-char[xor(n, 2*n)]`
-/

namespace A080884.P16646520893677715109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio ^ 2⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A080884.P16646520893677715109

namespace A080884

/-- `Δ[ceil((n+1)/ϕ²)]+1-char[xor(n, 2*n)]` -/
def P16646520893677715109.Spec : Prop :=
  ∀ n, P16646520893677715109.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P12321724379839891206

`(2-char[xor(n, 2*n)])!-Δ[ceil((n+1)/ϕ)]`
-/

namespace A080884.P12321724379839891206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat : ℤ) - (f2 (n + 1) - f2 n)

end

end A080884.P12321724379839891206

namespace A080884

/-- `(2-char[xor(n, 2*n)])!-Δ[ceil((n+1)/ϕ)]` -/
def P12321724379839891206.Spec : Prop :=
  ∀ n, P12321724379839891206.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P12171012980433768622

`-comp[xor(n, 2*n)]%2+2-Δ[floor((n+1)/ϕ)]`
-/

namespace A080884.P12171012980433768622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 2 + (2 - (f2 (n + 1) - f2 n))

end

end A080884.P12171012980433768622

namespace A080884

/-- `-comp[xor(n, 2*n)]%2+2-Δ[floor((n+1)/ϕ)]` -/
def P12171012980433768622.Spec : Prop :=
  ∀ n, P12171012980433768622.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P6143463029090990337

`comp[xor(n, 2*n+1)]%2+1-Δ[floor((n+1)/ϕ)]`
-/

namespace A080884.P6143463029090990337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) + (1 - (f2 (n + 1) - f2 n))

end

end A080884.P6143463029090990337

namespace A080884

/-- `comp[xor(n, 2*n+1)]%2+1-Δ[floor((n+1)/ϕ)]` -/
def P6143463029090990337.Spec : Prop :=
  ∀ n, P6143463029090990337.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P2860029724654264497

`char[xor(n+1, n+1+n)+1]+1-Δ[floor((n+1)/ϕ)]`
-/

namespace A080884.P2860029724654264497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 1 + n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (1 - (f2 (n + 1) - f2 n))

end

end A080884.P2860029724654264497

namespace A080884

/-- `char[xor(n+1, n+1+n)+1]+1-Δ[floor((n+1)/ϕ)]` -/
def P2860029724654264497.Spec : Prop :=
  ∀ n, P2860029724654264497.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P7144521245715597063

`comp[xor(n, 2*n+1)]+2-Δ[floor((ϕ-2+n)*(n+1))]`
-/

namespace A080884.P7144521245715597063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio - 2 + (n : ℝ)) * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (2 - (f2 (n + 1) - f2 n))

end

end A080884.P7144521245715597063

namespace A080884

/-- `comp[xor(n, 2*n+1)]+2-Δ[floor((ϕ-2+n)*(n+1))]` -/
def P7144521245715597063.Spec : Prop :=
  ∀ n, P7144521245715597063.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P7272597157666030189

`A010060(n)+A003849(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080884

/-- `A010060(n)+A003849(n)` -/
def P7272597157666030189.Spec : Prop :=
  ∀ n, P7272597157666030189.a n = A080884 (n + 1)

theorem P7272597157666030189.correct : P7272597157666030189.Spec := by
  intro n
  simp only [A080884, Nat.add_sub_cancel]

end A080884

/-! ## A080884.P15759443657702513905

`A001285(n)-A005614(n)`
-/

namespace A080884.P15759443657702513905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - A005614 n

end

end A080884.P15759443657702513905

namespace A080884

/-- `A001285(n)-A005614(n)` -/
def P15759443657702513905.Spec : Prop :=
  ∀ n, P15759443657702513905.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P16499291750251813780

`A003842(n)-A010059(n)`
-/

namespace A080884.P16499291750251813780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n - A010059 n

end

end A080884.P16499291750251813780

namespace A080884

/-- `A003842(n)-A010059(n)` -/
def P16499291750251813780.Spec : Prop :=
  ∀ n, P16499291750251813780.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P8701598338578763035

`A380960(n)-A161560(n+1)`
-/

namespace A080884.P8701598338578763035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 n - A161560 (n + 1)

end

end A080884.P8701598338578763035

namespace A080884

/-- `A380960(n)-A161560(n+1)` -/
def P8701598338578763035.Spec : Prop :=
  ∀ n, P8701598338578763035.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P4379918493556022312

`A254379(2*n)+A003849(n)`
-/

namespace A080884.P4379918493556022312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (2 * n) + A003849 n

end

end A080884.P4379918493556022312

namespace A080884

/-- `A254379(2*n)+A003849(n)` -/
def P4379918493556022312.Spec : Prop :=
  ∀ n, P4379918493556022312.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P5415895716316761744

`A316828(2*n)+A003849(n)`
-/

namespace A080884.P5415895716316761744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (2 * n) + A003849 n

end

end A080884.P5415895716316761744

namespace A080884

/-- `A316828(2*n)+A003849(n)` -/
def P5415895716316761744.Spec : Prop :=
  ∀ n, P5415895716316761744.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P14962222823966686976

`A080886(n+1)+A080885(n+1)`
-/

namespace A080884.P14962222823966686976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080886 (n + 1) + A080885 (n + 1)

end

end A080884.P14962222823966686976

namespace A080884

/-- `A080886(n+1)+A080885(n+1)` -/
def P14962222823966686976.Spec : Prop :=
  ∀ n, P14962222823966686976.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P12538940067424306270

`A287658(n+1)-A000069(n+1)`
-/

namespace A080884.P12538940067424306270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287658 (n + 1) - A000069 (n + 1)

end

end A080884.P12538940067424306270

namespace A080884

/-- `A287658(n+1)-A000069(n+1)` -/
def P12538940067424306270.Spec : Prop :=
  ∀ n, P12538940067424306270.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P17179246301037177287

`A140592(n+1)-A287659(n+1)`
-/

namespace A080884.P17179246301037177287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) - A287659 (n + 1)

end

end A080884.P17179246301037177287

namespace A080884

/-- `A140592(n+1)-A287659(n+1)` -/
def P17179246301037177287.Spec : Prop :=
  ∀ n, P17179246301037177287.a n = A080884 (n + 1)

end A080884

/-! ## A080884.P10740230727245173645

`A188432(n+2)+A010060(n)`
-/

namespace A080884.P10740230727245173645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 2) + A010060 n

end

end A080884.P10740230727245173645

namespace A080884

/-- `A188432(n+2)+A010060(n)` -/
def P10740230727245173645.Spec : Prop :=
  ∀ n, P10740230727245173645.a n = A080884 (n + 1)

end A080884

/-!
# A080885: Boolean AND of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

The programs for A080885, the canonical program `A080885.P16563174699111181845` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080885 has offset 1).

The definition of A080885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080885.P14188082091274729446

`and(Δ[floor(ϕ*(n+1))], char[xor(n, Δ[n²])])`
-/

namespace A080885.P14188082091274729446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080885.P14188082091274729446

namespace A080885

/-- `and(Δ[floor(ϕ*(n+1))], char[xor(n, Δ[n²])])` -/
def P14188082091274729446.Spec : Prop :=
  ∀ n, P14188082091274729446.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P11492064901703332255

`and(Δ[floor(ϕ*(n+1))], char[comp[xor(n, 2*n)]])`
-/

namespace A080885.P11492064901703332255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080885.P11492064901703332255

namespace A080885

/-- `and(Δ[floor(ϕ*(n+1))], char[comp[xor(n, 2*n)]])` -/
def P11492064901703332255.Spec : Prop :=
  ∀ n, P11492064901703332255.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P12249506988805114859

`Δ[floor(ϕ*(n+1))]%(2-char[xor(n, 2*n)])`
-/

namespace A080885.P12249506988805114859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A080885.P12249506988805114859

namespace A080885

/-- `Δ[floor(ϕ*(n+1))]%(2-char[xor(n, 2*n)])` -/
def P12249506988805114859.Spec : Prop :=
  ∀ n, P12249506988805114859.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P15662838511052668272

`char[xor(n, 2*n+1)]*char[floor(n*ϕ²)-1]`
-/

namespace A080885.P15662838511052668272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A080885.P15662838511052668272

namespace A080885

/-- `char[xor(n, 2*n+1)]*char[floor(n*ϕ²)-1]` -/
def P15662838511052668272.Spec : Prop :=
  ∀ n, (P15662838511052668272.a n : ℤ) = A080885 (n + 1)

end A080885

/-! ## A080885.P9915155052912189798

`(1-char[xor(n, 2*n)])*char[floor(n*ϕ²)-1]`
-/

namespace A080885.P9915155052912189798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A080885.P9915155052912189798

namespace A080885

/-- `(1-char[xor(n, 2*n)])*char[floor(n*ϕ²)-1]` -/
def P9915155052912189798.Spec : Prop :=
  ∀ n, P9915155052912189798.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P3228298152368922896

`(1-Δ[floor((n+1)/ϕ)])*(1-char[xor(n, 2*n)])`
-/

namespace A080885.P3228298152368922896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n)) * (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A080885.P3228298152368922896

namespace A080885

/-- `(1-Δ[floor((n+1)/ϕ)])*(1-char[xor(n, 2*n)])` -/
def P3228298152368922896.Spec : Prop :=
  ∀ n, P3228298152368922896.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P1576886504575065905

`comp[xor(n, 2*n+1)]%(2-Δ[floor((n+1)/ϕ)])`
-/

namespace A080885.P1576886504575065905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (2 - (f2 (n + 1) - f2 n))

end

end A080885.P1576886504575065905

namespace A080885

/-- `comp[xor(n, 2*n+1)]%(2-Δ[floor((n+1)/ϕ)])` -/
def P1576886504575065905.Spec : Prop :=
  ∀ n, P1576886504575065905.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P16563174699111181845

`C(A080884(n+1), 2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080885

/-- `C(A080884(n+1), 2)` -/
def P16563174699111181845.Spec : Prop :=
  ∀ n, (P16563174699111181845.a n : ℤ) = A080885 (n + 1)

theorem P16563174699111181845.correct : P16563174699111181845.Spec := by
  intro n
  simp only [A080885, Nat.add_sub_cancel]

end A080885

/-! ## A080885.P10213596392907259176

`A003849(A102392(n))`
-/

namespace A080885.P10213596392907259176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A102392 n).toNat

end

end A080885.P10213596392907259176

namespace A080885

/-- `A003849(A102392(n))` -/
def P10213596392907259176.Spec : Prop :=
  ∀ n, P10213596392907259176.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P13140819922351361381

`A010060(n*A003849(n))`
-/

namespace A080885.P13140819922351361381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((n : ℤ) * A003849 n).toNat

end

end A080885.P13140819922351361381

namespace A080885

/-- `A010060(n*A003849(n))` -/
def P13140819922351361381.Spec : Prop :=
  ∀ n, P13140819922351361381.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P8950506620871492750

`A010060(n*A316342(n))`
-/

namespace A080885.P8950506620871492750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((n : ℤ) * A316342 n).toNat

end

end A080885.P8950506620871492750

namespace A080885

/-- `A010060(n*A316342(n))` -/
def P8950506620871492750.Spec : Prop :=
  ∀ n, P8950506620871492750.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P3482389291349413630

`A010060(n*A316825(n))`
-/

namespace A080885.P3482389291349413630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((n : ℤ) * A316825 n).toNat

end

end A080885.P3482389291349413630

namespace A080885

/-- `A010060(n*A316825(n))` -/
def P3482389291349413630.Spec : Prop :=
  ∀ n, P3482389291349413630.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P11909429936086638060

`A000120(n)%A003842(n)`
-/

namespace A080885.P11909429936086638060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) (A003842 n)

end

end A080885.P11909429936086638060

namespace A080885

/-- `A000120(n)%A003842(n)` -/
def P11909429936086638060.Spec : Prop :=
  ∀ n, P11909429936086638060.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P13047432058341031962

`A003714(n)%A001285(n)`
-/

namespace A080885.P13047432058341031962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003714 n) (A001285 n)

end

end A080885.P13047432058341031962

namespace A080885

/-- `A003714(n)%A001285(n)` -/
def P13047432058341031962.Spec : Prop :=
  ∀ n, P13047432058341031962.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P11823553882061072452

`A005187(n)%A003842(n)`
-/

namespace A080885.P11823553882061072452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 n) (A003842 n)

end

end A080885.P11823553882061072452

namespace A080885

/-- `A005187(n)%A003842(n)` -/
def P11823553882061072452.Spec : Prop :=
  ∀ n, P11823553882061072452.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P13855028773465803428

`A006068(n)%A003842(n)`
-/

namespace A080885.P13855028773465803428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006068 n) (A003842 n)

end

end A080885.P13855028773465803428

namespace A080885

/-- `A006068(n)%A003842(n)` -/
def P13855028773465803428.Spec : Prop :=
  ∀ n, P13855028773465803428.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P14673758676027286148

`A014417(n)%A001285(n)`
-/

namespace A080885.P14673758676027286148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014417 n) (A001285 n)

end

end A080885.P14673758676027286148

namespace A080885

/-- `A014417(n)%A001285(n)` -/
def P14673758676027286148.Spec : Prop :=
  ∀ n, P14673758676027286148.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P14914926007640080884

`A014675(n)%A001285(n)`
-/

namespace A080885.P14914926007640080884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014675 n) (A001285 n)

end

end A080885.P14914926007640080884

namespace A080885

/-- `A014675(n)%A001285(n)` -/
def P14914926007640080884.Spec : Prop :=
  ∀ n, P14914926007640080884.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P6907219140138970598

`A033042(n)%A003842(n)`
-/

namespace A080885.P6907219140138970598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033042 n) (A003842 n)

end

end A080885.P6907219140138970598

namespace A080885

/-- `A033042(n)%A003842(n)` -/
def P6907219140138970598.Spec : Prop :=
  ∀ n, P6907219140138970598.a n = A080885 (n + 1)

end A080885

/-! ## A080885.P7568878359038474488

`A033046(n)%A003842(n)`
-/

namespace A080885.P7568878359038474488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033046 n) (A003842 n)

end

end A080885.P7568878359038474488

namespace A080885

/-- `A033046(n)%A003842(n)` -/
def P7568878359038474488.Spec : Prop :=
  ∀ n, P7568878359038474488.a n = A080885 (n + 1)

end A080885

/-!
# A080886: Boolean OR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

The programs for A080886, the canonical program `A080886.P17709455679324199152` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080886 has offset 1).

The definition of A080886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080886.P8782863609669882764

`or(char[comp[floor(ϕ*n)-1]], char[xor(n, Δ[n²])])`
-/

namespace A080886.P8782863609669882764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f4 (n + 1) : ℤ) - (f4 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

end

end A080886.P8782863609669882764

namespace A080886

/-- `or(char[comp[floor(ϕ*n)-1]], char[xor(n, Δ[n²])])` -/
def P8782863609669882764.Spec : Prop :=
  ∀ n, (P8782863609669882764.a n : ℤ) = A080886 (n + 1)

end A080886

/-! ## A080886.P4880041249204559872

`C(1-char[xor(n, 2*n)], Δ[floor((n+1)/ϕ)])`
-/

namespace A080886.P4880041249204559872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat (f2 (n + 1) - f2 n).toNat

end

end A080886.P4880041249204559872

namespace A080886

/-- `C(1-char[xor(n, 2*n)], Δ[floor((n+1)/ϕ)])` -/
def P4880041249204559872.Spec : Prop :=
  ∀ n, (P4880041249204559872.a n : ℤ) = A080886 (n + 1)

end A080886

/-! ## A080886.P17548080598644590083

`(1-char[xor(n, 2*n)])^(Δ[floor(ϕ*(n+1))]-1)`
-/

namespace A080886.P17548080598644590083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (f2 (n + 1) - f2 n - 1 : ℤ)

end

end A080886.P17548080598644590083

namespace A080886

/-- `(1-char[xor(n, 2*n)])^(Δ[floor(ϕ*(n+1))]-1)` -/
def P17548080598644590083.Spec : Prop :=
  ∀ n, P17548080598644590083.a n = (A080886 (n + 1) : ℚ)

end A080886

/-! ## A080886.P8565726582010534980

`(2-Δ[floor((n+1)/ϕ)]-char[xor(n, 2*n)])²%3`
-/

namespace A080886.P8565726582010534980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 - (f1 (n + 1) - f1 n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2) 3

end

end A080886.P8565726582010534980

namespace A080886

/-- `(2-Δ[floor((n+1)/ϕ)]-char[xor(n, 2*n)])²%3` -/
def P8565726582010534980.Spec : Prop :=
  ∀ n, P8565726582010534980.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P499360347735988469

`log2(lcm(2-Δ[floor((n+1)/ϕ)], 2-char[xor(n, 2*n)]))`
-/

namespace A080886.P499360347735988469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.lcm (2 - (f1 (n + 1) - f1 n)) (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) : ℝ)

end

end A080886.P499360347735988469

namespace A080886

/-- `log2(lcm(2-Δ[floor((n+1)/ϕ)], 2-char[xor(n, 2*n)]))` -/
def P499360347735988469.Spec : Prop :=
  ∀ n, P499360347735988469.a n = (A080886 (n + 1) : ℝ)

end A080886

/-! ## A080886.P14156991605985152103

`C(1-char[xor(n, 2*n)], 3%Δ[floor(ϕ*(n+1))])²`
-/

namespace A080886.P14156991605985152103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat (Int.tmod 3 (f2 (n + 1) - f2 n)).toNat ^ 2

end

end A080886.P14156991605985152103

namespace A080886

/-- `C(1-char[xor(n, 2*n)], 3%Δ[floor(ϕ*(n+1))])²` -/
def P14156991605985152103.Spec : Prop :=
  ∀ n, (P14156991605985152103.a n : ℤ) = A080886 (n + 1)

end A080886

/-! ## A080886.P17709455679324199152

`floor(sqrt(A080884(n+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080886

/-- `floor(sqrt(A080884(n+1)))` -/
def P17709455679324199152.Spec : Prop :=
  ∀ n, P17709455679324199152.a n = A080886 (n + 1)

theorem P17709455679324199152.correct : P17709455679324199152.Spec := by
  intro n
  simp only [A080886, Nat.add_sub_cancel]

end A080886

/-! ## A080886.P241598544143269333

`A254377(A287658(n+1))`
-/

namespace A080886.P241598544143269333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (A287658 (n + 1)).toNat

end

end A080886.P241598544143269333

namespace A080886

/-- `A254377(A287658(n+1))` -/
def P241598544143269333.Spec : Prop :=
  ∀ n, P241598544143269333.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P15726370799649585671

`1-A005614(n)*A010059(n)`
-/

namespace A080886.P15726370799649585671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005614 n * A010059 n

end

end A080886.P15726370799649585671

namespace A080886

/-- `1-A005614(n)*A010059(n)` -/
def P15726370799649585671.Spec : Prop :=
  ∀ n, P15726370799649585671.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P3246505671742303738

`A000045(a(A080884(n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A080886.P3246505671742303738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000045 (a (A080884 (n + 1)).toNat).toNat

end

end A080886.P3246505671742303738

namespace A080886

/-- `A000045(a(A080884(n+1)))` -/
def P3246505671742303738.Spec : Prop :=
  ∀ n, P3246505671742303738.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P11569757172916724468

`A080887(n+1)+A080885(n+1)`
-/

namespace A080886.P11569757172916724468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (n + 1) + A080885 (n + 1)

end

end A080886.P11569757172916724468

namespace A080886

/-- `A080887(n+1)+A080885(n+1)` -/
def P11569757172916724468.Spec : Prop :=
  ∀ n, P11569757172916724468.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P4140885967203085111

`A080884(n+1)-A080885(n+1)`
-/

namespace A080886.P4140885967203085111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080884 (n + 1) - A080885 (n + 1)

end

end A080886.P4140885967203085111

namespace A080886

/-- `A080884(n+1)-A080885(n+1)` -/
def P4140885967203085111.Spec : Prop :=
  ∀ n, P4140885967203085111.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P4243500811886453692

`A003849(n)+A010060(n)-A080885(n+1)`
-/

namespace A080886.P4243500811886453692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + (A010060 n - A080885 (n + 1))

end

end A080886.P4243500811886453692

namespace A080886

/-- `A003849(n)+A010060(n)-A080885(n+1)` -/
def P4243500811886453692.Spec : Prop :=
  ∀ n, P4243500811886453692.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P6174473900413027634

`A080887(n+1)+A010060(n*A003849(n))`
-/

namespace A080886.P6174473900413027634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080887 (n + 1) + A010060 ((n : ℤ) * A003849 n).toNat

end

end A080886.P6174473900413027634

namespace A080886

/-- `A080887(n+1)+A010060(n*A003849(n))` -/
def P6174473900413027634.Spec : Prop :=
  ∀ n, P6174473900413027634.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P6457964776978886375

`A080884(n+1)-A010060(n*A003849(n))`
-/

namespace A080886.P6457964776978886375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080884 (n + 1) - A010060 ((n : ℤ) * A003849 n).toNat

end

end A080886.P6457964776978886375

namespace A080886

/-- `A080884(n+1)-A010060(n*A003849(n))` -/
def P6457964776978886375.Spec : Prop :=
  ∀ n, P6457964776978886375.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P17965905541226476618

`A001468(n+1)*A080884(n+1)-A010060(n)`
-/

namespace A080886.P17965905541226476618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1) * A080884 (n + 1) - A010060 n

end

end A080886.P17965905541226476618

namespace A080886

/-- `A001468(n+1)*A080884(n+1)-A010060(n)` -/
def P17965905541226476618.Spec : Prop :=
  ∀ n, P17965905541226476618.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P9035601809561458719

`(A080887(n+1)+A010060(n))/A001468(n+1)`
-/

namespace A080886.P9035601809561458719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080887 (n + 1) + A010060 n : ℚ) / (A001468 (n + 1) : ℚ)

end

end A080886.P9035601809561458719

namespace A080886

/-- `(A080887(n+1)+A010060(n))/A001468(n+1)` -/
def P9035601809561458719.Spec : Prop :=
  ∀ n, P9035601809561458719.a n = (A080886 (n + 1) : ℚ)

end A080886

/-! ## A080886.P6160282642854454519

`1-A285949(A287802(2*n+1))`
-/

namespace A080886.P6160282642854454519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285949 (A287802 (2 * n + 1)).toNat

end

end A080886.P6160282642854454519

namespace A080886

/-- `1-A285949(A287802(2*n+1))` -/
def P6160282642854454519.Spec : Prop :=
  ∀ n, P6160282642854454519.a n = A080886 (n + 1)

end A080886

/-! ## A080886.P10781094495112414910

`A285952(A285951(n+1)+A005614(n))`
-/

namespace A080886.P10781094495112414910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285952 (A285951 (n + 1) + A005614 n).toNat

end

end A080886.P10781094495112414910

namespace A080886

/-- `A285952(A285951(n+1)+A005614(n))` -/
def P10781094495112414910.Spec : Prop :=
  ∀ n, P10781094495112414910.a n = A080886 (n + 1)

end A080886

/-!
# A080887: Boolean XOR of (0,1) versions of Thue-Morse word (A010060) and Fibonacci word (A003849).

The programs for A080887, the canonical program `A080887.P5959729836914886980` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080887 has offset 1).

The definition of A080887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080887.P7902775747671480986

`xor(Δ[floor((n+1)/ϕ)], char[xor(n, 2*n)])`
-/

namespace A080887.P7902775747671480986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080887.P7902775747671480986

namespace A080887

/-- `xor(Δ[floor((n+1)/ϕ)], char[xor(n, 2*n)])` -/
def P7902775747671480986.Spec : Prop :=
  ∀ n, P7902775747671480986.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P11948427328579238864

`(Δ[ceil((n+1)/ϕ)]-char[xor(n, 2*n)])²`
-/

namespace A080887.P11948427328579238864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A080887.P11948427328579238864

namespace A080887

/-- `(Δ[ceil((n+1)/ϕ)]-char[xor(n, 2*n)])²` -/
def P11948427328579238864.Spec : Prop :=
  ∀ n, P11948427328579238864.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P3544938135689999653

`xor(char[xor(n, Δ[n²])], char[comp[floor(ϕ*n)-1]])`
-/

namespace A080887.P3544938135689999653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f1 j = (n : ℤ) then 1 else 0) (if ∃ j, f3 j = n then 1 else 0)

end

end A080887.P3544938135689999653

namespace A080887

/-- `xor(char[xor(n, Δ[n²])], char[comp[floor(ϕ*n)-1]])` -/
def P3544938135689999653.Spec : Prop :=
  ∀ n, (P3544938135689999653.a n : ℤ) = A080887 (n + 1)

end A080887

/-! ## A080887.P12570964258882545857

`(comp[xor(n, 2*n+1)]+Δ[floor(ϕ*(n+1))])%2`
-/

namespace A080887.P12570964258882545857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (f2 (n + 1) - f2 n)) 2

end

end A080887.P12570964258882545857

namespace A080887

/-- `(comp[xor(n, 2*n+1)]+Δ[floor(ϕ*(n+1))])%2` -/
def P12570964258882545857.Spec : Prop :=
  ∀ n, P12570964258882545857.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P6299658996020042339

`(char[xor(n, 2*n+1)]-char[floor(n*ϕ²)-1])²`
-/

namespace A080887.P6299658996020042339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A080887.P6299658996020042339

namespace A080887

/-- `(char[xor(n, 2*n+1)]-char[floor(n*ϕ²)-1])²` -/
def P6299658996020042339.Spec : Prop :=
  ∀ n, P6299658996020042339.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P14659530020903126711

`(1-char[xor(n, 2*n)]-char[floor(n*ϕ²)-1])²`
-/

namespace A080887.P14659530020903126711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A080887.P14659530020903126711

namespace A080887

/-- `(1-char[xor(n, 2*n)]-char[floor(n*ϕ²)-1])²` -/
def P14659530020903126711.Spec : Prop :=
  ∀ n, P14659530020903126711.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P6831022058117563911

`(char[ceil(n*ϕ²)-2]-(1-char[xor(n, 2*n)]))²`
-/

namespace A080887.P6831022058117563911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))) ^ 2

end

end A080887.P6831022058117563911

namespace A080887

/-- `(char[ceil(n*ϕ²)-2]-(1-char[xor(n, 2*n)]))²` -/
def P6831022058117563911.Spec : Prop :=
  ∀ n, P6831022058117563911.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P5029233418608226127

`((8*n+1)*(8*n+3)*(8*n+5)*(8*n+7))%(char[xor(n, 2*n)]+Δ[floor(ϕ*(n+1))])`
-/

namespace A080887.P5029233418608226127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((8 * n + 1) * ((8 * n + 3) * ((8 * n + 5) * (8 * n + 7))) : ℤ) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n))

end

end A080887.P5029233418608226127

namespace A080887

/-- `((8*n+1)*(8*n+3)*(8*n+5)*(8*n+7))%(char[xor(n, 2*n)]+Δ[floor(ϕ*(n+1))])` -/
def P5029233418608226127.Spec : Prop :=
  ∀ n, P5029233418608226127.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P5959729836914886980

`A080884(n+1)%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080887

/-- `A080884(n+1)%2` -/
def P5959729836914886980.Spec : Prop :=
  ∀ n, P5959729836914886980.a n = A080887 (n + 1)

theorem P5959729836914886980.correct : P5959729836914886980.Spec := by
  intro n
  simp only [A080887, Nat.add_sub_cancel]

end A080887

/-! ## A080887.P16555554770017863399

`A010060(xor(n, A003849(n)))`
-/

namespace A080887.P16555554770017863399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A003849 n)).toNat

end

end A080887.P16555554770017863399

namespace A080887

/-- `A010060(xor(n, A003849(n)))` -/
def P16555554770017863399.Spec : Prop :=
  ∀ n, P16555554770017863399.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P98053407540126748

`A010059(xor(n, A005614(n)))`
-/

namespace A080887.P98053407540126748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.xor (n : ℤ) (A005614 n)).toNat

end

end A080887.P98053407540126748

namespace A080887

/-- `A010059(xor(n, A005614(n)))` -/
def P98053407540126748.Spec : Prop :=
  ∀ n, P98053407540126748.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P2554375437605952270

`and(A000328(n), A080884(n+1))`
-/

namespace A080887.P2554375437605952270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A080884 (n + 1))

end

end A080887.P2554375437605952270

namespace A080887

/-- `and(A000328(n), A080884(n+1))` -/
def P2554375437605952270.Spec : Prop :=
  ∀ n, P2554375437605952270.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P6310484203363423656

`and(A001513(n), A080884(n+1))`
-/

namespace A080887.P6310484203363423656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A080884 (n + 1))

end

end A080887.P6310484203363423656

namespace A080887

/-- `and(A001513(n), A080884(n+1))` -/
def P6310484203363423656.Spec : Prop :=
  ∀ n, P6310484203363423656.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P3390698593392327043

`and(A001535(n), A080884(n+1))`
-/

namespace A080887.P3390698593392327043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A080884 (n + 1))

end

end A080887.P3390698593392327043

namespace A080887

/-- `and(A001535(n), A080884(n+1))` -/
def P3390698593392327043.Spec : Prop :=
  ∀ n, P3390698593392327043.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P10880460488969083643

`and(A001546(n), A080884(n+1))`
-/

namespace A080887.P10880460488969083643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A080884 (n + 1))

end

end A080887.P10880460488969083643

namespace A080887

/-- `and(A001546(n), A080884(n+1))` -/
def P10880460488969083643.Spec : Prop :=
  ∀ n, P10880460488969083643.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P2243074511451535066

`and(A001844(n), A080884(n+1))`
-/

namespace A080887.P2243074511451535066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A080884 (n + 1))

end

end A080887.P2243074511451535066

namespace A080887

/-- `and(A001844(n), A080884(n+1))` -/
def P2243074511451535066.Spec : Prop :=
  ∀ n, P2243074511451535066.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P9480486080203765291

`and(A001846(n), A080884(n+1))`
-/

namespace A080887.P9480486080203765291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A080884 (n + 1))

end

end A080887.P9480486080203765291

namespace A080887

/-- `and(A001846(n), A080884(n+1))` -/
def P9480486080203765291.Spec : Prop :=
  ∀ n, P9480486080203765291.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P14643551381733691103

`and(A001848(n), A080884(n+1))`
-/

namespace A080887.P14643551381733691103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A080884 (n + 1))

end

end A080887.P14643551381733691103

namespace A080887

/-- `and(A001848(n), A080884(n+1))` -/
def P14643551381733691103.Spec : Prop :=
  ∀ n, P14643551381733691103.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P14445358707009357776

`and(A003185(n), A080884(n+1))`
-/

namespace A080887.P14445358707009357776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A080884 (n + 1))

end

end A080887.P14445358707009357776

namespace A080887

/-- `and(A003185(n), A080884(n+1))` -/
def P14445358707009357776.Spec : Prop :=
  ∀ n, P14445358707009357776.a n = A080887 (n + 1)

end A080887

/-! ## A080887.P15697720513919662013

`and(A004768(n), A080884(n+1))`
-/

namespace A080887.P15697720513919662013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A080884 (n + 1))

end

end A080887.P15697720513919662013

namespace A080887

/-- `and(A004768(n), A080884(n+1))` -/
def P15697720513919662013.Spec : Prop :=
  ∀ n, P15697720513919662013.a n = A080887 (n + 1)

end A080887

/-!
# A080888: Number of compositions into Fibonacci numbers (1 counted as two distinct Fibonacci numbers).

The programs for A080888, there is no canonical definition to state claims against.
-/

/-! ## A080888.P16456809867328285430

`A003153(a(n-1))+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A080888.P16456809867328285430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A003153 (a (n - 1)).toNat + a (n - 3)

end

end A080888.P16456809867328285430

/-! ## A080888.P4965630410556816233

`A088462(A290616(n))`
-/

namespace A080888.P4965630410556816233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A290616 n).toNat

end

end A080888.P4965630410556816233

/-! ## A080888.P11538825469424300950

`A057367(7*a(n-1)+1)` with `a(0)=1`
-/

namespace A080888.P11538825469424300950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057367 (7 * a (n - 1) + 1).toNat

end

end A080888.P11538825469424300950

/-! ## A080888.P7719563781421220276

`A057367(A238290(a(n-1)))` with `a(0)=1`
-/

namespace A080888.P7719563781421220276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057367 (A238290 (a (n - 1)).toNat).toNat

end

end A080888.P7719563781421220276

/-! ## A080888.P13859350306669209794

`A358754(A293993(n))+A181600(2*n)`
-/

namespace A080888.P13859350306669209794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358754 (A293993 n).toNat + A181600 (2 * n)

end

end A080888.P13859350306669209794

/-!
# A080889: Expansion of 1/Sum_{k>=0} (-x)^Fibonacci(k).

The programs for A080889, there is no canonical definition to state claims against.
-/

/-! ## A080889.P6954152790215874884

`A005041(A149812(n))`
-/

namespace A080889.P6954152790215874884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A149812 n).toNat

end

end A080889.P6954152790215874884

/-! ## A080889.P2441997001887406645

`∑[A003056(A356698(n))]`
-/

namespace A080889.P2441997001887406645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A356698 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080889.P2441997001887406645

/-! ## A080889.P12432198184622413407

`A005041(A279544(n+1))`
-/

namespace A080889.P12432198184622413407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A279544 (n + 1)).toNat

end

end A080889.P12432198184622413407

/-! ## A080889.P10594638429531114584

`∑[A003056(A159769(n+1))]`
-/

namespace A080889.P10594638429531114584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A159769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080889.P10594638429531114584

/-! ## A080889.P15166197779751333416

`∑[A003056(A159770(n+1))]`
-/

namespace A080889.P15166197779751333416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A159770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080889.P15166197779751333416

/-!
# A080890: Continued-fraction expansion of Komornik-Loreti constant.

The programs for A080890, there is no canonical definition to state claims against.
-/

/-! ## A080890.P1736013659136126057

`A224937(A182807(n+1))+floor(n/2)`
-/

namespace A080890.P1736013659136126057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224937 (A182807 (n + 1)).toNat + ⌊(n : ℚ) / 2⌋

end

end A080890.P1736013659136126057

/-! ## A080890.P17316580394304808636

`A347396(round((n+1)^A347396(n+1)/2))`
-/

namespace A080890.P17316580394304808636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A347396 (n + 1) : ℤ) / 2)).toNat

end

end A080890.P17316580394304808636

/-!
# A080891: Period 5: repeat [0, 1, -1, -1, 1].

The programs for A080891, the canonical program `A080891.P13194012659492260228` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080891 has offset 0).

The definition of A080891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080891.P13194012659492260228

`(n²+1)%5-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A080891

/-- `(n²+1)%5-1` -/
def P13194012659492260228.Spec : Prop :=
  ∀ n, P13194012659492260228.a n = A080891 n

theorem P13194012659492260228.correct : P13194012659492260228.Spec := by
  intro n
  simp only [A080891]

end A080891

/-!
# A080893: Expansion of e.g.f. exp(x*C(x)) = exp((1-sqrt(1-4*x))/2), where C(x) is the g.f. of the Catalan numbers A000108.

The programs for A080893, there is no canonical definition to state claims against.
-/

/-! ## A080893.P14316183130044958273

`A316773(∑[n])`
-/

namespace A080893.P14316183130044958273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080893.P14316183130044958273

/-! ## A080893.P8511123600250597922

`A001517(n-ceil(sin(n)²))`
-/

namespace A080893.P8511123600250597922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001517 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A080893.P8511123600250597922

/-! ## A080893.P10070014807932594915

`A001517(comp[2*(n+1)]-n)`
-/

namespace A080893.P10070014807932594915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001517 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A080893.P10070014807932594915

/-! ## A080893.P14715124966227407923

`A113873(A296515(n+1))`
-/

namespace A080893.P14715124966227407923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (A296515 (n + 1)).toNat

end

end A080893.P14715124966227407923

/-! ## A080893.P14712988001263597938

`or(1, A316773(A000217(n)))`
-/

namespace A080893.P14712988001263597938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316773 (A000217 n).toNat)

end

end A080893.P14712988001263597938

/-! ## A080893.P11843614480572439857

`A113873(eq[0, A087509(n)])`
-/

namespace A080893.P11843614480572439857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A080893.P11843614480572439857

/-! ## A080893.P8536860942848619751

`A113873(eq[A004396(n), A006369(n)])`
-/

namespace A080893.P8536860942848619751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A080893.P8536860942848619751

/-!
# A080894: Expansion of the exponential series exp( x M(x) ) = exp( (1-sqrt(1-2x-3x^2))/(2x) ), where M(x) is the ordinary generating series of the Motzkin numbers A001006.

The programs for A080894, there is no canonical definition to state claims against.
-/

/-! ## A080894.P14439758264597783789

`A004273(A304403(n))`
-/

namespace A080894.P14439758264597783789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A304403 n).toNat

end

end A080894.P14439758264597783789

/-! ## A080894.P15924516076980795979

`A004396(A201996(n)+1)`
-/

namespace A080894.P15924516076980795979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A201996 n + 1).toNat

end

end A080894.P15924516076980795979

/-!
# A080895: Expansion of the exponential series exp( x R(x) ) = exp((1 + x - sqrt(1 - 2 x - 3x^2))/(2(1 + x))), where R(x) is the ordinary generating series of the Riordan numbers A005043.

The programs for A080895, there is no canonical definition to state claims against.
-/

/-! ## A080895.P6053678673850740394

`A215907(A036727(n))`
-/

namespace A080895.P6053678673850740394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215907 (A036727 n).toNat

end

end A080895.P6053678673850740394

/-! ## A080895.P10896041625376587650

`A365043(A322630(n!+1))`
-/

namespace A080895.P10896041625376587650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365043 (A322630 (Nat.factorial n + 1)).toNat

end

end A080895.P10896041625376587650

/-!
# A080896: Expansion of the exponential series exp( x * T(x) ) = exp( x / sqrt(1 - 2*x - 3*x^2) ), where T(x) is the ordinary generating series of the central trinomial coefficients (A002426).

The programs for A080896, there is no canonical definition to state claims against.
-/

/-! ## A080896.P8074986297257097781

`n*A194161(A141628(n))+1`
-/

namespace A080896.P8074986297257097781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A194161 (A141628 n).toNat + 1

end

end A080896.P8074986297257097781

/-! ## A080896.P10740105158947976944

`or(A008619(A081474(n)), A103185(n))`
-/

namespace A080896.P10740105158947976944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 (A081474 n).toNat) (A103185 n)

end

end A080896.P10740105158947976944

/-!
# A080898: a(1)=2; for n>1, a(n+1) = least prime > a(n) and congruent to a prime modulo prime successor of a(n).

The programs for A080898, there is no canonical definition to state claims against.
-/

/-! ## A080898.P16908029638370842297

`A204894(A003961(a(n-1)))` with `a(0)=2`
-/

namespace A080898.P16908029638370842297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A204894 (A003961 (a (n - 1)).toNat).toNat

end

end A080898.P16908029638370842297

/-! ## A080898.P16685217309779837283

`A204894(A151800(a(n-1)))` with `a(0)=2`
-/

namespace A080898.P16685217309779837283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A204894 (A151800 (a (n - 1)).toNat).toNat

end

end A080898.P16685217309779837283

/-! ## A080898.P1424181518281817256

`A204894(A266620(a(n-1)))` with `a(0)=2`
-/

namespace A080898.P1424181518281817256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A204894 (A266620 (a (n - 1)).toNat).toNat

end

end A080898.P1424181518281817256

/-! ## A080898.P7215657627846216759

`A204894(A322863(a(n-1)))` with `a(0)=2`
-/

namespace A080898.P7215657627846216759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A204894 (A322863 (a (n - 1)).toNat).toNat

end

end A080898.P7215657627846216759

/-! ## A080898.P2031743383725486440

`A020484(A165712(a(n-1)))` with `a(0)=2, a(1)=5`
-/

namespace A080898.P2031743383725486440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A020484 (A165712 (a (n - 1)).toNat).toNat

end

end A080898.P2031743383725486440

/-!
# A080899: Primes p(k) such that every composite number between p(k) and p(k+1) has exactly three distinct prime factors.

The programs for A080899, there is no canonical definition to state claims against.
-/

/-! ## A080899.P15202152801161247073

`A075583(n+2)%A128358(n+4)`
-/

namespace A080899.P15202152801161247073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075583 (n + 2)) (A128358 (n + 4))

end

end A080899.P15202152801161247073

/-! ## A080899.P9324143539485181701

`∩[A075583(n+1), A216366(n+1)]`
-/

namespace A080899.P9324143539485181701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080899.P9324143539485181701

/-! ## A080899.P5041860769912825381

`A075583(n+2)+A000007(A299284(n))`
-/

namespace A080899.P5041860769912825381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075583 (n + 2) + A000007 (A299284 n).toNat

end

end A080899.P5041860769912825381

/-! ## A080899.P17905584031440976307

`A006530(A075583(n+2)*A242351(n))`
-/

namespace A080899.P17905584031440976307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075583 (n + 2) * A242351 n).toNat

end

end A080899.P17905584031440976307

/-! ## A080899.P12873190677385991817

`A075583(n+2)*A302044(A011782(n))`
-/

namespace A080899.P12873190677385991817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075583 (n + 2) * A302044 (A011782 n).toNat

end

end A080899.P12873190677385991817

