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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A235201: Self-inverse and multiplicative permutation of integers: a(0)=0, a(1)=1, a(2)=2, a(3)=4 and a(4)=3, a(p_i) = p_{a(i)} for primes with index i > 2, and for composites > 4, a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A235201, there is no canonical definition to state claims against.
-/

/-! ## A235201.P13251119930301641119

`A235485(A235487(n))`
-/

namespace A235201.P13251119930301641119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235485 (A235487 n).toNat

end

end A235201.P13251119930301641119

/-! ## A235201.P78434067561388094

`A235493(A235489(n))`
-/

namespace A235201.P78434067561388094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235493 (A235489 n).toNat

end

end A235201.P78434067561388094

/-! ## A235201.P3893550934758431273

`A235487(A235486(n))`
-/

namespace A235201.P3893550934758431273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A235486 n).toNat

end

end A235201.P3893550934758431273

/-! ## A235201.P15847618706685648471

`A235489(A235494(n))`
-/

namespace A235201.P15847618706685648471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A235494 n).toNat

end

end A235201.P15847618706685648471

/-!
# A235202: Numbers written in an alternating binary-then-quaternary base.

The programs for A235202, there is no canonical definition to state claims against.
-/

/-! ## A235202.P3300304510031544128

`eq[A000007(n), A137241(A106747(n))]`
-/

namespace A235202.P3300304510031544128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235202.P3300304510031544128

/-! ## A235202.P14044200211257769355

`eq[A057427(n), A263131(A106747(n))]`
-/

namespace A235202.P14044200211257769355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263131 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235202.P14044200211257769355

/-! ## A235202.P14939497054935964832

`eq[A019426(2*n), A161515(A106747(n))]`
-/

namespace A235202.P14939497054935964832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235202.P14939497054935964832

/-! ## A235202.P9131106361469788679

`eq[A105812(n+1)², A161515(A106747(n))]`
-/

namespace A235202.P9131106361469788679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235202.P9131106361469788679

/-! ## A235202.P6175641078083977806

`eq[A105812(2*n+1), A161515(A106747(n))]`
-/

namespace A235202.P6175641078083977806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 (A106747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235202.P6175641078083977806

/-!
# A235204: Number of integer lattice points inside the square ABCD with side length n>0 with A(0|0), B(n*sqrt(2)/2| n*sqrt(2)/2), C(0| n*sqrt(2)) and D(-n*sqrt(2)/2| n*sqrt(2)/2).

The programs for A235204, the canonical program `A235204.P8837262474928507807` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235204 has offset 1).

The definition of A235204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235204.P5279432527680511444

`ceil((floor(2*(n+1)/sqrt(2))+1)²/2)`
-/

namespace A235204.P5279432527680511444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((⌊(2 * (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1) ^ 2 : ℚ) / 2⌉

end

end A235204.P5279432527680511444

namespace A235204

/-- `ceil((floor(2*(n+1)/sqrt(2))+1)²/2)` -/
def P5279432527680511444.Spec : Prop :=
  ∀ n, P5279432527680511444.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P8837262474928507807

`round(A087057(n+1)²/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235204

/-- `round(A087057(n+1)²/2)` -/
def P8837262474928507807.Spec : Prop :=
  ∀ n, P8837262474928507807.a n = A235204 (n + 1)

theorem P8837262474928507807.correct : P8837262474928507807.Spec := by
  intro n
  simp only [A235204, Nat.add_sub_cancel]

end A235204

/-! ## A235204.P13751432372441335045

`A000982(floor((n+1)*sqrt(2))+1)`
-/

namespace A235204.P13751432372441335045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat

end

end A235204.P13751432372441335045

namespace A235204

/-- `A000982(floor((n+1)*sqrt(2))+1)` -/
def P13751432372441335045.Spec : Prop :=
  ∀ n, P13751432372441335045.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P3972996387961514103

`round((A003151(n+1)-n)²/2)`
-/

namespace A235204.P3972996387961514103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A003151 (n + 1) - (n : ℤ)) ^ 2 : ℚ) / 2)

end

end A235204.P3972996387961514103

namespace A235204

/-- `round((A003151(n+1)-n)²/2)` -/
def P3972996387961514103.Spec : Prop :=
  ∀ n, P3972996387961514103.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P266223805248894965

`A001971(2*(floor((n+1)*sqrt(2))+1))`
-/

namespace A235204.P266223805248894965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1)).toNat

end

end A235204.P266223805248894965

namespace A235204

/-- `A001971(2*(floor((n+1)*sqrt(2))+1))` -/
def P266223805248894965.Spec : Prop :=
  ∀ n, P266223805248894965.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P10887322798250361073

`round(abs(A187968(2*(n+1))-n)²/2)`
-/

namespace A235204.P10887322798250361073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|A187968 (2 * (n + 1)) - (n : ℤ)| ^ 2 : ℚ) / 2)

end

end A235204.P10887322798250361073

namespace A235204

/-- `round(abs(A187968(2*(n+1))-n)²/2)` -/
def P10887322798250361073.Spec : Prop :=
  ∀ n, P10887322798250361073.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P8649579695160807535

`A008818(A286909(n+1))`
-/

namespace A235204.P8649579695160807535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (A286909 (n + 1)).toNat

end

end A235204.P8649579695160807535

namespace A235204

/-- `A008818(A286909(n+1))` -/
def P8649579695160807535.Spec : Prop :=
  ∀ n, P8649579695160807535.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P1776994104448544821

`A251599(A091087(n+1)+1)`
-/

namespace A235204.P1776994104448544821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251599 (A091087 (n + 1) + 1).toNat

end

end A235204.P1776994104448544821

namespace A235204

/-- `A251599(A091087(n+1)+1)` -/
def P1776994104448544821.Spec : Prop :=
  ∀ n, P1776994104448544821.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P4672294965844320341

`A008619(A001951(n+1)²)+A001951(n+1)`
-/

namespace A235204.P4672294965844320341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001951 (n + 1) ^ 2).toNat + A001951 (n + 1)

end

end A235204.P4672294965844320341

namespace A235204

/-- `A008619(A001951(n+1)²)+A001951(n+1)` -/
def P4672294965844320341.Spec : Prop :=
  ∀ n, P4672294965844320341.a n = A235204 (n + 1)

end A235204

/-! ## A235204.P13453366365870132007

`A004525((A001951(n+1)+1)²)`
-/

namespace A235204.P13453366365870132007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((A001951 (n + 1) + 1) ^ 2).toNat

end

end A235204.P13453366365870132007

namespace A235204

/-- `A004525((A001951(n+1)+1)²)` -/
def P13453366365870132007.Spec : Prop :=
  ∀ n, P13453366365870132007.a n = A235204 (n + 1)

end A235204

/-!
# A235205: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235205, there is no canonical definition to state claims against.
-/

/-! ## A235205.P17241259207338148330

`A235212(∑[n]+1)`
-/

namespace A235205.P17241259207338148330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235205.P17241259207338148330

/-! ## A235205.P18110675394263697040

`record[A235212(n+1)]`
-/

namespace A235205.P18110675394263697040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235205.P18110675394263697040

/-! ## A235205.P8390940483741954103

`lcm(2, A235212(A000124(n)))`
-/

namespace A235205.P8390940483741954103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235212 (A000124 n).toNat)

end

end A235205.P8390940483741954103

/-! ## A235205.P7238051500041375409

`A007318(∑[n])*A235212(A000124(n))`
-/

namespace A235205.P7238051500041375409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A235212 (A000124 n).toNat

end

end A235205.P7238051500041375409

/-! ## A235205.P3235728742008424698

`A235212(A000124(n))+A085974(n+1)`
-/

namespace A235205.P3235728742008424698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A000124 n).toNat + A085974 (n + 1)

end

end A235205.P3235728742008424698

/-!
# A235206: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235206, there is no canonical definition to state claims against.
-/

/-! ## A235206.P7420330936426386261

`A235212(∑[n+1]+2)`
-/

namespace A235206.P7420330936426386261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235206.P7420330936426386261

/-! ## A235206.P7030385578765163282

`lcm(2, A235212(A133263(n+1)))`
-/

namespace A235206.P7030385578765163282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235212 (A133263 (n + 1)).toNat)

end

end A235206.P7030385578765163282

/-! ## A235206.P1768487488102028495

`record[gcd(A049600(n), A235212(n+2))]`
-/

namespace A235206.P1768487488102028495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A235212 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235206.P1768487488102028495

/-! ## A235206.P15058025447291531761

`record[root(A235212(n+2), A008276(n+1))]`
-/

namespace A235206.P15058025447291531761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235212 (n + 2) : ℝ) ^ (1 / (A008276 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235206.P15058025447291531761

/-! ## A235206.P2524736866060236361

`record[root(A235212(n+2), A008517(n+1))]`
-/

namespace A235206.P2524736866060236361
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235212 (n + 2) : ℝ) ^ (1 / (A008517 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235206.P2524736866060236361

/-!
# A235207: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235207, there is no canonical definition to state claims against.
-/

/-! ## A235207.P17282677209657797863

`A235212(∑[n+2]+4)`
-/

namespace A235207.P17282677209657797863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235207.P17282677209657797863

/-! ## A235207.P12773512366036523429

`lcm(2, A235212(A167614(n+1)))`
-/

namespace A235207.P12773512366036523429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235212 (A167614 (n + 1)).toNat)

end

end A235207.P12773512366036523429

/-! ## A235207.P883460365911970014

`lcm(4, A235212(A055998(n)+6))`
-/

namespace A235207.P883460365911970014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235212 (A055998 n + 6).toNat)

end

end A235207.P883460365911970014

/-! ## A235207.P7859214302069141168

`record[A235212(C(A000038(n)+n, 2)+3)]`
-/

namespace A235207.P7859214302069141168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (Nat.choose (A000038 n + (n : ℤ)).toNat 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235207.P7859214302069141168

/-! ## A235207.P12851843083160944792

`A235212(A167614(n+1))+A085974(n+1)`
-/

namespace A235207.P12851843083160944792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A167614 (n + 1)).toNat + A085974 (n + 1)

end

end A235207.P12851843083160944792

/-!
# A235208: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235208, there is no canonical definition to state claims against.
-/

/-! ## A235208.P5950418728099850531

`A235212(∑[n+3]+7)`
-/

namespace A235208.P5950418728099850531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235208.P5950418728099850531

/-! ## A235208.P10964540431451645055

`lcm(2, A235212(A141214(n)+7))`
-/

namespace A235208.P10964540431451645055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235212 (A141214 n + 7).toNat)

end

end A235208.P10964540431451645055

/-! ## A235208.P17151984988024808523

`record[A235212(A052905(n+2)-9*n)]`
-/

namespace A235208.P17151984988024808523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A052905 (n + 2) - (9 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235208.P17151984988024808523

/-! ## A235208.P12229752275590826225

`lcm(A076479(n+1), A235212(A055999(n)+10))`
-/

namespace A235208.P12229752275590826225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A235212 (A055999 n + 10).toNat)

end

end A235208.P12229752275590826225

/-! ## A235208.P8865438259616852482

`record[A235212(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A235208.P8865438259616852482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235208.P8865438259616852482

/-!
# A235209: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235209, there is no canonical definition to state claims against.
-/

/-! ## A235209.P5851329495493252461

`A235212(A374005(n+1))`
-/

namespace A235209.P5851329495493252461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A374005 (n + 1)).toNat

end

end A235209.P5851329495493252461

/-! ## A235209.P6478394426261149017

`A235212(A167499(n+3))`
-/

namespace A235209.P6478394426261149017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A167499 (n + 3)).toNat

end

end A235209.P6478394426261149017

/-! ## A235209.P8478286768497415267

`A235212(A155212(n)+13)`
-/

namespace A235209.P8478286768497415267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A155212 n + 13).toNat

end

end A235209.P8478286768497415267

/-! ## A235209.P1190746730857194035

`A235212(A056000(n)+15)`
-/

namespace A235209.P1190746730857194035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A056000 n + 15).toNat

end

end A235209.P1190746730857194035

/-! ## A235209.P6071659256827816413

`A235212(eq[7, A066657(n)])`
-/

namespace A235209.P6071659256827816413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235209.P6071659256827816413

/-!
# A235210: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235210, there is no canonical definition to state claims against.
-/

/-! ## A235210.P7551735985375860913

`A235212(A374007(n+1))`
-/

namespace A235210.P7551735985375860913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A374007 (n + 1)).toNat

end

end A235210.P7551735985375860913

/-! ## A235210.P15751979251710833816

`A235212(A056115(n)+21)`
-/

namespace A235210.P15751979251710833816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A056115 n + 21).toNat

end

end A235210.P15751979251710833816

/-! ## A235210.P13230216572200220363

`A235212(Δ[A264443(n)]+10)`
-/

namespace A235210.P13230216572200220363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (f1 (n + 1) - f1 n + 10).toNat

end

end A235210.P13230216572200220363

/-! ## A235210.P11509251504473579467

`A235212(A167499(n+4)+1)`
-/

namespace A235210.P11509251504473579467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A167499 (n + 4) + 1).toNat

end

end A235210.P11509251504473579467

/-! ## A235210.P9023802939697334224

`A235212(A167614(n+4)+3)`
-/

namespace A235210.P9023802939697334224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A167614 (n + 4) + 3).toNat

end

end A235210.P9023802939697334224

/-!
# A235211: Number of (n+1) X (7+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235211, there is no canonical definition to state claims against.
-/

/-! ## A235211.P7267215974826723585

`A235212(A374008(n+1))`
-/

namespace A235211.P7267215974826723585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (A374008 (n + 1)).toNat

end

end A235211.P7267215974826723585

/-! ## A235211.P10351416728522236350

`A235212(eq[4, A219347(n)])`
-/

namespace A235211.P10351416728522236350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235211.P10351416728522236350

/-! ## A235211.P6616322317092374978

`A235212(eq[6, A193592(n)])`
-/

namespace A235211.P6616322317092374978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235211.P6616322317092374978

/-! ## A235211.P1572131334691005132

`A235212(eq[11, A066657(n)])`
-/

namespace A235211.P1572131334691005132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235211.P1572131334691005132

/-! ## A235211.P13469706920554787603

`A235212(Δ[A023551(n+2)])`
-/

namespace A235211.P13469706920554787603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235212 (f1 (n + 1) - f1 n).toNat

end

end A235211.P13469706920554787603

/-!
# A235213: Nearest prime to (2^(e^-gamma))^n, where gamma is the Euler-Mascheroni constant.

The programs for A235213, there is no canonical definition to state claims against.
-/

/-! ## A235213.P5086017516705064042

`A175944(A224300(n+1)+A197211(n+1))`
-/

namespace A235213.P5086017516705064042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A224300 (n + 1) + A197211 (n + 1)).toNat

end

end A235213.P5086017516705064042

/-! ## A235213.P13250731016544045880

`A212300(A027024(n+3))`
-/

namespace A235213.P13250731016544045880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A027024 (n + 3)).toNat

end

end A235213.P13250731016544045880

/-! ## A235213.P5657258040643392401

`A212300(A027083(n+3))`
-/

namespace A235213.P5657258040643392401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A027083 (n + 3)).toNat

end

end A235213.P5657258040643392401

/-! ## A235213.P91302526703497710

`A056813(A038579(n+1))`
-/

namespace A235213.P91302526703497710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A038579 (n + 1)).toNat

end

end A235213.P91302526703497710

/-! ## A235213.P15689773747212744356

`A056813(A053210(n+1))`
-/

namespace A235213.P15689773747212744356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A053210 (n + 1)).toNat

end

end A235213.P15689773747212744356

/-!
# A235215: Number of (n+1) X (n+1) 0..2 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A235215, there is no canonical definition to state claims against.
-/

/-! ## A235215.P2887135363317852290

`A235223((n+1)²+n²)`
-/

namespace A235215.P2887135363317852290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 ((n + 1) ^ 2 + n ^ 2)

end

end A235215.P2887135363317852290

/-!
# A235216: Number of (n+1) X (1+1) 0..2 arrays with 2 X 2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A235216, there is no canonical definition to state claims against.
-/

/-! ## A235216.P9705138608943107121

`A235223(∑[n]+1)`
-/

namespace A235216.P9705138608943107121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235216.P9705138608943107121

/-! ## A235216.P14227597689149863298

`or(1, A235223(A000124(n)))`
-/

namespace A235216.P14227597689149863298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235223 (A000124 n).toNat)

end

end A235216.P14227597689149863298

/-! ## A235216.P18245426383806060126

`record[A010054(n)*A235223(n+1)]`
-/

namespace A235216.P18245426383806060126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235216.P18245426383806060126

/-! ## A235216.P4411410257843877522

`record[gcd(A221683(n+1), A235223(n+1))]`
-/

namespace A235216.P4411410257843877522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221683 (n + 1)) (A235223 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235216.P4411410257843877522

/-! ## A235216.P4559518494588847855

`record[gcd(A025581(n), A235223(n+1))]`
-/

namespace A235216.P4559518494588847855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A235223 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235216.P4559518494588847855

/-!
# A235217: Number of (n+1)X(2+1) 0..2 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A235217, there is no canonical definition to state claims against.
-/

/-! ## A235217.P9317632485158140761

`A235223(∑[n+1]+2)`
-/

namespace A235217.P9317632485158140761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235217.P9317632485158140761

/-! ## A235217.P5605623041519789369

`record[A010054(n)*A235223(n+2)]`
-/

namespace A235217.P5605623041519789369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235217.P5605623041519789369

/-! ## A235217.P16423981349966930356

`record[gcd(A025581(n), A235223(n+3))]`
-/

namespace A235217.P16423981349966930356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A235223 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235217.P16423981349966930356

/-! ## A235217.P3051288323096200843

`A033999(2*n)*A235223(A000096(n+1))`
-/

namespace A235217.P3051288323096200843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A235223 (A000096 (n + 1)).toNat

end

end A235217.P3051288323096200843

/-! ## A235217.P10710029625033841181

`A235223(A000096(n+1))%A275136(2*(n+1))`
-/

namespace A235217.P10710029625033841181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235223 (A000096 (n + 1)).toNat) (A275136 (2 * (n + 1)))

end

end A235217.P10710029625033841181

/-!
# A235218: Number of (n+1)X(3+1) 0..2 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A235218, there is no canonical definition to state claims against.
-/

/-! ## A235218.P10610471228937987202

`A235223(∑[n+2]+4)`
-/

namespace A235218.P10610471228937987202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235218.P10610471228937987202

/-! ## A235218.P16639182983648508046

`or(1, A235223(A167614(n+1)))`
-/

namespace A235218.P16639182983648508046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235223 (A167614 (n + 1)).toNat)

end

end A235218.P16639182983648508046

/-! ## A235218.P17513754054921117444

`A235223(A167614(n+1))*A284562(n)`
-/

namespace A235218.P17513754054921117444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (A167614 (n + 1)).toNat * A284562 n

end

end A235218.P17513754054921117444

/-! ## A235218.P16730814900016894180

`lcm(A020985(n), A235223(A167614(n+1)))`
-/

namespace A235218.P16730814900016894180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A235223 (A167614 (n + 1)).toNat)

end

end A235218.P16730814900016894180

/-! ## A235218.P1006027513297455831

`A235223(A167614(n+1))%A238143(n+1)`
-/

namespace A235218.P1006027513297455831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235223 (A167614 (n + 1)).toNat) (A238143 (n + 1))

end

end A235218.P1006027513297455831

/-!
# A235219: Number of (n+1)X(4+1) 0..2 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A235219, there is no canonical definition to state claims against.
-/

/-! ## A235219.P15289261226040993195

`A235223(A167614(n+2)+1)`
-/

namespace A235219.P15289261226040993195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (A167614 (n + 2) + 1).toNat

end

end A235219.P15289261226040993195

/-!
# A235220: Number of (n+1)X(5+1) 0..2 arrays with 2X2 edge jumps all no more than +1 in one of the clockwise or counterclockwise directions or both.

The programs for A235220, there is no canonical definition to state claims against.
-/

/-! ## A235220.P1076204586266113791

`A235223(A374005(n+1))`
-/

namespace A235220.P1076204586266113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (A374005 (n + 1)).toNat

end

end A235220.P1076204586266113791

/-! ## A235220.P11341485639709875728

`A235223(A167499(n+3))`
-/

namespace A235220.P11341485639709875728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (A167499 (n + 3)).toNat

end

end A235220.P11341485639709875728

/-!
# A235221: 

The programs for A235221, there is no canonical definition to state claims against.
-/

/-! ## A235221.P16768243056374693062

`A235223(A052905(n+3))`
-/

namespace A235221.P16768243056374693062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (A052905 (n + 3)).toNat

end

end A235221.P16768243056374693062

/-! ## A235221.P11395630555807003839

`A235223(eq[3, A219347(n)])`
-/

namespace A235221.P11395630555807003839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235221.P11395630555807003839

/-!
# A235222: 

The programs for A235222, there is no canonical definition to state claims against.
-/

/-! ## A235222.P11626552710875541030

`A235223(A161680(n+7)+7)`
-/

namespace A235222.P11626552710875541030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (A161680 (n + 7) + 7).toNat

end

end A235222.P11626552710875541030

/-! ## A235222.P12669953259788572722

`A235223(eq[4, A219347(n)])`
-/

namespace A235222.P12669953259788572722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235222.P12669953259788572722

/-!
# A235224: a(0) = 0, and for n > 0, a(n) = largest k such that A002110(k-1) <= n, where A002110(k) gives the k-th primorial number.

The programs for A235224, the canonical program `A235224.P9540919302901513135` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235224 has offset 0).

The definition of A235224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235224.P4751720338849467458

`A061395(A276086(n))`
-/

namespace A235224.P4751720338849467458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A276086 n).toNat

end

end A235224.P4751720338849467458

namespace A235224

/-- `A061395(A276086(n))` -/
def P4751720338849467458.Spec : Prop :=
  ∀ n, P4751720338849467458.a n = A235224 n

end A235224

/-! ## A235224.P16490782623709383447

`∑[char[A002110(n)]]`
-/

namespace A235224.P16490782623709383447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P16490782623709383447

namespace A235224

/-- `∑[char[A002110(n)]]` -/
def P16490782623709383447.Spec : Prop :=
  ∀ n, (P16490782623709383447.a n : ℤ) = A235224 n

end A235224

/-! ## A235224.P6084256610085358890

`∑[char[A034386(n)]]`
-/

namespace A235224.P6084256610085358890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P6084256610085358890

namespace A235224

/-- `∑[char[A034386(n)]]` -/
def P6084256610085358890.Spec : Prop :=
  ∀ n, (P6084256610085358890.a n : ℤ) = A235224 n

end A235224

/-! ## A235224.P5779005396665342577

`∑[char[A058694(n)]]`
-/

namespace A235224.P5779005396665342577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058694 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P5779005396665342577

namespace A235224

/-- `∑[char[A058694(n)]]` -/
def P5779005396665342577.Spec : Prop :=
  ∀ n, (P5779005396665342577.a n : ℤ) = A235224 n

end A235224

/-! ## A235224.P2409358709711631272

`∑[char[A171989(n)]]`
-/

namespace A235224.P2409358709711631272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171989 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P2409358709711631272

namespace A235224

/-- `∑[char[A171989(n)]]` -/
def P2409358709711631272.Spec : Prop :=
  ∀ n, (P2409358709711631272.a n : ℤ) = A235224 n

end A235224

/-! ## A235224.P9540919302901513135

`∑[char[A300951(n)]]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A235224

/-- `∑[char[A300951(n)]]` -/
def P9540919302901513135.Spec : Prop :=
  ∀ n, (P9540919302901513135.a n : ℤ) = A235224 n

theorem P9540919302901513135.correct : P9540919302901513135.Spec := by
  intro n
  simp only [A235224]

end A235224

/-! ## A235224.P2599968039324855059

`∑[char[A086568(n+1)]]`
-/

namespace A235224.P2599968039324855059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P2599968039324855059

namespace A235224

/-- `∑[char[A086568(n+1)]]` -/
def P2599968039324855059.Spec : Prop :=
  ∀ n, (P2599968039324855059.a n : ℤ) = A235224 n

end A235224

/-! ## A235224.P3881113903493508880

`A061395(A328571(n))`
-/

namespace A235224.P3881113903493508880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A328571 n).toNat

end

end A235224.P3881113903493508880

namespace A235224

/-- `A061395(A328571(n))` -/
def P3881113903493508880.Spec : Prop :=
  ∀ n, P3881113903493508880.a n = A235224 n

end A235224

/-! ## A235224.P18262729726919493959

`A328620(n)+A267263(n)`
-/

namespace A235224.P18262729726919493959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 n + A267263 n

end

end A235224.P18262729726919493959

namespace A235224

/-- `A328620(n)+A267263(n)` -/
def P18262729726919493959.Spec : Prop :=
  ∀ n, P18262729726919493959.a n = A235224 n

end A235224

/-! ## A235224.P17172541051918083709

`∑[char[A007947(A002182(n+1))]]`
-/

namespace A235224.P17172541051918083709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002182 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235224.P17172541051918083709

namespace A235224

/-- `∑[char[A007947(A002182(n+1))]]` -/
def P17172541051918083709.Spec : Prop :=
  ∀ n, (P17172541051918083709.a n : ℤ) = A235224 n

end A235224

/-! ## A235224.P5514830436414832972

`A079067(A328613(n)/A328612(n))`
-/

namespace A235224.P5514830436414832972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (SequenceMachineLib.roundAway ((A328613 n : ℚ) / (A328612 n : ℚ))).toNat

end

end A235224.P5514830436414832972

namespace A235224

/-- `A079067(A328613(n)/A328612(n))` -/
def P5514830436414832972.Spec : Prop :=
  ∀ n, P5514830436414832972.a n = A235224 n

end A235224

/-! ## A235224.P470400076763891757

`A079067(A006530(A328613(n)))`
-/

namespace A235224.P470400076763891757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A006530 (A328613 n).toNat).toNat

end

end A235224.P470400076763891757

namespace A235224

/-- `A079067(A006530(A328613(n)))` -/
def P470400076763891757.Spec : Prop :=
  ∀ n, P470400076763891757.a n = A235224 n

end A235224

/-! ## A235224.P11411354618644703432

`A328620(n)+A079067(A328613(n))`
-/

namespace A235224.P11411354618644703432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 n + A079067 (A328613 n).toNat

end

end A235224.P11411354618644703432

namespace A235224

/-- `A328620(n)+A079067(A328613(n))` -/
def P11411354618644703432.Spec : Prop :=
  ∀ n, P11411354618644703432.a n = A235224 n

end A235224

/-! ## A235224.P11628397002820523539

`A252735(A328613(n))`
-/

namespace A235224.P11628397002820523539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A328613 n).toNat

end

end A235224.P11628397002820523539

namespace A235224

/-- `A252735(A328613(n))` -/
def P11628397002820523539.Spec : Prop :=
  ∀ n, P11628397002820523539.a n = A235224 n

end A235224

/-! ## A235224.P5546493070764910591

`A029837(A029837(A032925(n+1)+n+1))`
-/

namespace A235224.P5546493070764910591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A029837 (A032925 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A235224.P5546493070764910591

namespace A235224

/-- `A029837(A029837(A032925(n+1)+n+1))` -/
def P5546493070764910591.Spec : Prop :=
  ∀ n, P5546493070764910591.a n = A235224 n

end A235224

/-! ## A235224.P12312732671086860402

`A029837(A070939(A367906(A367906(2*n+1))))`
-/

namespace A235224.P12312732671086860402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A070939 (A367906 (A367906 (2 * n + 1)).toNat).toNat).toNat

end

end A235224.P12312732671086860402

namespace A235224

/-- `A029837(A070939(A367906(A367906(2*n+1))))` -/
def P12312732671086860402.Spec : Prop :=
  ∀ n, P12312732671086860402.a n = A235224 n

end A235224

/-! ## A235224.P6875830492660804590

`A029837(A070939(A032911(n+1)))`
-/

namespace A235224.P6875830492660804590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A070939 (A032911 (n + 1)).toNat).toNat

end

end A235224.P6875830492660804590

namespace A235224

/-- `A029837(A070939(A032911(n+1)))` -/
def P6875830492660804590.Spec : Prop :=
  ∀ n, P6875830492660804590.a n = A235224 n

end A235224

/-!
# A235225: Numbers whose sum of digits is 14.

The programs for A235225, the canonical program `A235225.P2460599509591164425` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235225 has offset 1).

The definition of A235225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235225.P2460599509591164425

`∩[A273159(n+1), A017221(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A235225

/-- `∩[A273159(n+1), A017221(n)]` -/
def P2460599509591164425.Spec : Prop :=
  ∀ n, (P2460599509591164425.a n : ℤ) = A235225 (n + 1)

theorem P2460599509591164425.correct : P2460599509591164425.Spec := by
  intro n
  simp only [A235225, Nat.add_sub_cancel]

end A235225

/-! ## A235225.P8280724827859965542

`∩[A273159(n+1), A017245(n)-2]`
-/

namespace A235225.P8280724827859965542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P8280724827859965542

namespace A235225

/-- `∩[A273159(n+1), A017245(n)-2]` -/
def P8280724827859965542.Spec : Prop :=
  ∀ n, (P8280724827859965542.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P1787666665896280978

`∩[A026228(n+1), A273159(n+1)]`
-/

namespace A235225.P1787666665896280978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P1787666665896280978

namespace A235225

/-- `∩[A026228(n+1), A273159(n+1)]` -/
def P1787666665896280978.Spec : Prop :=
  ∀ n, (P1787666665896280978.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P15470342677599868268

`∩[A156638(n+1), A273159(n+1)]`
-/

namespace A235225.P15470342677599868268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P15470342677599868268

namespace A235225

/-- `∩[A156638(n+1), A273159(n+1)]` -/
def P15470342677599868268.Spec : Prop :=
  ∀ n, (P15470342677599868268.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P4853701085217176396

`∩[A273159(n+2), A063289(n+3)-2]`
-/

namespace A235225.P4853701085217176396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P4853701085217176396

namespace A235225

/-- `∩[A273159(n+2), A063289(n+3)-2]` -/
def P4853701085217176396.Spec : Prop :=
  ∀ n, (P4853701085217176396.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P13951226969692473097

`∩[A167711(n+1), A273159(n+1)]`
-/

namespace A235225.P13951226969692473097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P13951226969692473097

namespace A235225

/-- `∩[A167711(n+1), A273159(n+1)]` -/
def P13951226969692473097.Spec : Prop :=
  ∀ n, (P13951226969692473097.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P13949164822716173134

`∩[A085802(n+1), A017221(n)]`
-/

namespace A235225.P13949164822716173134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P13949164822716173134

namespace A235225

/-- `∩[A085802(n+1), A017221(n)]` -/
def P13949164822716173134.Spec : Prop :=
  ∀ n, (P13949164822716173134.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P3314792890143101063

`∩[A026228(n+1), A085802(n+1)]`
-/

namespace A235225.P3314792890143101063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235225.P3314792890143101063

namespace A235225

/-- `∩[A026228(n+1), A085802(n+1)]` -/
def P3314792890143101063.Spec : Prop :=
  ∀ n, (P3314792890143101063.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P11466965531830404181

`eq[14, A007953(n)]`
-/

namespace A235225.P11466965531830404181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235225.P11466965531830404181

namespace A235225

/-- `eq[14, A007953(n)]` -/
def P11466965531830404181.Spec : Prop :=
  ∀ n, (P11466965531830404181.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P16749852392934928963

`eq[2, A187150(A169805(n))]`
-/

namespace A235225.P16749852392934928963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187150 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235225.P16749852392934928963

namespace A235225

/-- `eq[2, A187150(A169805(n))]` -/
def P16749852392934928963.Spec : Prop :=
  ∀ n, (P16749852392934928963.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P5376743452031411810

`eq[A040182(n), A169805(n)]`
-/

namespace A235225.P5376743452031411810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235225.P5376743452031411810

namespace A235225

/-- `eq[A040182(n), A169805(n)]` -/
def P5376743452031411810.Spec : Prop :=
  ∀ n, (P5376743452031411810.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P15666980602724459225

`eq[2, A004086(A136614(n)+1)]`
-/

namespace A235225.P15666980602724459225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A136614 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235225.P15666980602724459225

namespace A235225

/-- `eq[2, A004086(A136614(n)+1)]` -/
def P15666980602724459225.Spec : Prop :=
  ∀ n, (P15666980602724459225.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P17437519810775622416

`lt[A217558(A007953(n)+2), 2]`
-/

namespace A235225.P17437519810775622416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A007953 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235225.P17437519810775622416

namespace A235225

/-- `lt[A217558(A007953(n)+2), 2]` -/
def P17437519810775622416.Spec : Prop :=
  ∀ n, (P17437519810775622416.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P15038586993564421893

`eq[4, A138472(A169805(n)/2)]`
-/

namespace A235225.P15038586993564421893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138472 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235225.P15038586993564421893

namespace A235225

/-- `eq[4, A138472(A169805(n)/2)]` -/
def P15038586993564421893.Spec : Prop :=
  ∀ n, (P15038586993564421893.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P12562443679809065774

`eq[7, A006370(A169805(n)/2)]`
-/

namespace A235225.P12562443679809065774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235225.P12562443679809065774

namespace A235225

/-- `eq[7, A006370(A169805(n)/2)]` -/
def P12562443679809065774.Spec : Prop :=
  ∀ n, (P12562443679809065774.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P17218003677769902700

`eq[9, A061762(A169805(n)/2)]`
-/

namespace A235225.P17218003677769902700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235225.P17218003677769902700

namespace A235225

/-- `eq[9, A061762(A169805(n)/2)]` -/
def P17218003677769902700.Spec : Prop :=
  ∀ n, (P17218003677769902700.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P7464248953557841332

`eq[A040072(n)+1, A136614(n)]`
-/

namespace A235225.P7464248953557841332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040072 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235225.P7464248953557841332

namespace A235225

/-- `eq[A040072(n)+1, A136614(n)]` -/
def P7464248953557841332.Spec : Prop :=
  ∀ n, (P7464248953557841332.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P14423060240739289676

`eq[A062028(n), A125726(n+1)]`
-/

namespace A235225.P14423060240739289676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235225.P14423060240739289676

namespace A235225

/-- `eq[A062028(n), A125726(n+1)]` -/
def P14423060240739289676.Spec : Prop :=
  ∀ n, (P14423060240739289676.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P18352662775374829185

`eq[A040156(n)+2, A169805(n)]`
-/

namespace A235225.P18352662775374829185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040156 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235225.P18352662775374829185

namespace A235225

/-- `eq[A040156(n)+2, A169805(n)]` -/
def P18352662775374829185.Spec : Prop :=
  ∀ n, (P18352662775374829185.a n : ℤ) = A235225 (n + 1)

end A235225

/-! ## A235225.P3008239479731617036

`eq[A154034(n+3), A169805(n)]`
-/

namespace A235225.P3008239479731617036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154034 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235225.P3008239479731617036

namespace A235225

/-- `eq[A154034(n+3), A169805(n)]` -/
def P3008239479731617036.Spec : Prop :=
  ∀ n, (P3008239479731617036.a n : ℤ) = A235225 (n + 1)

end A235225

/-!
# A235226: Numbers whose sum of digits is 15.

The programs for A235226, the canonical program `A235226.P5349840113162180698` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235226 has offset 1).

The definition of A235226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235226.P5349840113162180698

`∩[A227793(n+1), A017233(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235226

/-- `∩[A227793(n+1), A017233(n)]` -/
def P5349840113162180698.Spec : Prop :=
  ∀ n, (P5349840113162180698.a n : ℤ) = A235226 (n + 1)

theorem P5349840113162180698.correct : P5349840113162180698.Spec := by
  intro n
  simp only [A235226, Nat.add_sub_cancel]

end A235226

/-! ## A235226.P12418490509705652432

`∩[A227793(n+1), A122709(n)]`
-/

namespace A235226.P12418490509705652432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P12418490509705652432

namespace A235226

/-- `∩[A227793(n+1), A122709(n)]` -/
def P12418490509705652432.Spec : Prop :=
  ∀ n, (P12418490509705652432.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P13585518455471962159

`∩[A227793(n+1), A179805(n)]`
-/

namespace A235226.P13585518455471962159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P13585518455471962159

namespace A235226

/-- `∩[A227793(n+1), A179805(n)]` -/
def P13585518455471962159.Spec : Prop :=
  ∀ n, (P13585518455471962159.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P15932735403053885462

`∩[A026222(n+1), A227793(n+1)]`
-/

namespace A235226.P15932735403053885462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P15932735403053885462

namespace A235226

/-- `∩[A026222(n+1), A227793(n+1)]` -/
def P15932735403053885462.Spec : Prop :=
  ∀ n, (P15932735403053885462.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P2863202659254201400

`∩[A055040(n+1), A227793(n+1)]`
-/

namespace A235226.P2863202659254201400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P2863202659254201400

namespace A235226

/-- `∩[A055040(n+1), A227793(n+1)]` -/
def P2863202659254201400.Spec : Prop :=
  ∀ n, (P2863202659254201400.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P2105420053071915429

`∩[A227793(n+1), A245094(n)]`
-/

namespace A235226.P2105420053071915429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P2105420053071915429

namespace A235226

/-- `∩[A227793(n+1), A245094(n)]` -/
def P2105420053071915429.Spec : Prop :=
  ∀ n, (P2105420053071915429.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P1933873127210235854

`∩[A087144(n+1), A187744(n+1)]`
-/

namespace A235226.P1933873127210235854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P1933873127210235854

namespace A235226

/-- `∩[A087144(n+1), A187744(n+1)]` -/
def P1933873127210235854.Spec : Prop :=
  ∀ n, (P1933873127210235854.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P16531389740707095112

`eq[15, A007953(n)]`
-/

namespace A235226.P16531389740707095112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235226.P16531389740707095112

namespace A235226

/-- `eq[15, A007953(n)]` -/
def P16531389740707095112.Spec : Prop :=
  ∀ n, (P16531389740707095112.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P2262861119228352003

`eq[30, A169805(n)]`
-/

namespace A235226.P2262861119228352003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235226.P2262861119228352003

namespace A235226

/-- `eq[30, A169805(n)]` -/
def P2262861119228352003.Spec : Prop :=
  ∀ n, (P2262861119228352003.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P9774875440542986708

`eq[12, A004086(A136614(n))]`
-/

namespace A235226.P9774875440542986708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A136614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A235226.P9774875440542986708

namespace A235226

/-- `eq[12, A004086(A136614(n))]` -/
def P9774875440542986708.Spec : Prop :=
  ∀ n, (P9774875440542986708.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P8826716408309439049

`eq[A057147(n), A168106(n)]`
-/

namespace A235226.P8826716408309439049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235226.P8826716408309439049

namespace A235226

/-- `eq[A057147(n), A168106(n)]` -/
def P8826716408309439049.Spec : Prop :=
  ∀ n, (P8826716408309439049.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P14768413028320001014

`eq[A136614(n), A168100(n)]`
-/

namespace A235226.P14768413028320001014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235226.P14768413028320001014

namespace A235226

/-- `eq[A136614(n), A168100(n)]` -/
def P14768413028320001014.Spec : Prop :=
  ∀ n, (P14768413028320001014.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P7294548248912401738

`eq[A136614(n), A271491(n)]`
-/

namespace A235226.P7294548248912401738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235226.P7294548248912401738

namespace A235226

/-- `eq[A136614(n), A271491(n)]` -/
def P7294548248912401738.Spec : Prop :=
  ∀ n, (P7294548248912401738.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P16427531039489700833

`lt[A217558(A007953(n)+1), 2]`
-/

namespace A235226.P16427531039489700833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217558 (A007953 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A235226.P16427531039489700833

namespace A235226

/-- `lt[A217558(A007953(n)+1), 2]` -/
def P16427531039489700833.Spec : Prop :=
  ∀ n, (P16427531039489700833.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P7169092746986125273

`eq[A060275(n+1), A062028(n)]`
-/

namespace A235226.P7169092746986125273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235226.P7169092746986125273

namespace A235226

/-- `eq[A060275(n+1), A062028(n)]` -/
def P7169092746986125273.Spec : Prop :=
  ∀ n, (P7169092746986125273.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P3295335257247711428

`eq[A062028(n), A125726(n+2)]`
-/

namespace A235226.P3295335257247711428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125726 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235226.P3295335257247711428

namespace A235226

/-- `eq[A062028(n), A125726(n+2)]` -/
def P3295335257247711428.Spec : Prop :=
  ∀ n, (P3295335257247711428.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P8644663404476402445

`eq[A060275(n+1)+1, A160939(n+1)]`
-/

namespace A235226.P8644663404476402445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060275 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A235226.P8644663404476402445

namespace A235226

/-- `eq[A060275(n+1)+1, A160939(n+1)]` -/
def P8644663404476402445.Spec : Prop :=
  ∀ n, (P8644663404476402445.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P2986332663115251929

`∩[A141640(n+1), A017233(n)]`
-/

namespace A235226.P2986332663115251929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P2986332663115251929

namespace A235226

/-- `∩[A141640(n+1), A017233(n)]` -/
def P2986332663115251929.Spec : Prop :=
  ∀ n, (P2986332663115251929.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P11442262729048615968

`∩[A141640(n+1), A017245(n)-1]`
-/

namespace A235226.P11442262729048615968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P11442262729048615968

namespace A235226

/-- `∩[A141640(n+1), A017245(n)-1]` -/
def P11442262729048615968.Spec : Prop :=
  ∀ n, (P11442262729048615968.a n : ℤ) = A235226 (n + 1)

end A235226

/-! ## A235226.P1266278656990607323

`∩[A130877(2*(n+1))+1, A141640(n+2)]`
-/

namespace A235226.P1266278656990607323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141640 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P1266278656990607323

namespace A235226

/-- `∩[A130877(2*(n+1))+1, A141640(n+2)]` -/
def P1266278656990607323.Spec : Prop :=
  ∀ n, (P1266278656990607323.a n : ℤ) = A235226 (n + 1)

end A235226

/-!
# A235227: Numbers whose sum of digits is 16.

The programs for A235227, the canonical program `A235227.P8259672704330077809` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235227 has offset 1).

The definition of A235227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235227.P8259672704330077809

`∩[A028838(n+1), A017245(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A235227

/-- `∩[A028838(n+1), A017245(n)]` -/
def P8259672704330077809.Spec : Prop :=
  ∀ n, (P8259672704330077809.a n : ℤ) = A235227 (n + 1)

theorem P8259672704330077809.correct : P8259672704330077809.Spec := by
  intro n
  simp only [A235227, Nat.add_sub_cancel]

end A235227

/-! ## A235227.P14662141317629122954

`∩[A028838(n+1), A017257(n)-1]`
-/

namespace A235227.P14662141317629122954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P14662141317629122954

namespace A235227

/-- `∩[A028838(n+1), A017257(n)-1]` -/
def P14662141317629122954.Spec : Prop :=
  ∀ n, (P14662141317629122954.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P9681993547782292753

`∩[A273188(n+1), A017245(n)]`
-/

namespace A235227.P9681993547782292753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P9681993547782292753

namespace A235227

/-- `∩[A273188(n+1), A017245(n)]` -/
def P9681993547782292753.Spec : Prop :=
  ∀ n, (P9681993547782292753.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P17817201487489055811

`∩[A028839(n+1), A273188(n+1)]`
-/

namespace A235227.P17817201487489055811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P17817201487489055811

namespace A235227

/-- `∩[A028839(n+1), A273188(n+1)]` -/
def P17817201487489055811.Spec : Prop :=
  ∀ n, (P17817201487489055811.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P8001316626436591567

`∩[A273188(n+1), A017257(n)-1]`
-/

namespace A235227.P8001316626436591567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P8001316626436591567

namespace A235227

/-- `∩[A273188(n+1), A017257(n)-1]` -/
def P8001316626436591567.Spec : Prop :=
  ∀ n, (P8001316626436591567.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P1596568754105093534

`∩[A026226(n+1), A273188(n+1)]`
-/

namespace A235227.P1596568754105093534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P1596568754105093534

namespace A235227

/-- `∩[A026226(n+1), A273188(n+1)]` -/
def P1596568754105093534.Spec : Prop :=
  ∀ n, (P1596568754105093534.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P1898018638519533651

`∩[A026231(n+1)-1, A273188(n+1)]`
-/

namespace A235227.P1898018638519533651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026231 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P1898018638519533651

namespace A235227

/-- `∩[A026231(n+1)-1, A273188(n+1)]` -/
def P1898018638519533651.Spec : Prop :=
  ∀ n, (P1898018638519533651.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P3848546575157868682

`∩[A125758(n+1), A273188(n+1)]`
-/

namespace A235227.P3848546575157868682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P3848546575157868682

namespace A235227

/-- `∩[A125758(n+1), A273188(n+1)]` -/
def P3848546575157868682.Spec : Prop :=
  ∀ n, (P3848546575157868682.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P14364000114267102094

`∩[A273188(n+1), A301451(n+1)]`
-/

namespace A235227.P14364000114267102094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P14364000114267102094

namespace A235227

/-- `∩[A273188(n+1), A301451(n+1)]` -/
def P14364000114267102094.Spec : Prop :=
  ∀ n, (P14364000114267102094.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P11434166036659424558

`∩[A273188(n+1), A063289(n+2)]`
-/

namespace A235227.P11434166036659424558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P11434166036659424558

namespace A235227

/-- `∩[A273188(n+1), A063289(n+2)]` -/
def P11434166036659424558.Spec : Prop :=
  ∀ n, (P11434166036659424558.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P18068884563811932917

`∩[A028838(n+1), A156638(n+1)+2]`
-/

namespace A235227.P18068884563811932917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P18068884563811932917

namespace A235227

/-- `∩[A028838(n+1), A156638(n+1)+2]` -/
def P18068884563811932917.Spec : Prop :=
  ∀ n, (P18068884563811932917.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P13132424125019368423

`∩[A028838(n+1), A274406(n+1)-2]`
-/

namespace A235227.P13132424125019368423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P13132424125019368423

namespace A235227

/-- `∩[A028838(n+1), A274406(n+1)-2]` -/
def P13132424125019368423.Spec : Prop :=
  ∀ n, (P13132424125019368423.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P14017199495597854493

`∩[A056020(n+2)-1, A273188(n+2)]`
-/

namespace A235227.P14017199495597854493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P14017199495597854493

namespace A235227

/-- `∩[A056020(n+2)-1, A273188(n+2)]` -/
def P14017199495597854493.Spec : Prop :=
  ∀ n, (P14017199495597854493.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P13333567050047934654

`∩[A056991(2*n+1), A273188(n+2)]`
-/

namespace A235227.P13333567050047934654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P13333567050047934654

namespace A235227

/-- `∩[A056991(2*n+1), A273188(n+2)]` -/
def P13333567050047934654.Spec : Prop :=
  ∀ n, (P13333567050047934654.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P15476868956792520095

`∩[A253195(2*n+1)+2, A028838(n+2)]`
-/

namespace A235227.P15476868956792520095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P15476868956792520095

namespace A235227

/-- `∩[A253195(2*n+1)+2, A028838(n+2)]` -/
def P15476868956792520095.Spec : Prop :=
  ∀ n, (P15476868956792520095.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P1032826976908346587

`∩[A268620(n+1), A017245(n)]`
-/

namespace A235227.P1032826976908346587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P1032826976908346587

namespace A235227

/-- `∩[A268620(n+1), A017245(n)]` -/
def P1032826976908346587.Spec : Prop :=
  ∀ n, (P1032826976908346587.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P14695465439849383353

`∩[A268620(n+1), A017257(n)-1]`
-/

namespace A235227.P14695465439849383353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P14695465439849383353

namespace A235227

/-- `∩[A268620(n+1), A017257(n)-1]` -/
def P14695465439849383353.Spec : Prop :=
  ∀ n, (P14695465439849383353.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P10121039311731151000

`∩[A273188(n+1), A016777(n)]`
-/

namespace A235227.P10121039311731151000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P10121039311731151000

namespace A235227

/-- `∩[A273188(n+1), A016777(n)]` -/
def P10121039311731151000.Spec : Prop :=
  ∀ n, (P10121039311731151000.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P6304778920955785757

`∩[A273188(n+1), A112414(n)]`
-/

namespace A235227.P6304778920955785757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P6304778920955785757

namespace A235227

/-- `∩[A273188(n+1), A112414(n)]` -/
def P6304778920955785757.Spec : Prop :=
  ∀ n, (P6304778920955785757.a n : ℤ) = A235227 (n + 1)

end A235227

/-! ## A235227.P16521879453186003255

`∩[A033627(n+1), A273188(n+1)]`
-/

namespace A235227.P16521879453186003255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235227.P16521879453186003255

namespace A235227

/-- `∩[A033627(n+1), A273188(n+1)]` -/
def P16521879453186003255.Spec : Prop :=
  ∀ n, (P16521879453186003255.a n : ℤ) = A235227 (n + 1)

end A235227

/-!
# A235228: Numbers whose sum of digits is 18.

The programs for A235228, there is no canonical definition to state claims against.
-/

/-! ## A235228.P14583571123553384144

`9*A279769(n+1)`
-/

namespace A235228.P14583571123553384144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A279769 (n + 1)

end

end A235228.P14583571123553384144

/-! ## A235228.P8500149615098072902

`A008591(A279769(n+1))`
-/

namespace A235228.P8500149615098072902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A279769 (n + 1)).toNat

end

end A235228.P8500149615098072902

/-! ## A235228.P1575387860923929912

`∩[A167711(n+1), 9*n]`
-/

namespace A235228.P1575387860923929912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235228.P1575387860923929912

/-! ## A235228.P5882004225474167594

`∩[A090570(n+1), A167711(n+1)]`
-/

namespace A235228.P5882004225474167594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235228.P5882004225474167594

/-! ## A235228.P12059447541380596652

`A008585(A016777(A279769(n+1))-1)`
-/

namespace A235228.P12059447541380596652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A016777 (A279769 (n + 1)).toNat - 1).toNat

end

end A235228.P12059447541380596652

/-! ## A235228.P2265327391102101184

`A008585(A279769(n+1)+A005843(A279769(n+1)))`
-/

namespace A235228.P2265327391102101184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A279769 (n + 1) + A005843 (A279769 (n + 1)).toNat).toNat

end

end A235228.P2265327391102101184

/-! ## A235228.P6376271767575125295

`A008591(eq[18, A007953(A008591(n))])`
-/

namespace A235228.P6376271767575125295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A008591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235228.P6376271767575125295

/-! ## A235228.P8362762763160100086

`A270264(A320707(n+1)+1)`
-/

namespace A235228.P8362762763160100086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270264 (A320707 (n + 1) + 1).toNat

end

end A235228.P8362762763160100086

/-! ## A235228.P11878885559961637700

`∩[A054683(n+2), A008585(A008585(n))]`
-/

namespace A235228.P11878885559961637700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A008585 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235228.P11878885559961637700

/-! ## A235228.P6256033369929682651

`A008585(A008585(A279769(n+1))%A252305(n+1))`
-/

namespace A235228.P6256033369929682651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (Int.tmod (A008585 (A279769 (n + 1)).toNat) (A252305 (n + 1))).toNat

end

end A235228.P6256033369929682651

/-!
# A235229: Numbers whose sum of digits is 20.

The programs for A235229, the canonical program `A235229.P14870552725123267920` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235229 has offset 1).

The definition of A235229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235229.P9999942845098801682

`∩[A094677(n+1), 9*n+2]`
-/

namespace A235229.P9999942845098801682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A235229.P9999942845098801682

namespace A235229

/-- `∩[A094677(n+1), 9*n+2]` -/
def P9999942845098801682.Spec : Prop :=
  ∀ n, (P9999942845098801682.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P14870552725123267920

`∩[A227793(n+1), A017185(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235229

/-- `∩[A227793(n+1), A017185(n)]` -/
def P14870552725123267920.Spec : Prop :=
  ∀ n, (P14870552725123267920.a n : ℤ) = A235229 (n + 1)

theorem P14870552725123267920.correct : P14870552725123267920.Spec := by
  intro n
  simp only [A235229, Nat.add_sub_cancel]

end A235229

/-! ## A235229.P16230482447495675154

`∩[A056020(n+1)+1, A094677(n+1)]`
-/

namespace A235229.P16230482447495675154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P16230482447495675154

namespace A235229

/-- `∩[A056020(n+1)+1, A094677(n+1)]` -/
def P16230482447495675154.Spec : Prop :=
  ∀ n, (P16230482447495675154.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P14544792106558824506

`∩[A087444(n+1)+1, A094677(n+1)]`
-/

namespace A235229.P14544792106558824506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P14544792106558824506

namespace A235229

/-- `∩[A087444(n+1)+1, A094677(n+1)]` -/
def P14544792106558824506.Spec : Prop :=
  ∀ n, (P14544792106558824506.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P7779839723871966941

`∩[9*n+2, A268620(n+2)]`
-/

namespace A235229.P7779839723871966941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P7779839723871966941

namespace A235229

/-- `∩[9*n+2, A268620(n+2)]` -/
def P7779839723871966941.Spec : Prop :=
  ∀ n, (P7779839723871966941.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P16300225966298027780

`∩[A268620(n+1), A017185(n)]`
-/

namespace A235229.P16300225966298027780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P16300225966298027780

namespace A235229

/-- `∩[A268620(n+1), A017185(n)]` -/
def P16300225966298027780.Spec : Prop :=
  ∀ n, (P16300225966298027780.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P17204292825458090950

`∩[A268620(n+1), A017197(n)-1]`
-/

namespace A235229.P17204292825458090950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P17204292825458090950

namespace A235229

/-- `∩[A268620(n+1), A017197(n)-1]` -/
def P17204292825458090950.Spec : Prop :=
  ∀ n, (P17204292825458090950.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P15118643930906815887

`∩[A268620(n+1), A017209(n)-2]`
-/

namespace A235229.P15118643930906815887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P15118643930906815887

namespace A235229

/-- `∩[A268620(n+1), A017209(n)-2]` -/
def P15118643930906815887.Spec : Prop :=
  ∀ n, (P15118643930906815887.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P7620751457098736113

`∩[A061570(n+1), A094677(n+1)]`
-/

namespace A235229.P7620751457098736113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P7620751457098736113

namespace A235229

/-- `∩[A061570(n+1), A094677(n+1)]` -/
def P7620751457098736113.Spec : Prop :=
  ∀ n, (P7620751457098736113.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P15780077206369528249

`∩[A003663(n+1)+1, A094677(n+1)]`
-/

namespace A235229.P15780077206369528249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P15780077206369528249

namespace A235229

/-- `∩[A003663(n+1)+1, A094677(n+1)]` -/
def P15780077206369528249.Spec : Prop :=
  ∀ n, (P15780077206369528249.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P15991170473012673469

`∩[A033627(n+1)+1, A094677(n+1)]`
-/

namespace A235229.P15991170473012673469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P15991170473012673469

namespace A235229

/-- `∩[A033627(n+1)+1, A094677(n+1)]` -/
def P15991170473012673469.Spec : Prop :=
  ∀ n, (P15991170473012673469.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P12806315646614425958

`∩[A060470(n+1)+1, A094677(n+1)]`
-/

namespace A235229.P12806315646614425958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060470 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P12806315646614425958

namespace A235229

/-- `∩[A060470(n+1)+1, A094677(n+1)]` -/
def P12806315646614425958.Spec : Prop :=
  ∀ n, (P12806315646614425958.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P8877743405619568994

`∩[A086822(n+1)+1, A094677(n+1)]`
-/

namespace A235229.P8877743405619568994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086822 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P8877743405619568994

namespace A235229

/-- `∩[A086822(n+1)+1, A094677(n+1)]` -/
def P8877743405619568994.Spec : Prop :=
  ∀ n, (P8877743405619568994.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P16585627260834172192

`∩[A112414(n+1)+1, A094677(n+2)]`
-/

namespace A235229.P16585627260834172192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P16585627260834172192

namespace A235229

/-- `∩[A112414(n+1)+1, A094677(n+2)]` -/
def P16585627260834172192.Spec : Prop :=
  ∀ n, (P16585627260834172192.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P5440313630633129945

`∩[A028837(n+1)-2, A094677(n+1)]`
-/

namespace A235229.P5440313630633129945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P5440313630633129945

namespace A235229

/-- `∩[A028837(n+1)-2, A094677(n+1)]` -/
def P5440313630633129945.Spec : Prop :=
  ∀ n, (P5440313630633129945.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P15510419587203621429

`∩[A055048(n+1), A094677(n+1)]`
-/

namespace A235229.P15510419587203621429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P15510419587203621429

namespace A235229

/-- `∩[A055048(n+1), A094677(n+1)]` -/
def P15510419587203621429.Spec : Prop :=
  ∀ n, (P15510419587203621429.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P11371276145518154914

`∩[A055047(n+1)-2, A094677(n+1)]`
-/

namespace A235229.P11371276145518154914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P11371276145518154914

namespace A235229

/-- `∩[A055047(n+1)-2, A094677(n+1)]` -/
def P11371276145518154914.Spec : Prop :=
  ∀ n, (P11371276145518154914.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P8583284154129169180

`∩[A141641(n+1), A017185(n)]`
-/

namespace A235229.P8583284154129169180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P8583284154129169180

namespace A235229

/-- `∩[A141641(n+1), A017185(n)]` -/
def P8583284154129169180.Spec : Prop :=
  ∀ n, (P8583284154129169180.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P8423818699689172293

`∩[A026179(n+1), A094677(n+1)]`
-/

namespace A235229.P8423818699689172293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P8423818699689172293

namespace A235229

/-- `∩[A026179(n+1), A094677(n+1)]` -/
def P8423818699689172293.Spec : Prop :=
  ∀ n, (P8423818699689172293.a n : ℤ) = A235229 (n + 1)

end A235229

/-! ## A235229.P14519919524533065870

`∩[A268620(n+1), A008486(A008486(n))+2]`
-/

namespace A235229.P14519919524533065870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A008486 n).toNat + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P14519919524533065870

namespace A235229

/-- `∩[A268620(n+1), A008486(A008486(n))+2]` -/
def P14519919524533065870.Spec : Prop :=
  ∀ n, (P14519919524533065870.a n : ℤ) = A235229 (n + 1)

end A235229

/-!
# A235230: Integer radii of circles tiled by square tiles such that the ratio of uncut tiles to cut tiles is an integer and four square tiles meet at the center of the circle.

The programs for A235230, there is no canonical definition to state claims against.
-/

/-! ## A235230.P10003387693116731578

`lcm(A000005(A001021(n)), A200475(n))`
-/

namespace A235230.P10003387693116731578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A001021 n).toNat) (A200475 n)

end

end A235230.P10003387693116731578

/-!
# A235231: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235231, there is no canonical definition to state claims against.
-/

/-! ## A235231.P5820184379074181921

`A235239(∑[4*n]+1)`
-/

namespace A235231.P5820184379074181921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235231.P5820184379074181921

/-! ## A235231.P3834520858830538455

`lcm(2, A235239(A001844(n)))`
-/

namespace A235231.P3834520858830538455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235239 (A001844 n).toNat)

end

end A235231.P3834520858830538455

/-! ## A235231.P7819480481215696276

`record[A235239(A330613(n+1))]`
-/

namespace A235231.P7819480481215696276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235231.P7819480481215696276

/-! ## A235231.P12466898971621358715

`record[A003982(n)*A235239(n+1)]`
-/

namespace A235231.P12466898971621358715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235231.P12466898971621358715

/-! ## A235231.P14258114379050577431

`record[gcd(A003987(n), A235239(n+1))]`
-/

namespace A235231.P14258114379050577431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A235239 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235231.P14258114379050577431

/-!
# A235232: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235232, there is no canonical definition to state claims against.
-/

/-! ## A235232.P6081549156046827790

`A235239(∑[n]+1)`
-/

namespace A235232.P6081549156046827790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235232.P6081549156046827790

/-! ## A235232.P7674373765459857078

`record[A235239(n+1)]`
-/

namespace A235232.P7674373765459857078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235232.P7674373765459857078

/-! ## A235232.P275108506074740896

`lcm(2, A235239(A000124(n)))`
-/

namespace A235232.P275108506074740896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235239 (A000124 n).toNat)

end

end A235232.P275108506074740896

/-! ## A235232.P17538275497033419132

`A235239(A000124(n))*A319101(n+1)`
-/

namespace A235232.P17538275497033419132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A000124 n).toNat * A319101 (n + 1)

end

end A235232.P17538275497033419132

/-!
# A235233: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235233, there is no canonical definition to state claims against.
-/

/-! ## A235233.P12584612330563176589

`A235239(∑[n+1]+2)`
-/

namespace A235233.P12584612330563176589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235233.P12584612330563176589

/-! ## A235233.P11027990259629389492

`record[A010054(n)*A235239(n+2)]`
-/

namespace A235233.P11027990259629389492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235233.P11027990259629389492

/-! ## A235233.P6349270509235510843

`record[root(A235239(n+3), A054456(n))]`
-/

namespace A235233.P6349270509235510843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235239 (n + 3) : ℝ) ^ (1 / (A054456 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235233.P6349270509235510843

/-! ## A235233.P6542995371063625055

`lcm(2, A235239(A000096(n+1)))`
-/

namespace A235233.P6542995371063625055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235239 (A000096 (n + 1)).toNat)

end

end A235233.P6542995371063625055

/-! ## A235233.P5727303005205119004

`record[A235239(n+2)/A054456(n+2)]`
-/

namespace A235233.P5727303005205119004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235239 (n + 2) : ℚ) / (A054456 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235233.P5727303005205119004

/-!
# A235234: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235234, there is no canonical definition to state claims against.
-/

/-! ## A235234.P4670978803968386445

`A235239(∑[n+2]+4)`
-/

namespace A235234.P4670978803968386445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235234.P4670978803968386445

/-! ## A235234.P10161007633593670742

`lcm(2, A235239(A167614(n+1)))`
-/

namespace A235234.P10161007633593670742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235239 (A167614 (n + 1)).toNat)

end

end A235234.P10161007633593670742

/-! ## A235234.P8113456235555047

`lcm(4, A235239(A046691(n)+7))`
-/

namespace A235234.P8113456235555047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235239 (A046691 n + 7).toNat)

end

end A235234.P8113456235555047

/-! ## A235234.P12406382922788870305

`record[A235239(n+4)/A054456(n)]`
-/

namespace A235234.P12406382922788870305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235239 (n + 4) : ℚ) / (A054456 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235234.P12406382922788870305

/-! ## A235234.P6792286844652079776

`A235239(A167614(n+1))+A025469(n)`
-/

namespace A235234.P6792286844652079776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A167614 (n + 1)).toNat + A025469 n

end

end A235234.P6792286844652079776

/-!
# A235235: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235235, there is no canonical definition to state claims against.
-/

/-! ## A235235.P5442866307701232754

`A235239(∑[n+3]+7)`
-/

namespace A235235.P5442866307701232754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235235.P5442866307701232754

/-! ## A235235.P15854334174529746922

`lcm(2, A235239(A055999(n)+10))`
-/

namespace A235235.P15854334174529746922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235239 (A055999 n + 10).toNat)

end

end A235235.P15854334174529746922

/-! ## A235235.P8844394767370334253

`lcm(4, A235239(A000217(n+3)+4))`
-/

namespace A235235.P8844394767370334253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235239 (A000217 (n + 3) + 4).toNat)

end

end A235235.P8844394767370334253

/-! ## A235235.P9508916703360912556

`A235239(A055999(n)+10)+val(A000032(n), 5)`
-/

namespace A235235.P9508916703360912556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A055999 n + 10).toNat + (SequenceMachineLib.valuation (A000032 n).toNat 5 : ℤ)

end

end A235235.P9508916703360912556

/-! ## A235235.P1734727132857203922

`A235239(A055999(n)+10)%A269924(n+8)`
-/

namespace A235235.P1734727132857203922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235239 (A055999 n + 10).toNat) (A269924 (n + 8))

end

end A235235.P1734727132857203922

/-!
# A235236: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235236, there is no canonical definition to state claims against.
-/

/-! ## A235236.P10445701388251726324

`A235239(∑[n+4]+11)`
-/

namespace A235236.P10445701388251726324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A235236.P10445701388251726324

/-! ## A235236.P312041782478189972

`A235239(A167499(n+3))+A011737(n)`
-/

namespace A235236.P312041782478189972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A167499 (n + 3)).toNat + A011737 n

end

end A235236.P312041782478189972

/-! ## A235236.P1262013659659843564

`A235239(A374005(n+1))+A011737(n)`
-/

namespace A235236.P1262013659659843564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A374005 (n + 1)).toNat + A011737 n

end

end A235236.P1262013659659843564

/-! ## A235236.P2833501783942602723

`A235239(A374005(n+1))+A002324(3*n+2)`
-/

namespace A235236.P2833501783942602723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A374005 (n + 1)).toNat + A002324 (3 * n + 2)

end

end A235236.P2833501783942602723

/-!
# A235237: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235237, there is no canonical definition to state claims against.
-/

/-! ## A235237.P15196387657767702339

`A235239(A056115(n)+21)`
-/

namespace A235237.P15196387657767702339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A056115 n + 21).toNat

end

end A235237.P15196387657767702339

/-! ## A235237.P6421059799030553048

`A235239(A167614(n+4)+3)`
-/

namespace A235237.P6421059799030553048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A167614 (n + 4) + 3).toNat

end

end A235237.P6421059799030553048

/-! ## A235237.P8661088062899724873

`A235239(A000124(n+5)+5)`
-/

namespace A235237.P8661088062899724873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A000124 (n + 5) + 5).toNat

end

end A235237.P8661088062899724873

/-! ## A235237.P16658928126830965738

`A235239(A000096(n+4)+7)`
-/

namespace A235237.P16658928126830965738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A000096 (n + 4) + 7).toNat

end

end A235237.P16658928126830965738

/-! ## A235237.P14496154275431435479

`A235239(A000217(n+5)+6)`
-/

namespace A235237.P14496154275431435479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A000217 (n + 5) + 6).toNat

end

end A235237.P14496154275431435479

/-!
# A235238: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235238, there is no canonical definition to state claims against.
-/

/-! ## A235238.P12815708484760326062

`A235239(eq[11, A066657(n)])`
-/

namespace A235238.P12815708484760326062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235238.P12815708484760326062

/-! ## A235238.P8599407384889918813

`A235239(A000124(n+6)+6)`
-/

namespace A235238.P8599407384889918813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A000124 (n + 6) + 6).toNat

end

end A235238.P8599407384889918813

/-! ## A235238.P13176931119820279182

`A235239(A055999(n+3)+13)`
-/

namespace A235238.P13176931119820279182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A055999 (n + 3) + 13).toNat

end

end A235238.P13176931119820279182

/-! ## A235238.P18145981129500710581

`A235239(eq[8, A131818(n+1)])`
-/

namespace A235238.P18145981129500710581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235238.P18145981129500710581

/-! ## A235238.P15880133972590542982

`A235239(A000096(n+6)+1-n)`
-/

namespace A235238.P15880133972590542982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235239 (A000096 (n + 6) + 1 - (n : ℤ)).toNat

end

end A235238.P15880133972590542982

/-!
# A235240: Number of (n+1) X (n+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235240, there is no canonical definition to state claims against.
-/

/-! ## A235240.P9144570515933401605

`A235248(∑[4*n]+1)`
-/

namespace A235240.P9144570515933401605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235240.P9144570515933401605

/-! ## A235240.P5815664110581434686

`lcm(2, A235248(n²+(n+1)²))`
-/

namespace A235240.P5815664110581434686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235248 (n ^ 2 + (n + 1) ^ 2))

end

end A235240.P5815664110581434686

/-! ## A235240.P17227891220840699241

`record[A003982(n)*A235248(n+1)]`
-/

namespace A235240.P17227891220840699241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235240.P17227891220840699241

/-! ## A235240.P11790366833852901949

`record[A214505(n)*A235248(n+1)]`
-/

namespace A235240.P11790366833852901949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A235248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235240.P11790366833852901949

/-!
# A235241: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235241, there is no canonical definition to state claims against.
-/

/-! ## A235241.P779858365948619252

`A235248(∑[n]+1)`
-/

namespace A235241.P779858365948619252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235241.P779858365948619252

/-! ## A235241.P10928519628412311558

`record[A235248(n+1)]`
-/

namespace A235241.P10928519628412311558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235241.P10928519628412311558

/-! ## A235241.P16484080672998833449

`lcm(2, A235248(A000124(n)))`
-/

namespace A235241.P16484080672998833449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235248 (A000124 n).toNat)

end

end A235241.P16484080672998833449

/-! ## A235241.P6958117948416014362

`record[or(2, A235248(A008619(n)))]`
-/

namespace A235241.P6958117948416014362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235248 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235241.P6958117948416014362

/-! ## A235241.P7111461636214355996

`A085685(n)*A235248(A000124(n))`
-/

namespace A235241.P7111461636214355996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085685 n * A235248 (A000124 n).toNat

end

end A235241.P7111461636214355996

/-!
# A235242: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235242, there is no canonical definition to state claims against.
-/

/-! ## A235242.P15413932205825117858

`A235248(∑[n+1]+2)`
-/

namespace A235242.P15413932205825117858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235242.P15413932205825117858

/-! ## A235242.P136562469339771094

`record[A010054(n)*A235248(n+2)]`
-/

namespace A235242.P136562469339771094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235242.P136562469339771094

/-! ## A235242.P17148340327539565269

`record[A235248(A198455(n+1))]`
-/

namespace A235242.P17148340327539565269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235242.P17148340327539565269

/-! ## A235242.P17130393765598675743

`record[A235248(A135223(n+2)-1)]`
-/

namespace A235242.P17130393765598675743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A135223 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235242.P17130393765598675743

/-! ## A235242.P10077805922160025816

`A000034(2*n)*A235248(A000096(n+1))`
-/

namespace A235242.P10077805922160025816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A235248 (A000096 (n + 1)).toNat

end

end A235242.P10077805922160025816

/-!
# A235243: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235243, there is no canonical definition to state claims against.
-/

/-! ## A235243.P10755419816125106211

`A235248(∑[n+2]+4)`
-/

namespace A235243.P10755419816125106211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235243.P10755419816125106211

/-! ## A235243.P12663747847955319118

`lcm(2, A235248(A167614(n+1)))`
-/

namespace A235243.P12663747847955319118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235248 (A167614 (n + 1)).toNat)

end

end A235243.P12663747847955319118

/-! ## A235243.P2924195690982933498

`or(2, A235248(A046691(n)+7))`
-/

namespace A235243.P2924195690982933498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A235248 (A046691 n + 7).toNat)

end

end A235243.P2924195690982933498

/-! ## A235243.P18223618809949605752

`record[A235248(A135223(n+1)+3)]`
-/

namespace A235243.P18223618809949605752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A135223 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235243.P18223618809949605752

/-! ## A235243.P10775162073594900256

`A235248(A167614(n+1))+A185284(n)`
-/

namespace A235243.P10775162073594900256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A167614 (n + 1)).toNat + A185284 n

end

end A235243.P10775162073594900256

/-!
# A235244: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235244, there is no canonical definition to state claims against.
-/

/-! ## A235244.P17827522092538176656

`A235248(A374004(n+1))`
-/

namespace A235244.P17827522092538176656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A374004 (n + 1)).toNat

end

end A235244.P17827522092538176656

/-! ## A235244.P7544886692557842887

`A235248(A141214(n)+7)`
-/

namespace A235244.P7544886692557842887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A141214 n + 7).toNat

end

end A235244.P7544886692557842887

/-! ## A235244.P10666035532716679655

`A235248(A052905(n)+9)`
-/

namespace A235244.P10666035532716679655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A052905 n + 9).toNat

end

end A235244.P10666035532716679655

/-! ## A235244.P10766112158137927579

`A235248(A055999(n)+10)`
-/

namespace A235244.P10766112158137927579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A055999 n + 10).toNat

end

end A235244.P10766112158137927579

/-! ## A235244.P5738528608889330390

`A235248(eq[5, A066657(n)])`
-/

namespace A235244.P5738528608889330390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235244.P5738528608889330390

/-!
# A235245: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235245, there is no canonical definition to state claims against.
-/

/-! ## A235245.P4578540723563691163

`A235248(A374005(n+1))`
-/

namespace A235245.P4578540723563691163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A374005 (n + 1)).toNat

end

end A235245.P4578540723563691163

/-! ## A235245.P16102323030299897593

`A235248(A167499(n+3))`
-/

namespace A235245.P16102323030299897593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A167499 (n + 3)).toNat

end

end A235245.P16102323030299897593

/-! ## A235245.P8643938601728746290

`A235248(A155212(n)+13)`
-/

namespace A235245.P8643938601728746290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A155212 n + 13).toNat

end

end A235245.P8643938601728746290

/-! ## A235245.P2599523398066919411

`A235248(A056000(n)+15)`
-/

namespace A235245.P2599523398066919411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A056000 n + 15).toNat

end

end A235245.P2599523398066919411

/-! ## A235245.P5831741281176982053

`A235248(eq[7, A066657(n)])`
-/

namespace A235245.P5831741281176982053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235245.P5831741281176982053

/-!
# A235246: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235246, there is no canonical definition to state claims against.
-/

/-! ## A235246.P9201426355101252594

`A235248(A374007(n+1))`
-/

namespace A235246.P9201426355101252594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A374007 (n + 1)).toNat

end

end A235246.P9201426355101252594

/-! ## A235246.P5636024116386180781

`A235248(A167499(n+4)+1)`
-/

namespace A235246.P5636024116386180781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A167499 (n + 4) + 1).toNat

end

end A235246.P5636024116386180781

/-! ## A235246.P2192739303452844707

`A235248(A167614(n+4)+3)`
-/

namespace A235246.P2192739303452844707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A167614 (n + 4) + 3).toNat

end

end A235246.P2192739303452844707

/-! ## A235246.P2296519812148094043

`A235248(A000124(n+5)+5)`
-/

namespace A235246.P2296519812148094043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A000124 (n + 5) + 5).toNat

end

end A235246.P2296519812148094043

/-! ## A235246.P9082028567545053818

`A235248(eq[7, A131818(n+1)])`
-/

namespace A235246.P9082028567545053818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235246.P9082028567545053818

/-!
# A235247: Number of (n+1) X (7+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235247, there is no canonical definition to state claims against.
-/

/-! ## A235247.P4612783906473086419

`A235248(A374008(n+1))`
-/

namespace A235247.P4612783906473086419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A374008 (n + 1)).toNat

end

end A235247.P4612783906473086419

/-! ## A235247.P2220434083934559706

`A235248(eq[11, A066657(n)])`
-/

namespace A235247.P2220434083934559706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235247.P2220434083934559706

/-! ## A235247.P4443306612315106247

`A235248(A167499(n+5)+2)`
-/

namespace A235247.P4443306612315106247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A167499 (n + 5) + 2).toNat

end

end A235247.P4443306612315106247

/-! ## A235247.P18005140377622319922

`A235248(A000217(n+6)+7)`
-/

namespace A235247.P18005140377622319922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (A000217 (n + 6) + 7).toNat

end

end A235247.P18005140377622319922

/-! ## A235247.P15064996967110869056

`A235248(eq[8, A131818(n+1)])`
-/

namespace A235247.P15064996967110869056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235247.P15064996967110869056

/-!
# A235249: Fixed point when A001175 (Pisano periods) is iterated with starting value n.

The programs for A235249, there is no canonical definition to state claims against.
-/

/-! ## A235249.P9737722407345794307

`A235702(A001179(n+1)+gcd(n+1, n+2))`
-/

namespace A235249.P9737722407345794307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235702 (A001179 (n + 1) + (Nat.gcd (n + 1) (n + 2) : ℤ)).toNat

end

end A235249.P9737722407345794307

/-! ## A235249.P8985180295306684339

`A001175(A001175(A356550(n+1)))`
-/

namespace A235249.P8985180295306684339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001175 (A356550 (n + 1)).toNat).toNat

end

end A235249.P8985180295306684339

/-! ## A235249.P1095052508904528446

`A001175(A001175(A301759(A001177(n+1))))`
-/

namespace A235249.P1095052508904528446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001175 (A301759 (A001177 (n + 1)).toNat).toNat).toNat

end

end A235249.P1095052508904528446

/-! ## A235249.P5068570006422431194

`A001175(A001175(A001175(A393426(n+1))))`
-/

namespace A235249.P5068570006422431194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001175 (A001175 (A393426 (n + 1)).toNat).toNat).toNat

end

end A235249.P5068570006422431194

/-! ## A235249.P6480672646240832391

`A001175(A001175(A001175(A213278(A213278(n+1)))))`
-/

namespace A235249.P6480672646240832391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001175 (A001175 (A213278 (A213278 (n + 1)).toNat).toNat).toNat).toNat

end

end A235249.P6480672646240832391

/-!
# A235250: Number of (n+1) X (n+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235250, there is no canonical definition to state claims against.
-/

/-! ## A235250.P17566743038839080408

`A235258(∑[4*n]+1)`
-/

namespace A235250.P17566743038839080408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235250.P17566743038839080408

/-! ## A235250.P11988562779825216224

`gcd(6, (n+1)/gcd(n+1, ∏{p}[n+1, #]^3))*A235258(n²+(n+1)²)`
-/

namespace A235250.P11988562779825216224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ))) : ℤ) * A235258 (n ^ 2 + (n + 1) ^ 2)

end

end A235250.P11988562779825216224

/-! ## A235250.P423762169518262710

`lcm(2, A235258(A001844(n)))`
-/

namespace A235250.P423762169518262710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235258 (A001844 n).toNat)

end

end A235250.P423762169518262710

/-! ## A235250.P5487914563875938419

`lcm(8, A235258(Δ[A005900(n)]))`
-/

namespace A235250.P5487914563875938419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A235258 (f1 (n + 1) - f1 n).toNat)

end

end A235250.P5487914563875938419

/-! ## A235250.P1973513595150448580

`record[A003982(n)*A235258(n+1)]`
-/

namespace A235250.P1973513595150448580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235250.P1973513595150448580

/-!
# A235251: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235251, there is no canonical definition to state claims against.
-/

/-! ## A235251.P12227914112741943009

`A235258(∑[n]+1)`
-/

namespace A235251.P12227914112741943009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235251.P12227914112741943009

/-! ## A235251.P11230143945388898699

`record[A235258(n+1)]`
-/

namespace A235251.P11230143945388898699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235251.P11230143945388898699

/-! ## A235251.P13718500897616657286

`lcm(2, A235258(A000124(n)))`
-/

namespace A235251.P13718500897616657286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235258 (A000124 n).toNat)

end

end A235251.P13718500897616657286

/-! ## A235251.P16906628931013199702

`A007318(∑[n])*A235258(A000124(n))`
-/

namespace A235251.P16906628931013199702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A235258 (A000124 n).toNat

end

end A235251.P16906628931013199702

/-! ## A235251.P17885323609260794971

`A235258(A000124(n))+A000007(n+2)`
-/

namespace A235251.P17885323609260794971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A000124 n).toNat + A000007 (n + 2)

end

end A235251.P17885323609260794971

/-!
# A235252: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235252, there is no canonical definition to state claims against.
-/

/-! ## A235252.P16903699203416673893

`A235258(∑[n+1]+2)`
-/

namespace A235252.P16903699203416673893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235252.P16903699203416673893

/-! ## A235252.P4120805752912156666

`lcm(2, A235258(A133263(n+1)))`
-/

namespace A235252.P4120805752912156666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235258 (A133263 (n + 1)).toNat)

end

end A235252.P4120805752912156666

/-! ## A235252.P10626236775488452954

`record[A235258(n+3)/A159841(n)]`
-/

namespace A235252.P10626236775488452954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235258 (n + 3) : ℚ) / (A159841 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235252.P10626236775488452954

/-! ## A235252.P9768739969635520373

`record[root(A235258(n+3), A049458(n))]`
-/

namespace A235252.P9768739969635520373
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235258 (n + 3) : ℝ) ^ (1 / (A049458 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235252.P9768739969635520373

/-! ## A235252.P8366148172914154635

`record[gcd(A002262(n), A235258(n+2))]`
-/

namespace A235252.P8366148172914154635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235258 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235252.P8366148172914154635

/-!
# A235253: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235253, there is no canonical definition to state claims against.
-/

/-! ## A235253.P8816604821835919630

`A235258(∑[n+2]+4)`
-/

namespace A235253.P8816604821835919630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235253.P8816604821835919630

/-! ## A235253.P13344695150429189545

`lcm(2, A235258(A167614(n+1)))`
-/

namespace A235253.P13344695150429189545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235258 (A167614 (n + 1)).toNat)

end

end A235253.P13344695150429189545

/-! ## A235253.P7407795003680093144

`A235258(A167614(n+1))+A011738(n)`
-/

namespace A235253.P7407795003680093144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167614 (n + 1)).toNat + A011738 n

end

end A235253.P7407795003680093144

/-! ## A235253.P15376468741044533380

`A235258(A167614(n+1))+A025443(n)`
-/

namespace A235253.P15376468741044533380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167614 (n + 1)).toNat + A025443 n

end

end A235253.P15376468741044533380

/-! ## A235253.P13497033979276867518

`A235258(A167614(n+1))+A185284(n)`
-/

namespace A235253.P13497033979276867518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167614 (n + 1)).toNat + A185284 n

end

end A235253.P13497033979276867518

/-!
# A235254: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235254, there is no canonical definition to state claims against.
-/

/-! ## A235254.P10414685567259057933

`A235258(∑[n+3]+7)`
-/

namespace A235254.P10414685567259057933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235254.P10414685567259057933

/-! ## A235254.P18295099002076588000

`lcm(2, A235258(A055999(n)+10))`
-/

namespace A235254.P18295099002076588000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235258 (A055999 n + 10).toNat)

end

end A235254.P18295099002076588000

/-! ## A235254.P6669517328266182332

`lcm(4, A235258(A167614(n+2)+1))`
-/

namespace A235254.P6669517328266182332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235258 (A167614 (n + 2) + 1).toNat)

end

end A235254.P6669517328266182332

/-! ## A235254.P3620635016304566428

`A235258(A046691(n+1)+8)+char[24]`
-/

namespace A235254.P3620635016304566428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A046691 (n + 1) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235254.P3620635016304566428

/-! ## A235254.P1473628039704375514

`A235258(A052905(n)+9)+A000122(3*n+2)`
-/

namespace A235254.P1473628039704375514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A052905 n + 9).toNat + A000122 (3 * n + 2)

end

end A235254.P1473628039704375514

/-!
# A235255: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235255, there is no canonical definition to state claims against.
-/

/-! ## A235255.P4072294665184222903

`A235258(A167499(n+3))`
-/

namespace A235255.P4072294665184222903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167499 (n + 3)).toNat

end

end A235255.P4072294665184222903

/-! ## A235255.P14838992429765806731

`A235258(A155212(n)+13)`
-/

namespace A235255.P14838992429765806731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A155212 n + 13).toNat

end

end A235255.P14838992429765806731

/-! ## A235255.P1180985373210827016

`A235258(A056000(n)+15)`
-/

namespace A235255.P1180985373210827016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A056000 n + 15).toNat

end

end A235255.P1180985373210827016

/-! ## A235255.P14810051268774323257

`A235258(eq[7, A066657(n)])`
-/

namespace A235255.P14810051268774323257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235255.P14810051268774323257

/-! ## A235255.P18284683662313696534

`A235258(A167614(n+3)+2)`
-/

namespace A235255.P18284683662313696534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167614 (n + 3) + 2).toNat

end

end A235255.P18284683662313696534

/-!
# A235256: Number of (n+1) X (6+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235256, there is no canonical definition to state claims against.
-/

/-! ## A235256.P5732436246659516332

`A235258(A166136(n+4))`
-/

namespace A235256.P5732436246659516332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A166136 (n + 4)).toNat

end

end A235256.P5732436246659516332

/-! ## A235256.P15150853690960408575

`A235258(A056115(n)+21)`
-/

namespace A235256.P15150853690960408575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A056115 n + 21).toNat

end

end A235256.P15150853690960408575

/-! ## A235256.P3315892435638900648

`A235258(A167499(n+4)+1)`
-/

namespace A235256.P3315892435638900648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167499 (n + 4) + 1).toNat

end

end A235256.P3315892435638900648

/-! ## A235256.P9994096142388420661

`A235258(A167614(n+4)+3)`
-/

namespace A235256.P9994096142388420661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A167614 (n + 4) + 3).toNat

end

end A235256.P9994096142388420661

/-! ## A235256.P11719101441868682939

`A235258(A000124(n+5)+5)`
-/

namespace A235256.P11719101441868682939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A000124 (n + 5) + 5).toNat

end

end A235256.P11719101441868682939

/-!
# A235257: Number of (n+1) X (7+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 7, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A235257, there is no canonical definition to state claims against.
-/

/-! ## A235257.P2580304729560225525

`A235258(A302537(n)+27)`
-/

namespace A235257.P2580304729560225525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A302537 n + 27).toNat

end

end A235257.P2580304729560225525

/-! ## A235257.P5025045133176442748

`A235258(eq[11, A066657(n)])`
-/

namespace A235257.P5025045133176442748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235257.P5025045133176442748

/-! ## A235257.P4848697876607883038

`A235258(A166136(n+5)+1)`
-/

namespace A235257.P4848697876607883038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A166136 (n + 5) + 1).toNat

end

end A235257.P4848697876607883038

/-! ## A235257.P13254275394510641428

`A235258(A155212(n+2)+15)`
-/

namespace A235257.P13254275394510641428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (A155212 (n + 2) + 15).toNat

end

end A235257.P13254275394510641428

/-! ## A235257.P8470499616201946543

`A235258(eq[8, A131818(n+1)])`
-/

namespace A235257.P8470499616201946543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235258 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235257.P8470499616201946543

/-!
# A235259: Number of (n+1)X(2+1) 0..3 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A235259, there is no canonical definition to state claims against.
-/

/-! ## A235259.P14368009575927046118

`A235261(∑[n+1]+2)`
-/

namespace A235259.P14368009575927046118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235261 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235259.P14368009575927046118

/-! ## A235259.P17734624342150233527

`record[A010054(n)*A235261(n+2)]`
-/

namespace A235259.P17734624342150233527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235261 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235259.P17734624342150233527

/-! ## A235259.P2408756382703503240

`record[root(A235261(n+2), A278493(n))]`
-/

namespace A235259.P2408756382703503240
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235261 (n + 2) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235259.P2408756382703503240

/-! ## A235259.P96353859403618298

`record[gcd(A002262(n), A235261(n+2))]`
-/

namespace A235259.P96353859403618298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235261 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235259.P96353859403618298

/-! ## A235259.P9967515362834265637

`record[root(A235261(n+3), A220579(n+1))]`
-/

namespace A235259.P9967515362834265637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235261 (n + 3) : ℝ) ^ (1 / (A220579 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235259.P9967515362834265637

/-!
# A235260: Number of (n+1)X(3+1) 0..3 arrays with 2X2 subblock sums lexicographically nondecreasing columnwise and rowwise.

The programs for A235260, there is no canonical definition to state claims against.
-/

/-! ## A235260.P1357957521213110724

`A235261(A167614(n+1))`
-/

namespace A235260.P1357957521213110724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235261 (A167614 (n + 1)).toNat

end

end A235260.P1357957521213110724

/-! ## A235260.P2119750289263767076

`A235261(∑[n+3]+1)`
-/

namespace A235260.P2119750289263767076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235261 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235260.P2119750289263767076

/-!
# A235262: Lexicographically earliest sequence of distinct positive integers such that the derived sequence (b(n)) = (a(n) XOR a(n+1)) contains only distinct terms (XOR stands for the binary XOR operator).

The programs for A235262, there is no canonical definition to state claims against.
-/

/-! ## A235262.P11608074054165038514

`xor(a(n-1), A235263(n))` with `a(0)=1`
-/

namespace A235262.P11608074054165038514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A235263 n)

end

end A235262.P11608074054165038514

/-!
# A235263: a(n) = A235262(n) XOR A235262(n+1), where XOR stands for the binary XOR operator.

The programs for A235263, there is no canonical definition to state claims against.
-/

/-! ## A235263.P16805612909066433247

`xor(A235262(n+1), A235262(n+2))`
-/

namespace A235263.P16805612909066433247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235262 (n + 1)) (A235262 (n + 2))

end

end A235263.P16805612909066433247

/-!
# A235264: Tileable numbers: base-2 representation, considered as a fixed disconnected polyomino, tiles all places >= 0.

The programs for A235264, there is no canonical definition to state claims against.
-/

/-! ## A235264.P11522448143772647862

`A343228(∩[A003278(n+1), A054591(n+1)])`
-/

namespace A235264.P11522448143772647862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A235264.P11522448143772647862

/-! ## A235264.P1482385326198524164

`A343228(∩[A003278(n+1), A170943(n+1)])`
-/

namespace A235264.P1482385326198524164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170943 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A235264.P1482385326198524164

/-! ## A235264.P15492187237311299846

`A343228(∩[A054591(n+1), A191107(n+1)])`
-/

namespace A235264.P15492187237311299846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A235264.P15492187237311299846

/-! ## A235264.P11928718739564026534

`A343228(∩[A170943(n+1), A191107(n+1)])`
-/

namespace A235264.P11928718739564026534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A235264.P11928718739564026534

/-! ## A235264.P2962687242638898537

`filter[A353852(n+1), A178225(#)]`
-/

namespace A235264.P2962687242638898537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A235264.P2962687242638898537

/-!
# A235265: Primes whose base-3 representation also is the base-2 representation of a prime.

The programs for A235265, the canonical program `A235265.P1717586972171710680` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235265 has offset 1).

The definition of A235265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235265.P18099286559737456694

`A004793(A235266(n+1))`
-/

namespace A235265.P18099286559737456694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A235266 (n + 1)).toNat

end

end A235265.P18099286559737456694

namespace A235265

/-- `A004793(A235266(n+1))` -/
def P18099286559737456694.Spec : Prop :=
  ∀ n, P18099286559737456694.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P15413909858658616906

`A005836(A235266(n+1)+1)`
-/

namespace A235265.P15413909858658616906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A235266 (n + 1) + 1).toNat

end

end A235265.P15413909858658616906

namespace A235265

/-- `A005836(A235266(n+1)+1)` -/
def P15413909858658616906.Spec : Prop :=
  ∀ n, P15413909858658616906.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P13677943876402377631

`or(1, A003278(p?[A235266(n+1)]))`
-/

namespace A235265.P13677943876402377631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003278 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A235265.P13677943876402377631

namespace A235265

/-- `or(1, A003278(p?[A235266(n+1)]))` -/
def P13677943876402377631.Spec : Prop :=
  ∀ n, P13677943876402377631.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P5577128259028141946

`A003278(A235266(n+1)+1)-1`
-/

namespace A235265.P5577128259028141946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A235266 (n + 1) + 1).toNat - 1

end

end A235265.P5577128259028141946

namespace A235265

/-- `A003278(A235266(n+1)+1)-1` -/
def P5577128259028141946.Spec : Prop :=
  ∀ n, P5577128259028141946.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P5836529134444708142

`A003278(A235266(n+1))+A000007(n)`
-/

namespace A235265.P5836529134444708142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A235266 (n + 1)).toNat + A000007 n

end

end A235265.P5836529134444708142

namespace A235265

/-- `A003278(A235266(n+1))+A000007(n)` -/
def P5836529134444708142.Spec : Prop :=
  ∀ n, P5836529134444708142.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P10916551480973202274

`A003278(A235266(n+1))+char[A014713(n)]`
-/

namespace A235265.P10916551480973202274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014713 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A235266 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A235265.P10916551480973202274

namespace A235265

/-- `A003278(A235266(n+1))+char[A014713(n)]` -/
def P10916551480973202274.Spec : Prop :=
  ∀ n, P10916551480973202274.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P2946967508803212707

`or(A003278(A235266(n+1)), A068431(n+1))`
-/

namespace A235265.P2946967508803212707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003278 (A235266 (n + 1)).toNat) (A068431 (n + 1))

end

end A235265.P2946967508803212707

namespace A235265

/-- `or(A003278(A235266(n+1)), A068431(n+1))` -/
def P2946967508803212707.Spec : Prop :=
  ∀ n, P2946967508803212707.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P9955619110861372332

`A003278(A235266(n+1))+∏{d}[n, A001222(#)]`
-/

namespace A235265.P9955619110861372332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A235266 (n + 1)).toNat + ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A235265.P9955619110861372332

namespace A235265

/-- `A003278(A235266(n+1))+∏{d}[n, A001222(#)]` -/
def P9955619110861372332.Spec : Prop :=
  ∀ n, P9955619110861372332.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P15505047266266751164

`or(A008683(n+1)², A003278(A235266(n+1)))`
-/

namespace A235265.P15505047266266751164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008683 (n + 1) ^ 2) (A003278 (A235266 (n + 1)).toNat)

end

end A235265.P15505047266266751164

namespace A235265

/-- `or(A008683(n+1)², A003278(A235266(n+1)))` -/
def P15505047266266751164.Spec : Prop :=
  ∀ n, P15505047266266751164.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P953664937413106310

`A010051(2*(n+1))+A003278(A235266(n+1))`
-/

namespace A235265.P953664937413106310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A003278 (A235266 (n + 1)).toNat

end

end A235265.P953664937413106310

namespace A235265

/-- `A010051(2*(n+1))+A003278(A235266(n+1))` -/
def P953664937413106310.Spec : Prop :=
  ∀ n, P953664937413106310.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P11712149853811111142

`or(A014963(6*(n+2)), A003278(A235266(n+1)))`
-/

namespace A235265.P11712149853811111142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (6 * (n + 2))) (A003278 (A235266 (n + 1)).toNat)

end

end A235265.P11712149853811111142

namespace A235265

/-- `or(A014963(6*(n+2)), A003278(A235266(n+1)))` -/
def P11712149853811111142.Spec : Prop :=
  ∀ n, P11712149853811111142.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P1717586972171710680

`p?[A004793(A000040(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A235265

/-- `p?[A004793(A000040(n+1))]` -/
def P1717586972171710680.Spec : Prop :=
  ∀ n, P1717586972171710680.a n = A235265 (n + 1)

theorem P1717586972171710680.correct : P1717586972171710680.Spec := by
  intro n
  simp only [A235265, Nat.add_sub_cancel]

end A235265

/-! ## A235265.P6167860448027445018

`∩[A262829(n+1), A074938(n)]`
-/

namespace A235265.P6167860448027445018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235265.P6167860448027445018

namespace A235265

/-- `∩[A262829(n+1), A074938(n)]` -/
def P6167860448027445018.Spec : Prop :=
  ∀ n, (P6167860448027445018.a n : ℤ) = A235265 (n + 1)

end A235265

/-! ## A235265.P12522026402121785745

`p?[A005836(A000040(n+1)+1)]`
-/

namespace A235265.P12522026402121785745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235265.P12522026402121785745

namespace A235265

/-- `p?[A005836(A000040(n+1)+1)]` -/
def P12522026402121785745.Spec : Prop :=
  ∀ n, P12522026402121785745.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P736632824753665251

`∩[A004793(n+1), A262829(n+1)]`
-/

namespace A235265.P736632824753665251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235265.P736632824753665251

namespace A235265

/-- `∩[A004793(n+1), A262829(n+1)]` -/
def P736632824753665251.Spec : Prop :=
  ∀ n, (P736632824753665251.a n : ℤ) = A235265 (n + 1)

end A235265

/-! ## A235265.P12226872862783848813

`∩[A005836(n+1), A262829(n+1)]`
-/

namespace A235265.P12226872862783848813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235265.P12226872862783848813

namespace A235265

/-- `∩[A005836(n+1), A262829(n+1)]` -/
def P12226872862783848813.Spec : Prop :=
  ∀ n, (P12226872862783848813.a n : ℤ) = A235265 (n + 1)

end A235265

/-! ## A235265.P6094585676678684702

`∩[A077717(n+1), A262829(n+1)]`
-/

namespace A235265.P6094585676678684702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235265.P6094585676678684702

namespace A235265

/-- `∩[A077717(n+1), A262829(n+1)]` -/
def P6094585676678684702.Spec : Prop :=
  ∀ n, (P6094585676678684702.a n : ℤ) = A235265 (n + 1)

end A235265

/-! ## A235265.P1537703825630346287

`p?[A005836(record[A020639(n+1)+1])]`
-/

namespace A235265.P1537703825630346287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235265.P1537703825630346287

namespace A235265

/-- `p?[A005836(record[A020639(n+1)+1])]` -/
def P1537703825630346287.Spec : Prop :=
  ∀ n, P1537703825630346287.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P14019920217341680008

`p?[A003278(A000040(n+1)+1)-1]`
-/

namespace A235265.P14019920217341680008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A000040 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235265.P14019920217341680008

namespace A235265

/-- `p?[A003278(A000040(n+1)+1)-1]` -/
def P14019920217341680008.Spec : Prop :=
  ∀ n, P14019920217341680008.a n = A235265 (n + 1)

end A235265

/-! ## A235265.P14015466300257373653

`p?[A005836(n+2)*A064911(2*(n+1))]`
-/

namespace A235265.P14015466300257373653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) * A064911 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235265.P14015466300257373653

namespace A235265

/-- `p?[A005836(n+2)*A064911(2*(n+1))]` -/
def P14015466300257373653.Spec : Prop :=
  ∀ n, P14015466300257373653.a n = A235265 (n + 1)

end A235265

/-!
# A235266: Primes whose base-2 representation is also the base-3 representation of a prime.

The programs for A235266, there is no canonical definition to state claims against.
-/

/-! ## A235266.P11858563594942779016

`p?[(n+1)*A001222(A003278(n+1))]`
-/

namespace A235266.P11858563594942779016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A003278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235266.P11858563594942779016

/-! ## A235266.P17234496660394517226

`p?[(n+1)*A001222(A005836(n+2))]`
-/

namespace A235266.P17234496660394517226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A005836 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235266.P17234496660394517226

/-! ## A235266.P1328773863251638643

`p?[(n+1)*A010051(A005836(n+1)+1)]`
-/

namespace A235266.P1328773863251638643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A005836 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235266.P1328773863251638643

/-! ## A235266.P15369674900365009472

`p?[A001222(A003278(n+1))*A004442(n)]`
-/

namespace A235266.P15369674900365009472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003278 (n + 1)).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235266.P15369674900365009472

/-! ## A235266.P7960117969622567370

`p?[A064911(A005836(4*n+3))+2*n]`
-/

namespace A235266.P7960117969622567370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A005836 (4 * n + 3)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235266.P7960117969622567370

/-!
# A235269: a(n) = floor(s*t/(s+t)), where s(n) are the squares, t(n) the triangular numbers.

The programs for A235269, the canonical program `A235269.P6337577745942419446` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235269 has offset 1).

The definition of A235269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235269.P6337577745942419446

`floor((9*(n+1)²+6*(n+1)-2)/27)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235269

/-- `floor((9*(n+1)²+6*(n+1)-2)/27)` -/
def P6337577745942419446.Spec : Prop :=
  ∀ n, P6337577745942419446.a n = A235269 (n + 1)

theorem P6337577745942419446.correct : P6337577745942419446.Spec := by
  intro n
  simp only [A235269, Nat.add_sub_cancel]

end A235269

/-! ## A235269.P14271661399483116231

`n-ceil((a(n-1)-n²)/2)` with `a(0)=0`
-/

namespace A235269.P14271661399483116231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌈(a (n - 1) - (n ^ 2 : ℤ) : ℚ) / 2⌉

end

end A235269.P14271661399483116231

namespace A235269

/-- `n-ceil((a(n-1)-n²)/2)` -/
def P14271661399483116231.Spec : Prop :=
  ∀ n, P14271661399483116231.a n = A235269 (n + 1)

end A235269

/-! ## A235269.P194876267456078172

`A008740(2*n+1)-A008740(n+1)`
-/

namespace A235269.P194876267456078172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (2 * n + 1) - A008740 (n + 1)

end

end A235269.P194876267456078172

namespace A235269

/-- `A008740(2*n+1)-A008740(n+1)` -/
def P194876267456078172.Spec : Prop :=
  ∀ n, P194876267456078172.a n = A235269 (n + 1)

end A235269

/-! ## A235269.P9620744029959056747

`A011862(A005843(n))+n-A011862(n)`
-/

namespace A235269.P9620744029959056747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 (A005843 n).toNat + ((n : ℤ) - A011862 n)

end

end A235269.P9620744029959056747

namespace A235269

/-- `A011862(A005843(n))+n-A011862(n)` -/
def P9620744029959056747.Spec : Prop :=
  ∀ n, P9620744029959056747.a n = A235269 (n + 1)

end A235269

/-! ## A235269.P3276844816505524469

`A004396(A004523(2*n+1))+A000212(n)`
-/

namespace A235269.P3276844816505524469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004523 (2 * n + 1)).toNat + A000212 n

end

end A235269.P3276844816505524469

namespace A235269

/-- `A004396(A004523(2*n+1))+A000212(n)` -/
def P3276844816505524469.Spec : Prop :=
  ∀ n, P3276844816505524469.a n = A235269 (n + 1)

end A235269

/-! ## A235269.P7926009171686403189

`A008810(n)+A002264(A047465(n+1))`
-/

namespace A235269.P7926009171686403189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n + A002264 (A047465 (n + 1)).toNat

end

end A235269.P7926009171686403189

namespace A235269

/-- `A008810(n)+A002264(A047465(n+1))` -/
def P7926009171686403189.Spec : Prop :=
  ∀ n, P7926009171686403189.a n = A235269 (n + 1)

end A235269

/-!
# A235270: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235270, there is no canonical definition to state claims against.
-/

/-! ## A235270.P5339464287358108206

`A235280(∑[4*n]+1)`
-/

namespace A235270.P5339464287358108206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235270.P5339464287358108206

/-! ## A235270.P6838386460418065565

`lcm(2, A235280(A001844(n)))`
-/

namespace A235270.P6838386460418065565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235280 (A001844 n).toNat)

end

end A235270.P6838386460418065565

/-! ## A235270.P9726111823274776722

`lcm(4, A235280(∑[A008574(n)]))`
-/

namespace A235270.P9726111823274776722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235280 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A235270.P9726111823274776722

/-! ## A235270.P1024307117213778035

`record[A235280(A001844(∑{digits}[n, #]))]`
-/

namespace A235270.P1024307117213778035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235270.P1024307117213778035

/-! ## A235270.P5832857676957925882

`record[A003982(n)*A235280(n+1)]`
-/

namespace A235270.P5832857676957925882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235270.P5832857676957925882

/-!
# A235271: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235271, there is no canonical definition to state claims against.
-/

/-! ## A235271.P17114806678848411725

`A235272(n+1)-(A235283(n+1)+A235282(n+1))`
-/

namespace A235271.P17114806678848411725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235272 (n + 1) - (A235283 (n + 1) + A235282 (n + 1))

end

end A235271.P17114806678848411725

/-! ## A235271.P16137772773115366062

`A235304(n+1)-(A235303(n+1)+A235272(n+1))`
-/

namespace A235271.P16137772773115366062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235304 (n + 1) - (A235303 (n + 1) + A235272 (n + 1))

end

end A235271.P16137772773115366062

/-! ## A235271.P9361836121018631531

`A235280(∑[n]+1)`
-/

namespace A235271.P9361836121018631531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235271.P9361836121018631531

/-! ## A235271.P7846657774361474839

`record[A235280(n+1)]`
-/

namespace A235271.P7846657774361474839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235271.P7846657774361474839

/-! ## A235271.P5785331819906778535

`lcm(2, A235280(A000124(n)))`
-/

namespace A235271.P5785331819906778535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235280 (A000124 n).toNat)

end

end A235271.P5785331819906778535

/-!
# A235272: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235272, there is no canonical definition to state claims against.
-/

/-! ## A235272.P9325600812036692314

`A235271(n+1)+A235283(n+1)+A235282(n+1)`
-/

namespace A235272.P9325600812036692314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235271 (n + 1) + (A235283 (n + 1) + A235282 (n + 1))

end

end A235272.P9325600812036692314

/-! ## A235272.P13228437960093246759

`A235273(n+1)-(A235284(n+1)+A235283(n+1))`
-/

namespace A235272.P13228437960093246759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235273 (n + 1) - (A235284 (n + 1) + A235283 (n + 1))

end

end A235272.P13228437960093246759

/-! ## A235272.P12212276224084348487

`A235304(n+1)-(A235303(n+1)+A235271(n+1))`
-/

namespace A235272.P12212276224084348487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235304 (n + 1) - (A235303 (n + 1) + A235271 (n + 1))

end

end A235272.P12212276224084348487

/-! ## A235272.P17581489006843150664

`A235305(n+1)-(A235304(n+1)+A235273(n+1))`
-/

namespace A235272.P17581489006843150664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235305 (n + 1) - (A235304 (n + 1) + A235273 (n + 1))

end

end A235272.P17581489006843150664

/-! ## A235272.P5370100603777297482

`A235282(n+1)+A235283(n+1)+A235280(∑[n]+1)`
-/

namespace A235272.P5370100603777297482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235282 (n + 1) + (A235283 (n + 1) + A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A235272.P5370100603777297482

/-!
# A235273: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235273, there is no canonical definition to state claims against.
-/

/-! ## A235273.P206463784387944599

`A235272(n+1)+A235284(n+1)+A235283(n+1)`
-/

namespace A235273.P206463784387944599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235272 (n + 1) + (A235284 (n + 1) + A235283 (n + 1))

end

end A235273.P206463784387944599

/-! ## A235273.P3900071649234952823

`A235305(n+1)-(A235304(n+1)+A235272(n+1))`
-/

namespace A235273.P3900071649234952823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235305 (n + 1) - (A235304 (n + 1) + A235272 (n + 1))

end

end A235273.P3900071649234952823

/-! ## A235273.P14704780446617379910

`A235280(∑[n+2]+4)`
-/

namespace A235273.P14704780446617379910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235273.P14704780446617379910

/-! ## A235273.P1014958488770582820

`lcm(2, A235280(A167614(n+1)))`
-/

namespace A235273.P1014958488770582820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235280 (A167614 (n + 1)).toNat)

end

end A235273.P1014958488770582820

/-! ## A235273.P12844323746442665564

`record[A235280(n+4)/A053122(n)]`
-/

namespace A235273.P12844323746442665564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235280 (n + 4) : ℚ) / (A053122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235273.P12844323746442665564

/-!
# A235274: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235274, there is no canonical definition to state claims against.
-/

/-! ## A235274.P850644556675777758

`A235280(∑[n+3]+7)`
-/

namespace A235274.P850644556675777758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235274.P850644556675777758

/-! ## A235274.P10823837387670802293

`lcm(2, A235280(A052905(n)+9))`
-/

namespace A235274.P10823837387670802293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235280 (A052905 n + 9).toNat)

end

end A235274.P10823837387670802293

/-! ## A235274.P17363410641585077582

`A014963(6*(n+1))*A235280(A052905(n)+9)`
-/

namespace A235274.P17363410641585077582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A235280 (A052905 n + 9).toNat

end

end A235274.P17363410641585077582

/-! ## A235274.P3381075634244543876

`A235280(A052905(n)+9)+(10*A000045(n))%2`
-/

namespace A235274.P3381075634244543876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A052905 n + 9).toNat + Int.tmod (10 * A000045 n) 2

end

end A235274.P3381075634244543876

/-! ## A235274.P4437281195352752088

`A000010(gcd(n, n+1))*A235280(A052905(n)+9)`
-/

namespace A235274.P4437281195352752088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A235280 (A052905 n + 9).toNat

end

end A235274.P4437281195352752088

/-!
# A235275: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235275, there is no canonical definition to state claims against.
-/

/-! ## A235275.P16216922280814490725

`A235280(A374005(n+1))`
-/

namespace A235275.P16216922280814490725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A374005 (n + 1)).toNat

end

end A235275.P16216922280814490725

/-! ## A235275.P17863395682883528928

`A235280(A167499(n+3))`
-/

namespace A235275.P17863395682883528928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A167499 (n + 3)).toNat

end

end A235275.P17863395682883528928

/-! ## A235275.P1974933934817526571

`A235280(A077169(n+5))`
-/

namespace A235275.P1974933934817526571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A077169 (n + 5)).toNat

end

end A235275.P1974933934817526571

/-! ## A235275.P7288105411994582777

`A235280(A155212(n)+13)`
-/

namespace A235275.P7288105411994582777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A155212 n + 13).toNat

end

end A235275.P7288105411994582777

/-! ## A235275.P906607400174631961

`A235280(A056000(n)+15)`
-/

namespace A235275.P906607400174631961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A056000 n + 15).toNat

end

end A235275.P906607400174631961

/-!
# A235276: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235276, there is no canonical definition to state claims against.
-/

/-! ## A235276.P18086671272547386364

`A235280(∑[n+5]+16)`
-/

namespace A235276.P18086671272547386364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A235276.P18086671272547386364

/-! ## A235276.P3548189685542811203

`lcm(2, A235280(A166136(n+4)))`
-/

namespace A235276.P3548189685542811203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235280 (A166136 (n + 4)).toNat)

end

end A235276.P3548189685542811203

/-! ## A235276.P9558494495529205124

`lcm(4, A235280(A000217(n+5)+6))`
-/

namespace A235276.P9558494495529205124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235280 (A000217 (n + 5) + 6).toNat)

end

end A235276.P9558494495529205124

/-! ## A235276.P12033086697405595084

`A007318(C(2, n))*A235280(A166136(n+4))`
-/

namespace A235276.P12033086697405595084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235280 (A166136 (n + 4)).toNat

end

end A235276.P12033086697405595084

/-! ## A235276.P14049341147761758139

`A235280(A166136(n+4))/A007318(C(2, n²))`
-/

namespace A235276.P14049341147761758139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235280 (A166136 (n + 4)).toNat : ℚ) / (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A235276.P14049341147761758139

/-!
# A235277: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235277, there is no canonical definition to state claims against.
-/

/-! ## A235277.P1057361181523199987

`A235280(A374008(n+1))`
-/

namespace A235277.P1057361181523199987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A374008 (n + 1)).toNat

end

end A235277.P1057361181523199987

/-! ## A235277.P12691032248186821590

`A235280(A167487(n+5))`
-/

namespace A235277.P12691032248186821590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A167487 (n + 5)).toNat

end

end A235277.P12691032248186821590

/-! ## A235277.P1214126252653029486

`A235280(A056119(n)+28)`
-/

namespace A235277.P1214126252653029486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A056119 n + 28).toNat

end

end A235277.P1214126252653029486

/-! ## A235277.P8124313074009822740

`A235280(eq[11, A066657(n)])`
-/

namespace A235277.P8124313074009822740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235277.P8124313074009822740

/-! ## A235277.P5661273208425993926

`A235280(A166136(n+5)+1)`
-/

namespace A235277.P5661273208425993926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A166136 (n + 5) + 1).toNat

end

end A235277.P5661273208425993926

/-!
# A235278: Number of (n+1) X (8+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235278, there is no canonical definition to state claims against.
-/

/-! ## A235278.P3124472907842155852

`A235280(A374009(n+1))`
-/

namespace A235278.P3124472907842155852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A374009 (n + 1)).toNat

end

end A235278.P3124472907842155852

/-! ## A235278.P2617258913525876982

`A235280(eq[13, A066657(n)])`
-/

namespace A235278.P2617258913525876982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235278.P2617258913525876982

/-! ## A235278.P7605963576161702716

`A235280(A166136(n+6)+2)`
-/

namespace A235278.P7605963576161702716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A166136 (n + 6) + 2).toNat

end

end A235278.P7605963576161702716

/-! ## A235278.P15413206111401449603

`A235280(A167499(n+6)+3)`
-/

namespace A235278.P15413206111401449603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A167499 (n + 6) + 3).toNat

end

end A235278.P15413206111401449603

/-! ## A235278.P10302153922208118164

`A235280(A000124(n+7)+7)`
-/

namespace A235278.P10302153922208118164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A000124 (n + 7) + 7).toNat

end

end A235278.P10302153922208118164

/-!
# A235279: Number of (n+1) X (9+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235279, there is no canonical definition to state claims against.
-/

/-! ## A235279.P4933739781730769367

`A235280(A374010(n+1))`
-/

namespace A235279.P4933739781730769367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A374010 (n + 1)).toNat

end

end A235279.P4933739781730769367

/-! ## A235279.P2982630285870449468

`A235280(eq[17, A066657(n)])`
-/

namespace A235279.P2982630285870449468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235279.P2982630285870449468

/-! ## A235279.P6447273341071686495

`A235280(A166136(n+7)+3)`
-/

namespace A235279.P6447273341071686495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A166136 (n + 7) + 3).toNat

end

end A235279.P6447273341071686495

/-! ## A235279.P13081972821850461665

`A235280(A000124(n+8)+8)`
-/

namespace A235279.P13081972821850461665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A000124 (n + 8) + 8).toNat

end

end A235279.P13081972821850461665

/-! ## A235279.P324228604676111682

`A235280(A000217(n+8)+9)`
-/

namespace A235279.P324228604676111682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235280 (A000217 (n + 8) + 9).toNat

end

end A235279.P324228604676111682

/-!
# A235280: T(n,k) is the number of (n+1) X (k+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 5 (constant-stress 1 X 1 tilings).

The programs for A235280, there is no canonical definition to state claims against.
-/

/-! ## A235280.P10537136152403391769

`A235271(A002024(n+1)^A059592(n))`
-/

namespace A235280.P10537136152403391769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235271 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235280.P10537136152403391769

/-! ## A235280.P6004281380463929297

`A235271(A002024(n+1)^A102423(n))`
-/

namespace A235280.P6004281380463929297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235271 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A102423 n : ℤ))).toNat

end

end A235280.P6004281380463929297

/-! ## A235280.P13966488887415489750

`A235271(A214046(n+1)^A059592(n))`
-/

namespace A235280.P13966488887415489750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235271 (SequenceMachineLib.roundAway ((A214046 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235280.P13966488887415489750

/-!
# A235281: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235281, there is no canonical definition to state claims against.
-/

/-! ## A235281.P11260617662814451373

`A235289(∑[4*n]+1)`
-/

namespace A235281.P11260617662814451373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235281.P11260617662814451373

/-! ## A235281.P18149614679015834583

`lcm(2, A235289(A001844(n)))`
-/

namespace A235281.P18149614679015834583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235289 (A001844 n).toNat)

end

end A235281.P18149614679015834583

/-! ## A235281.P624078975050045082

`record[A235289(A003602((n+1)²))]`
-/

namespace A235281.P624078975050045082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235281.P624078975050045082

/-! ## A235281.P16321989014908892113

`record[gcd(A049581(n), A235289(n+1))]`
-/

namespace A235281.P16321989014908892113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A235289 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235281.P16321989014908892113

/-! ## A235281.P16239915690623611423

`or(4, A235289(A087327(2*n+1)))`
-/

namespace A235281.P16239915690623611423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A235289 (A087327 (2 * n + 1)).toNat)

end

end A235281.P16239915690623611423

/-!
# A235282: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235282, the canonical program `A235282.P12075057285622094097` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235282 has offset 1).

The definition of A235282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235282.P12075057285622094097

`4*(A038754(n+2)+A029744(2*(n+1)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A235282

/-- `4*(A038754(n+2)+A029744(2*(n+1)))` -/
def P12075057285622094097.Spec : Prop :=
  ∀ n, P12075057285622094097.a n = A235282 (n + 1)

theorem P12075057285622094097.correct : P12075057285622094097.Spec := by
  intro n
  simp only [A235282, Nat.add_sub_cancel]

end A235282

/-! ## A235282.P122581726057714483

`A038754(n+2)+A038754(n+4)+A000079(n+3)`
-/

namespace A235282.P122581726057714483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 2) + (A038754 (n + 4) + A000079 (n + 3))

end

end A235282.P122581726057714483

namespace A235282

/-- `A038754(n+2)+A038754(n+4)+A000079(n+3)` -/
def P122581726057714483.Spec : Prop :=
  ∀ n, P122581726057714483.a n = A235282 (n + 1)

end A235282

/-! ## A235282.P122035493317688970

`A182751(n+2)+A182751(n+4)+A000079(n+3)`
-/

namespace A235282.P122035493317688970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (n + 2) + (A182751 (n + 4) + A000079 (n + 3))

end

end A235282.P122035493317688970

namespace A235282

/-- `A182751(n+2)+A182751(n+4)+A000079(n+3)` -/
def P122035493317688970.Spec : Prop :=
  ∀ n, P122035493317688970.a n = A235282 (n + 1)

end A235282

/-! ## A235282.P4856396699892210582

`A000079(n+3)+A048328(n+5)-A048328(n+1)`
-/

namespace A235282.P4856396699892210582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 3) + (A048328 (n + 5) - A048328 (n + 1))

end

end A235282.P4856396699892210582

namespace A235282

/-- `A000079(n+3)+A048328(n+5)-A048328(n+1)` -/
def P4856396699892210582.Spec : Prop :=
  ∀ n, P4856396699892210582.a n = A235282 (n + 1)

end A235282

/-! ## A235282.P7101811071816792856

`A000079(n+3)+A060647(n+4)-A060647(n+2)`
-/

namespace A235282.P7101811071816792856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 3) + (A060647 (n + 4) - A060647 (n + 2))

end

end A235282.P7101811071816792856

namespace A235282

/-- `A000079(n+3)+A060647(n+4)-A060647(n+2)` -/
def P7101811071816792856.Spec : Prop :=
  ∀ n, P7101811071816792856.a n = A235282 (n + 1)

end A235282

/-! ## A235282.P6858520137000190157

`A182522(n+3)+A182522(n+5)+A011782(n+4)`
-/

namespace A235282.P6858520137000190157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 3) + (A182522 (n + 5) + A011782 (n + 4))

end

end A235282.P6858520137000190157

namespace A235282

/-- `A182522(n+3)+A182522(n+5)+A011782(n+4)` -/
def P6858520137000190157.Spec : Prop :=
  ∀ n, P6858520137000190157.a n = A235282 (n + 1)

end A235282

/-! ## A235282.P11017599392599050059

`2*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=20, a(1)=40, a(2)=68`
-/

namespace A235282.P11017599392599050059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20, 40, 68] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 6 * a (n - 3)

end

end A235282.P11017599392599050059

namespace A235282

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P11017599392599050059.Spec : Prop :=
  ∀ n, P11017599392599050059.a n = A235282 (n + 1)

end A235282

/-!
# A235283: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235283, there is no canonical definition to state claims against.
-/

/-! ## A235283.P7957122197015888895

`A235272(n+1)-(A235282(n+1)+A235271(n+1))`
-/

namespace A235283.P7957122197015888895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235272 (n + 1) - (A235282 (n + 1) + A235271 (n + 1))

end

end A235283.P7957122197015888895

/-! ## A235283.P13300179005882585767

`A235273(n+1)-(A235284(n+1)+A235272(n+1))`
-/

namespace A235283.P13300179005882585767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235273 (n + 1) - (A235284 (n + 1) + A235272 (n + 1))

end

end A235283.P13300179005882585767

/-! ## A235283.P17025463587571873803

`A235289(∑[n+1]+2)`
-/

namespace A235283.P17025463587571873803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235283.P17025463587571873803

/-! ## A235283.P13625325395774278825

`lcm(2, A235289(A000096(n)+3))`
-/

namespace A235283.P13625325395774278825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235289 (A000096 n + 3).toNat)

end

end A235283.P13625325395774278825

/-! ## A235283.P11257092691791106671

`A000108(and(1, 1-n))*A235289(A000096(n)+3)`
-/

namespace A235283.P11257092691791106671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * A235289 (A000096 n + 3).toNat

end

end A235283.P11257092691791106671

/-!
# A235284: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235284, there is no canonical definition to state claims against.
-/

/-! ## A235284.P10136895846326860941

`A235273(n+1)-(A235283(n+1)+A235272(n+1))`
-/

namespace A235284.P10136895846326860941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235273 (n + 1) - (A235283 (n + 1) + A235272 (n + 1))

end

end A235284.P10136895846326860941

/-! ## A235284.P5372692234760553250

`A235289(∑[n+2]+4)`
-/

namespace A235284.P5372692234760553250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235284.P5372692234760553250

/-! ## A235284.P2467773907497723654

`lcm(2, A235289(A167614(n+1)))`
-/

namespace A235284.P2467773907497723654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235289 (A167614 (n + 1)).toNat)

end

end A235284.P2467773907497723654

/-! ## A235284.P15869049081220755091

`record[A235289(A145018(n+1)-2*n)]`
-/

namespace A235284.P15869049081220755091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A145018 (n + 1) - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235284.P15869049081220755091

/-! ## A235284.P18061233923307084676

`A235289(A167614(n+1))+A008683(27*(n+1))`
-/

namespace A235284.P18061233923307084676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A167614 (n + 1)).toNat + A008683 (27 * (n + 1))

end

end A235284.P18061233923307084676

/-!
# A235285: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235285, there is no canonical definition to state claims against.
-/

/-! ## A235285.P9336787184469316513

`A235289(∑[n+3]+7)`
-/

namespace A235285.P9336787184469316513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235285.P9336787184469316513

/-! ## A235285.P12822614101400258526

`lcm(2, A235289(A141214(n)+7))`
-/

namespace A235285.P12822614101400258526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235289 (A141214 n + 7).toNat)

end

end A235285.P12822614101400258526

/-! ## A235285.P7475435985998507537

`and(-1, A235289(A141214(n+1)))`
-/

namespace A235285.P7475435985998507537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A235289 (A141214 (n + 1)).toNat)

end

end A235285.P7475435985998507537

/-! ## A235285.P4257882126232470815

`lcm(4, A235289(Δ[A006503(n+1)]))`
-/

namespace A235285.P4257882126232470815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235289 (f1 (n + 1) - f1 n).toNat)

end

end A235285.P4257882126232470815

/-! ## A235285.P13894890421220313445

`A235289(A141214(n+1))+A000007(n+3)`
-/

namespace A235285.P13894890421220313445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A141214 (n + 1)).toNat + A000007 (n + 3)

end

end A235285.P13894890421220313445

/-!
# A235286: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235286, there is no canonical definition to state claims against.
-/

/-! ## A235286.P783076146859372432

`A235289(∑[n+4]+11)`
-/

namespace A235286.P783076146859372432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A235286.P783076146859372432

/-!
# A235287: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235287, there is no canonical definition to state claims against.
-/

/-! ## A235287.P12002694838506222018

`A235289(∑[n+5]+16)`
-/

namespace A235287.P12002694838506222018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A235287.P12002694838506222018

/-! ## A235287.P4364658046829131338

`lcm(2, A235289(A166136(n+4)))`
-/

namespace A235287.P4364658046829131338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235289 (A166136 (n + 4)).toNat)

end

end A235287.P4364658046829131338

/-! ## A235287.P6123631434232993430

`lcm(4, A235289(A167614(n+4)+3))`
-/

namespace A235287.P6123631434232993430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A235289 (A167614 (n + 4) + 3).toNat)

end

end A235287.P6123631434232993430

/-! ## A235287.P12296976495475200343

`A007318(C(2, n))*A235289(A166136(n+4))`
-/

namespace A235287.P12296976495475200343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235289 (A166136 (n + 4)).toNat

end

end A235287.P12296976495475200343

/-! ## A235287.P2638814729560930606

`A000041(C(2, n+2))*A235289(A166136(n+4))`
-/

namespace A235287.P2638814729560930606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A235289 (A166136 (n + 4)).toNat

end

end A235287.P2638814729560930606

/-!
# A235288: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235288, there is no canonical definition to state claims against.
-/

/-! ## A235288.P9661049550241385785

`A235289(A167487(n+5))`
-/

namespace A235288.P9661049550241385785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A167487 (n + 5)).toNat

end

end A235288.P9661049550241385785

/-! ## A235288.P13417024901889645349

`A235289(A056119(n)+28)`
-/

namespace A235288.P13417024901889645349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A056119 n + 28).toNat

end

end A235288.P13417024901889645349

/-! ## A235288.P7171871525872342003

`A235289(A167499(n+5)+2)`
-/

namespace A235288.P7171871525872342003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A167499 (n + 5) + 2).toNat

end

end A235288.P7171871525872342003

/-! ## A235288.P16274020807493145860

`A235289(A167614(n+5)+4)`
-/

namespace A235288.P16274020807493145860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A167614 (n + 5) + 4).toNat

end

end A235288.P16274020807493145860

/-! ## A235288.P8124096807871231171

`A235289(A000124(n+6)+6)`
-/

namespace A235288.P8124096807871231171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235289 (A000124 (n + 6) + 6).toNat

end

end A235288.P8124096807871231171

/-!
# A235289: T(n,k) is the number of (n+1) X (k+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

The programs for A235289, there is no canonical definition to state claims against.
-/

/-! ## A235289.P4016172117072005318

`A235282(A348808(n)+A002024(n+1))`
-/

namespace A235289.P4016172117072005318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235282 (A348808 n + A002024 (n + 1)).toNat

end

end A235289.P4016172117072005318

/-! ## A235289.P10174316348303958170

`A235282(A348808(n)+A214046(n+1))`
-/

namespace A235289.P10174316348303958170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235282 (A348808 n + A214046 (n + 1)).toNat

end

end A235289.P10174316348303958170

/-! ## A235289.P4106324062417673761

`A235282(A002024(n+1)^A059592(n))`
-/

namespace A235289.P4106324062417673761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235282 (SequenceMachineLib.roundAway ((A002024 (n + 1) : ℚ) ^ (A059592 n : ℤ))).toNat

end

end A235289.P4106324062417673761

/-!
# A235290: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235290, there is no canonical definition to state claims against.
-/

/-! ## A235290.P9876870034182908590

`A235301(∑[4*n]+1)`
-/

namespace A235290.P9876870034182908590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235290.P9876870034182908590

/-! ## A235290.P14436946582336973424

`lcm(2, A235301(A001844(n)))`
-/

namespace A235290.P14436946582336973424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A001844 n).toNat)

end

end A235290.P14436946582336973424

/-! ## A235290.P12735683921527355286

`record[A003982(n)*A235301(n+1)]`
-/

namespace A235290.P12735683921527355286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A235301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235290.P12735683921527355286

/-! ## A235290.P9033642803876097701

`record[A214505(n)*A235301(n+1)]`
-/

namespace A235290.P9033642803876097701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A235301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235290.P9033642803876097701

/-! ## A235290.P16012803756144754491

`record[gcd(A114327(n), A235301(n+1))]`
-/

namespace A235290.P16012803756144754491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A235301 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235290.P16012803756144754491

/-!
# A235291: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235291, the canonical program `A235291.P14290486763489408850` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235291 has offset 1).

The definition of A235291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235291.P14290486763489408850

`14*a(n-2)-48*a(n-4)` with `a(0)=40, a(1)=108, a(2)=272, a(3)=744`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A235291

/-- `14*a(n-2)-48*a(n-4)` -/
def P14290486763489408850.Spec : Prop :=
  ∀ n, P14290486763489408850.a n = A235291 (n + 1)

theorem P14290486763489408850.correct : P14290486763489408850.Spec := by
  intro n
  simp only [A235291, Nat.add_sub_cancel]

end A235291

/-! ## A235291.P17235056035228144794

`A235301(∑[n]+1)`
-/

namespace A235291.P17235056035228144794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235291.P17235056035228144794

namespace A235291

/-- `A235301(∑[n]+1)` -/
def P17235056035228144794.Spec : Prop :=
  ∀ n, P17235056035228144794.a n = A235291 (n + 1)

end A235291

/-! ## A235291.P10699741997120763584

`record[A235301(n+1)]`
-/

namespace A235291.P10699741997120763584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235291.P10699741997120763584

namespace A235291

/-- `record[A235301(n+1)]` -/
def P10699741997120763584.Spec : Prop :=
  ∀ n, P10699741997120763584.a n = A235291 (n + 1)

end A235291

/-! ## A235291.P2475468048961718733

`lcm(2, A235301(A000124(n)))`
-/

namespace A235291.P2475468048961718733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A000124 n).toNat)

end

end A235291.P2475468048961718733

namespace A235291

/-- `lcm(2, A235301(A000124(n)))` -/
def P2475468048961718733.Spec : Prop :=
  ∀ n, (P2475468048961718733.a n : ℤ) = A235291 (n + 1)

end A235291

/-! ## A235291.P9094861757193564448

`A235301(A000124(n))+A235044(n)`
-/

namespace A235291.P9094861757193564448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A000124 n).toNat + A235044 n

end

end A235291.P9094861757193564448

namespace A235291

/-- `A235301(A000124(n))+A235044(n)` -/
def P9094861757193564448.Spec : Prop :=
  ∀ n, P9094861757193564448.a n = A235291 (n + 1)

end A235291

/-!
# A235292: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235292, there is no canonical definition to state claims against.
-/

/-! ## A235292.P13998596349116785999

`A235301(∑[n+1]+2)`
-/

namespace A235292.P13998596349116785999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235292.P13998596349116785999

/-! ## A235292.P15671338952934891298

`lcm(2, A235301(A133263(n+1)))`
-/

namespace A235292.P15671338952934891298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A133263 (n + 1)).toNat)

end

end A235292.P15671338952934891298

/-! ## A235292.P3018600609625278152

`record[A010054(n)*A235301(n+2)]`
-/

namespace A235292.P3018600609625278152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235292.P3018600609625278152

/-! ## A235292.P13183242908333844970

`record[A235301(n+2)/A013612(n)]`
-/

namespace A235292.P13183242908333844970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235301 (n + 2) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235292.P13183242908333844970

/-! ## A235292.P16501818301709846675

`record[A235301(n+2)/A080852(n)]`
-/

namespace A235292.P16501818301709846675
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235301 (n + 2) : ℚ) / (A080852 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235292.P16501818301709846675

/-!
# A235293: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235293, there is no canonical definition to state claims against.
-/

/-! ## A235293.P4455145197090231150

`A235301(∑[n+2]+4)`
-/

namespace A235293.P4455145197090231150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235293.P4455145197090231150

/-! ## A235293.P4614729443978330619

`lcm(2, A235301(A167614(n+1)))`
-/

namespace A235293.P4614729443978330619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A167614 (n + 1)).toNat)

end

end A235293.P4614729443978330619

/-! ## A235293.P17404967366479354586

`A243834(n)+A235301(A167614(n+1))`
-/

namespace A235293.P17404967366479354586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A235301 (A167614 (n + 1)).toNat

end

end A235293.P17404967366479354586

/-! ## A235293.P16247286292786099700

`and(-A007318(n), A235301(A046691(n)+7))`
-/

namespace A235293.P16247286292786099700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A235301 (A046691 n + 7).toNat)

end

end A235293.P16247286292786099700

/-! ## A235293.P16249596530247287490

`A235301(A167614(n+1))%A235298(n+1)`
-/

namespace A235293.P16249596530247287490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235301 (A167614 (n + 1)).toNat) (A235298 (n + 1))

end

end A235293.P16249596530247287490

/-!
# A235294: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235294, there is no canonical definition to state claims against.
-/

/-! ## A235294.P6389622802153288707

`A235301(∑[n+3]+7)`
-/

namespace A235294.P6389622802153288707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235294.P6389622802153288707

/-! ## A235294.P1964519980197824749

`lcm(2, A235301(A055999(n)+10))`
-/

namespace A235294.P1964519980197824749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A055999 n + 10).toNat)

end

end A235294.P1964519980197824749

/-! ## A235294.P16241043557010315799

`A235301(A000217(n+3)+4)+char[43]`
-/

namespace A235294.P16241043557010315799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235294.P16241043557010315799

/-! ## A235294.P5653309130935848191

`A235301(A055999(n)+10)^A007318(C(2, n))`
-/

namespace A235294.P5653309130935848191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235301 (A055999 n + 10).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A235294.P5653309130935848191

/-! ## A235294.P10383397344349128070

`A007318(C(2, n+1))*A235301(A055999(n)+10)`
-/

namespace A235294.P10383397344349128070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A235301 (A055999 n + 10).toNat

end

end A235294.P10383397344349128070

/-!
# A235295: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235295, there is no canonical definition to state claims against.
-/

/-! ## A235295.P15907124243315575087

`A235301(∑[n+4]+11)`
-/

namespace A235295.P15907124243315575087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A235295.P15907124243315575087

/-! ## A235295.P6487841751833923383

`lcm(2, A235301(A167499(n+3)))`
-/

namespace A235295.P6487841751833923383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A167499 (n + 3)).toNat)

end

end A235295.P6487841751833923383

/-! ## A235295.P6702887417168652490

`A235301(A167614(n+3)+2)+char[32]`
-/

namespace A235295.P6702887417168652490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A167614 (n + 3) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235295.P6702887417168652490

/-! ## A235295.P8994430685605567575

`and(-A007318(n), A235301(A056000(n)+15))`
-/

namespace A235295.P8994430685605567575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A235301 (A056000 n + 15).toNat)

end

end A235295.P8994430685605567575

/-! ## A235295.P13885748209825927743

`A007318(C(2, n))*A235301(A056000(n)+15)`
-/

namespace A235295.P13885748209825927743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A235301 (A056000 n + 15).toNat

end

end A235295.P13885748209825927743

/-!
# A235296: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235296, there is no canonical definition to state claims against.
-/

/-! ## A235296.P10405716196470080723

`A235301(∑[n+5]+16)`
-/

namespace A235296.P10405716196470080723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A235296.P10405716196470080723

/-! ## A235296.P7057808913255546268

`lcm(2, A235301(A374007(n+1)))`
-/

namespace A235296.P7057808913255546268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235301 (A374007 (n + 1)).toNat)

end

end A235296.P7057808913255546268

/-! ## A235296.P4035254699608517600

`A235301(A052905(n+3))+A151878(n+1)`
-/

namespace A235296.P4035254699608517600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A052905 (n + 3)).toNat + A151878 (n + 1)

end

end A235296.P4035254699608517600

/-! ## A235296.P5660655958063731245

`A235301(Δ[A026054(n+3)]+1)%A235278(2*n+1)`
-/

namespace A235296.P5660655958063731245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235301 (f1 (n + 1) - f1 n + 1).toNat) (A235278 (2 * n + 1))

end

end A235296.P5660655958063731245

/-!
# A235297: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235297, there is no canonical definition to state claims against.
-/

/-! ## A235297.P12350540503062188690

`A235301(A374008(n+1))`
-/

namespace A235297.P12350540503062188690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A374008 (n + 1)).toNat

end

end A235297.P12350540503062188690

/-! ## A235297.P11735258976726184128

`A235301(A167487(n+5))`
-/

namespace A235297.P11735258976726184128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A167487 (n + 5)).toNat

end

end A235297.P11735258976726184128

/-! ## A235297.P11616750020754622689

`A235301(A056119(n)+28)`
-/

namespace A235297.P11616750020754622689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A056119 n + 28).toNat

end

end A235297.P11616750020754622689

/-! ## A235297.P816448286801025244

`A235301(eq[11, A066657(n)])`
-/

namespace A235297.P816448286801025244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235297.P816448286801025244

/-! ## A235297.P1330914943019150138

`A235301(A000124(n+6)+6)`
-/

namespace A235297.P1330914943019150138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A000124 (n + 6) + 6).toNat

end

end A235297.P1330914943019150138

/-!
# A235298: Number of (n+1) X (8+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235298, there is no canonical definition to state claims against.
-/

/-! ## A235298.P17897902779942608353

`A235301(A374009(n+1))`
-/

namespace A235298.P17897902779942608353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A374009 (n + 1)).toNat

end

end A235298.P17897902779942608353

/-! ## A235298.P11817281764849174373

`A235301(eq[13, A066657(n)])`
-/

namespace A235298.P11817281764849174373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235298.P11817281764849174373

/-! ## A235298.P3628687253895483130

`A235301(A167499(n+6)+3)`
-/

namespace A235298.P3628687253895483130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A167499 (n + 6) + 3).toNat

end

end A235298.P3628687253895483130

/-! ## A235298.P11516477016531702794

`A235301(A167614(n+6)+5)`
-/

namespace A235298.P11516477016531702794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A167614 (n + 6) + 5).toNat

end

end A235298.P11516477016531702794

/-! ## A235298.P1003554655931200800

`A235301(eq[7, A002262(n)]+1)`
-/

namespace A235298.P1003554655931200800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235298.P1003554655931200800

/-!
# A235299: Number of (n+1) X (9+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A235299, there is no canonical definition to state claims against.
-/

/-! ## A235299.P10701432590287827359

`A235301(A374010(n+1))`
-/

namespace A235299.P10701432590287827359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (A374010 (n + 1)).toNat

end

end A235299.P10701432590287827359

/-! ## A235299.P5716971814637615542

`A235301(eq[17, A066657(n)])`
-/

namespace A235299.P5716971814637615542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235299.P5716971814637615542

/-! ## A235299.P5269516262790188638

`A235301(eq[8, A002262(n)]+1)`
-/

namespace A235299.P5269516262790188638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A235299.P5269516262790188638

/-! ## A235299.P12797333305320084254

`A235301(eq[10, A131818(n+1)])`
-/

namespace A235299.P12797333305320084254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235299.P12797333305320084254

/-! ## A235299.P16721513360936131380

`A235301(eq[6, A219347(n)])`
-/

namespace A235299.P16721513360936131380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235301 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235299.P16721513360936131380

