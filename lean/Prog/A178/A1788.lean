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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A178801: Write n! partition(n) times.

The programs for A178801, there is no canonical definition to state claims against.
-/

/-! ## A178801.P1667816940666064065

`A036042(n)!`
-/

namespace A178801.P1667816940666064065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036042 n).toNat

end

end A178801.P1667816940666064065

/-! ## A178801.P15937383044369902589

`dr(A060002(n))!`
-/

namespace A178801.P15937383044369902589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (A060002 n))

end

end A178801.P15937383044369902589

/-! ## A178801.P12927106472217790554

`dr(A068743(n))!`
-/

namespace A178801.P12927106472217790554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (A068743 n))

end

end A178801.P12927106472217790554

/-! ## A178801.P10204699595695219391

`dr(A332567(n))!`
-/

namespace A178801.P10204699595695219391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.digitalRoot (A332567 n))

end

end A178801.P10204699595695219391

/-! ## A178801.P15891876264061808657

`∑{e}[A036035(n), #]!`
-/

namespace A178801.P15891876264061808657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178801.P15891876264061808657

/-! ## A178801.P12873876827837844384

`∑{e}[A063008(n), #]!`
-/

namespace A178801.P12873876827837844384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A178801.P12873876827837844384

/-! ## A178801.P4097237700093051787

`∑[char[A000070(n)]]!`
-/

namespace A178801.P4097237700093051787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178801.P4097237700093051787

/-! ## A178801.P15602467354438873651

`A069123(n)*A078760(n)`
-/

namespace A178801.P15602467354438873651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069123 n * A078760 n

end

end A178801.P15602467354438873651

/-! ## A178801.P4694131935587089056

`A096162(n)*A130561(n)`
-/

namespace A178801.P4694131935587089056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096162 n * A130561 n

end

end A178801.P4694131935587089056

/-! ## A178801.P13197168738542790367

`A118851(n)*A121457(n)`
-/

namespace A178801.P13197168738542790367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 n * A121457 n

end

end A178801.P13197168738542790367

/-!
# A178802: Irregular triangle T(n,k) = A048996(n,k) * A178801(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A178802, there is no canonical definition to state claims against.
-/

/-! ## A178802.P17932642651803884856

`A085643(n)*A121457(n)`
-/

namespace A178802.P17932642651803884856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085643 n * A121457 n

end

end A178802.P17932642651803884856

/-! ## A178802.P4129562817925193635

`A098546(n)*A178883(n)`
-/

namespace A178802.P4129562817925193635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098546 n * A178883 n

end

end A178802.P4129562817925193635

/-! ## A178802.P2525154697249147073

`A107106(n)*A182779(n)`
-/

namespace A178802.P2525154697249147073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107106 n * A182779 n

end

end A178802.P2525154697249147073

/-! ## A178802.P1993302859365477617

`A130561(n)*A178803(n)`
-/

namespace A178802.P1993302859365477617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130561 n * A178803 n

end

end A178802.P1993302859365477617

/-! ## A178802.P17252833686344768348

`A178886(n)*A178888(n)`
-/

namespace A178802.P17252833686344768348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178886 n * A178888 n

end

end A178802.P17252833686344768348

/-! ## A178802.P13823871229683003152

`A036042(n)!*A048996(n)`
-/

namespace A178802.P13823871229683003152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℤ) * A048996 n

end

end A178802.P13823871229683003152

/-! ## A178802.P11923677470073863840

`A048996(n)*A178801(n)`
-/

namespace A178802.P11923677470073863840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A178801 n

end

end A178802.P11923677470073863840

/-! ## A178802.P9957303451082529159

`A008480(A185974(n))*A178801(n)`
-/

namespace A178802.P9957303451082529159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A185974 n).toNat * A178801 n

end

end A178802.P9957303451082529159

/-!
# A178803: Irregular triangle: T(n,k) is the factorial of the number of parts in the k-th partition of n listed in Abramowitz and Stegun order, read by rows, 1 <= k <= A000041(n).

The programs for A178803, there is no canonical definition to state claims against.
-/

/-! ## A178803.P7235999107277737050

`A130675(A185974(n))`
-/

namespace A178803.P7235999107277737050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A185974 n).toNat

end

end A178803.P7235999107277737050

/-! ## A178803.P16789968689573404582

`A036043(n)!`
-/

namespace A178803.P16789968689573404582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A036043 n).toNat

end

end A178803.P16789968689573404582

/-! ## A178803.P10952601714963133336

`A048996(n)*A096162(n)`
-/

namespace A178803.P10952601714963133336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A096162 n

end

end A178803.P10952601714963133336

/-! ## A178803.P2286770572742578473

`A049009(n)/A122454(n)`
-/

namespace A178803.P2286770572742578473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049009 n : ℚ) / (A122454 n : ℚ)

end

end A178803.P2286770572742578473

/-! ## A178803.P6340125927189888559

`A178888(n)/A098546(n)`
-/

namespace A178803.P6340125927189888559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 n : ℚ) / (A098546 n : ℚ)

end

end A178803.P6340125927189888559

/-! ## A178803.P9140895273121984155

`A178802(n)/A130561(n)`
-/

namespace A178803.P9140895273121984155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A130561 n : ℚ)

end

end A178803.P9140895273121984155

/-! ## A178803.P6554312812531643599

`A178883(n)/A178886(n)`
-/

namespace A178803.P6554312812531643599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178883 n : ℚ) / (A178886 n : ℚ)

end

end A178803.P6554312812531643599

/-! ## A178803.P5017547110696165079

`A035206(n)*A096162(n)/A098546(n)`
-/

namespace A178803.P5017547110696165079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 n * A096162 n : ℚ) / (A098546 n : ℚ)

end

end A178803.P5017547110696165079

/-! ## A178803.P17187340729723727689

`A130675(A334433(n))`
-/

namespace A178803.P17187340729723727689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A334433 n).toNat

end

end A178803.P17187340729723727689

/-! ## A178803.P167472327785386944

`A130675(A334435(n))`
-/

namespace A178803.P167472327785386944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A334435 n).toNat

end

end A178803.P167472327785386944

/-! ## A178803.P14967087477514107994

`A130675(A334438(n))`
-/

namespace A178803.P14967087477514107994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A334438 n).toNat

end

end A178803.P14967087477514107994

/-!
# A178804: When dealing cards into 3 piles (Left, Center, Right), the number of cards in the n-th card's pile, if dealing in a pattern L, C, R, C, L, C, R, C, L, C, ... [as any thoughtful six-year-old will try to do when sharing a pile of candy among 3 people].

The programs for A178804, the canonical program `A178804.P80466748880452301` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178804 has offset 1).

The definition of A178804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178804.P80466748880452301

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178804

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P80466748880452301.Spec : Prop :=
  ∀ n, P80466748880452301.a n = A178804 (n + 1)

theorem P80466748880452301.correct : P80466748880452301.Spec := by
  intro n
  simp only [A178804, Nat.add_sub_cancel]

end A178804

/-! ## A178804.P13581618251705221740

`floor(lcm(2, n)/4)+1`
-/

namespace A178804.P13581618251705221740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n : ℚ) / 4⌋ + 1

end

end A178804.P13581618251705221740

namespace A178804

/-- `floor(lcm(2, n)/4)+1` -/
def P13581618251705221740.Spec : Prop :=
  ∀ n, P13581618251705221740.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P548698770903051179

`floor(gcd(n, ∑[n])/2)+1`
-/

namespace A178804.P548698770903051179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋ + 1

end

end A178804.P548698770903051179

namespace A178804

/-- `floor(gcd(n, ∑[n])/2)+1` -/
def P548698770903051179.Spec : Prop :=
  ∀ n, P548698770903051179.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P527509262477298267

`floor(n/gcd(4, 2*n))+1`
-/

namespace A178804.P527509262477298267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.gcd 4 (2 * n) : ℚ)⌋ + 1

end

end A178804.P527509262477298267

namespace A178804

/-- `floor(n/gcd(4, 2*n))+1` -/
def P527509262477298267.Spec : Prop :=
  ∀ n, P527509262477298267.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P2180463626617852458

`ceil((n^(n%2)+n)/4)`
-/

namespace A178804.P2180463626617852458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ (n % 2) + n : ℚ) / 4⌉

end

end A178804.P2180463626617852458

namespace A178804

/-- `ceil((n^(n%2)+n)/4)` -/
def P2180463626617852458.Spec : Prop :=
  ∀ n, P2180463626617852458.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P18152953632482022869

`floor(n/((-1)^n+3))+1`
-/

namespace A178804.P18152953632482022869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((-1) ^ n + 3 : ℚ)⌋ + 1

end

end A178804.P18152953632482022869

namespace A178804

/-- `floor(n/((-1)^n+3))+1` -/
def P18152953632482022869.Spec : Prop :=
  ∀ n, P18152953632482022869.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P10563476759067624053

`ceil((n+1)/(2*(2-and(1, n))))`
-/

namespace A178804.P10563476759067624053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (2 * (2 - (Nat.land 1 n : ℤ)) : ℚ)⌉

end

end A178804.P10563476759067624053

namespace A178804

/-- `ceil((n+1)/(2*(2-and(1, n))))` -/
def P10563476759067624053.Spec : Prop :=
  ∀ n, P10563476759067624053.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P1040260505490979940

`ceil((n+1)/(xor(1, n)-(n-3)))`
-/

namespace A178804.P1040260505490979940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((Nat.xor 1 n : ℤ) - ((n : ℤ) - 3) : ℚ)⌉

end

end A178804.P1040260505490979940

namespace A178804

/-- `ceil((n+1)/(xor(1, n)-(n-3)))` -/
def P1040260505490979940.Spec : Prop :=
  ∀ n, P1040260505490979940.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P1028290896515460225

`-floor((n+1)/(2*or(n, -2)))`
-/

namespace A178804.P1028290896515460225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(n + 1 : ℚ) / (2 * Int.lor (n : ℤ) (-2) : ℚ)⌋

end

end A178804.P1028290896515460225

namespace A178804

/-- `-floor((n+1)/(2*or(n, -2)))` -/
def P1028290896515460225.Spec : Prop :=
  ∀ n, P1028290896515460225.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P17857227586912395169

`ceil(-((n+1)/(2*or(n, -2))))`
-/

namespace A178804.P17857227586912395169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n + 1 : ℚ) / (2 * Int.lor (n : ℤ) (-2) : ℚ))⌉

end

end A178804.P17857227586912395169

namespace A178804

/-- `ceil(-((n+1)/(2*or(n, -2))))` -/
def P17857227586912395169.Spec : Prop :=
  ∀ n, P17857227586912395169.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P4547436741845594066

`∑[a(n-4)-(-1)^n]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A178804.P4547436741845594066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n f1 =>
  f1 (n - 4) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178804.P4547436741845594066

namespace A178804

/-- `∑[a(n-4)-(-1)^n]` -/
def P4547436741845594066.Spec : Prop :=
  ∀ n, P4547436741845594066.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P3155642251886386131

`A106466(xor(1, n))`
-/

namespace A178804.P3155642251886386131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (Nat.xor 1 n)

end

end A178804.P3155642251886386131

namespace A178804

/-- `A106466(xor(1, n))` -/
def P3155642251886386131.Spec : Prop :=
  ∀ n, P3155642251886386131.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P13827451174697273953

`ceil(A029579(n)/2)`
-/

namespace A178804.P13827451174697273953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029579 n : ℚ) / 2⌉

end

end A178804.P13827451174697273953

namespace A178804

/-- `ceil(A029579(n)/2)` -/
def P13827451174697273953.Spec : Prop :=
  ∀ n, P13827451174697273953.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P14723161705845468666

`ceil(A215495(n)/2)`
-/

namespace A178804.P14723161705845468666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215495 n : ℚ) / 2⌉

end

end A178804.P14723161705845468666

namespace A178804

/-- `ceil(A215495(n)/2)` -/
def P14723161705845468666.Spec : Prop :=
  ∀ n, P14723161705845468666.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P8085390262927860235

`A008619(gcd(n, ∑[n]))`
-/

namespace A178804.P8085390262927860235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A178804.P8085390262927860235

namespace A178804

/-- `A008619(gcd(n, ∑[n]))` -/
def P8085390262927860235.Spec : Prop :=
  ∀ n, P8085390262927860235.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P13058601937947508193

`A008619(lcm(2, n)/2)`
-/

namespace A178804.P13058601937947508193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A178804.P13058601937947508193

namespace A178804

/-- `A008619(lcm(2, n)/2)` -/
def P13058601937947508193.Spec : Prop :=
  ∀ n, P13058601937947508193.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P5744405656907702067

`ceil(A006368(n+1)/3)`
-/

namespace A178804.P5744405656907702067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006368 (n + 1) : ℚ) / 3⌉

end

end A178804.P5744405656907702067

namespace A178804

/-- `ceil(A006368(n+1)/3)` -/
def P5744405656907702067.Spec : Prop :=
  ∀ n, P5744405656907702067.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P4860452323701905314

`round(A186421(n+1)/2)`
-/

namespace A178804.P4860452323701905314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186421 (n + 1) : ℚ) / 2)

end

end A178804.P4860452323701905314

namespace A178804

/-- `round(A186421(n+1)/2)` -/
def P4860452323701905314.Spec : Prop :=
  ∀ n, P4860452323701905314.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P2201170271308118761

`ceil((n+1)/A040003(n))`
-/

namespace A178804.P2201170271308118761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A040003 n : ℚ)⌉

end

end A178804.P2201170271308118761

namespace A178804

/-- `ceil((n+1)/A040003(n))` -/
def P2201170271308118761.Spec : Prop :=
  ∀ n, P2201170271308118761.a n = A178804 (n + 1)

end A178804

/-! ## A178804.P2251800758683869411

`A008619(A026741(n))`
-/

namespace A178804.P2251800758683869411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026741 n).toNat

end

end A178804.P2251800758683869411

namespace A178804

/-- `A008619(A026741(n))` -/
def P2251800758683869411.Spec : Prop :=
  ∀ n, P2251800758683869411.a n = A178804 (n + 1)

end A178804

/-!
# A178805: Numbers k such that ||k/log(k)|| reaches a new minimum, where ||x|| is the distance from x to the nearest integer.

The programs for A178805, there is no canonical definition to state claims against.
-/

/-! ## A178805.P17247034225402709894

`A120726(∑[(4*n!+5+n)%((n+2)²-1)+1])`
-/

namespace A178805.P17247034225402709894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * Nat.factorial n + 5 + n : ℤ) (((n + 2) ^ 2 : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120726 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178805.P17247034225402709894

/-! ## A178805.P9713973814496341396

`record[A123302(A083477(n+1))]`
-/

namespace A178805.P9713973814496341396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123302 (A083477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178805.P9713973814496341396

/-!
# A178806: Numbers n such that ||n/log(n)|| * log(n) reaches a new minimum, where ||x|| is the distance from x to the nearest integer.

The programs for A178806, there is no canonical definition to state claims against.
-/

/-! ## A178806.P2178895494753360062

`A178805(lt[A178767(n+4), A077082(n+3)])`
-/

namespace A178806.P2178895494753360062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178767 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077082 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A178806.P2178895494753360062

/-!
# A178807: G.f.: Sum_{n>=0} [Sum_{k>=0} C(n+k-1,k)^2*x^k]^2 * x^n.

The programs for A178807, there is no canonical definition to state claims against.
-/

/-! ## A178807.P11337521670468694577

`A080098(A007820(n))`
-/

namespace A178807.P11337521670468694577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A007820 n).toNat

end

end A178807.P11337521670468694577

/-! ## A178807.P16554004049096343049

`A289494(∑[A000172(n)])`
-/

namespace A178807.P16554004049096343049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178807.P16554004049096343049

/-!
# A178808: a(n) = (1/n^2) * Sum_{k = 0..n-1} (2*k+1)*(D_k)^2, where D_0, D_1, ... are central Delannoy numbers given by A001850.

The programs for A178808, the canonical program `A178808.P4383453861225710956` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178808 has offset 1).

The definition of A178808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178808.P4383453861225710956

`(6*A001850(n+1)*A001850(n)-A001850(n+1)²-A001850(n)²)/8`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178808

/-- `(6*A001850(n+1)*A001850(n)-A001850(n+1)²-A001850(n)²)/8` -/
def P4383453861225710956.Spec : Prop :=
  ∀ n, P4383453861225710956.a n = (A178808 (n + 1) : ℚ)

end A178808

/-! ## A178808.P18314510873151002701

`∑[Δ[A047781(n)]*A006318(n)]`
-/

namespace A178808.P18314510873151002701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A006318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178808.P18314510873151002701

namespace A178808

/-- `∑[Δ[A047781(n)]*A006318(n)]` -/
def P18314510873151002701.Spec : Prop :=
  ∀ n, P18314510873151002701.a n = A178808 (n + 1)

end A178808

/-! ## A178808.P15016645747642302215

`∑[Δ[A123164(n)]*A001003(n)]`
-/

namespace A178808.P15016645747642302215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178808.P15016645747642302215

namespace A178808

/-- `∑[Δ[A123164(n)]*A001003(n)]` -/
def P15016645747642302215.Spec : Prop :=
  ∀ n, P15016645747642302215.a n = A178808 (n + 1)

end A178808

/-!
# A178809: Decimal expansion of the area of the regular 12-gon (dodecagon) of edge length 1.

The programs for A178809, there is no canonical definition to state claims against.
-/

/-! ## A178809.P6972690929868696388

`A176532(char[1]+n)`
-/

namespace A178809.P6972690929868696388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 ((if ∃ j, f1 j = n then 1 else 0) + n + 2)

end

end A178809.P6972690929868696388

/-! ## A178809.P3437589327347265599

`or(char[1], A176532(n))`
-/

namespace A178809.P3437589327347265599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A176532 (n + 2))

end

end A178809.P3437589327347265599

/-! ## A178809.P10190915538875910932

`A176532(n)-A159075(n)`
-/

namespace A178809.P10190915538875910932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) - A159075 n

end

end A178809.P10190915538875910932

/-! ## A178809.P4418093878704823746

`A010482(2-A158799(n)+n)`
-/

namespace A178809.P4418093878704823746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010482 ((2 - A158799 n + (n : ℤ)).toNat + 1)

end

end A178809.P4418093878704823746

/-! ## A178809.P15385153763887392130

`A010482(2-(A158799(n)-n))`
-/

namespace A178809.P15385153763887392130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010482 ((2 - (A158799 n - (n : ℤ))).toNat + 1)

end

end A178809.P15385153763887392130

/-! ## A178809.P7088957408722072929

`A176532(n)+A000007(A008611(n))`
-/

namespace A178809.P7088957408722072929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) + A000007 (A008611 n).toNat

end

end A178809.P7088957408722072929

/-! ## A178809.P17778288618232768905

`A176532(n)+A000007(A106249(n))`
-/

namespace A178809.P17778288618232768905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) + A000007 (A106249 n).toNat

end

end A178809.P17778288618232768905

/-! ## A178809.P6147237647043303405

`A176532(A233583(n+1))%10`
-/

namespace A178809.P6147237647043303405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176532 ((A233583 (n + 1)).toNat + 2)) 10

end

end A178809.P6147237647043303405

/-! ## A178809.P8506657706773198702

`A176532(n)+A036987(A348511(n+1))`
-/

namespace A178809.P8506657706773198702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) + A036987 (A348511 (n + 1)).toNat

end

end A178809.P8506657706773198702

/-! ## A178809.P13440389553391222065

`gcd(A008683(A011775(n+1)), A176532(n))`
-/

namespace A178809.P13440389553391222065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A011775 (n + 1)).toNat) (A176532 (n + 2))

end

end A178809.P13440389553391222065

/-! ## A178809.P15305360212199050593

`A176532(n)+A036987(n²+2)`
-/

namespace A178809.P15305360212199050593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) + A036987 (n ^ 2 + 2)

end

end A178809.P15305360212199050593

/-! ## A178809.P7853242708303300413

`A176532(n)-A207710(A107003(n+1))`
-/

namespace A178809.P7853242708303300413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) - A207710 (A107003 (n + 1)).toNat

end

end A178809.P7853242708303300413

/-! ## A178809.P16015545879045899244

`A176532(n)+A059995(A140378(n+1))`
-/

namespace A178809.P16015545879045899244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176532 (n + 2) + A059995 (A140378 (n + 1)).toNat

end

end A178809.P16015545879045899244

/-!
# A178810: Largest possible number of consecutive integers with the same prime signature as A025487(n).

The programs for A178810, there is no canonical definition to state claims against.
-/

/-! ## A178810.P17752350209708964265

`gcd(A057047(n), A150870(n))`
-/

namespace A178810.P17752350209708964265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057047 n) (A150870 n)

end

end A178810.P17752350209708964265

/-! ## A178810.P4809931523070218077

`gcd(A134057(n), A357378(n))`
-/

namespace A178810.P4809931523070218077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134057 n) (A357378 n)

end

end A178810.P4809931523070218077

/-! ## A178810.P11187927290096149240

`A002260(A083075(2*(n+1)))%8`
-/

namespace A178810.P11187927290096149240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (A083075 (2 * (n + 1))).toNat) 8

end

end A178810.P11187927290096149240

/-! ## A178810.P1626107133227086329

`gcd(Δ[A045791(n+1)], A317616(n+1))`
-/

namespace A178810.P1626107133227086329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A317616 (n + 1))

end

end A178810.P1626107133227086329

/-! ## A178810.P6531948308641228900

`A013632(A297661(n+1)-A013632(n))`
-/

namespace A178810.P6531948308641228900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A297661 (n + 1) - A013632 n).toNat

end

end A178810.P6531948308641228900

/-!
# A178813: a(n) = (prime(n)^(p-1) - 1)/p^2 mod p, where p is the first prime that divides (prime(n)^(p-1) - 1)/p.

The programs for A178813, there is no canonical definition to state claims against.
-/

/-! ## A178813.P4705433876783536811

`A178814(p?[comp[n²]])`
-/

namespace A178813.P4705433876783536811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A178813.P4705433876783536811

/-! ## A178813.P13420829269080750603

`A178814(eq[2, ∑{d}[n, 2%#²]])`
-/

namespace A178813.P13420829269080750603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 2 % d ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178814 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178813.P13420829269080750603

/-! ## A178813.P8362528362692766118

`A178814(A390240(n))`
-/

namespace A178813.P8362528362692766118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178814 (A390240 n).toNat

end

end A178813.P8362528362692766118

/-! ## A178813.P5247229119930453425

`A178814(Δ[A007504(n)])`
-/

namespace A178813.P5247229119930453425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178814 (f1 (n + 1) - f1 n).toNat

end

end A178813.P5247229119930453425

/-! ## A178813.P6070032200114975316

`A178814(A000040(n+1))`
-/

namespace A178813.P6070032200114975316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178814 (A000040 (n + 1)).toNat

end

end A178813.P6070032200114975316

/-!
# A178815: First base of a nonzero Fermat quotient mod the n-th prime.

The programs for A178815, the canonical program `A178815.P2023816175588985977` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178815 has offset 1).

The definition of A178815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178815.P2023816175588985977

`ceil(cosh(acot(n)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178815

/-- `ceil(cosh(acot(n)))` -/
def P2023816175588985977.Spec : Prop :=
  ∀ n, P2023816175588985977.a n = A178815 (n + 1)

theorem P2023816175588985977.correct : P2023816175588985977.Spec := by
  intro n
  simp only [A178815, Nat.add_sub_cancel]

end A178815

/-!
# A178819: Pascal's prism (3-dimensional array) read by folded antidiagonal cross-sections: (h+i; h, i-j, j), h >= 0, i >= 0, 0 <= j <= i.

The programs for A178819, there is no canonical definition to state claims against.
-/

/-! ## A178819.P2998687601846593494

`A046816(A118758(n)%A172508(n+1))`
-/

namespace A178819.P2998687601846593494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (Int.tmod (A118758 n) (A172508 (n + 1))).toNat

end

end A178819.P2998687601846593494

/-! ## A178819.P13271745770517975601

`A046816(A118758(n))%A281486(n+1)`
-/

namespace A178819.P13271745770517975601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046816 (A118758 n).toNat) (A281486 (n + 1))

end

end A178819.P13271745770517975601

/-! ## A178819.P641570979288891999

`A109672(∑[A274821(n)^A080300(2*(n+1))])`
-/

namespace A178819.P641570979288891999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274821 n : ℚ) ^ (A080300 (2 * (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109672 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A178819.P641570979288891999

/-! ## A178819.P13463585580788685853

`A109672(∑[A090861(n+1)^A080300(2*(n+1))])`
-/

namespace A178819.P13463585580788685853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090861 (n + 1) : ℚ) ^ (A080300 (2 * (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109672 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A178819.P13463585580788685853

/-!
# A178820: Triangle read by rows: T(n,k) = C(n+3,3) * C(n,k), 0 <= k <= n.

The programs for A178820, the canonical program `A178820.P2891871680583135745` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178820 has offset 0).

The definition of A178820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178820.P8149357877793555709

`C(A002024(n+1)+2, 3)*A007318(n)`
-/

namespace A178820.P8149357877793555709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002024 (n + 1) + 2).toNat 3 : ℤ) * A007318 n

end

end A178820.P8149357877793555709

namespace A178820

/-- `C(A002024(n+1)+2, 3)*A007318(n)` -/
def P8149357877793555709.Spec : Prop :=
  ∀ n, P8149357877793555709.a n = A178820 n

end A178820

/-! ## A178820.P4238301896304588637

`A000292(∑[A010054(n)])*A007318(n)`
-/

namespace A178820.P4238301896304588637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A007318 n

end

end A178820.P4238301896304588637

namespace A178820

/-- `A000292(∑[A010054(n)])*A007318(n)` -/
def P4238301896304588637.Spec : Prop :=
  ∀ n, P4238301896304588637.a n = A178820 n

end A178820

/-! ## A178820.P6092474525223554038

`A000292(A002024(n+1))*A007318(n)`
-/

namespace A178820.P6092474525223554038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002024 (n + 1)).toNat * A007318 n

end

end A178820.P6092474525223554038

namespace A178820

/-- `A000292(A002024(n+1))*A007318(n)` -/
def P6092474525223554038.Spec : Prop :=
  ∀ n, P6092474525223554038.a n = A178820 n

end A178820

/-! ## A178820.P5026921709026672799

`A000292(A003056(n)+1)*A007318(n)`
-/

namespace A178820.P5026921709026672799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003056 n + 1).toNat * A007318 n

end

end A178820.P5026921709026672799

namespace A178820

/-- `A000292(A003056(n)+1)*A007318(n)` -/
def P5026921709026672799.Spec : Prop :=
  ∀ n, P5026921709026672799.a n = A178820 n

end A178820

/-! ## A178820.P2891871680583135745

`A000292(A002260(n+1))*A104713(n+3)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A178820

/-- `A000292(A002260(n+1))*A104713(n+3)` -/
def P2891871680583135745.Spec : Prop :=
  ∀ n, P2891871680583135745.a n = A178820 n

theorem P2891871680583135745.correct : P2891871680583135745.Spec := by
  intro n
  simp only [A178820]

end A178820

/-! ## A178820.P1064507026577595151

`A000292(A002024(n+1))/2*A028326(n)`
-/

namespace A178820.P1064507026577595151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (A002024 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A178820.P1064507026577595151

namespace A178820

/-- `A000292(A002024(n+1))/2*A028326(n)` -/
def P1064507026577595151.Spec : Prop :=
  ∀ n, P1064507026577595151.a n = (A178820 n : ℚ)

end A178820

/-! ## A178820.P3712866664133952895

`ceil(A135087(n)/4)*A000292(A003056(n)+1)`
-/

namespace A178820.P3712866664133952895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A000292 (A003056 n + 1).toNat

end

end A178820.P3712866664133952895

namespace A178820

/-- `ceil(A135087(n)/4)*A000292(A003056(n)+1)` -/
def P3712866664133952895.Spec : Prop :=
  ∀ n, P3712866664133952895.a n = A178820 n

end A178820

/-! ## A178820.P14037844113979541464

`A347056(n)+A121547(n+1)`
-/

namespace A178820.P14037844113979541464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347056 n + A121547 (n + 1)

end

end A178820.P14037844113979541464

namespace A178820

/-- `A347056(n)+A121547(n+1)` -/
def P14037844113979541464.Spec : Prop :=
  ∀ n, P14037844113979541464.a n = A178820 n

end A178820

/-! ## A178820.P10992033956981075221

`A121547(n+1)+A121547(n)+A094305(n)`
-/

namespace A178820.P10992033956981075221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121547 (n + 1) + (A121547 n + A094305 n)

end

end A178820.P10992033956981075221

namespace A178820

/-- `A121547(n+1)+A121547(n)+A094305(n)` -/
def P10992033956981075221.Spec : Prop :=
  ∀ n, P10992033956981075221.a n = A178820 n

end A178820

/-! ## A178820.P14188656767526853121

`A000292(A002024(n+1))*A097805(A014132(n+1))`
-/

namespace A178820.P14188656767526853121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002024 (n + 1)).toNat * A097805 (A014132 (n + 1)).toNat

end

end A178820.P14188656767526853121

namespace A178820

/-- `A000292(A002024(n+1))*A097805(A014132(n+1))` -/
def P14188656767526853121.Spec : Prop :=
  ∀ n, P14188656767526853121.a n = A178820 n

end A178820

/-! ## A178820.P14059136803544184616

`A121547(A014132(n+1))`
-/

namespace A178820.P14059136803544184616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121547 (A014132 (n + 1)).toNat

end

end A178820.P14059136803544184616

namespace A178820

/-- `A121547(A014132(n+1))` -/
def P14059136803544184616.Spec : Prop :=
  ∀ n, P14059136803544184616.a n = A178820 n

end A178820

/-! ## A178820.P4523362796328043118

`A000292(A000194(2*n+1))*A007318(n)`
-/

namespace A178820.P4523362796328043118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000194 (2 * n + 1)).toNat * A007318 n

end

end A178820.P4523362796328043118

namespace A178820

/-- `A000292(A000194(2*n+1))*A007318(n)` -/
def P4523362796328043118.Spec : Prop :=
  ∀ n, P4523362796328043118.a n = A178820 n

end A178820

/-! ## A178820.P12560957837504739715

`A046816(eq[3, A056558(n)])`
-/

namespace A178820.P12560957837504739715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178820.P12560957837504739715

namespace A178820

/-- `A046816(eq[3, A056558(n)])` -/
def P12560957837504739715.Spec : Prop :=
  ∀ n, P12560957837504739715.a n = A178820 n

end A178820

/-! ## A178820.P15466010566589893540

`A046816(eq[3, A056559(n)])`
-/

namespace A178820.P15466010566589893540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178820.P15466010566589893540

namespace A178820

/-- `A046816(eq[3, A056559(n)])` -/
def P15466010566589893540.Spec : Prop :=
  ∀ n, P15466010566589893540.a n = A178820 n

end A178820

/-! ## A178820.P6918558250908870979

`A000292(A002024(n+1))*A065033(A028326(n))`
-/

namespace A178820.P6918558250908870979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002024 (n + 1)).toNat * A065033 (A028326 n).toNat

end

end A178820.P6918558250908870979

namespace A178820

/-- `A000292(A002024(n+1))*A065033(A028326(n))` -/
def P6918558250908870979.Spec : Prop :=
  ∀ n, P6918558250908870979.a n = A178820 n

end A178820

/-!
# A178821: Triangle read by rows: T(n,k) = binomial(n+4,4) * binomial(n,k), 0 <= k <= n.

The programs for A178821, the canonical program `A178821.P8724143194613652531` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178821 has offset 0).

The definition of A178821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178821.P8724143194613652531

`C(A003056(n)+4, 4)*A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A178821

/-- `C(A003056(n)+4, 4)*A007318(n)` -/
def P8724143194613652531.Spec : Prop :=
  ∀ n, P8724143194613652531.a n = A178821 n

theorem P8724143194613652531.correct : P8724143194613652531.Spec := by
  intro n
  simp only [A178821]

end A178821

/-! ## A178821.P6924202338142614587

`(A051743(A002024(n+1))-A002024(n+1))*A007318(n)`
-/

namespace A178821.P6924202338142614587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051743 (A002024 (n + 1)).toNat - A002024 (n + 1)) * A007318 n

end

end A178821.P6924202338142614587

namespace A178821

/-- `(A051743(A002024(n+1))-A002024(n+1))*A007318(n)` -/
def P6924202338142614587.Spec : Prop :=
  ∀ n, P6924202338142614587.a n = A178821 n

end A178821

/-! ## A178821.P10101779408690316798

`A062140(A057944(n))/A098361(n)`
-/

namespace A178821.P10101779408690316798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062140 (A057944 n).toNat : ℚ) / (A098361 n : ℚ)

end

end A178821.P10101779408690316798

namespace A178821

/-- `A062140(A057944(n))/A098361(n)` -/
def P10101779408690316798.Spec : Prop :=
  ∀ n, P10101779408690316798.a n = (A178821 n : ℚ)

end A178821

/-! ## A178821.P17251974707676868457

`A046816(eq[4, A056558(n)])`
-/

namespace A178821.P17251974707676868457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178821.P17251974707676868457

namespace A178821

/-- `A046816(eq[4, A056558(n)])` -/
def P17251974707676868457.Spec : Prop :=
  ∀ n, P17251974707676868457.a n = A178821 n

end A178821

/-! ## A178821.P8848033552174656935

`A046816(eq[4, A056559(n)])`
-/

namespace A178821.P8848033552174656935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178821.P8848033552174656935

namespace A178821

/-- `A046816(eq[4, A056559(n)])` -/
def P8848033552174656935.Spec : Prop :=
  ∀ n, P8848033552174656935.a n = A178821 n

end A178821

/-! ## A178821.P4331758429338355322

`A318762(7*A146985(n))`
-/

namespace A178821.P4331758429338355322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (7 * A146985 n).toNat

end

end A178821.P4331758429338355322

namespace A178821

/-- `A318762(7*A146985(n))` -/
def P4331758429338355322.Spec : Prop :=
  ∀ n, P4331758429338355322.a n = A178821 n

end A178821

/-!
# A178822: Triangle read by rows: T(n,k) = C(n+5,5) * C(n,k), 0 <= k <= n.

The programs for A178822, the canonical program `A178822.P8504719000700470492` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178822 has offset 0).

The definition of A178822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178822.P8504719000700470492

`C(A003056(n)+5, 5)*A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A178822

/-- `C(A003056(n)+5, 5)*A007318(n)` -/
def P8504719000700470492.Spec : Prop :=
  ∀ n, P8504719000700470492.a n = A178822 n

theorem P8504719000700470492.correct : P8504719000700470492.Spec := by
  intro n
  simp only [A178822]

end A178822

/-! ## A178822.P5625026731658173610

`A000389(A003056(n)+5)*A007318(n)`
-/

namespace A178822.P5625026731658173610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A003056 n + 5).toNat * A007318 n

end

end A178822.P5625026731658173610

namespace A178822

/-- `A000389(A003056(n)+5)*A007318(n)` -/
def P5625026731658173610.Spec : Prop :=
  ∀ n, P5625026731658173610.a n = A178822 n

end A178822

/-! ## A178822.P2593342230108735041

`A062138(A057944(n))/A098361(n)`
-/

namespace A178822.P2593342230108735041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062138 (A057944 n).toNat : ℚ) / (A098361 n : ℚ)

end

end A178822.P2593342230108735041

namespace A178822

/-- `A062138(A057944(n))/A098361(n)` -/
def P2593342230108735041.Spec : Prop :=
  ∀ n, P2593342230108735041.a n = (A178822 n : ℚ)

end A178822

/-! ## A178822.P17920593322164757475

`A046816(eq[5, A056558(n)])`
-/

namespace A178822.P17920593322164757475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178822.P17920593322164757475

namespace A178822

/-- `A046816(eq[5, A056558(n)])` -/
def P17920593322164757475.Spec : Prop :=
  ∀ n, P17920593322164757475.a n = A178822 n

end A178822

/-! ## A178822.P117820934901850418

`A046816(eq[5, A056559(n)])`
-/

namespace A178822.P117820934901850418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178822.P117820934901850418

namespace A178822

/-- `A046816(eq[5, A056559(n)])` -/
def P117820934901850418.Spec : Prop :=
  ∀ n, P117820934901850418.a n = A178822 n

end A178822

/-! ## A178822.P12772501434219427546

`A318762(11*A146985(n))`
-/

namespace A178822.P12772501434219427546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (11 * A146985 n).toNat

end

end A178822.P12772501434219427546

namespace A178822

/-- `A318762(11*A146985(n))` -/
def P12772501434219427546.Spec : Prop :=
  ∀ n, P12772501434219427546.a n = A178822 n

end A178822

/-!
# A178824: a(n) = Sum_{k=0..n} binomial(n,k)^4/(n+1).

The programs for A178824, there is no canonical definition to state claims against.
-/

/-! ## A178824.P15321838975460602708

`A005260(n)/(n+1)`
-/

namespace A178824.P15321838975460602708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005260 n : ℚ) / (n + 1 : ℚ)

end

end A178824.P15321838975460602708

/-! ## A178824.P5632237017200223409

`ceil(A096192(A028310(n))/(n+1))`
-/

namespace A178824.P5632237017200223409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096192 (A028310 n).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A178824.P5632237017200223409

/-! ## A178824.P2121282450817543323

`ceil(A005260(n)/A131732(2*n))`
-/

namespace A178824.P2121282450817543323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005260 n : ℚ) / (A131732 (2 * n) : ℚ)⌉

end

end A178824.P2121282450817543323

/-! ## A178824.P5983372180949083717

`round(A005260(n)/A008619(2*n))`
-/

namespace A178824.P5983372180949083717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005260 n : ℚ) / (A008619 (2 * n) : ℚ))

end

end A178824.P5983372180949083717

/-! ## A178824.P4726271257759565446

`A005260(n)/A008619(2*n)-char[A016962(n)]`
-/

namespace A178824.P4726271257759565446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016962 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005260 n : ℚ) / (A008619 (2 * n) : ℚ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A178824.P4726271257759565446

/-! ## A178824.P8386482977003741822

`A005260(n)/A131732(2*n)-A000035(2*n)`
-/

namespace A178824.P8386482977003741822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005260 n : ℚ) / (A131732 (2 * n) : ℚ) - (A000035 (2 * n) : ℚ)

end

end A178824.P8386482977003741822

/-!
# A178825: a(1) = 1, a(n+1) = least prime p > a(n) such that a(n) + p is a square.

The programs for A178825, there is no canonical definition to state claims against.
-/

/-! ## A178825.P17840001143246481548

`A177867(n)²-a(n-1)` with `a(0)=1`
-/

namespace A178825.P17840001143246481548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A177867 n ^ 2 - a (n - 1)

end

end A178825.P17840001143246481548

/-! ## A178825.P5267711268040186337

`A259232(A056239(a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A178825.P5267711268040186337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A259232 (A056239 (a (n - 1)).toNat).toNat

end

end A178825.P5267711268040186337

/-! ## A178825.P5928093779408238870

`A259232(A230980(a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A178825.P5928093779408238870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A259232 (A230980 (a (n - 1)).toNat).toNat

end

end A178825.P5928093779408238870

/-!
# A178826: Partial sums of floor(7^n/9).

The programs for A178826, the canonical program `A178826.P2680638807990239831` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178826 has offset 1).

The definition of A178826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178826.P5554744778691426189

`a(n-3)+(19*7^(n-1)-4)/3` with `a(0)=0, a(1)=5, a(2)=43`
-/

namespace A178826.P5554744778691426189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5, 43] fun n a =>
  a (n - 3) + (19 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 4) / 3

end

end A178826.P5554744778691426189

namespace A178826

/-- `a(n-3)+(19*7^(n-1)-4)/3` -/
def P5554744778691426189.Spec : Prop :=
  ∀ n, P5554744778691426189.a n = (A178826 (n + 1) : ℚ)

end A178826

/-! ## A178826.P2680638807990239831

`floor((7*7^(n+1)-24*(n+1)-7)/54)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178826

/-- `floor((7*7^(n+1)-24*(n+1)-7)/54)` -/
def P2680638807990239831.Spec : Prop :=
  ∀ n, P2680638807990239831.a n = A178826 (n + 1)

theorem P2680638807990239831.correct : P2680638807990239831.Spec := by
  intro n
  simp only [A178826, Nat.add_sub_cancel]

end A178826

/-! ## A178826.P12165414221944460791

`A156002(n+1)-∑[char[3*n]]`
-/

namespace A178826.P12165414221944460791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156002 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178826.P12165414221944460791

namespace A178826

/-- `A156002(n+1)-∑[char[3*n]]` -/
def P12165414221944460791.Spec : Prop :=
  ∀ n, P12165414221944460791.a n = A178826 (n + 1)

end A178826

/-! ## A178826.P18004770548944888054

`∑[floor(∑[7*a(n-1)]/3)]` with `a(0)=2`
-/

namespace A178826.P18004770548944888054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178826.P18004770548944888054

namespace A178826

/-- `∑[floor(∑[7*a(n-1)]/3)]` -/
def P18004770548944888054.Spec : Prop :=
  ∀ n, P18004770548944888054.a n = A178826 (n + 1)

end A178826

/-! ## A178826.P12954710957510438437

`∑[round(A233326(n)/3)]*A054977(n)`
-/

namespace A178826.P12954710957510438437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233326 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054977 n

end

end A178826.P12954710957510438437

namespace A178826

/-- `∑[round(A233326(n)/3)]*A054977(n)` -/
def P12954710957510438437.Spec : Prop :=
  ∀ n, P12954710957510438437.a n = A178826 (n + 1)

end A178826

/-! ## A178826.P15268698966268093434

`round(∑[A233326(n)/3]*A057427(n))`
-/

namespace A178826.P15268698966268093434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233326 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * (A057427 n : ℚ))

end

end A178826.P15268698966268093434

namespace A178826

/-- `round(∑[A233326(n)/3]*A057427(n))` -/
def P15268698966268093434.Spec : Prop :=
  ∀ n, P15268698966268093434.a n = A178826 (n + 1)

end A178826

/-! ## A178826.P5942993013643254785

`∑[round(A233326(n)/3)]%A001711(n)`
-/

namespace A178826.P5942993013643254785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233326 n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001711 n)

end

end A178826.P5942993013643254785

namespace A178826

/-- `∑[round(A233326(n)/3)]%A001711(n)` -/
def P5942993013643254785.Spec : Prop :=
  ∀ n, P5942993013643254785.a n = A178826 (n + 1)

end A178826

/-!
# A178827: Partial sums of floor(8^n/9)/7.

The programs for A178827, the canonical program `A178827.P2817965950536798996` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178827 has offset 1).

The definition of A178827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178827.P2817965950536798996

`9*a(n-1)-7*a(n-2)-9*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=74`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178827

/-- `9*a(n-1)-7*a(n-2)-9*a(n-3)+8*a(n-4)` -/
def P2817965950536798996.Spec : Prop :=
  ∀ n, P2817965950536798996.a n = A178827 (n + 1)

theorem P2817965950536798996.correct : P2817965950536798996.Spec := by
  intro n
  simp only [A178827, Nat.add_sub_cancel]

end A178827

/-! ## A178827.P5632956764217638607

`a(n-2)+(8^n-1)/7` with `a(0)=0, a(1)=1`
-/

namespace A178827.P5632956764217638607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((8 ^ n : ℤ) - 1 : ℚ) / 7

end

end A178827.P5632956764217638607

namespace A178827

/-- `a(n-2)+(8^n-1)/7` -/
def P5632956764217638607.Spec : Prop :=
  ∀ n, P5632956764217638607.a n = (A178827 (n + 1) : ℚ)

end A178827

/-! ## A178827.P943929707624876549

`(floor(8^(n+2)/63)-floor((n+2)/2))/7`
-/

namespace A178827.P943929707624876549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(8 ^ (n + 2) : ℚ) / 63⌋ - ⌊(n + 2 : ℚ) / 2⌋ : ℚ) / 7

end

end A178827.P943929707624876549

namespace A178827

/-- `(floor(8^(n+2)/63)-floor((n+2)/2))/7` -/
def P943929707624876549.Spec : Prop :=
  ∀ n, P943929707624876549.a n = (A178827 (n + 1) : ℚ)

end A178827

/-! ## A178827.P3270989796174583891

`ogf(x/(1-9x+7x^2+9x^3-8x^4))`
-/

namespace A178827.P3270989796174583891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 7, 9, -8] n

end

end A178827.P3270989796174583891

namespace A178827

/-- `ogf(x/(1-9x+7x^2+9x^3-8x^4))` -/
def P3270989796174583891.Spec : Prop :=
  ∀ n, P3270989796174583891.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P16011612286487298262

`∑[n%2+8*a(n-1)]` with `a(0)=0`
-/

namespace A178827.P16011612286487298262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n % 2 + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P16011612286487298262

namespace A178827

/-- `∑[n%2+8*a(n-1)]` -/
def P16011612286487298262.Spec : Prop :=
  ∀ n, (P16011612286487298262.a n : ℤ) = A178827 (n + 1)

end A178827

/-! ## A178827.P9066620742966551506

`floor((n+1)/2+8*a(n-1))` with `a(0)=0`
-/

namespace A178827.P9066620742966551506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 2 + (8 * a (n - 1) : ℚ)⌋

end

end A178827.P9066620742966551506

namespace A178827

/-- `floor((n+1)/2+8*a(n-1))` -/
def P9066620742966551506.Spec : Prop :=
  ∀ n, P9066620742966551506.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P15841688178001057117

`∑[8*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178827.P15841688178001057117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A178827.P15841688178001057117

namespace A178827

/-- `∑[8*a(n-1)]+a(n-2)` -/
def P15841688178001057117.Spec : Prop :=
  ∀ n, (P15841688178001057117.a n : ℤ) = A178827 (n + 1)

end A178827

/-! ## A178827.P628672267036767389

`∑[or(8*a(n-1), a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A178827.P628672267036767389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.lor (8 * f1 (n - 1)) (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P628672267036767389

namespace A178827

/-- `∑[or(8*a(n-1), a(n-2))]` -/
def P628672267036767389.Spec : Prop :=
  ∀ n, (P628672267036767389.a n : ℤ) = A178827 (n + 1)

end A178827

/-! ## A178827.P10534521806050224727

`∑[∑[8*a(n-1)-(-1)^n]]` with `a(0)=0`
-/

namespace A178827.P10534521806050224727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  8 * f2 (n - 1) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P10534521806050224727

namespace A178827

/-- `∑[∑[8*a(n-1)-(-1)^n]]` -/
def P10534521806050224727.Spec : Prop :=
  ∀ n, P10534521806050224727.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P10201782503419333005

`∑[∑[8*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A178827.P10201782503419333005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  8 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P10201782503419333005

namespace A178827

/-- `∑[∑[8*a(n-1)]-a(n-1)]` -/
def P10201782503419333005.Spec : Prop :=
  ∀ n, P10201782503419333005.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P9949496162492992675

`∑[∑[A015565(n)]]`
-/

namespace A178827.P9949496162492992675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P9949496162492992675

namespace A178827

/-- `∑[∑[A015565(n)]]` -/
def P9949496162492992675.Spec : Prop :=
  ∀ n, P9949496162492992675.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P14661042781606054249

`∑[∑[A131666(3*n)]]`
-/

namespace A178827.P14661042781606054249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P14661042781606054249

namespace A178827

/-- `∑[∑[A131666(3*n)]]` -/
def P14661042781606054249.Spec : Prop :=
  ∀ n, P14661042781606054249.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P11135071425435792922

`∑[∑[A001045(3*n)/3]]`
-/

namespace A178827.P11135071425435792922
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 (3 * n) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178827.P11135071425435792922

namespace A178827

/-- `∑[∑[A001045(3*n)/3]]` -/
def P11135071425435792922.Spec : Prop :=
  ∀ n, P11135071425435792922.a n = (A178827 (n + 1) : ℚ)

end A178827

/-! ## A178827.P7268273875026065455

`A023001(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178827.P7268273875026065455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A023001 n + a (n - 2)

end

end A178827.P7268273875026065455

namespace A178827

/-- `A023001(n)+a(n-2)` -/
def P7268273875026065455.Spec : Prop :=
  ∀ n, P7268273875026065455.a n = A178827 (n + 1)

end A178827

/-! ## A178827.P8679091893217222553

`∑[A033118(n+1)]-A033118(n+1)`
-/

namespace A178827.P8679091893217222553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033118 (n + 1)

end

end A178827.P8679091893217222553

namespace A178827

/-- `∑[A033118(n+1)]-A033118(n+1)` -/
def P8679091893217222553.Spec : Prop :=
  ∀ n, P8679091893217222553.a n = A178827 (n + 1)

end A178827

/-!
# A178828: Partial sums of floor(3^n/10)/2.

The programs for A178828, the canonical program `A178828.P7369858828729940861` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178828 has offset 1).

The definition of A178828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178828.P1869638362860092116

`a(n-4)+2*3^(n-2)-1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A178828.P1869638362860092116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 5] fun n a =>
  a (n - 4) + 2 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1

end

end A178828.P1869638362860092116

namespace A178828

/-- `a(n-4)+2*3^(n-2)-1` -/
def P1869638362860092116.Spec : Prop :=
  ∀ n, P1869638362860092116.a n = (A178828 (n + 1) : ℚ)

end A178828

/-! ## A178828.P7369858828729940861

`round((3*3^(n+1)-10*(n+1)-5)/40)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178828

/-- `round((3*3^(n+1)-10*(n+1)-5)/40)` -/
def P7369858828729940861.Spec : Prop :=
  ∀ n, P7369858828729940861.a n = A178828 (n + 1)

theorem P7369858828729940861.correct : P7369858828729940861.Spec := by
  intro n
  simp only [A178828, Nat.add_sub_cancel]

end A178828

/-! ## A178828.P12760676826630888959

`∑[and(2, n)/2]+3*a(n-1)` with `a(0)=0`
-/

namespace A178828.P12760676826630888959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A178828.P12760676826630888959

namespace A178828

/-- `∑[and(2, n)/2]+3*a(n-1)` -/
def P12760676826630888959.Spec : Prop :=
  ∀ n, P12760676826630888959.a n = (A178828 (n + 1) : ℚ)

end A178828

/-! ## A178828.P6743228702244934565

`∑[1-a(n-2)]+3*a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A178828.P6743228702244934565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A178828.P6743228702244934565

namespace A178828

/-- `∑[1-a(n-2)]+3*a(n-1)` -/
def P6743228702244934565.Spec : Prop :=
  ∀ n, P6743228702244934565.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P10443235819859970017

`∑[∑[3*a(n-1)]-a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178828.P10443235819859970017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178828.P10443235819859970017

namespace A178828

/-- `∑[∑[3*a(n-1)]-a(n-2)]` -/
def P10443235819859970017.Spec : Prop :=
  ∀ n, P10443235819859970017.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P10040509920674893559

`5*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)+3*a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=17`
-/

namespace A178828.P10040509920674893559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5, 17] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 7 * a (n - 4) + 3 * a (n - 5)

end

end A178828.P10040509920674893559

namespace A178828

/-- `5*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)+3*a(n-5)` -/
def P10040509920674893559.Spec : Prop :=
  ∀ n, P10040509920674893559.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P1429042355610547296

`∑[A177881(n)]`
-/

namespace A178828.P1429042355610547296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178828.P1429042355610547296

namespace A178828

/-- `∑[A177881(n)]` -/
def P1429042355610547296.Spec : Prop :=
  ∀ n, P1429042355610547296.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P11326135054691108000

`∑[floor(A178543(n)/2)]`
-/

namespace A178828.P11326135054691108000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178543 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178828.P11326135054691108000

namespace A178828

/-- `∑[floor(A178543(n)/2)]` -/
def P11326135054691108000.Spec : Prop :=
  ∀ n, P11326135054691108000.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P16710808986671550059

`A178706(n)-a(n-1)` with `a(0)=0`
-/

namespace A178828.P16710808986671550059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178706 n - a (n - 1)

end

end A178828.P16710808986671550059

namespace A178828

/-- `A178706(n)-a(n-1)` -/
def P16710808986671550059.Spec : Prop :=
  ∀ n, P16710808986671550059.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P5834329147263754732

`floor(a(n-2)+3^n/5)` with `a(0)=0, a(1)=0`
-/

namespace A178828.P5834329147263754732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + (3 ^ n : ℚ) / 5⌋

end

end A178828.P5834329147263754732

namespace A178828

/-- `floor(a(n-2)+3^n/5)` -/
def P5834329147263754732.Spec : Prop :=
  ∀ n, P5834329147263754732.a n = A178828 (n + 1)

end A178828

/-! ## A178828.P10911598632871812541

`∑[round(A058481(n+2)/60)]%A034472(n)`
-/

namespace A178828.P10911598632871812541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058481 (n + 2) : ℚ) / 60)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A034472 n)

end

end A178828.P10911598632871812541

namespace A178828

/-- `∑[round(A058481(n+2)/60)]%A034472(n)` -/
def P10911598632871812541.Spec : Prop :=
  ∀ n, P10911598632871812541.a n = A178828 (n + 1)

end A178828

/-!
# A178829: Partial sums of (1/2)*floor(7^n/10).

The programs for A178829, the canonical program `A178829.P16113855942475284107` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178829 has offset 1).

The definition of A178829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178829.P16113855942475284107

`a(n-4)+20*7^(n-2)-1` with `a(0)=0, a(1)=2, a(2)=19, a(3)=139`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178829

/-- `a(n-4)+20*7^(n-2)-1` -/
def P16113855942475284107.Spec : Prop :=
  ∀ n, P16113855942475284107.a n = (A178829 (n + 1) : ℚ)

end A178829

/-! ## A178829.P16541744703369751786

`floor((7*7^(n+1)-30*(n+1)-7)/60)/2`
-/

namespace A178829.P16541744703369751786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((7 * 7 ^ (n + 1) : ℤ) - (30 * (n + 1) : ℤ) - 7 : ℚ) / 60⌋ : ℚ) / 2

end

end A178829.P16541744703369751786

namespace A178829

/-- `floor((7*7^(n+1)-30*(n+1)-7)/60)/2` -/
def P16541744703369751786.Spec : Prop :=
  ∀ n, P16541744703369751786.a n = (A178829 (n + 1) : ℚ)

end A178829

/-! ## A178829.P16225738209147427524

`∑[floor(A037677(n+1)/3)]`
-/

namespace A178829.P16225738209147427524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037677 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178829.P16225738209147427524

namespace A178829

/-- `∑[floor(A037677(n+1)/3)]` -/
def P16225738209147427524.Spec : Prop :=
  ∀ n, P16225738209147427524.a n = A178829 (n + 1)

end A178829

/-! ## A178829.P7710617858085730382

`∑[A037754(round(sqrt(n²+1)))]-2`
-/

namespace A178829.P7710617858085730382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037754 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A178829.P7710617858085730382

namespace A178829

/-- `∑[A037754(round(sqrt(n²+1)))]-2` -/
def P7710617858085730382.Spec : Prop :=
  ∀ n, P7710617858085730382.a n = A178829 (n + 1)

end A178829

/-! ## A178829.P15408285932907131015

`∑[A037782(n+1)]-A037796(n+1)`
-/

namespace A178829.P15408285932907131015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037796 (n + 1)

end

end A178829.P15408285932907131015

namespace A178829

/-- `∑[A037782(n+1)]-A037796(n+1)` -/
def P15408285932907131015.Spec : Prop :=
  ∀ n, P15408285932907131015.a n = A178829 (n + 1)

end A178829

/-! ## A178829.P10665537533478529350

`∑[A037754(n+1)]%A037754(n+1)`
-/

namespace A178829.P10665537533478529350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A037754 (n + 1))

end

end A178829.P10665537533478529350

namespace A178829

/-- `∑[A037754(n+1)]%A037754(n+1)` -/
def P10665537533478529350.Spec : Prop :=
  ∀ n, P10665537533478529350.a n = A178829 (n + 1)

end A178829

/-!
# A178830: Number of distinct partitions of {1,...,n} into two nonempty sets P and S with the product of the elements of P equal to the sum of elements in S.

The programs for A178830, there is no canonical definition to state claims against.
-/

/-! ## A178830.P10589790085025790181

`A326441(n+1)%(n+1)`
-/

namespace A178830.P10589790085025790181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326441 (n + 1)) (n + 1 : ℤ)

end

end A178830.P10589790085025790181

/-! ## A178830.P12735914761041958340

`A326441(floor(n²/(n+1))+2)`
-/

namespace A178830.P12735914761041958340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ + 2).toNat

end

end A178830.P12735914761041958340

/-! ## A178830.P14199920937552548293

`A057427(n)*A326441(n+1)`
-/

namespace A178830.P14199920937552548293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A326441 (n + 1)

end

end A178830.P14199920937552548293

/-! ## A178830.P6994119324069663812

`A040001(2*n)+A326441(n+1)-2`
-/

namespace A178830.P6994119324069663812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) + (A326441 (n + 1) - 2)

end

end A178830.P6994119324069663812

/-! ## A178830.P10783242540121972466

`(A199969(n+2)-n)*A326441(n+1)`
-/

namespace A178830.P10783242540121972466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199969 (n + 2) - (n : ℤ)) * A326441 (n + 1)

end

end A178830.P10783242540121972466

/-! ## A178830.P1038249957218879789

`A277822(7*A086342(n))*A326441(n+1)`
-/

namespace A178830.P1038249957218879789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (7 * A086342 n).toNat * A326441 (n + 1)

end

end A178830.P1038249957218879789

/-!
# A178831: Rectangular array T(n,k) = binomial(n+1,2)*(n^k - (n-1)^k) read by antidiagonals.

The programs for A178831, the canonical program `A178831.P15740046059794676434` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178831 has offset 1).

The definition of A178831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178831.P7981392881563531581

`(1-A049780(n)+n)*A343237(n)`
-/

namespace A178831.P7981392881563531581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A343237 n

end

end A178831.P7981392881563531581

namespace A178831

/-- `(1-A049780(n)+n)*A343237(n)` -/
def P7981392881563531581.Spec : Prop :=
  ∀ n, P7981392881563531581.a n = A178831 (n + 1)

end A178831

/-! ## A178831.P5839017215188626619

`A000217(A002260(n+1))*A343237(n)`
-/

namespace A178831.P5839017215188626619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A343237 n

end

end A178831.P5839017215188626619

namespace A178831

/-- `A000217(A002260(n+1))*A343237(n)` -/
def P5839017215188626619.Spec : Prop :=
  ∀ n, P5839017215188626619.a n = A178831 (n + 1)

end A178831

/-! ## A178831.P645753085562381860

`A112367(A014132(n+1))*A343237(n)`
-/

namespace A178831.P645753085562381860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 (A014132 (n + 1)).toNat * A343237 n

end

end A178831.P645753085562381860

namespace A178831

/-- `A112367(A014132(n+1))*A343237(n)` -/
def P645753085562381860.Spec : Prop :=
  ∀ n, P645753085562381860.a n = A178831 (n + 1)

end A178831

/-! ## A178831.P9227941020317906442

`A179865(A131818(n+2))*A343237(n)`
-/

namespace A178831.P9227941020317906442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A131818 (n + 2)).toNat * A343237 n

end

end A178831.P9227941020317906442

namespace A178831

/-- `A179865(A131818(n+2))*A343237(n)` -/
def P9227941020317906442.Spec : Prop :=
  ∀ n, P9227941020317906442.a n = A178831 (n + 1)

end A178831

/-! ## A178831.P7685574938189297581

`A000217(sqrt(A133819(n+1)))*A343237(n)`
-/

namespace A178831.P7685574938189297581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ))).toNat * A343237 n

end

end A178831.P7685574938189297581

namespace A178831

/-- `A000217(sqrt(A133819(n+1)))*A343237(n)` -/
def P7685574938189297581.Spec : Prop :=
  ∀ n, P7685574938189297581.a n = A178831 (n + 1)

end A178831

/-! ## A178831.P15740046059794676434

`A000217(A002260(n+1))*A047969(A061579(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A178831

/-- `A000217(A002260(n+1))*A047969(A061579(n))` -/
def P15740046059794676434.Spec : Prop :=
  ∀ n, P15740046059794676434.a n = A178831 (n + 1)

theorem P15740046059794676434.correct : P15740046059794676434.Spec := by
  intro n
  simp only [A178831, Nat.add_sub_cancel]

end A178831

/-! ## A178831.P1832223382949285611

`A000217(A002260(n+1))*A047969(A114327(n)+n)`
-/

namespace A178831.P1832223382949285611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A047969 (A114327 n + (n : ℤ)).toNat

end

end A178831.P1832223382949285611

namespace A178831

/-- `A000217(A002260(n+1))*A047969(A114327(n)+n)` -/
def P1832223382949285611.Spec : Prop :=
  ∀ n, P1832223382949285611.a n = A178831 (n + 1)

end A178831

/-! ## A178831.P8307186870145101336

`A000217(A002260(n+1))*A047969(A038722(n+1)-1)`
-/

namespace A178831.P8307186870145101336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A047969 (A038722 (n + 1) - 1).toNat

end

end A178831.P8307186870145101336

namespace A178831

/-- `A000217(A002260(n+1))*A047969(A038722(n+1)-1)` -/
def P8307186870145101336.Spec : Prop :=
  ∀ n, P8307186870145101336.a n = A178831 (n + 1)

end A178831

/-!
# A178832: Number of minima of the 1-D Griewank function in [-n, n].

The programs for A178832, the canonical program `A178832.P1928673808826274112` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178832 has offset 0).

The definition of A178832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178832.P10995683925536135555

`or(1, floor(n/π))`
-/

namespace A178832.P10995683925536135555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℝ) / Real.pi⌋

end

end A178832.P10995683925536135555

namespace A178832

/-- `or(1, floor(n/π))` -/
def P10995683925536135555.Spec : Prop :=
  ∀ n, P10995683925536135555.a n = A178832 n

end A178832

/-! ## A178832.P5391793241159676488

`and(-2, floor(n/π))+1`
-/

namespace A178832.P5391793241159676488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ⌊(n : ℝ) / Real.pi⌋ + 1

end

end A178832.P5391793241159676488

namespace A178832

/-- `and(-2, floor(n/π))+1` -/
def P5391793241159676488.Spec : Prop :=
  ∀ n, P5391793241159676488.a n = A178832 n

end A178832

/-! ## A178832.P6978668147844159553

`floor(n/π)+floor(sin(n))+1`
-/

namespace A178832.P6978668147844159553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi⌋ + (⌊Real.sin (n : ℝ)⌋ + 1)

end

end A178832.P6978668147844159553

namespace A178832

/-- `floor(n/π)+floor(sin(n))+1` -/
def P6978668147844159553.Spec : Prop :=
  ∀ n, P6978668147844159553.a n = A178832 n

end A178832

/-! ## A178832.P5333081184369854133

`2*floor(floor(n/π)/2)+1`
-/

namespace A178832.P5333081184369854133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(⌊(n : ℝ) / Real.pi⌋ : ℚ) / 2⌋ + 1

end

end A178832.P5333081184369854133

namespace A178832

/-- `2*floor(floor(n/π)/2)+1` -/
def P5333081184369854133.Spec : Prop :=
  ∀ n, P5333081184369854133.a n = A178832 n

end A178832

/-! ## A178832.P10941029979772297655

`xor(-(xor(-1, floor(n/π))%2), floor(n/π))`
-/

namespace A178832.P10941029979772297655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-Int.tmod (Int.xor (-1) ⌊(n : ℝ) / Real.pi⌋) 2) ⌊(n : ℝ) / Real.pi⌋

end

end A178832.P10941029979772297655

namespace A178832

/-- `xor(-(xor(-1, floor(n/π))%2), floor(n/π))` -/
def P10941029979772297655.Spec : Prop :=
  ∀ n, P10941029979772297655.a n = A178832 n

end A178832

/-! ## A178832.P13618759991321194323

`A109613(floor(n/π))`
-/

namespace A178832.P13618759991321194323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ⌊(n : ℝ) / Real.pi⌋.toNat

end

end A178832.P13618759991321194323

namespace A178832

/-- `A109613(floor(n/π))` -/
def P13618759991321194323.Spec : Prop :=
  ∀ n, P13618759991321194323.a n = A178832 n

end A178832

/-! ## A178832.P1928673808826274112

`A028310(or(1, A032615(n)))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178832

/-- `A028310(or(1, A032615(n)))` -/
def P1928673808826274112.Spec : Prop :=
  ∀ n, P1928673808826274112.a n = A178832 n

theorem P1928673808826274112.correct : P1928673808826274112.Spec := by
  intro n
  simp only [A178832]

end A178832

/-! ## A178832.P1721632056378708360

`xor(A032615(n), A302203(n))`
-/

namespace A178832.P1721632056378708360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032615 n) (A302203 n)

end

end A178832.P1721632056378708360

namespace A178832

/-- `xor(A032615(n), A302203(n))` -/
def P1721632056378708360.Spec : Prop :=
  ∀ n, P1721632056378708360.a n = A178832 n

end A178832

/-! ## A178832.P16767475811722378001

`A158405(A008619(A032615(n)²))`
-/

namespace A178832.P16767475811722378001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A008619 (A032615 n ^ 2).toNat).toNat

end

end A178832.P16767475811722378001

namespace A178832

/-- `A158405(A008619(A032615(n)²))` -/
def P16767475811722378001.Spec : Prop :=
  ∀ n, P16767475811722378001.a n = A178832 n

end A178832

/-! ## A178832.P524526367924260745

`A000005(A016116(floor(n/π))²)`
-/

namespace A178832.P524526367924260745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016116 ⌊(n : ℝ) / Real.pi⌋.toNat ^ 2).toNat

end

end A178832.P524526367924260745

namespace A178832

/-- `A000005(A016116(floor(n/π))²)` -/
def P524526367924260745.Spec : Prop :=
  ∀ n, P524526367924260745.a n = A178832 n

end A178832

/-!
# A178833: Partial sums of "Half-Catalan numbers" A000992.

The programs for A178833, there is no canonical definition to state claims against.
-/

/-! ## A178833.P16441544246110522632

`∑[A000992(n+1)]`
-/

namespace A178833.P16441544246110522632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178833.P16441544246110522632

/-! ## A178833.P4864025096522775208

`a(n-1)+A000992(n+1)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A178833.P4864025096522775208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000992 (n + 1) + A008683 (4 * (n + 1)))

end

end A178833.P4864025096522775208

/-! ## A178833.P7625764897725055322

`∑[A248748(n+1)/2^n]`
-/

namespace A178833.P7625764897725055322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248748 (n + 1) : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178833.P7625764897725055322

/-! ## A178833.P1912896222064389294

`∑[floor(A248748(n+1)/A000079(n))]`
-/

namespace A178833.P1912896222064389294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248748 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178833.P1912896222064389294

/-! ## A178833.P13549285800227662558

`∑[A301368(∑[n+1])]`
-/

namespace A178833.P13549285800227662558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301368 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178833.P13549285800227662558

/-!
# A178834: a(n) counts anti-chains of size two in "0,1,2" Motzkin trees on n edges.

The programs for A178834, the canonical program `A178834.P16895514089838133752` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178834 has offset 0).

The definition of A178834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178834.P16895514089838133752

`A102839(n+1)-A109196(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A178834

/-- `A102839(n+1)-A109196(n+2)` -/
def P16895514089838133752.Spec : Prop :=
  ∀ n, P16895514089838133752.a n = A178834 n

theorem P16895514089838133752.correct : P16895514089838133752.Spec := by
  intro n
  simp only [A178834]

end A178834

/-! ## A178834.P11565778962780833172

`∑[A109188(n+1)]-A109196(n+2)`
-/

namespace A178834.P11565778962780833172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109196 (n + 2)

end

end A178834.P11565778962780833172

namespace A178834

/-- `∑[A109188(n+1)]-A109196(n+2)` -/
def P11565778962780833172.Spec : Prop :=
  ∀ n, P11565778962780833172.a n = A178834 n

end A178834

/-! ## A178834.P5913931025751349516

`A102839(A032559(n+1))%A109196(n+2)`
-/

namespace A178834.P5913931025751349516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102839 (A032559 (n + 1)).toNat) (A109196 (n + 2))

end

end A178834.P5913931025751349516

namespace A178834

/-- `A102839(A032559(n+1))%A109196(n+2)` -/
def P5913931025751349516.Spec : Prop :=
  ∀ n, P5913931025751349516.a n = A178834 n

end A178834

/-! ## A178834.P8796716872722440090

`A102839(A249817(n+1))-A004526(A109194(n+2))`
-/

namespace A178834.P8796716872722440090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 (A249817 (n + 1)).toNat - A004526 (A109194 (n + 2)).toNat

end

end A178834.P8796716872722440090

namespace A178834

/-- `A102839(A249817(n+1))-A004526(A109194(n+2))` -/
def P8796716872722440090.Spec : Prop :=
  ∀ n, P8796716872722440090.a n = A178834 n

end A178834

/-!
# A178835: Primes of the form 19 * 2^n - 1.

The programs for A178835, there is no canonical definition to state claims against.
-/

/-! ## A178835.P15076896747729854520

`A198276(A001775(n+1))`
-/

namespace A178835.P15076896747729854520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198276 (A001775 (n + 1)).toNat

end

end A178835.P15076896747729854520

/-!
# A178836: Numbers n such that the period of 1/n equals the period of 1/R(n), where R(n) (A004086) is the reversal of n.

The programs for A178836, there is no canonical definition to state claims against.
-/

/-! ## A178836.P3794491233609604729

`record[A047813(A045572(n+2))]`
-/

namespace A178836.P3794491233609604729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A045572 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178836.P3794491233609604729

/-! ## A178836.P3596918724218193972

`record[A132740(A093030(n+3))]`
-/

namespace A178836.P3596918724218193972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A093030 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178836.P3596918724218193972

/-! ## A178836.P278632608157368331

`record[A106611(A002113(n+4))]`
-/

namespace A178836.P278632608157368331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A002113 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178836.P278632608157368331

/-! ## A178836.P3872147664603068815

`record[A106611(A061917(n+4))]`
-/

namespace A178836.P3872147664603068815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A061917 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178836.P3872147664603068815

/-! ## A178836.P9323384779989816252

`filter[A029950(n+2), A011558(#)]`
-/

namespace A178836.P9323384779989816252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A178836.P9323384779989816252

/-! ## A178836.P15433739521663021400

`filter[A045572(n+2), A136522(#)]`
-/

namespace A178836.P15433739521663021400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A178836.P15433739521663021400

/-! ## A178836.P13656948523205066214

`filter[A082768(n+2), A136522(#)]`
-/

namespace A178836.P13656948523205066214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A178836.P13656948523205066214

/-! ## A178836.P2662122885133463832

`filter[A241662(n+2), A136522(#)]`
-/

namespace A178836.P2662122885133463832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A178836.P2662122885133463832

/-! ## A178836.P13521479733516442628

`record[A106621(A047813(A144396(n+1)))]`
-/

namespace A178836.P13521479733516442628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A047813 (A144396 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178836.P13521479733516442628

/-! ## A178836.P14972112347985349908

`eq[A106611(A047813(n)), A114112(n+1)]`
-/

namespace A178836.P14972112347985349908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A047813 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178836.P14972112347985349908

/-!
# A178837: Indices k such that the sum of the digits of Fibonacci(k) is a prime number.

The programs for A178837, there is no canonical definition to state claims against.
-/

/-! ## A178837.P7743135832503472148

`eq[0, A007920(A004090(n))]`
-/

namespace A178837.P7743135832503472148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178837.P7743135832503472148

/-! ## A178837.P9095883650446449704

`eq[3, A077462(A004090(n)²)]`
-/

namespace A178837.P9095883650446449704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A004090 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178837.P9095883650446449704

/-! ## A178837.P14854640768852977237

`eq[1, A105700(∑{digits}[A000045(n), #])]`
-/

namespace A178837.P14854640768852977237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178837.P14854640768852977237

/-! ## A178837.P2780763491921293898

`lt[A007920(A004090(n+1)), 1]+1`
-/

namespace A178837.P2780763491921293898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004090 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178837.P2780763491921293898

/-! ## A178837.P2368010823351802648

`eq[2, A001222(A004090(n+1)²)]+1`
-/

namespace A178837.P2368010823351802648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004090 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178837.P2368010823351802648

/-! ## A178837.P5762494369582658603

`eq[2, A077462(A004090(n))%A022144(n)]`
-/

namespace A178837.P5762494369582658603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077462 (A004090 n).toNat) (A022144 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178837.P5762494369582658603

/-! ## A178837.P15234877860938262539

`eq[A020639(2*(n+1)), A077462(A004090(n))]`
-/

namespace A178837.P15234877860938262539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A004090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178837.P15234877860938262539

/-! ## A178837.P16165067402280926252

`eq[A014963(4*n+6), A018783(A004090(n))]`
-/

namespace A178837.P16165067402280926252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A004090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178837.P16165067402280926252

/-! ## A178837.P13599242765837192934

`eq[A000045((-1)^(2*n)), A018783(A004090(n))]`
-/

namespace A178837.P13599242765837192934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A004090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178837.P13599242765837192934

/-!
# A178838: Indices n such that the sums of the squares of the digits of Fibonacci(n) are prime.

The programs for A178838, there is no canonical definition to state claims against.
-/

/-! ## A178838.P13418746479988826982

`eq[1, A105700(∑{digits}[A000045(n), #²])]`
-/

namespace A178838.P13418746479988826982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178838.P13418746479988826982

/-! ## A178838.P16704513300005039491

`eq[1, A001222(A181357(n+1))]+1`
-/

namespace A178838.P16704513300005039491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181357 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A178838.P16704513300005039491

/-!
# A178841: The number of pure inverting compositions of n.

The programs for A178841, the canonical program `A178841.P12395929515216874443` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178841 has offset 0).

The definition of A178841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178841.P12395929515216874443

`(A152537(n)+A010815(n))/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A178841

/-- `(A152537(n)+A010815(n))/2` -/
def P12395929515216874443.Spec : Prop :=
  ∀ n, P12395929515216874443.a n = (A178841 n : ℚ)

end A178841

/-!
# A178842: a(n) = binomial((n-1)^2, n).

The programs for A178842, the canonical program `A178842.P6628518093708545746` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178842 has offset 1).

The definition of A178842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n², n+1)` (program `A178842.P6628518093708545746`, by `A178842.P6628518093708545746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178842.P6628518093708545746

`C(n², n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178842

/-- `C(n², n+1)` -/
def P6628518093708545746.Spec : Prop :=
  ∀ n, (P6628518093708545746.a n : ℤ) = A178842 (n + 1)

theorem P6628518093708545746.correct : P6628518093708545746.Spec := by
  intro n
  simp only [A178842, Nat.add_sub_cancel]

end A178842

/-! ## A178842.P1507851766616032527

`lcm(2, C(n², 2*n-(n-1)))`
-/

namespace A178842.P1507851766616032527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose (n ^ 2) ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A178842.P1507851766616032527

namespace A178842

/-- `lcm(2, C(n², 2*n-(n-1)))` -/
def P1507851766616032527.Spec : Prop :=
  ∀ n, (P1507851766616032527.a n : ℤ) = A178842 (n + 1)

end A178842

/-! ## A178842.P7552868049219850337

`A272179(n)/(n+1)!`
-/

namespace A178842.P7552868049219850337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272179 n : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A178842.P7552868049219850337

namespace A178842

/-- `A272179(n)/(n+1)!` -/
def P7552868049219850337.Spec : Prop :=
  ∀ n, P7552868049219850337.a n = (A178842 (n + 1) : ℚ)

end A178842

/-! ## A178842.P18349245443809807077

`lcm(A107393(n), A135278(A101374(n)))`
-/

namespace A178842.P18349245443809807077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107393 n) (A135278 (A101374 n).toNat)

end

end A178842.P18349245443809807077

namespace A178842

/-- `lcm(A107393(n), A135278(A101374(n)))` -/
def P18349245443809807077.Spec : Prop :=
  ∀ n, (P18349245443809807077.a n : ℤ) = A178842 (n + 1)

end A178842

/-! ## A178842.P3983855875058090469

`A135278(A101374(n))%A111596(A046092(n))`
-/

namespace A178842.P3983855875058090469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 (A101374 n).toNat) (A111596 (A046092 n).toNat)

end

end A178842.P3983855875058090469

namespace A178842

/-- `A135278(A101374(n))%A111596(A046092(n))` -/
def P3983855875058090469.Spec : Prop :=
  ∀ n, P3983855875058090469.a n = A178842 (n + 1)

end A178842

/-!
# A178843: Numbers in which the n-th digit is either a divisor or a nonzero multiple of n.

The programs for A178843, there is no canonical definition to state claims against.
-/

/-! ## A178843.P15603421259370987209

`eq[A055641(n), A257297(A124625(n))]`
-/

namespace A178843.P15603421259370987209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A124625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178843.P15603421259370987209

/-! ## A178843.P1899794056192395801

`lt[A257297(A124625(n)), A168046(n)]`
-/

namespace A178843.P1899794056192395801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A124625 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178843.P1899794056192395801

/-! ## A178843.P6303918686940463671

`xor(A004216(n+1), A331162(A117804(n+1)))`
-/

namespace A178843.P6303918686940463671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004216 (n + 1)) (A331162 (A117804 (n + 1)).toNat)

end

end A178843.P6303918686940463671

/-! ## A178843.P15436259137790539542

`lt[A131187(n+1), A133314(A329031(3*n+2))]`
-/

namespace A178843.P15436259137790539542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133314 (A329031 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178843.P15436259137790539542

/-! ## A178843.P13474541545703800173

`or(A055641(A341537(2*(n+1))), A117804(n+1))`
-/

namespace A178843.P13474541545703800173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A341537 (2 * (n + 1))).toNat) (A117804 (n + 1))

end

end A178843.P13474541545703800173

/-!
# A178844: First nonzero Fermat quotient mod the n-th prime.

The programs for A178844, there is no canonical definition to state claims against.
-/

/-! ## A178844.P942082687858539746

`A130912(ceil(acot(n)+n))`
-/

namespace A178844.P942082687858539746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130912 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A178844.P942082687858539746

/-! ## A178844.P17526490653305137590

`A130912(ceil(sqrt(n²+2)))`
-/

namespace A178844.P17526490653305137590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130912 ⌈Real.sqrt (n ^ 2 + 2 : ℝ)⌉.toNat

end

end A178844.P17526490653305137590

/-! ## A178844.P3087165246097520477

`floor(A196202(n+1)/p?[A259153(n)])`
-/

namespace A178844.P3087165246097520477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A178844.P3087165246097520477

/-! ## A178844.P1069894989751001062

`floor(A196202(n+1)/A000040(n+1))`
-/

namespace A178844.P1069894989751001062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A178844.P1069894989751001062

/-! ## A178844.P4133441316025739860

`ceil(A196202(n+1)/A008864(n+1))`
-/

namespace A178844.P4133441316025739860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196202 (n + 1) : ℚ) / (A008864 (n + 1) : ℚ)⌉

end

end A178844.P4133441316025739860

/-! ## A178844.P1173992195683924957

`floor(A196202(n+1)/sqrt(A001248(n+1)))`
-/

namespace A178844.P1173992195683924957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)⌋

end

end A178844.P1173992195683924957

/-! ## A178844.P14410488154359856928

`-xor(A130912(A000007(n)+1+n)-1, -1)`
-/

namespace A178844.P14410488154359856928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A130912 (A000007 n + 1 + (n : ℤ)).toNat - 1) (-1)

end

end A178844.P14410488154359856928

/-! ## A178844.P14287030631574833536

`floor(A196202(n+1)/p?[A018252(n+1)-7])`
-/

namespace A178844.P14287030631574833536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196202 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A178844.P14287030631574833536

/-! ## A178844.P15040500131163503447

`round(A196202(n+1)/∏{d}[A000040(2*n-(n-1)), #])`
-/

namespace A178844.P15040500131163503447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A196202 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ))

end

end A178844.P15040500131163503447

/-! ## A178844.P5899170578010759050

`A014963(12*(n+1))*A130912(A000007(n)+n+1)`
-/

namespace A178844.P5899170578010759050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A130912 (A000007 n + (n + 1 : ℤ)).toNat

end

end A178844.P5899170578010759050

/-!
# A178845: Number of permutations of 2..n+1 with no element divisible by an adjacent element.

The programs for A178845, there is no canonical definition to state claims against.
-/

/-! ## A178845.P5747734095574860632

`a(n-2)*A001222(2^∑[n])` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A178845.P5747734095574860632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) * A001222 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A178845.P5747734095574860632

/-! ## A178845.P11346330397428007293

`A351876(A094941(n))`
-/

namespace A178845.P11346330397428007293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351876 (A094941 n).toNat

end

end A178845.P11346330397428007293

/-!
# A178846: Number of permutations of 3..n+2 with no element divisible by an adjacent element.

The programs for A178846, there is no canonical definition to state claims against.
-/

/-! ## A178846.P6899666694026021866

`A288125(n)+A008585(A088335(n))`
-/

namespace A178846.P6899666694026021866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288125 n + A008585 (A088335 n).toNat

end

end A178846.P6899666694026021866

/-! ## A178846.P15637245650175105905

`A003962(A318693(n)+n)`
-/

namespace A178846.P15637245650175105905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (A318693 n + (n : ℤ)).toNat

end

end A178846.P15637245650175105905

/-! ## A178846.P6979729785630401088

`A290731(A252737(n)+A150857(n))`
-/

namespace A178846.P6979729785630401088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290731 (A252737 n + A150857 n).toNat

end

end A178846.P6979729785630401088

/-!
# A178847: Number of permutations of 4..n+3 with no element divisible by an adjacent element.

The programs for A178847, there is no canonical definition to state claims against.
-/

/-! ## A178847.P8673570499539824871

`A173844(A037336(n+1))`
-/

namespace A178847.P8673570499539824871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173844 (A037336 (n + 1)).toNat

end

end A178847.P8673570499539824871

/-! ## A178847.P17302699884957246317

`A173844(A037443(n+1))`
-/

namespace A178847.P17302699884957246317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173844 (A037443 (n + 1)).toNat

end

end A178847.P17302699884957246317

/-! ## A178847.P6795683124202712067

`A173844(A000005(5^n))`
-/

namespace A178847.P6795683124202712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173844 (A000005 (5 ^ n)).toNat

end

end A178847.P6795683124202712067

/-! ## A178847.P1131285148541548034

`A173844(∑[A211399(n)!])`
-/

namespace A178847.P1131285148541548034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A211399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178847.P1131285148541548034

/-!
# A178848: Number of permutations of 5..n+4 with no element divisible by an adjacent element.

The programs for A178848, there is no canonical definition to state claims against.
-/

/-! ## A178848.P5204481202482179667

`A173845(A002998(n)+1)`
-/

namespace A178848.P5204481202482179667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173845 (A002998 n + 1).toNat

end

end A178848.P5204481202482179667

/-! ## A178848.P2115926673789735704

`A173845(A046469(n)+1)`
-/

namespace A178848.P2115926673789735704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173845 (A046469 n + 1).toNat

end

end A178848.P2115926673789735704

/-! ## A178848.P12447609034506544491

`A173845(A085908(n+1))`
-/

namespace A178848.P12447609034506544491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173845 (A085908 (n + 1)).toNat

end

end A178848.P12447609034506544491

/-! ## A178848.P12175814660926467227

`A173845(n+1)*A245910(A245910(n))`
-/

namespace A178848.P12175814660926467227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173845 (n + 1) * A245910 (A245910 n).toNat

end

end A178848.P12175814660926467227

/-!
# A178849: n-th integer having n-th prime-containing prime signature.

The programs for A178849, there is no canonical definition to state claims against.
-/

/-! ## A178849.P14525703846964829570

`A085612(A226387(A025487(n+2))+n)`
-/

namespace A178849.P14525703846964829570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085612 (A226387 (A025487 (n + 2)).toNat + (n : ℤ)).toNat

end

end A178849.P14525703846964829570

/-! ## A178849.P16750466091137215444

`A095904(∑[4*n])`
-/

namespace A178849.P16750466091137215444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178849.P16750466091137215444

/-!
# A178850: Lexicographically earliest infinite sequence such that (a(i)-a(j)) mod (a(k)-a(j)) is nonzero whenever i,j,k are disjoint.

The programs for A178850, there is no canonical definition to state claims against.
-/

/-! ## A178850.P9100081894376389944

`A250220(A018143(n))-6`
-/

namespace A178850.P9100081894376389944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250220 (A018143 n).toNat - 6

end

end A178850.P9100081894376389944

/-! ## A178850.P9758973840016744133

`A182635(n)+A089873(3*n)`
-/

namespace A178850.P9758973840016744133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182635 n + A089873 (3 * n)

end

end A178850.P9758973840016744133

/-! ## A178850.P14889319856548741391

`or(2^n, A322965(A037992(n)))`
-/

namespace A178850.P14889319856548741391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A322965 (A037992 n).toNat)

end

end A178850.P14889319856548741391

/-!
# A178851: The number of length n sequences on {0,1,2}(ternary sequences) that contain a prime number of 2's.

The programs for A178851, there is no canonical definition to state claims against.
-/

/-! ## A178851.P15758443952343394355

`∑[∑[∑[A093110(2^n-(n+1))]]]`
-/

namespace A178851.P15758443952343394355
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (2 ^ n - (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178851.P15758443952343394355

/-! ## A178851.P3026225392032735711

`∑[∑[A105519(A000649(n))]]`
-/

namespace A178851.P3026225392032735711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A000649 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178851.P3026225392032735711

/-! ## A178851.P9037163236198207150

`floor(A289122((A160549(n)+1)*(n+1))/2)`
-/

namespace A178851.P9037163236198207150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289122 ((A160549 n + 1) * (n + 1 : ℤ)).toNat : ℚ) / 2⌋

end

end A178851.P9037163236198207150

/-!
# A178852: G.f. satisfies: A(x) = x/(x - B(x^2)) where B(x/A(x)) = x and B(x) is the g.f. of A141200.

The programs for A178852, there is no canonical definition to state claims against.
-/

/-! ## A178852.P16138112418074428145

`A110655(A077027(n+1)+A000073(n))`
-/

namespace A178852.P16138112418074428145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A077027 (n + 1) + A000073 n).toNat

end

end A178852.P16138112418074428145

/-! ## A178852.P8612653186538314116

`A321484(n)+A053735(A241549(n))`
-/

namespace A178852.P8612653186538314116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321484 n + A053735 (A241549 n).toNat

end

end A178852.P8612653186538314116

/-! ## A178852.P18404098014354619797

`A339563(2*a(n-2))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A178852.P18404098014354619797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A339563 (2 * a (n - 2)).toNat

end

end A178852.P18404098014354619797

/-! ## A178852.P14255214478395543644

`A239217(A324407(n+1))`
-/

namespace A178852.P14255214478395543644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A324407 (n + 1)).toNat

end

end A178852.P14255214478395543644

/-! ## A178852.P10146651831014497472

`A102800(A030227(n))`
-/

namespace A178852.P10146651831014497472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A030227 n).toNat

end

end A178852.P10146651831014497472

/-!
# A178853: "Josephus problem": n persons stand in a circle and eliminate every seventh person counting clockwise until only person a(n) is remaining.

The programs for A178853, there is no canonical definition to state claims against.
-/

/-! ## A178853.P3921281241297440020

`(a(n-1)+6)%(n+1)+1` with `a(0)=1`
-/

namespace A178853.P3921281241297440020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 6) % (n + 1) + 1

end

end A178853.P3921281241297440020

/-! ## A178853.P7931791978599715384

`A020715(a(n-1))%(n+1)+1` with `a(0)=1`
-/

namespace A178853.P7931791978599715384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A020715 (a (n - 1)).toNat) (n + 1 : ℤ) + 1

end

end A178853.P7931791978599715384

/-! ## A178853.P13013020478027901622

`A198788(A167487(n+5))`
-/

namespace A178853.P13013020478027901622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A167487 (n + 5)).toNat

end

end A178853.P13013020478027901622

/-! ## A178853.P16697959227051986432

`A198789(A056121(n)+22)`
-/

namespace A178853.P16697959227051986432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A056121 n + 22).toNat

end

end A178853.P16697959227051986432

/-! ## A178853.P2919351370387024806

`A198788(A056119(n)+28)`
-/

namespace A178853.P2919351370387024806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A056119 n + 28).toNat

end

end A178853.P2919351370387024806

/-! ## A178853.P12423001367252779172

`A198789(Δ[A023551(n+2)])`
-/

namespace A178853.P12423001367252779172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (f1 (n + 1) - f1 n).toNat

end

end A178853.P12423001367252779172

/-! ## A178853.P4555690203539510258

`A198789(Δ[A026054(n+4)])`
-/

namespace A178853.P4555690203539510258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (f1 (n + 1) - f1 n).toNat

end

end A178853.P4555690203539510258

/-! ## A178853.P6791306840244227515

`A198789(A027379(n+5)-3)`
-/

namespace A178853.P6791306840244227515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (A027379 (n + 5) - 3).toNat

end

end A178853.P6791306840244227515

/-! ## A178853.P7306121588793703060

`A198788(A000124(n+6)+6)`
-/

namespace A178853.P7306121588793703060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A000124 (n + 6) + 6).toNat

end

end A178853.P7306121588793703060

/-! ## A178853.P13180285238548213370

`A198788(A000217(n+6)+7)`
-/

namespace A178853.P13180285238548213370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A000217 (n + 6) + 7).toNat

end

end A178853.P13180285238548213370

/-!
# A178854: Asymptotic value of odd Catalan numbers mod 2^n.

The programs for A178854, there is no canonical definition to state claims against.
-/

/-! ## A178854.P3147534174599820242

`A000346(∏[2-n²%3]-1)%(2^n)`
-/

namespace A178854.P3147534174599820242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000346 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat) (2 ^ n : ℤ)

end

end A178854.P3147534174599820242

/-! ## A178854.P15655814397770218536

`A045621(∏[gcd(2, n)]-1)%(2^n)`
-/

namespace A178854.P15655814397770218536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045621 (∏ j ∈ Finset.range (n + 1), f1 j - 1)) (2 ^ n : ℤ)

end

end A178854.P15655814397770218536

/-! ## A178854.P2692005898345208327

`and(A000225(n), A126930(A052551(n)))`
-/

namespace A178854.P2692005898345208327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A126930 (A052551 n).toNat)

end

end A178854.P2692005898345208327

/-! ## A178854.P2262540878238507613

`or(A309767(A055645(n)), A322926(n))`
-/

namespace A178854.P2262540878238507613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309767 (A055645 n).toNat) (A322926 n)

end

end A178854.P2262540878238507613

/-! ## A178854.P3125152142740657950

`∑[A000010(A130188(n))]%(2^n)`
-/

namespace A178854.P3125152142740657950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 ^ n : ℤ)

end

end A178854.P3125152142740657950

/-!
# A178855: Partial sums of A033485.

The programs for A178855, the canonical program `A178855.P7616249228420714047` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178855 has offset 1).

The definition of A178855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178855.P7616249228420714047

`(A033485(2*(n+1)+1)-1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178855

/-- `(A033485(2*(n+1)+1)-1)/2` -/
def P7616249228420714047.Spec : Prop :=
  ∀ n, P7616249228420714047.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P3608257567318442538

`∑[a(floor((n-1)/2))+a(n-1)]` with `a(0)=1`
-/

namespace A178855.P3608257567318442538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P3608257567318442538

namespace A178855

/-- `∑[a(floor((n-1)/2))+a(n-1)]` -/
def P3608257567318442538.Spec : Prop :=
  ∀ n, (P3608257567318442538.a n : ℤ) = A178855 (n + 1)

end A178855

/-! ## A178855.P4767277718905634014

`∑[A033485(n+1)]`
-/

namespace A178855.P4767277718905634014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P4767277718905634014

namespace A178855

/-- `∑[A033485(n+1)]` -/
def P4767277718905634014.Spec : Prop :=
  ∀ n, P4767277718905634014.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P8188204952930571322

`∑[A102379(n+1)+1]`
-/

namespace A178855.P8188204952930571322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P8188204952930571322

namespace A178855

/-- `∑[A102379(n+1)+1]` -/
def P8188204952930571322.Spec : Prop :=
  ∀ n, P8188204952930571322.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P11631312473765290727

`∑[A000123(n+1)/2]`
-/

namespace A178855.P11631312473765290727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P11631312473765290727

namespace A178855

/-- `∑[A000123(n+1)/2]` -/
def P11631312473765290727.Spec : Prop :=
  ∀ n, P11631312473765290727.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P11826322396133633044

`floor(A131205(n+2)/2)`
-/

namespace A178855.P11826322396133633044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131205 (n + 2) : ℚ) / 2⌋

end

end A178855.P11826322396133633044

namespace A178855

/-- `floor(A131205(n+2)/2)` -/
def P11826322396133633044.Spec : Prop :=
  ∀ n, P11826322396133633044.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P2276063504855406219

`(A022905(n+2)-1)/3`
-/

namespace A178855.P2276063504855406219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022905 (n + 2) - 1 : ℚ) / 3

end

end A178855.P2276063504855406219

namespace A178855

/-- `(A022905(n+2)-1)/3` -/
def P2276063504855406219.Spec : Prop :=
  ∀ n, P2276063504855406219.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P3760556594359113479

`∑[abs(Δ[A022905(n+1)/3])]`
-/

namespace A178855.P3760556594359113479
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022905 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P3760556594359113479

namespace A178855

/-- `∑[abs(Δ[A022905(n+1)/3])]` -/
def P3760556594359113479.Spec : Prop :=
  ∀ n, P3760556594359113479.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P15011201966026580006

`A022905(n+2)-A131205(n+2)`
-/

namespace A178855.P15011201966026580006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 2) - A131205 (n + 2)

end

end A178855.P15011201966026580006

namespace A178855

/-- `A022905(n+2)-A131205(n+2)` -/
def P15011201966026580006.Spec : Prop :=
  ∀ n, P15011201966026580006.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P16868238290677005296

`A022907(n+2)+A022908(n+2)-A131205(n+2)`
-/

namespace A178855.P16868238290677005296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) + (A022908 (n + 2) - A131205 (n + 2))

end

end A178855.P16868238290677005296

namespace A178855

/-- `A022907(n+2)+A022908(n+2)-A131205(n+2)` -/
def P16868238290677005296.Spec : Prop :=
  ∀ n, P16868238290677005296.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P18287164418297648217

`(A022908(n+3)-2)/3`
-/

namespace A178855.P18287164418297648217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022908 (n + 3) - 2 : ℚ) / 3

end

end A178855.P18287164418297648217

namespace A178855

/-- `(A022908(n+3)-2)/3` -/
def P18287164418297648217.Spec : Prop :=
  ∀ n, P18287164418297648217.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P16860307683523601554

`A000123(2*n+3)-A022908(n+3)`
-/

namespace A178855.P16860307683523601554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (2 * n + 3) - A022908 (n + 3)

end

end A178855.P16860307683523601554

namespace A178855

/-- `A000123(2*n+3)-A022908(n+3)` -/
def P16860307683523601554.Spec : Prop :=
  ∀ n, P16860307683523601554.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P5928312948261594599

`∑[A040039(2*n)]`
-/

namespace A178855.P5928312948261594599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P5928312948261594599

namespace A178855

/-- `∑[A040039(2*n)]` -/
def P5928312948261594599.Spec : Prop :=
  ∀ n, P5928312948261594599.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P15434399156662887486

`(A131205(n+2)-A001511(2*n+1))/2`
-/

namespace A178855.P15434399156662887486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131205 (n + 2) - A001511 (2 * n + 1) : ℚ) / 2

end

end A178855.P15434399156662887486

namespace A178855

/-- `(A131205(n+2)-A001511(2*n+1))/2` -/
def P15434399156662887486.Spec : Prop :=
  ∀ n, P15434399156662887486.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P2160638483858869143

`A102379(2*(n+1))-A102379(2*n+1)/2`
-/

namespace A178855.P2160638483858869143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102379 (2 * (n + 1)) : ℚ) - (A102379 (2 * n + 1) : ℚ) / 2

end

end A178855.P2160638483858869143

namespace A178855

/-- `A102379(2*(n+1))-A102379(2*n+1)/2` -/
def P2160638483858869143.Spec : Prop :=
  ∀ n, P2160638483858869143.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P2846573074877342984

`A033485(2*n+1)+A033485(2*(n+1))-A022908(n+2)`
-/

namespace A178855.P2846573074877342984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (2 * n + 1) + (A033485 (2 * (n + 1)) - A022908 (n + 2))

end

end A178855.P2846573074877342984

namespace A178855

/-- `A033485(2*n+1)+A033485(2*(n+1))-A022908(n+2)` -/
def P2846573074877342984.Spec : Prop :=
  ∀ n, P2846573074877342984.a n = A178855 (n + 1)

end A178855

/-! ## A178855.P17892317549186473821

`A102379(2*n+3)/2`
-/

namespace A178855.P17892317549186473821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102379 (2 * n + 3) : ℚ) / 2

end

end A178855.P17892317549186473821

namespace A178855

/-- `A102379(2*n+3)/2` -/
def P17892317549186473821.Spec : Prop :=
  ∀ n, P17892317549186473821.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P14377003658765622111

`∑[A018819(A004277(n+1))/2]`
-/

namespace A178855.P14377003658765622111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018819 (A004277 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178855.P14377003658765622111

namespace A178855

/-- `∑[A018819(A004277(n+1))/2]` -/
def P14377003658765622111.Spec : Prop :=
  ∀ n, P14377003658765622111.a n = (A178855 (n + 1) : ℚ)

end A178855

/-! ## A178855.P8317705931529311240

`A022905(n+2)-A033485(2*n+3)`
-/

namespace A178855.P8317705931529311240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 2) - A033485 (2 * n + 3)

end

end A178855.P8317705931529311240

namespace A178855

/-- `A022905(n+2)-A033485(2*n+3)` -/
def P8317705931529311240.Spec : Prop :=
  ∀ n, P8317705931529311240.a n = A178855 (n + 1)

end A178855

/-!
# A178858: Divisors of 5040.

The programs for A178858, there is no canonical definition to state claims against.
-/

/-! ## A178858.P17652825750270655893

`A079210(n+62)`
-/

namespace A178858.P17652825750270655893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (n + 62)

end

end A178858.P17652825750270655893

/-! ## A178858.P10927615824841315977

`lt[A002034(n+1), 8]+1`
-/

namespace A178858.P10927615824841315977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178858.P10927615824841315977

/-! ## A178858.P9796586916680618824

`lt[A122416(n+1)-1, 8]+1`
-/

namespace A178858.P9796586916680618824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178858.P9796586916680618824

/-! ## A178858.P16528392464534698280

`record[A071785(A245028(n+1))]`
-/

namespace A178858.P16528392464534698280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A245028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178858.P16528392464534698280

/-! ## A178858.P7081762128031478030

`record[A260739(A178860(n+1))]`
-/

namespace A178858.P7081762128031478030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A178860 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178858.P7081762128031478030

/-! ## A178858.P9738676523296915497

`filter[A178863(n+1), A122255(#)]`
-/

namespace A178858.P9738676523296915497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122255 (f1 j).toNat = 1) n)

end

end A178858.P9738676523296915497

/-! ## A178858.P3248015437626087457

`filter[A245028(n+1), A086299(#)]`
-/

namespace A178858.P3248015437626087457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A178858.P3248015437626087457

/-! ## A178858.P13179953790598987347

`filter[A178860(n+1), A296077(#)]`
-/

namespace A178858.P13179953790598987347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296077 (f1 j).toNat = 1) n)

end

end A178858.P13179953790598987347

/-! ## A178858.P3506100841267679223

`A328617(lt[A139171(n+1), 8]+1)`
-/

namespace A178858.P3506100841267679223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A178858.P3506100841267679223

/-! ## A178858.P16664297420776996897

`∩[A002473(n+1), A245028(n+1)]`
-/

namespace A178858.P16664297420776996897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178858.P16664297420776996897

/-!
# A178859: Divisors of 7560.

The programs for A178859, there is no canonical definition to state claims against.
-/

/-! ## A178859.P1111316703141577484

`record[A053165(A178861(n+1))]`
-/

namespace A178859.P1111316703141577484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A178861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178859.P1111316703141577484

/-! ## A178859.P16994743851369223076

`filter[A178861(n+1), A307430(#)]`
-/

namespace A178859.P16994743851369223076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A178859.P16994743851369223076

/-! ## A178859.P9386342267912935368

`filter[A178861(n+1), A370598(#)]`
-/

namespace A178859.P9386342267912935368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A178859.P9386342267912935368

/-! ## A178859.P17914967042853961819

`filter[A200001(n+2), A307430(#)]`
-/

namespace A178859.P17914967042853961819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A178859.P17914967042853961819

/-! ## A178859.P2374512175252508585

`∩[A046100(n+1), A178861(n+1)]`
-/

namespace A178859.P2374512175252508585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178859.P2374512175252508585

/-! ## A178859.P11260035502074767858

`∩[A046100(n+1), A200001(n+1)]`
-/

namespace A178859.P11260035502074767858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178859.P11260035502074767858

/-! ## A178859.P247753461255383642

`∩[A115063(n+1), A178861(n+1)]`
-/

namespace A178859.P247753461255383642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178859.P247753461255383642

/-! ## A178859.P8824219031025081891

`∩[A178861(n+1), A209061(n+1)]`
-/

namespace A178859.P8824219031025081891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178859.P8824219031025081891

/-! ## A178859.P14120821210650688945

`∩[A178861(n+1), A377021(n+1)]`
-/

namespace A178859.P14120821210650688945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178859.P14120821210650688945

/-!
# A178860: Divisors of 10080.

The programs for A178860, there is no canonical definition to state claims against.
-/

/-! ## A178860.P13718508376588530057

`record[A273943(A178862(n+1))]`
-/

namespace A178860.P13718508376588530057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A178862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178860.P13718508376588530057

/-! ## A178860.P17201462561648968549

`∩[A144972(n+1), A178862(n+1)]`
-/

namespace A178860.P17201462561648968549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178860.P17201462561648968549

/-! ## A178860.P5993180734258627998

`∪[2*A178858(n+1), A178858(n+1)]`
-/

namespace A178860.P5993180734258627998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178860.P5993180734258627998

/-! ## A178860.P17723549524277646856

`∪[A178858(n+1), A004277(A178858(n+1))]`
-/

namespace A178860.P17723549524277646856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A178858 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178860.P17723549524277646856

/-! ## A178860.P13264218776583068626

`record[A025480(A178862(n+2))]`
-/

namespace A178860.P13264218776583068626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A178862 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178860.P13264218776583068626

/-! ## A178860.P13700710582726606318

`record[gcd(A053625(n)/2, A080513(n))]`
-/

namespace A178860.P13700710582726606318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A053625 n : ℚ) / 2)) (A080513 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178860.P13700710582726606318

/-! ## A178860.P4023967983134740711

`record[A078898(A178862(floor(n/3)+1))]`
-/

namespace A178860.P4023967983134740711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A178862 (⌊(n : ℚ) / 3⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178860.P4023967983134740711

/-! ## A178860.P17122752441133371252

`record[A032742(A178862(n+1)^A178334(n))]`
-/

namespace A178860.P17122752441133371252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A178862 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178860.P17122752441133371252

/-! ## A178860.P2891662573848224460

`∪[4*A165412(n+1), A165412(n+1)]`
-/

namespace A178860.P2891662573848224460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178860.P2891662573848224460

/-! ## A178860.P14963688082590187631

`∪[A165412(n+1), A008586(A165412(n+1))]`
-/

namespace A178860.P14963688082590187631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A165412 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178860.P14963688082590187631

/-!
# A178861: Divisors of 15120.

The programs for A178861, there is no canonical definition to state claims against.
-/

/-! ## A178861.P13414113802921361653

`∩[A002473(n+1), A198343(n+1)]`
-/

namespace A178861.P13414113802921361653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P13414113802921361653

/-! ## A178861.P6354779148575302060

`∩[A033620(n+1), A198343(n+1)]`
-/

namespace A178861.P6354779148575302060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P6354779148575302060

/-! ## A178861.P4315049804158772172

`∩[A033637(n+1), A198343(n+1)]`
-/

namespace A178861.P4315049804158772172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P4315049804158772172

/-! ## A178861.P7424112207124867571

`∩[A051038(n+1), A198343(n+1)]`
-/

namespace A178861.P7424112207124867571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P7424112207124867571

/-! ## A178861.P15944659513928176299

`∩[A084034(n+1), A198343(n+1)]`
-/

namespace A178861.P15944659513928176299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P15944659513928176299

/-! ## A178861.P7171071940479326386

`∩[A155182(n+1), A198343(n+1)]`
-/

namespace A178861.P7171071940479326386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P7171071940479326386

/-! ## A178861.P6588328290373647202

`∩[A161466(n+1), A198343(n+1)]`
-/

namespace A178861.P6588328290373647202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P6588328290373647202

/-! ## A178861.P5220135128481621289

`∩[A198343(n+1), A200001(n+1)]`
-/

namespace A178861.P5220135128481621289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P5220135128481621289

/-! ## A178861.P17598173054629468476

`∩[A198343(n+1), A235028(n+1)]`
-/

namespace A178861.P17598173054629468476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178861.P17598173054629468476

/-!
# A178862: Divisors of 20160.

The programs for A178862, there is no canonical definition to state claims against.
-/

/-! ## A178862.P1423949688709349339

`∪[2*A178860(n+1), A178860(n+1)]`
-/

namespace A178862.P1423949688709349339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178862.P1423949688709349339

/-! ## A178862.P10898149862468995836

`∪[A178860(n+1), A005843(A178860(n+1))]`
-/

namespace A178862.P10898149862468995836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A178860 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178862.P10898149862468995836

/-! ## A178862.P7337316355378151278

`eq[n, gcd(n, A053625(n+8))]`
-/

namespace A178862.P7337316355378151278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A053625 (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178862.P7337316355378151278

/-! ## A178862.P9645764409559252007

`∪[4*A178858(n+1), A178858(n+1)]`
-/

namespace A178862.P9645764409559252007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178862.P9645764409559252007

/-! ## A178862.P778419047868127985

`∪[A178858(n+1), A008574(A178858(n+1))]`
-/

namespace A178862.P778419047868127985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A178858 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178862.P778419047868127985

/-! ## A178862.P5258584261676791764

`record[gcd(A053625(n), A080513(n))]`
-/

namespace A178862.P5258584261676791764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053625 n) (A080513 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178862.P5258584261676791764

/-! ## A178862.P17916487058082724988

`record[gcd(n-A001096(n), A260429(n+1))]`
-/

namespace A178862.P17916487058082724988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A001096 n) (A260429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178862.P17916487058082724988

/-! ## A178862.P11890270629285974893

`record[gcd(n+1, A053625(3*n))]`
-/

namespace A178862.P11890270629285974893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053625 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178862.P11890270629285974893

/-! ## A178862.P8811141125542998823

`∪[8*A165412(n+1), A165412(n+1)]`
-/

namespace A178862.P8811141125542998823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178862.P8811141125542998823

/-! ## A178862.P9539403675283670836

`∪[A165412(n+1), A022144(A165412(n+1))]`
-/

namespace A178862.P9539403675283670836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A165412 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178862.P9539403675283670836

/-!
# A178863: Divisors of 25200.

The programs for A178863, there is no canonical definition to state claims against.
-/

/-! ## A178863.P10455694536502219363

`eq[n, gcd(n, A190319(gcd(n, n+1)))]`
-/

namespace A178863.P10455694536502219363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A190319 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178863.P10455694536502219363

/-! ## A178863.P15604613814417885534

`eq[lcm(n, A208378(n+5)), A208378(n+5)]`
-/

namespace A178863.P15604613814417885534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A208378 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208378 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178863.P15604613814417885534

/-! ## A178863.P6450296761145202892

`∪[5*A178858(n+1), A178858(n+1)]`
-/

namespace A178863.P6450296761145202892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178863.P6450296761145202892

/-! ## A178863.P7294371392502486010

`∪[A178858(n+1), A008587(A178858(n+1))]`
-/

namespace A178863.P7294371392502486010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A178858 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178863.P7294371392502486010

/-! ## A178863.P12265085238021931129

`eq[n, gcd(n, A185096(A020742(n)))]`
-/

namespace A178863.P12265085238021931129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A185096 (A020742 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178863.P12265085238021931129

/-! ## A178863.P10290031422108808220

`lt[A006530((n+1)*A055653(n+1)), 8]+1`
-/

namespace A178863.P10290031422108808220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A055653 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178863.P10290031422108808220

/-!
# A178864: Divisors of 27720.

The programs for A178864, there is no canonical definition to state claims against.
-/

/-! ## A178864.P5987788648535800424

`lt[A034699(n+1), 12]+1`
-/

namespace A178864.P5987788648535800424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178864.P5987788648535800424

/-! ## A178864.P8244792945149720291

`eq[n, gcd(n, 5*A027822(n+5))]`
-/

namespace A178864.P8244792945149720291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (5 * A027822 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178864.P8244792945149720291

/-! ## A178864.P9675925820635206120

`lt[A006530(A338224(n+1)), 20]+1`
-/

namespace A178864.P9675925820635206120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338224 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A178864.P9675925820635206120

/-! ## A178864.P14213604647039864273

`eq[A004917(A309639(n+1)+1), A309639(n+1)]+1`
-/

namespace A178864.P14213604647039864273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (A309639 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A178864.P14213604647039864273

/-! ## A178864.P937762948616714194

`eq[A008595(n), A081805(A008595(n+1))]+1`
-/

namespace A178864.P937762948616714194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081805 (A008595 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A178864.P937762948616714194

/-! ## A178864.P8942053778855185985

`∪[11*A165412(n+1), A165412(n+1)]`
-/

namespace A178864.P8942053778855185985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178864.P8942053778855185985

/-! ## A178864.P16828644726855316728

`∪[A165412(n+1), A008593(A165412(n+1))]`
-/

namespace A178864.P16828644726855316728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A165412 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178864.P16828644726855316728

/-! ## A178864.P14760745312984006024

`record[A284600(13*(n+1))]`
-/

namespace A178864.P14760745312984006024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (13 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178864.P14760745312984006024

/-! ## A178864.P11760345717316968346

`∩[A155182(n+1), A334139(n+1)]`
-/

namespace A178864.P11760345717316968346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178864.P11760345717316968346

/-! ## A178864.P16601078364483728038

`∩[A334139(n+1), A396553(n+1)]`
-/

namespace A178864.P16601078364483728038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178864.P16601078364483728038

/-!
# A178865: Triangle read by rows; generalization of A101950.

The programs for A178865, there is no canonical definition to state claims against.
-/

/-! ## A178865.P11896419320433480389

`A206819(n)+A076142(A206819(n))`
-/

namespace A178865.P11896419320433480389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206819 n + A076142 (A206819 n).toNat

end

end A178865.P11896419320433480389

/-! ## A178865.P1349470725025727579

`or(A055641(n), A131055(A206819(n)))`
-/

namespace A178865.P1349470725025727579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A131055 (A206819 n).toNat)

end

end A178865.P1349470725025727579

/-! ## A178865.P1686541900737301914

`or(A055641(A206819(n)-1), A206819(n))`
-/

namespace A178865.P1686541900737301914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A206819 n - 1).toNat) (A206819 n)

end

end A178865.P1686541900737301914

/-! ## A178865.P14365223958589386791

`A206819(n)+A055641(A295771(n))`
-/

namespace A178865.P14365223958589386791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206819 n + A055641 (A295771 n).toNat

end

end A178865.P14365223958589386791

/-! ## A178865.P9655931726304243182

`A206819(n)+A025458(A001676(n+1))`
-/

namespace A178865.P9655931726304243182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206819 n + A025458 (A001676 (n + 1)).toNat

end

end A178865.P9655931726304243182

/-!
# A178866: Basic Multinomial Coefficients.

The programs for A178866, there is no canonical definition to state claims against.
-/

/-! ## A178866.P17582369016982366520

`A211360(A020485(n))`
-/

namespace A178866.P17582369016982366520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (A020485 n).toNat

end

end A178866.P17582369016982366520

/-! ## A178866.P4889158242600164779

`A211360(A049872(n))`
-/

namespace A178866.P4889158242600164779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (A049872 n).toNat

end

end A178866.P4889158242600164779

/-! ## A178866.P4140723649832424104

`A211360(A061816(n))`
-/

namespace A178866.P4140723649832424104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (A061816 n).toNat

end

end A178866.P4140723649832424104

/-! ## A178866.P7408815556341412616

`A211360(A062003(n))`
-/

namespace A178866.P7408815556341412616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (A062003 n).toNat

end

end A178866.P7408815556341412616

/-! ## A178866.P11341132099754160117

`A211360(A004873(n+1))`
-/

namespace A178866.P11341132099754160117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (A004873 (n + 1)).toNat

end

end A178866.P11341132099754160117

/-!
# A178867: Irregular triangle read by rows: multinomial coefficients, version 3; alternatively, row n gives coefficients of the n-th complete exponential Bell polynomial B_n(x_1, x_2, ...) with monomials sorted into some unknown order.

The programs for A178867, there is no canonical definition to state claims against.
-/

/-! ## A178867.P7056049201076184177

`A211350(n+1)%A115425(n)`
-/

namespace A178867.P7056049201076184177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211350 (n + 1)) (A115425 n)

end

end A178867.P7056049201076184177

/-! ## A178867.P10886330366874220203

`gcd(Δ[A328449(n)], A211350(n+1))`
-/

namespace A178867.P10886330366874220203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A211350 (n + 1))

end

end A178867.P10886330366874220203

/-! ## A178867.P17356425193168746022

`A211350(A003982(n^3)+n+1)`
-/

namespace A178867.P17356425193168746022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211350 (A003982 (n ^ 3) + (n + 1 : ℤ)).toNat

end

end A178867.P17356425193168746022

/-! ## A178867.P9915415067315616140

`A211350(C(n+1, A178334(3*n)))`
-/

namespace A178867.P9915415067315616140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211350 (Nat.choose (n + 1) (A178334 (3 * n)).toNat)

end

end A178867.P9915415067315616140

/-! ## A178867.P8256594600388227177

`A297199(A014220(n))+A211350(n+1)`
-/

namespace A178867.P8256594600388227177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297199 (A014220 n).toNat + A211350 (n + 1)

end

end A178867.P8256594600388227177

/-!
# A178869: a(n) = 9*a(n-1) - 10*a(n-2); a(0)=0, a(1)=1.

The programs for A178869, the canonical program `A178869.P4084038460580779981` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178869 has offset 0).

The definition of A178869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-10*a(n-2)` (program `A178869.P4084038460580779981`, by `A178869.P4084038460580779981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178869.P4084038460580779981

`9*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178869

/-- `9*a(n-1)-10*a(n-2)` -/
def P4084038460580779981.Spec : Prop :=
  ∀ n, P4084038460580779981.a n = A178869 n

theorem P4084038460580779981.correct : P4084038460580779981.Spec := by
  intro n
  simp only [A178869]

end A178869

/-! ## A178869.P17487109579945790326

`ogf(x/(1-9x+10x^2))`
-/

namespace A178869.P17487109579945790326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 10] n

end

end A178869.P17487109579945790326

namespace A178869

/-- `ogf(x/(1-9x+10x^2))` -/
def P17487109579945790326.Spec : Prop :=
  ∀ n, P17487109579945790326.a n = A178869 n

end A178869

/-! ## A178869.P7902770834691770668

`lcm(9, a(n-1)-a(n-2))-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178869.P7902770834691770668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 9 (a (n - 1) - a (n - 2)) : ℤ) - a (n - 2)

end

end A178869.P7902770834691770668

namespace A178869

/-- `lcm(9, a(n-1)-a(n-2))-a(n-2)` -/
def P7902770834691770668.Spec : Prop :=
  ∀ n, P7902770834691770668.a n = A178869 n

end A178869

/-! ## A178869.P7262487104261081903

`(a(n-1)-a(n-2))/(1/3)²-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178869.P7262487104261081903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 3) ^ 2 - a (n - 2)

end

end A178869.P7262487104261081903

namespace A178869

/-- `(a(n-1)-a(n-2))/(1/3)²-a(n-2)` -/
def P7262487104261081903.Spec : Prop :=
  ∀ n, P7262487104261081903.a n = (A178869 n : ℚ)

end A178869

/-!
# A178872: Partial sums of round(4^n/7).

The programs for A178872, the canonical program `A178872.P9825910047706527125` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178872 has offset 0).

The definition of A178872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178872.P1548045960884671515

`a(n-3)+3*4^(n-2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A178872.P1548045960884671515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 3) + 3 * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A178872.P1548045960884671515

namespace A178872

/-- `a(n-3)+3*4^(n-2)` -/
def P1548045960884671515.Spec : Prop :=
  ∀ n, P1548045960884671515.a n = (A178872 n : ℚ)

end A178872

/-! ## A178872.P9825910047706527125

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178872

/-- `3*a(n-1)+3*a(n-2)+4*a(n-3)` -/
def P9825910047706527125.Spec : Prop :=
  ∀ n, (P9825910047706527125.a n : ℤ) = A178872 n

theorem P9825910047706527125.correct : P9825910047706527125.Spec := by
  intro n
  simp only [A178872]

end A178872

/-! ## A178872.P13876467106642985098

`floor((4*4^n+5)/21)`
-/

namespace A178872.P13876467106642985098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * 4 ^ n + 5 : ℚ) / 21⌋

end

end A178872.P13876467106642985098

namespace A178872

/-- `floor((4*4^n+5)/21)` -/
def P13876467106642985098.Spec : Prop :=
  ∀ n, P13876467106642985098.a n = A178872 n

end A178872

/-! ## A178872.P14168251173754704922

`ogf(-x/(-1+3x+3x^2+4x^3))`
-/

namespace A178872.P14168251173754704922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -3, -4] n

end

end A178872.P14168251173754704922

namespace A178872

/-- `ogf(-x/(-1+3x+3x^2+4x^3))` -/
def P14168251173754704922.Spec : Prop :=
  ∀ n, P14168251173754704922.a n = A178872 n

end A178872

/-! ## A178872.P16595969804520205225

`4*a(n-1)+(n+1)%3-1` with `a(0)=0`
-/

namespace A178872.P16595969804520205225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + ((((n + 1) % 3 : ℕ) : ℤ) - 1)

end

end A178872.P16595969804520205225

namespace A178872

/-- `4*a(n-1)+(n+1)%3-1` -/
def P16595969804520205225.Spec : Prop :=
  ∀ n, P16595969804520205225.a n = A178872 n

end A178872

/-! ## A178872.P13544336352706689931

`4^(n-1)-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A178872.P13544336352706689931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) + a (n - 2))

end

end A178872.P13544336352706689931

namespace A178872

/-- `4^(n-1)-(a(n-1)+a(n-2))` -/
def P13544336352706689931.Spec : Prop :=
  ∀ n, P13544336352706689931.a n = (A178872 n : ℚ)

end A178872

/-! ## A178872.P15477725109552183521

`∑[A152732(2*n+1)/2]`
-/

namespace A178872.P15477725109552183521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152732 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178872.P15477725109552183521

namespace A178872

/-- `∑[A152732(2*n+1)/2]` -/
def P15477725109552183521.Spec : Prop :=
  ∀ n, P15477725109552183521.a n = (A178872 n : ℚ)

end A178872

/-! ## A178872.P11974115179190807560

`∑[A155803(2*n+1)-A155803(2*n)]`
-/

namespace A178872.P11974115179190807560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (2 * n + 1) - A155803 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178872.P11974115179190807560

namespace A178872

/-- `∑[A155803(2*n+1)-A155803(2*n)]` -/
def P11974115179190807560.Spec : Prop :=
  ∀ n, P11974115179190807560.a n = A178872 n

end A178872

/-! ## A178872.P3773909430003841951

`Δ[Δ[A368345(n)]]`
-/

namespace A178872.P3773909430003841951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368345 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178872.P3773909430003841951

namespace A178872

/-- `Δ[Δ[A368345(n)]]` -/
def P3773909430003841951.Spec : Prop :=
  ∀ n, P3773909430003841951.a n = A178872 n

end A178872

/-! ## A178872.P11461386115723363261

`A078010(Δ[n²])/3`
-/

namespace A178872.P11461386115723363261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A178872.P11461386115723363261

namespace A178872

/-- `A078010(Δ[n²])/3` -/
def P11461386115723363261.Spec : Prop :=
  ∀ n, P11461386115723363261.a n = (A178872 n : ℚ)

end A178872

/-! ## A178872.P7389853862931453365

`round(A037497(n+1)/6)`
-/

namespace A178872.P7389853862931453365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037497 (n + 1) : ℚ) / 6)

end

end A178872.P7389853862931453365

namespace A178872

/-- `round(A037497(n+1)/6)` -/
def P7389853862931453365.Spec : Prop :=
  ∀ n, P7389853862931453365.a n = A178872 n

end A178872

/-! ## A178872.P16826173630901156073

`round(A077947(2*n)/3)`
-/

namespace A178872.P16826173630901156073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077947 (2 * n) : ℚ) / 3)

end

end A178872.P16826173630901156073

namespace A178872

/-- `round(A077947(2*n)/3)` -/
def P16826173630901156073.Spec : Prop :=
  ∀ n, P16826173630901156073.a n = A178872 n

end A178872

/-! ## A178872.P13521208465233188438

`round(A077972(2*n)/3)`
-/

namespace A178872.P13521208465233188438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077972 (2 * n) : ℚ) / 3)

end

end A178872.P13521208465233188438

namespace A178872

/-- `round(A077972(2*n)/3)` -/
def P13521208465233188438.Spec : Prop :=
  ∀ n, P13521208465233188438.a n = A178872 n

end A178872

/-! ## A178872.P936304350794940148

`A002450(n)-A155803(2*n)`
-/

namespace A178872.P936304350794940148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - A155803 (2 * n)

end

end A178872.P936304350794940148

namespace A178872

/-- `A002450(n)-A155803(2*n)` -/
def P936304350794940148.Spec : Prop :=
  ∀ n, P936304350794940148.a n = A178872 n

end A178872

/-! ## A178872.P17064454041396413064

`A001045(2*n)-A155803(2*n)`
-/

namespace A178872.P17064454041396413064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) - A155803 (2 * n)

end

end A178872.P17064454041396413064

namespace A178872

/-- `A001045(2*n)-A155803(2*n)` -/
def P17064454041396413064.Spec : Prop :=
  ∀ n, P17064454041396413064.a n = A178872 n

end A178872

/-! ## A178872.P16862997793006124395

`A033129(2*n)-2*A001045(2*n)`
-/

namespace A178872.P16862997793006124395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033129 (2 * n) - 2 * A001045 (2 * n)

end

end A178872.P16862997793006124395

namespace A178872

/-- `A033129(2*n)-2*A001045(2*n)` -/
def P16862997793006124395.Spec : Prop :=
  ∀ n, P16862997793006124395.a n = A178872 n

end A178872

/-! ## A178872.P15133166555635034844

`floor(∑[4*a(n-1)]/7)-1` with `a(0)=10, a(1)=4`
-/

namespace A178872.P15133166555635034844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7⌋ - 1

end

end A178872.P15133166555635034844

namespace A178872

/-- `floor(∑[4*a(n-1)]/7)-1` -/
def P15133166555635034844.Spec : Prop :=
  ∀ n, P15133166555635034844.a n = A178872 n

end A178872

/-! ## A178872.P2440960515470831973

`ceil(A080674(n)/7)`
-/

namespace A178872.P2440960515470831973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080674 n : ℚ) / 7⌉

end

end A178872.P2440960515470831973

namespace A178872

/-- `ceil(A080674(n)/7)` -/
def P2440960515470831973.Spec : Prop :=
  ∀ n, P2440960515470831973.a n = A178872 n

end A178872

/-! ## A178872.P203040900060380784

`A033131(n+1)-A033122(n+1)`
-/

namespace A178872.P203040900060380784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033131 (n + 1) - A033122 (n + 1)

end

end A178872.P203040900060380784

namespace A178872

/-- `A033131(n+1)-A033122(n+1)` -/
def P203040900060380784.Spec : Prop :=
  ∀ n, P203040900060380784.a n = A178872 n

end A178872

/-! ## A178872.P11929464389028226554

`A037521(n+1)-A037513(n+1)`
-/

namespace A178872.P11929464389028226554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1) - A037513 (n + 1)

end

end A178872.P11929464389028226554

namespace A178872

/-- `A037521(n+1)-A037513(n+1)` -/
def P11929464389028226554.Spec : Prop :=
  ∀ n, P11929464389028226554.a n = A178872 n

end A178872

/-!
# A178873: Partial sums of round(5^n/7).

The programs for A178873, the canonical program `A178873.P17557424130117069193` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178873 has offset 0).

The definition of A178873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178873.P11533919220440359940

`a(n-6)+558*5^(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=23, a(4)=112, a(5)=558`
-/

namespace A178873.P11533919220440359940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 5, 23, 112, 558] fun n a =>
  a (n - 6) + 558 * (5 : ℚ) ^ ((n : ℤ) - 5 : ℤ)

end

end A178873.P11533919220440359940

namespace A178873

/-- `a(n-6)+558*5^(n-5)` -/
def P11533919220440359940.Spec : Prop :=
  ∀ n, P11533919220440359940.a n = (A178873 n : ℚ)

end A178873

/-! ## A178873.P17557424130117069193

`7*a(n-1)-12*a(n-2)+11*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=23`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178873

/-- `7*a(n-1)-12*a(n-2)+11*a(n-3)-5*a(n-4)` -/
def P17557424130117069193.Spec : Prop :=
  ∀ n, P17557424130117069193.a n = A178873 n

theorem P17557424130117069193.correct : P17557424130117069193.Spec := by
  intro n
  simp only [A178873]

end A178873

/-! ## A178873.P17623558225307021947

`ceil((5*5^n-5)/28)`
-/

namespace A178873.P17623558225307021947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((5 * 5 ^ n : ℤ) - 5 : ℚ) / 28⌉

end

end A178873.P17623558225307021947

namespace A178873

/-- `ceil((5*5^n-5)/28)` -/
def P17623558225307021947.Spec : Prop :=
  ∀ n, P17623558225307021947.a n = A178873 n

end A178873

/-! ## A178873.P45107565621354006

`5^(n+1)/28+1/4+A117373(n+2)/7`
-/

namespace A178873.P45107565621354006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℚ) / 28 + (1 : ℚ) / 4 + (A117373 (n + 2) : ℚ) / 7

end

end A178873.P45107565621354006

namespace A178873

/-- `5^(n+1)/28+1/4+A117373(n+2)/7` -/
def P45107565621354006.Spec : Prop :=
  ∀ n, P45107565621354006.a n = (A178873 n : ℚ)

end A178873

/-! ## A178873.P12871200280763976733

`∑[ogf((x-2x^2)/(1-6x+6x^2-5x^3))]`
-/

namespace A178873.P12871200280763976733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -6, 6, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178873.P12871200280763976733

namespace A178873

/-- `∑[ogf((x-2x^2)/(1-6x+6x^2-5x^3))]` -/
def P12871200280763976733.Spec : Prop :=
  ∀ n, P12871200280763976733.a n = A178873 n

end A178873

/-! ## A178873.P14602192913254851636

`floor(∑[5*a(n-1)]/7)` with `a(0)=6, a(1)=5`
-/

namespace A178873.P14602192913254851636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7⌋

end

end A178873.P14602192913254851636

namespace A178873

/-- `floor(∑[5*a(n-1)]/7)` -/
def P14602192913254851636.Spec : Prop :=
  ∀ n, P14602192913254851636.a n = A178873 n

end A178873

/-!
# A178874: Partial sums of round(5^n/8).

The programs for A178874, the canonical program `A178874.P15427304536222855534` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178874 has offset 0).

The definition of A178874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178874.P15427304536222855534

`6*a(n-1)-4*a(n-2)-6*a(n-3)+5*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=20`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178874

/-- `6*a(n-1)-4*a(n-2)-6*a(n-3)+5*a(n-4)` -/
def P15427304536222855534.Spec : Prop :=
  ∀ n, P15427304536222855534.a n = A178874 n

theorem P15427304536222855534.correct : P15427304536222855534.Spec := by
  intro n
  simp only [A178874]

end A178874

/-! ## A178874.P5006582324140900953

`a(n-2)+(3*5^(n-1)+1)/4` with `a(0)=0, a(1)=1`
-/

namespace A178874.P5006582324140900953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) / 4

end

end A178874.P5006582324140900953

namespace A178874

/-- `a(n-2)+(3*5^(n-1)+1)/4` -/
def P5006582324140900953.Spec : Prop :=
  ∀ n, P5006582324140900953.a n = (A178874 n : ℚ)

end A178874

/-! ## A178874.P2153935619040163991

`floor((5*5^n+4*n+3)/32)`
-/

namespace A178874.P2153935619040163991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * 5 ^ n + 4 * n + 3 : ℚ) / 32⌋

end

end A178874.P2153935619040163991

namespace A178874

/-- `floor((5*5^n+4*n+3)/32)` -/
def P2153935619040163991.Spec : Prop :=
  ∀ n, P2153935619040163991.a n = A178874 n

end A178874

/-! ## A178874.P2350496873153427605

`∑[∑[ogf((-x+2x^2)/(-1+4x+5x^2))]]`
-/

namespace A178874.P2350496873153427605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -4, -5] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178874.P2350496873153427605

namespace A178874

/-- `∑[∑[ogf((-x+2x^2)/(-1+4x+5x^2))]]` -/
def P2350496873153427605.Spec : Prop :=
  ∀ n, P2350496873153427605.a n = A178874 n

end A178874

/-! ## A178874.P8413460634355664780

`ogf((x-2x^2)/(1-6x+4x^2+6x^3-5x^4))`
-/

namespace A178874.P8413460634355664780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -6, 4, 6, -5] n

end

end A178874.P8413460634355664780

namespace A178874

/-- `ogf((x-2x^2)/(1-6x+4x^2+6x^3-5x^4))` -/
def P8413460634355664780.Spec : Prop :=
  ∀ n, P8413460634355664780.a n = A178874 n

end A178874

/-! ## A178874.P15740827923726321361

`∑[5*a(n-1)-1]-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A178874.P15740827923726321361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A178874.P15740827923726321361

namespace A178874

/-- `∑[5*a(n-1)-1]-a(n-1)` -/
def P15740827923726321361.Spec : Prop :=
  ∀ n, P15740827923726321361.a n = A178874 n

end A178874

/-! ## A178874.P13443451787173954261

`∑[A015531(n)]-A097139(n)`
-/

namespace A178874.P13443451787173954261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097139 n

end

end A178874.P13443451787173954261

namespace A178874

/-- `∑[A015531(n)]-A097139(n)` -/
def P13443451787173954261.Spec : Prop :=
  ∀ n, P13443451787173954261.a n = A178874 n

end A178874

/-! ## A178874.P14718671446415417300

`A097139(n+1)-2*A097139(n)`
-/

namespace A178874.P14718671446415417300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097139 (n + 1) - 2 * A097139 n

end

end A178874.P14718671446415417300

namespace A178874

/-- `A097139(n+1)-2*A097139(n)` -/
def P14718671446415417300.Spec : Prop :=
  ∀ n, P14718671446415417300.a n = A178874 n

end A178874

/-! ## A178874.P11200612089426338793

`A033115(n+1)-(A097139(n)+A015531(n+1))`
-/

namespace A178874.P11200612089426338793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033115 (n + 1) - (A097139 n + A015531 (n + 1))

end

end A178874.P11200612089426338793

namespace A178874

/-- `A033115(n+1)-(A097139(n)+A015531(n+1))` -/
def P11200612089426338793.Spec : Prop :=
  ∀ n, P11200612089426338793.a n = A178874 n

end A178874

/-!
# A178875: Partial sums of round(4^n/9).

The programs for A178875, the canonical program `A178875.P6940231139167056497` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178875 has offset 0).

The definition of A178875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178875.P6940231139167056497

`5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=9, a(4)=37`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178875

/-- `5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` -/
def P6940231139167056497.Spec : Prop :=
  ∀ n, P6940231139167056497.a n = A178875 n

theorem P6940231139167056497.correct : P6940231139167056497.Spec := by
  intro n
  simp only [A178875]

end A178875

/-! ## A178875.P9745690571922688785

`a(n-3)+(7*4^(n-2)-1)/3` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A178875.P9745690571922688785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 3) + (7 * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1) / 3

end

end A178875.P9745690571922688785

namespace A178875

/-- `a(n-3)+(7*4^(n-2)-1)/3` -/
def P9745690571922688785.Spec : Prop :=
  ∀ n, P9745690571922688785.a n = (A178875 n : ℚ)

end A178875

/-! ## A178875.P5916571212425269834

`floor((4*4^n-3*n-4)/27)`
-/

namespace A178875.P5916571212425269834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * 4 ^ n : ℤ) - (3 * n : ℤ) - 4 : ℚ) / 27⌋

end

end A178875.P5916571212425269834

namespace A178875

/-- `floor((4*4^n-3*n-4)/27)` -/
def P5916571212425269834.Spec : Prop :=
  ∀ n, P5916571212425269834.a n = A178875 n

end A178875

/-! ## A178875.P6394797330898398530

`∑[A113405(2*n)]`
-/

namespace A178875.P6394797330898398530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178875.P6394797330898398530

namespace A178875

/-- `∑[A113405(2*n)]` -/
def P6394797330898398530.Spec : Prop :=
  ∀ n, P6394797330898398530.a n = A178875 n

end A178875

/-! ## A178875.P6860518137523872028

`A239367(n+1)-A212978(n)`
-/

namespace A178875.P6860518137523872028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239367 (n + 1) - A212978 n

end

end A178875.P6860518137523872028

namespace A178875

/-- `A239367(n+1)-A212978(n)` -/
def P6860518137523872028.Spec : Prop :=
  ∀ n, P6860518137523872028.a n = A178875 n

end A178875

/-! ## A178875.P5865829625565517891

`A348405(2*(n+1))-A008620(n+2)`
-/

namespace A178875.P5865829625565517891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 (2 * (n + 1)) - A008620 (n + 2)

end

end A178875.P5865829625565517891

namespace A178875

/-- `A348405(2*(n+1))-A008620(n+2)` -/
def P5865829625565517891.Spec : Prop :=
  ∀ n, P5865829625565517891.a n = A178875 n

end A178875

/-! ## A178875.P1735324408206827790

`A368345(n+1)+A368345(n+1)-A368345(n)`
-/

namespace A178875.P1735324408206827790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368345 (n + 1) + (A368345 (n + 1) - A368345 n)

end

end A178875.P1735324408206827790

namespace A178875

/-- `A368345(n+1)+A368345(n+1)-A368345(n)` -/
def P1735324408206827790.Spec : Prop :=
  ∀ n, P1735324408206827790.a n = A178875 n

end A178875

/-! ## A178875.P16692344346415048869

`∑[∑[A178872(n)]]-A178872(n)`
-/

namespace A178875.P16692344346415048869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178872 n

end

end A178875.P16692344346415048869

namespace A178875

/-- `∑[∑[A178872(n)]]-A178872(n)` -/
def P16692344346415048869.Spec : Prop :=
  ∀ n, P16692344346415048869.a n = A178875 n

end A178875

/-!
# A178876: a(n) = number of 7-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..62].

The programs for A178876, there is no canonical definition to state claims against.
-/

/-! ## A178876.P9992328100794012387

`record[A048595(n+1)-A221913(n+1)]`
-/

namespace A178876.P9992328100794012387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 1) - A221913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178876.P9992328100794012387

/-!
# A178877: Divisors of 1260.

The programs for A178877, there is no canonical definition to state claims against.
-/

/-! ## A178877.P5949795474002194074

`eq[gcd(7, n), A051724(lcm(15, n)/15)]`
-/

namespace A178877.P5949795474002194074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((Nat.lcm 15 n : ℚ) / 15)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178877.P5949795474002194074

/-! ## A178877.P290151017939908136

`record[A032742(A165412(n+1))]`
-/

namespace A178877.P290151017939908136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A165412 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178877.P290151017939908136

/-! ## A178877.P17245448005019743139

`filter[A165412(n+1), A168181(#)]`
-/

namespace A178877.P17245448005019743139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A178877.P17245448005019743139

/-! ## A178877.P17093528418622264047

`filter[A178858(n+1), A168181(#)]`
-/

namespace A178877.P17093528418622264047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A178877.P17093528418622264047

/-! ## A178877.P2221030929154632178

`filter[A178860(n+1), A168181(#)]`
-/

namespace A178877.P2221030929154632178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A178877.P2221030929154632178

/-!
# A178878: Divisors of 1680.

The programs for A178878, there is no canonical definition to state claims against.
-/

/-! ## A178878.P5948366244095463211

`eq[n, gcd(n, A138331(n+2))]`
-/

namespace A178878.P5948366244095463211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A138331 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178878.P5948366244095463211

/-! ## A178878.P17749434298746816502

`filter[A178858(n+1), A168182(#)]`
-/

namespace A178878.P17749434298746816502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A178878.P17749434298746816502

/-! ## A178878.P8141298620048104098

`filter[A178861(n+1), A168182(#)]`
-/

namespace A178878.P8141298620048104098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A178878.P8141298620048104098

/-! ## A178878.P5721661855446545287

`filter[A178858(n+1), A353627(#)]`
-/

namespace A178878.P5721661855446545287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A178878.P5721661855446545287

/-! ## A178878.P10282231621817500704

`filter[A178858(n+1), A353628(#)]`
-/

namespace A178878.P10282231621817500704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A178878.P10282231621817500704

/-!
# A178879: a(n) = number of 8-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..71].

The programs for A178879, there is no canonical definition to state claims against.
-/

/-! ## A178879.P736939887378958656

`xor(A161822(A126528(n)), A255633(n))`
-/

namespace A178879.P736939887378958656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A161822 (A126528 n).toNat) (A255633 n)

end

end A178879.P736939887378958656

/-!
# A178881: Sum of all pairs of greatest common divisors for (i,j) where 1 <= i < j <= n.

The programs for A178881, the canonical program `A178881.P10769260265071727443` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178881 has offset 1).

The definition of A178881 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018806, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178881.P10769260265071727443

`(A018806(n+1)-(n+1)*(n+2)/2)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A178881

/-- `(A018806(n+1)-(n+1)*(n+2)/2)/2` -/
def P10769260265071727443.Spec : Prop :=
  ∀ n, P10769260265071727443.a n = (A178881 (n + 1) : ℚ)

end A178881

/-! ## A178881.P4002578001234862492

`A018806(n+1)-A272718(n+1)`
-/

namespace A178881.P4002578001234862492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018806 (n + 1) - A272718 (n + 1)

end

end A178881.P4002578001234862492

namespace A178881

/-- `A018806(n+1)-A272718(n+1)` -/
def P4002578001234862492.Spec : Prop :=
  ∀ n, P4002578001234862492.a n = A178881 (n + 1)

end A178881

/-! ## A178881.P4875171311697033481

`∑[A006579(n+1)]`
-/

namespace A178881.P4875171311697033481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178881.P4875171311697033481

namespace A178881

/-- `∑[A006579(n+1)]` -/
def P4875171311697033481.Spec : Prop :=
  ∀ n, P4875171311697033481.a n = A178881 (n + 1)

end A178881

/-! ## A178881.P1977414576482147785

`∑[A268631(n+1)+n]`
-/

namespace A178881.P1977414576482147785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178881.P1977414576482147785

namespace A178881

/-- `∑[A268631(n+1)+n]` -/
def P1977414576482147785.Spec : Prop :=
  ∀ n, P1977414576482147785.a n = A178881 (n + 1)

end A178881

/-! ## A178881.P12870269932517929271

`∑[A018804(n+1)-(n+1)]`
-/

namespace A178881.P12870269932517929271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178881.P12870269932517929271

namespace A178881

/-- `∑[A018804(n+1)-(n+1)]` -/
def P12870269932517929271.Spec : Prop :=
  ∀ n, P12870269932517929271.a n = A178881 (n + 1)

end A178881

/-! ## A178881.P17009495163208106893

`abs(floor((floor((A134506(n+1)+n)/2)+n)/2)-n)`
-/

namespace A178881.P17009495163208106893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(⌊(A134506 (n + 1) + (n : ℤ) : ℚ) / 2⌋ + (n : ℤ) : ℚ) / 2⌋ - (n : ℤ)|

end

end A178881.P17009495163208106893

namespace A178881

/-- `abs(floor((floor((A134506(n+1)+n)/2)+n)/2)-n)` -/
def P17009495163208106893.Spec : Prop :=
  ∀ n, P17009495163208106893.a n = A178881 (n + 1)

end A178881

/-! ## A178881.P13210860409541473706

`A272718(n+1)-A000217(n+1)`
-/

namespace A178881.P13210860409541473706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272718 (n + 1) - A000217 (n + 1)

end

end A178881.P13210860409541473706

namespace A178881

/-- `A272718(n+1)-A000217(n+1)` -/
def P13210860409541473706.Spec : Prop :=
  ∀ n, P13210860409541473706.a n = A178881 (n + 1)

end A178881

/-! ## A178881.P7003379566375910086

`∑[A344371(4*(n+1))/4-(n+1)]`
-/

namespace A178881.P7003379566375910086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344371 (4 * (n + 1)) : ℚ) / 4 - (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178881.P7003379566375910086

namespace A178881

/-- `∑[A344371(4*(n+1))/4-(n+1)]` -/
def P7003379566375910086.Spec : Prop :=
  ∀ n, P7003379566375910086.a n = (A178881 (n + 1) : ℚ)

end A178881

/-! ## A178881.P5883581730052582041

`A064276(n)-A382069(n+1)`
-/

namespace A178881.P5883581730052582041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064276 n - A382069 (n + 1)

end

end A178881.P5883581730052582041

namespace A178881

/-- `A064276(n)-A382069(n+1)` -/
def P5883581730052582041.Spec : Prop :=
  ∀ n, P5883581730052582041.a n = A178881 (n + 1)

end A178881

/-!
# A178882: Irregular triangle T(n,k) = n!* A036040(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A178882, there is no canonical definition to state claims against.
-/

/-! ## A178882.P121343555896985085

`A049009(n)*A179972(n)`
-/

namespace A178882.P121343555896985085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049009 n * A179972 n

end

end A178882.P121343555896985085

/-! ## A178882.P6302341646231052690

`A179236(n)/A048996(n)`
-/

namespace A178882.P6302341646231052690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A048996 n : ℚ)

end

end A178882.P6302341646231052690

/-! ## A178882.P14742945855588564080

`A178801(n)*A181317(A094542(n+4))`
-/

namespace A178882.P14742945855588564080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178801 n * A181317 (A094542 (n + 4)).toNat

end

end A178882.P14742945855588564080

/-!
# A178883: Irregular triangle T(n,k) = A096162(n,k) * A048996(n,k) * A178886(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A178883, there is no canonical definition to state claims against.
-/

/-! ## A178883.P6877420949821473253

`A178803(n)*A178886(n)`
-/

namespace A178883.P6877420949821473253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178803 n * A178886 n

end

end A178883.P6877420949821473253

/-! ## A178883.P8915805195155281970

`A178802(n)/A098546(n)`
-/

namespace A178883.P8915805195155281970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A098546 n : ℚ)

end

end A178883.P8915805195155281970

/-! ## A178883.P1607983397364450539

`A179236(n)/A122454(n)`
-/

namespace A178883.P1607983397364450539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A122454 n : ℚ)

end

end A178883.P1607983397364450539

/-!
# A178884: a(n) = number of 9-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..80].

The programs for A178884, there is no canonical definition to state claims against.
-/

/-! ## A178884.P13116559157653296905

`A002752(A161706(ceil(ϕ*n))²)`
-/

namespace A178884.P13116559157653296905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002752 (A161706 ⌈Real.goldenRatio * (n : ℝ)⌉.toNat ^ 2).toNat

end

end A178884.P13116559157653296905

/-!
# A178885: Partial sums of Berstel sequence (A007420).

The programs for A178885, the canonical program `A178885.P14563616485542962033` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178885 has offset 0).

The definition of A178885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178885.P18285081854447487868

`∑[ogf(x^2/(1-2x+4x^2-4x^3))]`
-/

namespace A178885.P18285081854447487868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, 4, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178885.P18285081854447487868

namespace A178885

/-- `∑[ogf(x^2/(1-2x+4x^2-4x^3))]` -/
def P18285081854447487868.Spec : Prop :=
  ∀ n, P18285081854447487868.a n = A178885 n

end A178885

/-! ## A178885.P14563616485542962033

`∑[A007420(n)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178885

/-- `∑[A007420(n)]` -/
def P14563616485542962033.Spec : Prop :=
  ∀ n, P14563616485542962033.a n = A178885 n

theorem P14563616485542962033.correct : P14563616485542962033.Spec := by
  intro n
  simp only [A178885]

end A178885

/-! ## A178885.P13689426722430681950

`A007420(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A178885.P13689426722430681950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007420 n + a (A023443 n).toNat

end

end A178885.P13689426722430681950

namespace A178885

/-- `A007420(n)+a(A023443(n))` -/
def P13689426722430681950.Spec : Prop :=
  ∀ n, P13689426722430681950.a n = A178885 n

end A178885

/-! ## A178885.P10032056060707919517

`A007420(A000038(n)+n)+a(n-1)` with `a(0)=0`
-/

namespace A178885.P10032056060707919517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007420 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A178885.P10032056060707919517

namespace A178885

/-- `A007420(A000038(n)+n)+a(n-1)` -/
def P10032056060707919517.Spec : Prop :=
  ∀ n, P10032056060707919517.a n = A178885 n

end A178885

/-! ## A178885.P9995267494578306861

`A007420(n)+(1-A000007(n))*a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178885.P9995267494578306861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A007420 n + (1 - A000007 n) * a (n - 1)

end

end A178885.P9995267494578306861

namespace A178885

/-- `A007420(n)+(1-A000007(n))*a(n-1)` -/
def P9995267494578306861.Spec : Prop :=
  ∀ n, P9995267494578306861.a n = A178885 n

end A178885

/-! ## A178885.P5892504683867614984

`A007420(n+2)-(A035302(n)+1)`
-/

namespace A178885.P5892504683867614984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007420 (n + 2) - (A035302 n + 1)

end

end A178885.P5892504683867614984

namespace A178885

/-- `A007420(n+2)-(A035302(n)+1)` -/
def P5892504683867614984.Spec : Prop :=
  ∀ n, P5892504683867614984.a n = A178885 n

end A178885

/-!
# A178886: Irregular triangle T(n,k) = A178802(n,k) / A178888(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A178886, there is no canonical definition to state claims against.
-/

/-! ## A178886.P7460796547005085238

`A048996(n)*A179972(n)`
-/

namespace A178886.P7460796547005085238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048996 n * A179972 n

end

end A178886.P7460796547005085238

/-! ## A178886.P6831877667822617541

`A179236(n)/A049009(n)`
-/

namespace A178886.P6831877667822617541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179236 n : ℚ) / (A049009 n : ℚ)

end

end A178886.P6831877667822617541

/-! ## A178886.P7800439713043686002

`A130561(n)/A098546(n)`
-/

namespace A178886.P7800439713043686002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 n : ℚ) / (A098546 n : ℚ)

end

end A178886.P7800439713043686002

/-! ## A178886.P565592948713036307

`A178802(n)/A178888(n)`
-/

namespace A178886.P565592948713036307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A178888 n : ℚ)

end

end A178886.P565592948713036307

/-! ## A178886.P2790437912074844838

`A178883(n)/A178803(n)`
-/

namespace A178886.P2790437912074844838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178883 n : ℚ) / (A178803 n : ℚ)

end

end A178886.P2790437912074844838

/-!
# A178887: Total of n-colorings of parts of all integer partitions of n.

The programs for A178887, there is no canonical definition to state claims against.
-/

/-! ## A178887.P1782289550238012593

`A028310(n)*A181513(A028310(n))`
-/

namespace A178887.P1782289550238012593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A181513 (A028310 n).toNat

end

end A178887.P1782289550238012593

/-! ## A178887.P10251731892422565726

`A008612(A081671(n)-A008612(n))`
-/

namespace A178887.P10251731892422565726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A081671 n - A008612 n).toNat

end

end A178887.P10251731892422565726

/-!
# A178888: Irregular triangle T(n,k) = A035206(n,k)*A096162(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A178888, there is no canonical definition to state claims against.
-/

/-! ## A178888.P16436892757696152065

`A035206(n)*A096162(n)`
-/

namespace A178888.P16436892757696152065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A096162 n

end

end A178888.P16436892757696152065

/-! ## A178888.P4976541974462392413

`A098546(n)*A178803(n)`
-/

namespace A178888.P4976541974462392413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098546 n * A178803 n

end

end A178888.P4976541974462392413

/-! ## A178888.P11138677385433764406

`A178802(n)/A178886(n)`
-/

namespace A178888.P11138677385433764406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A178886 n : ℚ)

end

end A178888.P11138677385433764406

/-! ## A178888.P6090813955461797836

`A036043(n)!*A098546(n)`
-/

namespace A178888.P6090813955461797836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036043 n).toNat : ℤ) * A098546 n

end

end A178888.P6090813955461797836

/-! ## A178888.P14586381057126056978

`A035206(n)*A112624(A185974(n))`
-/

namespace A178888.P14586381057126056978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 n * A112624 (A185974 n).toNat

end

end A178888.P14586381057126056978

/-! ## A178888.P4815987968158574362

`A178801(n)/A179972(n)`
-/

namespace A178888.P4815987968158574362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A179972 n : ℚ)

end

end A178888.P4815987968158574362

/-! ## A178888.P16231428446981927049

`A048996(n)*A178801(n)/A178886(n)`
-/

namespace A178888.P16231428446981927049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048996 n * A178801 n : ℚ) / (A178886 n : ℚ)

end

end A178888.P16231428446981927049

/-!
# A178889: Numbers n such that R(n) (n-reversed) appears to the left of n in the string 12345678910111213....

The programs for A178889, there is no canonical definition to state claims against.
-/

/-! ## A178889.P8113614752785183224

`lt[A108782(n+1)², A257297(n)]`
-/

namespace A178889.P8113614752785183224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178889.P8113614752785183224

/-! ## A178889.P15567580404707553666

`A014368(n+1)-A008683(A262616(n))`
-/

namespace A178889.P15567580404707553666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014368 (n + 1) - A008683 (A262616 n).toNat

end

end A178889.P15567580404707553666

/-! ## A178889.P14452153532571794618

`eq[A073730(n+1), A388059(n+1)]`
-/

namespace A178889.P14452153532571794618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178889.P14452153532571794618

/-! ## A178889.P12925035740444339753

`eq[A068637(n+1), A331162(n)]`
-/

namespace A178889.P12925035740444339753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178889.P12925035740444339753

/-! ## A178889.P18017925834024015522

`eq[A073730(n+1), A331162(n)]`
-/

namespace A178889.P18017925834024015522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178889.P18017925834024015522

/-!
# A178890: a(n) = n OR 3n, where OR is bitwise OR.

The programs for A178890, the canonical program `A178890.P9193226010467548120` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178890 has offset 0).

The definition of A178890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178890.P9193226010467548120

`or(n, 3*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178890

/-- `or(n, 3*n)` -/
def P9193226010467548120.Spec : Prop :=
  ∀ n, (P9193226010467548120.a n : ℤ) = A178890 n

theorem P9193226010467548120.correct : P9193226010467548120.Spec := by
  intro n
  simp only [A178890]

end A178890

/-! ## A178890.P7428798703160783681

`abs(or(n, n/tan(acot(3))))`
-/

namespace A178890.P7428798703160783681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))))|

end

end A178890.P7428798703160783681

namespace A178890

/-- `abs(or(n, n/tan(acot(3))))` -/
def P7428798703160783681.Spec : Prop :=
  ∀ n, P7428798703160783681.a n = A178890 n

end A178890

/-! ## A178890.P18324147543243293671

`abs(or(n, n/cot(atan(3))))`
-/

namespace A178890.P18324147543243293671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) / Real.cot (Real.arctan (3 : ℝ))))|

end

end A178890.P18324147543243293671

namespace A178890

/-- `abs(or(n, n/cot(atan(3))))` -/
def P18324147543243293671.Spec : Prop :=
  ∀ n, P18324147543243293671.a n = A178890 n

end A178890

/-! ## A178890.P13615569173890589105

`4*n-and(n, 3*n)`
-/

namespace A178890.P13615569173890589105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.land n (3 * n) : ℤ)

end

end A178890.P13615569173890589105

namespace A178890

/-- `4*n-and(n, 3*n)` -/
def P13615569173890589105.Spec : Prop :=
  ∀ n, P13615569173890589105.a n = A178890 n

end A178890

/-! ## A178890.P16454174774870755987

`and(3*n, -(n+1))+n`
-/

namespace A178890.P16454174774870755987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A178890.P16454174774870755987

namespace A178890

/-- `and(3*n, -(n+1))+n` -/
def P16454174774870755987.Spec : Prop :=
  ∀ n, P16454174774870755987.a n = A178890 n

end A178890

/-! ## A178890.P8780411053939600930

`abs(or(n, Δ[n²]-1+n))`
-/

namespace A178890.P8780411053939600930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 + (n : ℤ))|

end

end A178890.P8780411053939600930

namespace A178890

/-- `abs(or(n, Δ[n²]-1+n))` -/
def P8780411053939600930.Spec : Prop :=
  ∀ n, P8780411053939600930.a n = A178890 n

end A178890

/-! ## A178890.P8813776031159140451

`xor(n, 3*n)/2+2*n`
-/

namespace A178890.P8813776031159140451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (3 * n) : ℚ) / 2 + (2 * n : ℚ)

end

end A178890.P8813776031159140451

namespace A178890

/-- `xor(n, 3*n)/2+2*n` -/
def P8813776031159140451.Spec : Prop :=
  ∀ n, P8813776031159140451.a n = (A178890 n : ℚ)

end A178890

/-! ## A178890.P3309145575587083076

`A184617(n)+2*n`
-/

namespace A178890.P3309145575587083076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n + (2 * n : ℤ)

end

end A178890.P3309145575587083076

namespace A178890

/-- `A184617(n)+2*n` -/
def P3309145575587083076.Spec : Prop :=
  ∀ n, P3309145575587083076.a n = A178890 n

end A178890

/-! ## A178890.P11569680648864046002

`4*n-A213526(n)`
-/

namespace A178890.P11569680648864046002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A213526 n

end

end A178890.P11569680648864046002

namespace A178890

/-- `4*n-A213526(n)` -/
def P11569680648864046002.Spec : Prop :=
  ∀ n, P11569680648864046002.a n = A178890 n

end A178890

/-! ## A178890.P15528385643604524598

`A213526(n)+A178729(n)`
-/

namespace A178890.P15528385643604524598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213526 n + A178729 n

end

end A178890.P15528385643604524598

namespace A178890

/-- `A213526(n)+A178729(n)` -/
def P15528385643604524598.Spec : Prop :=
  ∀ n, P15528385643604524598.a n = A178890 n

end A178890

/-! ## A178890.P4887469063517127261

`2*A184615(n)+n`
-/

namespace A178890.P4887469063517127261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184615 n + (n : ℤ)

end

end A178890.P4887469063517127261

namespace A178890

/-- `2*A184615(n)+n` -/
def P4887469063517127261.Spec : Prop :=
  ∀ n, P4887469063517127261.a n = A178890 n

end A178890

/-! ## A178890.P7847162638975280514

`A178729(A184615(n))+n`
-/

namespace A178890.P7847162638975280514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 (A184615 n).toNat + (n : ℤ)

end

end A178890.P7847162638975280514

namespace A178890

/-- `A178729(A184615(n))+n` -/
def P7847162638975280514.Spec : Prop :=
  ∀ n, P7847162638975280514.a n = A178890 n

end A178890

/-! ## A178890.P11630407488422901205

`xor(n, A184615(2*n))`
-/

namespace A178890.P11630407488422901205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A184615 (2 * n))

end

end A178890.P11630407488422901205

namespace A178890

/-- `xor(n, A184615(2*n))` -/
def P11630407488422901205.Spec : Prop :=
  ∀ n, P11630407488422901205.a n = A178890 n

end A178890

/-! ## A178890.P6247664479923701782

`A178746(n)+A007494(n)`
-/

namespace A178890.P6247664479923701782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178746 n + A007494 n

end

end A178890.P6247664479923701782

namespace A178890

/-- `A178746(n)+A007494(n)` -/
def P6247664479923701782.Spec : Prop :=
  ∀ n, P6247664479923701782.a n = A178890 n

end A178890

/-! ## A178890.P16293523200420844632

`A080098(A062725(n))`
-/

namespace A178890.P16293523200420844632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A062725 n).toNat

end

end A178890.P16293523200420844632

namespace A178890

/-- `A080098(A062725(n))` -/
def P16293523200420844632.Spec : Prop :=
  ∀ n, P16293523200420844632.a n = A178890 n

end A178890

/-!
# A178891: a(n) = n OR 4n, where OR is bitwise OR.

The programs for A178891, the canonical program `A178891.P11735850410290711759` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178891 has offset 0).

The definition of A178891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178891.P11735850410290711759

`or(n, 4*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178891

/-- `or(n, 4*n)` -/
def P11735850410290711759.Spec : Prop :=
  ∀ n, (P11735850410290711759.a n : ℤ) = A178891 n

theorem P11735850410290711759.correct : P11735850410290711759.Spec := by
  intro n
  simp only [A178891]

end A178891

/-! ## A178891.P4524061411082881226

`and(4*n, -n)+n`
-/

namespace A178891.P4524061411082881226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (4 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A178891.P4524061411082881226

namespace A178891

/-- `and(4*n, -n)+n` -/
def P4524061411082881226.Spec : Prop :=
  ∀ n, P4524061411082881226.a n = A178891 n

end A178891

/-! ## A178891.P5181784560578119043

`xor(n, and(4*n, -n))`
-/

namespace A178891.P5181784560578119043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (4 * n : ℤ) (-(n : ℤ)))

end

end A178891.P5181784560578119043

namespace A178891

/-- `xor(n, and(4*n, -n))` -/
def P5181784560578119043.Spec : Prop :=
  ∀ n, P5181784560578119043.a n = A178891 n

end A178891

/-! ## A178891.P4263816369675340758

`5*n-and(n, 4*n)`
-/

namespace A178891.P4263816369675340758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (Nat.land n (4 * n) : ℤ)

end

end A178891.P4263816369675340758

namespace A178891

/-- `5*n-and(n, 4*n)` -/
def P4263816369675340758.Spec : Prop :=
  ∀ n, P4263816369675340758.a n = A178891 n

end A178891

/-! ## A178891.P13879751856753695131

`abs(or(n, record[xor(3, n)-3]))`
-/

namespace A178891.P13879751856753695131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A178891.P13879751856753695131

namespace A178891

/-- `abs(or(n, record[xor(3, n)-3]))` -/
def P13879751856753695131.Spec : Prop :=
  ∀ n, P13879751856753695131.a n = A178891 n

end A178891

/-! ## A178891.P16232343918016148738

`abs(or(n, record[lcm(2, n+2)-2]))`
-/

namespace A178891.P16232343918016148738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A178891.P16232343918016148738

namespace A178891

/-- `abs(or(n, record[lcm(2, n+2)-2]))` -/
def P16232343918016148738.Spec : Prop :=
  ∀ n, P16232343918016148738.a n = A178891 n

end A178891

/-! ## A178891.P2552169269874714173

`xor(4*n, and(n, 4*n))+n`
-/

namespace A178891.P2552169269874714173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (4 * n) (Nat.land n (4 * n)) + n

end

end A178891.P2552169269874714173

namespace A178891

/-- `xor(4*n, and(n, 4*n))+n` -/
def P2552169269874714173.Spec : Prop :=
  ∀ n, (P2552169269874714173.a n : ℤ) = A178891 n

end A178891

/-! ## A178891.P14140984229307039849

`abs(or(n, (n+1)²-(1-n)²))`
-/

namespace A178891.P14140984229307039849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2)|

end

end A178891.P14140984229307039849

namespace A178891

/-- `abs(or(n, (n+1)²-(1-n)²))` -/
def P14140984229307039849.Spec : Prop :=
  ∀ n, P14140984229307039849.a n = A178891 n

end A178891

/-! ## A178891.P15233398755151956205

`or(n-1, eq[1, val(n+2, 2)])+1`
-/

namespace A178891.P15233398755151956205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + 1

end

end A178891.P15233398755151956205

namespace A178891

/-- `or(n-1, eq[1, val(n+2, 2)])+1` -/
def P15233398755151956205.Spec : Prop :=
  ∀ n, P15233398755151956205.a n = A178891 n

end A178891

/-! ## A178891.P6940195310194728438

`or(n-1, A008574(n))+1`
-/

namespace A178891.P6940195310194728438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A008574 n) + 1

end

end A178891.P6940195310194728438

namespace A178891

/-- `or(n-1, A008574(n))+1` -/
def P6940195310194728438.Spec : Prop :=
  ∀ n, P6940195310194728438.a n = A178891 n

end A178891

/-! ## A178891.P17711117877706252100

`A396059(n)+A047218(n+1)`
-/

namespace A178891.P17711117877706252100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396059 n + A047218 (n + 1)

end

end A178891.P17711117877706252100

namespace A178891

/-- `A396059(n)+A047218(n+1)` -/
def P17711117877706252100.Spec : Prop :=
  ∀ n, P17711117877706252100.a n = A178891 n

end A178891

/-! ## A178891.P10924672993515409511

`A080098(A139276(n))`
-/

namespace A178891.P10924672993515409511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A139276 n).toNat

end

end A178891.P10924672993515409511

namespace A178891

/-- `A080098(A139276(n))` -/
def P10924672993515409511.Spec : Prop :=
  ∀ n, P10924672993515409511.a n = A178891 n

end A178891

/-!
# A178892: a(n) = n OR 5n, where OR is bitwise OR.

The programs for A178892, the canonical program `A178892.P14369962569012908185` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178892 has offset 0).

The definition of A178892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178892.P14369962569012908185

`or(n, 5*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178892

/-- `or(n, 5*n)` -/
def P14369962569012908185.Spec : Prop :=
  ∀ n, (P14369962569012908185.a n : ℤ) = A178892 n

theorem P14369962569012908185.correct : P14369962569012908185.Spec := by
  intro n
  simp only [A178892]

end A178892

/-! ## A178892.P1764428603272543800

`6*n-and(n, 5*n)`
-/

namespace A178892.P1764428603272543800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - (Nat.land n (5 * n) : ℤ)

end

end A178892.P1764428603272543800

namespace A178892

/-- `6*n-and(n, 5*n)` -/
def P1764428603272543800.Spec : Prop :=
  ∀ n, P1764428603272543800.a n = A178892 n

end A178892

/-! ## A178892.P13553845148474261633

`abs(or(n, n/(1-4/5)))`
-/

namespace A178892.P13553845148474261633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (1 - (4 : ℚ) / 5)))|

end

end A178892.P13553845148474261633

namespace A178892

/-- `abs(or(n, n/(1-4/5)))` -/
def P13553845148474261633.Spec : Prop :=
  ∀ n, P13553845148474261633.a n = A178892 n

end A178892

/-! ## A178892.P16902759083553493099

`and(5*n, -(n+1))+n`
-/

namespace A178892.P16902759083553493099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A178892.P16902759083553493099

namespace A178892

/-- `and(5*n, -(n+1))+n` -/
def P16902759083553493099.Spec : Prop :=
  ∀ n, P16902759083553493099.a n = A178892 n

end A178892

/-! ## A178892.P4060273653814369906

`or(n-1, A008706(n)-1)+1`
-/

namespace A178892.P4060273653814369906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A008706 n - 1) + 1

end

end A178892.P4060273653814369906

namespace A178892

/-- `or(n-1, A008706(n)-1)+1` -/
def P4060273653814369906.Spec : Prop :=
  ∀ n, P4060273653814369906.a n = A178892 n

end A178892

/-! ## A178892.P5609726939420904861

`abs(and(1-A016873(n), -(n+1))+1)`
-/

namespace A178892.P5609726939420904861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land (1 - A016873 n) (-(n + 1 : ℤ)) + 1|

end

end A178892.P5609726939420904861

namespace A178892

/-- `abs(and(1-A016873(n), -(n+1))+1)` -/
def P5609726939420904861.Spec : Prop :=
  ∀ n, P5609726939420904861.a n = A178892 n

end A178892

/-! ## A178892.P5434703085555318947

`or(n-1, floor(A114698(n+1)/4))+1`
-/

namespace A178892.P5434703085555318947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ⌊(A114698 (n + 1) : ℚ) / 4⌋ + 1

end

end A178892.P5434703085555318947

namespace A178892

/-- `or(n-1, floor(A114698(n+1)/4))+1` -/
def P5434703085555318947.Spec : Prop :=
  ∀ n, P5434703085555318947.a n = A178892 n

end A178892

/-! ## A178892.P12820989426121908567

`round((or(A284914(n+1)-1, A008592(n))-1)/2)`
-/

namespace A178892.P12820989426121908567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor (A284914 (n + 1) - 1) (A008592 n) - 1 : ℚ) / 2)

end

end A178892.P12820989426121908567

namespace A178892

/-- `round((or(A284914(n+1)-1, A008592(n))-1)/2)` -/
def P12820989426121908567.Spec : Prop :=
  ∀ n, P12820989426121908567.a n = A178892 n

end A178892

/-! ## A178892.P13660047534360188492

`A171181(or(A004277(n), A008592(n)))`
-/

namespace A178892.P13660047534360188492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (Int.lor (A004277 n) (A008592 n)).toNat

end

end A178892.P13660047534360188492

namespace A178892

/-- `A171181(or(A004277(n), A008592(n)))` -/
def P13660047534360188492.Spec : Prop :=
  ∀ n, P13660047534360188492.a n = A178892 n

end A178892

/-!
# A178893: a(n) = n OR 6n, where OR is bitwise OR.

The programs for A178893, the canonical program `A178893.P6461645164611927936` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178893 has offset 0).

The definition of A178893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178893.P6461645164611927936

`or(n, 6*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178893

/-- `or(n, 6*n)` -/
def P6461645164611927936.Spec : Prop :=
  ∀ n, (P6461645164611927936.a n : ℤ) = A178893 n

theorem P6461645164611927936.correct : P6461645164611927936.Spec := by
  intro n
  simp only [A178893]

end A178893

/-! ## A178893.P10058040562418984057

`and(6*n, -n)+n`
-/

namespace A178893.P10058040562418984057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A178893.P10058040562418984057

namespace A178893

/-- `and(6*n, -n)+n` -/
def P10058040562418984057.Spec : Prop :=
  ∀ n, P10058040562418984057.a n = A178893 n

end A178893

/-! ## A178893.P16955405258909554797

`xor(n, and(6*n, -n))`
-/

namespace A178893.P16955405258909554797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (6 * n : ℤ) (-(n : ℤ)))

end

end A178893.P16955405258909554797

namespace A178893

/-- `xor(n, and(6*n, -n))` -/
def P16955405258909554797.Spec : Prop :=
  ∀ n, P16955405258909554797.a n = A178893 n

end A178893

/-! ## A178893.P12611236816553740179

`abs(or(n, n/cot(atan(6))))`
-/

namespace A178893.P12611236816553740179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) / Real.cot (Real.arctan (6 : ℝ))))|

end

end A178893.P12611236816553740179

namespace A178893

/-- `abs(or(n, n/cot(atan(6))))` -/
def P12611236816553740179.Spec : Prop :=
  ∀ n, P12611236816553740179.a n = A178893 n

end A178893

/-! ## A178893.P84168177713919446

`7*n-and(n, 6*n)`
-/

namespace A178893.P84168177713919446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - (Nat.land n (6 * n) : ℤ)

end

end A178893.P84168177713919446

namespace A178893

/-- `7*n-and(n, 6*n)` -/
def P84168177713919446.Spec : Prop :=
  ∀ n, P84168177713919446.a n = A178893 n

end A178893

/-! ## A178893.P16142403802234387781

`or(n-1, n/cot(atan(6)))+1`
-/

namespace A178893.P16142403802234387781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (SequenceMachineLib.roundAway ((n : ℝ) / Real.cot (Real.arctan (6 : ℝ)))) + 1

end

end A178893.P16142403802234387781

namespace A178893

/-- `or(n-1, n/cot(atan(6)))+1` -/
def P16142403802234387781.Spec : Prop :=
  ∀ n, P16142403802234387781.a n = A178893 n

end A178893

/-! ## A178893.P13551538264783467789

`or(n-1, A008458(n))+1`
-/

namespace A178893.P13551538264783467789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A008458 n) + 1

end

end A178893.P13551538264783467789

namespace A178893

/-- `or(n-1, A008458(n))+1` -/
def P13551538264783467789.Spec : Prop :=
  ∀ n, P13551538264783467789.a n = A178893 n

end A178893

/-! ## A178893.P8548111632764908692

`or(n-1, A008588(n))+1`
-/

namespace A178893.P8548111632764908692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A008588 n) + 1

end

end A178893.P8548111632764908692

namespace A178893

/-- `or(n-1, A008588(n))+1` -/
def P8548111632764908692.Spec : Prop :=
  ∀ n, P8548111632764908692.a n = A178893 n

end A178893

/-! ## A178893.P8115192315707005699

`or(A016921(n)-1, n-1)+1`
-/

namespace A178893.P8115192315707005699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016921 n - 1) ((n : ℤ) - 1) + 1

end

end A178893.P8115192315707005699

namespace A178893

/-- `or(A016921(n)-1, n-1)+1` -/
def P8115192315707005699.Spec : Prop :=
  ∀ n, P8115192315707005699.a n = A178893 n

end A178893

/-! ## A178893.P9677856547832719644

`or(n, n/cot(atan(6)))%A000124(n+5)`
-/

namespace A178893.P9677856547832719644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) / Real.cot (Real.arctan (6 : ℝ))))) (A000124 (n + 5))

end

end A178893.P9677856547832719644

namespace A178893

/-- `or(n, n/cot(atan(6)))%A000124(n+5)` -/
def P9677856547832719644.Spec : Prop :=
  ∀ n, P9677856547832719644.a n = A178893 n

end A178893

/-!
# A178894: a(n) = n OR 7n, where OR is bitwise OR.

The programs for A178894, the canonical program `A178894.P14632602160568868685` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178894 has offset 0).

The definition of A178894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178894.P14632602160568868685

`or(n, 7*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178894

/-- `or(n, 7*n)` -/
def P14632602160568868685.Spec : Prop :=
  ∀ n, (P14632602160568868685.a n : ℤ) = A178894 n

theorem P14632602160568868685.correct : P14632602160568868685.Spec := by
  intro n
  simp only [A178894]

end A178894

/-! ## A178894.P12820762700753986717

`8*n-and(n, 7*n)`
-/

namespace A178894.P12820762700753986717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - (Nat.land n (7 * n) : ℤ)

end

end A178894.P12820762700753986717

namespace A178894

/-- `8*n-and(n, 7*n)` -/
def P12820762700753986717.Spec : Prop :=
  ∀ n, P12820762700753986717.a n = A178894 n

end A178894

/-! ## A178894.P3685320369447644090

`and(7*n, -(n+1))+n`
-/

namespace A178894.P3685320369447644090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (7 * n : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A178894.P3685320369447644090

namespace A178894

/-- `and(7*n, -(n+1))+n` -/
def P3685320369447644090.Spec : Prop :=
  ∀ n, P3685320369447644090.a n = A178894 n

end A178894

/-! ## A178894.P8240076767701783759

`or(n+n, A008596(n))/2`
-/

namespace A178894.P8240076767701783759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (n + n : ℤ) (A008596 n) : ℚ) / 2

end

end A178894.P8240076767701783759

namespace A178894

/-- `or(n+n, A008596(n))/2` -/
def P8240076767701783759.Spec : Prop :=
  ∀ n, P8240076767701783759.a n = (A178894 n : ℚ)

end A178894

/-! ## A178894.P18085393788841917087

`(A178733(n)+A008590(n))/2`
-/

namespace A178894.P18085393788841917087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178733 n + A008590 n : ℚ) / 2

end

end A178894.P18085393788841917087

namespace A178894

/-- `(A178733(n)+A008590(n))/2` -/
def P18085393788841917087.Spec : Prop :=
  ∀ n, P18085393788841917087.a n = (A178894 n : ℚ)

end A178894

/-! ## A178894.P11987141510579030534

`A254667(or(n, A008589(n)))`
-/

namespace A178894.P11987141510579030534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (Int.lor (n : ℤ) (A008589 n)).toNat

end

end A178894.P11987141510579030534

namespace A178894

/-- `A254667(or(n, A008589(n)))` -/
def P11987141510579030534.Spec : Prop :=
  ∀ n, P11987141510579030534.a n = A178894 n

end A178894

/-! ## A178894.P917207731667994630

`A004526(A178733(n)+A008590(n))`
-/

namespace A178894.P917207731667994630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A178733 n + A008590 n).toNat

end

end A178894.P917207731667994630

namespace A178894

/-- `A004526(A178733(n)+A008590(n))` -/
def P917207731667994630.Spec : Prop :=
  ∀ n, P917207731667994630.a n = A178894 n

end A178894

/-!
# A178895: a(n) = n OR 8n, where OR is bitwise OR.

The programs for A178895, the canonical program `A178895.P3803751622573490786` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178895 has offset 0).

The definition of A178895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178895.P3803751622573490786

`or(n, 8*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178895

/-- `or(n, 8*n)` -/
def P3803751622573490786.Spec : Prop :=
  ∀ n, (P3803751622573490786.a n : ℤ) = A178895 n

theorem P3803751622573490786.correct : P3803751622573490786.Spec := by
  intro n
  simp only [A178895]

end A178895

/-! ## A178895.P1332235403717159414

`and(8*n, -n)+n`
-/

namespace A178895.P1332235403717159414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (8 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A178895.P1332235403717159414

namespace A178895

/-- `and(8*n, -n)+n` -/
def P1332235403717159414.Spec : Prop :=
  ∀ n, P1332235403717159414.a n = A178895 n

end A178895

/-! ## A178895.P15150472166782500456

`xor(n, and(8*n, -n))`
-/

namespace A178895.P15150472166782500456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (8 * n : ℤ) (-(n : ℤ)))

end

end A178895.P15150472166782500456

namespace A178895

/-- `xor(n, and(8*n, -n))` -/
def P15150472166782500456.Spec : Prop :=
  ∀ n, P15150472166782500456.a n = A178895 n

end A178895

/-! ## A178895.P17912457881905776266

`9*n-and(n, 8*n)`
-/

namespace A178895.P17912457881905776266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - (Nat.land n (8 * n) : ℤ)

end

end A178895.P17912457881905776266

namespace A178895

/-- `9*n-and(n, 8*n)` -/
def P17912457881905776266.Spec : Prop :=
  ∀ n, P17912457881905776266.a n = A178895 n

end A178895

/-! ## A178895.P4855354103849239736

`abs(or(n, Δ[(n-1+n)²]))`
-/

namespace A178895.P4855354103849239736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (f1 (n + 1) - f1 n)|

end

end A178895.P4855354103849239736

namespace A178895

/-- `abs(or(n, Δ[(n-1+n)²]))` -/
def P4855354103849239736.Spec : Prop :=
  ∀ n, P4855354103849239736.a n = A178895 n

end A178895

/-! ## A178895.P7828187868946885745

`or(n-1, A022144(n))+1`
-/

namespace A178895.P7828187868946885745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A022144 n) + 1

end

end A178895.P7828187868946885745

namespace A178895

/-- `or(n-1, A022144(n))+1` -/
def P7828187868946885745.Spec : Prop :=
  ∀ n, P7828187868946885745.a n = A178895 n

end A178895

/-! ## A178895.P2146426487500723105

`(A178734(n)+A008591(n))/2`
-/

namespace A178895.P2146426487500723105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178734 n + A008591 n : ℚ) / 2

end

end A178895.P2146426487500723105

namespace A178895

/-- `(A178734(n)+A008591(n))/2` -/
def P2146426487500723105.Spec : Prop :=
  ∀ n, P2146426487500723105.a n = (A178895 n : ℚ)

end A178895

/-! ## A178895.P1527626516176375586

`A080098(A139276(2*n)-n)`
-/

namespace A178895.P1527626516176375586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A139276 (2 * n) - (n : ℤ)).toNat

end

end A178895.P1527626516176375586

namespace A178895

/-- `A080098(A139276(2*n)-n)` -/
def P1527626516176375586.Spec : Prop :=
  ∀ n, P1527626516176375586.a n = A178895 n

end A178895

/-!
# A178896: a(n) = n OR 9n, where OR is bitwise OR.

The programs for A178896, the canonical program `A178896.P3068010840290324792` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178896 has offset 0).

The definition of A178896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178896.P3068010840290324792

`or(n, 9*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178896

/-- `or(n, 9*n)` -/
def P3068010840290324792.Spec : Prop :=
  ∀ n, (P3068010840290324792.a n : ℤ) = A178896 n

theorem P3068010840290324792.correct : P3068010840290324792.Spec := by
  intro n
  simp only [A178896]

end A178896

/-! ## A178896.P6995109657906897552

`10*n-and(n, 9*n)`
-/

namespace A178896.P6995109657906897552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - (Nat.land n (9 * n) : ℤ)

end

end A178896.P6995109657906897552

namespace A178896

/-- `10*n-and(n, 9*n)` -/
def P6995109657906897552.Spec : Prop :=
  ∀ n, P6995109657906897552.a n = A178896 n

end A178896

/-! ## A178896.P17436632234896648154

`abs(or(n, record[n-dr(n)²]))`
-/

namespace A178896.P17436632234896648154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))|

end

end A178896.P17436632234896648154

namespace A178896

/-- `abs(or(n, record[n-dr(n)²]))` -/
def P17436632234896648154.Spec : Prop :=
  ∀ n, P17436632234896648154.a n = A178896 n

end A178896

/-! ## A178896.P4886633837900947707

`and(9*n, -(n+1))+n`
-/

namespace A178896.P4886633837900947707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (9 * n : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A178896.P4886633837900947707

namespace A178896

/-- `and(9*n, -(n+1))+n` -/
def P4886633837900947707.Spec : Prop :=
  ∀ n, P4886633837900947707.a n = A178896 n

end A178896

/-! ## A178896.P14963375699478725443

`or(n-1, A178735(n))+1`
-/

namespace A178896.P14963375699478725443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A178735 n) + 1

end

end A178896.P14963375699478725443

namespace A178896

/-- `or(n-1, A178735(n))+1` -/
def P14963375699478725443.Spec : Prop :=
  ∀ n, P14963375699478725443.a n = A178896 n

end A178896

/-! ## A178896.P12959871342550044248

`A004526(A017281(n)+xor(n, 9*n))`
-/

namespace A178896.P12959871342550044248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A017281 n + (Nat.xor n (9 * n) : ℤ)).toNat

end

end A178896.P12959871342550044248

namespace A178896

/-- `A004526(A017281(n)+xor(n, 9*n))` -/
def P12959871342550044248.Spec : Prop :=
  ∀ n, P12959871342550044248.a n = A178896 n

end A178896

/-!
# A178897: a(n) = n OR 10n, where OR is bitwise OR.

The programs for A178897, the canonical program `A178897.P15062702353302809171` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178897 has offset 0).

The definition of A178897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178897.P15062702353302809171

`or(n, 10*n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178897

/-- `or(n, 10*n)` -/
def P15062702353302809171.Spec : Prop :=
  ∀ n, (P15062702353302809171.a n : ℤ) = A178897 n

theorem P15062702353302809171.correct : P15062702353302809171.Spec := by
  intro n
  simp only [A178897]

end A178897

/-! ## A178897.P3101079011980604676

`and(10*n, -n)+n`
-/

namespace A178897.P3101079011980604676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A178897.P3101079011980604676

namespace A178897

/-- `and(10*n, -n)+n` -/
def P3101079011980604676.Spec : Prop :=
  ∀ n, P3101079011980604676.a n = A178897 n

end A178897

/-! ## A178897.P5520883104465722894

`xor(n, and(10*n, -n))`
-/

namespace A178897.P5520883104465722894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (10 * n : ℤ) (-(n : ℤ)))

end

end A178897.P5520883104465722894

namespace A178897

/-- `xor(n, and(10*n, -n))` -/
def P5520883104465722894.Spec : Prop :=
  ∀ n, P5520883104465722894.a n = A178897 n

end A178897

/-! ## A178897.P3996322881977561584

`11*n-and(n, 10*n)`
-/

namespace A178897.P3996322881977561584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - (Nat.land n (10 * n) : ℤ)

end

end A178897.P3996322881977561584

namespace A178897

/-- `11*n-and(n, 10*n)` -/
def P3996322881977561584.Spec : Prop :=
  ∀ n, P3996322881977561584.a n = A178897 n

end A178897

/-! ## A178897.P5173454934197815724

`(11*n-xor(10*n, -n))/2`
-/

namespace A178897.P5173454934197815724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n : ℤ) - Int.xor (10 * n : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A178897.P5173454934197815724

namespace A178897

/-- `(11*n-xor(10*n, -n))/2` -/
def P5173454934197815724.Spec : Prop :=
  ∀ n, P5173454934197815724.a n = (A178897 n : ℚ)

end A178897

/-! ## A178897.P16038845458928172972

`abs(or(n, -xor(n/(1/3)²+n, -n)))`
-/

namespace A178897.P16038845458928172972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2 + (n : ℚ))) (-(n : ℤ)))|

end

end A178897.P16038845458928172972

namespace A178897

/-- `abs(or(n, -xor(n/(1/3)²+n, -n)))` -/
def P16038845458928172972.Spec : Prop :=
  ∀ n, P16038845458928172972.a n = A178897 n

end A178897

/-! ## A178897.P17942132189653526357

`or(n-1, A008592(n))+1`
-/

namespace A178897.P17942132189653526357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A008592 n) + 1

end

end A178897.P17942132189653526357

namespace A178897

/-- `or(n-1, A008592(n))+1` -/
def P17942132189653526357.Spec : Prop :=
  ∀ n, P17942132189653526357.a n = A178897 n

end A178897

/-! ## A178897.P2928254207161153966

`(A178736(n)+A008593(n))/2`
-/

namespace A178897.P2928254207161153966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178736 n + A008593 n : ℚ) / 2

end

end A178897.P2928254207161153966

namespace A178897

/-- `(A178736(n)+A008593(n))/2` -/
def P2928254207161153966.Spec : Prop :=
  ∀ n, P2928254207161153966.a n = (A178897 n : ℚ)

end A178897

/-! ## A178897.P14710098391330097096

`lcm(or(n, A008592(n)), A054977(n))`
-/

namespace A178897.P14710098391330097096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (A008592 n)) (A054977 n)

end

end A178897.P14710098391330097096

namespace A178897

/-- `lcm(or(n, A008592(n)), A054977(n))` -/
def P14710098391330097096.Spec : Prop :=
  ∀ n, (P14710098391330097096.a n : ℤ) = A178897 n

end A178897

/-! ## A178897.P16598462861487221885

`or(n, A008592(n))%A292738(n+1)`
-/

namespace A178897.P16598462861487221885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (n : ℤ) (A008592 n)) (A292738 (n + 1))

end

end A178897.P16598462861487221885

namespace A178897

/-- `or(n, A008592(n))%A292738(n+1)` -/
def P16598462861487221885.Spec : Prop :=
  ∀ n, P16598462861487221885.a n = A178897 n

end A178897

/-! ## A178897.P15143330843462020869

`-A001489(or(n, A008592(n)))`
-/

namespace A178897.P15143330843462020869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001489 (Int.lor (n : ℤ) (A008592 n)).toNat

end

end A178897.P15143330843462020869

namespace A178897

/-- `-A001489(or(n, A008592(n)))` -/
def P15143330843462020869.Spec : Prop :=
  ∀ n, P15143330843462020869.a n = A178897 n

end A178897

/-!
# A178898: a(n) = number of ways in which n^2 can be expressed as the sum of five different squares.

The programs for A178898, there is no canonical definition to state claims against.
-/

/-! ## A178898.P12902117643252961941

`A025444((n+1)²)`
-/

namespace A178898.P12902117643252961941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 ((n + 1) ^ 2)

end

end A178898.P12902117643252961941

/-! ## A178898.P8500788382666088979

`and(-1, A025444(A008611(3*n)²))`
-/

namespace A178898.P8500788382666088979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A025444 (A008611 (3 * n) ^ 2).toNat)

end

end A178898.P8500788382666088979

/-! ## A178898.P8844750625270065163

`A025444(A000290(n+1))%∑[n+1]`
-/

namespace A178898.P8844750625270065163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025444 (A000290 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178898.P8844750625270065163

/-! ## A178898.P6275727905298111819

`A025444(A000290(n+1))*A057427(n)`
-/

namespace A178898.P6275727905298111819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A000290 (n + 1)).toNat * A057427 n

end

end A178898.P6275727905298111819

/-! ## A178898.P10908444744143703768

`lcm(A025444(A000290(n+1)), A106400(n))`
-/

namespace A178898.P10908444744143703768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025444 (A000290 (n + 1)).toNat) (A106400 n)

end

end A178898.P10908444744143703768

/-! ## A178898.P16177960958133844389

`or(A025444(A000290(n+1)), A025444(n))`
-/

namespace A178898.P16177960958133844389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025444 (A000290 (n + 1)).toNat) (A025444 n)

end

end A178898.P16177960958133844389

/-! ## A178898.P4230551079958479137

`A025444(A008611(3*n)²)%A075193(n)`
-/

namespace A178898.P4230551079958479137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025444 (A008611 (3 * n) ^ 2).toNat) (A075193 n)

end

end A178898.P4230551079958479137

/-! ## A178898.P16494561594427575735

`A025444(A000290(n+1))^(n-A023443(n))`
-/

namespace A178898.P16494561594427575735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 (A000290 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - A023443 n : ℤ)

end

end A178898.P16494561594427575735

/-! ## A178898.P855379744655689635

`A025444(A000290(n+1))+A000007(3*n+1)`
-/

namespace A178898.P855379744655689635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A000290 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A178898.P855379744655689635

/-!
# A178899: Numbers which are both primes and problimes (third definition).

The programs for A178899, there is no canonical definition to state claims against.
-/

/-! ## A178899.P2283831599060984113

`p?[A003068(n+1)]`
-/

namespace A178899.P2283831599060984113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178899.P2283831599060984113

/-! ## A178899.P1064777980986329404

`record[A020639(A003068(n+2))]`
-/

namespace A178899.P1064777980986329404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003068 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178899.P1064777980986329404

/-! ## A178899.P10028917172192527828

`filter[A003068(n+1), A010051(#)]`
-/

namespace A178899.P10028917172192527828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178899.P10028917172192527828

/-! ## A178899.P10261722276495059475

`record[A020639(Δ[A178532(n+1)])]`
-/

namespace A178899.P10261722276495059475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178899.P10261722276495059475

/-! ## A178899.P3580814521189319596

`∩[A000040(n+1), A003068(n+1)]`
-/

namespace A178899.P3580814521189319596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P3580814521189319596

/-! ## A178899.P11317283800803875463

`∩[A003068(n+1), A008578(n+1)]`
-/

namespace A178899.P11317283800803875463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P11317283800803875463

/-! ## A178899.P13997792056527315019

`∩[A003068(n+1), A045319(n+1)]`
-/

namespace A178899.P13997792056527315019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P13997792056527315019

/-! ## A178899.P1574475200711390718

`∩[A003068(n+1), A045344(n+1)]`
-/

namespace A178899.P1574475200711390718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P1574475200711390718

/-! ## A178899.P7417154106082588184

`∩[A003068(n+1), A116974(n+1)]`
-/

namespace A178899.P7417154106082588184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P7417154106082588184

/-! ## A178899.P1448245294409701379

`∩[A003068(n+1), A158611(n+1)]`
-/

namespace A178899.P1448245294409701379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P1448245294409701379

/-! ## A178899.P2106178535315142419

`∩[A003068(n+1), A189710(n+1)]`
-/

namespace A178899.P2106178535315142419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178899.P2106178535315142419

/-! ## A178899.P10782036908367368593

`p?[A178907(n+1)-A000040(n+1)]`
-/

namespace A178899.P10782036908367368593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178899.P10782036908367368593

/-! ## A178899.P11805551054651221551

`p?[A178907(n+1)-p?[A000961(n+1)]]`
-/

namespace A178899.P11805551054651221551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178899.P11805551054651221551

/-! ## A178899.P13402976523639735243

`record[A020639(A178907(n+1)-A000040(n+1))]`
-/

namespace A178899.P13402976523639735243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A178907 (n + 1) - A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178899.P13402976523639735243

/-! ## A178899.P17572576018183343463

`p?[A178907(n+1)-p?[A296065(n+1)]]`
-/

namespace A178899.P17572576018183343463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178907 (n + 1) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178899.P17572576018183343463

/-! ## A178899.P12304576166365538624

`filter[A003068(n+1), A080339(#)]`
-/

namespace A178899.P12304576166365538624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A178899.P12304576166365538624

/-! ## A178899.P17788717091448431567

`record[A014963(A178907(n+1)-A000040(n+1))]`
-/

namespace A178899.P17788717091448431567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A178907 (n + 1) - A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178899.P17788717091448431567

