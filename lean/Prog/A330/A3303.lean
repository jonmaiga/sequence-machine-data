import SequenceMachineLib
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
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A330300: a(n) is the number of subsets of {1..n} that contain exactly 2 odd and 3 even numbers.

The programs for A330300, the canonical program `A330300.P6216916394113474434` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330300 has offset 0).

The definition of A330300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330300.P13593083739284124849

`floor(n/2)*∑[A007531(floor(n/2))/6]`
-/

namespace A330300.P13593083739284124849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 2⌋ : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330300.P13593083739284124849

namespace A330300

/-- `floor(n/2)*∑[A007531(floor(n/2))/6]` -/
def P13593083739284124849.Spec : Prop :=
  ∀ n, P13593083739284124849.a n = (A330300 n : ℚ)

end A330300

/-! ## A330300.P719200094577452976

`A333320(or(1, n))+A333320(n)`
-/

namespace A330300.P719200094577452976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333320 (Nat.lor 1 n) + A333320 n

end

end A330300.P719200094577452976

namespace A330300

/-- `A333320(or(1, n))+A333320(n)` -/
def P719200094577452976.Spec : Prop :=
  ∀ n, P719200094577452976.a n = A330300 n

end A330300

/-! ## A330300.P6216916394113474434

`∑[C(A004526(n), 3)]*A004526(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A330300

/-- `∑[C(A004526(n), 3)]*A004526(n)` -/
def P6216916394113474434.Spec : Prop :=
  ∀ n, P6216916394113474434.a n = A330300 n

theorem P6216916394113474434.correct : P6216916394113474434.Spec := by
  intro n
  simp only [A330300]

end A330300

/-! ## A330300.P6962584749275359180

`∑[C(A123108(n), 3)]*A123108(n)`
-/

namespace A330300.P6962584749275359180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123108 n).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123108 n

end

end A330300.P6962584749275359180

namespace A330300

/-- `∑[C(A123108(n), 3)]*A123108(n)` -/
def P6962584749275359180.Spec : Prop :=
  ∀ n, P6962584749275359180.a n = A330300 n

end A330300

/-! ## A330300.P2083564628474667403

`A028725(n+2)-∑[A028724(n)]`
-/

namespace A330300.P2083564628474667403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028725 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330300.P2083564628474667403

namespace A330300

/-- `A028725(n+2)-∑[A028724(n)]` -/
def P2083564628474667403.Spec : Prop :=
  ∀ n, P2083564628474667403.a n = A330300 n

end A330300

/-!
# A330301: Number of chains of binary reflexive matrices of order n.

The programs for A330301, there is no canonical definition to state claims against.
-/

/-! ## A330301.P2827098007662650972

`A007047(n²-n)`
-/

namespace A330301.P2827098007662650972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007047 (n ^ 2 - n)

end

end A330301.P2827098007662650972

/-! ## A330301.P1903444625609231136

`2*A329911(n)-1`
-/

namespace A330301.P1903444625609231136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329911 n - 1

end

end A330301.P1903444625609231136

/-! ## A330301.P11645888639563050010

`2*A000629(n²-n)-1`
-/

namespace A330301.P11645888639563050010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000629 (n ^ 2 - n) - 1

end

end A330301.P11645888639563050010

/-!
# A330302: Number of chains of 2-element subsets of {0,1, 2, ..., n} that contain no consecutive integers.

The programs for A330302, there is no canonical definition to state claims against.
-/

/-! ## A330302.P17966027579111757510

`A007047((n²-n)/2)`
-/

namespace A330302.P17966027579111757510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007047 (SequenceMachineLib.roundAway (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2)).toNat

end

end A330302.P17966027579111757510

/-! ## A330302.P717922040542020403

`or(1, A007047(∑[n]-n))`
-/

namespace A330302.P717922040542020403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007047 (∑ j ∈ Finset.range (n + 1), f1 j - n))

end

end A330302.P717922040542020403

/-! ## A330302.P10602874910653409057

`2*A002050(C(n, 2))+1`
-/

namespace A330302.P10602874910653409057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002050 (Nat.choose n 2) + 1

end

end A330302.P10602874910653409057

/-! ## A330302.P3996934435267179340

`2*A000629(C(n, 2))-1`
-/

namespace A330302.P3996934435267179340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000629 (Nat.choose n 2) - 1

end

end A330302.P3996934435267179340

/-! ## A330302.P8380310821157614024

`gcd(A007047(A161680(n)), A088155(n))`
-/

namespace A330302.P8380310821157614024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007047 (A161680 n).toNat) (A088155 n)

end

end A330302.P8380310821157614024

/-!
# A330306: a(n) = floor(1/2 + {Pi^n}), where { } denotes fractional part.

The programs for A330306, there is no canonical definition to state claims against.
-/

/-! ## A330306.P16516544811050174698

`round(acot(A138324(n+1)))`
-/

namespace A330306.P16516544811050174698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A138324 (n + 1) : ℝ))

end

end A330306.P16516544811050174698

/-! ## A330306.P13604419773916193332

`A000007(A138324(n+1)-1)`
-/

namespace A330306.P13604419773916193332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A138324 (n + 1) - 1).toNat

end

end A330306.P13604419773916193332

/-! ## A330306.P13329797019046086708

`A010051(2*A138324(n+1))`
-/

namespace A330306.P13329797019046086708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A138324 (n + 1)).toNat

end

end A330306.P13329797019046086708

/-! ## A330306.P6958888750386057460

`A000007(xor(1, A138324(n+1)))`
-/

namespace A330306.P6958888750386057460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A138324 (n + 1))).toNat

end

end A330306.P6958888750386057460

/-! ## A330306.P10198833507459362492

`∑{d}[A138324(n+1), A008683(#)]`
-/

namespace A330306.P10198833507459362492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A330306.P10198833507459362492

/-! ## A330306.P16940676917422821508

`A001222(ceil(2/A138324(n+1)))`
-/

namespace A330306.P16940676917422821508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈2 / (A138324 (n + 1) : ℚ)⌉.toNat

end

end A330306.P16940676917422821508

/-! ## A330306.P1009578187801470080

`and(1, A000010(A138324(n+1)+1))`
-/

namespace A330306.P1009578187801470080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A138324 (n + 1) + 1).toNat)

end

end A330306.P1009578187801470080

/-! ## A330306.P17190508539229645040

`round(1/A040976(A138324(n+1)+1))`
-/

namespace A330306.P17190508539229645040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A040976 (A138324 (n + 1) + 1).toNat : ℚ))

end

end A330306.P17190508539229645040

/-! ## A330306.P9036905919240816335

`C(A001222(A138324(n+1)+1), A138324(n+1))`
-/

namespace A330306.P9036905919240816335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A138324 (n + 1) + 1).toNat).toNat (A138324 (n + 1)).toNat

end

end A330306.P9036905919240816335

/-! ## A330306.P16797074969370943989

`round(1/A258037(A138324(n+1)+1))`
-/

namespace A330306.P16797074969370943989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A258037 (A138324 (n + 1) + 1).toNat : ℚ))

end

end A330306.P16797074969370943989

/-! ## A330306.P3189367066026353261

`C(A001222(A138305(n+2)), A138324(n+1))`
-/

namespace A330306.P3189367066026353261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A138305 (n + 2)).toNat).toNat (A138324 (n + 1)).toNat

end

end A330306.P3189367066026353261

/-! ## A330306.P11242866415558900534

`A008683(A138324(n+1)²)`
-/

namespace A330306.P11242866415558900534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A138324 (n + 1) ^ 2).toNat

end

end A330306.P11242866415558900534

/-! ## A330306.P10853338342328017013

`A008966(A138324(n+1)²)`
-/

namespace A330306.P10853338342328017013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A138324 (n + 1) ^ 2).toNat

end

end A330306.P10853338342328017013

/-! ## A330306.P10409957616941503097

`A323402(A138324(n+1)²)`
-/

namespace A330306.P10409957616941503097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (A138324 (n + 1) ^ 2).toNat

end

end A330306.P10409957616941503097

/-! ## A330306.P14431266417215675106

`and(1, A000010(A138324(n+1)²))`
-/

namespace A330306.P14431266417215675106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A138324 (n + 1) ^ 2).toNat)

end

end A330306.P14431266417215675106

/-! ## A330306.P6724838948152751296

`C(2, A001222(A138324(n+1)²)²)`
-/

namespace A330306.P6724838948152751296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001222 (A138324 (n + 1) ^ 2).toNat ^ 2).toNat

end

end A330306.P6724838948152751296

/-! ## A330306.P14356576179091345582

`A010051(A138324(n+1)+A138324(n+1)²)`
-/

namespace A330306.P14356576179091345582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A138324 (n + 1) + A138324 (n + 1) ^ 2).toNat

end

end A330306.P14356576179091345582

/-! ## A330306.P8644987561197904264

`A002160(n+1)-A001672(n+1)`
-/

namespace A330306.P8644987561197904264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002160 (n + 1) - A001672 (n + 1)

end

end A330306.P8644987561197904264

/-! ## A330306.P17687693415018415740

`floor(2*π^(n+1))%2`
-/

namespace A330306.P17687693415018415740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.pi ^ (n + 1)⌋ 2

end

end A330306.P17687693415018415740

/-! ## A330306.P11039737549576029189

`and(1, floor(2*π^(n+1)))`
-/

namespace A330306.P11039737549576029189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊2 * Real.pi ^ (n + 1)⌋

end

end A330306.P11039737549576029189

/-!
# A330312: Gaps between palindromes in base 3: first differences of A014190.

The programs for A330312, there is no canonical definition to state claims against.
-/

/-! ## A330312.P17835825561513348442

`Δ[A014190(n+1)]`
-/

namespace A330312.P17835825561513348442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330312.P17835825561513348442

/-! ## A330312.P11798285652823774890

`A014190(n+2)-A014190(n+1)`
-/

namespace A330312.P11798285652823774890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 2) - A014190 (n + 1)

end

end A330312.P11798285652823774890

/-! ## A330312.P1735458770787070507

`abs(Δ[A014190(A008619(2*n))])`
-/

namespace A330312.P1735458770787070507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330312.P1735458770787070507

/-! ## A330312.P16469716839700715306

`abs(Δ[A014190(A029579(2*n))])`
-/

namespace A330312.P16469716839700715306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330312.P16469716839700715306

/-! ## A330312.P17921072993706127658

`abs(Δ[A014190(A110514(2*n))])`
-/

namespace A330312.P17921072993706127658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330312.P17921072993706127658

/-! ## A330312.P10858246518562687107

`abs(Δ[A014190(A008621(4*n))])`
-/

namespace A330312.P10858246518562687107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (A008621 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A330312.P10858246518562687107

/-! ## A330312.P6776817285057633812

`Δ[eq[A117966(n), A327252(n)]]`
-/

namespace A330312.P6776817285057633812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A330312.P6776817285057633812

/-! ## A330312.P5863507045006358862

`Δ[record[A265511(n)]]`
-/

namespace A330312.P5863507045006358862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330312.P5863507045006358862

/-! ## A330312.P5294175589900265364

`Δ[eq[n, A030102(n)]]`
-/

namespace A330312.P5294175589900265364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A330312.P5294175589900265364

/-! ## A330312.P3298176672999133468

`record[A265511(n+1)]-record[A265511(n)]`
-/

namespace A330312.P3298176672999133468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A330312.P3298176672999133468

/-! ## A330312.P15539610062205744628

`Δ[lt[A338828(n), 1]]`
-/

namespace A330312.P15539610062205744628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338828 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A330312.P15539610062205744628

/-!
# A330314: Running totals in A330313.

The programs for A330314, there is no canonical definition to state claims against.
-/

/-! ## A330314.P2066271930431845649

`abs(∑[A038608(A330313(n+1))])`
-/

namespace A330314.P2066271930431845649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A330314.P2066271930431845649

/-! ## A330314.P11025935947595331153

`-∑[A038608(A330313(n+1))]%A016898(n)`
-/

namespace A330314.P11025935947595331153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(∑ j ∈ Finset.range (n + 1), f1 j)) (A016898 n)

end

end A330314.P11025935947595331153

/-! ## A330314.P13964138126030080690

`A000007(n+1)-∑[A038608(A330313(n+1))]`
-/

namespace A330314.P13964138126030080690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330314.P13964138126030080690

/-! ## A330314.P14228455545895177812

`(-∑[A038608(A330313(n+1))])^A062157(n)²`
-/

namespace A330314.P14228455545895177812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-(∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A330314.P14228455545895177812

/-! ## A330314.P14370484896368953305

`A036987(2*(n+1))-∑[A038608(A330313(n+1))]`
-/

namespace A330314.P14370484896368953305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330314.P14370484896368953305

/-! ## A330314.P4846921021885966996

`(-∑[A038608(A330313(n+1))])^A034947(n+1)²`
-/

namespace A330314.P4846921021885966996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-(∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) ^ (A034947 (n + 1) ^ 2 : ℤ)

end

end A330314.P4846921021885966996

/-! ## A330314.P10489873178106214039

`(-∑[A038608(A330313(n+1))])^A056594(2*n)²`
-/

namespace A330314.P10489873178106214039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330313 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-(∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) ^ (A056594 (2 * n) ^ 2 : ℤ)

end

end A330314.P10489873178106214039

/-! ## A330314.P2116240355222249498

`∑[A329116(A330313(n+1)²)]`
-/

namespace A330314.P2116240355222249498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (A330313 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330314.P2116240355222249498

/-! ## A330314.P14637257339850181061

`∑[A329116(A330313(n+1)*A330313(n+1))]`
-/

namespace A330314.P14637257339850181061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (A330313 (n + 1) * A330313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330314.P14637257339850181061

/-!
# A330315: a(n) = r(n)*r(n+1), where r(n) = A004018(n) is the number of ways of writing n as a sum of two squares.

The programs for A330315, there is no canonical definition to state claims against.
-/

/-! ## A330315.P2491509774157458701

`Δ[A014198(n)]*A004018(n)`
-/

namespace A330315.P2491509774157458701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004018 n

end

end A330315.P2491509774157458701

/-! ## A330315.P13615643258321858796

`A004018(n+1)*A004018(n)`
-/

namespace A330315.P13615643258321858796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n + 1) * A004018 n

end

end A330315.P13615643258321858796

/-! ## A330315.P17032352104732766582

`abs(A104794(n+1)*A104794(n))`
-/

namespace A330315.P17032352104732766582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 (n + 1) * A104794 n|

end

end A330315.P17032352104732766582

/-! ## A330315.P6865166211411995508

`Δ[A057655(n)]*A004018(n)`
-/

namespace A330315.P6865166211411995508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004018 n

end

end A330315.P6865166211411995508

/-! ## A330315.P14324619681902131106

`lcm(2, A104794(2*n)*A104794(n+1))`
-/

namespace A330315.P14324619681902131106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A104794 (2 * n) * A104794 (n + 1))

end

end A330315.P14324619681902131106

/-! ## A330315.P11055178973514858932

`A104794(2*n)*A104794(n+1)*A033999(n+1)`
-/

namespace A330315.P11055178973514858932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n) * A104794 (n + 1) * A033999 (n + 1)

end

end A330315.P11055178973514858932

/-! ## A330315.P12093684770228272623

`A104794(2*n)*A104794(n+1)*A309873(n+2)`
-/

namespace A330315.P12093684770228272623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * n) * A104794 (n + 1) * A309873 (n + 2)

end

end A330315.P12093684770228272623

/-! ## A330315.P8343148996354495276

`gcd(A104794(2*n)*A104794(n+1), A000038(n+1))`
-/

namespace A330315.P8343148996354495276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104794 (2 * n) * A104794 (n + 1)) (A000038 (n + 1))

end

end A330315.P8343148996354495276

/-! ## A330315.P14998547079662103310

`A104794(2*(n+1))*A104794(2*n)`
-/

namespace A330315.P14998547079662103310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 * (n + 1)) * A104794 (2 * n)

end

end A330315.P14998547079662103310

/-! ## A330315.P3014484727929954264

`4*A258228(2*n)*A258228(n+1)`
-/

namespace A330315.P3014484727929954264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A258228 (2 * n) * A258228 (n + 1)

end

end A330315.P3014484727929954264

/-! ## A330315.P3844637046841033796

`A004531(4*n)*A004531(A008586(n+1))`
-/

namespace A330315.P3844637046841033796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n) * A004531 (A008586 (n + 1)).toNat

end

end A330315.P3844637046841033796

/-! ## A330315.P1254057625922565968

`A004531(4*n)*A004531(A109045(n+1))`
-/

namespace A330315.P1254057625922565968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n) * A004531 (A109045 (n + 1)).toNat

end

end A330315.P1254057625922565968

/-! ## A330315.P12981514408604078942

`A004531(4*n)*A004531(A008598(n+1))`
-/

namespace A330315.P12981514408604078942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (4 * n) * A004531 (A008598 (n + 1)).toNat

end

end A330315.P12981514408604078942

/-! ## A330315.P4072495077228695792

`4*A004018(∑[n])`
-/

namespace A330315.P4072495077228695792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330315.P4072495077228695792

/-! ## A330315.P12872423848234144795

`A008586(A004018(∑[n]))`
-/

namespace A330315.P12872423848234144795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A004018 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330315.P12872423848234144795

/-! ## A330315.P12063024837936692627

`2*2*A004018(A000217(n))`
-/

namespace A330315.P12063024837936692627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A004018 (A000217 n).toNat)

end

end A330315.P12063024837936692627

/-! ## A330315.P14882494955240914296

`A005843(A005843(A004018(A000217(n))))`
-/

namespace A330315.P14882494955240914296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 (A004018 (A000217 n).toNat).toNat).toNat

end

end A330315.P14882494955240914296

/-! ## A330315.P4779096163487878166

`4*A330316(n)`
-/

namespace A330315.P4779096163487878166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A330316 n

end

end A330315.P4779096163487878166

/-! ## A330315.P8308615222860103618

`A008586(A330316(n))`
-/

namespace A330315.P8308615222860103618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A330316 n).toNat

end

end A330315.P8308615222860103618

/-!
# A330316: a(n) = r(n)*r(n+1)/4, where r(n) = A004018(n) is the number of ways of writing n as a sum of two squares.

The programs for A330316, there is no canonical definition to state claims against.
-/

/-! ## A330316.P8607088878776261769

`A004018(∑[n])`
-/

namespace A330316.P8607088878776261769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330316.P8607088878776261769

/-! ## A330316.P12683279862327647690

`A330315(n)/4`
-/

namespace A330316.P12683279862327647690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330315 n : ℚ) / 4

end

end A330316.P12683279862327647690

/-! ## A330316.P11260134856593396170

`abs(A104794(∑[n]))`
-/

namespace A330316.P11260134856593396170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A330316.P11260134856593396170

/-! ## A330316.P1624018019867532552

`A104794(lcm(2, ∑[n]))`
-/

namespace A330316.P1624018019867532552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A330316.P1624018019867532552

/-! ## A330316.P12394980105411187959

`A004018(C(n+1, 2))%26`
-/

namespace A330316.P12394980105411187959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004018 (Nat.choose (n + 1) 2)) 26

end

end A330316.P12394980105411187959

/-! ## A330316.P17170449641240637603

`A104794((and(1, n)+1)*∑[n])`
-/

namespace A330316.P17170449641240637603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 ((Nat.land 1 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A330316.P17170449641240637603

/-! ## A330316.P17915734215816246152

`A004018((n²+n)/2)%41`
-/

namespace A330316.P17915734215816246152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004018 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) 41

end

end A330316.P17915734215816246152

/-! ## A330316.P16812383902547817471

`A104794(2^and(1, n)*∑[n])`
-/

namespace A330316.P16812383902547817471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (2 ^ Nat.land 1 n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A330316.P16812383902547817471

/-! ## A330316.P5037857120655044272

`A002265(A330315(n))`
-/

namespace A330316.P5037857120655044272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A330315 n).toNat

end

end A330316.P5037857120655044272

/-! ## A330316.P6108462064257790348

`A104794(A109043(∑[n]))`
-/

namespace A330316.P6108462064257790348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (A109043 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330316.P6108462064257790348

/-! ## A330316.P15763162673859426621

`A002654(n+1)*A004018(n)`
-/

namespace A330316.P15763162673859426621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A004018 n

end

end A330316.P15763162673859426621

/-! ## A330316.P6065407905121725884

`A004531(n)*A035184(n+1)`
-/

namespace A330316.P6065407905121725884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A035184 (n + 1)

end

end A330316.P6065407905121725884

/-! ## A330316.P15606758716017542963

`A004531(n)*A134013(n+1)`
-/

namespace A330316.P15606758716017542963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n * A134013 (n + 1)

end

end A330316.P15606758716017542963

/-! ## A330316.P10869247853902219501

`A104794(n)*A113652(n+1)`
-/

namespace A330316.P10869247853902219501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n * A113652 (n + 1)

end

end A330316.P10869247853902219501

/-! ## A330316.P11558964924173747194

`A112301(n+1)*A134014(n)`
-/

namespace A330316.P11558964924173747194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112301 (n + 1) * A134014 n

end

end A330316.P11558964924173747194

/-! ## A330316.P6318513512888812493

`A258228(n+1)*A258292(n)`
-/

namespace A330316.P6318513512888812493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (n + 1) * A258292 n

end

end A330316.P6318513512888812493

/-! ## A330316.P17191241647506664605

`abs(A134013(n+1)*A134014(n))`
-/

namespace A330316.P17191241647506664605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134013 (n + 1) * A134014 n|

end

end A330316.P17191241647506664605

/-! ## A330316.P15683877838680217295

`A002654(n+1)*A104794(2*n)`
-/

namespace A330316.P15683877838680217295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A104794 (2 * n)

end

end A330316.P15683877838680217295

/-! ## A330316.P11919049184198490752

`A258210(2*n)*A258228(n+1)`
-/

namespace A330316.P11919049184198490752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258210 (2 * n) * A258228 (n + 1)

end

end A330316.P11919049184198490752

/-! ## A330316.P5070051315202084555

`A258228(2*n)*A258228(n+1)`
-/

namespace A330316.P5070051315202084555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (2 * n) * A258228 (n + 1)

end

end A330316.P5070051315202084555

/-!
# A330317: a(n) = Sum_{i=0..n} r(i)*r(i+1), where r(n) = A004018(n) is the number of ways of writing n as a sum of two squares.

The programs for A330317, there is no canonical definition to state claims against.
-/

/-! ## A330317.P5717578215325796792

`∑[A330315(n)]`
-/

namespace A330317.P5717578215325796792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P5717578215325796792

/-! ## A330317.P17510505043334922994

`∑[4*A330316(n)]`
-/

namespace A330317.P17510505043334922994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A330316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P17510505043334922994

/-! ## A330317.P16913021875191567450

`∑[4*A004018(∑[n])]`
-/

namespace A330317.P16913021875191567450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004018 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P16913021875191567450

/-! ## A330317.P17637201915784485849

`∑[abs(4*A104794(∑[n]))]`
-/

namespace A330317.P17637201915784485849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A104794 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P17637201915784485849

/-! ## A330317.P9150992804104752840

`∑[4*A104794(∑[2*n])]`
-/

namespace A330317.P9150992804104752840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A104794 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P9150992804104752840

/-! ## A330317.P9393024602882625641

`∑[4*A256014(∑[2*n])]`
-/

namespace A330317.P9393024602882625641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P9393024602882625641

/-! ## A330317.P9097024183078876720

`∑[4*A256280(∑[2*n])]`
-/

namespace A330317.P9097024183078876720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A256280 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P9097024183078876720

/-! ## A330317.P11027138624390086140

`∑[4*A004531(∑[4*n])]`
-/

namespace A330317.P11027138624390086140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004531 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P11027138624390086140

/-! ## A330317.P4892408279436514429

`∑[4*A134014(∑[4*n])]`
-/

namespace A330317.P4892408279436514429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A134014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330317.P4892408279436514429

/-! ## A330317.P8021307924709403689

`lcm(4, ∑[A004018(C(n+1, 2))])`
-/

namespace A330317.P8021307924709403689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (Nat.choose (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330317.P8021307924709403689

/-!
# A330318: a(n) = Sum_{i=0..n} r(i)*r(i+1)/4, where r(n) = A004018(n) is the number of ways of writing n as a sum of two squares.

The programs for A330318, there is no canonical definition to state claims against.
-/

/-! ## A330318.P9524316786017944807

`∑[A330316(n)]`
-/

namespace A330318.P9524316786017944807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P9524316786017944807

/-! ## A330318.P218033561514837389

`A330317(n)/4`
-/

namespace A330318.P218033561514837389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330317 n : ℚ) / 4

end

end A330318.P218033561514837389

/-! ## A330318.P6651111266189176062

`∑[A004018(∑[n])]`
-/

namespace A330318.P6651111266189176062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P6651111266189176062

/-! ## A330318.P7794615982617636123

`∑[A330315(n)/4]`
-/

namespace A330318.P7794615982617636123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330315 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P7794615982617636123

/-! ## A330318.P9314846554134548926

`∑[abs(A104794(∑[n]))]`
-/

namespace A330318.P9314846554134548926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P9314846554134548926

/-! ## A330318.P1029042453480537286

`∑[A104794(∑[2*n])]`
-/

namespace A330318.P1029042453480537286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P1029042453480537286

/-! ## A330318.P917171212796459150

`∑[A256014(∑[2*n])]`
-/

namespace A330318.P917171212796459150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P917171212796459150

/-! ## A330318.P17734784446222493556

`∑[A256280(∑[2*n])]`
-/

namespace A330318.P17734784446222493556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256280 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P17734784446222493556

/-! ## A330318.P10200522932887188518

`∑[A004531(∑[4*n])]`
-/

namespace A330318.P10200522932887188518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P10200522932887188518

/-! ## A330318.P6028204564885056700

`∑[A134014(∑[4*n])]`
-/

namespace A330318.P6028204564885056700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330318.P6028204564885056700

/-!
# A330319: a(n) = Sum_{i=1..n} phi(i)*phi(i+1), where phi(n) = A000010(n) is Euler's totient function.

The programs for A330319, the canonical program `A330319.P9551825162349702017` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330319 has offset 1).

The definition of A330319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330319.P17702114644614213364

`∑[A083542(n+1)]`
-/

namespace A330319.P17702114644614213364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P17702114644614213364

namespace A330319

/-- `∑[A083542(n+1)]` -/
def P17702114644614213364.Spec : Prop :=
  ∀ n, P17702114644614213364.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P13626184567044414178

`∑[Δ[A005728(n)]*A000010(n+2)]`
-/

namespace A330319.P13626184567044414178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P13626184567044414178

namespace A330319

/-- `∑[Δ[A005728(n)]*A000010(n+2)]` -/
def P13626184567044414178.Spec : Prop :=
  ∀ n, P13626184567044414178.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P13578027451642388454

`∑[A058515(n+1)*A066813(n+1)]`
-/

namespace A330319.P13578027451642388454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058515 (n + 1) * A066813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P13578027451642388454

namespace A330319

/-- `∑[A058515(n+1)*A066813(n+1)]` -/
def P13578027451642388454.Spec : Prop :=
  ∀ n, P13578027451642388454.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P4962920309338649016

`∑[A000010(n+1)*A000010(n+2)]`
-/

namespace A330319.P4962920309338649016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P4962920309338649016

namespace A330319

/-- `∑[A000010(n+1)*A000010(n+2)]` -/
def P4962920309338649016.Spec : Prop :=
  ∀ n, P4962920309338649016.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P17608045069465772827

`∑[(A109606(n+1)+1)*(A039649(n+2)-1)]`
-/

namespace A330319.P17608045069465772827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * (A039649 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P17608045069465772827

namespace A330319

/-- `∑[(A109606(n+1)+1)*(A039649(n+2)-1)]` -/
def P17608045069465772827.Spec : Prop :=
  ∀ n, P17608045069465772827.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P5033793354213243367

`∑[(A039649(n+1)-1)*A349137(2*n+3)]`
-/

namespace A330319.P5033793354213243367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A349137 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P5033793354213243367

namespace A330319

/-- `∑[(A039649(n+1)-1)*A349137(2*n+3)]` -/
def P5033793354213243367.Spec : Prop :=
  ∀ n, P5033793354213243367.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P837921848741555789

`∑[ceil(A140434(n+1)/2)*A349137(2*n+3)]`
-/

namespace A330319.P837921848741555789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A140434 (n + 1) : ℚ) / 2⌉ * A349137 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P837921848741555789

namespace A330319

/-- `∑[ceil(A140434(n+1)/2)*A349137(2*n+3)]` -/
def P837921848741555789.Spec : Prop :=
  ∀ n, P837921848741555789.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P3980027168100402964

`∑[(1-A051953(n+1)+n)*A349137(2*n+3)]`
-/

namespace A330319.P3980027168100402964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ)) * A349137 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P3980027168100402964

namespace A330319

/-- `∑[(1-A051953(n+1)+n)*A349137(2*n+3)]` -/
def P3980027168100402964.Spec : Prop :=
  ∀ n, P3980027168100402964.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P9551825162349702017

`∑[A055034(2*(n+1))*A055034(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A330319

/-- `∑[A055034(2*(n+1))*A055034(n+2)]` -/
def P9551825162349702017.Spec : Prop :=
  ∀ n, P9551825162349702017.a n = A330319 (n + 1)

theorem P9551825162349702017.correct : P9551825162349702017.Spec := by
  intro n
  simp only [A330319, Nat.add_sub_cancel]

end A330319

/-! ## A330319.P11590173948573458795

`∑[A062570(∑[n+1])]`
-/

namespace A330319.P11590173948573458795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P11590173948573458795

namespace A330319

/-- `∑[A062570(∑[n+1])]` -/
def P11590173948573458795.Spec : Prop :=
  ∀ n, P11590173948573458795.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P6440009111625577037

`∑[A000010(∑[2*(n+1)])]`
-/

namespace A330319.P6440009111625577037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P6440009111625577037

namespace A330319

/-- `∑[A000010(∑[2*(n+1)])]` -/
def P6440009111625577037.Spec : Prop :=
  ∀ n, P6440009111625577037.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P17303614031187139031

`or(1, ∑[A000010((n+1)²+n+1)])`
-/

namespace A330319.P17303614031187139031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330319.P17303614031187139031

namespace A330319

/-- `or(1, ∑[A000010((n+1)²+n+1)])` -/
def P17303614031187139031.Spec : Prop :=
  ∀ n, P17303614031187139031.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P16450761619179389442

`A000010(∑[n+2+n])+a(n-1)` with `a(0)=1`
-/

namespace A330319.P16450761619179389442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A330319.P16450761619179389442

namespace A330319

/-- `A000010(∑[n+2+n])+a(n-1)` -/
def P16450761619179389442.Spec : Prop :=
  ∀ n, P16450761619179389442.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P10460645358322346394

`∑[A000010(lcm(n+2, n+1))+1]-(n+1)`
-/

namespace A330319.P10460645358322346394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lcm (n + 2) (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A330319.P10460645358322346394

namespace A330319

/-- `∑[A000010(lcm(n+2, n+1))+1]-(n+1)` -/
def P10460645358322346394.Spec : Prop :=
  ∀ n, P10460645358322346394.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P5222385509925035138

`floor(A000010((n+2)*(n+1))+a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A330319.P5222385509925035138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 ((n + 2) * (n + 1)) + a (n - 1)

end

end A330319.P5222385509925035138

namespace A330319

/-- `floor(A000010((n+2)*(n+1))+a(n-1))` -/
def P5222385509925035138.Spec : Prop :=
  ∀ n, P5222385509925035138.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P1151753032349449906

`∑[A000010(A002378(n+1))%A202018(n)]`
-/

namespace A330319.P1151753032349449906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A002378 (n + 1)).toNat) (A202018 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P1151753032349449906

namespace A330319

/-- `∑[A000010(A002378(n+1))%A202018(n)]` -/
def P1151753032349449906.Spec : Prop :=
  ∀ n, P1151753032349449906.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P1349336545821215663

`∑[A000010(A257942(n))%A074378(n+1)]`
-/

namespace A330319.P1349336545821215663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A257942 n).toNat) (A074378 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P1349336545821215663

namespace A330319

/-- `∑[A000010(A257942(n))%A074378(n+1)]` -/
def P1349336545821215663.Spec : Prop :=
  ∀ n, P1349336545821215663.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P9585306664627775905

`∑[A300721(∑[A008574(n+1)])]`
-/

namespace A330319.P9585306664627775905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P9585306664627775905

namespace A330319

/-- `∑[A300721(∑[A008574(n+1)])]` -/
def P9585306664627775905.Spec : Prop :=
  ∀ n, P9585306664627775905.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P3665700298861004084

`∑[(A039649(n+1)-1)*A282634(A000124(n+1))]`
-/

namespace A330319.P3665700298861004084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A282634 (A000124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P3665700298861004084

namespace A330319

/-- `∑[(A039649(n+1)-1)*A282634(A000124(n+1))]` -/
def P3665700298861004084.Spec : Prop :=
  ∀ n, P3665700298861004084.a n = A330319 (n + 1)

end A330319

/-! ## A330319.P7659300129258658259

`∑[A143230(∑[n+2])]`
-/

namespace A330319.P7659300129258658259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143230 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330319.P7659300129258658259

namespace A330319

/-- `∑[A143230(∑[n+2])]` -/
def P7659300129258658259.Spec : Prop :=
  ∀ n, P7659300129258658259.a n = A330319 (n + 1)

end A330319

/-!
# A330320: a(n) = Sum_{i=1..n} tau(i)*tau(i+1), where tau(n) = A000005(n) is the number of divisors of n.

The programs for A330320, the canonical program `A330320.P16120986544821140952` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330320 has offset 1).

The definition of A330320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330320.P14447466032402720047

`∑[A092517(n+1)]`
-/

namespace A330320.P14447466032402720047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P14447466032402720047

namespace A330320

/-- `∑[A092517(n+1)]` -/
def P14447466032402720047.Spec : Prop :=
  ∀ n, P14447466032402720047.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P14240009221968431206

`2*A330321(n+1)`
-/

namespace A330320.P14240009221968431206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330321 (n + 1)

end

end A330320.P14240009221968431206

namespace A330320

/-- `2*A330321(n+1)` -/
def P14240009221968431206.Spec : Prop :=
  ∀ n, P14240009221968431206.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P6729031673983467043

`∑[2*A063123(n+1)]`
-/

namespace A330320.P6729031673983467043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P6729031673983467043

namespace A330320

/-- `∑[2*A063123(n+1)]` -/
def P6729031673983467043.Spec : Prop :=
  ∀ n, P6729031673983467043.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P13469516923122028524

`∑[A005843(A063123(n+1))]`
-/

namespace A330320.P13469516923122028524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A063123 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P13469516923122028524

namespace A330320

/-- `∑[A005843(A063123(n+1))]` -/
def P13469516923122028524.Spec : Prop :=
  ∀ n, P13469516923122028524.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P16008893752979710363

`∑[Δ[A006218(n)]*A000005(n+2)]`
-/

namespace A330320.P16008893752979710363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16008893752979710363

namespace A330320

/-- `∑[Δ[A006218(n)]*A000005(n+2)]` -/
def P16008893752979710363.Spec : Prop :=
  ∀ n, P16008893752979710363.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P9924151853208977460

`∑[Δ[A054519(n)]*A000005(n+2)]`
-/

namespace A330320.P9924151853208977460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P9924151853208977460

namespace A330320

/-- `∑[Δ[A054519(n)]*A000005(n+2)]` -/
def P9924151853208977460.Spec : Prop :=
  ∀ n, P9924151853208977460.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P8167865013282706990

`∑[A133948(n+1)+A133947(n+1)]`
-/

namespace A330320.P8167865013282706990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133948 (n + 1) + A133947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P8167865013282706990

namespace A330320

/-- `∑[A133948(n+1)+A133947(n+1)]` -/
def P8167865013282706990.Spec : Prop :=
  ∀ n, P8167865013282706990.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P2010392123436790377

`∑[A000005(n+1)*A000005(n+2)]`
-/

namespace A330320.P2010392123436790377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P2010392123436790377

namespace A330320

/-- `∑[A000005(n+1)*A000005(n+2)]` -/
def P2010392123436790377.Spec : Prop :=
  ∀ n, P2010392123436790377.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P13573259644020686157

`A330321(n+1)+A330321(n+2)-A063123(n+2)`
-/

namespace A330320.P13573259644020686157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330321 (n + 1) + (A330321 (n + 2) - A063123 (n + 2))

end

end A330320.P13573259644020686157

namespace A330320

/-- `A330321(n+1)+A330321(n+2)-A063123(n+2)` -/
def P13573259644020686157.Spec : Prop :=
  ∀ n, P13573259644020686157.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P11281673280162764070

`A330321(n+2)+A330321(n+2)-A092517(n+2)`
-/

namespace A330320.P11281673280162764070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330321 (n + 2) + (A330321 (n + 2) - A092517 (n + 2))

end

end A330320.P11281673280162764070

namespace A330320

/-- `A330321(n+2)+A330321(n+2)-A092517(n+2)` -/
def P11281673280162764070.Spec : Prop :=
  ∀ n, P11281673280162764070.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P16120986544821140952

`∑[A229949(2*(n+1))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330320

/-- `∑[A229949(2*(n+1))]` -/
def P16120986544821140952.Spec : Prop :=
  ∀ n, P16120986544821140952.a n = A330320 (n + 1)

theorem P16120986544821140952.correct : P16120986544821140952.Spec := by
  intro n
  simp only [A330320, Nat.add_sub_cancel]

end A330320

/-! ## A330320.P18127664639663984960

`∑[∏{e}[∑[2*(n+1)], #+1]]`
-/

namespace A330320.P18127664639663984960
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P18127664639663984960

namespace A330320

/-- `∑[∏{e}[∑[2*(n+1)], #+1]]` -/
def P18127664639663984960.Spec : Prop :=
  ∀ n, (P18127664639663984960.a n : ℤ) = A330320 (n + 1)

end A330320

/-! ## A330320.P14447125428913529181

`A004277(A330321(n+1))`
-/

namespace A330320.P14447125428913529181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A330321 (n + 1)).toNat

end

end A330320.P14447125428913529181

namespace A330320

/-- `A004277(A330321(n+1))` -/
def P14447125428913529181.Spec : Prop :=
  ∀ n, P14447125428913529181.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P16127880919617263833

`∑[A000005(A278256(n+1))]`
-/

namespace A330320.P16127880919617263833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16127880919617263833

namespace A330320

/-- `∑[A000005(A278256(n+1))]` -/
def P16127880919617263833.Spec : Prop :=
  ∀ n, P16127880919617263833.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P8055432452219523633

`∑[A099777(∑[n+1])]`
-/

namespace A330320.P8055432452219523633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P8055432452219523633

namespace A330320

/-- `∑[A099777(∑[n+1])]` -/
def P8055432452219523633.Spec : Prop :=
  ∀ n, P8055432452219523633.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P16652778682942194083

`∑[A000005(∑[2*(n+1)])]`
-/

namespace A330320.P16652778682942194083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16652778682942194083

namespace A330320

/-- `∑[A000005(∑[2*(n+1)])]` -/
def P16652778682942194083.Spec : Prop :=
  ∀ n, P16652778682942194083.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P10535460084817211108

`∑[lcm(2, A000005((n+1)²+n+1))]`
-/

namespace A330320.P10535460084817211108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000005 ((n + 1) ^ 2 + (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P10535460084817211108

namespace A330320

/-- `∑[lcm(2, A000005((n+1)²+n+1))]` -/
def P10535460084817211108.Spec : Prop :=
  ∀ n, (P10535460084817211108.a n : ℤ) = A330320 (n + 1)

end A330320

/-! ## A330320.P10714672846275647646

`A000005(∑[n+2+n])+a(n-1)` with `a(0)=2`
-/

namespace A330320.P10714672846275647646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A330320.P10714672846275647646

namespace A330320

/-- `A000005(∑[n+2+n])+a(n-1)` -/
def P10714672846275647646.Spec : Prop :=
  ∀ n, P10714672846275647646.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P18245451675359787425

`∑[A000005(lcm(n+1, n+2))+1]-(n+1)`
-/

namespace A330320.P18245451675359787425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm (n + 1) (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A330320.P18245451675359787425

namespace A330320

/-- `∑[A000005(lcm(n+1, n+2))+1]-(n+1)` -/
def P18245451675359787425.Spec : Prop :=
  ∀ n, P18245451675359787425.a n = A330320 (n + 1)

end A330320

/-! ## A330320.P6429290261537218786

`floor(A000005((n+2)*(n+1))+a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A330320.P6429290261537218786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000005 ((n + 2) * (n + 1)) + a (n - 1)

end

end A330320.P6429290261537218786

namespace A330320

/-- `floor(A000005((n+2)*(n+1))+a(n-1))` -/
def P6429290261537218786.Spec : Prop :=
  ∀ n, P6429290261537218786.a n = A330320 (n + 1)

end A330320

/-!
# A330321: a(n) = Sum_{i=1..n} tau(i)*tau(i+1)/2, where tau(n) = A000005(n) is the number of divisors of n.

The programs for A330321, the canonical program `A330321.P10903654926725134196` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330321 has offset 1).

The definition of A330321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A330320, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330321.P10903654926725134196

`A330320(n+1)/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330321

/-- `A330320(n+1)/2` -/
def P10903654926725134196.Spec : Prop :=
  ∀ n, P10903654926725134196.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P8121029923227861747

`∑[A063123(n+1)]`
-/

namespace A330321.P8121029923227861747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P8121029923227861747

namespace A330321

/-- `∑[A063123(n+1)]` -/
def P8121029923227861747.Spec : Prop :=
  ∀ n, P8121029923227861747.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P14655558885281552323

`∑[A092517(n+1)/2]`
-/

namespace A330321.P14655558885281552323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092517 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P14655558885281552323

namespace A330321

/-- `∑[A092517(n+1)/2]` -/
def P14655558885281552323.Spec : Prop :=
  ∀ n, P14655558885281552323.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P14114438192869071307

`∑[A001281(A092517(n+1))]`
-/

namespace A330321.P14114438192869071307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A092517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P14114438192869071307

namespace A330321

/-- `∑[A001281(A092517(n+1))]` -/
def P14114438192869071307.Spec : Prop :=
  ∀ n, P14114438192869071307.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P3981312078640062285

`∑[(A133948(n+1)+A133947(n+1))/2]`
-/

namespace A330321.P3981312078640062285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133948 (n + 1) + A133947 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P3981312078640062285

namespace A330321

/-- `∑[(A133948(n+1)+A133947(n+1))/2]` -/
def P3981312078640062285.Spec : Prop :=
  ∀ n, P3981312078640062285.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P14033677399472568767

`∑[A229949(2*(n+1))/2]`
-/

namespace A330321.P14033677399472568767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229949 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P14033677399472568767

namespace A330321

/-- `∑[A229949(2*(n+1))/2]` -/
def P14033677399472568767.Spec : Prop :=
  ∀ n, P14033677399472568767.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P10331888091096012644

`∑[∏{e}[(n+2)*(n+1), #+1]]/2`
-/

namespace A330321.P10331888091096012644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A330321.P10331888091096012644

namespace A330321

/-- `∑[∏{e}[(n+2)*(n+1), #+1]]/2` -/
def P10331888091096012644.Spec : Prop :=
  ∀ n, P10331888091096012644.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P5372944624174748976

`∑[∏{e}[(n+1)²+n+1, #+1]/2]`
-/

namespace A330321.P5372944624174748976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P5372944624174748976

namespace A330321

/-- `∑[∏{e}[(n+1)²+n+1, #+1]/2]` -/
def P5372944624174748976.Spec : Prop :=
  ∀ n, P5372944624174748976.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P10897426166811001333

`∑[A000005(A278256(n+1))/2]`
-/

namespace A330321.P10897426166811001333
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A278256 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P10897426166811001333

namespace A330321

/-- `∑[A000005(A278256(n+1))/2]` -/
def P10897426166811001333.Spec : Prop :=
  ∀ n, P10897426166811001333.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P8890479203891678600

`A001281(A330320(n+1))`
-/

namespace A330321.P8890479203891678600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A330320 (n + 1)).toNat

end

end A330321.P8890479203891678600

namespace A330321

/-- `A001281(A330320(n+1))` -/
def P8890479203891678600.Spec : Prop :=
  ∀ n, P8890479203891678600.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P1605945482818151269

`∑[A000005(∑[2*(n+1)])/2]`
-/

namespace A330321.P1605945482818151269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P1605945482818151269

namespace A330321

/-- `∑[A000005(∑[2*(n+1)])/2]` -/
def P1605945482818151269.Spec : Prop :=
  ∀ n, P1605945482818151269.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P11850475784273708836

`∑[A000005(∑[n+2+n])]/2`
-/

namespace A330321.P11850475784273708836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A330321.P11850475784273708836

namespace A330321

/-- `∑[A000005(∑[n+2+n])]/2` -/
def P11850475784273708836.Spec : Prop :=
  ∀ n, P11850475784273708836.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P16917485820910884608

`a(n-1)+A000005((n+1)*(n+2))/2` with `a(0)=1`
-/

namespace A330321.P16917485820910884608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000005 ((n + 1) * (n + 2)) : ℚ) / 2

end

end A330321.P16917485820910884608

namespace A330321

/-- `a(n-1)+A000005((n+1)*(n+2))/2` -/
def P16917485820910884608.Spec : Prop :=
  ∀ n, P16917485820910884608.a n = (A330321 (n + 1) : ℚ)

end A330321

/-! ## A330321.P7653537713435642873

`∑[A064680(A000005(∑[2*(n+1)]))]`
-/

namespace A330321.P7653537713435642873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A000005 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P7653537713435642873

namespace A330321

/-- `∑[A064680(A000005(∑[2*(n+1)]))]` -/
def P7653537713435642873.Spec : Prop :=
  ∀ n, P7653537713435642873.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P15394365664956197222

`∑[A038548(A278256(n+1))]`
-/

namespace A330321.P15394365664956197222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A278256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P15394365664956197222

namespace A330321

/-- `∑[A038548(A278256(n+1))]` -/
def P15394365664956197222.Spec : Prop :=
  ∀ n, P15394365664956197222.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P11778647018838793897

`∑[A292286((n+1)*(n+2))]`
-/

namespace A330321.P11778647018838793897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 ((n + 1) * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P11778647018838793897

namespace A330321

/-- `∑[A292286((n+1)*(n+2))]` -/
def P11778647018838793897.Spec : Prop :=
  ∀ n, P11778647018838793897.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P14201596565319909122

`∑[A095686((n+1)²)]`
-/

namespace A330321.P14201596565319909122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095686 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P14201596565319909122

namespace A330321

/-- `∑[A095686((n+1)²)]` -/
def P14201596565319909122.Spec : Prop :=
  ∀ n, P14201596565319909122.a n = A330321 (n + 1)

end A330321

/-! ## A330321.P2196777625567662150

`∑[A152674((n+1)²)/2]`
-/

namespace A330321.P2196777625567662150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152674 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330321.P2196777625567662150

namespace A330321

/-- `∑[A152674((n+1)²)/2]` -/
def P2196777625567662150.Spec : Prop :=
  ∀ n, P2196777625567662150.a n = (A330321 (n + 1) : ℚ)

end A330321

/-!
# A330322: a(n) = Sum_{i=1..n} sigma(i)*sigma(i+1), where sigma(n) = A000203(n) is the sum of the divisors of n.

The programs for A330322, the canonical program `A330322.P9206465895295157789` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330322 has offset 1).

The definition of A330322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330322.P9206465895295157789

`∑[A083539(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A330322

/-- `∑[A083539(n+1)]` -/
def P9206465895295157789.Spec : Prop :=
  ∀ n, P9206465895295157789.a n = A330322 (n + 1)

theorem P9206465895295157789.correct : P9206465895295157789.Spec := by
  intro n
  simp only [A330322, Nat.add_sub_cancel]

end A330322

/-! ## A330322.P16128764035419901935

`∑[Δ[A160664(n)]*A000203(n+2)]`
-/

namespace A330322.P16128764035419901935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P16128764035419901935

namespace A330322

/-- `∑[Δ[A160664(n)]*A000203(n+2)]` -/
def P16128764035419901935.Spec : Prop :=
  ∀ n, P16128764035419901935.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P3605956916023089293

`∑[A060780(n+1)*A060781(n+1)]`
-/

namespace A330322.P3605956916023089293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1) * A060781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P3605956916023089293

namespace A330322

/-- `∑[A060780(n+1)*A060781(n+1)]` -/
def P3605956916023089293.Spec : Prop :=
  ∀ n, P3605956916023089293.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P15487652599545207419

`∑[A000203(n+1)*A000203(n+2)]`
-/

namespace A330322.P15487652599545207419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P15487652599545207419

namespace A330322

/-- `∑[A000203(n+1)*A000203(n+2)]` -/
def P15487652599545207419.Spec : Prop :=
  ∀ n, P15487652599545207419.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P12560117943111071595

`∑[Δ[A160664(n)]*A245092(2*n+3)]`
-/

namespace A330322.P12560117943111071595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A245092 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P12560117943111071595

namespace A330322

/-- `∑[Δ[A160664(n)]*A245092(2*n+3)]` -/
def P12560117943111071595.Spec : Prop :=
  ∀ n, P12560117943111071595.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P5387499696638947168

`∑[abs(A143348(n+1))*A245092(2*n+3)]`
-/

namespace A330322.P5387499696638947168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| * A245092 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P5387499696638947168

namespace A330322

/-- `∑[abs(A143348(n+1))*A245092(2*n+3)]` -/
def P5387499696638947168.Spec : Prop :=
  ∀ n, P5387499696638947168.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P9245551218548887139

`∑[sqrt(A072861(n+1))*A245092(2*n+3)]`
-/

namespace A330322.P9245551218548887139
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A245092 (2 * n + 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P9245551218548887139

namespace A330322

/-- `∑[sqrt(A072861(n+1))*A245092(2*n+3)]` -/
def P9245551218548887139.Spec : Prop :=
  ∀ n, P9245551218548887139.a n = (A330322 (n + 1) : ℝ)

end A330322

/-! ## A330322.P8635186809322202600

`∑[∑[A340793(n+1)]*A245092(2*n+3)]`
-/

namespace A330322.P8635186809322202600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A245092 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P8635186809322202600

namespace A330322

/-- `∑[∑[A340793(n+1)]*A245092(2*n+3)]` -/
def P8635186809322202600.Spec : Prop :=
  ∀ n, P8635186809322202600.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P10123366983355741762

`∑[A245092(2*n+1)*A245092(2*n+3)]`
-/

namespace A330322.P10123366983355741762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) * A245092 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P10123366983355741762

namespace A330322

/-- `∑[A245092(2*n+1)*A245092(2*n+3)]` -/
def P10123366983355741762.Spec : Prop :=
  ∀ n, P10123366983355741762.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P4059531648808969683

`∑[∑{d}[∑[2*(n+1)], #]]`
-/

namespace A330322.P4059531648808969683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P4059531648808969683

namespace A330322

/-- `∑[∑{d}[∑[2*(n+1)], #]]` -/
def P4059531648808969683.Spec : Prop :=
  ∀ n, (P4059531648808969683.a n : ℤ) = A330322 (n + 1)

end A330322

/-! ## A330322.P6995195675031832051

`∑{d}[(n+1)*(n+2), #]+a(n-1)` with `a(0)=3`
-/

namespace A330322.P6995195675031832051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + a (n - 1)

end

end A330322.P6995195675031832051

namespace A330322

/-- `∑{d}[(n+1)*(n+2), #]+a(n-1)` -/
def P6995195675031832051.Spec : Prop :=
  ∀ n, (P6995195675031832051.a n : ℤ) = A330322 (n + 1)

end A330322

/-! ## A330322.P1101946533759427729

`∑[A000203(∑[2*(n+1)])]`
-/

namespace A330322.P1101946533759427729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P1101946533759427729

namespace A330322

/-- `∑[A000203(∑[2*(n+1)])]` -/
def P1101946533759427729.Spec : Prop :=
  ∀ n, P1101946533759427729.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P1557284703569946029

`A000203((n+1)*(n+2))+a(n-1)` with `a(0)=3`
-/

namespace A330322.P1557284703569946029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000203 ((n + 1) * (n + 2)) + a (n - 1)

end

end A330322.P1557284703569946029

namespace A330322

/-- `A000203((n+1)*(n+2))+a(n-1)` -/
def P1557284703569946029.Spec : Prop :=
  ∀ n, P1557284703569946029.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P10339900289561063711

`abs(∑[A000203((n+1)²+n+1)]-2)+2`
-/

namespace A330322.P10339900289561063711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2 + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 2| + 2

end

end A330322.P10339900289561063711

namespace A330322

/-- `abs(∑[A000203((n+1)²+n+1)]-2)+2` -/
def P10339900289561063711.Spec : Prop :=
  ∀ n, P10339900289561063711.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P14525367281204080259

`∑[A000203(lcm(n+1, n+2))+1]-(n+1)`
-/

namespace A330322.P14525367281204080259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.lcm (n + 1) (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A330322.P14525367281204080259

namespace A330322

/-- `∑[A000203(lcm(n+1, n+2))+1]-(n+1)` -/
def P14525367281204080259.Spec : Prop :=
  ∀ n, P14525367281204080259.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P1515765072636330953

`∑[A062731(∑[n+1])]`
-/

namespace A330322.P1515765072636330953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P1515765072636330953

namespace A330322

/-- `∑[A062731(∑[n+1])]` -/
def P1515765072636330953.Spec : Prop :=
  ∀ n, P1515765072636330953.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P13593716484989949310

`∑[A216627(∑[n+2])]`
-/

namespace A330322.P13593716484989949310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216627 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P13593716484989949310

namespace A330322

/-- `∑[A216627(∑[n+2])]` -/
def P13593716484989949310.Spec : Prop :=
  ∀ n, P13593716484989949310.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P911808279989807876

`∑[A245092(2*n+3)*A245093(∑[n+1])]`
-/

namespace A330322.P911808279989807876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3) * A245093 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P911808279989807876

namespace A330322

/-- `∑[A245092(2*n+3)*A245093(∑[n+1])]` -/
def P911808279989807876.Spec : Prop :=
  ∀ n, P911808279989807876.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P853948355939336401

`∑[A143237(∑[n+2])]`
-/

namespace A330322.P853948355939336401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143237 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P853948355939336401

namespace A330322

/-- `∑[A143237(∑[n+2])]` -/
def P853948355939336401.Spec : Prop :=
  ∀ n, P853948355939336401.a n = A330322 (n + 1)

end A330322

/-! ## A330322.P13089791527010977180

`∑[A060866((n+1)*(n+2))]`
-/

namespace A330322.P13089791527010977180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 ((n + 1) * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P13089791527010977180

namespace A330322

/-- `∑[A060866((n+1)*(n+2))]` -/
def P13089791527010977180.Spec : Prop :=
  ∀ n, P13089791527010977180.a n = A330322 (n + 1)

end A330322

/-!
# A330323: a(n) = Moebius(n)*Moebius(n+1).

The programs for A330323, the canonical program `A330323.P15219021534140192394` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330323 has offset 1).

The definition of A330323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330323.P15219021534140192394

`A008683((n+1)*(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A330323

/-- `A008683((n+1)*(n+2))` -/
def P15219021534140192394.Spec : Prop :=
  ∀ n, P15219021534140192394.a n = A330323 (n + 1)

theorem P15219021534140192394.correct : P15219021534140192394.Spec := by
  intro n
  simp only [A330323, Nat.add_sub_cancel]

end A330323

/-! ## A330323.P18037437684932255668

`Δ[A002321(n+1)]*∏{e}[n+1, -floor(1/#)]`
-/

namespace A330323.P18037437684932255668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋))

end

end A330323.P18037437684932255668

namespace A330323

/-- `Δ[A002321(n+1)]*∏{e}[n+1, -floor(1/#)]` -/
def P18037437684932255668.Spec : Prop :=
  ∀ n, P18037437684932255668.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P7022092126425146364

`Δ[A143443(n+1)/(n+1)]*∏{e}[n+1, -floor(1/#)]`
-/

namespace A330323.P7022092126425146364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143443 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋) : ℤ) : ℚ)

end

end A330323.P7022092126425146364

namespace A330323

/-- `Δ[A143443(n+1)/(n+1)]*∏{e}[n+1, -floor(1/#)]` -/
def P7022092126425146364.Spec : Prop :=
  ∀ n, P7022092126425146364.a n = (A330323 (n + 1) : ℚ)

end A330323

/-! ## A330323.P18280868220027346380

`(A007423(n+1)-1)*Δ[A002321(n+1)]`
-/

namespace A330323.P18280868220027346380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * (f1 (n + 1) - f1 n)

end

end A330323.P18280868220027346380

namespace A330323

/-- `(A007423(n+1)-1)*Δ[A002321(n+1)]` -/
def P18280868220027346380.Spec : Prop :=
  ∀ n, P18280868220027346380.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P9390474282371651713

`A162512(n+1)%2*Δ[A002321(n+1)]`
-/

namespace A330323.P9390474282371651713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A330323.P9390474282371651713

namespace A330323

/-- `A162512(n+1)%2*Δ[A002321(n+1)]` -/
def P9390474282371651713.Spec : Prop :=
  ∀ n, P9390474282371651713.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P17954124320569301635

`A326415(n+1)%2*Δ[A002321(n+1)]`
-/

namespace A330323.P17954124320569301635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326415 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A330323.P17954124320569301635

namespace A330323

/-- `A326415(n+1)%2*Δ[A002321(n+1)]` -/
def P17954124320569301635.Spec : Prop :=
  ∀ n, P17954124320569301635.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P13093120478718405608

`A326937(n+1)%2*Δ[A002321(n+1)]`
-/

namespace A330323.P13093120478718405608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326937 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A330323.P13093120478718405608

namespace A330323

/-- `A326937(n+1)%2*Δ[A002321(n+1)]` -/
def P13093120478718405608.Spec : Prop :=
  ∀ n, P13093120478718405608.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P15347320617302291550

`A328502(n+1)%2*Δ[A002321(n+1)]`
-/

namespace A330323.P15347320617302291550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328502 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A330323.P15347320617302291550

namespace A330323

/-- `A328502(n+1)%2*Δ[A002321(n+1)]` -/
def P15347320617302291550.Spec : Prop :=
  ∀ n, P15347320617302291550.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P163110898705322474

`∏{d}[A000040(n+2), A008683(A000005(#)+n)]`
-/

namespace A330323.P163110898705322474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A008683 (A000005 d + (n : ℤ)).toNat

end

end A330323.P163110898705322474

namespace A330323

/-- `∏{d}[A000040(n+2), A008683(A000005(#)+n)]` -/
def P163110898705322474.Spec : Prop :=
  ∀ n, P163110898705322474.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P16261237883427631310

`∏{e}[∑[2*(n+1)], ceil(-1/#)]`
-/

namespace A330323.P16261237883427631310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈-(1 / (Nat.factorization (f1 n) p : ℚ))⌉

end

end A330323.P16261237883427631310

namespace A330323

/-- `∏{e}[∑[2*(n+1)], ceil(-1/#)]` -/
def P16261237883427631310.Spec : Prop :=
  ∀ n, P16261237883427631310.a n = A330323 (n + 1)

end A330323

/-! ## A330323.P10192403059546646828

`A008683(∑[n+2+n])^3`
-/

namespace A330323.P10192403059546646828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A330323.P10192403059546646828

namespace A330323

/-- `A008683(∑[n+2+n])^3` -/
def P10192403059546646828.Spec : Prop :=
  ∀ n, P10192403059546646828.a n = A330323 (n + 1)

end A330323

/-!
# A330324: a(n) = Sum_{i=1..n} Moebius(i)*Moebius(i+1), where Moebius(n) = A008683(n).

The programs for A330324, the canonical program `A330324.P8826282452159673930` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330324 has offset 1).

The definition of A330324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330324.P8826282452159673930

`∑[A330323(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A330324

/-- `∑[A330323(n+1)]` -/
def P8826282452159673930.Spec : Prop :=
  ∀ n, P8826282452159673930.a n = A330324 (n + 1)

theorem P8826282452159673930.correct : P8826282452159673930.Spec := by
  intro n
  simp only [A330324, Nat.add_sub_cancel]

end A330324

/-! ## A330324.P7658148646462403786

`∑[A008683(n+1)*A008683(n+2)]`
-/

namespace A330324.P7658148646462403786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A008683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P7658148646462403786

namespace A330324

/-- `∑[A008683(n+1)*A008683(n+2)]` -/
def P7658148646462403786.Spec : Prop :=
  ∀ n, P7658148646462403786.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P4862881387770954213

`∑[A008683(A278256(n+1))]`
-/

namespace A330324.P4862881387770954213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P4862881387770954213

namespace A330324

/-- `∑[A008683(A278256(n+1))]` -/
def P4862881387770954213.Spec : Prop :=
  ∀ n, P4862881387770954213.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P8160366101122385790

`∑[A008683(A278259(2*n+3))]`
-/

namespace A330324.P8160366101122385790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278259 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P8160366101122385790

namespace A330324

/-- `∑[A008683(A278259(2*n+3))]` -/
def P8160366101122385790.Spec : Prop :=
  ∀ n, P8160366101122385790.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P17723368952033854442

`∑[A008683(A064549(n+1)+n+1)]`
-/

namespace A330324.P17723368952033854442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064549 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P17723368952033854442

namespace A330324

/-- `∑[A008683(A064549(n+1)+n+1)]` -/
def P17723368952033854442.Spec : Prop :=
  ∀ n, P17723368952033854442.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P2640697619531758960

`∑[A008683(∑[2*(n+1)])]`
-/

namespace A330324.P2640697619531758960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P2640697619531758960

namespace A330324

/-- `∑[A008683(∑[2*(n+1)])]` -/
def P2640697619531758960.Spec : Prop :=
  ∀ n, P2640697619531758960.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P13305051671097535629

`∑[A008683(∑[n+2+n])^3]`
-/

namespace A330324.P13305051671097535629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P13305051671097535629

namespace A330324

/-- `∑[A008683(∑[n+2+n])^3]` -/
def P13305051671097535629.Spec : Prop :=
  ∀ n, P13305051671097535629.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P1542332087629421147

`-∑[-A008683((n+2)²-(n+2))]`
-/

namespace A330324.P1542332087629421147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 ((n + 2) ^ 2 - (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330324.P1542332087629421147

namespace A330324

/-- `-∑[-A008683((n+2)²-(n+2))]` -/
def P1542332087629421147.Spec : Prop :=
  ∀ n, P1542332087629421147.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P1423790771182023466

`∑[A008683(lcm(n+1, n+2))+1]-(n+1)`
-/

namespace A330324.P1423790771182023466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lcm (n + 1) (n + 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A330324.P1423790771182023466

namespace A330324

/-- `∑[A008683(lcm(n+1, n+2))+1]-(n+1)` -/
def P1423790771182023466.Spec : Prop :=
  ∀ n, P1423790771182023466.a n = A330324 (n + 1)

end A330324

/-! ## A330324.P6564827875517988809

`∑[A099991(∑[n+1])]`
-/

namespace A330324.P6564827875517988809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099991 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330324.P6564827875517988809

namespace A330324

/-- `∑[A099991(∑[n+1])]` -/
def P6564827875517988809.Spec : Prop :=
  ∀ n, P6564827875517988809.a n = A330324 (n + 1)

end A330324

/-!
# A330326: a(1)=1; thereafter a(n) = b(n)*b(n-1), where b = A329804.

The programs for A330326, there is no canonical definition to state claims against.
-/

/-! ## A330326.P8926858197628800275

`A329804(n+1)*A329804(round(sqrt(n²+1)))`
-/

namespace A330326.P8926858197628800275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329804 (n + 1) * A329804 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A330326.P8926858197628800275

/-! ## A330326.P13052983411744070102

`(A329804(n+1)*A329804(A028310(n)))%A045942(n+1)`
-/

namespace A330326.P13052983411744070102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329804 (n + 1) * A329804 (A028310 n).toNat) (A045942 (n + 1))

end

end A330326.P13052983411744070102

/-! ## A330326.P13544292936568434340

`A329804(n+1)*A329804(A028310(n))-A081554(n)%2`
-/

namespace A330326.P13544292936568434340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329804 (n + 1) * A329804 (A028310 n).toNat - Int.tmod (A081554 n) 2

end

end A330326.P13544292936568434340

/-! ## A330326.P3797051696608934567

`(A329804(n+1)*A329804(A028310(n)))%A001555(n)`
-/

namespace A330326.P3797051696608934567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329804 (n + 1) * A329804 (A028310 n).toNat) (A001555 n)

end

end A330326.P3797051696608934567

/-!
# A330327: a(1)=1; thereafter a(n) = (product of digits of b(n))*(product of digits of b(n-1)), where b = A329804.

The programs for A330327, there is no canonical definition to state claims against.
-/

/-! ## A330327.P2767872402780690159

`∏{digits}[A330326(n+1), #]`
-/

namespace A330327.P2767872402780690159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A330327.P2767872402780690159

/-! ## A330327.P8342004288394213658

`∏{digits}[A329804(n+1)*A329804(A028310(n)), #]`
-/

namespace A330327.P8342004288394213658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329804 (n + 1) * A329804 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A330327.P8342004288394213658

/-! ## A330327.P6893913738238491090

`∏{digits}[A329804(n+1)*A329804(A000007(n)+n), #]`
-/

namespace A330327.P6893913738238491090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329804 (n + 1) * A329804 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A330327.P6893913738238491090

/-! ## A330327.P6617729199179801639

`gcd(A000038(n), A187844(A330326(n+1)))`
-/

namespace A330327.P6617729199179801639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A187844 (A330326 (n + 1)).toNat)

end

end A330327.P6617729199179801639

/-! ## A330327.P934959803453435580

`∑{d}[A187844(A330326(n+1)), A000010(#)]`
-/

namespace A330327.P934959803453435580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (A330326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A330327.P934959803453435580

/-! ## A330327.P871186015966109153

`abs(A187844(A330326(n+1)))%A002148(n)`
-/

namespace A330327.P871186015966109153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A187844 (A330326 (n + 1)).toNat| (A002148 n)

end

end A330327.P871186015966109153

/-! ## A330327.P9418625534499088522

`lcm(A000034(2*n), A187844(A330326(n+1)))`
-/

namespace A330327.P9418625534499088522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (2 * n)) (A187844 (A330326 (n + 1)).toNat)

end

end A330327.P9418625534499088522

/-! ## A330327.P3320184584213932137

`A000007(n+1)+abs(A187844(A330326(n+1)))`
-/

namespace A330327.P3320184584213932137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + |A187844 (A330326 (n + 1)).toNat|

end

end A330327.P3320184584213932137

/-! ## A330327.P10390270815356495961

`abs(A187844(A330326(n+1)))*A014963(12*n+6)`
-/

namespace A330327.P10390270815356495961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 (A330326 (n + 1)).toNat| * A014963 (12 * n + 6)

end

end A330327.P10390270815356495961

/-!
# A330328: First differences of A303028.

The programs for A330328, there is no canonical definition to state claims against.
-/

/-! ## A330328.P12627192101376233309

`Δ[A303028(n)]`
-/

namespace A330328.P12627192101376233309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330328.P12627192101376233309

/-! ## A330328.P14166812560021634221

`A303028(n+1)-A303028(n)`
-/

namespace A330328.P14166812560021634221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303028 (n + 1) - A303028 n

end

end A330328.P14166812560021634221

/-!
# A330330: Record high points in A316774.

The programs for A330330, there is no canonical definition to state claims against.
-/

/-! ## A330330.P10331543804813677283

`record[A316774(n)]`
-/

namespace A330330.P10331543804813677283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330330.P10331543804813677283

/-! ## A330330.P15165070233954339595

`A316774(A330331(n+1))`
-/

namespace A330330.P15165070233954339595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 (A330331 (n + 1)).toNat

end

end A330330.P15165070233954339595

/-! ## A330330.P1447032621628043731

`lt[A048993(A275972(n)), A286335(3*n)]`
-/

namespace A330330.P1447032621628043731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A275972 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286335 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330330.P1447032621628043731

/-! ## A330330.P697334730749121807

`lt[A182972(n+1), A001221(A075082(n+2))]`
-/

namespace A330330.P697334730749121807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A075082 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330330.P697334730749121807

/-! ## A330330.P14793778206347731511

`lt[A049643(n), A381076(A319706(2*n+5))]`
-/

namespace A330330.P14793778206347731511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381076 (A319706 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330330.P14793778206347731511

/-!
# A330331: Positions of records in A316774.

The programs for A330331, there is no canonical definition to state claims against.
-/

/-! ## A330331.P5955205051186053064

`A316905(A330330(n+1))`
-/

namespace A330331.P5955205051186053064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316905 (A330330 (n + 1)).toNat

end

end A330331.P5955205051186053064

/-! ## A330331.P3783050515201818485

`A316905(record[A316774(n)])`
-/

namespace A330331.P3783050515201818485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316905 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330331.P3783050515201818485

/-! ## A330331.P17569379270080832914

`A330440(record[A187829(n+1)-A330448(n)])`
-/

namespace A330331.P17569379270080832914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1) - A330448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330440 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330331.P17569379270080832914

/-! ## A330331.P4505600552779953496

`record[A316905(n)%A316905(A187829(n+1))]`
-/

namespace A330331.P4505600552779953496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316905 n) (A316905 (A187829 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330331.P4505600552779953496

/-! ## A330331.P10985203867775634138

`A316905(lt[A364072(3*(n+1)), A071686(n+1)])`
-/

namespace A330331.P10985203867775634138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364072 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316905 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330331.P10985203867775634138

/-!
# A330332: a(n) = (number of times a(n-1) has already appeared) + (number of times a(n-2) has already appeared) + (number of times a(n-3) has already appeared), starting with a(n) = n for n

The programs for A330332, there is no canonical definition to state claims against.
-/

/-! ## A330332.P14128061248214998874

`A165587(A250120(n+3)%A163793(n+1))`
-/

namespace A330332.P14128061248214998874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (Int.tmod (A250120 (n + 3)) (A163793 (n + 1))).toNat

end

end A330332.P14128061248214998874

/-!
# A330333: Number of diameter-2-critical graphs with n nodes.

The programs for A330333, there is no canonical definition to state claims against.
-/

/-! ## A330333.P1375142311538186895

`∑[A032884(A000041(floor((n/2)²)))]`
-/

namespace A330333.P1375142311538186895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032884 (A000041 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330333.P1375142311538186895

/-! ## A330333.P17348594741059810648

`A279221(A332835(n+2))+A000045(n)`
-/

namespace A330333.P17348594741059810648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279221 (A332835 (n + 2)).toNat + A000045 n

end

end A330333.P17348594741059810648

/-! ## A330333.P13381687799370499364

`A141292(a(n-1))-Δ[3^val(n+1, 3)]` with `a(0)=1, a(1)=2`
-/

namespace A330333.P13381687799370499364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A141292 (a (n - 1)).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A330333.P13381687799370499364

/-!
# A330334: Number of times A329985(n) has appeared in A329985 (including the present occurrence).

The programs for A330334, there is no canonical definition to state claims against.
-/

/-! ## A330334.P1790786495129769104

`A124769(∑[A318921(n)!])`
-/

namespace A330334.P1790786495129769104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A318921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330334.P1790786495129769104

/-! ## A330334.P965623219030942367

`A338428(∑[2^A317934(n+1)])`
-/

namespace A330334.P965623219030942367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317934 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338428 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330334.P965623219030942367

/-! ## A330334.P5728925587249108530

`A001221(A313274(n)+A129954(n))`
-/

namespace A330334.P5728925587249108530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A313274 n + A129954 n).toNat

end

end A330334.P5728925587249108530

/-! ## A330334.P3052061834814260832

`A338428(∑[A109679(A317934(n+1))])`
-/

namespace A330334.P3052061834814260832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109679 (A317934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330334.P3052061834814260832

/-! ## A330334.P7366573686455674588

`A034003(A024816(n+1)*A338441(n+4))`
-/

namespace A330334.P7366573686455674588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034003 (A024816 (n + 1) * A338441 (n + 4)).toNat

end

end A330334.P7366573686455674588

/-!
# A330336: A322131/2.

The programs for A330336, there is no canonical definition to state claims against.
-/

/-! ## A330336.P7052001858961371182

`A322131(n)/2`
-/

namespace A330336.P7052001858961371182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322131 n : ℚ) / 2

end

end A330336.P7052001858961371182

/-! ## A330336.P10626144636723662999

`A273943(A322131(n))`
-/

namespace A330336.P10626144636723662999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A322131 n).toNat

end

end A330336.P10626144636723662999

/-! ## A330336.P3878071315048758993

`A004526(A322131(n)+1)`
-/

namespace A330336.P3878071315048758993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322131 n + 1).toNat

end

end A330336.P3878071315048758993

/-! ## A330336.P18107293179166476778

`A028242(A322131(n)+1)`
-/

namespace A330336.P18107293179166476778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A322131 n + 1).toNat

end

end A330336.P18107293179166476778

/-! ## A330336.P11873220256977776400

`A123108(A322131(n)+1)`
-/

namespace A330336.P11873220256977776400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A322131 n + 1).toNat

end

end A330336.P11873220256977776400

/-! ## A330336.P11139411711911312119

`A002265(2*A322131(n))`
-/

namespace A330336.P11139411711911312119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A322131 n).toNat

end

end A330336.P11139411711911312119

/-! ## A330336.P4810676962318108608

`A110655(2*A322131(n))`
-/

namespace A330336.P4810676962318108608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A322131 n).toNat

end

end A330336.P4810676962318108608

/-! ## A330336.P8968881678848634130

`A004526(xor(1, A322131(n)))`
-/

namespace A330336.P8968881678848634130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor 1 (A322131 n)).toNat

end

end A330336.P8968881678848634130

/-! ## A330336.P96071250621393581

`A110654(A322131(n)-A000035(n))`
-/

namespace A330336.P96071250621393581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A322131 n - A000035 n).toNat

end

end A330336.P96071250621393581

/-! ## A330336.P11201637148748987847

`A110654(A322131(n)%A005897(n))`
-/

namespace A330336.P11201637148748987847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A322131 n) (A005897 n)).toNat

end

end A330336.P11201637148748987847

/-! ## A330336.P3943975354503947851

`A110654(A322131(n))%A006521(n+1)`
-/

namespace A330336.P3943975354503947851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A322131 n).toNat) (A006521 (n + 1))

end

end A330336.P3943975354503947851

/-!
# A330337: The sequence {k(n)} involved in the construction of A322510.

The programs for A330337, there is no canonical definition to state claims against.
-/

/-! ## A330337.P12918944871259197961

`A322510(2*(n+1))-A322510(n+1)`
-/

namespace A330337.P12918944871259197961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322510 (2 * (n + 1)) - A322510 (n + 1)

end

end A330337.P12918944871259197961

/-!
# A330338: Indices k such that A330337(k) = 1.

The programs for A330338, there is no canonical definition to state claims against.
-/

/-! ## A330338.P16627698383846873711

`eq[1, A330337(n+1)]+1`
-/

namespace A330338.P16627698383846873711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330338.P16627698383846873711

/-! ## A330338.P4148466582954692761

`record[A000027(n+1)/A330337(n+1)]`
-/

namespace A330338.P4148466582954692761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A330337 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330338.P4148466582954692761

/-! ## A330338.P18937164661197788

`record[A004526(2*(n+1))/A330337(n+1)]`
-/

namespace A330338.P18937164661197788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * (n + 1)) : ℚ) / (A330337 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330338.P18937164661197788

/-! ## A330338.P4593226289263028480

`record[(n+1)/A330337(n+1)^A000120(n)]`
-/

namespace A330338.P4593226289263028480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330337 (n + 1) : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330338.P4593226289263028480

/-! ## A330338.P15745785986539949423

`record[(n+1)/A330337(n+1)]%A017453(n)`
-/

namespace A330338.P15745785986539949423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330337 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A017453 n)

end

end A330338.P15745785986539949423

/-! ## A330338.P17777270324791653348

`record[(n+1)/A330337(n+1)^A091304(n+1)]`
-/

namespace A330338.P17777270324791653348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A330337 (n + 1) : ℚ) ^ (A091304 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330338.P17777270324791653348

/-!
# A330339: Boustrophedon primes: write the numbers 0, 1, 2, 3, ... in a triangle on a square grid in the boustrophedon manner, ending a row when a prime is reached; sequence lists primes that appear in the zeroth column.

The programs for A330339, there is no canonical definition to state claims against.
-/

/-! ## A330339.P8159496289780322381

`∩[A299300(n+1)-2, A330554(n+1)]`
-/

namespace A330339.P8159496289780322381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299300 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330339.P8159496289780322381

/-! ## A330339.P3398710080983135538

`A000040(A330546(n+1))`
-/

namespace A330339.P3398710080983135538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A330546 (n + 1)).toNat

end

end A330339.P3398710080983135538

/-! ## A330339.P10279925834068206890

`A008578(A330546(n+1)+1)`
-/

namespace A330339.P10279925834068206890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A330546 (n + 1) + 1).toNat

end

end A330339.P10279925834068206890

/-! ## A330339.P4703241451830144229

`A182986(A330546(n+1)+1)`
-/

namespace A330339.P4703241451830144229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A330546 (n + 1) + 1).toNat

end

end A330339.P4703241451830144229

/-! ## A330339.P7404135626134613969

`A045344(A330546(n+1)-1)`
-/

namespace A330339.P7404135626134613969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A330546 (n + 1) - 1).toNat

end

end A330339.P7404135626134613969

/-!
# A330341: Triangle read by rows: T(n,k) is the number of n-bead bracelets using exactly k colors with no adjacent beads having the same color.

The programs for A330341, there is no canonical definition to state claims against.
-/

/-! ## A330341.P504289926003975075

`A026741(A330618(n+1)%A034006(n))`
-/

namespace A330341.P504289926003975075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A330618 (n + 1)) (A034006 n)).toNat

end

end A330341.P504289926003975075

/-! ## A330341.P7424675964921263645

`A026741(A330618(n+1))%A067678(n+1)`
-/

namespace A330341.P7424675964921263645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A330618 (n + 1)).toNat) (A067678 (n + 1))

end

end A330341.P7424675964921263645

/-! ## A330341.P1104209852643434556

`A025427(A018007(n)-A057711(n))`
-/

namespace A330341.P1104209852643434556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A018007 n - A057711 n).toNat

end

end A330341.P1104209852643434556

/-!
# A330342: a(n) is the smallest k such that b^(n-1) == b^k (mod n) for all integers b.

The programs for A330342, there is no canonical definition to state claims against.
-/

/-! ## A330342.P9493183604382229435

`A079327(n+1)+n*and(1, ∑{e}[n+1, #]!)`
-/

namespace A330342.P9493183604382229435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079327 (n + 1) + (n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A330342.P9493183604382229435

/-! ## A330342.P4502074442433498551

`A166260(n+1)+A079327(n+1)`
-/

namespace A330342.P4502074442433498551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (n + 1) + A079327 (n + 1)

end

end A330342.P4502074442433498551

/-! ## A330342.P9384618450207127709

`or(A061006(n+1), A079327(n+1))`
-/

namespace A330342.P9384618450207127709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061006 (n + 1)) (A079327 (n + 1))

end

end A330342.P9384618450207127709

/-! ## A330342.P292277596820183432

`A079327(n+1)+n*A010051(n+1)`
-/

namespace A330342.P292277596820183432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079327 (n + 1) + (n : ℤ) * A010051 (n + 1)

end

end A330342.P292277596820183432

/-! ## A330342.P11595030312746596378

`A079327(n+1)+n*A080339(n+1)`
-/

namespace A330342.P11595030312746596378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079327 (n + 1) + (n : ℤ) * A080339 (n + 1)

end

end A330342.P11595030312746596378

/-!
# A330343: Number of labeled fully chiral simple graphs (also called identity or asymmetric graphs) covering n vertices.

The programs for A330343, there is no canonical definition to state claims against.
-/

/-! ## A330343.P11050275242080459921

`(n+1)!*A003400(n+1)`
-/

namespace A330343.P11050275242080459921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A003400 (n + 1)

end

end A330343.P11050275242080459921

/-! ## A330343.P7698366669801433495

`record[A084938(n)]*A003400(n+1)`
-/

namespace A330343.P7698366669801433495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003400 (n + 1)

end

end A330343.P7698366669801433495

/-! ## A330343.P9268423333730618360

`record[A093659(n)]*A003400(n+1)`
-/

namespace A330343.P9268423333730618360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003400 (n + 1)

end

end A330343.P9268423333730618360

/-! ## A330343.P14846943476351323915

`record[A094587(n)]*A003400(n+1)`
-/

namespace A330343.P14846943476351323915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003400 (n + 1)

end

end A330343.P14846943476351323915

/-! ## A330343.P13868730255944719196

`A000142(n+1)*A003400(n+1)`
-/

namespace A330343.P13868730255944719196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A003400 (n + 1)

end

end A330343.P13868730255944719196

/-!
# A330344: Number of unlabeled graphs with n vertices whose covered portion has exactly two automorphisms.

The programs for A330344, there is no canonical definition to state claims against.
-/

/-! ## A330344.P16395255548514984931

`∑[A241454(n+1)]`
-/

namespace A330344.P16395255548514984931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330344.P16395255548514984931

/-! ## A330344.P666128285847227190

`A075095(n+1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A330344.P666128285847227190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A075095 (n + 1) + a (n - 2)

end

end A330344.P666128285847227190

/-! ## A330344.P13500123268352145468

`A059260(∑[A353850(n+1)])`
-/

namespace A330344.P13500123268352145468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330344.P13500123268352145468

/-!
# A330345: Number of labeled simple graphs with n vertices whose covered portion has exactly two automorphisms.

The programs for A330345, there is no canonical definition to state claims against.
-/

/-! ## A330345.P1078387286262924158

`A294295(A134063(n))`
-/

namespace A330345.P1078387286262924158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294295 (A134063 n).toNat

end

end A330345.P1078387286262924158

/-!
# A330348: a(n) is the number of divisors of n whose last digit equals the last digit of n.

The programs for A330348, there is no canonical definition to state claims against.
-/

/-! ## A330348.P10929983576682089416

`A346392(n+1)+1`
-/

namespace A330348.P10929983576682089416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (n + 1) + 1

end

end A330348.P10929983576682089416

/-!
# A330349: a(n) = A070826(n+1) - 2^(n-1).

The programs for A330349, the canonical program `A330349.P4758954018468680973` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330349 has offset 1).

The definition of A330349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070826, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330349.P4758954018468680973

`A070826(n+2)-2^n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A330349

/-- `A070826(n+2)-2^n` -/
def P4758954018468680973.Spec : Prop :=
  ∀ n, P4758954018468680973.a n = A330349 (n + 1)

theorem P4758954018468680973.correct : P4758954018468680973.Spec := by
  intro n
  simp only [A330349, Nat.add_sub_cancel]

end A330349

/-! ## A330349.P1586331676176819431

`∏[p?[2*n+1]]-2^n`
-/

namespace A330349.P1586331676176819431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A330349.P1586331676176819431

namespace A330349

/-- `∏[p?[2*n+1]]-2^n` -/
def P1586331676176819431.Spec : Prop :=
  ∀ n, P1586331676176819431.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P4616127620144864403

`∏[A065091(n+1)]-2^n`
-/

namespace A330349.P4616127620144864403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A330349.P4616127620144864403

namespace A330349

/-- `∏[A065091(n+1)]-2^n` -/
def P4616127620144864403.Spec : Prop :=
  ∀ n, P4616127620144864403.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P2722494229907319081

`∏[A000040(n+2)]-2^n`
-/

namespace A330349.P2722494229907319081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A330349.P2722494229907319081

namespace A330349

/-- `∏[A000040(n+2)]-2^n` -/
def P2722494229907319081.Spec : Prop :=
  ∀ n, P2722494229907319081.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P7909408547775593116

`∏[A008578(n+3)]-2^n`
-/

namespace A330349.P7909408547775593116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A330349.P7909408547775593116

namespace A330349

/-- `∏[A008578(n+3)]-2^n` -/
def P7909408547775593116.Spec : Prop :=
  ∀ n, P7909408547775593116.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P1424953380691808964

`∏[record[A006530(n+3)]]-2^n`
-/

namespace A330349.P1424953380691808964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A330349.P1424953380691808964

namespace A330349

/-- `∏[record[A006530(n+3)]]-2^n` -/
def P1424953380691808964.Spec : Prop :=
  ∀ n, P1424953380691808964.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P8315808252780246830

`∏[record[A014963(n+3)]]-2^n`
-/

namespace A330349.P8315808252780246830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A330349.P8315808252780246830

namespace A330349

/-- `∏[record[A014963(n+3)]]-2^n` -/
def P8315808252780246830.Spec : Prop :=
  ∀ n, P8315808252780246830.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P3810759085932157628

`∏[A006093(n+2)+1]-2^n`
-/

namespace A330349.P3810759085932157628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A330349.P3810759085932157628

namespace A330349

/-- `∏[A006093(n+2)+1]-2^n` -/
def P3810759085932157628.Spec : Prop :=
  ∀ n, P3810759085932157628.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P15915094905754153902

`abs(∏[A000040(n+2)]-A000079(n))`
-/

namespace A330349.P15915094905754153902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j - A000079 n|

end

end A330349.P15915094905754153902

namespace A330349

/-- `abs(∏[A000040(n+2)]-A000079(n))` -/
def P15915094905754153902.Spec : Prop :=
  ∀ n, P15915094905754153902.a n = A330349 (n + 1)

end A330349

/-! ## A330349.P13900101848285565479

`∏[record[A020639(n+3)]]-A336996(n²)`
-/

namespace A330349.P13900101848285565479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A336996 (n ^ 2)

end

end A330349.P13900101848285565479

namespace A330349

/-- `∏[record[A020639(n+3)]]-A336996(n²)` -/
def P13900101848285565479.Spec : Prop :=
  ∀ n, P13900101848285565479.a n = A330349 (n + 1)

end A330349

/-!
# A330351: Expansion of e.g.f. -Sum_{k>=1} log(1 - (exp(x) - 1)^k) / k.

The programs for A330351, there is no canonical definition to state claims against.
-/

/-! ## A330351.P16770043609492308065

`A051953(7^n)+2^n`
-/

namespace A330351.P16770043609492308065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (7 ^ n) + (2 ^ n : ℤ)

end

end A330351.P16770043609492308065

/-!
# A330353: Expansion of e.g.f. Sum_{k>=1} (exp(x) - 1)^k / (k * (1 - (exp(x) - 1)^k)).

The programs for A330353, there is no canonical definition to state claims against.
-/

/-! ## A330353.P6023818500508133399

`A007674(A072597(n))+A005843(n)`
-/

namespace A330353.P6023818500508133399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (A072597 n).toNat + A005843 n

end

end A330353.P6023818500508133399

/-!
# A330354: Expansion of e.g.f. Sum_{k>=1} log(1 + x)^k / (k * (1 - log(1 + x)^k)).

The programs for A330354, there is no canonical definition to state claims against.
-/

/-! ## A330354.P2745936228467888388

`A347030(A002296(n))+A001221(n+1)`
-/

namespace A330354.P2745936228467888388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347030 (A002296 n).toNat + A001221 (n + 1)

end

end A330354.P2745936228467888388

/-!
# A330355: Starting from n: as long as the decimal representation contains a positive multiple of 3, divide the largest and leftmost such substring by 3; a(n) corresponds to the final value.

The programs for A330355, there is no canonical definition to state claims against.
-/

/-! ## A330355.P15063746548653641035

`A329424(27*A024664(n))`
-/

namespace A330355.P15063746548653641035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 (27 * A024664 n).toNat

end

end A330355.P15063746548653641035

/-! ## A330355.P15870936806300131998

`A329424(lcm(27, A024664(n)))`
-/

namespace A330355.P15870936806300131998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 (Int.lcm 27 (A024664 n))

end

end A330355.P15870936806300131998

/-! ## A330355.P7974426970069392397

`A329424(A024664(n))%A290136(n+1)`
-/

namespace A330355.P7974426970069392397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329424 (A024664 n).toNat) (A290136 (n + 1))

end

end A330355.P7974426970069392397

/-! ## A330355.P6712892552217156214

`A329424(n*(A351241(n+1)+2))`
-/

namespace A330355.P6712892552217156214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329424 ((n : ℤ) * (A351241 (n + 1) + 2)).toNat

end

end A330355.P6712892552217156214

/-! ## A330355.P10218682361470865968

`A106610(n)-A053120(A351241(n+1))`
-/

namespace A330355.P10218682361470865968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n - A053120 (A351241 (n + 1)).toNat

end

end A330355.P10218682361470865968

/-!
# A330356: Starting from n: as long as the decimal representation contains a prime number, replace the largest and leftmost such substring with the index of the corresponding prime number; a(n) corresponds to the final value.

The programs for A330356, there is no canonical definition to state claims against.
-/

/-! ## A330356.P7544325965490483343

`A329428(n)%A329424((n+1)*Δ[n^3])`
-/

namespace A330356.P7544325965490483343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329428 n) (A329424 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat)

end

end A330356.P7544325965490483343

/-! ## A330356.P15661174775419420418

`A329428(n^A031436(A031436(n)))`
-/

namespace A330356.P15661174775419420418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A031436 (A031436 n).toNat : ℤ))).toNat

end

end A330356.P15661174775419420418

/-! ## A330356.P5042425579090627013

`gcd(A147312(A130534(n)), A329428(n))`
-/

namespace A330356.P5042425579090627013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147312 (A130534 n).toNat) (A329428 n)

end

end A330356.P5042425579090627013

/-! ## A330356.P17921876508797719329

`A329428(C(n, A031436(A031436(n))))`
-/

namespace A330356.P17921876508797719329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 (Nat.choose n (A031436 (A031436 n).toNat).toNat)

end

end A330356.P17921876508797719329

/-! ## A330356.P5444387621631872317

`A329428(n)%A324744(A377093(3*n+2))`
-/

namespace A330356.P5444387621631872317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329428 n) (A324744 (A377093 (3 * n + 2)).toNat)

end

end A330356.P5444387621631872317

/-!
# A330357: a(n) = (2*n^2 + 9 - (-1)^n)/4.

The programs for A330357, the canonical program `A330357.P3026795207780346161` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330357 has offset 0).

The definition of A330357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330357.P3026795207780346161

`(2*n²+9-(-1)^n)/4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A330357

/-- `(2*n²+9-(-1)^n)/4` -/
def P3026795207780346161.Spec : Prop :=
  ∀ n, P3026795207780346161.a n = (A330357 n : ℚ)

end A330357

/-! ## A330357.P14535545845617073039

`ceil(cosh(log(n²+3)))`
-/

namespace A330357.P14535545845617073039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (n ^ 2 + 3 : ℝ))⌉

end

end A330357.P14535545845617073039

namespace A330357

/-- `ceil(cosh(log(n²+3)))` -/
def P14535545845617073039.Spec : Prop :=
  ∀ n, P14535545845617073039.a n = A330357 n

end A330357

/-! ## A330357.P184867270021792380

`floor(cosh(log(n²+5)))`
-/

namespace A330357.P184867270021792380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n ^ 2 + 5 : ℝ))⌋

end

end A330357.P184867270021792380

namespace A330357

/-- `floor(cosh(log(n²+5)))` -/
def P184867270021792380.Spec : Prop :=
  ∀ n, P184867270021792380.a n = A330357 n

end A330357

/-! ## A330357.P11500196378968177465

`round(cosh(log(n²+4)))`
-/

namespace A330357.P11500196378968177465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n ^ 2 + 4 : ℝ)))

end

end A330357.P11500196378968177465

namespace A330357

/-- `round(cosh(log(n²+4)))` -/
def P11500196378968177465.Spec : Prop :=
  ∀ n, P11500196378968177465.a n = A330357 n

end A330357

/-! ## A330357.P10983666945975296345

`abs(∑[or(1, -n)]-3)`
-/

namespace A330357.P10983666945975296345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 3|

end

end A330357.P10983666945975296345

namespace A330357

/-- `abs(∑[or(1, -n)]-3)` -/
def P10983666945975296345.Spec : Prop :=
  ∀ n, P10983666945975296345.a n = A330357 n

end A330357

/-! ## A330357.P3810180407032202726

`round(n²/2-tan(2))`
-/

namespace A330357.P3810180407032202726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℚ) / 2 : ℝ) - Real.tan (2 : ℝ))

end

end A330357.P3810180407032202726

namespace A330357

/-- `round(n²/2-tan(2))` -/
def P3810180407032202726.Spec : Prop :=
  ∀ n, P3810180407032202726.a n = A330357 n

end A330357

/-! ## A330357.P9606114934810546204

`ceil((n²-tan(5))/2)`
-/

namespace A330357.P9606114934810546204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℝ) - Real.tan (5 : ℝ)) / 2⌉

end

end A330357.P9606114934810546204

namespace A330357

/-- `ceil((n²-tan(5))/2)` -/
def P9606114934810546204.Spec : Prop :=
  ∀ n, P9606114934810546204.a n = A330357 n

end A330357

/-! ## A330357.P9329681690659382790

`floor(cot(2/(n²+6)))`
-/

namespace A330357.P9329681690659382790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (n ^ 2 + 6 : ℚ) : ℝ)⌋

end

end A330357.P9329681690659382790

namespace A330357

/-- `floor(cot(2/(n²+6)))` -/
def P9329681690659382790.Spec : Prop :=
  ∀ n, P9329681690659382790.a n = A330357 n

end A330357

/-! ## A330357.P382744637991478174

`round(cot(2/(n²+5)))`
-/

namespace A330357.P382744637991478174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (n ^ 2 + 5 : ℚ) : ℝ))

end

end A330357.P382744637991478174

namespace A330357

/-- `round(cot(2/(n²+5)))` -/
def P382744637991478174.Spec : Prop :=
  ∀ n, P382744637991478174.a n = A330357 n

end A330357

/-! ## A330357.P10193930502500085912

`∑[a(n-2)+2]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A330357.P10193930502500085912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330357.P10193930502500085912

namespace A330357

/-- `∑[a(n-2)+2]` -/
def P10193930502500085912.Spec : Prop :=
  ∀ n, (P10193930502500085912.a n : ℤ) = A330357 n

end A330357

/-! ## A330357.P1983308573430763088

`(n²+n%2)/2+2`
-/

namespace A330357.P1983308573430763088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n % 2 : ℕ) : ℚ) / 2 + 2

end

end A330357.P1983308573430763088

namespace A330357

/-- `(n²+n%2)/2+2` -/
def P1983308573430763088.Spec : Prop :=
  ∀ n, P1983308573430763088.a n = (A330357 n : ℚ)

end A330357

/-! ## A330357.P16887462021067885406

`a(n-2)+2*(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A330357.P16887462021067885406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 1)

end

end A330357.P16887462021067885406

namespace A330357

/-- `a(n-2)+2*(n-1)` -/
def P16887462021067885406.Spec : Prop :=
  ∀ n, P16887462021067885406.a n = A330357 n

end A330357

/-! ## A330357.P14886934743018393011

`2*n-(2-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A330357.P14886934743018393011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (2 * n : ℤ) - (2 - a (n - 2))

end

end A330357.P14886934743018393011

namespace A330357

/-- `2*n-(2-a(n-2))` -/
def P14886934743018393011.Spec : Prop :=
  ∀ n, P14886934743018393011.a n = A330357 n

end A330357

/-! ## A330357.P6667321624545569887

`floor(record[(n-1)²]/2-(n-2))`
-/

namespace A330357.P6667321624545569887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2 - ((n : ℤ) - 2 : ℚ)⌋

end

end A330357.P6667321624545569887

namespace A330357

/-- `floor(record[(n-1)²]/2-(n-2))` -/
def P6667321624545569887.Spec : Prop :=
  ∀ n, P6667321624545569887.a n = A330357 n

end A330357

/-! ## A330357.P9515325112134776201

`∑[n-and(1-n, a(n-1))]` with `a(0)=2`
-/

namespace A330357.P9515325112134776201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - Int.land (1 - (n : ℤ)) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330357.P9515325112134776201

namespace A330357

/-- `∑[n-and(1-n, a(n-1))]` -/
def P9515325112134776201.Spec : Prop :=
  ∀ n, P9515325112134776201.a n = A330357 n

end A330357

/-! ## A330357.P4877219179789956436

`ceil(record[(n-2)²]/2-2*n)`
-/

namespace A330357.P4877219179789956436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2 - (2 * n : ℚ)⌉

end

end A330357.P4877219179789956436

namespace A330357

/-- `ceil(record[(n-2)²]/2-2*n)` -/
def P4877219179789956436.Spec : Prop :=
  ∀ n, P4877219179789956436.a n = A330357 n

end A330357

/-! ## A330357.P4411575561866455578

`round(record[(2-n)²/2]-2*n)`
-/

namespace A330357.P4411575561866455578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℚ))

end

end A330357.P4411575561866455578

namespace A330357

/-- `round(record[(2-n)²/2]-2*n)` -/
def P4411575561866455578.Spec : Prop :=
  ∀ n, P4411575561866455578.a n = A330357 n

end A330357

/-! ## A330357.P1326688280823194157

`a(n-1)-gcd(2, n)+n+1` with `a(0)=2`
-/

namespace A330357.P1326688280823194157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Nat.gcd 2 n : ℤ) + (n + 1 : ℤ)

end

end A330357.P1326688280823194157

namespace A330357

/-- `a(n-1)-gcd(2, n)+n+1` -/
def P1326688280823194157.Spec : Prop :=
  ∀ n, P1326688280823194157.a n = A330357 n

end A330357

/-! ## A330357.P8072533405532973510

`∑[n-C(a(n-1), n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A330357.P8072533405532973510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℤ) - (Nat.choose (f1 (n - 1)).toNat ((n : ℤ) - 1).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330357.P8072533405532973510

namespace A330357

/-- `∑[n-C(a(n-1), n-1)]` -/
def P8072533405532973510.Spec : Prop :=
  ∀ n, P8072533405532973510.a n = A330357 n

end A330357

/-!
# A330358: a(n) = n mod 5 + n mod 25 + ... + n mod 5^k, where 5^k <= n < 5^(k+1).

The programs for A330358, there is no canonical definition to state claims against.
-/

/-! ## A330358.P497388946112591335

`(n+1)%∑[A034498(n+1)^A133733(n+1)]`
-/

namespace A330358.P497388946112591335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034498 (n + 1) : ℚ) ^ (A133733 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A330358.P497388946112591335

/-!
# A330366: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 1 (mod 10).

The programs for A330366, the canonical program `A330366.P13234269032582178326` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330366 has offset 1).

The definition of A330366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330366.P15804190853864092326

`A030430(eq[1, A049511(n+2)-A049511(n+1)]+1)`
-/

namespace A330366.P15804190853864092326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049511 (n + 2) - A049511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A330366.P15804190853864092326

namespace A330366

/-- `A030430(eq[1, A049511(n+2)-A049511(n+1)]+1)` -/
def P15804190853864092326.Spec : Prop :=
  ∀ n, P15804190853864092326.a n = A330366 (n + 1)

end A330366

/-! ## A330366.P13672119099532083258

`∩[A216309(n+1), A290450(n+1)]`
-/

namespace A330366.P13672119099532083258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P13672119099532083258

namespace A330366

/-- `∩[A216309(n+1), A290450(n+1)]` -/
def P13672119099532083258.Spec : Prop :=
  ∀ n, (P13672119099532083258.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P13234269032582178326

`A290450(eq[1, A290450(n+1)%5]+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A330366

/-- `A290450(eq[1, A290450(n+1)%5]+1)` -/
def P13234269032582178326.Spec : Prop :=
  ∀ n, P13234269032582178326.a n = A330366 (n + 1)

theorem P13234269032582178326.correct : P13234269032582178326.Spec := by
  intro n
  simp only [A330366, Nat.add_sub_cancel]

end A330366

/-! ## A330366.P6171307540121795932

`∩[A030430(n+1), A290450(n+1)]`
-/

namespace A330366.P6171307540121795932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P6171307540121795932

namespace A330366

/-- `∩[A030430(n+1), A290450(n+1)]` -/
def P6171307540121795932.Spec : Prop :=
  ∀ n, (P6171307540121795932.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P4625819023985682122

`∩[A045453(n+1), A290450(n+1)]`
-/

namespace A330366.P4625819023985682122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P4625819023985682122

namespace A330366

/-- `∩[A045453(n+1), A290450(n+1)]` -/
def P4625819023985682122.Spec : Prop :=
  ∀ n, (P4625819023985682122.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P18137978385752380889

`∩[A090756(n+1), A290450(n+1)]`
-/

namespace A330366.P18137978385752380889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P18137978385752380889

namespace A330366

/-- `∩[A090756(n+1), A290450(n+1)]` -/
def P18137978385752380889.Spec : Prop :=
  ∀ n, (P18137978385752380889.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P4927958702102704177

`∩[A290450(n+1), A327752(n+1)]`
-/

namespace A330366.P4927958702102704177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P4927958702102704177

namespace A330366

/-- `∩[A290450(n+1), A327752(n+1)]` -/
def P4927958702102704177.Spec : Prop :=
  ∀ n, (P4927958702102704177.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P16802134027114139022

`∩[A004615(n+1), A290450(n+1)]`
-/

namespace A330366.P16802134027114139022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P16802134027114139022

namespace A330366

/-- `∩[A004615(n+1), A290450(n+1)]` -/
def P16802134027114139022.Spec : Prop :=
  ∀ n, (P16802134027114139022.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P8469970196180806029

`A000040(A108119(n+1))`
-/

namespace A330366.P8469970196180806029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A108119 (n + 1)).toNat

end

end A330366.P8469970196180806029

namespace A330366

/-- `A000040(A108119(n+1))` -/
def P8469970196180806029.Spec : Prop :=
  ∀ n, P8469970196180806029.a n = A330366 (n + 1)

end A330366

/-! ## A330366.P18331403410473274436

`p?[A063482(A107730(n+1))]`
-/

namespace A330366.P18331403410473274436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063482 (A107730 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330366.P18331403410473274436

namespace A330366

/-- `p?[A063482(A107730(n+1))]` -/
def P18331403410473274436.Spec : Prop :=
  ∀ n, P18331403410473274436.a n = A330366 (n + 1)

end A330366

/-! ## A330366.P4156859494213285198

`p?[A063482(eq[1, A007652(n+1)])]`
-/

namespace A330366.P4156859494213285198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063482 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330366.P4156859494213285198

namespace A330366

/-- `p?[A063482(eq[1, A007652(n+1)])]` -/
def P4156859494213285198.Spec : Prop :=
  ∀ n, P4156859494213285198.a n = A330366 (n + 1)

end A330366

/-! ## A330366.P8330166944478530497

`p?[A007652(A107730(n+1))*A290450(n+1)]`
-/

namespace A330366.P8330166944478530497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A107730 (n + 1)).toNat * A290450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330366.P8330166944478530497

namespace A330366

/-- `p?[A007652(A107730(n+1))*A290450(n+1)]` -/
def P8330166944478530497.Spec : Prop :=
  ∀ n, P8330166944478530497.a n = A330366 (n + 1)

end A330366

/-! ## A330366.P11005459114644566396

`filter[A290450(n+1), A185705(#)]`
-/

namespace A330366.P11005459114644566396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A330366.P11005459114644566396

namespace A330366

/-- `filter[A290450(n+1), A185705(#)]` -/
def P11005459114644566396.Spec : Prop :=
  ∀ n, P11005459114644566396.a n = A330366 (n + 1)

end A330366

/-! ## A330366.P4234912067145771556

`∩[A290450(n+1), A331194(n+1)]`
-/

namespace A330366.P4234912067145771556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P4234912067145771556

namespace A330366

/-- `∩[A290450(n+1), A331194(n+1)]` -/
def P4234912067145771556.Spec : Prop :=
  ∀ n, (P4234912067145771556.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P7821204344286757051

`∩[A290450(n+1), A017281(n)]`
-/

namespace A330366.P7821204344286757051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P7821204344286757051

namespace A330366

/-- `∩[A290450(n+1), A017281(n)]` -/
def P7821204344286757051.Spec : Prop :=
  ∀ n, (P7821204344286757051.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P5100767455600230312

`∩[A290450(n+1), A298008(n+1)]`
-/

namespace A330366.P5100767455600230312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P5100767455600230312

namespace A330366

/-- `∩[A290450(n+1), A298008(n+1)]` -/
def P5100767455600230312.Spec : Prop :=
  ∀ n, (P5100767455600230312.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P8943571356321089380

`∩[A290450(n+1), A017305(n)-2]`
-/

namespace A330366.P8943571356321089380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P8943571356321089380

namespace A330366

/-- `∩[A290450(n+1), A017305(n)-2]` -/
def P8943571356321089380.Spec : Prop :=
  ∀ n, (P8943571356321089380.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P2357676566269540748

`∩[A277588(n+1), A290450(n+1)]`
-/

namespace A330366.P2357676566269540748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330366.P2357676566269540748

namespace A330366

/-- `∩[A277588(n+1), A290450(n+1)]` -/
def P2357676566269540748.Spec : Prop :=
  ∀ n, (P2357676566269540748.a n : ℤ) = A330366 (n + 1)

end A330366

/-! ## A330366.P10932701253551913075

`A397425(A167614(n+1))`
-/

namespace A330366.P10932701253551913075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397425 (A167614 (n + 1)).toNat

end

end A330366.P10932701253551913075

namespace A330366

/-- `A397425(A167614(n+1))` -/
def P10932701253551913075.Spec : Prop :=
  ∀ n, P10932701253551913075.a n = A330366 (n + 1)

end A330366

/-!
# A330368: Irregular triangle read by rows in which row n lists the ranks of the partitions of n in nonincreasing order.

The programs for A330368, there is no canonical definition to state claims against.
-/

/-! ## A330368.P4925713817024121888

`A253513(A008278(n+1))+A105805(n+1)`
-/

namespace A330368.P4925713817024121888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A008278 (n + 1)).toNat + A105805 (n + 1)

end

end A330368.P4925713817024121888

/-!
# A330369: Triangle read by rows: T(n,k) (1 <= k <= n) is the total number of right angles of size k in all partitions of n.

The programs for A330369, there is no canonical definition to state claims against.
-/

/-! ## A330369.P4151985033114134532

`A330379(n+1)/A002260(n+1)`
-/

namespace A330369.P4151985033114134532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A330369.P4151985033114134532

/-! ## A330369.P14489841840943786476

`A330379(n+1)/(A002262(n)+1)`
-/

namespace A330369.P14489841840943786476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A330369.P14489841840943786476

/-! ## A330369.P5394047866950447260

`abs(A330379(n+1)/A140756(n+1))`
-/

namespace A330369.P5394047866950447260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A330379 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A330369.P5394047866950447260

/-! ## A330369.P4696391998977381254

`A330379(n+1)/sqrt(A133819(n+1))`
-/

namespace A330369.P4696391998977381254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A330369.P4696391998977381254

/-! ## A330369.P8539912373742613611

`A330379(n+1)/A349520(2*n+1)`
-/

namespace A330369.P8539912373742613611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A349520 (2 * n + 1) : ℚ)

end

end A330369.P8539912373742613611

/-! ## A330369.P1109088550040766801

`A330379(n+1)/A003602(A054582(n))`
-/

namespace A330369.P1109088550040766801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A003602 (A054582 n).toNat : ℚ)

end

end A330369.P1109088550040766801

/-! ## A330369.P4864713280900128897

`A330379(n+1)/A000005(A059268(n))`
-/

namespace A330369.P4864713280900128897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A330369.P4864713280900128897

/-! ## A330369.P15785618950099089181

`A330379(n+1)/A193738(A245300(n))`
-/

namespace A330369.P15785618950099089181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A193738 (A245300 n).toNat : ℚ)

end

end A330369.P15785618950099089181

/-! ## A330369.P12094908886195662604

`A330379(n+1)/A003603(A035513(n+1))`
-/

namespace A330369.P12094908886195662604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A003603 (A035513 (n + 1)).toNat : ℚ)

end

end A330369.P12094908886195662604

/-! ## A330369.P14945827803367722884

`A330379(n+1)/A004736(A038722(n+1))`
-/

namespace A330369.P14945827803367722884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330379 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A330369.P14945827803367722884

/-!
# A330370: Irregular triangle read by rows T(n,m) in which row n lists all partitions of n ordered by their k-th ranks, or by their k-th largest parts if all their k-th ranks are zeros, with k = 1..n.

The programs for A330370, there is no canonical definition to state claims against.
-/

/-! ## A330370.P6954312705318994671

`or(char[A006415(n)], A181317(n+1))`
-/

namespace A330370.P6954312705318994671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P6954312705318994671

/-! ## A330370.P17188007888518249134

`or(char[A011939(n)], A181317(n+1))`
-/

namespace A330370.P17188007888518249134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011939 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P17188007888518249134

/-! ## A330370.P16998738680863628552

`or(char[A017617(n)], A181317(n+1))`
-/

namespace A330370.P16998738680863628552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P16998738680863628552

/-! ## A330370.P17813873538315962216

`or(char[A102439(n)], A181317(n+1))`
-/

namespace A330370.P17813873538315962216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P17813873538315962216

/-! ## A330370.P4783456197565639429

`or(char[A139271(n)], A181317(n+1))`
-/

namespace A330370.P4783456197565639429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P4783456197565639429

/-! ## A330370.P5830282806059246280

`or(char[A140679(n)], A181317(n+1))`
-/

namespace A330370.P5830282806059246280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140679 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P5830282806059246280

/-! ## A330370.P12898027291006185769

`or(char[A146298(n)], A181317(n+1))`
-/

namespace A330370.P12898027291006185769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P12898027291006185769

/-! ## A330370.P7370836095897888532

`or(char[A304505(n)], A181317(n+1))`
-/

namespace A330370.P7370836095897888532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304505 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P7370836095897888532

/-! ## A330370.P33565462432331826

`A181317(n+1)+char[A044336(n+1)]`
-/

namespace A330370.P33565462432331826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181317 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A330370.P33565462432331826

/-! ## A330370.P2447729853677290256

`or(char[A063134(n+1)], A181317(n+1))`
-/

namespace A330370.P2447729853677290256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063134 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A181317 (n + 1))

end

end A330370.P2447729853677290256

/-! ## A330370.P16099638648677228237

`or(4%A080577(n+1), A181317(n+1))`
-/

namespace A330370.P16099638648677228237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod 4 (A080577 (n + 1))) (A181317 (n + 1))

end

end A330370.P16099638648677228237

/-! ## A330370.P17706812183518114000

`A181317(n+1)+A025441(A085856(n))`
-/

namespace A330370.P17706812183518114000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181317 (n + 1) + A025441 (A085856 n).toNat

end

end A330370.P17706812183518114000

/-! ## A330370.P3352621622774888408

`or(A011732(A103221(n)), A181317(n+1))`
-/

namespace A330370.P3352621622774888408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011732 (A103221 n).toNat) (A181317 (n + 1))

end

end A330370.P3352621622774888408

/-! ## A330370.P14576985229739504372

`or(A080116(A051865(n)), A181317(n+1))`
-/

namespace A330370.P14576985229739504372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080116 (A051865 n).toNat) (A181317 (n + 1))

end

end A330370.P14576985229739504372

/-! ## A330370.P4074172432989602171

`or(A003982(A132196(n)), A181317(n+1))`
-/

namespace A330370.P4074172432989602171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 (A132196 n).toNat) (A181317 (n + 1))

end

end A330370.P4074172432989602171

/-! ## A330370.P14644429834909289802

`or(A064873(A072931(n)), A181317(n+1))`
-/

namespace A330370.P14644429834909289802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064873 (A072931 n).toNat) (A181317 (n + 1))

end

end A330370.P14644429834909289802

/-! ## A330370.P45847632119614772

`or(A147612(A000124(n)), A181317(n+1))`
-/

namespace A330370.P45847632119614772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147612 (A000124 n).toNat) (A181317 (n + 1))

end

end A330370.P45847632119614772

/-! ## A330370.P822094967757314541

`A181317(n+1)+A079262(A001227(n+1))`
-/

namespace A330370.P822094967757314541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181317 (n + 1) + A079262 (A001227 (n + 1)).toNat

end

end A330370.P822094967757314541

/-! ## A330370.P5718450062439905678

`or(A069513(A009188(n+1)), A181317(n+1))`
-/

namespace A330370.P5718450062439905678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069513 (A009188 (n + 1)).toNat) (A181317 (n + 1))

end

end A330370.P5718450062439905678

/-!
# A330371: Irregular triangle read by rows T(n,m) in which row n lists all partitions of n ordered by the lower value of their k-th ranks, or by their k-th largest parts if all their k-th ranks are zeros, with k = n..1.

The programs for A330371, there is no canonical definition to state claims against.
-/

/-! ## A330371.P1332352799839377952

`A080577((n+1)%A322120(n+2))`
-/

namespace A330371.P1332352799839377952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (Int.tmod (n + 1 : ℤ) (A322120 (n + 2))).toNat

end

end A330371.P1332352799839377952

/-!
# A330372: Irregular triangle read by rows in which row n lists the self-conjugate partitions of n, ordered by their k-th largest parts, or 0 if such partitions does not exist.

The programs for A330372, there is no canonical definition to state claims against.
-/

/-! ## A330372.P969567421819514052

`A308427(A061535(3*n+2)-A046523(n+5))`
-/

namespace A330372.P969567421819514052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A061535 (3 * n + 2) - A046523 (n + 5)).toNat

end

end A330372.P969567421819514052

/-! ## A330372.P11244134939145357359

`A037819(2*A116605(n+1))`
-/

namespace A330372.P11244134939145357359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (2 * A116605 (n + 1)).toNat

end

end A330372.P11244134939145357359

/-! ## A330372.P9402492785649008605

`A031346(A282514(n)+A087474(n))`
-/

namespace A330372.P9402492785649008605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A282514 n + A087474 n).toNat

end

end A330372.P9402492785649008605

/-! ## A330372.P2270928072980007123

`A001221(xor(A265381(n), A305032(n)))`
-/

namespace A330372.P2270928072980007123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A265381 n) (A305032 n)).toNat

end

end A330372.P2270928072980007123

/-! ## A330372.P4743413012481791980

`A347550(A347516(n+1)+A000217(n))`
-/

namespace A330372.P4743413012481791980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 (A347516 (n + 1) + A000217 n).toNat

end

end A330372.P4743413012481791980

/-!
# A330373: Sum of all parts of all self-conjugate partitions of n.

The programs for A330373, there is no canonical definition to state claims against.
-/

/-! ## A330373.P8301822837063189171

`n*A000700(n)`
-/

namespace A330373.P8301822837063189171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000700 n

end

end A330373.P8301822837063189171

/-! ## A330373.P18395266952733796450

`abs(n*A081362(n))`
-/

namespace A330373.P18395266952733796450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A081362 n|

end

end A330373.P18395266952733796450

/-! ## A330373.P6160507188025779662

`n*abs(2-∑[abs(A298596(n))])`
-/

namespace A330373.P6160507188025779662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298596 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A330373.P6160507188025779662

/-! ## A330373.P6996895415300119573

`A038608(n)*A081362(n)`
-/

namespace A330373.P6996895415300119573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n * A081362 n

end

end A330373.P6996895415300119573

/-! ## A330373.P7096085750100677244

`n*(A357457(n)+A000035(n))`
-/

namespace A330373.P7096085750100677244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A357457 n + A000035 n)

end

end A330373.P7096085750100677244

/-! ## A330373.P14066339748441793468

`n*(A000009(n)-A331848(n))`
-/

namespace A330373.P14066339748441793468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000009 n - A331848 n)

end

end A330373.P14066339748441793468

/-! ## A330373.P7965115593903635048

`n*A033999(n)*A081362(n)`
-/

namespace A330373.P7965115593903635048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033999 n * A081362 n)

end

end A330373.P7965115593903635048

/-! ## A330373.P15630909779494726165

`n*gcd(A000038(n), A081362(n))`
-/

namespace A330373.P15630909779494726165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A000038 n) (A081362 n)

end

end A330373.P15630909779494726165

/-! ## A330373.P6208358251817425576

`n*lcm(A020985(n), A081362(n))`
-/

namespace A330373.P6208358251817425576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (A020985 n) (A081362 n)

end

end A330373.P6208358251817425576

/-! ## A330373.P5037650491477151309

`n*(A357457(n)+A135528(n+1))`
-/

namespace A330373.P5037650491477151309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A357457 n + A135528 (n + 1))

end

end A330373.P5037650491477151309

/-! ## A330373.P12683733365018995083

`n*(A046682(n)-A000701(n))`
-/

namespace A330373.P12683733365018995083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A046682 n - A000701 n)

end

end A330373.P12683733365018995083

/-! ## A330373.P15421995360852448984

`n*(A000041(n)-A330644(n))`
-/

namespace A330373.P15421995360852448984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000041 n - A330644 n)

end

end A330373.P15421995360852448984

/-! ## A330373.P4436367824441645603

`abs(n*A320835(A008578(n+1)))`
-/

namespace A330373.P4436367824441645603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A320835 (A008578 (n + 1)).toNat|

end

end A330373.P4436367824441645603

/-! ## A330373.P13560262182667671461

`abs(n*A320835(record[A006530(n+1)]))`
-/

namespace A330373.P13560262182667671461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A320835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A330373.P13560262182667671461

/-! ## A330373.P6926805225762621057

`n*abs(A320835(record[A014963(n+1)]))`
-/

namespace A330373.P6926805225762621057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |A320835 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A330373.P6926805225762621057

/-! ## A330373.P3604853601473339879

`n*A027359(A179865(n+1))`
-/

namespace A330373.P3604853601473339879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027359 (A179865 (n + 1)).toNat

end

end A330373.P3604853601473339879

/-! ## A330373.P7050006227264822100

`n*A276422(A000096(n))`
-/

namespace A330373.P7050006227264822100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276422 (A000096 n).toNat

end

end A330373.P7050006227264822100

/-! ## A330373.P11476154129937972219

`n*A341279(A000124(n))`
-/

namespace A330373.P11476154129937972219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A341279 (A000124 n).toNat

end

end A330373.P11476154129937972219

/-! ## A330373.P15669635329069533258

`n*A341279(A000217(n)+1)`
-/

namespace A330373.P15669635329069533258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A341279 (A000217 n + 1).toNat

end

end A330373.P15669635329069533258

/-! ## A330373.P13640514893038464736

`n*A341279(A133263(n)-1)`
-/

namespace A330373.P13640514893038464736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A341279 (A133263 n - 1).toNat

end

end A330373.P13640514893038464736

/-!
# A330374: Triangle read by rows: T(n,k) is the number of partitions of n whose absolute value of Dyson's rank is equal to k, with 0 <= k < n.

The programs for A330374, there is no canonical definition to state claims against.
-/

/-! ## A330374.P16302125978926167396

`(2-char[∑[n]])*A105806(n+1)`
-/

namespace A330374.P16302125978926167396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A105806 (n + 1)

end

end A330374.P16302125978926167396

/-! ## A330374.P2618109479340290997

`A105806(n+1)*A238303(n)`
-/

namespace A330374.P2618109479340290997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (n + 1) * A238303 n

end

end A330374.P2618109479340290997

/-! ## A330374.P5910210600059848715

`2*A105806(n+1)/A035214(n)`
-/

namespace A330374.P5910210600059848715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A105806 (n + 1) : ℚ) / (A035214 n : ℚ))

end

end A330374.P5910210600059848715

/-! ## A330374.P12511573343137300894

`A063995(A061885(n)+1)*A238303(n)`
-/

namespace A330374.P12511573343137300894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A061885 n + 1).toNat * A238303 n

end

end A330374.P12511573343137300894

/-! ## A330374.P18000949772853713642

`A105806(n+1)*A130130(A306915(n))`
-/

namespace A330374.P18000949772853713642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (n + 1) * A130130 (A306915 n).toNat

end

end A330374.P18000949772853713642

/-! ## A330374.P13662582210989064163

`A005843(A105806(n+1))/A035214(n)`
-/

namespace A330374.P13662582210989064163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A105806 (n + 1)).toNat : ℚ) / (A035214 n : ℚ)

end

end A330374.P13662582210989064163

/-! ## A330374.P5119001127486664324

`A063995(A057944(n)+1+n)*A238303(n)`
-/

namespace A330374.P5119001127486664324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A057944 n + 1 + (n : ℤ)).toNat * A238303 n

end

end A330374.P5119001127486664324

/-! ## A330374.P10725239880646320231

`A020639(A124927(n))*A063995(A057944(n)+1+n)`
-/

namespace A330374.P10725239880646320231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124927 n).toNat * A063995 (A057944 n + 1 + (n : ℤ)).toNat

end

end A330374.P10725239880646320231

/-!
# A330377: Irregular triangle read by rows: T(n,k) is the sum of all parts of all partitions of n with Durfee square of size k, (n >= 1; 1 <= k <= floor(sqrt(n))).

The programs for A330377, there is no canonical definition to state claims against.
-/

/-! ## A330377.P8153843604690407786

`∑[char[A022554(n)]]*A115994(n+1)`
-/

namespace A330377.P8153843604690407786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A115994 (n + 1)

end

end A330377.P8153843604690407786

/-! ## A330377.P12124396483790521621

`(A334867(2*n+1)-A020987(A000081(n+3)))*A115994(n+1)`
-/

namespace A330377.P12124396483790521621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A334867 (2 * n + 1) - A020987 (A000081 (n + 3)).toNat) * A115994 (n + 1)

end

end A330377.P12124396483790521621

/-!
# A330378: a(n) is the sum over all partitions of n of the number of right angles that are not the largest right angle.

The programs for A330378, there is no canonical definition to state claims against.
-/

/-! ## A330378.P10462389604132589731

`A115995(n+1)-A000041(n+1)`
-/

namespace A330378.P10462389604132589731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) - A000041 (n + 1)

end

end A330378.P10462389604132589731

/-! ## A330378.P703719719109856962

`∑[A208474(n+1)-A187219(n+1)]`
-/

namespace A330378.P703719719109856962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1) - A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330378.P703719719109856962

/-! ## A330378.P3717191416044511590

`∑[A208474(n+1)]-A000041(n+1)`
-/

namespace A330378.P3717191416044511590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000041 (n + 1)

end

end A330378.P3717191416044511590

/-! ## A330378.P14918260165316108890

`A115995(n+1)-(A064428(n+1)+A001522(n+1))`
-/

namespace A330378.P14918260165316108890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) - (A064428 (n + 1) + A001522 (n + 1))

end

end A330378.P14918260165316108890

/-! ## A330378.P16861639801986220822

`A115995(n+1)+A138135(n+2)-A138137(n+2)`
-/

namespace A330378.P16861639801986220822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) + (A138135 (n + 2) - A138137 (n + 2))

end

end A330378.P16861639801986220822

/-! ## A330378.P2464790885200427485

`A115995(n+1)-Δ[A000070(n)]`
-/

namespace A330378.P2464790885200427485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) - (f1 (n + 1) - f1 n)

end

end A330378.P2464790885200427485

/-!
# A330379: Triangle read by rows: T(n,k) (1 <= k <= n) is the sum of the sizes of all right angles of size k of all partitions of n.

The programs for A330379, there is no canonical definition to state claims against.
-/

/-! ## A330379.P256498767341535458

`(1-C(∑[char[∑[n]]], 2)+n)*A330369(n+1)`
-/

namespace A330379.P256498767341535458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A330369 (n + 1)

end

end A330379.P256498767341535458

/-! ## A330379.P1987760456825362581

`A002260(n+1)*A330369(n+1)`
-/

namespace A330379.P1987760456825362581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A330369 (n + 1)

end

end A330379.P1987760456825362581

/-! ## A330379.P2153767913786766324

`(A002262(n)+1)*A330369(n+1)`
-/

namespace A330379.P2153767913786766324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A330369 (n + 1)

end

end A330379.P2153767913786766324

/-! ## A330379.P13140481608182011285

`abs(A140756(n+1)*A330369(n+1))`
-/

namespace A330379.P13140481608182011285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A330369 (n + 1)|

end

end A330379.P13140481608182011285

/-! ## A330379.P3854721316421969962

`sqrt(A133819(n+1))*A330369(n+1)`
-/

namespace A330379.P3854721316421969962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A330369 (n + 1) : ℝ)

end

end A330379.P3854721316421969962

/-! ## A330379.P617504398073142682

`A330369(n+1)*A349520(2*n+1)`
-/

namespace A330379.P617504398073142682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330369 (n + 1) * A349520 (2 * n + 1)

end

end A330379.P617504398073142682

/-! ## A330379.P7415629295684795825

`A003602(A054582(n))*A330369(n+1)`
-/

namespace A330379.P7415629295684795825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A054582 n).toNat * A330369 (n + 1)

end

end A330379.P7415629295684795825

/-! ## A330379.P11408348294049895009

`A000005(A059268(n))*A330369(n+1)`
-/

namespace A330379.P11408348294049895009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A330369 (n + 1)

end

end A330379.P11408348294049895009

/-! ## A330379.P7403962277671044420

`A193738(A245300(n))*A330369(n+1)`
-/

namespace A330379.P7403962277671044420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (A245300 n).toNat * A330369 (n + 1)

end

end A330379.P7403962277671044420

/-! ## A330379.P1512245826396522443

`A001222(2*A059268(n))*A330369(n+1)`
-/

namespace A330379.P1512245826396522443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A059268 n).toNat * A330369 (n + 1)

end

end A330379.P1512245826396522443

/-!
# A330381: Triangle read by rows: T(n,k) is the number of ternary strings of length n with k indispensable digits, with 0 <= k <= n.

The programs for A330381, there is no canonical definition to state claims against.
-/

/-! ## A330381.P14149937470432947947

`A038622(A064789(n+1)-1)`
-/

namespace A330381.P14149937470432947947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (A064789 (n + 1) - 1).toNat

end

end A330381.P14149937470432947947

/-! ## A330381.P10659411196577650115

`A169623(∑[char[∑[n]]]²+2*n)`
-/

namespace A330381.P10659411196577650115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A330381.P10659411196577650115

/-! ## A330381.P3893054556526820327

`A123149(A185871(n+1)-2)`
-/

namespace A330381.P3893054556526820327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (A185871 (n + 1) - 2).toNat

end

end A330381.P3893054556526820327

/-! ## A330381.P8611907726259844505

`A123149(lt[A051159(n+1), 1])`
-/

namespace A330381.P8611907726259844505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A330381.P8611907726259844505

/-! ## A330381.P8065353324849636854

`A123149(lt[A051159(n), 1]-1)`
-/

namespace A330381.P8065353324849636854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A330381.P8065353324849636854

/-! ## A330381.P13698436996725526013

`A123149(eq[0, A187596(n+1)])`
-/

namespace A330381.P13698436996725526013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330381.P13698436996725526013

/-! ## A330381.P9925634129826121372

`A123149(lt[A187596(n+1), 1])`
-/

namespace A330381.P9925634129826121372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A330381.P9925634129826121372

/-! ## A330381.P15080771464365770961

`A123149(lt[A187596(n), 1]-1)`
-/

namespace A330381.P15080771464365770961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123149 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A330381.P15080771464365770961

/-! ## A330381.P11779489285220602002

`A330510(n)-A104029(n)`
-/

namespace A330381.P11779489285220602002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330510 n - A104029 n

end

end A330381.P11779489285220602002

/-! ## A330381.P5440144622881735812

`A025564(comp[∑[n]]+n)-A104029(n)`
-/

namespace A330381.P5440144622881735812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) - A104029 n

end

end A330381.P5440144622881735812

/-!
# A330382: Composite numbers k such that k-1 divides 2^k-2.

The programs for A330382, there is no canonical definition to state claims against.
-/

/-! ## A330382.P1267572201464675964

`∩[A014741(n+1)+1, A091300(n+1)]`
-/

namespace A330382.P1267572201464675964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330382.P1267572201464675964

/-!
# A330386: Running totals in A330385.

The programs for A330386, there is no canonical definition to state claims against.
-/

/-! ## A330386.P14986980305638586811

`abs(∑[A038608(A330385(n+1))])`
-/

namespace A330386.P14986980305638586811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A330386.P14986980305638586811

/-! ## A330386.P15776646608827614812

`-∑[A038608(A330385(n+1))]%A100504(n)`
-/

namespace A330386.P15776646608827614812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A100504 n)

end

end A330386.P15776646608827614812

/-! ## A330386.P10344223390789680651

`A000007(n+1)-∑[A038608(A330385(n+1))]`
-/

namespace A330386.P10344223390789680651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330386.P10344223390789680651

/-! ## A330386.P15766281181193386074

`(n-A000027(n+1))*∑[A038608(A330385(n+1))]`
-/

namespace A330386.P15766281181193386074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A330385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000027 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330386.P15766281181193386074

/-! ## A330386.P869190768203810539

`(a(n-1)-A038608(A330385(n+1)))%(A046691(n)+7)` with `a(0)=1`
-/

namespace A330386.P869190768203810539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - A038608 (A330385 (n + 1)).toNat) (A046691 n + 7)

end

end A330386.P869190768203810539

/-! ## A330386.P5295384075965967827

`(a(n-1)-A038608(A330385(n+1)))%A000420(n)` with `a(0)=1`
-/

namespace A330386.P5295384075965967827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - A038608 (A330385 (n + 1)).toNat) (A000420 n)

end

end A330386.P5295384075965967827

/-!
# A330387: Expansion of e.g.f. Sum_{k>=1} (-1)^(k + 1) * (exp(x) - 1)^k / (k * (1 - (exp(x) - 1)^k)).

The programs for A330387, there is no canonical definition to state claims against.
-/

/-! ## A330387.P18216105720252508386

`A004275(A086520(n)+∏[A053224(n+1)])`
-/

namespace A330387.P18216105720252508386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A086520 n + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330387.P18216105720252508386

/-!
# A330388: Expansion of e.g.f. Sum_{k>=1} (-1)^(k + 1) * log(1 + x)^k / (k * (1 - log(1 + x)^k)).

The programs for A330388, there is no canonical definition to state claims against.
-/

/-! ## A330388.P6053537004474115390

`A011371(A093361(n))+(-1)^n*A000265(A000680(n))`
-/

namespace A330388.P6053537004474115390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A093361 n).toNat + (-1) ^ n * A000265 (A000680 n).toNat

end

end A330388.P6053537004474115390

/-!
# A330390: G.f.: (1 + 15*x) / (1 - 2*x - 17*x^2).

The programs for A330390, the canonical program `A330390.P1506165863664660556` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330390 has offset 0).

The definition of A330390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330390.P1506165863664660556

`2*a(n-1)+17*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A330390

/-- `2*a(n-1)+17*a(n-2)` -/
def P1506165863664660556.Spec : Prop :=
  ∀ n, (P1506165863664660556.a n : ℤ) = A330390 n

theorem P1506165863664660556.correct : P1506165863664660556.Spec := by
  intro n
  simp only [A330390]

end A330390

/-!
# A330391: Number of main classes of diagonal Latin squares of order n with at least one orthogonal diagonal mate.

The programs for A330391, there is no canonical definition to state claims against.
-/

/-! ## A330391.P6472359305300866652

`A287764(n+1)-A337309(n+1)`
-/

namespace A330391.P6472359305300866652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287764 (n + 1) - A337309 (n + 1)

end

end A330391.P6472359305300866652

/-!
# A330393: A 2-regular sequence whose reciprocal is not 2-regular.

The programs for A330393, the canonical program `A330393.P4639006219673885269` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330393 has offset 0).

The definition of A330393 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330393.P4639006219673885269

`A003602(n+1)+A007814(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A330393

/-- `A003602(n+1)+A007814(n+1)` -/
def P4639006219673885269.Spec : Prop :=
  ∀ n, P4639006219673885269.a n = A330393 n

theorem P4639006219673885269.correct : P4639006219673885269.Spec := by
  intro n
  simp only [A330393]

end A330393

/-! ## A330393.P40552897150310576

`a(n-a(xor(1, n)%n))+1` with `a(0)=1`
-/

namespace A330393.P40552897150310576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - a (Nat.xor 1 n % n)) + 1

end

end A330393.P40552897150310576

namespace A330393

/-- `a(n-a(xor(1, n)%n))+1` -/
def P40552897150310576.Spec : Prop :=
  ∀ n, (P40552897150310576.a n : ℤ) = A330393 n

end A330393

/-! ## A330393.P14556717420846903241

`a(lcm(2, xor(1, -n))/2-1)+1` with `a(0)=1`
-/

namespace A330393.P14556717420846903241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor 1 (-(n : ℤ))) : ℚ) / 2 - 1)).toNat + 1

end

end A330393.P14556717420846903241

namespace A330393

/-- `a(lcm(2, xor(1, -n))/2-1)+1` -/
def P14556717420846903241.Spec : Prop :=
  ∀ n, (P14556717420846903241.a n : ℤ) = A330393 n

end A330393

/-! ## A330393.P12434986167223897760

`a(n-a((n-1)^(n%2)))+1` with `a(0)=1`
-/

namespace A330393.P12434986167223897760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - a (((n : ℤ) - 1) ^ (n % 2)).toNat) + 1

end

end A330393.P12434986167223897760

namespace A330393

/-- `a(n-a((n-1)^(n%2)))+1` -/
def P12434986167223897760.Spec : Prop :=
  ∀ n, (P12434986167223897760.a n : ℤ) = A330393 n

end A330393

/-! ## A330393.P1323388257237444356

`a(n-1-gcd(C(n, 2), xor(1, n)))+1` with `a(0)=1`
-/

namespace A330393.P1323388257237444356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n) : ℤ)).toNat + 1

end

end A330393.P1323388257237444356

namespace A330393

/-- `a(n-1-gcd(C(n, 2), xor(1, n)))+1` -/
def P1323388257237444356.Spec : Prop :=
  ∀ n, (P1323388257237444356.a n : ℤ) = A330393 n

end A330393

/-! ## A330393.P3433469832411951045

`a(n-(gcd(1-n, floor(n/2))+1))+1` with `a(0)=1`
-/

namespace A330393.P3433469832411951045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 1)) + 1

end

end A330393.P3433469832411951045

namespace A330393

/-- `a(n-(gcd(1-n, floor(n/2))+1))+1` -/
def P3433469832411951045.Spec : Prop :=
  ∀ n, (P3433469832411951045.a n : ℤ) = A330393 n

end A330393

/-! ## A330393.P3802279731909002316

`val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1`
-/

namespace A330393.P3802279731909002316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)

end

end A330393.P3802279731909002316

namespace A330393

/-- `val(n+1, 2)+floor(n/(xor(n, n+1)+1))+1` -/
def P3802279731909002316.Spec : Prop :=
  ∀ n, P3802279731909002316.a n = A330393 n

end A330393

/-! ## A330393.P9778093470180574370

`ceil((n+1)/(xor(n, n+1)+1))+val(n+1, 2)`
-/

namespace A330393.P9778093470180574370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A330393.P9778093470180574370

namespace A330393

/-- `ceil((n+1)/(xor(n, n+1)+1))+val(n+1, 2)` -/
def P9778093470180574370.Spec : Prop :=
  ∀ n, P9778093470180574370.a n = A330393 n

end A330393

/-! ## A330393.P14455579479296682896

`round((n+1)/(xor(n, n+1)+1))+val(n+1, 2)`
-/

namespace A330393.P14455579479296682896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A330393.P14455579479296682896

namespace A330393

/-- `round((n+1)/(xor(n, n+1)+1))+val(n+1, 2)` -/
def P14455579479296682896.Spec : Prop :=
  ∀ n, P14455579479296682896.a n = A330393 n

end A330393

/-! ## A330393.P10236505108092931450

`floor(n/(xor(n, n+1)+1))+log2(xor(n, n+1)+1)`
-/

namespace A330393.P10236505108092931450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℝ) + Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A330393.P10236505108092931450

namespace A330393

/-- `floor(n/(xor(n, n+1)+1))+log2(xor(n, n+1)+1)` -/
def P10236505108092931450.Spec : Prop :=
  ∀ n, P10236505108092931450.a n = (A330393 n : ℝ)

end A330393

/-! ## A330393.P9912788903172055241

`round(n/(xor(n, n+1)+1))+log2(xor(n, n+1)+1)`
-/

namespace A330393.P9912788903172055241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)) : ℝ) + Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

end

end A330393.P9912788903172055241

namespace A330393

/-- `round(n/(xor(n, n+1)+1))+log2(xor(n, n+1)+1)` -/
def P9912788903172055241.Spec : Prop :=
  ∀ n, P9912788903172055241.a n = (A330393 n : ℝ)

end A330393

/-! ## A330393.P16834842847112670659

`A271519(n+1)+1`
-/

namespace A330393.P16834842847112670659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (n + 1) + 1

end

end A330393.P16834842847112670659

namespace A330393

/-- `A271519(n+1)+1` -/
def P16834842847112670659.Spec : Prop :=
  ∀ n, P16834842847112670659.a n = A330393 n

end A330393

/-! ## A330393.P9398705670943035569

`A025480(n)+Δ[A005187(n)]`
-/

namespace A330393.P9398705670943035569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (f1 (n + 1) - f1 n)

end

end A330393.P9398705670943035569

namespace A330393

/-- `A025480(n)+Δ[A005187(n)]` -/
def P9398705670943035569.Spec : Prop :=
  ∀ n, P9398705670943035569.a n = A330393 n

end A330393

/-! ## A330393.P13522919440909131546

`A025480(n)+A001511(n+1)`
-/

namespace A330393.P13522919440909131546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A001511 (n + 1)

end

end A330393.P13522919440909131546

namespace A330393

/-- `A025480(n)+A001511(n+1)` -/
def P13522919440909131546.Spec : Prop :=
  ∀ n, P13522919440909131546.a n = A330393 n

end A330393

/-! ## A330393.P304915607481556154

`A025480(n)+A085058(n)-1`
-/

namespace A330393.P304915607481556154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + (A085058 n - 1)

end

end A330393.P304915607481556154

namespace A330393

/-- `A025480(n)+A085058(n)-1` -/
def P304915607481556154.Spec : Prop :=
  ∀ n, P304915607481556154.a n = A330393 n

end A330393

/-! ## A330393.P7208166554390448379

`A119674(n+1)-A025480(n)`
-/

namespace A330393.P7208166554390448379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (n + 1) - A025480 n

end

end A330393.P7208166554390448379

namespace A330393

/-- `A119674(n+1)-A025480(n)` -/
def P7208166554390448379.Spec : Prop :=
  ∀ n, P7208166554390448379.a n = A330393 n

end A330393

/-! ## A330393.P18312548171352747947

`A007814(n+1)+A025480(n)+1`
-/

namespace A330393.P18312548171352747947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A025480 n + 1)

end

end A330393.P18312548171352747947

namespace A330393

/-- `A007814(n+1)+A025480(n)+1` -/
def P18312548171352747947.Spec : Prop :=
  ∀ n, P18312548171352747947.a n = A330393 n

end A330393

/-! ## A330393.P4413015335899329910

`A089265(n+1)+1-A025480(n)`
-/

namespace A330393.P4413015335899329910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (n + 1) + (1 - A025480 n)

end

end A330393.P4413015335899329910

namespace A330393

/-- `A089265(n+1)+1-A025480(n)` -/
def P4413015335899329910.Spec : Prop :=
  ∀ n, P4413015335899329910.a n = A330393 n

end A330393

/-! ## A330393.P4871663321291527107

`A003602(n+1)+A085058(n)-2`
-/

namespace A330393.P4871663321291527107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + (A085058 n - 2)

end

end A330393.P4871663321291527107

namespace A330393

/-- `A003602(n+1)+A085058(n)-2` -/
def P4871663321291527107.Spec : Prop :=
  ∀ n, P4871663321291527107.a n = A330393 n

end A330393

/-! ## A330393.P11579355390865596936

`A001511(n+1)+A153733(n)/2`
-/

namespace A330393.P11579355390865596936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) : ℚ) + (A153733 n : ℚ) / 2

end

end A330393.P11579355390865596936

namespace A330393

/-- `A001511(n+1)+A153733(n)/2` -/
def P11579355390865596936.Spec : Prop :=
  ∀ n, P11579355390865596936.a n = (A330393 n : ℚ)

end A330393

/-!
# A330394: Irregular triangle T(n,k) read by rows in which n-th row lists in increasing order all integers m such that Omega(m) = n and each prime factor p of m has index pi(p) <= n.

The programs for A330394, there is no canonical definition to state claims against.
-/

/-! ## A330394.P16142870510621785466

`filter[A383174(n+1), A331281(#)]`
-/

namespace A330394.P16142870510621785466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A330394.P16142870510621785466

/-!
# A330395: Number of nontrivial equivalence classes of S_n under the {1234,3412} pattern-replacement equivalence.

The programs for A330395, the canonical program `A330395.P13704904103996138600` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330395 has offset 4).

The definition of A330395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330395.P13704904103996138600

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=26, a(3)=51, a(4)=85`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A330395

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13704904103996138600.Spec : Prop :=
  ∀ n, P13704904103996138600.a n = A330395 (n + 4)

theorem P13704904103996138600.correct : P13704904103996138600.Spec := by
  intro n
  simp only [A330395, Nat.add_sub_cancel]

end A330395

/-! ## A330395.P15738064943442145087

`abs(n+6-∑[∑[n+5]])`
-/

namespace A330395.P15738064943442145087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 6 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A330395.P15738064943442145087

namespace A330395

/-- `abs(n+6-∑[∑[n+5]])` -/
def P15738064943442145087.Spec : Prop :=
  ∀ n, P15738064943442145087.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P14297684412737042346

`A143058(n)+A130824(n)`
-/

namespace A330395.P14297684412737042346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A130824 n

end

end A330395.P14297684412737042346

namespace A330395

/-- `A143058(n)+A130824(n)` -/
def P14297684412737042346.Spec : Prop :=
  ∀ n, P14297684412737042346.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P15104747881158819220

`A394185(n)-A040002(n)`
-/

namespace A330395.P15104747881158819220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n - A040002 n

end

end A330395.P15104747881158819220

namespace A330395

/-- `A394185(n)-A040002(n)` -/
def P15104747881158819220.Spec : Prop :=
  ∀ n, P15104747881158819220.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P5833235831412097088

`∑[A151798(n)+A056115(n)]`
-/

namespace A330395.P5833235831412097088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n + A056115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330395.P5833235831412097088

namespace A330395

/-- `∑[A151798(n)+A056115(n)]` -/
def P5833235831412097088.Spec : Prop :=
  ∀ n, P5833235831412097088.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P5893113130123970704

`A164754(n+2)+A050407(n)`
-/

namespace A330395.P5893113130123970704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164754 (n + 2) + A050407 n

end

end A330395.P5893113130123970704

namespace A330395

/-- `A164754(n+2)+A050407(n)` -/
def P5893113130123970704.Spec : Prop :=
  ∀ n, P5893113130123970704.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P4753048857788567118

`record[A008778(n)-9*n]`
-/

namespace A330395.P4753048857788567118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n - (9 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330395.P4753048857788567118

namespace A330395

/-- `record[A008778(n)-9*n]` -/
def P4753048857788567118.Spec : Prop :=
  ∀ n, P4753048857788567118.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P16575672086878917733

`record[A027379(n)+a(n-1)-8]` with `a(0)=1`
-/

namespace A330395.P16575672086878917733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027379 n + (f1 (n - 1) - 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330395.P16575672086878917733

namespace A330395

/-- `record[A027379(n)+a(n-1)-8]` -/
def P16575672086878917733.Spec : Prop :=
  ∀ n, P16575672086878917733.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P7134824320814352364

`record[A034856(n+1)+a(n-1)-9]` with `a(0)=1`
-/

namespace A330395.P7134824320814352364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A034856 (n + 1) + (f1 (n - 1) - 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330395.P7134824320814352364

namespace A330395

/-- `record[A034856(n+1)+a(n-1)-9]` -/
def P7134824320814352364.Spec : Prop :=
  ∀ n, P7134824320814352364.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P77228919960983716

`record[A000096(n+1)+a(n-1)-10]` with `a(0)=1`
-/

namespace A330395.P77228919960983716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000096 (n + 1) + (f1 (n - 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330395.P77228919960983716

namespace A330395

/-- `record[A000096(n+1)+a(n-1)-10]` -/
def P77228919960983716.Spec : Prop :=
  ∀ n, P77228919960983716.a n = A330395 (n + 4)

end A330395

/-! ## A330395.P5562445321500886976

`record[A167614(n+1)+a(n-1)-14]` with `a(0)=1`
-/

namespace A330395.P5562445321500886976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A167614 (n + 1) + (f1 (n - 1) - 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330395.P5562445321500886976

namespace A330395

/-- `record[A167614(n+1)+a(n-1)-14]` -/
def P5562445321500886976.Spec : Prop :=
  ∀ n, P5562445321500886976.a n = A330395 (n + 4)

end A330395

/-!
# A330396: Permutation of the nonnegative integers partitioned into triples [3*k+2, 3*k+1, 3*k] for k >= 0.

The programs for A330396, the canonical program `A330396.P1695881560235866621` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330396 has offset 0).

The definition of A330396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330396.P1695881560235866621

`a(n-3)+3` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A330396

/-- `a(n-3)+3` -/
def P1695881560235866621.Spec : Prop :=
  ∀ n, (P1695881560235866621.a n : ℤ) = A330396 n

theorem P1695881560235866621.correct : P1695881560235866621.Spec := by
  intro n
  simp only [A330396]

end A330396

/-! ## A330396.P10310627927459209009

`n+2-2*n%3`
-/

namespace A330396.P10310627927459209009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (2 - ((2 * (n % 3) : ℕ) : ℤ))

end

end A330396.P10310627927459209009

namespace A330396

/-- `n+2-2*n%3` -/
def P10310627927459209009.Spec : Prop :=
  ∀ n, P10310627927459209009.a n = A330396 n

end A330396

/-! ## A330396.P9970177950029241076

`2-((2*n)%6-n)`
-/

namespace A330396.P9970177950029241076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((2 * n % 6 : ℕ) : ℤ) - (n : ℤ))

end

end A330396.P9970177950029241076

namespace A330396

/-- `2-((2*n)%6-n)` -/
def P9970177950029241076.Spec : Prop :=
  ∀ n, P9970177950029241076.a n = A330396 n

end A330396

/-! ## A330396.P16262615465415326345

`3-Δ[n²]%6+n`
-/

namespace A330396.P16262615465415326345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 6 + (n : ℤ)

end

end A330396.P16262615465415326345

namespace A330396

/-- `3-Δ[n²]%6+n` -/
def P16262615465415326345.Spec : Prop :=
  ∀ n, P16262615465415326345.a n = A330396 n

end A330396

/-! ## A330396.P7503312453564430914

`floor(n-tan((n+2)%3))`
-/

namespace A330396.P7503312453564430914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.tan (((n + 2) % 3 : ℕ) : ℝ)⌋

end

end A330396.P7503312453564430914

namespace A330396

/-- `floor(n-tan((n+2)%3))` -/
def P7503312453564430914.Spec : Prop :=
  ∀ n, P7503312453564430914.a n = A330396 n

end A330396

/-! ## A330396.P17547869595568166593

`round(n-tan((n-1)%3))`
-/

namespace A330396.P17547869595568166593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.tan (Int.tmod ((n : ℤ) - 1) 3 : ℝ))

end

end A330396.P17547869595568166593

namespace A330396

/-- `round(n-tan((n-1)%3))` -/
def P17547869595568166593.Spec : Prop :=
  ∀ n, P17547869595568166593.a n = A330396 n

end A330396

/-! ## A330396.P11783971079981137363

`-2*n%6+n+2`
-/

namespace A330396.P11783971079981137363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 * n : ℤ)) 6 + (n + 2 : ℤ)

end

end A330396.P11783971079981137363

namespace A330396

/-- `-2*n%6+n+2` -/
def P11783971079981137363.Spec : Prop :=
  ∀ n, P11783971079981137363.a n = A330396 n

end A330396

/-! ## A330396.P16402456135701620145

`n+1-Δ[gcd(3, n)+n]`
-/

namespace A330396.P16402456135701620145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A330396.P16402456135701620145

namespace A330396

/-- `n+1-Δ[gcd(3, n)+n]` -/
def P16402456135701620145.Spec : Prop :=
  ∀ n, P16402456135701620145.a n = A330396 n

end A330396

/-! ## A330396.P11807755010458277049

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=-1, a(2)=-1, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A330396.P11807755010458277049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, -1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330396.P11807755010458277049

namespace A330396

/-- `∑[floor(a(n-3))]` -/
def P11807755010458277049.Spec : Prop :=
  ∀ n, P11807755010458277049.a n = A330396 n

end A330396

/-! ## A330396.P2050482385004170770

`3-floor(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A330396.P2050482385004170770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  3 - (-a (n - 3))

end

end A330396.P2050482385004170770

namespace A330396

/-- `3-floor(-a(n-3))` -/
def P2050482385004170770.Spec : Prop :=
  ∀ n, P2050482385004170770.a n = A330396 n

end A330396

/-! ## A330396.P13058048323960580961

`3-ceil(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A330396.P13058048323960580961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  3 - (-a (n - 3))

end

end A330396.P13058048323960580961

namespace A330396

/-- `3-ceil(-a(n-3))` -/
def P13058048323960580961.Spec : Prop :=
  ∀ n, P13058048323960580961.a n = A330396 n

end A330396

/-! ## A330396.P15039666235255483062

`3-round(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A330396.P15039666235255483062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  3 - (-a (n - 3))

end

end A330396.P15039666235255483062

namespace A330396

/-- `3-round(-a(n-3))` -/
def P15039666235255483062.Spec : Prop :=
  ∀ n, P15039666235255483062.a n = A330396 n

end A330396

/-! ## A330396.P1082738835326920342

`∑[6*char[3*n]]-(n+4)`
-/

namespace A330396.P1082738835326920342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 4 : ℤ)

end

end A330396.P1082738835326920342

namespace A330396

/-- `∑[6*char[3*n]]-(n+4)` -/
def P1082738835326920342.Spec : Prop :=
  ∀ n, P1082738835326920342.a n = A330396 n

end A330396

/-! ## A330396.P1905450718163215568

`ceil(tan((2*n+1)%3)+n)`
-/

namespace A330396.P1905450718163215568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (((2 * n + 1) % 3 : ℕ) : ℝ) + (n : ℝ)⌉

end

end A330396.P1905450718163215568

namespace A330396

/-- `ceil(tan((2*n+1)%3)+n)` -/
def P1905450718163215568.Spec : Prop :=
  ∀ n, P1905450718163215568.a n = A330396 n

end A330396

/-! ## A330396.P8870825910347021988

`floor(n+2-sinh((n+3)%3))`
-/

namespace A330396.P8870825910347021988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) - Real.sinh (((n + 3) % 3 : ℕ) : ℝ)⌋

end

end A330396.P8870825910347021988

namespace A330396

/-- `floor(n+2-sinh((n+3)%3))` -/
def P8870825910347021988.Spec : Prop :=
  ∀ n, P8870825910347021988.a n = A330396 n

end A330396

/-! ## A330396.P9778972056554172638

`floor(a(n-3)-(a(a(n-3))-n))` with `a(0)=2, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A330396.P9778972056554172638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 0] fun n a =>
  a (n - 3) - (a (a (n - 3)).toNat - (n : ℤ))

end

end A330396.P9778972056554172638

namespace A330396

/-- `floor(a(n-3)-(a(a(n-3))-n))` -/
def P9778972056554172638.Spec : Prop :=
  ∀ n, P9778972056554172638.a n = A330396 n

end A330396

/-! ## A330396.P11712124034345568325

`abs(A113655(n+1)-1)`
-/

namespace A330396.P11712124034345568325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113655 (n + 1) - 1|

end

end A330396.P11712124034345568325

namespace A330396

/-- `abs(A113655(n+1)-1)` -/
def P11712124034345568325.Spec : Prop :=
  ∀ n, P11712124034345568325.a n = A330396 n

end A330396

/-! ## A330396.P626335801480128105

`A004483(A064429(n))`
-/

namespace A330396.P626335801480128105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A064429 n).toNat

end

end A330396.P626335801480128105

namespace A330396

/-- `A004483(A064429(n))` -/
def P626335801480128105.Spec : Prop :=
  ∀ n, P626335801480128105.a n = A330396 n

end A330396

/-! ## A330396.P6539693589705407750

`A004482(A236348(n))`
-/

namespace A330396.P6539693589705407750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A236348 n).toNat

end

end A330396.P6539693589705407750

namespace A330396

/-- `A004482(A236348(n))` -/
def P6539693589705407750.Spec : Prop :=
  ∀ n, P6539693589705407750.a n = A330396 n

end A330396

/-!
# A330397: Composite numbers k such that gpf(k)^2 + gpf(k) == 0 (mod k), where gpf(k) = A006530(k) is the greatest prime dividing k.

The programs for A330397, there is no canonical definition to state claims against.
-/

/-! ## A330397.P5397240669436614059

`A069059(comp[A206546(n+1)-n!])`
-/

namespace A330397.P5397240669436614059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206546 (n + 1) - (Nat.factorial n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A330397.P5397240669436614059

/-! ## A330397.P7204214656701935708

`A069059(comp[A069059(n+1)-A000330(n)])`
-/

namespace A330397.P7204214656701935708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1) - A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A330397.P7204214656701935708

/-! ## A330397.P4118973256990968393

`A024619(∑[A001223(n+1)^(A137567(n+1)%2)])`
-/

namespace A330397.P4118973256990968393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001223 (n + 1) : ℚ) ^ (Int.tmod (A137567 (n + 1)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330397.P4118973256990968393

/-!
# A330398: For any n > 0, let S_n(0) be the concatenation of the numbers in the range 1..n (in increasing order); for k=1..n, S_n(k) is obtained by removing the rightmost occurrence of k in S_n(k-1), if any; a(n) is the numerical value of S_n(n) (or 0 if S_n(n) is empty).

The programs for A330398, there is no canonical definition to state claims against.
-/

/-! ## A330398.P10080084274315272901

`A047220(A055934(n)^A038141(n+1))`
-/

namespace A330398.P10080084274315272901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (SequenceMachineLib.roundAway ((A055934 n : ℚ) ^ (A038141 (n + 1) : ℤ))).toNat

end

end A330398.P10080084274315272901

/-! ## A330398.P15052888735257190008

`A005187(floor(A017790(n+1)/A017769(3*n+2)))`
-/

namespace A330398.P15052888735257190008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(A017790 (n + 1) : ℚ) / (A017769 (3 * n + 2) : ℚ)⌋.toNat

end

end A330398.P15052888735257190008

