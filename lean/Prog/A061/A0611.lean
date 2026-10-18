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
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061100: Squares with digital root 4.

The programs for A061100, the canonical program `A061100.P2210446048743593044` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061100 has offset 1).

The definition of A061100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061100.P2210446048743593044

`record[(dr(xor(2, n))-n)²]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061100

/-- `record[(dr(xor(2, n))-n)²]` -/
def P2210446048743593044.Spec : Prop :=
  ∀ n, P2210446048743593044.a n = A061100 (n + 1)

theorem P2210446048743593044.correct : P2210446048743593044.Spec := by
  intro n
  simp only [A061100, Nat.add_sub_cancel]

end A061100

/-! ## A061100.P3483285176643727141

`(ceil(9*n/2)+2)²`
-/

namespace A061100.P3483285176643727141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈9 * ((n : ℚ) / 2)⌉ + 2) ^ 2

end

end A061100.P3483285176643727141

namespace A061100

/-- `(ceil(9*n/2)+2)²` -/
def P3483285176643727141.Spec : Prop :=
  ∀ n, P3483285176643727141.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P15591672720194060165

`∑[floor(a(n-2))]^2` with `a(0)=2, a(1)=5, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A061100.P15591672720194060165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061100.P15591672720194060165

namespace A061100

/-- `∑[floor(a(n-2))]^2` -/
def P15591672720194060165.Spec : Prop :=
  ∀ n, (P15591672720194060165.a n : ℤ) = A061100 (n + 1)

end A061100

/-! ## A061100.P15280834436846423298

`record[((2*n+1)%9-(n+3))²]`
-/

namespace A061100.P15280834436846423298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((2 * n + 1) % 9 : ℕ) : ℤ) - (n + 3 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061100.P15280834436846423298

namespace A061100

/-- `record[((2*n+1)%9-(n+3))²]` -/
def P15280834436846423298.Spec : Prop :=
  ∀ n, P15280834436846423298.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P12563737753614970903

`∪[A017186(n), A017246(n)]`
-/

namespace A061100.P12563737753614970903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017246 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061100.P12563737753614970903

namespace A061100

/-- `∪[A017186(n), A017246(n)]` -/
def P12563737753614970903.Spec : Prop :=
  ∀ n, (P12563737753614970903.a n : ℤ) = A061100 (n + 1)

end A061100

/-! ## A061100.P8803682596570745329

`A063289(n+3)*A063289(n+3)`
-/

namespace A061100.P8803682596570745329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 3) * A063289 (n + 3)

end

end A061100.P8803682596570745329

namespace A061100

/-- `A063289(n+3)*A063289(n+3)` -/
def P8803682596570745329.Spec : Prop :=
  ∀ n, P8803682596570745329.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P9245872022067476236

`record[(A113655(2*(n+1))+n)²]`
-/

namespace A061100.P9245872022067476236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113655 (2 * (n + 1)) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061100.P9245872022067476236

namespace A061100

/-- `record[(A113655(2*(n+1))+n)²]` -/
def P9245872022067476236.Spec : Prop :=
  ∀ n, P9245872022067476236.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P17215076573690205899

`A135556(3*n+2)`
-/

namespace A061100.P17215076573690205899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (3 * n + 2)

end

end A061100.P17215076573690205899

namespace A061100

/-- `A135556(3*n+2)` -/
def P17215076573690205899.Spec : Prop :=
  ∀ n, P17215076573690205899.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P2457922378530156149

`A117676(A047385(n+1))`
-/

namespace A061100.P2457922378530156149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117676 (A047385 (n + 1)).toNat

end

end A061100.P2457922378530156149

namespace A061100

/-- `A117676(A047385(n+1))` -/
def P2457922378530156149.Spec : Prop :=
  ∀ n, P2457922378530156149.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P914587053720806304

`record[A160168(2*n)²]`
-/

namespace A061100.P914587053720806304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160168 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061100.P914587053720806304

namespace A061100

/-- `record[A160168(2*n)²]` -/
def P914587053720806304.Spec : Prop :=
  ∀ n, P914587053720806304.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P27965743853857310

`A000290(A063289(n+3))`
-/

namespace A061100.P27965743853857310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A063289 (n + 3)).toNat

end

end A061100.P27965743853857310

namespace A061100

/-- `A000290(A063289(n+3))` -/
def P27965743853857310.Spec : Prop :=
  ∀ n, P27965743853857310.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P2909769737647200288

`A000290(Δ[A002620(3*n)])`
-/

namespace A061100.P2909769737647200288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (n + 1) - f1 n).toNat

end

end A061100.P2909769737647200288

namespace A061100

/-- `A000290(Δ[A002620(3*n)])` -/
def P2909769737647200288.Spec : Prop :=
  ∀ n, P2909769737647200288.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P16152017661032568547

`A000290(A001651(3*n+2))`
-/

namespace A061100.P16152017661032568547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A001651 (3 * n + 2)).toNat

end

end A061100.P16152017661032568547

namespace A061100

/-- `A000290(A001651(3*n+2))` -/
def P16152017661032568547.Spec : Prop :=
  ∀ n, P16152017661032568547.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P1913672220534496802

`A000290(A055264(2*n+1)+1)`
-/

namespace A061100.P1913672220534496802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A055264 (2 * n + 1) + 1).toNat

end

end A061100.P1913672220534496802

namespace A061100

/-- `A000290(A055264(2*n+1)+1)` -/
def P1913672220534496802.Spec : Prop :=
  ∀ n, P1913672220534496802.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P5301405902129194557

`A000290(A174438(2*n+1)+2)`
-/

namespace A061100.P5301405902129194557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A174438 (2 * n + 1) + 2).toNat

end

end A061100.P5301405902129194557

namespace A061100

/-- `A000290(A174438(2*n+1)+2)` -/
def P5301405902129194557.Spec : Prop :=
  ∀ n, P5301405902129194557.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P10905873149560539931

`A000290(A047383(n+1)+n+1)`
-/

namespace A061100.P10905873149560539931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A047383 (n + 1) + (n + 1 : ℤ)).toNat

end

end A061100.P10905873149560539931

namespace A061100

/-- `A000290(A047383(n+1)+n+1)` -/
def P10905873149560539931.Spec : Prop :=
  ∀ n, P10905873149560539931.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P17127134659250460967

`A000290(A047215(n+1)+2*n)`
-/

namespace A061100.P17127134659250460967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A047215 (n + 1) + (2 * n : ℤ)).toNat

end

end A061100.P17127134659250460967

namespace A061100

/-- `A000290(A047215(n+1)+2*n)` -/
def P17127134659250460967.Spec : Prop :=
  ∀ n, P17127134659250460967.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P17617380492461071751

`A000290(A047209(n+1)+2*n+1)`
-/

namespace A061100.P17617380492461071751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A047209 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A061100.P17617380492461071751

namespace A061100

/-- `A000290(A047209(n+1)+2*n+1)` -/
def P17617380492461071751.Spec : Prop :=
  ∀ n, P17617380492461071751.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P2931513632069612150

`A000290(A016825(n)+A004526(n+1))`
-/

namespace A061100.P2931513632069612150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A016825 n + A004526 (n + 1)).toNat

end

end A061100.P2931513632069612150

namespace A061100

/-- `A000290(A016825(n)+A004526(n+1))` -/
def P2931513632069612150.Spec : Prop :=
  ∀ n, P2931513632069612150.a n = A061100 (n + 1)

end A061100

/-! ## A061100.P13617628727821769306

`A008794(A017221(n))`
-/

namespace A061100.P13617628727821769306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A017221 n).toNat

end

end A061100.P13617628727821769306

namespace A061100

/-- `A008794(A017221(n))` -/
def P13617628727821769306.Spec : Prop :=
  ∀ n, P13617628727821769306.a n = A061100 (n + 1)

end A061100

/-!
# A061101: Squares with digital root 7.

The programs for A061101, the canonical program `A061101.P362801817217052755` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061101 has offset 1).

The definition of A061101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061101.P362801817217052755

`(∑[gcd(2, n)^3]-4)²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061101

/-- `(∑[gcd(2, n)^3]-4)²` -/
def P362801817217052755.Spec : Prop :=
  ∀ n, P362801817217052755.a n = A061101 (n + 1)

theorem P362801817217052755.correct : P362801817217052755.Spec := by
  intro n
  simp only [A061101, Nat.add_sub_cancel]

end A061101

/-! ## A061101.P16249395030247126485

`∑[9-a(n-1)]²` with `a(0)=4, a(1)=1`
-/

namespace A061101.P16249395030247126485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P16249395030247126485

namespace A061101

/-- `∑[9-a(n-1)]²` -/
def P16249395030247126485.Spec : Prop :=
  ∀ n, P16249395030247126485.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P13059216945988530584

`(record[n/(n%9)!]+4)²`
-/

namespace A061101.P13059216945988530584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4) ^ 2

end

end A061101.P13059216945988530584

namespace A061101

/-- `(record[n/(n%9)!]+4)²` -/
def P13059216945988530584.Spec : Prop :=
  ∀ n, P13059216945988530584.a n = (A061101 (n + 1) : ℚ)

end A061101

/-! ## A061101.P17217867044927919365

`∑[∑[ogf((4+x+4x^2)/(1+x))]]²`
-/

namespace A061101.P17217867044927919365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P17217867044927919365

namespace A061101

/-- `∑[∑[ogf((4+x+4x^2)/(1+x))]]²` -/
def P17217867044927919365.Spec : Prop :=
  ∀ n, P17217867044927919365.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P4771091856926487722

`(4-∑[8^((n+1)%2)])²`
-/

namespace A061101.P4771091856926487722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A061101.P4771091856926487722

namespace A061101

/-- `(4-∑[8^((n+1)%2)])²` -/
def P4771091856926487722.Spec : Prop :=
  ∀ n, P4771091856926487722.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P10365258103762105199

`eq[dr((2*n)²)+n, n+1]²`
-/

namespace A061101.P10365258103762105199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061101.P10365258103762105199

namespace A061101

/-- `eq[dr((2*n)²)+n, n+1]²` -/
def P10365258103762105199.Spec : Prop :=
  ∀ n, (P10365258103762105199.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P173100299520473478

`eq[n-1, n-dr((2*n)²)]²`
-/

namespace A061101.P173100299520473478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061101.P173100299520473478

namespace A061101

/-- `eq[n-1, n-dr((2*n)²)]²` -/
def P173100299520473478.Spec : Prop :=
  ∀ n, (P173100299520473478.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P4253980343380858168

`lt[n*dr((2*n)²), 2*n]²`
-/

namespace A061101.P4253980343380858168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A061101.P4253980343380858168

namespace A061101

/-- `lt[n*dr((2*n)²), 2*n]²` -/
def P4253980343380858168.Spec : Prop :=
  ∀ n, (P4253980343380858168.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P6805053682481057926

`eq[2*n, (2*n)^dr((2*n)²)]²`
-/

namespace A061101.P6805053682481057926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ SequenceMachineLib.digitalRoot ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A061101.P6805053682481057926

namespace A061101

/-- `eq[2*n, (2*n)^dr((2*n)²)]²` -/
def P6805053682481057926.Spec : Prop :=
  ∀ n, (P6805053682481057926.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P7882195973905736554

`(comp[2*n+n-1]+3*or(1, n)+1)²`
-/

namespace A061101.P7882195973905736554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (3 * Nat.lor 1 n + 1)) ^ 2

end

end A061101.P7882195973905736554

namespace A061101

/-- `(comp[2*n+n-1]+3*or(1, n)+1)²` -/
def P7882195973905736554.Spec : Prop :=
  ∀ n, (P7882195973905736554.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P9591441138454963237

`∑[A040019(n)]²`
-/

namespace A061101.P9591441138454963237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P9591441138454963237

namespace A061101

/-- `∑[A040019(n)]²` -/
def P9591441138454963237.Spec : Prop :=
  ∀ n, P9591441138454963237.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P16075297552950277290

`A156638(n+1)²`
-/

namespace A061101.P16075297552950277290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1) ^ 2

end

end A061101.P16075297552950277290

namespace A061101

/-- `A156638(n+1)²` -/
def P16075297552950277290.Spec : Prop :=
  ∀ n, P16075297552950277290.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P17371818598501037337

`∑[dr(A040181(n))]²`
-/

namespace A061101.P17371818598501037337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P17371818598501037337

namespace A061101

/-- `∑[dr(A040181(n))]²` -/
def P17371818598501037337.Spec : Prop :=
  ∀ n, (P17371818598501037337.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P3122839213611439759

`∑[dr(A040505(n))]²`
-/

namespace A061101.P3122839213611439759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040505 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P3122839213611439759

namespace A061101

/-- `∑[dr(A040505(n))]²` -/
def P3122839213611439759.Spec : Prop :=
  ∀ n, (P3122839213611439759.a n : ℤ) = A061101 (n + 1)

end A061101

/-! ## A061101.P13881187160801213355

`∑[A040063(n)/2]²`
-/

namespace A061101.P13881187160801213355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040063 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P13881187160801213355

namespace A061101

/-- `∑[A040063(n)/2]²` -/
def P13881187160801213355.Spec : Prop :=
  ∀ n, P13881187160801213355.a n = (A061101 (n + 1) : ℚ)

end A061101

/-! ## A061101.P3751708938223643322

`∑[A040139(n)/3]²`
-/

namespace A061101.P3751708938223643322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040139 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A061101.P3751708938223643322

namespace A061101

/-- `∑[A040139(n)/3]²` -/
def P3751708938223643322.Spec : Prop :=
  ∀ n, P3751708938223643322.a n = (A061101 (n + 1) : ℚ)

end A061101

/-! ## A061101.P12529496424604015933

`(A090570(n+1)+4)²`
-/

namespace A061101.P12529496424604015933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090570 (n + 1) + 4) ^ 2

end

end A061101.P12529496424604015933

namespace A061101

/-- `(A090570(n+1)+4)²` -/
def P12529496424604015933.Spec : Prop :=
  ∀ n, P12529496424604015933.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P9406917822397659484

`(A168373(n+1)+n)²`
-/

namespace A061101.P9406917822397659484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168373 (n + 1) + (n : ℤ)) ^ 2

end

end A061101.P9406917822397659484

namespace A061101

/-- `(A168373(n+1)+n)²` -/
def P9406917822397659484.Spec : Prop :=
  ∀ n, P9406917822397659484.a n = A061101 (n + 1)

end A061101

/-! ## A061101.P12110701923228437145

`(A106387(n+1)-n)²`
-/

namespace A061101.P12110701923228437145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A106387 (n + 1) - (n : ℤ)) ^ 2

end

end A061101.P12110701923228437145

namespace A061101

/-- `(A106387(n+1)-n)²` -/
def P12110701923228437145.Spec : Prop :=
  ∀ n, P12110701923228437145.a n = A061101 (n + 1)

end A061101

/-!
# A061104: Smallest number whose sum of digits is n^2.

The programs for A061104, the canonical program `A061104.P7332019098736278192` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061104 has offset 0).

The definition of A061104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061104.P7332019098736278192

`A051885(n²)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061104

/-- `A051885(n²)` -/
def P7332019098736278192.Spec : Prop :=
  ∀ n, P7332019098736278192.a n = A061104 n

theorem P7332019098736278192.correct : P7332019098736278192.Spec := by
  intro n
  simp only [A061104]

end A061104

/-! ## A061104.P3242623174852619928

`A037124(n²+1)-1`
-/

namespace A061104.P3242623174852619928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n ^ 2 + 1) - 1

end

end A061104.P3242623174852619928

namespace A061104

/-- `A037124(n²+1)-1` -/
def P3242623174852619928.Spec : Prop :=
  ∀ n, P3242623174852619928.a n = A061104 n

end A061104

/-! ## A061104.P15575247003092457516

`or(char[1], A051885(A000290(n)))`
-/

namespace A061104.P15575247003092457516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051885 (A000290 n).toNat)

end

end A061104.P15575247003092457516

namespace A061104

/-- `or(char[1], A051885(A000290(n)))` -/
def P15575247003092457516.Spec : Prop :=
  ∀ n, P15575247003092457516.a n = A061104 n

end A061104

/-! ## A061104.P14678726627041373643

`record[A051885(A000290(A025480(n)))]`
-/

namespace A061104.P14678726627041373643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000290 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061104.P14678726627041373643

namespace A061104

/-- `record[A051885(A000290(A025480(n)))]` -/
def P14678726627041373643.Spec : Prop :=
  ∀ n, P14678726627041373643.a n = A061104 n

end A061104

/-! ## A061104.P8025125933863063866

`record[A051885(A000290(A219649(n)))]`
-/

namespace A061104.P8025125933863063866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000290 (A219649 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061104.P8025125933863063866

namespace A061104

/-- `record[A051885(A000290(A219649(n)))]` -/
def P8025125933863063866.Spec : Prop :=
  ∀ n, P8025125933863063866.a n = A061104 n

end A061104

/-!
# A061105: Smallest number whose sum of digits is n^3.

The programs for A061105, the canonical program `A061105.P5475709166663149495` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061105 has offset 0).

The definition of A061105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061105.P5475709166663149495

`A051885(n^3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061105

/-- `A051885(n^3)` -/
def P5475709166663149495.Spec : Prop :=
  ∀ n, P5475709166663149495.a n = A061105 n

theorem P5475709166663149495.correct : P5475709166663149495.Spec := by
  intro n
  simp only [A061105]

end A061105

/-! ## A061105.P5524624162475752096

`(A021559(n+1)+1)*10^A061263(n)-1`
-/

namespace A061105.P5524624162475752096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021559 (n + 1) + 1 : ℚ) * (10 : ℚ) ^ (A061263 n : ℤ) - 1

end

end A061105.P5524624162475752096

namespace A061105

/-- `(A021559(n+1)+1)*10^A061263(n)-1` -/
def P5524624162475752096.Spec : Prop :=
  ∀ n, P5524624162475752096.a n = (A061105 n : ℚ)

end A061105

/-!
# A061107: a(0) = 0, a(1) = 1, a(n) is the concatenation of a(n-2) and a(n-1) for n > 1.

The programs for A061107, there is no canonical definition to state claims against.
-/

/-! ## A061107.P2680152605584546039

`A108047(n+1)-A288582(n)`
-/

namespace A061107.P2680152605584546039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108047 (n + 1) - A288582 n

end

end A061107.P2680152605584546039

/-! ## A061107.P13159020869440139077

`A131293(n+1)-A288582(n)`
-/

namespace A061107.P13159020869440139077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1) - A288582 n

end

end A061107.P13159020869440139077

/-! ## A061107.P4932354445110615143

`A008351(n+1)-A108047(n+1)`
-/

namespace A061107.P4932354445110615143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008351 (n + 1) - A108047 (n + 1)

end

end A061107.P4932354445110615143

/-! ## A061107.P4532742325410101681

`A008351(n+1)-A131293(n+1)`
-/

namespace A061107.P4532742325410101681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008351 (n + 1) - A131293 (n + 1)

end

end A061107.P4532742325410101681

/-! ## A061107.P5257143027590408240

`A008351(n+1)+A008352(n)-A104458(n+1)`
-/

namespace A061107.P5257143027590408240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008351 (n + 1) + (A008352 n - A104458 (n + 1))

end

end A061107.P5257143027590408240

/-!
# A061112: a(n) is the minimum number of divisors for any composite between prime(n) and prime(n+1).

The programs for A061112, there is no canonical definition to state claims against.
-/

/-! ## A061112.P2171384307451074361

`∏{e}[A076083(n+2), #+1]`
-/

namespace A061112.P2171384307451074361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076083 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A061112.P2171384307451074361

/-! ## A061112.P7905950735539782740

`A000005(A076083(n+2))`
-/

namespace A061112.P7905950735539782740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076083 (n + 2)).toNat

end

end A061112.P7905950735539782740

/-! ## A061112.P15447285248360295977

`A320111(2*A076083(n+2))`
-/

namespace A061112.P15447285248360295977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A076083 (n + 2)).toNat

end

end A061112.P15447285248360295977

/-! ## A061112.P9542881575215645173

`∑{d}[A076083(n+2), A057427(#)]`
-/

namespace A061112.P9542881575215645173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A061112.P9542881575215645173

/-! ## A061112.P11634064329592819884

`A032741(A076083(n+2))+A007318(C(2, n)+1)`
-/

namespace A061112.P11634064329592819884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A076083 (n + 2)).toNat + A007318 (Nat.choose 2 n + 1)

end

end A061112.P11634064329592819884

/-! ## A061112.P5861620353548854460

`A069157(2*A076083(n+2))`
-/

namespace A061112.P5861620353548854460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A076083 (n + 2)).toNat

end

end A061112.P5861620353548854460

/-! ## A061112.P140777876663496309

`A183063(2*A076083(n+2))`
-/

namespace A061112.P140777876663496309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A076083 (n + 2)).toNat

end

end A061112.P140777876663496309

/-! ## A061112.P722186432062691399

`A299480(4*A076083(n+2))`
-/

namespace A061112.P722186432062691399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (4 * A076083 (n + 2)).toNat

end

end A061112.P722186432062691399

/-!
# A061116: Numbers coprime to each of their decimal digits.

The programs for A061116, the canonical program `A061116.P14055420966358378018` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061116 has offset 1).

The definition of A061116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061116.P14055420966358378018

`eq[1, gcd(n, A007954(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061116

/-- `eq[1, gcd(n, A007954(n))]` -/
def P14055420966358378018.Spec : Prop :=
  ∀ n, (P14055420966358378018.a n : ℤ) = A061116 (n + 1)

theorem P14055420966358378018.correct : P14055420966358378018.Spec := by
  intro n
  simp only [A061116, Nat.add_sub_cancel]

end A061116

/-! ## A061116.P5545477787457304989

`filter[A138708(n+1), A168046(#)]`
-/

namespace A061116.P5545477787457304989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A061116.P5545477787457304989

namespace A061116

/-- `filter[A138708(n+1), A168046(#)]` -/
def P5545477787457304989.Spec : Prop :=
  ∀ n, P5545477787457304989.a n = A061116 (n + 1)

end A061116

/-! ## A061116.P10786598642761027842

`∩[A052382(n+1), A138708(n+1)]`
-/

namespace A061116.P10786598642761027842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061116.P10786598642761027842

namespace A061116

/-- `∩[A052382(n+1), A138708(n+1)]` -/
def P10786598642761027842.Spec : Prop :=
  ∀ n, (P10786598642761027842.a n : ℤ) = A061116 (n + 1)

end A061116

/-! ## A061116.P598504079225755191

`A118759(A138708(n+1))`
-/

namespace A061116.P598504079225755191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A138708 (n + 1)).toNat

end

end A061116.P598504079225755191

namespace A061116

/-- `A118759(A138708(n+1))` -/
def P598504079225755191.Spec : Prop :=
  ∀ n, P598504079225755191.a n = A061116 (n + 1)

end A061116

/-! ## A061116.P2852128523610174849

`A019554(A138708(n+1)²)`
-/

namespace A061116.P2852128523610174849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A138708 (n + 1) ^ 2).toNat

end

end A061116.P2852128523610174849

namespace A061116

/-- `A019554(A138708(n+1)²)` -/
def P2852128523610174849.Spec : Prop :=
  ∀ n, P2852128523610174849.a n = A061116 (n + 1)

end A061116

/-!
# A061117: Maximum number of divisors for any composite between prime(n) and prime(n+1).

The programs for A061117, there is no canonical definition to state claims against.
-/

/-! ## A061117.P3214872437651414211

`∏{e}[A076082(n+2), #+1]`
-/

namespace A061117.P3214872437651414211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076082 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A061117.P3214872437651414211

/-! ## A061117.P14695724322300659841

`A000005(A076082(n+2))`
-/

namespace A061117.P14695724322300659841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076082 (n + 2)).toNat

end

end A061117.P14695724322300659841

/-! ## A061117.P2058381729828725778

`∑{d}[A076082(n+2), A008683(#)+1]`
-/

namespace A061117.P2058381729828725778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A008683 d + 1)

end

end A061117.P2058381729828725778

/-! ## A061117.P13888083764635301536

`A320111(2*A076082(n+2))`
-/

namespace A061117.P13888083764635301536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A076082 (n + 2)).toNat

end

end A061117.P13888083764635301536

/-! ## A061117.P13707493761873341186

`A069157(2*A076082(n+2))`
-/

namespace A061117.P13707493761873341186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A076082 (n + 2)).toNat

end

end A061117.P13707493761873341186

/-! ## A061117.P12925195134888871512

`A183063(2*A076082(n+2))`
-/

namespace A061117.P12925195134888871512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A076082 (n + 2)).toNat

end

end A061117.P12925195134888871512

/-! ## A061117.P7266132760434512345

`A299480(4*A076082(n+2))`
-/

namespace A061117.P7266132760434512345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (4 * A076082 (n + 2)).toNat

end

end A061117.P7266132760434512345

/-!
# A061119: Primes in the sequence n^2 + 2^n (A001580).

The programs for A061119, there is no canonical definition to state claims against.
-/

/-! ## A061119.P10999646390462140055

`record[A109216(n)]`
-/

namespace A061119.P10999646390462140055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061119.P10999646390462140055

/-!
# A061120: Compute sum of divisors of the prime(n+1)-prime(n)-1 composite numbers between two consecutive primes; choose the smallest.

The programs for A061120, there is no canonical definition to state claims against.
-/

/-! ## A061120.P5883223314749413932

`∑{d}[A196245(A027379(n)+2), #]`
-/

namespace A061120.P5883223314749413932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196245 (A027379 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A061120.P5883223314749413932

/-! ## A061120.P2037622911489728973

`A000203(A076083(n+2)^A139337(n))`
-/

namespace A061120.P2037622911489728973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A076083 (n + 2) : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A061120.P2037622911489728973

/-! ## A061120.P3938798277007862069

`A000203(A076083(n+2))%A112633(2*n+3)`
-/

namespace A061120.P3938798277007862069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A076083 (n + 2)).toNat) (A112633 (2 * n + 3))

end

end A061120.P3938798277007862069

/-!
# A061121: Number of degree-n permutations of order exactly 6.

The programs for A061121, there is no canonical definition to state claims against.
-/

/-! ## A061121.P9360315957701586128

`A061139(n+1)+A061133(n+1)`
-/

namespace A061121.P9360315957701586128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061139 (n + 1) + A061133 (n + 1)

end

end A061121.P9360315957701586128

/-! ## A061121.P15561647075776399147

`A053496(n+1)-(A001470(n+1)+A001189(n+1))`
-/

namespace A061121.P15561647075776399147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053496 (n + 1) - (A001470 (n + 1) + A001189 (n + 1))

end

end A061121.P15561647075776399147

/-! ## A061121.P7171800832738655940

`A257847((23*2^n-1)*n%5*floor(n/5))+A061139(n+1)`
-/

namespace A061121.P7171800832738655940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (((23 * 2 ^ n : ℤ) - 1) * (((n % 5 : ℕ) : ℤ) * ⌊(n : ℚ) / 5⌋)).toNat + A061139 (n + 1)

end

end A061121.P7171800832738655940

/-! ## A061121.P1998935462683977709

`A061139(n+1)+A032766(7*A324069(n))`
-/

namespace A061121.P1998935462683977709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061139 (n + 1) + A032766 (7 * A324069 n).toNat

end

end A061121.P1998935462683977709

/-!
# A061122: Number of degree-n permutations of order exactly 8.

The programs for A061122, there is no canonical definition to state claims against.
-/

/-! ## A061122.P10640279883573109136

`A061140(n+1)+A061134(n+1)`
-/

namespace A061122.P10640279883573109136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061140 (n + 1) + A061134 (n + 1)

end

end A061122.P10640279883573109136

/-! ## A061122.P64557815553159745

`A053498(n+1)-A001472(n+1)`
-/

namespace A061122.P64557815553159745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 (n + 1) - A001472 (n + 1)

end

end A061122.P64557815553159745

/-! ## A061122.P4605544527142049162

`A029575(∑[(n-∑{digits}[n, #])!])`
-/

namespace A061122.P4605544527142049162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029575 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061122.P4605544527142049162

/-! ## A061122.P7967270078002563537

`A029575(A062399(n+1))`
-/

namespace A061122.P7967270078002563537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029575 (A062399 (n + 1)).toNat

end

end A061122.P7967270078002563537

/-! ## A061122.P12121452164882620627

`A029575(A082216(n)+1)`
-/

namespace A061122.P12121452164882620627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029575 (A082216 n + 1).toNat

end

end A061122.P12121452164882620627

/-!
# A061123: Number of degree-n permutations of order exactly 9.

The programs for A061123, there is no canonical definition to state claims against.
-/

/-! ## A061123.P10976919638382156575

`A053499(n+1)-A001470(n+1)`
-/

namespace A061123.P10976919638382156575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053499 (n + 1) - A001470 (n + 1)

end

end A061123.P10976919638382156575

/-! ## A061123.P9467723927967763895

`A029576(n+1)/A309858(A309864(n))`
-/

namespace A061123.P9467723927967763895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029576 (n + 1) : ℚ) / (A309858 (A309864 n).toNat : ℚ)

end

end A061123.P9467723927967763895

/-! ## A061123.P13589623833646980820

`A029576(n+1)/A000034(A029538(n+1))`
-/

namespace A061123.P13589623833646980820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029576 (n + 1) : ℚ) / (A000034 (A029538 (n + 1)).toNat : ℚ)

end

end A061123.P13589623833646980820

/-! ## A061123.P3815830706692689716

`∑[abs(a(n-2)-n)!]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0`
-/

namespace A061123.P3815830706692689716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0] fun n f1 =>
  Nat.factorial |(f1 (n - 2) : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061123.P3815830706692689716

/-! ## A061123.P9708565496740529157

`A029576(∑[(n-∑{digits}[n, #])!])`
-/

namespace A061123.P9708565496740529157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061123.P9708565496740529157

/-!
# A061124: Number of degree-n permutations of order exactly 10.

The programs for A061124, there is no canonical definition to state claims against.
-/

/-! ## A061124.P10967353093101301766

`∑{d}[C(A152389(n), 9), #]`
-/

namespace A061124.P10967353093101301766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152389 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A061124.P10967353093101301766

/-! ## A061124.P3994014144477438252

`∑{d}[C(A095062(n+1), 9), #]`
-/

namespace A061124.P3994014144477438252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095062 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A061124.P3994014144477438252

/-! ## A061124.P1635554474179031268

`A318925(A035879(n))`
-/

namespace A061124.P1635554474179031268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 (A035879 n).toNat

end

end A061124.P1635554474179031268

/-! ## A061124.P7879083365095946938

`A057355(A361675(n+1))`
-/

namespace A061124.P7879083365095946938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A361675 (n + 1)).toNat

end

end A061124.P7879083365095946938

/-!
# A061125: Number of degree-n permutations of order exactly 12.

The programs for A061125, there is no canonical definition to state claims against.
-/

/-! ## A061125.P4528731876077088748

`(n+1)*A001281(A029573(n))`
-/

namespace A061125.P4528731876077088748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001281 (A029573 n).toNat

end

end A061125.P4528731876077088748

/-! ## A061125.P11125559814639793921

`A014682((n+1)*A029573(n))`
-/

namespace A061125.P11125559814639793921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 1 : ℤ) * A029573 n).toNat

end

end A061125.P11125559814639793921

/-! ## A061125.P10837655543804439923

`A004525(A029573(n))*A077168(n)`
-/

namespace A061125.P10837655543804439923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029573 n).toNat * A077168 n

end

end A061125.P10837655543804439923

/-! ## A061125.P9132160706897119119

`A004525(A029573(n))*A126352(n)`
-/

namespace A061125.P9132160706897119119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029573 n).toNat * A126352 n

end

end A061125.P9132160706897119119

/-! ## A061125.P9919343510873596351

`A004525(A029573(n))*A131209(n)`
-/

namespace A061125.P9919343510873596351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A029573 n).toNat * A131209 n

end

end A061125.P9919343510873596351

/-!
# A061126: Number of degree-n permutations of order exactly 16.

The programs for A061126, there is no canonical definition to state claims against.
-/

/-! ## A061126.P6640213368446485780

`∑[lcm(n!, A184955(n))]`
-/

namespace A061126.P6640213368446485780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A184955 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061126.P6640213368446485780

/-! ## A061126.P2698843132701888909

`∑[n!*A067898(A036378(n))]`
-/

namespace A061126.P2698843132701888909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A067898 (A036378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061126.P2698843132701888909

/-! ## A061126.P4189398080649746645

`∑[n!*A107846(A038754(n))]`
-/

namespace A061126.P4189398080649746645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107846 (A038754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061126.P4189398080649746645

/-! ## A061126.P12194581069190462044

`∑[n!*A185284(A008815(n))]`
-/

namespace A061126.P12194581069190462044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A185284 (A008815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061126.P12194581069190462044

/-! ## A061126.P4594696945150100928

`∑[n!*A086080(A198314(n))]`
-/

namespace A061126.P4594696945150100928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A086080 (A198314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061126.P4594696945150100928

/-!
# A061127: Number of degree-n permutations of order exactly 24.

The programs for A061127, there is no canonical definition to state claims against.
-/

/-! ## A061127.P17977652465510089940

`A068625(n+1)*A342910(A286759(n))`
-/

namespace A061127.P17977652465510089940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068625 (n + 1) * A342910 (A286759 n).toNat

end

end A061127.P17977652465510089940

/-!
# A061128: Number of degree-n permutations of order exactly 30.

The programs for A061128, there is no canonical definition to state claims against.
-/

/-! ## A061128.P13358281560659745928

`A000196(A143404(n))*A143383(n)`
-/

namespace A061128.P13358281560659745928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A143404 n).toNat * A143383 n

end

end A061128.P13358281560659745928

/-! ## A061128.P8735899869860817884

`A074859(n+1)*A352516(A060455(n))`
-/

namespace A061128.P8735899869860817884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074859 (n + 1) * A352516 (A060455 n).toNat

end

end A061128.P8735899869860817884

/-! ## A061128.P5225092109488053971

`lcm(A000045(A184945(2*n+1)), A074859(n+1))`
-/

namespace A061128.P5225092109488053971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (A184945 (2 * n + 1)).toNat) (A074859 (n + 1))

end

end A061128.P5225092109488053971

/-! ## A061128.P14903665241124114048

`A057342(A342342(2*n+1))*A326685(2*n+3)`
-/

namespace A061128.P14903665241124114048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057342 (A342342 (2 * n + 1)).toNat * A326685 (2 * n + 3)

end

end A061128.P14903665241124114048

/-!
# A061129: Number of degree-n even permutations of order dividing 4.

The programs for A061129, there is no canonical definition to state claims against.
-/

/-! ## A061129.P16499083041813705733

`A001472(n)-A061136(n)`
-/

namespace A061129.P16499083041813705733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 n - A061136 n

end

end A061129.P16499083041813705733

/-! ## A061129.P17483201681680330244

`A051695(A028310(n))+A000704(n)`
-/

namespace A061129.P17483201681680330244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051695 (A028310 n).toNat + A000704 n

end

end A061129.P17483201681680330244

/-! ## A061129.P13614289928832197443

`A051695(A233583(n+1))+A000704(n)`
-/

namespace A061129.P13614289928832197443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051695 (A233583 (n + 1)).toNat + A000704 n

end

end A061129.P13614289928832197443

/-! ## A061129.P15946438779344211859

`A051695(A233583(n+1))+A000085(n)-A001465(n)`
-/

namespace A061129.P15946438779344211859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051695 (A233583 (n + 1)).toNat + (A000085 n - A001465 n)

end

end A061129.P15946438779344211859

/-! ## A061129.P309361230125761689

`A061131(n)-A061134(A028310(n))`
-/

namespace A061129.P309361230125761689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061131 n - A061134 (A028310 n).toNat

end

end A061129.P309361230125761689

/-! ## A061129.P8379031839082593747

`A061131(n)-A061134(A233583(n+1))`
-/

namespace A061129.P8379031839082593747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061131 n - A061134 (A233583 (n + 1)).toNat

end

end A061129.P8379031839082593747

/-!
# A061130: Number of degree-n even permutations of order dividing 6.

The programs for A061130, there is no canonical definition to state claims against.
-/

/-! ## A061130.P11165992658863288562

`A053496(n)-A061137(n)`
-/

namespace A061130.P11165992658863288562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053496 n - A061137 n

end

end A061130.P11165992658863288562

/-! ## A061130.P8881688684054275264

`A053496(n)-(A061139(n)+A001465(n))`
-/

namespace A061130.P8881688684054275264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053496 n - (A061139 n + A001465 n)

end

end A061130.P8881688684054275264

/-! ## A061130.P17444548106168052156

`A008307(A166136(n+3))-(A061139(n)+A001465(n))`
-/

namespace A061130.P17444548106168052156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A166136 (n + 3)).toNat - (A061139 n + A001465 n)

end

end A061130.P17444548106168052156

/-! ## A061130.P17645260397297797928

`A008307(A133263(n+4)+4)-(A061139(n)+A001465(n))`
-/

namespace A061130.P17645260397297797928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A133263 (n + 4) + 4).toNat - (A061139 n + A001465 n)

end

end A061130.P17645260397297797928

/-! ## A061130.P2250889890164497163

`A008307(A034856(n+3)+8)-(A061139(n)+A001465(n))`
-/

namespace A061130.P2250889890164497163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A034856 (n + 3) + 8).toNat - (A061139 n + A001465 n)

end

end A061130.P2250889890164497163

/-!
# A061131: Number of degree-n even permutations of order dividing 8.

The programs for A061131, there is no canonical definition to state claims against.
-/

/-! ## A061131.P991157688889088818

`A053498(n)-A308648(n)`
-/

namespace A061131.P991157688889088818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n - A308648 n

end

end A061131.P991157688889088818

/-! ## A061131.P7345340979940568300

`A061134(round(acot(n)+n))+A061129(n)`
-/

namespace A061131.P7345340979940568300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061134 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A061129 n

end

end A061131.P7345340979940568300

/-! ## A061131.P18077944161841448231

`A061134(round(sqrt(n²+1)))+A061129(n)`
-/

namespace A061131.P18077944161841448231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061134 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A061129 n

end

end A061131.P18077944161841448231

/-! ## A061131.P14204782213420346413

`A008307(A167614(n+5)+5)-A308648(n)`
-/

namespace A061131.P14204782213420346413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A167614 (n + 5) + 5).toNat - A308648 n

end

end A061131.P14204782213420346413

/-! ## A061131.P16582477595235517076

`A008307(A152950(n+7)+5)-A308648(n)`
-/

namespace A061131.P16582477595235517076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A152950 (n + 7) + 5).toNat - A308648 n

end

end A061131.P16582477595235517076

/-! ## A061131.P7635688706637205082

`A008307(A000096(n+5)+9)-A308648(n)`
-/

namespace A061131.P7635688706637205082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A000096 (n + 5) + 9).toNat - A308648 n

end

end A061131.P7635688706637205082

/-! ## A061131.P5317142864826191347

`A008307(A055999(n)+A016789(n+9))-A308648(n)`
-/

namespace A061131.P5317142864826191347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A055999 n + A016789 (n + 9)).toNat - A308648 n

end

end A061131.P5317142864826191347

/-!
# A061132: Number of degree-n even permutations of order dividing 10.

The programs for A061132, there is no canonical definition to state claims against.
-/

/-! ## A061132.P10471031383071821070

`A059593(n)+A000704(A073790(n))`
-/

namespace A061132.P10471031383071821070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059593 n + A000704 (A073790 n).toNat

end

end A061132.P10471031383071821070

/-! ## A061132.P1657825617028297856

`A004442(A193438(n))+A000704(n)`
-/

namespace A061132.P1657825617028297856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A193438 n).toNat + A000704 n

end

end A061132.P1657825617028297856

/-! ## A061132.P14643920451320302834

`A048099(A028310(n))+A028310(A193438(n))`
-/

namespace A061132.P14643920451320302834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (A028310 n).toNat + A028310 (A193438 n).toNat

end

end A061132.P14643920451320302834

/-!
# A061133: Number of degree-n even permutations of order exactly 6.

The programs for A061133, there is no canonical definition to state claims against.
-/

/-! ## A061133.P1240757521536811094

`A061121(n+1)-A061139(n+1)`
-/

namespace A061133.P1240757521536811094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061121 (n + 1) - A061139 (n + 1)

end

end A061133.P1240757521536811094

/-! ## A061133.P8218494305363873047

`A061130(n+1)-(A001471(n+1)+A000704(n+1))`
-/

namespace A061133.P8218494305363873047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061130 (n + 1) - (A001471 (n + 1) + A000704 (n + 1))

end

end A061133.P8218494305363873047

/-! ## A061133.P3621977788928691857

`C(n, 4)*A327031(2*C(n, 4))`
-/

namespace A061133.P3621977788928691857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℤ) * A327031 (2 * Nat.choose n 4)

end

end A061133.P3621977788928691857

/-! ## A061133.P1067437168938993079

`A257847((23*2^n-1)*n%5*floor(n/5))`
-/

namespace A061133.P1067437168938993079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257847 (((23 * 2 ^ n : ℤ) - 1) * (((n % 5 : ℕ) : ℤ) * ⌊(n : ℚ) / 5⌋)).toNat

end

end A061133.P1067437168938993079

/-!
# A061134: Number of degree-n even permutations of order exactly 8.

The programs for A061134, there is no canonical definition to state claims against.
-/

/-! ## A061134.P17214097604990578115

`A061122(n+1)-A061140(n+1)`
-/

namespace A061134.P17214097604990578115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061122 (n + 1) - A061140 (n + 1)

end

end A061134.P17214097604990578115

/-! ## A061134.P14542958956338537199

`A061131(n+1)-A061129(n+1)`
-/

namespace A061134.P14542958956338537199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061131 (n + 1) - A061129 (n + 1)

end

end A061134.P14542958956338537199

/-! ## A061134.P5667762543985919800

`A061131(n+1)-(A051695(n+1)+A000704(n+1))`
-/

namespace A061134.P5667762543985919800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061131 (n + 1) - (A051695 (n + 1) + A000704 (n + 1))

end

end A061134.P5667762543985919800

/-! ## A061134.P16413177339955414427

`∏[A243057(n+1)]%A089871(n)`
-/

namespace A061134.P16413177339955414427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A089871 n)

end

end A061134.P16413177339955414427

/-! ## A061134.P2010264457031701525

`A070733(n+1)*A107846(A003418(n))`
-/

namespace A061134.P2010264457031701525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070733 (n + 1) * A107846 (A003418 n).toNat

end

end A061134.P2010264457031701525

/-!
# A061135: Number of degree-n even permutations of order exactly 10.

The programs for A061135, there is no canonical definition to state claims against.
-/

/-! ## A061135.P9180401362855254692

`A303819(n)*A328496(A303819(n))`
-/

namespace A061135.P9180401362855254692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303819 n * A328496 (A303819 n).toNat

end

end A061135.P9180401362855254692

/-! ## A061135.P9455633243639796353

`A000010(A248772(n+1))*A261225(n)`
-/

namespace A061135.P9455633243639796353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A248772 (n + 1)).toNat * A261225 n

end

end A061135.P9455633243639796353

/-! ## A061135.P17642569467971276093

`A096632(n+2)%A146010(A000048(n))`
-/

namespace A061135.P17642569467971276093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096632 (n + 2)) (A146010 (A000048 n).toNat)

end

end A061135.P17642569467971276093

/-! ## A061135.P5121712831612949318

`lcm(A096632(n+2), A178798(A096612(n)))`
-/

namespace A061135.P5121712831612949318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096632 (n + 2)) (A178798 (A096612 n).toNat)

end

end A061135.P5121712831612949318

/-! ## A061135.P8736942807803284710

`Δ[A029577(A068634(n+1))/A310882(n)]`
-/

namespace A061135.P8736942807803284710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029577 (A068634 (n + 1)).toNat : ℚ) / (A310882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061135.P8736942807803284710

/-!
# A061136: Number of degree-n odd permutations of order dividing 4.

The programs for A061136, there is no canonical definition to state claims against.
-/

/-! ## A061136.P2577172691214641059

`A061138(n)+A001465(n)`
-/

namespace A061136.P2577172691214641059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061138 n + A001465 n

end

end A061136.P2577172691214641059

/-! ## A061136.P5193700929231346232

`A001472(n)-A061129(n)`
-/

namespace A061136.P5193700929231346232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 n - A061129 n

end

end A061136.P5193700929231346232

/-! ## A061136.P12593432827329056173

`A000085(n)+A061138(n)-A000704(n)`
-/

namespace A061136.P12593432827329056173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n + (A061138 n - A000704 n)

end

end A061136.P12593432827329056173

/-! ## A061136.P11771685558646819963

`A061137(n)+A061138(n)-A061139(n)`
-/

namespace A061136.P11771685558646819963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061137 n + (A061138 n - A061139 n)

end

end A061136.P11771685558646819963

/-! ## A061136.P1447241916928263215

`A308648(n)-A061140(n)`
-/

namespace A061136.P1447241916928263215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n - A061140 n

end

end A061136.P1447241916928263215

/-!
# A061137: Number of degree-n odd permutations of order dividing 6.

The programs for A061137, there is no canonical definition to state claims against.
-/

/-! ## A061137.P8824675365589316562

`A061139(n)+A001465(n)`
-/

namespace A061137.P8824675365589316562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061139 n + A001465 n

end

end A061137.P8824675365589316562

/-! ## A061137.P4047661860148423244

`A053496(n)-A061130(n)`
-/

namespace A061137.P4047661860148423244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053496 n - A061130 n

end

end A061137.P4047661860148423244

/-! ## A061137.P15682117045492872249

`A008307(A166136(n+3))-A061130(n)`
-/

namespace A061137.P15682117045492872249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A166136 (n + 3)).toNat - A061130 n

end

end A061137.P15682117045492872249

/-! ## A061137.P3456533913840696450

`A000085(n)+A061139(n)-A000704(n)`
-/

namespace A061137.P3456533913840696450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n + (A061139 n - A000704 n)

end

end A061137.P3456533913840696450

/-! ## A061137.P7890323587676683513

`A061136(n)+A061139(n)-A061138(n)`
-/

namespace A061137.P7890323587676683513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061136 n + (A061139 n - A061138 n)

end

end A061137.P7890323587676683513

/-! ## A061137.P14765688391515150697

`A008307(A034856(n+3)+8)-A061130(n)`
-/

namespace A061137.P14765688391515150697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (A034856 (n + 3) + 8).toNat - A061130 n

end

end A061137.P14765688391515150697

/-!
# A061138: Number of degree-n odd permutations of order exactly 4.

The programs for A061138, there is no canonical definition to state claims against.
-/

/-! ## A061138.P14149110894167791189

`A061136(n)-A001465(n)`
-/

namespace A061138.P14149110894167791189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061136 n - A001465 n

end

end A061138.P14149110894167791189

/-! ## A061138.P13634359873436167646

`A000704(n)+A061136(n)-A000085(n)`
-/

namespace A061138.P13634359873436167646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 n + (A061136 n - A000085 n)

end

end A061138.P13634359873436167646

/-! ## A061138.P11970247615514398413

`A001472(n)-(A061129(n)+A001465(n))`
-/

namespace A061138.P11970247615514398413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001472 n - (A061129 n + A001465 n)

end

end A061138.P11970247615514398413

/-! ## A061138.P16880151563046813844

`A061136(n)+A061139(n)-A061137(n)`
-/

namespace A061138.P16880151563046813844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061136 n + (A061139 n - A061137 n)

end

end A061138.P16880151563046813844

/-! ## A061138.P14557648449650352207

`A308648(n)-(A061140(n)+A001465(n))`
-/

namespace A061138.P14557648449650352207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n - (A061140 n + A001465 n)

end

end A061138.P14557648449650352207

/-!
# A061139: Number of degree-n odd permutations of order exactly 6.

The programs for A061139, there is no canonical definition to state claims against.
-/

/-! ## A061139.P8468775522774855546

`A061137(n)-A001465(n)`
-/

namespace A061139.P8468775522774855546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061137 n - A001465 n

end

end A061139.P8468775522774855546

/-! ## A061139.P2279238656280098943

`A061137(n)-Δ[A000704(n+1)]/(n+1)`
-/

namespace A061139.P2279238656280098943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061137 n : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A061139.P2279238656280098943

/-! ## A061139.P4244545633007571011

`A061137(n)-Δ[A048099(n+1)]/(n+1)`
-/

namespace A061139.P4244545633007571011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061137 n : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A061139.P4244545633007571011

/-! ## A061139.P5415193801312363647

`A000704(n)+A061137(n)-A000085(n)`
-/

namespace A061139.P5415193801312363647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 n + (A061137 n - A000085 n)

end

end A061139.P5415193801312363647

/-! ## A061139.P16867591319091681297

`A061137(n)+A061138(n)-A061136(n)`
-/

namespace A061139.P16867591319091681297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061137 n + (A061138 n - A061136 n)

end

end A061139.P16867591319091681297

/-! ## A061139.P10869430039792545471

`A061137(n)-(A048099(n+2)-A048099(n+1))/(n+1)`
-/

namespace A061139.P10869430039792545471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061137 n : ℚ) - (A048099 (n + 2) - A048099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061139.P10869430039792545471

/-! ## A061139.P3803815010901728760

`A000704(n)+A061137(n)-A008307(A133263(n))`
-/

namespace A061139.P3803815010901728760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000704 n + (A061137 n - A008307 (A133263 n).toNat)

end

end A061139.P3803815010901728760

/-! ## A061139.P8050209220694251589

`A061137(n)-(A135401(n)+2*A000900(n)-A000704(n))`
-/

namespace A061139.P8050209220694251589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061137 n - (A135401 n + 2 * A000900 n - A000704 n)

end

end A061139.P8050209220694251589

/-!
# A061140: Number of degree-n odd permutations of order exactly 8.

The programs for A061140, there is no canonical definition to state claims against.
-/

/-! ## A061140.P16418825780713801545

`A308648(n)-A061136(n)`
-/

namespace A061140.P16418825780713801545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n - A061136 n

end

end A061140.P16418825780713801545

/-! ## A061140.P9294337724683425921

`A053498(n)-(A061136(n)+A061131(n))`
-/

namespace A061140.P9294337724683425921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053498 n - (A061136 n + A061131 n)

end

end A061140.P9294337724683425921

/-! ## A061140.P437016045446866370

`A061129(n)+A308648(n)-A001472(n)`
-/

namespace A061140.P437016045446866370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061129 n + (A308648 n - A001472 n)

end

end A061140.P437016045446866370

/-! ## A061140.P15465630190378239911

`A308648(n)-(A061138(n)+A001465(n))`
-/

namespace A061140.P15465630190378239911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n - (A061138 n + A001465 n)

end

end A061140.P15465630190378239911

/-! ## A061140.P15128875382977036046

`A308648(n)-(A000085(n)+A061138(n)-A000704(n))`
-/

namespace A061140.P15128875382977036046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308648 n - (A000085 n + (A061138 n - A000704 n))

end

end A061140.P15128875382977036046

/-!
# A061141: Compute sum of divisors of the prime(n+1)-prime(n)-1 composite numbers between two consecutive primes; choose the largest.

The programs for A061141, there is no canonical definition to state claims against.
-/

/-! ## A061141.P16477177352596406010

`A000203(lt[A291345(n+1), A027642(n)])`
-/

namespace A061141.P16477177352596406010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061141.P16477177352596406010

/-! ## A061141.P14259469820327149538

`record[A000203(A305403(3*n))]`
-/

namespace A061141.P14259469820327149538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A305403 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061141.P14259469820327149538

/-! ## A061141.P17185445596039894073

`record[∑{d}[A214628(A313718(n+1)), #]]`
-/

namespace A061141.P17185445596039894073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214628 (A313718 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061141.P17185445596039894073

/-! ## A061141.P13032144926293012659

`∩[A034885(n+1), A274334(n+1)]`
-/

namespace A061141.P13032144926293012659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061141.P13032144926293012659

/-! ## A061141.P10264972589395057779

`record[A000203(A308590(3*(n+1))+n+1)]`
-/

namespace A061141.P10264972589395057779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A308590 (3 * (n + 1)) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061141.P10264972589395057779

/-!
# A061142: Replace each prime factor of n with 2: a(n) = 2^bigomega(n), where bigomega = A001222, number of prime factors counted with multiplicity.

The programs for A061142, the canonical program `A061142.P8765440716561686614` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061142 has offset 1).

The definition of A061142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061142.P8765440716561686614

`A000079(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A061142

/-- `A000079(A001222(n+1))` -/
def P8765440716561686614.Spec : Prop :=
  ∀ n, P8765440716561686614.a n = A061142 (n + 1)

theorem P8765440716561686614.correct : P8765440716561686614.Spec := by
  intro n
  simp only [A061142, Nat.add_sub_cancel]

end A061142

/-! ## A061142.P3519251481903293940

`A001316(A156552(n+1))`
-/

namespace A061142.P3519251481903293940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A156552 (n + 1)).toNat

end

end A061142.P3519251481903293940

namespace A061142

/-- `A001316(A156552(n+1))` -/
def P3519251481903293940.Spec : Prop :=
  ∀ n, P3519251481903293940.a n = A061142 (n + 1)

end A061142

/-! ## A061142.P11143942527765525039

`2^∑{e}[n+1, #]`
-/

namespace A061142.P11143942527765525039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A061142.P11143942527765525039

namespace A061142

/-- `2^∑{e}[n+1, #]` -/
def P11143942527765525039.Spec : Prop :=
  ∀ n, (P11143942527765525039.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P14766421412338743283

`∏{e}[n+1, 2^#]`
-/

namespace A061142.P14766421412338743283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p

end

end A061142.P14766421412338743283

namespace A061142

/-- `∏{e}[n+1, 2^#]` -/
def P14766421412338743283.Spec : Prop :=
  ∀ n, (P14766421412338743283.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P7385160283090080438

`∏{e}[n+1, root(2, 2/#)]²`
-/

namespace A061142.P7385160283090080438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (2 : ℝ) ^ (1 / (2 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) ^ 2

end

end A061142.P7385160283090080438

namespace A061142

/-- `∏{e}[n+1, root(2, 2/#)]²` -/
def P7385160283090080438.Spec : Prop :=
  ∀ n, P7385160283090080438.a n = (A061142 (n + 1) : ℝ)

end A061142

/-! ## A061142.P2606127488395047360

`2^∑{p}[n+1, val(n+1, #)]`
-/

namespace A061142.P2606127488395047360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A061142.P2606127488395047360

namespace A061142

/-- `2^∑{p}[n+1, val(n+1, #)]` -/
def P2606127488395047360.Spec : Prop :=
  ∀ n, (P2606127488395047360.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P4674747120010513793

`∏{p}[n+1, 2^val(n+1, #)]`
-/

namespace A061142.P4674747120010513793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 ^ SequenceMachineLib.valuation (n + 1) p

end

end A061142.P4674747120010513793

namespace A061142

/-- `∏{p}[n+1, 2^val(n+1, #)]` -/
def P4674747120010513793.Spec : Prop :=
  ∀ n, (P4674747120010513793.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P8402699419466066175

`sqrt(∏{e}[2*n-(n-1), 4^#])`
-/

namespace A061142.P8402699419466066175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, 4 ^ Nat.factorization (f1 n).natAbs p : ℕ) : ℝ)

end

end A061142.P8402699419466066175

namespace A061142

/-- `sqrt(∏{e}[2*n-(n-1), 4^#])` -/
def P8402699419466066175.Spec : Prop :=
  ∀ n, P8402699419466066175.a n = (A061142 (n + 1) : ℝ)

end A061142

/-! ## A061142.P6681955126436838229

`abs(A165872(n+1))`
-/

namespace A061142.P6681955126436838229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A165872 (n + 1)|

end

end A061142.P6681955126436838229

namespace A061142

/-- `abs(A165872(n+1))` -/
def P6681955126436838229.Spec : Prop :=
  ∀ n, P6681955126436838229.a n = A061142 (n + 1)

end A061142

/-! ## A061142.P8070640254540643560

`sqrt(A165825(n+1))`
-/

namespace A061142.P8070640254540643560
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165825 (n + 1) : ℝ)

end

end A061142.P8070640254540643560

namespace A061142

/-- `sqrt(A165825(n+1))` -/
def P8070640254540643560.Spec : Prop :=
  ∀ n, P8070640254540643560.a n = (A061142 (n + 1) : ℝ)

end A061142

/-! ## A061142.P9526578322366545

`2^Δ[A022559(n)]`
-/

namespace A061142.P9526578322366545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A061142.P9526578322366545

namespace A061142

/-- `2^Δ[A022559(n)]` -/
def P9526578322366545.Spec : Prop :=
  ∀ n, P9526578322366545.a n = (A061142 (n + 1) : ℚ)

end A061142

/-! ## A061142.P1564062300440241962

`2*a(A089196(n))` with `a(0)=1`
-/

namespace A061142.P1564062300440241962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A089196 n).toNat

end

end A061142.P1564062300440241962

namespace A061142

/-- `2*a(A089196(n))` -/
def P1564062300440241962.Spec : Prop :=
  ∀ n, (P1564062300440241962.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P15646791283233664665

`sqrt(sqrt(A165837(n+1)))`
-/

namespace A061142.P15646791283233664665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A165837 (n + 1) : ℝ))

end

end A061142.P15646791283233664665

namespace A061142

/-- `sqrt(sqrt(A165837(n+1)))` -/
def P15646791283233664665.Spec : Prop :=
  ∀ n, P15646791283233664665.a n = (A061142 (n + 1) : ℝ)

end A061142

/-! ## A061142.P17119001232916060278

`∑{d}[n+1, A162510(#)]`
-/

namespace A061142.P17119001232916060278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162510 d

end

end A061142.P17119001232916060278

namespace A061142

/-- `∑{d}[n+1, A162510(#)]` -/
def P17119001232916060278.Spec : Prop :=
  ∀ n, P17119001232916060278.a n = A061142 (n + 1)

end A061142

/-! ## A061142.P18032684884418924161

`A000079(∑{e}[n+1, #])`
-/

namespace A061142.P18032684884418924161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A061142.P18032684884418924161

namespace A061142

/-- `A000079(∑{e}[n+1, #])` -/
def P18032684884418924161.Spec : Prop :=
  ∀ n, P18032684884418924161.a n = A061142 (n + 1)

end A061142

/-! ## A061142.P12377692898737534660

`A123667(n+1)/(n+1)`
-/

namespace A061142.P12377692898737534660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061142.P12377692898737534660

namespace A061142

/-- `A123667(n+1)/(n+1)` -/
def P12377692898737534660.Spec : Prop :=
  ∀ n, P12377692898737534660.a n = (A061142 (n + 1) : ℚ)

end A061142

/-! ## A061142.P17595532276981995053

`2*a(A246277(n+1)-1)` with `a(0)=1`
-/

namespace A061142.P17595532276981995053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A246277 (n + 1) - 1).toNat

end

end A061142.P17595532276981995053

namespace A061142

/-- `2*a(A246277(n+1)-1)` -/
def P17595532276981995053.Spec : Prop :=
  ∀ n, (P17595532276981995053.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P9437841336319722434

`2*a(floor(n/A006530(n+1)))` with `a(0)=1`
-/

namespace A061142.P9437841336319722434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat

end

end A061142.P9437841336319722434

namespace A061142

/-- `2*a(floor(n/A006530(n+1)))` -/
def P9437841336319722434.Spec : Prop :=
  ∀ n, (P9437841336319722434.a n : ℤ) = A061142 (n + 1)

end A061142

/-! ## A061142.P5877887538155670364

`4^(A001222(2*n-(n-1))/2)`
-/

namespace A061142.P5877887538155670364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ ((A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2 : ℝ)

end

end A061142.P5877887538155670364

namespace A061142

/-- `4^(A001222(2*n-(n-1))/2)` -/
def P5877887538155670364.Spec : Prop :=
  ∀ n, P5877887538155670364.a n = (A061142 (n + 1) : ℝ)

end A061142

/-! ## A061142.P2191678640051980957

`A000079(Δ[A022559(n)])`
-/

namespace A061142.P2191678640051980957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat

end

end A061142.P2191678640051980957

namespace A061142

/-- `A000079(Δ[A022559(n)])` -/
def P2191678640051980957.Spec : Prop :=
  ∀ n, P2191678640051980957.a n = A061142 (n + 1)

end A061142

/-!
# A061143: a(1) = 1; a(n) = sum of terms in the continued fraction for the square of the continued fraction [a(1); a(2), a(3), a(4),..., a(n-1)].

The programs for A061143, there is no canonical definition to state claims against.
-/

/-! ## A061143.P2743194388240920746

`A126356(A041037(n))`
-/

namespace A061143.P2743194388240920746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126356 (A041037 n).toNat

end

end A061143.P2743194388240920746

/-! ## A061143.P8130802399766254356

`A146564(A023898(n!))`
-/

namespace A061143.P8130802399766254356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A023898 (Nat.factorial n)).toNat

end

end A061143.P8130802399766254356

/-!
# A061147: Product of all distinct numbers formed by permuting digits of n.

The programs for A061147, there is no canonical definition to state claims against.
-/

/-! ## A061147.P534605395345391019

`A062003(A000196(n²)+1)`
-/

namespace A061147.P534605395345391019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (A000196 (n ^ 2) + 1).toNat

end

end A061147.P534605395345391019

/-! ## A061147.P17363158758601591101

`A062003(n+1)^A264668(n)!`
-/

namespace A061147.P17363158758601591101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1) ^ Nat.factorial (A264668 n).toNat

end

end A061147.P17363158758601591101

/-! ## A061147.P13382706454977217853

`A062003(n+1)*A121047(A264668(n)²)`
-/

namespace A061147.P13382706454977217853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1) * A121047 (A264668 n ^ 2).toNat

end

end A061147.P13382706454977217853

/-! ## A061147.P11970067366112274370

`A062003(n+1)^A000670(A264668(n)²)`
-/

namespace A061147.P11970067366112274370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062003 (n + 1) : ℚ) ^ (A000670 (A264668 n ^ 2).toNat : ℤ)

end

end A061147.P11970067366112274370

/-! ## A061147.P2782326859540655754

`A062003(n+1)^A019268(A264668(n)²)`
-/

namespace A061147.P2782326859540655754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062003 (n + 1) : ℚ) ^ (A019268 (A264668 n ^ 2).toNat : ℤ)

end

end A061147.P2782326859540655754

/-! ## A061147.P12012588653522235582

`A062003(n+1)*A080423(A264668(n)^3)`
-/

namespace A061147.P12012588653522235582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1) * A080423 (A264668 n ^ 3).toNat

end

end A061147.P12012588653522235582

/-! ## A061147.P10067511910153890927

`A062003(n+1)*A134232(A264668(n)^3)`
-/

namespace A061147.P10067511910153890927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1) * A134232 (A264668 n ^ 3).toNat

end

end A061147.P10067511910153890927

/-! ## A061147.P709390257021144110

`A062003(n+1)*A156058(A264668(n)^3)`
-/

namespace A061147.P709390257021144110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1) * A156058 (A264668 n ^ 3).toNat

end

end A061147.P709390257021144110

/-! ## A061147.P2938134645293227812

`A028310(A062003(n+1))`
-/

namespace A061147.P2938134645293227812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062003 (n + 1)).toNat

end

end A061147.P2938134645293227812

/-! ## A061147.P3049002356812184276

`∑{d}[A062003(n+1), A000010(#)]`
-/

namespace A061147.P3049002356812184276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A061147.P3049002356812184276

/-! ## A061147.P6203697208931176578

`A062003(n+1)/A292886(A065091(3*n+5))`
-/

namespace A061147.P6203697208931176578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062003 (n + 1) : ℚ) / (A292886 (A065091 (3 * n + 5)).toNat : ℚ)

end

end A061147.P6203697208931176578

/-!
# A061148: Smallest positive integer for which the number of divisors is a product of 2 distinct primes: Min{x; d[x]=pq}.

The programs for A061148, there is no canonical definition to state claims against.
-/

/-! ## A061148.P14227556412944754997

`A005179(A006881(n+1))`
-/

namespace A061148.P14227556412944754997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A006881 (n + 1)).toNat

end

end A061148.P14227556412944754997

/-! ## A061148.P12792541532796106775

`A005179(eq[2, A286852(n)])`
-/

namespace A061148.P12792541532796106775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061148.P12792541532796106775

/-! ## A061148.P8537771990350400423

`A005179(eq[3, A074206(n)])`
-/

namespace A061148.P8537771990350400423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061148.P8537771990350400423

/-! ## A061148.P11117271682412510745

`A005179(eq[3, A104725(n)])`
-/

namespace A061148.P11117271682412510745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061148.P11117271682412510745

/-! ## A061148.P3048652071464097219

`A037019(eq[3, A074206(n)])`
-/

namespace A061148.P3048652071464097219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061148.P3048652071464097219

/-! ## A061148.P11602765455750901830

`A005179(eq[4, A077462(n)])`
-/

namespace A061148.P11602765455750901830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061148.P11602765455750901830

/-!
# A061149: Smallest number whose number of divisors = n-th primorial (A002110).

The programs for A061149, there is no canonical definition to state claims against.
-/

/-! ## A061149.P3187541029834604684

`A278226(A002110(n)-1)`
-/

namespace A061149.P3187541029834604684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (A002110 n - 1).toNat

end

end A061149.P3187541029834604684

/-!
# A061150: a(n) = Sum_{d|n} d*prime(d).

The programs for A061150, the canonical program `A061150.P16059668170846377960` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061150 has offset 1).

The definition of A061150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061150.P16059668170846377960

`∑{d}[n+1, A033286(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061150

/-- `∑{d}[n+1, A033286(#)]` -/
def P16059668170846377960.Spec : Prop :=
  ∀ n, P16059668170846377960.a n = A061150 (n + 1)

theorem P16059668170846377960.correct : P16059668170846377960.Spec := by
  intro n
  simp only [A061150, Nat.add_sub_cancel]

end A061150

/-! ## A061150.P1051867187894744124

`∑{d}[n+1, #*A000040(#)]`
-/

namespace A061150.P1051867187894744124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000040 d

end

end A061150.P1051867187894744124

namespace A061150

/-- `∑{d}[n+1, #*A000040(#)]` -/
def P1051867187894744124.Spec : Prop :=
  ∀ n, P1051867187894744124.a n = A061150 (n + 1)

end A061150

/-! ## A061150.P5805007620692610469

`∑{d}[n+1, #*(A006093(#)+1)]`
-/

namespace A061150.P5805007620692610469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (A006093 d + 1)

end

end A061150.P5805007620692610469

namespace A061150

/-- `∑{d}[n+1, #*(A006093(#)+1)]` -/
def P5805007620692610469.Spec : Prop :=
  ∀ n, P5805007620692610469.a n = A061150 (n + 1)

end A061150

/-! ## A061150.P17442741672974186052

`∑{d}[n+1, #*A100484(#)/2]`
-/

namespace A061150.P17442741672974186052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) * ((A100484 d : ℚ) / 2)

end

end A061150.P17442741672974186052

namespace A061150

/-- `∑{d}[n+1, #*A100484(#)/2]` -/
def P17442741672974186052.Spec : Prop :=
  ∀ n, P17442741672974186052.a n = (A061150 (n + 1) : ℚ)

end A061150

/-! ## A061150.P12596059801679695992

`∑{d}[n+1, A099894(#-1)*A318367((n+1)/#)]`
-/

namespace A061150.P12596059801679695992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A318367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061150.P12596059801679695992

namespace A061150

/-- `∑{d}[n+1, A099894(#-1)*A318367((n+1)/#)]` -/
def P12596059801679695992.Spec : Prop :=
  ∀ n, P12596059801679695992.a n = A061150 (n + 1)

end A061150

/-! ## A061150.P274131951900387334

`∑{d}[A008619(2*n), A000027(#*A000040(#))]`
-/

namespace A061150.P274131951900387334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000027 ((d : ℤ) * A000040 d).toNat

end

end A061150.P274131951900387334

namespace A061150

/-- `∑{d}[A008619(2*n), A000027(#*A000040(#))]` -/
def P274131951900387334.Spec : Prop :=
  ∀ n, P274131951900387334.a n = A061150 (n + 1)

end A061150

/-!
# A061152: Expansion of Product_{n>=1} (1+x^n)^prime(n).

The programs for A061152, there is no canonical definition to state claims against.
-/

/-! ## A061152.P8375382580467699838

`A347655(A347657(2*n))+A308840(n+1)²`
-/

namespace A061152.P8375382580467699838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347655 (A347657 (2 * n)).toNat + A308840 (n + 1) ^ 2

end

end A061152.P8375382580467699838

/-! ## A061152.P16241173689391986110

`or(2^n-∑[2^floor(n/2)], A272978(2^n))`
-/

namespace A061152.P16241173689391986110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 ^ n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j)) (A272978 (2 ^ n))

end

end A061152.P16241173689391986110

/-! ## A061152.P5869684840929972287

`A176075(A151077(n))`
-/

namespace A061152.P5869684840929972287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (A151077 n).toNat

end

end A061152.P5869684840929972287

/-!
# A061153: Numbers k such that k*2^m+1 are composites for all exponents m in the range 0<=m<=k.

The programs for A061153, there is no canonical definition to state claims against.
-/

/-! ## A061153.P7402031933361846001

`lt[n, A040076(A028310(n))]`
-/

namespace A061153.P7402031933361846001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061153.P7402031933361846001

/-! ## A061153.P5958281998057689662

`A020725(lt[n, A040076(n+1)])`
-/

namespace A061153.P5958281998057689662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A061153.P5958281998057689662

/-!
# A061154: Numbers k such that k*2^m-1 are composites for all exponents m in the range 0<=m<=k.

The programs for A061154, there is no canonical definition to state claims against.
-/

/-! ## A061154.P4398355725061054933

`lt[A233583(n+1), A040081(A233583(n+1))]`
-/

namespace A061154.P4398355725061054933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061154.P4398355725061054933

/-!
# A061156: Exponent values m resulting from A061155.

The programs for A061156, there is no canonical definition to state claims against.
-/

/-! ## A061156.P1077538520707446889

`A040076(A061155(n+1))`
-/

namespace A061156.P1077538520707446889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A061155 (n + 1)).toNat

end

end A061156.P1077538520707446889

/-!
# A061157: Numbers k such that k*2^m-1 is prime for exactly one exponent m in the range 0<=m<=k.

The programs for A061157, there is no canonical definition to state claims against.
-/

/-! ## A061157.P15849097638076401320

`A359029(A219042(n+1))+A000217(2*n+1)`
-/

namespace A061157.P15849097638076401320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359029 (A219042 (n + 1)).toNat + A000217 (2 * n + 1)

end

end A061157.P15849097638076401320

/-!
# A061158: Exponent values m resulting from A061157.

The programs for A061158, there is no canonical definition to state claims against.
-/

/-! ## A061158.P9679161384753480091

`A040081(A061157(n+1))`
-/

namespace A061158.P9679161384753480091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A061157 (n + 1)).toNat

end

end A061158.P9679161384753480091

/-! ## A061158.P4327808992811614765

`A162202(A007299(n))-A254048(n)`
-/

namespace A061158.P4327808992811614765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162202 (A007299 n).toNat - A254048 n

end

end A061158.P4327808992811614765

/-!
# A061159: Numerators in expansion of Euler transform of b(n) = 1/2.

The programs for A061159, there is no canonical definition to state claims against.
-/

/-! ## A061159.P9111884151285152065

`A271235(n)/A001316(n)`
-/

namespace A061159.P9111884151285152065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271235 n : ℚ) / (A001316 n : ℚ)

end

end A061159.P9111884151285152065

/-! ## A061159.P18262353832480352541

`A271235(n)/sqrt(A102376(n))`
-/

namespace A061159.P18262353832480352541
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A271235 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A061159.P18262353832480352541

/-! ## A061159.P8993666277163501117

`A271235(n)/A048896(2*n)`
-/

namespace A061159.P8993666277163501117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271235 n : ℚ) / (A048896 (2 * n) : ℚ)

end

end A061159.P8993666277163501117

/-! ## A061159.P5869060680805697428

`A271235(n)/A000079(A000120(n))`
-/

namespace A061159.P5869060680805697428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271235 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A061159.P5869060680805697428

/-! ## A061159.P13114622755798074168

`A271235(n)/A000005(A019565(n))`
-/

namespace A061159.P13114622755798074168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271235 n : ℚ) / (A000005 (A019565 n).toNat : ℚ)

end

end A061159.P13114622755798074168

/-!
# A061160: Numerators in expansion of Euler transform of b(n) = 1/3.

The programs for A061160, there is no canonical definition to state claims against.
-/

/-! ## A061160.P5512230564498232543

`A271236(n)/A125824(n)`
-/

namespace A061160.P5512230564498232543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271236 n : ℚ) / (A125824 n : ℚ)

end

end A061160.P5512230564498232543

/-! ## A061160.P15065444748175322489

`A271236(n)/A017913(A230641(n))`
-/

namespace A061160.P15065444748175322489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271236 n : ℚ) / (A017913 (A230641 n).toNat : ℚ)

end

end A061160.P15065444748175322489

/-! ## A061160.P14670148687563921909

`A271236(n)/gcd(A271236(n), A277382(2*(n+1)))`
-/

namespace A061160.P14670148687563921909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271236 n : ℚ) / (Int.gcd (A271236 n) (A277382 (2 * (n + 1))) : ℚ)

end

end A061160.P14670148687563921909

/-!
# A061161: Numerators in expansion of Euler transform of b(n) = 1/4.

The programs for A061161, there is no canonical definition to state claims against.
-/

/-! ## A061161.P6325540159349513493

`A303135(n)/A000079(A092391(n))`
-/

namespace A061161.P6325540159349513493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303135 n : ℚ) / (A000079 (A092391 n).toNat : ℚ)

end

end A061161.P6325540159349513493

/-! ## A061161.P10883645277435123941

`A000265(∏{p}[A303135(n), #])`
-/

namespace A061161.P10883645277435123941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A061161.P10883645277435123941

/-!
# A061162: a(n) = (6n)!n!/((3n)!(2n)!^2).

The programs for A061162, there is no canonical definition to state claims against.
-/

/-! ## A061162.P17041320987562626283

`A091527(2*n)`
-/

namespace A061162.P17041320987562626283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091527 (2 * n)

end

end A061162.P17041320987562626283

/-! ## A061162.P13745314174398012110

`Δ[n²]*A078531(2*n)`
-/

namespace A061162.P13745314174398012110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A078531 (2 * n)

end

end A061162.P13745314174398012110

/-! ## A061162.P1929865055625873666

`record[A091527(A014681(n))]`
-/

namespace A061162.P1929865055625873666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091527 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061162.P1929865055625873666

/-! ## A061162.P7498846849068696688

`record[A091527(n)/A033999(n)]`
-/

namespace A061162.P7498846849068696688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061162.P7498846849068696688

/-! ## A061162.P6822860257016569999

`abs(A091527(A005843(n))-n)+n`
-/

namespace A061162.P6822860257016569999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091527 (A005843 n).toNat - (n : ℤ)| + (n : ℤ)

end

end A061162.P6822860257016569999

/-! ## A061162.P7208163740934052065

`2*A244039(2*n)-A244038(2*n)`
-/

namespace A061162.P7208163740934052065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244039 (2 * n) - A244038 (2 * n)

end

end A061162.P7208163740934052065

/-! ## A061162.P13235198716805245684

`record[A091527(n)%A091527(A004442(n))]`
-/

namespace A061162.P13235198716805245684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091527 n) (A091527 (A004442 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061162.P13235198716805245684

/-! ## A061162.P6319142940282001936

`A001448(n)/A005810(n)*A066802(n)`
-/

namespace A061162.P6319142940282001936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / (A005810 n : ℚ) * (A066802 n : ℚ)

end

end A061162.P6319142940282001936

/-! ## A061162.P4086912199540159774

`A006480(n)/A002894(n)*A066802(n)`
-/

namespace A061162.P4086912199540159774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A002894 n : ℚ) * (A066802 n : ℚ)

end

end A061162.P4086912199540159774

/-! ## A061162.P15559609745128548347

`A001448(n)/A000984(n)*A211419(n)`
-/

namespace A061162.P15559609745128548347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n : ℚ) / (A000984 n : ℚ) * (A211419 n : ℚ)

end

end A061162.P15559609745128548347

/-!
# A061163: a(n) = (10n)!*n!/((5n)!*(4n)!*(2n)!).

The programs for A061163, there is no canonical definition to state claims against.
-/

/-! ## A061163.P5735254767051171547

`A091496(2*n)`
-/

namespace A061163.P5735254767051171547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091496 (2 * n)

end

end A061163.P5735254767051171547

/-! ## A061163.P10317553960375990303

`A091496(A005843(n))^A178334(n)`
-/

namespace A061163.P10317553960375990303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091496 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A061163.P10317553960375990303

/-! ## A061163.P10015957892583423547

`gcd(A000038(n), A091496(A005843(n)))`
-/

namespace A061163.P10015957892583423547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A091496 (A005843 n).toNat)

end

end A061163.P10015957892583423547

/-! ## A061163.P6409976908846152460

`or(A000007(n), A091496(A005843(n)))`
-/

namespace A061163.P6409976908846152460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091496 (A005843 n).toNat)

end

end A061163.P6409976908846152460

/-! ## A061163.P17961695643120950431

`A054335(A062725(2*n))`
-/

namespace A061163.P17961695643120950431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A062725 (2 * n)).toNat

end

end A061163.P17961695643120950431

/-!
# A061165: Polynomial extrapolation of 2, 3, 5, 7, 11.

The programs for A061165, the canonical program `A061165.P10505266829909728732` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061165 has offset 1).

The definition of A061165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061165.P16384266333957121874

`(3*(n+1)^4-34*(n+1)^3+141*(n+1)²-206*(n+1)+144)/24`
-/

namespace A061165.P16384266333957121874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) ^ 4 : ℤ) - (34 * (n + 1) ^ 3 : ℤ) + (141 * (n + 1) ^ 2 : ℤ) - (206 * (n + 1) : ℤ) + 144 : ℚ) / 24

end

end A061165.P16384266333957121874

namespace A061165

/-- `(3*(n+1)^4-34*(n+1)^3+141*(n+1)²-206*(n+1)+144)/24` -/
def P16384266333957121874.Spec : Prop :=
  ∀ n, P16384266333957121874.a n = (A061165 (n + 1) : ℚ)

theorem P16384266333957121874.correct : P16384266333957121874.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A061165, Nat.add_sub_cancel, A061165.P16384266333957121874.a, A061165.P10505266829909728732.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A061165, Nat.add_sub_cancel, A061165.P16384266333957121874.a, A061165.P10505266829909728732.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061165

/-! ## A061165.P10505266829909728732

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061165

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10505266829909728732.Spec : Prop :=
  ∀ n, P10505266829909728732.a n = A061165 (n + 1)

theorem P10505266829909728732.correct : P10505266829909728732.Spec := by
  intro n
  simp only [A061165, Nat.add_sub_cancel]

end A061165

/-! ## A061165.P5518029050269292219

`∑[∑[∑[a(n-1)+3]]]+1` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1`
-/

namespace A061165.P5518029050269292219
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A061165.P5518029050269292219

namespace A061165

/-- `∑[∑[∑[a(n-1)+3]]]+1` -/
def P5518029050269292219.Spec : Prop :=
  ∀ n, P5518029050269292219.a n = A061165 (n + 1)

end A061165

/-! ## A061165.P2932266979093909940

`∑[A162607(abs(1-n))+1]`
-/

namespace A061165.P2932266979093909940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162607 |1 - (n : ℤ)|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061165.P2932266979093909940

namespace A061165

/-- `∑[A162607(abs(1-n))+1]` -/
def P2932266979093909940.Spec : Prop :=
  ∀ n, P2932266979093909940.a n = A061165 (n + 1)

end A061165

/-! ## A061165.P17205757785701277793

`A153977(n+1)-(A217873(n)+A033547(n))`
-/

namespace A061165.P17205757785701277793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153977 (n + 1) - (A217873 n + A033547 n)

end

end A061165.P17205757785701277793

namespace A061165

/-- `A153977(n+1)-(A217873(n)+A033547(n))` -/
def P17205757785701277793.Spec : Prop :=
  ∀ n, P17205757785701277793.a n = A061165 (n + 1)

end A061165

/-! ## A061165.P17508050943520125095

`A016028(3*(n+1))+A002817(n)-A185787(n+1)`
-/

namespace A061165.P17508050943520125095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (3 * (n + 1)) + (A002817 n - A185787 (n + 1))

end

end A061165.P17508050943520125095

namespace A061165

/-- `A016028(3*(n+1))+A002817(n)-A185787(n+1)` -/
def P17508050943520125095.Spec : Prop :=
  ∀ n, P17508050943520125095.a n = A061165 (n + 1)

end A061165

/-! ## A061165.P12288473137591603332

`A000096(A152947(n+1))-A146298(n)`
-/

namespace A061165.P12288473137591603332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A152947 (n + 1)).toNat - A146298 n

end

end A061165.P12288473137591603332

namespace A061165

/-- `A000096(A152947(n+1))-A146298(n)` -/
def P12288473137591603332.Spec : Prop :=
  ∀ n, P12288473137591603332.a n = A061165 (n + 1)

end A061165

/-! ## A061165.P3780172928424311364

`A101881(A002061(n))-A146298(n)`
-/

namespace A061165.P3780172928424311364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (A002061 n).toNat - A146298 n

end

end A061165.P3780172928424311364

namespace A061165

/-- `A101881(A002061(n))-A146298(n)` -/
def P3780172928424311364.Spec : Prop :=
  ∀ n, P3780172928424311364.a n = A061165 (n + 1)

end A061165

/-!
# A061167: a(n) = n^5 - n.

The programs for A061167, the canonical program `A061167.P10314290942309870978` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061167 has offset 0).

The definition of A061167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n` (program `A061167.P10314290942309870978`, by `A061167.P10314290942309870978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061167.P10314290942309870978

`n^5-n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061167

/-- `n^5-n` -/
def P10314290942309870978.Spec : Prop :=
  ∀ n, P10314290942309870978.a n = A061167 n

theorem P10314290942309870978.correct : P10314290942309870978.Spec := by
  intro n
  simp only [A061167]

end A061167

/-!
# A061168: Partial sums of floor(log_2(k)) (= A000523(k)).

The programs for A061168, the canonical program `A061168.P3968143495244259582` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061168 has offset 1).

The definition of A061168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061168.P3968143495244259582

`(n+2)*floor(log2(n+1))-2*(2^floor(log2(n+1))-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061168

/-- `(n+2)*floor(log2(n+1))-2*(2^floor(log2(n+1))-1)` -/
def P3968143495244259582.Spec : Prop :=
  ∀ n, P3968143495244259582.a n = A061168 (n + 1)

theorem P3968143495244259582.correct : P3968143495244259582.Spec := by
  intro n
  simp only [A061168, Nat.add_sub_cancel]

end A061168

/-! ## A061168.P156177480495688315

`abs(∑[ceil(log2(acot(n+1)))])`
-/

namespace A061168.P156177480495688315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A061168.P156177480495688315

namespace A061168

/-- `abs(∑[ceil(log2(acot(n+1)))])` -/
def P156177480495688315.Spec : Prop :=
  ∀ n, P156177480495688315.a n = A061168 (n + 1)

end A061168

/-! ## A061168.P11100432119024171772

`-∑[ceil(log2(acot(n+1)))]`
-/

namespace A061168.P11100432119024171772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061168.P11100432119024171772

namespace A061168

/-- `-∑[ceil(log2(acot(n+1)))]` -/
def P11100432119024171772.Spec : Prop :=
  ∀ n, P11100432119024171772.a n = A061168 (n + 1)

end A061168

/-! ## A061168.P5705511271409069405

`floor(a(n-1)+log2(n+1))` with `a(0)=0`
-/

namespace A061168.P5705511271409069405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.logb 2 (n + 1 : ℝ)⌋

end

end A061168.P5705511271409069405

namespace A061168

/-- `floor(a(n-1)+log2(n+1))` -/
def P5705511271409069405.Spec : Prop :=
  ∀ n, P5705511271409069405.a n = A061168 (n + 1)

end A061168

/-! ## A061168.P17077978725908783265

`floor((2*n+(n+2)*a(n-1))/(n+1))` with `a(0)=0`
-/

namespace A061168.P17077978725908783265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((2 * n : ℤ) + (n + 2 : ℤ) * a (n - 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A061168.P17077978725908783265

namespace A061168

/-- `floor((2*n+(n+2)*a(n-1))/(n+1))` -/
def P17077978725908783265.Spec : Prop :=
  ∀ n, P17077978725908783265.a n = A061168 (n + 1)

end A061168

/-! ## A061168.P13482861040751265747

`ceil(∑[log2(A053644(n+1))])`
-/

namespace A061168.P13482861040751265747
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053644 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A061168.P13482861040751265747

namespace A061168

/-- `ceil(∑[log2(A053644(n+1))])` -/
def P13482861040751265747.Spec : Prop :=
  ∀ n, P13482861040751265747.a n = A061168 (n + 1)

end A061168

/-!
# A061169: Third column of Lucas bisection triangle (even part).

The programs for A061169, the canonical program `A061169.P7979574122928571271` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061169 has offset 0).

The definition of A061169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061169.P7979574122928571271

`A060929(2*n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061169

/-- `A060929(2*n)` -/
def P7979574122928571271.Spec : Prop :=
  ∀ n, P7979574122928571271.a n = A061169 n

theorem P7979574122928571271.correct : P7979574122928571271.Spec := by
  intro n
  simp only [A061169]

end A061169

/-! ## A061169.P14024863516938392309

`record[A060929(and(n, n+1))]`
-/

namespace A061169.P14024863516938392309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P14024863516938392309

namespace A061169

/-- `record[A060929(and(n, n+1))]` -/
def P14024863516938392309.Spec : Prop :=
  ∀ n, P14024863516938392309.a n = A061169 n

end A061169

/-! ## A061169.P14790615595010033034

`record[A060929(n)/(-1)^n]`
-/

namespace A061169.P14790615595010033034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060929 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P14790615595010033034

namespace A061169

/-- `record[A060929(n)/(-1)^n]` -/
def P14790615595010033034.Spec : Prop :=
  ∀ n, P14790615595010033034.a n = (A061169 n : ℚ)

end A061169

/-! ## A061169.P14447685684966921087

`record[A060929(A014681(n))]`
-/

namespace A061169.P14447685684966921087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P14447685684966921087

namespace A061169

/-- `record[A060929(A014681(n))]` -/
def P14447685684966921087.Spec : Prop :=
  ∀ n, P14447685684966921087.a n = A061169 n

end A061169

/-! ## A061169.P9397996393021404471

`record[A060929(A018841(n))]`
-/

namespace A061169.P9397996393021404471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A018841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P9397996393021404471

namespace A061169

/-- `record[A060929(A018841(n))]` -/
def P9397996393021404471.Spec : Prop :=
  ∀ n, P9397996393021404471.a n = A061169 n

end A061169

/-! ## A061169.P18236071890723169724

`record[A060929(A131380(n))]`
-/

namespace A061169.P18236071890723169724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P18236071890723169724

namespace A061169

/-- `record[A060929(A131380(n))]` -/
def P18236071890723169724.Spec : Prop :=
  ∀ n, P18236071890723169724.a n = A061169 n

end A061169

/-! ## A061169.P12077941020247738347

`record[A060929(A237420(n))]`
-/

namespace A061169.P12077941020247738347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P12077941020247738347

namespace A061169

/-- `record[A060929(A237420(n))]` -/
def P12077941020247738347.Spec : Prop :=
  ∀ n, P12077941020247738347.a n = A061169 n

end A061169

/-! ## A061169.P4307634971366257534

`record[A060929(A062157(n)+n)]`
-/

namespace A061169.P4307634971366257534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A062157 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P4307634971366257534

namespace A061169

/-- `record[A060929(A062157(n)+n)]` -/
def P4307634971366257534.Spec : Prop :=
  ∀ n, P4307634971366257534.a n = A061169 n

end A061169

/-! ## A061169.P13578049675255734052

`record[A060929(n-A007814(n+1))]`
-/

namespace A061169.P13578049675255734052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P13578049675255734052

namespace A061169

/-- `record[A060929(n-A007814(n+1))]` -/
def P13578049675255734052.Spec : Prop :=
  ∀ n, P13578049675255734052.a n = A061169 n

end A061169

/-! ## A061169.P14432674401516341541

`record[gcd(A007814(n+1), A060929(n))]`
-/

namespace A061169.P14432674401516341541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A060929 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061169.P14432674401516341541

namespace A061169

/-- `record[gcd(A007814(n+1), A060929(n))]` -/
def P14432674401516341541.Spec : Prop :=
  ∀ n, (P14432674401516341541.a n : ℤ) = A061169 n

end A061169

/-! ## A061169.P14445400863461653645

`A005408(2*n)*A136376(2*n+1)-A086926(2*n)`
-/

namespace A061169.P14445400863461653645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * n) * A136376 (2 * n + 1) - A086926 (2 * n)

end

end A061169.P14445400863461653645

namespace A061169

/-- `A005408(2*n)*A136376(2*n+1)-A086926(2*n)` -/
def P14445400863461653645.Spec : Prop :=
  ∀ n, P14445400863461653645.a n = A061169 n

end A061169

/-! ## A061169.P8505480020496700091

`A060923(A167614(n+1)-1)`
-/

namespace A061169.P8505480020496700091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060923 (A167614 (n + 1) - 1).toNat

end

end A061169.P8505480020496700091

namespace A061169

/-- `A060923(A167614(n+1)-1)` -/
def P8505480020496700091.Spec : Prop :=
  ∀ n, P8505480020496700091.a n = A061169 n

end A061169

/-!
# A061170: Fourth column of Lucas bisection triangle (even part).

The programs for A061170, there is no canonical definition to state claims against.
-/

/-! ## A061170.P8260974942628291884

`A060930(2*n)`
-/

namespace A061170.P8260974942628291884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060930 (2 * n)

end

end A061170.P8260974942628291884

/-! ## A061170.P8552993842692943628

`record[A060930(A014681(n))]`
-/

namespace A061170.P8552993842692943628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060930 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061170.P8552993842692943628

/-! ## A061170.P9255367916978505906

`record[A060930(A153733(n))]`
-/

namespace A061170.P9255367916978505906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060930 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061170.P9255367916978505906

/-! ## A061170.P10063915899261835012

`record[A060930(n-A007814(n+1))]`
-/

namespace A061170.P10063915899261835012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060930 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061170.P10063915899261835012

/-! ## A061170.P16614994473345793822

`record[gcd(A007814(n+1), A060930(n))]`
-/

namespace A061170.P16614994473345793822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007814 (n + 1)) (A060930 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061170.P16614994473345793822

/-! ## A061170.P4267293356542288983

`record[A060930(n)/A060930(A007814(n+1)²)]`
-/

namespace A061170.P4267293356542288983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060930 n : ℚ) / (A060930 (A007814 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061170.P4267293356542288983

/-! ## A061170.P14347037958393055271

`A060923(A167614(n+2))`
-/

namespace A061170.P14347037958393055271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060923 (A167614 (n + 2)).toNat

end

end A061170.P14347037958393055271

/-! ## A061170.P17717528194422089900

`A060922(A033816(n+1)+1)`
-/

namespace A061170.P17717528194422089900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A033816 (n + 1) + 1).toNat

end

end A061170.P17717528194422089900

/-! ## A061170.P17341540578509303765

`A060922(A167614(2*(n+1)))`
-/

namespace A061170.P17341540578509303765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060922 (A167614 (2 * (n + 1))).toNat

end

end A061170.P17341540578509303765

/-!
# A061171: One half of second column of Lucas bisection triangle (odd part).

The programs for A061171, the canonical program `A061171.P15370062763775906250` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061171 has offset 0).

The definition of A061171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061171.P15370062763775906250

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=3, a(1)=19, a(2)=79, a(3)=283`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061171

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P15370062763775906250.Spec : Prop :=
  ∀ n, P15370062763775906250.a n = A061171 n

theorem P15370062763775906250.correct : P15370062763775906250.Spec := by
  intro n
  simp only [A061171]

end A061171

/-! ## A061171.P12965354236640755845

`A024469(2*(n+1))`
-/

namespace A061171.P12965354236640755845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024469 (2 * (n + 1))

end

end A061171.P12965354236640755845

namespace A061171

/-- `A024469(2*(n+1))` -/
def P12965354236640755845.Spec : Prop :=
  ∀ n, P12965354236640755845.a n = A061171 n

end A061171

/-! ## A061171.P13409868688294858168

`A025089(2*(n+1))`
-/

namespace A061171.P13409868688294858168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025089 (2 * (n + 1))

end

end A061171.P13409868688294858168

namespace A061171

/-- `A025089(2*(n+1))` -/
def P13409868688294858168.Spec : Prop :=
  ∀ n, P13409868688294858168.a n = A061171 n

end A061171

/-! ## A061171.P7588944059484222044

`A317408(n)+A136376(2*(n+1))`
-/

namespace A061171.P7588944059484222044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 n + A136376 (2 * (n + 1))

end

end A061171.P7588944059484222044

namespace A061171

/-- `A317408(n)+A136376(2*(n+1))` -/
def P7588944059484222044.Spec : Prop :=
  ∀ n, P7588944059484222044.a n = A061171 n

end A061171

/-! ## A061171.P17799514821840844633

`∩[A024469(n+1), A025089(n+1)]`
-/

namespace A061171.P17799514821840844633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061171.P17799514821840844633

namespace A061171

/-- `∩[A024469(n+1), A025089(n+1)]` -/
def P17799514821840844633.Spec : Prop :=
  ∀ n, (P17799514821840844633.a n : ℤ) = A061171 n

end A061171

/-! ## A061171.P7674780847930069545

`A024458(2*(n+1))+2*A023610(2*n)`
-/

namespace A061171.P7674780847930069545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * (n + 1)) + 2 * A023610 (2 * n)

end

end A061171.P7674780847930069545

namespace A061171

/-- `A024458(2*(n+1))+2*A023610(2*n)` -/
def P7674780847930069545.Spec : Prop :=
  ∀ n, P7674780847930069545.a n = A061171 n

end A061171

/-! ## A061171.P1156084393485794975

`A136376(2*(n+1))+A045925(2*n)/2`
-/

namespace A061171.P1156084393485794975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136376 (2 * (n + 1)) : ℚ) + (A045925 (2 * n) : ℚ) / 2

end

end A061171.P1156084393485794975

namespace A061171

/-- `A136376(2*(n+1))+A045925(2*n)/2` -/
def P1156084393485794975.Spec : Prop :=
  ∀ n, P1156084393485794975.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P8442566112979885135

`A136376(2*(n+1))+n*A000045(2*n)`
-/

namespace A061171.P8442566112979885135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (2 * (n + 1)) + (n : ℤ) * A000045 (2 * n)

end

end A061171.P8442566112979885135

namespace A061171

/-- `A136376(2*(n+1))+n*A000045(2*n)` -/
def P8442566112979885135.Spec : Prop :=
  ∀ n, P8442566112979885135.a n = A061171 n

end A061171

/-! ## A061171.P1339645471983827788

`A000045(2*(n+2))+n*A000032(2*n+3)`
-/

namespace A061171.P1339645471983827788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 2)) + (n : ℤ) * A000032 (2 * n + 3)

end

end A061171.P1339645471983827788

namespace A061171

/-- `A000045(2*(n+2))+n*A000032(2*n+3)` -/
def P1339645471983827788.Spec : Prop :=
  ∀ n, P1339645471983827788.a n = A061171 n

end A061171

/-! ## A061171.P6602601701997352877

`A024472(2*(n+1))+A024472(2*(n+1))-A024472(2*n+1)`
-/

namespace A061171.P6602601701997352877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024472 (2 * (n + 1)) + (A024472 (2 * (n + 1)) - A024472 (2 * n + 1))

end

end A061171.P6602601701997352877

namespace A061171

/-- `A024472(2*(n+1))+A024472(2*(n+1))-A024472(2*n+1)` -/
def P6602601701997352877.Spec : Prop :=
  ∀ n, P6602601701997352877.a n = A061171 n

end A061171

/-! ## A061171.P16971142576261090268

`A004799(2*(n+1))/2`
-/

namespace A061171.P16971142576261090268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004799 (2 * (n + 1)) : ℚ) / 2

end

end A061171.P16971142576261090268

namespace A061171

/-- `A004799(2*(n+1))/2` -/
def P16971142576261090268.Spec : Prop :=
  ∀ n, P16971142576261090268.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P2904674865803197625

`(A023619(2*(n+1))+A023607(2*n+1))/2`
-/

namespace A061171.P2904674865803197625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023619 (2 * (n + 1)) + A023607 (2 * n + 1) : ℚ) / 2

end

end A061171.P2904674865803197625

namespace A061171

/-- `(A023619(2*(n+1))+A023607(2*n+1))/2` -/
def P2904674865803197625.Spec : Prop :=
  ∀ n, P2904674865803197625.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P18276356965634029799

`2*A024472(2*(n+1))-A024472(2*n+1)`
-/

namespace A061171.P18276356965634029799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024472 (2 * (n + 1)) - A024472 (2 * n + 1)

end

end A061171.P18276356965634029799

namespace A061171

/-- `2*A024472(2*(n+1))-A024472(2*n+1)` -/
def P18276356965634029799.Spec : Prop :=
  ∀ n, P18276356965634029799.a n = A061171 n

end A061171

/-! ## A061171.P10557877017483639446

`(A097039(2*n+1)+A053311(2*n+1))/2`
-/

namespace A061171.P10557877017483639446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097039 (2 * n + 1) + A053311 (2 * n + 1) : ℚ) / 2

end

end A061171.P10557877017483639446

namespace A061171

/-- `(A097039(2*n+1)+A053311(2*n+1))/2` -/
def P10557877017483639446.Spec : Prop :=
  ∀ n, P10557877017483639446.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P10658721441351553262

`(A133673(2*(n+1))-A000045(2*n+1))/2`
-/

namespace A061171.P10658721441351553262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133673 (2 * (n + 1)) - A000045 (2 * n + 1) : ℚ) / 2

end

end A061171.P10658721441351553262

namespace A061171

/-- `(A133673(2*(n+1))-A000045(2*n+1))/2` -/
def P10658721441351553262.Spec : Prop :=
  ∀ n, P10658721441351553262.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P4439259710902798278

`A165206(n)-(A165206(n+1)+A001906(n+1))`
-/

namespace A061171.P4439259710902798278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165206 n - (A165206 (n + 1) + A001906 (n + 1))

end

end A061171.P4439259710902798278

namespace A061171

/-- `A165206(n)-(A165206(n+1)+A001906(n+1))` -/
def P4439259710902798278.Spec : Prop :=
  ∀ n, P4439259710902798278.a n = A061171 n

end A061171

/-! ## A061171.P633155504758978928

`(A067981(2*n+1)-A067980(2*n+1))/2`
-/

namespace A061171.P633155504758978928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067981 (2 * n + 1) - A067980 (2 * n + 1) : ℚ) / 2

end

end A061171.P633155504758978928

namespace A061171

/-- `(A067981(2*n+1)-A067980(2*n+1))/2` -/
def P633155504758978928.Spec : Prop :=
  ∀ n, P633155504758978928.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P11322549265167199769

`A067981(2*n+1)-A067982(2*n+1)/2`
-/

namespace A061171.P11322549265167199769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067981 (2 * n + 1) : ℚ) - (A067982 (2 * n + 1) : ℚ) / 2

end

end A061171.P11322549265167199769

namespace A061171

/-- `A067981(2*n+1)-A067982(2*n+1)/2` -/
def P11322549265167199769.Spec : Prop :=
  ∀ n, P11322549265167199769.a n = (A061171 n : ℚ)

end A061171

/-! ## A061171.P8217561408082166852

`A067982(2*n+1)/2-A067980(2*n+1)`
-/

namespace A061171.P8217561408082166852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067982 (2 * n + 1) : ℚ) / 2 - (A067980 (2 * n + 1) : ℚ)

end

end A061171.P8217561408082166852

namespace A061171

/-- `A067982(2*n+1)/2-A067980(2*n+1)` -/
def P8217561408082166852.Spec : Prop :=
  ∀ n, P8217561408082166852.a n = (A061171 n : ℚ)

end A061171

/-!
# A061172: Third column of Lucas bisection triangle (odd part).

The programs for A061172, the canonical program `A061172.P4308119146751470611` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061172 has offset 0).

The definition of A061172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061172.P4308119146751470611

`A060929(Δ[n²])`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A061172

/-- `A060929(Δ[n²])` -/
def P4308119146751470611.Spec : Prop :=
  ∀ n, P4308119146751470611.a n = A061172 n

theorem P4308119146751470611.correct : P4308119146751470611.Spec := by
  intro n
  simp only [A061172]

end A061172

/-! ## A061172.P13730588332449350030

`lcm(n+1, A060929(2*n+1))`
-/

namespace A061172.P13730588332449350030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A060929 (2 * n + 1))

end

end A061172.P13730588332449350030

namespace A061172

/-- `lcm(n+1, A060929(2*n+1))` -/
def P13730588332449350030.Spec : Prop :=
  ∀ n, (P13730588332449350030.a n : ℤ) = A061172 n

end A061172

/-! ## A061172.P13348895906378724670

`record[A060929(n+1)/(-1)^n]`
-/

namespace A061172.P13348895906378724670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060929 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061172.P13348895906378724670

namespace A061172

/-- `record[A060929(n+1)/(-1)^n]` -/
def P13348895906378724670.Spec : Prop :=
  ∀ n, P13348895906378724670.a n = (A061172 n : ℚ)

end A061172

/-! ## A061172.P9278375879120614039

`record[A060929(A014681(n)+1)]`
-/

namespace A061172.P9278375879120614039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061172.P9278375879120614039

namespace A061172

/-- `record[A060929(A014681(n)+1)]` -/
def P9278375879120614039.Spec : Prop :=
  ∀ n, P9278375879120614039.a n = A061172 n

end A061172

/-! ## A061172.P6654146067118264726

`record[A060929(A018841(n)+1)]`
-/

namespace A061172.P6654146067118264726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A018841 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061172.P6654146067118264726

namespace A061172

/-- `record[A060929(A018841(n)+1)]` -/
def P6654146067118264726.Spec : Prop :=
  ∀ n, P6654146067118264726.a n = A061172 n

end A061172

/-! ## A061172.P1997770292302487550

`record[A060929(A131380(n)+1)]`
-/

namespace A061172.P1997770292302487550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A131380 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061172.P1997770292302487550

namespace A061172

/-- `record[A060929(A131380(n)+1)]` -/
def P1997770292302487550.Spec : Prop :=
  ∀ n, P1997770292302487550.a n = A061172 n

end A061172

/-! ## A061172.P392480128493721246

`record[A060929(A237420(n)+1)]`
-/

namespace A061172.P392480128493721246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061172.P392480128493721246

namespace A061172

/-- `record[A060929(A237420(n)+1)]` -/
def P392480128493721246.Spec : Prop :=
  ∀ n, P392480128493721246.a n = A061172 n

end A061172

/-! ## A061172.P12763536924140928968

`record[A060929(A062157(n+1)+n)]`
-/

namespace A061172.P12763536924140928968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (A062157 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061172.P12763536924140928968

namespace A061172

/-- `record[A060929(A062157(n+1)+n)]` -/
def P12763536924140928968.Spec : Prop :=
  ∀ n, P12763536924140928968.a n = A061172 n

end A061172

/-! ## A061172.P5642252550240027436

`(4*n+3)*A136376(2*(n+1))-A086926(2*n+1)`
-/

namespace A061172.P5642252550240027436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) * A136376 (2 * (n + 1)) - A086926 (2 * n + 1)

end

end A061172.P5642252550240027436

namespace A061172

/-- `(4*n+3)*A136376(2*(n+1))-A086926(2*n+1)` -/
def P5642252550240027436.Spec : Prop :=
  ∀ n, P5642252550240027436.a n = A061172 n

end A061172

/-! ## A061172.P12710683754000987990

`A060929(n+1+n)+A010052(A000040(n+1))`
-/

namespace A061172.P12710683754000987990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (n + 1 + n) + A010052 (A000040 (n + 1)).toNat

end

end A061172.P12710683754000987990

namespace A061172

/-- `A060929(n+1+n)+A010052(A000040(n+1))` -/
def P12710683754000987990.Spec : Prop :=
  ∀ n, P12710683754000987990.a n = A061172 n

end A061172

/-! ## A061172.P17466064412767469371

`A060929(n+1+n)+A010052(A005384(n+1))`
-/

namespace A061172.P17466064412767469371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060929 (n + 1 + n) + A010052 (A005384 (n + 1)).toNat

end

end A061172.P17466064412767469371

namespace A061172

/-- `A060929(n+1+n)+A010052(A005384(n+1))` -/
def P17466064412767469371.Spec : Prop :=
  ∀ n, P17466064412767469371.a n = A061172 n

end A061172

/-! ## A061172.P12012802653262943272

`gcd(A060929(2*n+1)*A060929(n+1), A060929(2*n+1))`
-/

namespace A061172.P12012802653262943272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060929 (2 * n + 1) * A060929 (n + 1)) (A060929 (2 * n + 1))

end

end A061172.P12012802653262943272

namespace A061172

/-- `gcd(A060929(2*n+1)*A060929(n+1), A060929(2*n+1))` -/
def P12012802653262943272.Spec : Prop :=
  ∀ n, (P12012802653262943272.a n : ℤ) = A061172 n

end A061172

/-!
# A061173: One-fourth of fourth column of Lucas bisection triangle (odd part).

The programs for A061173, there is no canonical definition to state claims against.
-/

/-! ## A061173.P14314167325763296441

`A060930(2*n+1)/4`
-/

namespace A061173.P14314167325763296441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060930 (2 * n + 1) : ℚ) / 4

end

end A061173.P14314167325763296441

/-! ## A061173.P1931556012866914465

`ceil(A060930(n+1+n)/4)`
-/

namespace A061173.P1931556012866914465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060930 (n + 1 + n) : ℚ) / 4⌉

end

end A061173.P1931556012866914465

/-! ## A061173.P17735940884687223337

`record[A060930(A033999(n)+n)/4]`
-/

namespace A061173.P17735940884687223337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060930 (A033999 n + (n : ℤ)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061173.P17735940884687223337

/-! ## A061173.P641317477439396513

`record[(A060930(A060576(n)+n)/4)^and(1, n+1)]`
-/

namespace A061173.P641317477439396513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A060930 (A060576 n + (n : ℤ)).toNat : ℚ) / 4) ^ Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061173.P641317477439396513

/-! ## A061173.P12854841232844404538

`(2^A321800(A348674(n)))²*A060930(2*n+1)`
-/

namespace A061173.P12854841232844404538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A321800 (A348674 n).toNat : ℤ)) ^ 2 * (A060930 (2 * n + 1) : ℚ)

end

end A061173.P12854841232844404538

/-!
# A061174: Fifth column of Lucas bisection triangle (odd part).

The programs for A061174, there is no canonical definition to state claims against.
-/

/-! ## A061174.P449869607605276305

`A060931(Δ[n²])`
-/

namespace A061174.P449869607605276305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061174.P449869607605276305

/-! ## A061174.P8825002335630541147

`record[A060931(xor(1, n))]`
-/

namespace A061174.P8825002335630541147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060931 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061174.P8825002335630541147

/-! ## A061174.P15883668049998633700

`record[A060931(A093178(n))]`
-/

namespace A061174.P15883668049998633700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060931 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061174.P15883668049998633700

/-! ## A061174.P774685233825731815

`record[A060931(A000265(n+1))]`
-/

namespace A061174.P774685233825731815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060931 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061174.P774685233825731815

/-! ## A061174.P7539527523255442950

`record[A060931(n+1)/A010689(n)]`
-/

namespace A061174.P7539527523255442950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060931 (n + 1) : ℚ) / (A010689 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061174.P7539527523255442950

/-! ## A061174.P12299441627233563427

`2*A060931(2*n+1)-A060931(2*n+1)`
-/

namespace A061174.P12299441627233563427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060931 (2 * n + 1) - A060931 (2 * n + 1)

end

end A061174.P12299441627233563427

/-! ## A061174.P9872402145374442889

`A060931(A000265(2*n+1))²/A060931(2*n+1)`
-/

namespace A061174.P9872402145374442889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060931 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A060931 (2 * n + 1) : ℚ)

end

end A061174.P9872402145374442889

/-! ## A061174.P1931346171622219833

`A060931(2*n+1)²/A060931(A093178(2*n+1))`
-/

namespace A061174.P1931346171622219833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060931 (2 * n + 1) ^ 2 : ℚ) / (A060931 (A093178 (2 * n + 1)).toNat : ℚ)

end

end A061174.P1931346171622219833

/-!
# A061175: One half of sixth column of Lucas bisection triangle (odd part).

The programs for A061175, there is no canonical definition to state claims against.
-/

/-! ## A061175.P2644238110041360676

`A060932(Δ[n²])/2`
-/

namespace A061175.P2644238110041360676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060932 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A061175.P2644238110041360676

/-! ## A061175.P3900621993699240100

`floor(A060932(2*n+1)/2)`
-/

namespace A061175.P3900621993699240100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060932 (2 * n + 1) : ℚ) / 2⌋

end

end A061175.P3900621993699240100

/-! ## A061175.P6197696506813302854

`ceil(A060932(comp[2*n+1]+1)/2)`
-/

namespace A061175.P6197696506813302854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060932 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2⌉

end

end A061175.P6197696506813302854

/-! ## A061175.P13787189389455684138

`record[A060932(A276151(n+1)+1)/2]`
-/

namespace A061175.P13787189389455684138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060932 (A276151 (n + 1) + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061175.P13787189389455684138

/-! ## A061175.P17790588516942692138

`record[A060932(n+1)/2*A033999(n)]`
-/

namespace A061175.P17790588516942692138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060932 (n + 1) : ℚ) / 2 * (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061175.P17790588516942692138

/-!
# A061176: Coefficients of polynomials ( (1 -x +sqrt(x))^n + (1 -x -sqrt(x))^n )/2.

The programs for A061176, there is no canonical definition to state claims against.
-/

/-! ## A061176.P6730172020633432085

`A084610(A133280(n))`
-/

namespace A061176.P6730172020633432085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A133280 n).toNat

end

end A061176.P6730172020633432085

/-! ## A061176.P1015776922089971417

`A084610(A083920(n)+n)`
-/

namespace A061176.P1015776922089971417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A083920 n + (n : ℤ)).toNat

end

end A061176.P1015776922089971417

/-! ## A061176.P17902261901927537110

`A084610(eq[0, A333275(n+1)])`
-/

namespace A061176.P17902261901927537110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061176.P17902261901927537110

/-! ## A061176.P5479992518074598384

`A084610(2*n-A003056(n))`
-/

namespace A061176.P5479992518074598384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 ((2 * n : ℤ) - A003056 n).toNat

end

end A061176.P5479992518074598384

/-! ## A061176.P14543237694323575128

`A084610(n-A003056(n)+n)`
-/

namespace A061176.P14543237694323575128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 ((n : ℤ) - A003056 n + (n : ℤ)).toNat

end

end A061176.P14543237694323575128

/-! ## A061176.P2813687028267871074

`A084610(n-(A003056(n)-n))`
-/

namespace A061176.P2813687028267871074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 ((n : ℤ) - (A003056 n - (n : ℤ))).toNat

end

end A061176.P2813687028267871074

/-! ## A061176.P6309660384976073571

`A084610(A005408(n)-A002024(n+1))`
-/

namespace A061176.P6309660384976073571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A005408 n - A002024 (n + 1)).toNat

end

end A061176.P6309660384976073571

/-!
# A061177: Coefficients of polynomials ( (1 -x +sqrt(x))^(n+1) - (1 -x -sqrt(x))^(n+1) )/(2*sqrt(x)).

The programs for A061177, there is no canonical definition to state claims against.
-/

/-! ## A061177.P8951626225155967960

`A084610(∑[char[∑[n+1]]+2])`
-/

namespace A061177.P8951626225155967960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061177.P8951626225155967960

/-! ## A061177.P2324668532247363764

`or(char[3], A084610(A195437(n)))`
-/

namespace A061177.P2324668532247363764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084610 (A195437 n).toNat)

end

end A061177.P2324668532247363764

/-! ## A061177.P9605270160463327996

`char[A001057(n)]*A084610(A195437(n))`
-/

namespace A061177.P9605270160463327996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A084610 (A195437 n).toNat

end

end A061177.P9605270160463327996

/-! ## A061177.P17003228466423593845

`A188510(2*n+1)²*A084610(A195437(n))`
-/

namespace A061177.P17003228466423593845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n + 1) ^ 2 * A084610 (A195437 n).toNat

end

end A061177.P17003228466423593845

/-! ## A061177.P14703118172157003436

`A001222(A151800(n))*A084610(A195437(n))`
-/

namespace A061177.P14703118172157003436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 n).toNat * A084610 (A195437 n).toNat

end

end A061177.P14703118172157003436

/-! ## A061177.P866244670946980217

`A123758(A017317(n))+A084610(A195437(n))`
-/

namespace A061177.P866244670946980217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123758 (A017317 n).toNat + A084610 (A195437 n).toNat

end

end A061177.P866244670946980217

/-! ## A061177.P11725229901588049930

`A084610(A195437(n))^A089723(A077546(n+2)+1)`
-/

namespace A061177.P11725229901588049930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084610 (A195437 n).toNat : ℚ) ^ (A089723 (A077546 (n + 2) + 1).toNat : ℤ)

end

end A061177.P11725229901588049930

/-! ## A061177.P18280483317164699308

`A238877(2*A000040(n+1))+A084610(A195437(n))`
-/

namespace A061177.P18280483317164699308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * A000040 (n + 1)).toNat + A084610 (A195437 n).toNat

end

end A061177.P18280483317164699308

/-!
# A061178: Third column (m=2) of triangle A060920 (bisection of Fibonacci triangle, even part).

The programs for A061178, the canonical program `A061178.P13876543038960591901` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061178 has offset 0).

The definition of A061178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061178.P13876543038960591901

`A001628(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061178

/-- `A001628(2*n)` -/
def P13876543038960591901.Spec : Prop :=
  ∀ n, P13876543038960591901.a n = A061178 n

theorem P13876543038960591901.correct : P13876543038960591901.Spec := by
  intro n
  simp only [A061178]

end A061178

/-! ## A061178.P6799721468930931852

`∑[∑[A054455(2*n)]]`
-/

namespace A061178.P6799721468930931852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061178.P6799721468930931852

namespace A061178

/-- `∑[∑[A054455(2*n)]]` -/
def P6799721468930931852.Spec : Prop :=
  ∀ n, P6799721468930931852.a n = A061178 n

end A061178

/-! ## A061178.P4498995075820219177

`record[A001628(and(n, n+1))]`
-/

namespace A061178.P4498995075820219177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061178.P4498995075820219177

namespace A061178

/-- `record[A001628(and(n, n+1))]` -/
def P4498995075820219177.Spec : Prop :=
  ∀ n, P4498995075820219177.a n = A061178 n

end A061178

/-! ## A061178.P6596256385949416146

`record[A001628(n)/(-1)^n]`
-/

namespace A061178.P6596256385949416146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001628 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061178.P6596256385949416146

namespace A061178

/-- `record[A001628(n)/(-1)^n]` -/
def P6596256385949416146.Spec : Prop :=
  ∀ n, P6596256385949416146.a n = (A061178 n : ℚ)

end A061178

/-! ## A061178.P13647918402570638779

`record[A001628(n+1)^(n%2)]`
-/

namespace A061178.P13647918402570638779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061178.P13647918402570638779

namespace A061178

/-- `record[A001628(n+1)^(n%2)]` -/
def P13647918402570638779.Spec : Prop :=
  ∀ n, P13647918402570638779.a n = A061178 n

end A061178

/-! ## A061178.P4213681750976265751

`or(char[3], A001628(A005843(n)))`
-/

namespace A061178.P4213681750976265751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001628 (A005843 n).toNat)

end

end A061178.P4213681750976265751

namespace A061178

/-- `or(char[3], A001628(A005843(n)))` -/
def P4213681750976265751.Spec : Prop :=
  ∀ n, P4213681750976265751.a n = A061178 n

end A061178

/-! ## A061178.P2611762149675594408

`record[A001628(A000265(n+1)-1)]`
-/

namespace A061178.P2611762149675594408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061178.P2611762149675594408

namespace A061178

/-- `record[A001628(A000265(n+1)-1)]` -/
def P2611762149675594408.Spec : Prop :=
  ∀ n, P2611762149675594408.a n = A061178 n

end A061178

/-! ## A061178.P17772269301330267484

`∑[∑[A055243(2*n)+A010049(2*n)]]`
-/

namespace A061178.P17772269301330267484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 (2 * n) + A010049 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061178.P17772269301330267484

namespace A061178

/-- `∑[∑[A055243(2*n)+A010049(2*n)]]` -/
def P17772269301330267484.Spec : Prop :=
  ∀ n, P17772269301330267484.a n = A061178 n

end A061178

/-! ## A061178.P15696724500628675845

`A067988(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A061178.P15696724500628675845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067988 (2 * n) - a (n - 1)

end

end A061178.P15696724500628675845

namespace A061178

/-- `A067988(2*n)-a(n-1)` -/
def P15696724500628675845.Spec : Prop :=
  ∀ n, P15696724500628675845.a n = A061178 n

end A061178

/-! ## A061178.P12924489704924969620

`A001629(2*n+1)+A212338(2*n+3)-A261055(2*n)`
-/

namespace A061178.P12924489704924969620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n + 1) + (A212338 (2 * n + 3) - A261055 (2 * n))

end

end A061178.P12924489704924969620

namespace A061178

/-- `A001629(2*n+1)+A212338(2*n+3)-A261055(2*n)` -/
def P12924489704924969620.Spec : Prop :=
  ∀ n, P12924489704924969620.a n = A061178 n

end A061178

/-! ## A061178.P2087186740708181619

`(A036682(2*n)-A001872(2*n))/2`
-/

namespace A061178.P2087186740708181619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036682 (2 * n) - A001872 (2 * n) : ℚ) / 2

end

end A061178.P2087186740708181619

namespace A061178

/-- `(A036682(2*n)-A001872(2*n))/2` -/
def P2087186740708181619.Spec : Prop :=
  ∀ n, P2087186740708181619.a n = (A061178 n : ℚ)

end A061178

/-! ## A061178.P10629726054357487614

`A001872(2*n+1)+A212338(2*(n+2))-A036682(2*n+1)`
-/

namespace A061178.P10629726054357487614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (2 * n + 1) + (A212338 (2 * (n + 2)) - A036682 (2 * n + 1))

end

end A061178.P10629726054357487614

namespace A061178

/-- `A001872(2*n+1)+A212338(2*(n+2))-A036682(2*n+1)` -/
def P10629726054357487614.Spec : Prop :=
  ∀ n, P10629726054357487614.a n = A061178 n

end A061178

/-! ## A061178.P1304952005686967662

`A001628(A005843(n))/A007318(∑[n])`
-/

namespace A061178.P1304952005686967662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001628 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A061178.P1304952005686967662

namespace A061178

/-- `A001628(A005843(n))/A007318(∑[n])` -/
def P1304952005686967662.Spec : Prop :=
  ∀ n, P1304952005686967662.a n = (A061178 n : ℚ)

end A061178

/-! ## A061178.P15070156946818741865

`A060920(∑[n+2]+3)`
-/

namespace A061178.P15070156946818741865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A061178.P15070156946818741865

namespace A061178

/-- `A060920(∑[n+2]+3)` -/
def P15070156946818741865.Spec : Prop :=
  ∀ n, P15070156946818741865.a n = A061178 n

end A061178

/-!
# A061179: Fourth column (m=3) of triangle A060920 (bisection of Fibonacci triangle, even part).

The programs for A061179, there is no canonical definition to state claims against.
-/

/-! ## A061179.P5321176616929705182

`A001872(2*n)`
-/

namespace A061179.P5321176616929705182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (2 * n)

end

end A061179.P5321176616929705182

/-! ## A061179.P16423170118754237467

`record[A001872(n%4+n)]`
-/

namespace A061179.P16423170118754237467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061179.P16423170118754237467

/-! ## A061179.P1268120387437453425

`record[gcd(val(n+1, 2), A001872(n))]`
-/

namespace A061179.P1268120387437453425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A001872 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061179.P1268120387437453425

/-! ## A061179.P14608378322324608888

`record[A001872(A014681(n))]`
-/

namespace A061179.P14608378322324608888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061179.P14608378322324608888

/-! ## A061179.P15304604138837078963

`record[A001872(A018838(n))]`
-/

namespace A061179.P15304604138837078963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (A018838 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061179.P15304604138837078963

/-! ## A061179.P8955458290061462945

`record[A001872(n)/A033999(n)]`
-/

namespace A061179.P8955458290061462945
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001872 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061179.P8955458290061462945

/-! ## A061179.P6647135494709439862

`A036682(2*n)-2*A001628(2*n)`
-/

namespace A061179.P6647135494709439862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036682 (2 * n) - 2 * A001628 (2 * n)

end

end A061179.P6647135494709439862

/-! ## A061179.P5651855849240933478

`A060920(A167614(n+2))`
-/

namespace A061179.P5651855849240933478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (A167614 (n + 2)).toNat

end

end A061179.P5651855849240933478

/-! ## A061179.P1090177749836653779

`A060920(eq[3, A002262(n)])`
-/

namespace A061179.P1090177749836653779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061179.P1090177749836653779

/-! ## A061179.P13169382046382958662

`A037027(A167614(2*(n+1)))`
-/

namespace A061179.P13169382046382958662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A167614 (2 * (n + 1))).toNat

end

end A061179.P13169382046382958662

/-!
# A061180: Fifth column (m=4) of triangle A060920 (bisection of Fibonacci triangle, even part).

The programs for A061180, the canonical program `A061180.P6075713326514681743` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061180 has offset 0).

The definition of A061180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061180.P6075713326514681743

`A001873(2*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061180

/-- `A001873(2*n)` -/
def P6075713326514681743.Spec : Prop :=
  ∀ n, P6075713326514681743.a n = A061180 n

theorem P6075713326514681743.correct : P6075713326514681743.Spec := by
  intro n
  simp only [A061180]

end A061180

/-! ## A061180.P11026359972052135060

`record[A001873(n)^(-1)^n]`
-/

namespace A061180.P11026359972052135060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001873 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P11026359972052135060

namespace A061180

/-- `record[A001873(n)^(-1)^n]` -/
def P11026359972052135060.Spec : Prop :=
  ∀ n, P11026359972052135060.a n = (A061180 n : ℚ)

end A061180

/-! ## A061180.P675452454692599658

`record[A001873(A014681(n))]`
-/

namespace A061180.P675452454692599658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P675452454692599658

namespace A061180

/-- `record[A001873(A014681(n))]` -/
def P675452454692599658.Spec : Prop :=
  ∀ n, P675452454692599658.a n = A061180 n

end A061180

/-! ## A061180.P3129707908983114022

`record[A001873(A093178(n)-1)]`
-/

namespace A061180.P3129707908983114022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P3129707908983114022

namespace A061180

/-- `record[A001873(A093178(n)-1)]` -/
def P3129707908983114022.Spec : Prop :=
  ∀ n, P3129707908983114022.a n = A061180 n

end A061180

/-! ## A061180.P5847234191381922434

`record[A001873(n)/A033999(n)]`
-/

namespace A061180.P5847234191381922434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001873 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P5847234191381922434

namespace A061180

/-- `record[A001873(n)/A033999(n)]` -/
def P5847234191381922434.Spec : Prop :=
  ∀ n, P5847234191381922434.a n = (A061180 n : ℚ)

end A061180

/-! ## A061180.P4994265005527573013

`record[A001873(A000265(n+1)-1)]`
-/

namespace A061180.P4994265005527573013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P4994265005527573013

namespace A061180

/-- `record[A001873(A000265(n+1)-1)]` -/
def P4994265005527573013.Spec : Prop :=
  ∀ n, P4994265005527573013.a n = A061180 n

end A061180

/-! ## A061180.P8888927174690872602

`record[A001873(A026741(n+1)-1)]`
-/

namespace A061180.P8888927174690872602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A026741 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P8888927174690872602

namespace A061180

/-- `record[A001873(A026741(n+1)-1)]` -/
def P8888927174690872602.Spec : Prop :=
  ∀ n, P8888927174690872602.a n = A061180 n

end A061180

/-! ## A061180.P17432876353219621832

`record[A001873(A106609(n+1)-1)]`
-/

namespace A061180.P17432876353219621832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A106609 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P17432876353219621832

namespace A061180

/-- `record[A001873(A106609(n+1)-1)]` -/
def P17432876353219621832.Spec : Prop :=
  ∀ n, P17432876353219621832.a n = A061180 n

end A061180

/-! ## A061180.P15428719409506331557

`record[A001873(A099375(n)-1)]`
-/

namespace A061180.P15428719409506331557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P15428719409506331557

namespace A061180

/-- `record[A001873(A099375(n)-1)]` -/
def P15428719409506331557.Spec : Prop :=
  ∀ n, P15428719409506331557.a n = A061180 n

end A061180

/-! ## A061180.P14750259973449375677

`record[A001873(A158405(n+1)-1)]`
-/

namespace A061180.P14750259973449375677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A158405 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061180.P14750259973449375677

namespace A061180

/-- `record[A001873(A158405(n+1)-1)]` -/
def P14750259973449375677.Spec : Prop :=
  ∀ n, P14750259973449375677.a n = A061180 n

end A061180

/-! ## A061180.P9306770862003188766

`A060920(eq[4, A002262(n)])`
-/

namespace A061180.P9306770862003188766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A061180.P9306770862003188766

namespace A061180

/-- `A060920(eq[4, A002262(n)])` -/
def P9306770862003188766.Spec : Prop :=
  ∀ n, P9306770862003188766.a n = A061180 n

end A061180

/-!
# A061181: Sixth column (m=5) of triangle A060920 (bisection of Fibonacci triangle, even part).

The programs for A061181, there is no canonical definition to state claims against.
-/

/-! ## A061181.P12037119667169386881

`A001874(2*n)`
-/

namespace A061181.P12037119667169386881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001874 (2 * n)

end

end A061181.P12037119667169386881

/-! ## A061181.P11497967314301457642

`record[lcm((n+1)%2, A001874(n))]`
-/

namespace A061181.P11497967314301457642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) % 2 : ℕ) : ℤ) (A001874 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061181.P11497967314301457642

/-! ## A061181.P8313356777127356363

`record[A001874(A014681(n))]`
-/

namespace A061181.P8313356777127356363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001874 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061181.P8313356777127356363

/-! ## A061181.P7393962034316633104

`record[A001874(A083220(n))]`
-/

namespace A061181.P7393962034316633104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001874 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061181.P7393962034316633104

/-! ## A061181.P4557366725905609036

`record[A001874(n)/A033999(n)]`
-/

namespace A061181.P4557366725905609036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001874 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061181.P4557366725905609036

/-! ## A061181.P725215441531980947

`A038137(A023551(2*(n+1))-A023551(2*n+1))`
-/

namespace A061181.P725215441531980947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A023551 (2 * (n + 1)) - A023551 (2 * n + 1)).toNat

end

end A061181.P725215441531980947

/-! ## A061181.P15162380058402158352

`A238241(A096376(n+1))`
-/

namespace A061181.P15162380058402158352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238241 (A096376 (n + 1)).toNat

end

end A061181.P15162380058402158352

/-! ## A061181.P14461666739956696660

`A238241(A014106(n+1)-2*n)`
-/

namespace A061181.P14461666739956696660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238241 (A014106 (n + 1) - (2 * n : ℤ)).toNat

end

end A061181.P14461666739956696660

/-! ## A061181.P11694557768776320007

`A210868(A187989(n+2)-1)`
-/

namespace A061181.P11694557768776320007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210868 (A187989 (n + 2) - 1).toNat

end

end A061181.P11694557768776320007

/-!
# A061182: Third column (m=2) of triangle A060921 (bisection of Fibonacci triangle, odd part).

The programs for A061182, the canonical program `A061182.P38621950411227390` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061182 has offset 0).

The definition of A061182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061182.P38621950411227390

`A001628(Δ[n²])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061182

/-- `A001628(Δ[n²])` -/
def P38621950411227390.Spec : Prop :=
  ∀ n, P38621950411227390.a n = A061182 n

theorem P38621950411227390.correct : P38621950411227390.Spec := by
  intro n
  simp only [A061182]

end A061182

/-! ## A061182.P11458216137414941115

`record[A001628(xor(1, n))]`
-/

namespace A061182.P11458216137414941115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061182.P11458216137414941115

namespace A061182

/-- `record[A001628(xor(1, n))]` -/
def P11458216137414941115.Spec : Prop :=
  ∀ n, P11458216137414941115.a n = A061182 n

end A061182

/-! ## A061182.P15302839347409724869

`∑[∑[A054455(2*n+1)]]`
-/

namespace A061182.P15302839347409724869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054455 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061182.P15302839347409724869

namespace A061182

/-- `∑[∑[A054455(2*n+1)]]` -/
def P15302839347409724869.Spec : Prop :=
  ∀ n, P15302839347409724869.a n = A061182 n

end A061182

/-! ## A061182.P4063291893350448231

`record[A001628(gcd(n+1, ∑[n]))]`
-/

namespace A061182.P4063291893350448231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061182.P4063291893350448231

namespace A061182

/-- `record[A001628(gcd(n+1, ∑[n]))]` -/
def P4063291893350448231.Spec : Prop :=
  ∀ n, P4063291893350448231.a n = A061182 n

end A061182

/-! ## A061182.P12328350953537393987

`and(-1, A001628(2*n+1))`
-/

namespace A061182.P12328350953537393987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001628 (2 * n + 1))

end

end A061182.P12328350953537393987

namespace A061182

/-- `and(-1, A001628(2*n+1))` -/
def P12328350953537393987.Spec : Prop :=
  ∀ n, P12328350953537393987.a n = A061182 n

end A061182

/-! ## A061182.P3601849441132565564

`record[A001628(A000265(n+1))]`
-/

namespace A061182.P3601849441132565564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061182.P3601849441132565564

namespace A061182

/-- `record[A001628(A000265(n+1))]` -/
def P3601849441132565564.Spec : Prop :=
  ∀ n, P3601849441132565564.a n = A061182 n

end A061182

/-! ## A061182.P9050901215676412765

`A001628(2*n+1)+A000007(n+1)`
-/

namespace A061182.P9050901215676412765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (2 * n + 1) + A000007 (n + 1)

end

end A061182.P9050901215676412765

namespace A061182

/-- `A001628(2*n+1)+A000007(n+1)` -/
def P9050901215676412765.Spec : Prop :=
  ∀ n, P9050901215676412765.a n = A061182 n

end A061182

/-! ## A061182.P14404195957342830623

`A055243(2*n+1)+A001628(2*n)`
-/

namespace A061182.P14404195957342830623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 (2 * n + 1) + A001628 (2 * n)

end

end A061182.P14404195957342830623

namespace A061182

/-- `A055243(2*n+1)+A001628(2*n)` -/
def P14404195957342830623.Spec : Prop :=
  ∀ n, P14404195957342830623.a n = A061182 n

end A061182

/-! ## A061182.P8386886200646723147

`A261055(2*n+1)-A036681(2*n)`
-/

namespace A061182.P8386886200646723147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261055 (2 * n + 1) - A036681 (2 * n)

end

end A061182.P8386886200646723147

namespace A061182

/-- `A261055(2*n+1)-A036681(2*n)` -/
def P8386886200646723147.Spec : Prop :=
  ∀ n, P8386886200646723147.a n = A061182 n

end A061182

/-! ## A061182.P12165947882698578622

`A129707(2*n+3)-A001628(2*n)`
-/

namespace A061182.P12165947882698578622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129707 (2 * n + 3) - A001628 (2 * n)

end

end A061182.P12165947882698578622

namespace A061182

/-- `A129707(2*n+3)-A001628(2*n)` -/
def P12165947882698578622.Spec : Prop :=
  ∀ n, P12165947882698578622.a n = A061182 n

end A061182

/-! ## A061182.P16736355905088043580

`∑[A055243(2*n+1)+A055243(2*n)]`
-/

namespace A061182.P16736355905088043580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 (2 * n + 1) + A055243 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061182.P16736355905088043580

namespace A061182

/-- `∑[A055243(2*n+1)+A055243(2*n)]` -/
def P16736355905088043580.Spec : Prop :=
  ∀ n, P16736355905088043580.a n = A061182 n

end A061182

/-! ## A061182.P5320855983015898839

`A061178(n+1)-(A061178(n)+A054444(n+1))`
-/

namespace A061182.P5320855983015898839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061178 (n + 1) - (A061178 n + A054444 (n + 1))

end

end A061182.P5320855983015898839

namespace A061182

/-- `A061178(n+1)-(A061178(n)+A054444(n+1))` -/
def P5320855983015898839.Spec : Prop :=
  ∀ n, P5320855983015898839.a n = A061182 n

end A061182

/-! ## A061182.P1708282206305349858

`gcd(A001222(n+2)*A001628(2*n+1), A001628(2*n+1))`
-/

namespace A061182.P1708282206305349858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 2) * A001628 (2 * n + 1)) (A001628 (2 * n + 1))

end

end A061182.P1708282206305349858

namespace A061182

/-- `gcd(A001222(n+2)*A001628(2*n+1), A001628(2*n+1))` -/
def P1708282206305349858.Spec : Prop :=
  ∀ n, (P1708282206305349858.a n : ℤ) = A061182 n

end A061182

/-! ## A061182.P210364932361886068

`A067988(2*n+3)-A001628(2*n+3)`
-/

namespace A061182.P210364932361886068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067988 (2 * n + 3) - A001628 (2 * n + 3)

end

end A061182.P210364932361886068

namespace A061182

/-- `A067988(2*n+3)-A001628(2*n+3)` -/
def P210364932361886068.Spec : Prop :=
  ∀ n, P210364932361886068.a n = A061182 n

end A061182

/-! ## A061182.P3630152295359711835

`(A212338(2*(n+2))-A001628(2*n))/2`
-/

namespace A061182.P3630152295359711835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212338 (2 * (n + 2)) - A001628 (2 * n) : ℚ) / 2

end

end A061182.P3630152295359711835

namespace A061182

/-- `(A212338(2*(n+2))-A001628(2*n))/2` -/
def P3630152295359711835.Spec : Prop :=
  ∀ n, P3630152295359711835.a n = (A061182 n : ℚ)

end A061182

/-! ## A061182.P1344706600612140772

`A212338(2*(n+2))-(A001628(2*n+1)+A001628(2*n))`
-/

namespace A061182.P1344706600612140772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212338 (2 * (n + 2)) - (A001628 (2 * n + 1) + A001628 (2 * n))

end

end A061182.P1344706600612140772

namespace A061182

/-- `A212338(2*(n+2))-(A001628(2*n+1)+A001628(2*n))` -/
def P1344706600612140772.Spec : Prop :=
  ∀ n, P1344706600612140772.a n = A061182 n

end A061182

/-! ## A061182.P11242623904421292710

`(A036682(2*n+1)-A001872(2*n+1))/2`
-/

namespace A061182.P11242623904421292710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036682 (2 * n + 1) - A001872 (2 * n + 1) : ℚ) / 2

end

end A061182.P11242623904421292710

namespace A061182

/-- `(A036682(2*n+1)-A001872(2*n+1))/2` -/
def P11242623904421292710.Spec : Prop :=
  ∀ n, P11242623904421292710.a n = (A061182 n : ℚ)

end A061182

/-! ## A061182.P18046250532957010499

`A001628(2*n+1)*A008619(2*n+1)/(n+1)`
-/

namespace A061182.P18046250532957010499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001628 (2 * n + 1) * A008619 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061182.P18046250532957010499

namespace A061182

/-- `A001628(2*n+1)*A008619(2*n+1)/(n+1)` -/
def P18046250532957010499.Spec : Prop :=
  ∀ n, P18046250532957010499.a n = (A061182 n : ℚ)

end A061182

/-! ## A061182.P15558591174343975462

`A060921(∑[n+2]+3)`
-/

namespace A061182.P15558591174343975462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060921 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A061182.P15558591174343975462

namespace A061182

/-- `A060921(∑[n+2]+3)` -/
def P15558591174343975462.Spec : Prop :=
  ∀ n, P15558591174343975462.a n = A061182 n

end A061182

/-! ## A061182.P6002833787689112869

`A123027(∑[n+3])`
-/

namespace A061182.P6002833787689112869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061182.P6002833787689112869

namespace A061182

/-- `A123027(∑[n+3])` -/
def P6002833787689112869.Spec : Prop :=
  ∀ n, P6002833787689112869.a n = A061182 n

end A061182

/-!
# A061183: One-fourth of the fourth (m=3) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

The programs for A061183, there is no canonical definition to state claims against.
-/

/-! ## A061183.P1570598566662154682

`A089117(2*(n+1))`
-/

namespace A061183.P1570598566662154682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089117 (2 * (n + 1))

end

end A061183.P1570598566662154682

/-! ## A061183.P396235259919445489

`record[A089117(A004442(n)+1)]`
-/

namespace A061183.P396235259919445489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089117 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061183.P396235259919445489

/-! ## A061183.P14849811524350764551

`record[A089117(n+1)^A062157(n)]`
-/

namespace A061183.P14849811524350764551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089117 (n + 1) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061183.P14849811524350764551

/-! ## A061183.P16621116853299926532

`record[A089117(n+1)^Δ[A004526(n)]]`
-/

namespace A061183.P16621116853299926532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089117 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061183.P16621116853299926532

/-! ## A061183.P16845692874302010041

`record[A089117(n+2)/A062157(n+1)]`
-/

namespace A061183.P16845692874302010041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089117 (n + 2) : ℚ) / (A062157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061183.P16845692874302010041

/-! ## A061183.P7540145295357739120

`A001872(2*n+1)/4`
-/

namespace A061183.P7540145295357739120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001872 (2 * n + 1) : ℚ) / 4

end

end A061183.P7540145295357739120

/-! ## A061183.P7489089656770432365

`record[A089117(n+1)^A007814(n²+1)]`
-/

namespace A061183.P7489089656770432365
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089117 (n + 1) : ℚ) ^ (A007814 (n ^ 2 + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061183.P7489089656770432365

/-!
# A061184: Fifth (m=4) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

The programs for A061184, the canonical program `A061184.P646427770272767009` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061184 has offset 0).

The definition of A061184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061184.P646427770272767009

`A001873(Δ[n²])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A061184

/-- `A001873(Δ[n²])` -/
def P646427770272767009.Spec : Prop :=
  ∀ n, P646427770272767009.a n = A061184 n

theorem P646427770272767009.correct : P646427770272767009.Spec := by
  intro n
  simp only [A061184]

end A061184

/-! ## A061184.P15084091813902674371

`or(char[1], A001873(2*n+1))`
-/

namespace A061184.P15084091813902674371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001873 (2 * n + 1))

end

end A061184.P15084091813902674371

namespace A061184

/-- `or(char[1], A001873(2*n+1))` -/
def P15084091813902674371.Spec : Prop :=
  ∀ n, P15084091813902674371.a n = A061184 n

end A061184

/-! ## A061184.P16719509969684246276

`record[A001873(A093178(n))]`
-/

namespace A061184.P16719509969684246276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P16719509969684246276

namespace A061184

/-- `record[A001873(A093178(n))]` -/
def P16719509969684246276.Spec : Prop :=
  ∀ n, P16719509969684246276.a n = A061184 n

end A061184

/-! ## A061184.P2552651257129667077

`record[A001873(Δ[A001318(n)])]`
-/

namespace A061184.P2552651257129667077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P2552651257129667077

namespace A061184

/-- `record[A001873(Δ[A001318(n)])]` -/
def P2552651257129667077.Spec : Prop :=
  ∀ n, P2552651257129667077.a n = A061184 n

end A061184

/-! ## A061184.P14822221131591973376

`record[A001873(A000265(n+1))]`
-/

namespace A061184.P14822221131591973376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P14822221131591973376

namespace A061184

/-- `record[A001873(A000265(n+1))]` -/
def P14822221131591973376.Spec : Prop :=
  ∀ n, P14822221131591973376.a n = A061184 n

end A061184

/-! ## A061184.P11194911458744172542

`record[A001873(A014681(n)+1)]`
-/

namespace A061184.P11194911458744172542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P11194911458744172542

namespace A061184

/-- `record[A001873(A014681(n)+1)]` -/
def P11194911458744172542.Spec : Prop :=
  ∀ n, P11194911458744172542.a n = A061184 n

end A061184

/-! ## A061184.P5906220262441592895

`record[A001873(A026741(n+1))]`
-/

namespace A061184.P5906220262441592895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P5906220262441592895

namespace A061184

/-- `record[A001873(A026741(n+1))]` -/
def P5906220262441592895.Spec : Prop :=
  ∀ n, P5906220262441592895.a n = A061184 n

end A061184

/-! ## A061184.P7736369163154842743

`record[A001873(A106609(n+1))]`
-/

namespace A061184.P7736369163154842743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A106609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P7736369163154842743

namespace A061184

/-- `record[A001873(A106609(n+1))]` -/
def P7736369163154842743.Spec : Prop :=
  ∀ n, P7736369163154842743.a n = A061184 n

end A061184

/-! ## A061184.P5795823386932165191

`record[A001873(A033999(n)+n)]`
-/

namespace A061184.P5795823386932165191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P5795823386932165191

namespace A061184

/-- `record[A001873(A033999(n)+n)]` -/
def P5795823386932165191.Spec : Prop :=
  ∀ n, P5795823386932165191.a n = A061184 n

end A061184

/-! ## A061184.P3480140997698155182

`A061180(n+1)-(A061180(n)+A061179(n+1))`
-/

namespace A061184.P3480140997698155182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061180 (n + 1) - (A061180 n + A061179 (n + 1))

end

end A061184.P3480140997698155182

namespace A061184

/-- `A061180(n+1)-(A061180(n)+A061179(n+1))` -/
def P3480140997698155182.Spec : Prop :=
  ∀ n, P3480140997698155182.a n = A061184 n

end A061184

/-! ## A061184.P350463358290884305

`record[A001873(A099375(n))]`
-/

namespace A061184.P350463358290884305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P350463358290884305

namespace A061184

/-- `record[A001873(A099375(n))]` -/
def P350463358290884305.Spec : Prop :=
  ∀ n, P350463358290884305.a n = A061184 n

end A061184

/-! ## A061184.P11781694458371944829

`record[A001873(A158405(n+1))]`
-/

namespace A061184.P11781694458371944829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061184.P11781694458371944829

namespace A061184

/-- `record[A001873(A158405(n+1))]` -/
def P11781694458371944829.Spec : Prop :=
  ∀ n, P11781694458371944829.a n = A061184 n

end A061184

/-! ## A061184.P3543779979473172612

`A123027(A000124(n+5)-6)`
-/

namespace A061184.P3543779979473172612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123027 (A000124 (n + 5) - 6).toNat

end

end A061184.P3543779979473172612

namespace A061184

/-- `A123027(A000124(n+5)-6)` -/
def P3543779979473172612.Spec : Prop :=
  ∀ n, P3543779979473172612.a n = A061184 n

end A061184

/-! ## A061184.P5074214818749849506

`A123027(A000096(n+3)+n+1)`
-/

namespace A061184.P5074214818749849506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123027 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A061184.P5074214818749849506

namespace A061184

/-- `A123027(A000096(n+3)+n+1)` -/
def P5074214818749849506.Spec : Prop :=
  ∀ n, P5074214818749849506.a n = A061184 n

end A061184

/-! ## A061184.P17090125026959305056

`A123027(Δ[Δ[A006504(n+1)]]-(n+6))`
-/

namespace A061184.P17090125026959305056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123027 (f1 (n + 1) - f1 n - (n + 6 : ℤ)).toNat

end

end A061184.P17090125026959305056

namespace A061184

/-- `A123027(Δ[Δ[A006504(n+1)]]-(n+6))` -/
def P17090125026959305056.Spec : Prop :=
  ∀ n, P17090125026959305056.a n = A061184 n

end A061184

/-! ## A061184.P3162448359833325316

`A001873(A000265(2*n+1))²/A001873(2*n+1)`
-/

namespace A061184.P3162448359833325316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001873 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A001873 (2 * n + 1) : ℚ)

end

end A061184.P3162448359833325316

namespace A061184

/-- `A001873(A000265(2*n+1))²/A001873(2*n+1)` -/
def P3162448359833325316.Spec : Prop :=
  ∀ n, P3162448359833325316.a n = (A061184 n : ℚ)

end A061184

/-! ## A061184.P7982705714745446554

`A001873(2*n+1)²/A001873(A026741(2*n+1))`
-/

namespace A061184.P7982705714745446554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001873 (2 * n + 1) ^ 2 : ℚ) / (A001873 (A026741 (2 * n + 1)).toNat : ℚ)

end

end A061184.P7982705714745446554

namespace A061184

/-- `A001873(2*n+1)²/A001873(A026741(2*n+1))` -/
def P7982705714745446554.Spec : Prop :=
  ∀ n, P7982705714745446554.a n = (A061184 n : ℚ)

end A061184

/-! ## A061184.P1212405307565919047

`A001873(2*n+1)²/A001873(A093178(2*n+1))`
-/

namespace A061184.P1212405307565919047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001873 (2 * n + 1) ^ 2 : ℚ) / (A001873 (A093178 (2 * n + 1)).toNat : ℚ)

end

end A061184.P1212405307565919047

namespace A061184

/-- `A001873(2*n+1)²/A001873(A093178(2*n+1))` -/
def P1212405307565919047.Spec : Prop :=
  ∀ n, P1212405307565919047.a n = (A061184 n : ℚ)

end A061184

/-! ## A061184.P13090565406423278180

`A001873(2*n+1)²/A001873(A106609(2*n+1))`
-/

namespace A061184.P13090565406423278180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001873 (2 * n + 1) ^ 2 : ℚ) / (A001873 (A106609 (2 * n + 1)).toNat : ℚ)

end

end A061184.P13090565406423278180

namespace A061184

/-- `A001873(2*n+1)²/A001873(A106609(2*n+1))` -/
def P13090565406423278180.Spec : Prop :=
  ∀ n, P13090565406423278180.a n = (A061184 n : ℚ)

end A061184

/-!
# A061185: One half of sixth (m=5) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

The programs for A061185, there is no canonical definition to state claims against.
-/

/-! ## A061185.P13546874538988903325

`A001874(Δ[n²])/2`
-/

namespace A061185.P13546874538988903325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001874 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A061185.P13546874538988903325

/-! ## A061185.P2683814619146341447

`floor(A001874(A005408(n))/2)`
-/

namespace A061185.P2683814619146341447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001874 (A005408 n).toNat : ℚ) / 2⌋

end

end A061185.P2683814619146341447

/-! ## A061185.P16805714824923469795

`A001874(2*n+1)/2*A033999(n)²`
-/

namespace A061185.P16805714824923469795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001874 (2 * n + 1) : ℚ) / 2 * (A033999 n ^ 2 : ℚ)

end

end A061185.P16805714824923469795

/-! ## A061185.P15610752031824633488

`A001874(A005408(n))/2*char[A028242(n)]`
-/

namespace A061185.P15610752031824633488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001874 (A005408 n).toNat : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A061185.P15610752031824633488

/-! ## A061185.P11276162619361882390

`A001874(A005408(n))/2*(-A033999(n))^n`
-/

namespace A061185.P11276162619361882390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001874 (A005408 n).toNat : ℚ) / 2 * ((-A033999 n) ^ n : ℚ)

end

end A061185.P11276162619361882390

/-! ## A061185.P9208454176390890000

`A001874(A005408(n))/2*A054977(A058222(n))`
-/

namespace A061185.P9208454176390890000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001874 (A005408 n).toNat : ℚ) / 2 * (A054977 (A058222 n).toNat : ℚ)

end

end A061185.P9208454176390890000

/-! ## A061185.P13646604719531943798

`A060921(A167499(n+4))/2`
-/

namespace A061185.P13646604719531943798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060921 (A167499 (n + 4)).toNat : ℚ) / 2

end

end A061185.P13646604719531943798

/-!
# A061190: a(n) = n^n - n.

The programs for A061190, the canonical program `A061190.P17603137389957577556` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061190 has offset 0).

The definition of A061190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n-n` (program `A061190.P17603137389957577556`, by `A061190.P17603137389957577556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061190.P17603137389957577556

`n^n-n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A061190

/-- `n^n-n` -/
def P17603137389957577556.Spec : Prop :=
  ∀ n, P17603137389957577556.a n = A061190 n

theorem P17603137389957577556.correct : P17603137389957577556.Spec := by
  intro n
  simp only [A061190]

end A061190

/-!
# A061191: Numbers of the form (10*a + b)^2 + (10*b + a)^2 with a and b less than 10, in numerical order.

The programs for A061191, there is no canonical definition to state claims against.
-/

/-! ## A061191.P8707850253792345847

`filter[A256398(n+1), A267579(#)]`
-/

namespace A061191.P8707850253792345847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A061191.P8707850253792345847

/-! ## A061191.P10257535230358741097

`A055396(A082139(n))*A256398(n+3)`
-/

namespace A061191.P10257535230358741097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A082139 n).toNat * A256398 (n + 3)

end

end A061191.P10257535230358741097

/-!
# A061193: Number of digits in n-th even perfect number (A000396).

The programs for A061193, there is no canonical definition to state claims against.
-/

/-! ## A061193.P14961915480779873665

`ceil(A133033(n+1)/log2(10))`
-/

namespace A061193.P14961915480779873665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133033 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌉

end

end A061193.P14961915480779873665

/-! ## A061193.P11794235051934349359

`A379865(A016027(n+1))`
-/

namespace A061193.P11794235051934349359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379865 (A016027 (n + 1)).toNat

end

end A061193.P11794235051934349359

/-! ## A061193.P11969842679866809508

`A034887(A133033(n+1))`
-/

namespace A061193.P11969842679866809508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A133033 (n + 1)).toNat

end

end A061193.P11969842679866809508

/-!
# A061194: Minimum positive value of lcm{1,...,n}*(s_1/1 + ... + s_n/n), where each s_i equals 1 or -1.

The programs for A061194, there is no canonical definition to state claims against.
-/

/-! ## A061194.P17450904072544006587

`or(A054845(n), A232111(A161953(n+1)))`
-/

namespace A061194.P17450904072544006587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054845 n) (A232111 (A161953 (n + 1)).toNat)

end

end A061194.P17450904072544006587

/-! ## A061194.P7174427405146536657

`or(A054845(n), A232111(A187829(n+1)))`
-/

namespace A061194.P7174427405146536657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054845 n) (A232111 (A187829 (n + 1)).toNat)

end

end A061194.P7174427405146536657

/-! ## A061194.P1579936847296980763

`or(A054845(n), A232111(A246337(n+1)))`
-/

namespace A061194.P1579936847296980763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054845 n) (A232111 (A246337 (n + 1)).toNat)

end

end A061194.P1579936847296980763

/-! ## A061194.P13505112972751897676

`A120263(n+1)*A232111(A161953(n+1))`
-/

namespace A061194.P13505112972751897676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1) * A232111 (A161953 (n + 1)).toNat

end

end A061194.P13505112972751897676

/-! ## A061194.P15929230148641405530

`A120263(n+1)*A232111(A187829(n+1))`
-/

namespace A061194.P15929230148641405530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1) * A232111 (A187829 (n + 1)).toNat

end

end A061194.P15929230148641405530

/-!
# A061196: If n = Sum_{i} c_i * 10^i then let b(n) = Sum_{i} c_i * (i+1). Order the integers by b(n) and then n.

The programs for A061196, there is no canonical definition to state claims against.
-/

/-! ## A061196.P5136301482482495481

`A054841(A334434(n))`
-/

namespace A061196.P5136301482482495481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A334434 n).toNat

end

end A061196.P5136301482482495481

/-! ## A061196.P4828479023164032048

`∑{e}[A227955(n), A178501(#)]`
-/

namespace A061196.P4828479023164032048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A178501 (Nat.factorization (f1 n).natAbs p)

end

end A061196.P4828479023164032048

/-! ## A061196.P3979045315200245235

`A081600(A060002(n))`
-/

namespace A061196.P3979045315200245235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 (A060002 n).toNat

end

end A061196.P3979045315200245235

/-!
# A061197: Table by antidiagonals T(n,k) of number of partitions of k where the largest part is less than or equal to n and where there are no more than two of any particular sized part.

The programs for A061197, there is no canonical definition to state claims against.
-/

/-! ## A061197.P937561281858383749

`A064547(4^A229707(n+1))`
-/

namespace A061197.P937561281858383749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A229707 (n + 1) : ℤ))).toNat

end

end A061197.P937561281858383749

/-! ## A061197.P10047950878434394073

`A086342((2*A229707(n+1)²)²)`
-/

namespace A061197.P10047950878434394073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 ((2 * A229707 (n + 1) ^ 2) ^ 2).toNat

end

end A061197.P10047950878434394073

/-! ## A061197.P2119895412924294910

`A001222(A127973(A229707(n+1)²))`
-/

namespace A061197.P2119895412924294910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127973 (A229707 (n + 1) ^ 2).toNat).toNat

end

end A061197.P2119895412924294910

/-! ## A061197.P8594538522311112570

`A000120(A113010(n)*A229707(n+1))`
-/

namespace A061197.P8594538522311112570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A113010 n * A229707 (n + 1)).toNat

end

end A061197.P8594538522311112570

/-! ## A061197.P10016786424619096629

`A086342(A229707(n+1)^A000119(n))`
-/

namespace A061197.P10016786424619096629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.roundAway ((A229707 (n + 1) : ℚ) ^ (A000119 n : ℤ))).toNat

end

end A061197.P10016786424619096629

/-!
# A061198: Square table by antidiagonals where T(n,k) is number of partitions of k where no part appears more than n times; also partitions of k where no parts are multiples of (n+1).

The programs for A061198, there is no canonical definition to state claims against.
-/

/-! ## A061198.P10540591445558228573

`A286653(∑[2*n]%comp[∑[n]])`
-/

namespace A061198.P10540591445558228573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A061198.P10540591445558228573

/-! ## A061198.P15511950111241730749

`A286653(∑[char[∑[n]]]²-(n+1))`
-/

namespace A061198.P15511950111241730749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A061198.P15511950111241730749

/-! ## A061198.P4926297132721750876

`A007318(C(2, n))*A286653(A061579(n))`
-/

namespace A061198.P4926297132721750876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A286653 (A061579 n).toNat

end

end A061198.P4926297132721750876

/-! ## A061198.P17988598086316479863

`∏{p}[n, A001221(#)]*A286653(A061579(n))`
-/

namespace A061198.P17988598086316479863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A286653 (A061579 n).toNat

end

end A061198.P17988598086316479863

/-! ## A061198.P15488358799467924422

`A286653(A061579(n))+A008683(8*n+4)`
-/

namespace A061198.P15488358799467924422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A061579 n).toNat + A008683 (8 * n + 4)

end

end A061198.P15488358799467924422

/-! ## A061198.P8706432866205157379

`A000108(C(2, 2*n))*A286653(A061579(n))`
-/

namespace A061198.P8706432866205157379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A286653 (A061579 n).toNat

end

end A061198.P8706432866205157379

/-! ## A061198.P332282437728931574

`A007318(and(3, 2-n))*A286653(A061579(n))`
-/

namespace A061198.P332282437728931574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A286653 (A061579 n).toNat

end

end A061198.P332282437728931574

/-! ## A061198.P3821537997691776247

`A014963(∑[n+1])*A286653(A061579(n))`
-/

namespace A061198.P3821537997691776247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A286653 (A061579 n).toNat

end

end A061198.P3821537997691776247

/-! ## A061198.P2967858235241149256

`A286653(A061579(n))^A014963(∑[n+3])`
-/

namespace A061198.P2967858235241149256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286653 (A061579 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A061198.P2967858235241149256

/-!
# A061199: Upper right triangle read by columns where T(n,k), with k >= n, is the number of partitions of k where no part appears more than n times; also partitions of k where no parts are multiples of (n+1).

The programs for A061199, there is no canonical definition to state claims against.
-/

/-! ## A061199.P9005052450701520672

`A061198(A245300(n))`
-/

namespace A061199.P9005052450701520672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 (A245300 n).toNat

end

end A061199.P9005052450701520672

/-! ## A061199.P8329941919815406513

`A286653(A245300(n)+A025581(n))`
-/

namespace A061199.P8329941919815406513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A245300 n + A025581 n).toNat

end

end A061199.P8329941919815406513

/-! ## A061199.P9880171143372421655

`A286653(A003056(n)+A000217(A051162(n)))`
-/

namespace A061199.P9880171143372421655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (A003056 n + A000217 (A051162 n).toNat).toNat

end

end A061199.P9880171143372421655

/-! ## A061199.P12880094622993026263

`A178487(A144832(n+1)*A309973(n))`
-/

namespace A061199.P12880094622993026263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A144832 (n + 1) * A309973 n).toNat

end

end A061199.P12880094622993026263

/-! ## A061199.P12348463779902577166

`A167439(A349776(n))`
-/

namespace A061199.P12348463779902577166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A349776 n).toNat

end

end A061199.P12348463779902577166

