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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A093700: Number of 9's immediately following the decimal point in the expansion of (3+sqrt(8))^n.

The programs for A093700, there is no canonical definition to state claims against.
-/

/-! ## A093700.P15899181975626774163

`∑[A005713(A283002(n+4))]`
-/

namespace A093700.P15899181975626774163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A283002 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093700.P15899181975626774163

/-! ## A093700.P13712915367774485987

`floor((A257639(A085027(n))-1)/4)`
-/

namespace A093700.P13712915367774485987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A257639 (A085027 n).toNat - 1 : ℚ) / 4⌋

end

end A093700.P13712915367774485987

/-! ## A093700.P8884425855245408689

`A000007(A098747(n+1))+floor((n+1)*cos(37))`
-/

namespace A093700.P8884425855245408689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A098747 (n + 1)).toNat + ⌊(n + 1 : ℝ) * Real.cos (37 : ℝ)⌋

end

end A093700.P8884425855245408689

/-! ## A093700.P17218481148186660344

`A002265(A257639(A085027(n))-1)`
-/

namespace A093700.P17218481148186660344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A257639 (A085027 n).toNat - 1).toNat

end

end A093700.P17218481148186660344

/-! ## A093700.P68538557966633763

`A004526(A329987(n+1))%A038837(n+1)`
-/

namespace A093700.P68538557966633763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 (A329987 (n + 1)).toNat) (A038837 (n + 1))

end

end A093700.P68538557966633763

/-! ## A093700.P12529242304639272438

`A123108(A329987(n+1))%A344297(n+1)`
-/

namespace A093700.P12529242304639272438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (A329987 (n + 1)).toNat) (A344297 (n + 1))

end

end A093700.P12529242304639272438

/-! ## A093700.P3640283666024524371

`floor(∑[A020639(n+1)/A167758(n+3)+3]/4)`
-/

namespace A093700.P3640283666024524371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) / (A167758 (n + 3) : ℚ) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 4⌋

end

end A093700.P3640283666024524371

/-!
# A093701: a(n) = smallest m>a(n-1) such that 1+m*n is prime, a(1) = 1.

The programs for A093701, there is no canonical definition to state claims against.
-/

/-! ## A093701.P5059331516163549672

`(A093702(n+1)-1)/(n+1)`
-/

namespace A093701.P5059331516163549672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093702 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A093701.P5059331516163549672

/-! ## A093701.P10296214536000911732

`A000010(A093702(n+1))/(n+1)`
-/

namespace A093701.P10296214536000911732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A093702 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A093701.P10296214536000911732

/-! ## A093701.P2455908568006991888

`floor(A093702(n+1)/A233583(n+2))`
-/

namespace A093701.P2455908568006991888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093702 (n + 1) : ℚ) / (A233583 (n + 2) : ℚ)⌋

end

end A093701.P2455908568006991888

/-! ## A093701.P6082860309534964324

`round(A093702(n+1)/A348776(n+1))`
-/

namespace A093701.P6082860309534964324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093702 (n + 1) : ℚ) / (A348776 (n + 1) : ℚ))

end

end A093701.P6082860309534964324

/-!
# A093702: a(n) = smallest prime p>a(n-1) such that n divides (p-1) and (p-1)/n > (a(n-1)-1)/(n-1), a(1) = 2.

The programs for A093702, there is no canonical definition to state claims against.
-/

/-! ## A093702.P2673356880027329383

`(n+1)*A093701(n+1)+1`
-/

namespace A093702.P2673356880027329383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093701 (n + 1) + 1

end

end A093702.P2673356880027329383

/-! ## A093702.P4604341411977571902

`A007918((n+1)*A093701(n+1))`
-/

namespace A093702.P4604341411977571902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1 : ℤ) * A093701 (n + 1)).toNat

end

end A093702.P4604341411977571902

/-! ## A093702.P15333417073357772042

`A020725((n+1)*A093701(n+1))`
-/

namespace A093702.P15333417073357772042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((n + 1 : ℤ) * A093701 (n + 1)).toNat

end

end A093702.P15333417073357772042

/-! ## A093702.P15704854673845111661

`A034694((n+1)*A093701(n+1))`
-/

namespace A093702.P15704854673845111661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1 : ℤ) * A093701 (n + 1)).toNat

end

end A093702.P15704854673845111661

/-! ## A093702.P11417001539432887403

`A059843((n+1)*A093701(n+1))`
-/

namespace A093702.P11417001539432887403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 ((n + 1 : ℤ) * A093701 (n + 1)).toNat

end

end A093702.P11417001539432887403

/-!
# A093704: Value of initial digit of n in Roman numeral representation.

The programs for A093704, there is no canonical definition to state claims against.
-/

/-! ## A093704.P2006895713112270082

`A094636(n+1)%A000027(A061493(n+2))`
-/

namespace A093704.P2006895713112270082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094636 (n + 1)) (A000027 (A061493 (n + 2)).toNat)

end

end A093704.P2006895713112270082

/-!
# A093705: Numbers that are divisible by the total number of 1's in the binary expansions of all their divisors.

The programs for A093705, the canonical program `A093705.P7271058534406243467` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093705 has offset 1).

The definition of A093705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093705.P7271058534406243467

`lt[(n+1)%A093653(n+1), 1]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A093705

/-- `lt[(n+1)%A093653(n+1), 1]+1` -/
def P7271058534406243467.Spec : Prop :=
  ∀ n, (P7271058534406243467.a n : ℤ) = A093705 (n + 1)

theorem P7271058534406243467.correct : P7271058534406243467.Spec := by
  intro n
  simp only [A093705, Nat.add_sub_cancel]

end A093705

/-!
# A093706: Primes p such that (pp'-1)/2 is prime, where p' denotes the next prime after p.

The programs for A093706, there is no canonical definition to state claims against.
-/

/-! ## A093706.P11882985056460125414

`A000040(A103746(n+1))`
-/

namespace A093706.P11882985056460125414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103746 (n + 1)).toNat

end

end A093706.P11882985056460125414

/-! ## A093706.P5364422365341140118

`A008578(A103746(n+1)+1)`
-/

namespace A093706.P5364422365341140118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A103746 (n + 1) + 1).toNat

end

end A093706.P5364422365341140118

/-! ## A093706.P9508636204787723095

`A065091(A103746(n+1)-1)`
-/

namespace A093706.P9508636204787723095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A103746 (n + 1) - 1).toNat

end

end A093706.P9508636204787723095

/-! ## A093706.P10099879855279678594

`A006093(A103746(n+1))+A000034(2*n)`
-/

namespace A093706.P10099879855279678594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A103746 (n + 1)).toNat + A000034 (2 * n)

end

end A093706.P10099879855279678594

/-! ## A093706.P5322881435954167501

`A006093(A103746(n+1))+A008836(n+1)²`
-/

namespace A093706.P5322881435954167501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A103746 (n + 1)).toNat + A008836 (n + 1) ^ 2

end

end A093706.P5322881435954167501

/-! ## A093706.P15673316573956392586

`A006093(A103746(n+1))+char[A186421(n)-2]`
-/

namespace A093706.P15673316573956392586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A103746 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093706.P15673316573956392586

/-! ## A093706.P6465892383916532322

`A008966(A282795(n+1))+A006093(A103746(n+1))`
-/

namespace A093706.P6465892383916532322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A282795 (n + 1)).toNat + A006093 (A103746 (n + 1)).toNat

end

end A093706.P6465892383916532322

/-! ## A093706.P5794446492452457402

`A129818(A000096(n))+A006093(A103746(n+1))`
-/

namespace A093706.P5794446492452457402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (A000096 n).toNat + A006093 (A103746 (n + 1)).toNat

end

end A093706.P5794446492452457402

/-!
# A093707: Numbers n such that n^3 + (n-1)^2 is a prime.

The programs for A093707, there is no canonical definition to state claims against.
-/

/-! ## A093707.P3252251800055380525

`A128958(n+1)+1`
-/

namespace A093707.P3252251800055380525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128958 (n + 1) + 1

end

end A093707.P3252251800055380525

/-! ## A093707.P5728776798475308058

`floor(root(A155933(n+1), 3))`
-/

namespace A093707.P5728776798475308058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A093707.P5728776798475308058

/-! ## A093707.P4597903283040753596

`round(root(A155933(C(n+1, n)), 3))`
-/

namespace A093707.P4597903283040753596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155933 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A093707.P4597903283040753596

/-! ## A093707.P4578743500793899244

`round(root(A155933(-xor(n, -1)), 3))`
-/

namespace A093707.P4578743500793899244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155933 (-Int.xor (n : ℤ) (-1)).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A093707.P4578743500793899244

/-! ## A093707.P11781949938428435599

`round(root(A155933(Δ[n²]-n), 3))`
-/

namespace A093707.P11781949938428435599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A093707.P11781949938428435599

/-! ## A093707.P4779213861339933599

`A008683(4*(n+1))+round(root(A155933(n+1), 3))`
-/

namespace A093707.P4779213861339933599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway ((A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A093707.P4779213861339933599

/-! ## A093707.P2405820188308746351

`round(root(A155933(n+1), 3))*A000045(((-1)^n)²)`
-/

namespace A093707.P2405820188308746351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A000045 (((-1) ^ n) ^ 2).toNat

end

end A093707.P2405820188308746351

/-! ## A093707.P16004682987720811326

`round(root(A155933(n+1), 3))*A014963(6*(n+1))`
-/

namespace A093707.P16004682987720811326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A014963 (6 * (n + 1))

end

end A093707.P16004682987720811326

/-! ## A093707.P12079090398505183613

`A020725(A128958(n+1))`
-/

namespace A093707.P12079090398505183613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A128958 (n + 1)).toNat

end

end A093707.P12079090398505183613

/-! ## A093707.P7882317055741788963

`round(root(A155933(n+1), 3))%A000032(n+3)`
-/

namespace A093707.P7882317055741788963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A155933 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000032 (n + 3))

end

end A093707.P7882317055741788963

/-!
# A093708: Number of odd nonprime differences of 2 (twin odd nonprimes) below 10^n.

The programs for A093708, there is no canonical definition to state claims against.
-/

/-! ## A093708.P11294880916730550813

`10^(n+1)/2-2*A006880(n+1)+A007508(n+1)+1`
-/

namespace A093708.P11294880916730550813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℚ) / 2 - (2 * A006880 (n + 1) : ℚ) + (A007508 (n + 1) : ℚ) + 1

end

end A093708.P11294880916730550813

/-!
# A093709: Characteristic function of squares or twice squares.

The programs for A093709, the canonical program `A093709.P8053872499898483409` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093709 has offset 0).

The definition of A093709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093709.P8053872499898483409

`(∑{d}[n, #]%2)^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093709

/-- `(∑{d}[n, #]%2)^n` -/
def P8053872499898483409.Spec : Prop :=
  ∀ n, (P8053872499898483409.a n : ℤ) = A093709 n

theorem P8053872499898483409.correct : P8053872499898483409.Spec := by
  intro n
  simp only [A093709]

end A093709

/-! ## A093709.P15312025715115720262

`and(1, ∑{d}[n, #])^n`
-/

namespace A093709.P15312025715115720262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n), d) ^ n

end

end A093709.P15312025715115720262

namespace A093709

/-- `and(1, ∑{d}[n, #])^n` -/
def P15312025715115720262.Spec : Prop :=
  ∀ n, (P15312025715115720262.a n : ℤ) = A093709 n

theorem P15312025715115720262.correct : P15312025715115720262.Spec := by
  intro n
  simp only [A093709, Nat.add_sub_cancel, A093709.P15312025715115720262.f1, A093709.P15312025715115720262.a, A093709.P8053872499898483409.f1, A093709.P8053872499898483409.a, SequenceMachineLib.memo_apply]
  try simp

end A093709

/-! ## A093709.P13433980744839423185

`char[∪[2*n², n²]]`
-/

namespace A093709.P13433980744839423185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093709.P13433980744839423185

namespace A093709

/-- `char[∪[2*n², n²]]` -/
def P13433980744839423185.Spec : Prop :=
  ∀ n, (P13433980744839423185.a n : ℤ) = A093709 n

end A093709

/-! ## A093709.P14649970413369189367

`char[floor(n/3)²*n%3]`
-/

namespace A093709.P14649970413369189367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ 2 * ((n % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093709.P14649970413369189367

namespace A093709

/-- `char[floor(n/3)²*n%3]` -/
def P14649970413369189367.Spec : Prop :=
  ∀ n, (P14649970413369189367.a n : ℤ) = A093709 n

end A093709

/-! ## A093709.P13964657834809437297

`char[(n+1)²]+char[2*n²]`
-/

namespace A093709.P13964657834809437297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)

end

end A093709.P13964657834809437297

namespace A093709

/-- `char[(n+1)²]+char[2*n²]` -/
def P13964657834809437297.Spec : Prop :=
  ∀ n, (P13964657834809437297.a n : ℤ) = A093709 n

end A093709

/-! ## A093709.P2138227922431584393

`abs(A214507(n))`
-/

namespace A093709.P2138227922431584393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214507 n|

end

end A093709.P2138227922431584393

namespace A093709

/-- `abs(A214507(n))` -/
def P2138227922431584393.Spec : Prop :=
  ∀ n, P2138227922431584393.a n = A093709 n

end A093709

/-! ## A093709.P4203143771813965490

`A091986(n)%2`
-/

namespace A093709.P4203143771813965490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091986 n) 2

end

end A093709.P4203143771813965490

namespace A093709

/-- `A091986(n)%2` -/
def P4203143771813965490.Spec : Prop :=
  ∀ n, P4203143771813965490.a n = A093709 n

end A093709

/-! ## A093709.P5664613571392156635

`A092347(n)%2`
-/

namespace A093709.P5664613571392156635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092347 n) 2

end

end A093709.P5664613571392156635

namespace A093709

/-- `A092347(n)%2` -/
def P5664613571392156635.Spec : Prop :=
  ∀ n, P5664613571392156635.a n = A093709 n

end A093709

/-! ## A093709.P2877202899139107747

`A115671(n)%2`
-/

namespace A093709.P2877202899139107747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115671 n) 2

end

end A093709.P2877202899139107747

namespace A093709

/-- `A115671(n)%2` -/
def P2877202899139107747.Spec : Prop :=
  ∀ n, P2877202899139107747.a n = A093709 n

end A093709

/-! ## A093709.P612536621815353317

`A244540(n)%2`
-/

namespace A093709.P612536621815353317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244540 n) 2

end

end A093709.P612536621815353317

namespace A093709

/-- `A244540(n)%2` -/
def P612536621815353317.Spec : Prop :=
  ∀ n, P612536621815353317.a n = A093709 n

end A093709

/-! ## A093709.P9160197700485317308

`A244543(n)%2`
-/

namespace A093709.P9160197700485317308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244543 n) 2

end

end A093709.P9160197700485317308

namespace A093709

/-- `A244543(n)%2` -/
def P9160197700485317308.Spec : Prop :=
  ∀ n, P9160197700485317308.a n = A093709 n

end A093709

/-! ## A093709.P482922340374189650

`and(1, A245432(n))`
-/

namespace A093709.P482922340374189650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A245432 n)

end

end A093709.P482922340374189650

namespace A093709

/-- `and(1, A245432(n))` -/
def P482922340374189650.Spec : Prop :=
  ∀ n, P482922340374189650.a n = A093709 n

end A093709

/-! ## A093709.P6165989905289773311

`char[A115881(n+1)]`
-/

namespace A093709.P6165989905289773311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093709.P6165989905289773311

namespace A093709

/-- `char[A115881(n+1)]` -/
def P6165989905289773311.Spec : Prop :=
  ∀ n, (P6165989905289773311.a n : ℤ) = A093709 n

end A093709

/-! ## A093709.P16895290135863197830

`A073097(∑{d}[n, #])²`
-/

namespace A093709.P16895290135863197830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (∑ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A093709.P16895290135863197830

namespace A093709

/-- `A073097(∑{d}[n, #])²` -/
def P16895290135863197830.Spec : Prop :=
  ∀ n, P16895290135863197830.a n = A093709 n

end A093709

/-! ## A093709.P10442490959112946796

`and(1, A069283(n)+1)`
-/

namespace A093709.P10442490959112946796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A069283 n + 1)

end

end A093709.P10442490959112946796

namespace A093709

/-- `and(1, A069283(n)+1)` -/
def P10442490959112946796.Spec : Prop :=
  ∀ n, P10442490959112946796.a n = A093709 n

end A093709

/-! ## A093709.P6702653482913293256

`and(1, ∑{d}[A028310(n), #])`
-/

namespace A093709.P6702653482913293256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A093709.P6702653482913293256

namespace A093709

/-- `and(1, ∑{d}[A028310(n), #])` -/
def P6702653482913293256.Spec : Prop :=
  ∀ n, (P6702653482913293256.a n : ℤ) = A093709 n

end A093709

/-! ## A093709.P6354328215089736833

`A000203(abs(1-n)+1)%2`
-/

namespace A093709.P6354328215089736833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (|1 - (n : ℤ)| + 1).toNat) 2

end

end A093709.P6354328215089736833

namespace A093709

/-- `A000203(abs(1-n)+1)%2` -/
def P6354328215089736833.Spec : Prop :=
  ∀ n, P6354328215089736833.a n = A093709 n

end A093709

/-! ## A093709.P3493887074385193218

`and(a(n-1)!, A000203(n))` with `a(0)=1`
-/

namespace A093709.P3493887074385193218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (Nat.factorial (a (n - 1)).toNat : ℤ) (A000203 n)

end

end A093709.P3493887074385193218

namespace A093709

/-- `and(a(n-1)!, A000203(n))` -/
def P3493887074385193218.Spec : Prop :=
  ∀ n, P3493887074385193218.a n = A093709 n

end A093709

/-! ## A093709.P11601028299284976749

`and(1, A000203(C(n, n²)+n))`
-/

namespace A093709.P11601028299284976749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (Nat.choose n (n ^ 2) + n))

end

end A093709.P11601028299284976749

namespace A093709

/-- `and(1, A000203(C(n, n²)+n))` -/
def P11601028299284976749.Spec : Prop :=
  ∀ n, P11601028299284976749.a n = A093709 n

end A093709

/-! ## A093709.P7842750745266239753

`and(1, A000203(floor(1/(n+1)+n)))`
-/

namespace A093709.P7842750745266239753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat)

end

end A093709.P7842750745266239753

namespace A093709

/-- `and(1, A000203(floor(1/(n+1)+n)))` -/
def P7842750745266239753.Spec : Prop :=
  ∀ n, P7842750745266239753.a n = A093709 n

end A093709

/-!
# A093710: Numbers k such that in their binary representation all numbers from 1 to k are contained in k!.

The programs for A093710, there is no canonical definition to state claims against.
-/

/-! ## A093710.P5439798339175298435

`record[C(A092601(n+1), n)]`
-/

namespace A093710.P5439798339175298435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092601 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093710.P5439798339175298435

/-! ## A093710.P17851651601498951899

`eq[n, A092601(round(sqrt(n²+1)))]`
-/

namespace A093710.P17851651601498951899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092601 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093710.P17851651601498951899

/-! ## A093710.P7925150697221406528

`record[gcd(A092601(n+1), A103517(n))]`
-/

namespace A093710.P7925150697221406528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092601 (n + 1)) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093710.P7925150697221406528

/-! ## A093710.P18316212515688401465

`record[(n+1)%A092762(n+1)]`
-/

namespace A093710.P18316212515688401465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A092762 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093710.P18316212515688401465

/-!
# A093711: Numbers k such that in their binary representation not all numbers from 1 to k are contained in k!.

The programs for A093711, there is no canonical definition to state claims against.
-/

/-! ## A093711.P1383069070713539337

`comp[A093710(n+1)-1]+1`
-/

namespace A093711.P1383069070713539337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093710 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093711.P1383069070713539337

/-! ## A093711.P6575477243524155464

`comp[C(A092601(n+1), n)]`
-/

namespace A093711.P6575477243524155464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092601 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A093711.P6575477243524155464

/-!
# A093713: Numbers k such that 6^k - 5^(k-1) is prime.

The programs for A093713, there is no canonical definition to state claims against.
-/

/-! ## A093713.P15123953597024476407

`record[gcd(A216593(2*n+5), A216620(n+1))]`
-/

namespace A093713.P15123953597024476407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A216593 (2 * n + 5)) (A216620 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093713.P15123953597024476407

/-!
# A093714: a(n) = smallest number coprime to a(n-1), not equal to a(n-1)+1, and not occurring earlier; a(1)=1.

The programs for A093714, there is no canonical definition to state claims against.
-/

/-! ## A093714.P3431879636175417432

`A352931(n+1)+1+n`
-/

namespace A093714.P3431879636175417432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352931 (n + 1) + 1 + (n : ℤ)

end

end A093714.P3431879636175417432

/-! ## A093714.P942195330259697665

`A352930(n)+a(n-1)` with `a(0)=1`
-/

namespace A093714.P942195330259697665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A352930 n + a (n - 1)

end

end A093714.P942195330259697665

/-! ## A093714.P14321625740168618872

`∑[A352930(abs(1-n)+1)]+2`
-/

namespace A093714.P14321625740168618872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A093714.P14321625740168618872

/-! ## A093714.P10213039483917093785

`abs(1-∑[A352930(A028310(n))])`
-/

namespace A093714.P10213039483917093785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A093714.P10213039483917093785

/-! ## A093714.P1707352620857817260

`abs(1-∑[A352930(A000007(n)+n)])`
-/

namespace A093714.P1707352620857817260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A093714.P1707352620857817260

/-! ## A093714.P15114987464375457280

`A020725(∑[A352930(n+1)])-A352930(n+1)`
-/

namespace A093714.P15114987464375457280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A352930 (n + 1)

end

end A093714.P15114987464375457280

/-!
# A093715: Inverse of A093714.

The programs for A093715, there is no canonical definition to state claims against.
-/

/-! ## A093715.P8281431000882435373

`1-A353706(n+1)+n`
-/

namespace A093715.P8281431000882435373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353706 (n + 1) + (n : ℤ)

end

end A093715.P8281431000882435373

/-! ## A093715.P16797154858224269422

`abs(A353706(n+1)+A001478(n+1))`
-/

namespace A093715.P16797154858224269422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A353706 (n + 1) + A001478 (n + 1)|

end

end A093715.P16797154858224269422

/-! ## A093715.P167738270517856324

`-(A353706(A000027(n+1))+A001478(n+1))`
-/

namespace A093715.P167738270517856324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A353706 (A000027 (n + 1)).toNat + A001478 (n + 1))

end

end A093715.P167738270517856324

/-! ## A093715.P1739062458474248184

`(A353706(n+1)+A001478(n+1))*A008683(A180950(n+1))`
-/

namespace A093715.P1739062458474248184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353706 (n + 1) + A001478 (n + 1)) * A008683 (A180950 (n + 1)).toNat

end

end A093715.P1739062458474248184

/-! ## A093715.P3567880227866065441

`A004736(A353706(n+1)+A001844(n))`
-/

namespace A093715.P3567880227866065441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A353706 (n + 1) + A001844 n).toNat

end

end A093715.P3567880227866065441

/-!
# A093716: Hook products of all partitions of 5.

The programs for A093716, there is no canonical definition to state claims against.
-/

/-! ## A093716.P10952558839262267829

`A093784(n+12)`
-/

namespace A093716.P10952558839262267829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (n + 12)

end

end A093716.P10952558839262267829

/-! ## A093716.P8573879752793312236

`A162610(4^ceil(n/2))+19`
-/

namespace A093716.P8573879752793312236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat + 19

end

end A093716.P8573879752793312236

/-! ## A093716.P10561296354919153636

`A000203(p?[A176331(n)]+16)`
-/

namespace A093716.P10561296354919153636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 16).toNat

end

end A093716.P10561296354919153636

/-!
# A093718: a(n) = (n mod 3)^(n mod 2).

The programs for A093718, the canonical program `A093718.P11319587559796400622` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093718 has offset 0).

The definition of A093718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093718.P11319587559796400622

`(n+3)%(2+n%2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093718

/-- `(n+3)%(2+n%2)` -/
def P11319587559796400622.Spec : Prop :=
  ∀ n, (P11319587559796400622.a n : ℤ) = A093718 n

theorem P11319587559796400622.correct : P11319587559796400622.Spec := by
  intro n
  simp only [A093718]

end A093718

/-!
# A093719: a(n) = (n mod 2)^(n mod 3).

The programs for A093719, the canonical program `A093719.P2041774565121230902` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093719 has offset 0).

The definition of A093719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093719.P2041774565121230902

`(n%2)^(n%3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093719

/-- `(n%2)^(n%3)` -/
def P2041774565121230902.Spec : Prop :=
  ∀ n, (P2041774565121230902.a n : ℤ) = A093719 n

theorem P2041774565121230902.correct : P2041774565121230902.Spec := by
  intro n
  simp only [A093719]

end A093719

/-!
# A093722: Integers of the form (k^2 - 1) / 120.

The programs for A093722, the canonical program `A093722.P2292201294812047524` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093722 has offset 1).

The definition of A093722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093722.P2292201294812047524

`∑[A077814(n)+A026741(A026741(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A093722

/-- `∑[A077814(n)+A026741(A026741(n))]` -/
def P2292201294812047524.Spec : Prop :=
  ∀ n, P2292201294812047524.a n = A093722 (n + 1)

theorem P2292201294812047524.correct : P2292201294812047524.Spec := by
  intro n
  simp only [A093722, Nat.add_sub_cancel]

end A093722

/-! ## A093722.P17369149631201249050

`A132356(A007494(n))/12`
-/

namespace A093722.P17369149631201249050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132356 (A007494 n).toNat : ℚ) / 12

end

end A093722.P17369149631201249050

namespace A093722

/-- `A132356(A007494(n))/12` -/
def P17369149631201249050.Spec : Prop :=
  ∀ n, P17369149631201249050.a n = (A093722 (n + 1) : ℚ)

end A093722

/-! ## A093722.P13467237501724112451

`A001318(ceil(3*n/2))-A001318(n)`
-/

namespace A093722.P13467237501724112451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 ⌈3 * ((n : ℚ) / 2)⌉.toNat - A001318 n

end

end A093722.P13467237501724112451

namespace A093722

/-- `A001318(ceil(3*n/2))-A001318(n)` -/
def P13467237501724112451.Spec : Prop :=
  ∀ n, P13467237501724112451.a n = A093722 (n + 1)

end A093722

/-! ## A093722.P4741747778327772363

`(A152749(A007494(n))-A152749(n))/2`
-/

namespace A093722.P4741747778327772363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152749 (A007494 n).toNat - A152749 n : ℚ) / 2

end

end A093722.P4741747778327772363

namespace A093722

/-- `(A152749(A007494(n))-A152749(n))/2` -/
def P4741747778327772363.Spec : Prop :=
  ∀ n, P4741747778327772363.a n = (A093722 (n + 1) : ℚ)

end A093722

/-! ## A093722.P12341266834978116595

`A308158(A007310(n+1))`
-/

namespace A093722.P12341266834978116595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (A007310 (n + 1)).toNat

end

end A093722.P12341266834978116595

namespace A093722

/-- `A308158(A007310(n+1))` -/
def P12341266834978116595.Spec : Prop :=
  ∀ n, P12341266834978116595.a n = A093722 (n + 1)

end A093722

/-! ## A093722.P10532433848560212746

`A308158(A285869(2*n)+2*n+1)`
-/

namespace A093722.P10532433848560212746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308158 (A285869 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A093722.P10532433848560212746

namespace A093722

/-- `A308158(A285869(2*n)+2*n+1)` -/
def P10532433848560212746.Spec : Prop :=
  ∀ n, P10532433848560212746.a n = A093722 (n + 1)

end A093722

/-! ## A093722.P3406181082445777195

`A011883(A151972(n+2))`
-/

namespace A093722.P3406181082445777195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011883 (A151972 (n + 2)).toNat

end

end A093722.P3406181082445777195

namespace A093722

/-- `A011883(A151972(n+2))` -/
def P3406181082445777195.Spec : Prop :=
  ∀ n, P3406181082445777195.a n = A093722 (n + 1)

end A093722

/-! ## A093722.P4063922352791163089

`eq[1, A113430(n)²]`
-/

namespace A093722.P4063922352791163089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093722.P4063922352791163089

namespace A093722

/-- `eq[1, A113430(n)²]` -/
def P4063922352791163089.Spec : Prop :=
  ∀ n, (P4063922352791163089.a n : ℤ) = A093722 (n + 1)

end A093722

/-! ## A093722.P2482894124502058911

`eq[1, A113681(n)²]`
-/

namespace A093722.P2482894124502058911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113681 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093722.P2482894124502058911

namespace A093722

/-- `eq[1, A113681(n)²]` -/
def P2482894124502058911.Spec : Prop :=
  ∀ n, (P2482894124502058911.a n : ℤ) = A093722 (n + 1)

end A093722

/-! ## A093722.P2440672087449916685

`eq[1, A207710(n)²]`
-/

namespace A093722.P2440672087449916685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207710 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093722.P2440672087449916685

namespace A093722

/-- `eq[1, A207710(n)²]` -/
def P2440672087449916685.Spec : Prop :=
  ∀ n, (P2440672087449916685.a n : ℤ) = A093722 (n + 1)

end A093722

/-! ## A093722.P747571363809652192

`eq[1, A214529(n)²]`
-/

namespace A093722.P747571363809652192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214529 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093722.P747571363809652192

namespace A093722

/-- `eq[1, A214529(n)²]` -/
def P747571363809652192.Spec : Prop :=
  ∀ n, (P747571363809652192.a n : ℤ) = A093722 (n + 1)

end A093722

/-! ## A093722.P6381627808945033507

`lt[1, (A114856(n+1)*A207710(n))²]`
-/

namespace A093722.P6381627808945033507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114856 (n + 1) * A207710 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093722.P6381627808945033507

namespace A093722

/-- `lt[1, (A114856(n+1)*A207710(n))²]` -/
def P6381627808945033507.Spec : Prop :=
  ∀ n, (P6381627808945033507.a n : ℤ) = A093722 (n + 1)

end A093722

/-! ## A093722.P16670587780565607058

`lt[A055965(n), A055965(n)+A207710(n)²]`
-/

namespace A093722.P16670587780565607058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n + A207710 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093722.P16670587780565607058

namespace A093722

/-- `lt[A055965(n), A055965(n)+A207710(n)²]` -/
def P16670587780565607058.Spec : Prop :=
  ∀ n, (P16670587780565607058.a n : ℤ) = A093722 (n + 1)

end A093722

/-!
# A093723: First differences of A092614.

The programs for A093723, there is no canonical definition to state claims against.
-/

/-! ## A093723.P16080910861044132172

`Δ[A092614(n+1)]`
-/

namespace A093723.P16080910861044132172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093723.P16080910861044132172

/-! ## A093723.P2270151841740811076

`Δ[record[A092614(A152271(n))]]`
-/

namespace A093723.P2270151841740811076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093723.P2270151841740811076

/-! ## A093723.P17564819641752114325

`Δ[record[A092614(A318274(n))]]`
-/

namespace A093723.P17564819641752114325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (A318274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093723.P17564819641752114325

/-! ## A093723.P1487205397603508338

`Δ[record[A092614(A324347(n))]]`
-/

namespace A093723.P1487205397603508338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093723.P1487205397603508338

/-! ## A093723.P4887017011681021920

`Δ[record[A092614(A328399(n))]]`
-/

namespace A093723.P4887017011681021920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093723.P4887017011681021920

/-! ## A093723.P10596301258287803719

`A092614(n+2)-A092614(n+1)`
-/

namespace A093723.P10596301258287803719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (n + 2) - A092614 (n + 1)

end

end A093723.P10596301258287803719

/-!
# A093725: Given the infinite continued fraction (1+i)+((1+i)/(1+i)+((1+i)/((1+i)+...)))), where i is the square root of (-1), this is the numerator of the real part of the convergents.

The programs for A093725, there is no canonical definition to state claims against.
-/

/-! ## A093725.P14879453424126038096

`A370264(A027218(n+3))`
-/

namespace A093725.P14879453424126038096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370264 (A027218 (n + 3)).toNat

end

end A093725.P14879453424126038096

/-! ## A093725.P4735441124296538513

`A349550(∑[∑{digits}[A227995(n), #]])`
-/

namespace A093725.P4735441124296538513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227995 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093725.P4735441124296538513

/-!
# A093726: Given the infinite continued fraction (1+i)+1/((1+i)+1/((1+i)+...)), where i is the square root of (-1), this is the numerator of the imaginary part of the convergents.

The programs for A093726, there is no canonical definition to state claims against.
-/

/-! ## A093726.P509659441615007757

`A064542(A020029(n)*A105083(n))`
-/

namespace A093726.P509659441615007757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A020029 n * A105083 n).toNat

end

end A093726.P509659441615007757

/-!
# A093727: Given the infinite continued fraction (1+i)+((1+i)/(1+i)+((1+i)/((1+i)+...)))), where i is the square root of (-1), this is the denominator of the convergents.

The programs for A093727, there is no canonical definition to state claims against.
-/

/-! ## A093727.P5357215743537572280

`A019554(A138573(n+1))`
-/

namespace A093727.P5357215743537572280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A138573 (n + 1)).toNat

end

end A093727.P5357215743537572280

/-! ## A093727.P152406732727009904

`A329329(∑[∑[2*n]]+1)+n`
-/

namespace A093727.P152406732727009904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329329 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)

end

end A093727.P152406732727009904

/-!
# A093729: Square table T, read by antidiagonals, where T(n,k) gives the number of n-th generation descendents of a node labeled (k) in the tree of tournament sequences.

The programs for A093729, there is no canonical definition to state claims against.
-/

/-! ## A093729.P5966764150797315716

`A180101(or(A014473(n), A184962(n)))`
-/

namespace A093729.P5966764150797315716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A014473 n) (A184962 n)).toNat

end

end A093729.P5966764150797315716

/-! ## A093729.P4616718638610212133

`A180101(or(A059365(n), A184962(n)))`
-/

namespace A093729.P4616718638610212133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A059365 n) (A184962 n)).toNat

end

end A093729.P4616718638610212133

/-! ## A093729.P7860801168876799880

`A180101(or(A064045(n), A184962(n)))`
-/

namespace A093729.P7860801168876799880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A064045 n) (A184962 n)).toNat

end

end A093729.P7860801168876799880

/-! ## A093729.P17777011635281434515

`A180101(or(A067347(n), A184962(n)))`
-/

namespace A093729.P17777011635281434515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A067347 n) (A184962 n)).toNat

end

end A093729.P17777011635281434515

/-! ## A093729.P2778534527286887183

`A180101(or(A085771(n), A184962(n)))`
-/

namespace A093729.P2778534527286887183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (Int.lor (A085771 n) (A184962 n)).toNat

end

end A093729.P2778534527286887183

/-!
# A093730: Antidiagonal sums of triangle A093729, which enumerates the number of nodes in the tree of tournament sequences.

The programs for A093730, there is no canonical definition to state claims against.
-/

/-! ## A093730.P2760304589547656242

`A363005(n)+A002265(A058712(n))`
-/

namespace A093730.P2760304589547656242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363005 n + A002265 (A058712 n).toNat

end

end A093730.P2760304589547656242

/-! ## A093730.P15464702144221082709

`A195743(A225052(n)+A195764(n+1))`
-/

namespace A093730.P15464702144221082709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195743 (A225052 n + A195764 (n + 1)).toNat

end

end A093730.P15464702144221082709

/-! ## A093730.P16213778122688091182

`A195743(A225052(n)+A195768(∑[n+2]))`
-/

namespace A093730.P16213778122688091182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195743 (A225052 n + A195768 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A093730.P16213778122688091182

/-!
# A093732: Number of connected relations.

The programs for A093732, there is no canonical definition to state claims against.
-/

/-! ## A093732.P2994889091676032337

`A262307(A167499(n+3))`
-/

namespace A093732.P2994889091676032337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A167499 (n + 3)).toNat

end

end A093732.P2994889091676032337

/-! ## A093732.P9963613070458058992

`A262307(A167614(n+3)+2)`
-/

namespace A093732.P9963613070458058992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A167614 (n + 3) + 2).toNat

end

end A093732.P9963613070458058992

/-! ## A093732.P248164702560414952

`A262307(A034856(n+3)+7)`
-/

namespace A093732.P248164702560414952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A034856 (n + 3) + 7).toNat

end

end A093732.P248164702560414952

/-! ## A093732.P8338680417165064059

`A262307(A173036(n)+A016825(n))`
-/

namespace A093732.P8338680417165064059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A173036 n + A016825 n).toNat

end

end A093732.P8338680417165064059

/-! ## A093732.P12607724851808604907

`A262307(Δ[A023551(n+1)]-A005843(n))`
-/

namespace A093732.P12607724851808604907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (f1 (n + 1) - f1 n - A005843 n).toNat

end

end A093732.P12607724851808604907

/-!
# A093733: Number of connected relations.

The programs for A093733, there is no canonical definition to state claims against.
-/

/-! ## A093733.P12656686226853938008

`A262307(A000096(n+4)+7)`
-/

namespace A093733.P12656686226853938008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A000096 (n + 4) + 7).toNat

end

end A093733.P12656686226853938008

/-! ## A093733.P8441714633934968814

`A262307(A374007(n+1))`
-/

namespace A093733.P8441714633934968814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A374007 (n + 1)).toNat

end

end A093733.P8441714633934968814

/-! ## A093733.P3920813253535890928

`A262307(A052905(n+3))`
-/

namespace A093733.P3920813253535890928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A052905 (n + 3)).toNat

end

end A093733.P3920813253535890928

/-! ## A093733.P6086625828513852518

`A262307(eq[5, A193592(n)])`
-/

namespace A093733.P6086625828513852518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093733.P6086625828513852518

/-! ## A093733.P7568727752130126324

`A262307(Δ[A023551(n+1)]+1)`
-/

namespace A093733.P7568727752130126324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (f1 (n + 1) - f1 n + 1).toNat

end

end A093733.P7568727752130126324

/-!
# A093734: Primes p such that both prime(p) + prime(p+1) +/ -1 are also primes.

The programs for A093734, there is no canonical definition to state claims against.
-/

/-! ## A093734.P9113376066019430274

`p?[A176986(n+1)]`
-/

namespace A093734.P9113376066019430274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093734.P9113376066019430274

/-! ## A093734.P8929769686364872166

`∩[A000040(n+1), A176986(n+1)]`
-/

namespace A093734.P8929769686364872166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P8929769686364872166

/-! ## A093734.P14035861728744596094

`∩[A004139(n+1), A176986(n+1)]`
-/

namespace A093734.P14035861728744596094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P14035861728744596094

/-! ## A093734.P13681034278149062534

`∩[A006005(n+1), A176986(n+1)]`
-/

namespace A093734.P13681034278149062534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P13681034278149062534

/-! ## A093734.P8452951581914044104

`∩[A008578(n+1), A176986(n+1)]`
-/

namespace A093734.P8452951581914044104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P8452951581914044104

/-! ## A093734.P4314067754294830999

`∩[A033946(n+1), A176986(n+1)]`
-/

namespace A093734.P4314067754294830999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P4314067754294830999

/-! ## A093734.P15363250276302351514

`∩[A045319(n+1), A176986(n+1)]`
-/

namespace A093734.P15363250276302351514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P15363250276302351514

/-! ## A093734.P14539421167408232602

`∩[A065091(n+1), A176986(n+1)]`
-/

namespace A093734.P14539421167408232602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P14539421167408232602

/-! ## A093734.P16227578716898777086

`∩[A065396(n+1), A176986(n+1)]`
-/

namespace A093734.P16227578716898777086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P16227578716898777086

/-! ## A093734.P15216556695634470331

`∩[A158611(n+1), A176986(n+1)]`
-/

namespace A093734.P15216556695634470331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P15216556695634470331

/-! ## A093734.P13926315449334524370

`∩[A070159(n+1), A176986(n+1)]`
-/

namespace A093734.P13926315449334524370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P13926315449334524370

/-! ## A093734.P13242644743842070023

`∩[A097605(n+1), A176986(n+1)]`
-/

namespace A093734.P13242644743842070023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P13242644743842070023

/-! ## A093734.P15104855870226831105

`∩[A182140(n+1), A176986(n+1)]`
-/

namespace A093734.P15104855870226831105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093734.P15104855870226831105

/-! ## A093734.P2225570052177471575

`filter[A176986(n+1), A010051(#)]`
-/

namespace A093734.P2225570052177471575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A093734.P2225570052177471575

/-! ## A093734.P10920287669247275515

`record[A020639(A176986(A000027(n+1)))]`
-/

namespace A093734.P10920287669247275515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A176986 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093734.P10920287669247275515

/-! ## A093734.P8751083748162663875

`record[A020639(A176986(n+1)%A330616(n+1))]`
-/

namespace A093734.P8751083748162663875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A176986 (n + 1)) (A330616 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093734.P8751083748162663875

/-! ## A093734.P16403787203476553583

`filter[A176986(n+1), A257531(#)]`
-/

namespace A093734.P16403787203476553583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A093734.P16403787203476553583

/-!
# A093737: Number of prime pairs below 10^n having a difference of 4.

The programs for A093737, there is no canonical definition to state claims against.
-/

/-! ## A093737.P11885317994499401065

`A080840(n+1)-1`
-/

namespace A093737.P11885317994499401065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080840 (n + 1) - 1

end

end A093737.P11885317994499401065

/-! ## A093737.P4957859795407375792

`A152052(n+1)+floor(atan(n))-2`
-/

namespace A093737.P4957859795407375792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152052 (n + 1) + (⌊Real.arctan (n : ℝ)⌋ - 2)

end

end A093737.P4957859795407375792

/-! ## A093737.P5191862732369984474

`record[Δ[A080840(A158416(n))]]`
-/

namespace A093737.P5191862732369984474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080840 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093737.P5191862732369984474

/-! ## A093737.P6643467449047315057

`record[A080840(A051340(n))-1]`
-/

namespace A093737.P6643467449047315057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080840 (A051340 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093737.P6643467449047315057

/-!
# A093738: Number of pairs of consecutive prime (p,q) with q-p=6 and q < 10^n.

The programs for A093738, there is no canonical definition to state claims against.
-/

/-! ## A093738.P13166586518060726135

`A080841(n+1)-A055737(n+1)`
-/

namespace A093738.P13166586518060726135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080841 (n + 1) - A055737 (n + 1)

end

end A093738.P13166586518060726135

/-! ## A093738.P6231294041451542610

`A080841(n+1)+A055737(n+1)*A057428(n)`
-/

namespace A093738.P6231294041451542610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080841 (n + 1) + A055737 (n + 1) * A057428 n

end

end A093738.P6231294041451542610

/-! ## A093738.P13988431064861011862

`∑[A397456(n+1)]`
-/

namespace A093738.P13988431064861011862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093738.P13988431064861011862

/-!
# A093739: Number of prime pairs below 10^n having a difference of 8.

The programs for A093739, there is no canonical definition to state claims against.
-/

/-! ## A093739.P11779111803598334241

`A027868(A128323(n+1))-1`
-/

namespace A093739.P11779111803598334241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A128323 (n + 1)).toNat - 1

end

end A093739.P11779111803598334241

/-!
# A093740: Number of prime pairs below 10^n having a difference of 10.

The programs for A093740, there is no canonical definition to state claims against.
-/

/-! ## A093740.P17014840251442717793

`A110656(floor(atan(n))*A301947(n+1))`
-/

namespace A093740.P17014840251442717793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (⌊Real.arctan (n : ℝ)⌋ * A301947 (n + 1)).toNat

end

end A093740.P17014840251442717793

/-!
# A093741: Number of prime pairs below 10^n having a difference of 12.

The programs for A093741, there is no canonical definition to state claims against.
-/

/-! ## A093741.P11015910921634298689

`A078429(A112370(n))-A181600(n+1)`
-/

namespace A093741.P11015910921634298689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 (A112370 n).toNat - A181600 (n + 1)

end

end A093741.P11015910921634298689

/-!
# A093742: Number of prime pairs below 10^n having a difference of 14.

The programs for A093742, there is no canonical definition to state claims against.
-/

/-! ## A093742.P16395142646863639541

`A124348(a(n-2))` with `a(0)=0, a(1)=0, a(2)=7, a(3)=54`
-/

namespace A093742.P16395142646863639541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 7, 54] fun n a =>
  A124348 (a (n - 2)).toNat

end

end A093742.P16395142646863639541

/-!
# A093743: Number of prime pairs below 10^n having a difference of 16.

The programs for A093743, there is no canonical definition to state claims against.
-/

/-! ## A093743.P14844651575694337269

`A172310(A191828(n)-A007843(n))`
-/

namespace A093743.P14844651575694337269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 (A191828 n - A007843 n).toNat

end

end A093743.P14844651575694337269

/-! ## A093743.P12052141212653782182

`A172310(A239954(2*n)*A316847(n+1))`
-/

namespace A093743.P12052141212653782182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 (A239954 (2 * n) * A316847 (n + 1)).toNat

end

end A093743.P12052141212653782182

/-!
# A093745: Number of prime pairs below 10^n having a difference of 20.

The programs for A093745, there is no canonical definition to state claims against.
-/

/-! ## A093745.P8082371766631034852

`A189574(n!²)`
-/

namespace A093745.P8082371766631034852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (Nat.factorial n ^ 2)

end

end A093745.P8082371766631034852

/-!
# A093746: Number of prime pairs below 10^n having a difference of 22.

The programs for A093746, there is no canonical definition to state claims against.
-/

/-! ## A093746.P9620300965815802909

`A050029(A296369(n+1))%A081686(n)`
-/

namespace A093746.P9620300965815802909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050029 (A296369 (n + 1)).toNat) (A081686 n)

end

end A093746.P9620300965815802909

/-!
# A093747: Number of prime pairs below 10^n having a difference of 24.

The programs for A093747, there is no canonical definition to state claims against.
-/

/-! ## A093747.P9966170606632024837

`A285937(A192894(n))`
-/

namespace A093747.P9966170606632024837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285937 (A192894 n).toNat

end

end A093747.P9966170606632024837

/-!
# A093748: Number of prime pairs below 10^n having a difference of 26.

The programs for A093748, there is no canonical definition to state claims against.
-/

/-! ## A093748.P9420865462260618573

`n*A356784(A356788(n))`
-/

namespace A093748.P9420865462260618573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A356784 (A356788 n).toNat

end

end A093748.P9420865462260618573

/-! ## A093748.P21995142287975615

`A247254(∑[∏[A003082(n)]])`
-/

namespace A093748.P21995142287975615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247254 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093748.P21995142287975615

/-!
# A093749: Number of prime pairs below 10^n having a difference of 28.

The programs for A093749, there is no canonical definition to state claims against.
-/

/-! ## A093749.P17798089551962900821

`A093048(A277461(n)-n)`
-/

namespace A093749.P17798089551962900821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (A277461 n - (n : ℤ)).toNat

end

end A093749.P17798089551962900821

/-! ## A093749.P360325033956139095

`A268717(A277461(n)-n)`
-/

namespace A093749.P360325033956139095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268717 (A277461 n - (n : ℤ)).toNat

end

end A093749.P360325033956139095

/-!
# A093750: Number of prime pairs below 10^n having a difference of 30.

The programs for A093750, there is no canonical definition to state claims against.
-/

/-! ## A093750.P11594611928769345483

`A155213(A213232(n)+floor(n/4)²)`
-/

namespace A093750.P11594611928769345483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155213 (A213232 n + ⌊(n : ℚ) / 4⌋ ^ 2).toNat

end

end A093750.P11594611928769345483

/-! ## A093750.P6228852206289266099

`A155213(A254011(n)+A213232(n))`
-/

namespace A093750.P6228852206289266099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155213 (A254011 n + A213232 n).toNat

end

end A093750.P6228852206289266099

/-!
# A093751: Number of prime pairs below 10^n having a difference of 32.

The programs for A093751, there is no canonical definition to state claims against.
-/

/-! ## A093751.P9625362770456538329

`Δ[A138471(A184949(n))]`
-/

namespace A093751.P9625362770456538329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A184949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093751.P9625362770456538329

/-! ## A093751.P1138043892529544612

`A308410(A006452(n))-1`
-/

namespace A093751.P1138043892529544612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308410 (A006452 n).toNat - 1

end

end A093751.P1138043892529544612

/-!
# A093752: Number of prime pairs below 10^n having a difference of 34.

The programs for A093752, there is no canonical definition to state claims against.
-/

/-! ## A093752.P2997586776691846039

`A000797(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A093752.P2997586776691846039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  A000797 (a (n - 1) + 1).toNat

end

end A093752.P2997586776691846039

/-! ## A093752.P1036435464035784438

`A090620(A161921(n²))`
-/

namespace A093752.P1036435464035784438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A161921 (n ^ 2)).toNat

end

end A093752.P1036435464035784438

/-!
# A093759: Denominators of Pi-independent part of even terms in the probability of obtaining an acute triangle by picking n points at random in the unit n-ball.

The programs for A093759, there is no canonical definition to state claims against.
-/

/-! ## A093759.P11568413201452309988

`A000079(n+1)²*A360457(A056336(n+3))`
-/

namespace A093759.P11568413201452309988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 * A360457 (A056336 (n + 3)).toNat

end

end A093759.P11568413201452309988

/-! ## A093759.P13172206311746246908

`A000079(2*(n+1))*A360457(A056336(n+3))`
-/

namespace A093759.P13172206311746246908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1)) * A360457 (A056336 (n + 3)).toNat

end

end A093759.P13172206311746246908

/-!
# A093762: Numerators of 1-2*HarmonicNumber(n)/(n+1).

The programs for A093762, there is no canonical definition to state claims against.
-/

/-! ## A093762.P911712703330916438

`A002548(n+2)-A002547(n+1)`
-/

namespace A093762.P911712703330916438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002548 (n + 2) - A002547 (n + 1)

end

end A093762.P911712703330916438

/-! ## A093762.P5764766104108393259

`A141412(∑[n+1]+1)-A002547(n+1)`
-/

namespace A093762.P5764766104108393259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141412 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A002547 (n + 1)

end

end A093762.P5764766104108393259

/-! ## A093762.P12145420253499219092

`A141412(A134869(n+1))/A014963(4*n+2)-A002547(n+1)`
-/

namespace A093762.P12145420253499219092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141412 (A134869 (n + 1)).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ) - (A002547 (n + 1) : ℚ)

end

end A093762.P12145420253499219092

/-! ## A093762.P11016628965379839226

`A022998(A002548(n+2)%A002547(n+1))`
-/

namespace A093762.P11016628965379839226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.tmod (A002548 (n + 2)) (A002547 (n + 1))).toNat

end

end A093762.P11016628965379839226

/-!
# A093764: Hook products of all partitions of 6.

The programs for A093764, there is no canonical definition to state claims against.
-/

/-! ## A093764.P2219256730604292793

`A093784(n+19)`
-/

namespace A093764.P2219256730604292793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (n + 19)

end

end A093764.P2219256730604292793

/-!
# A093768: Positive first differences of the rows of triangle A088459, which enumerates symmetric Dyck paths.

The programs for A093768, there is no canonical definition to state claims against.
-/

/-! ## A093768.P18375671436660873666

`A052174(A061579(n))`
-/

namespace A093768.P18375671436660873666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (A061579 n).toNat

end

end A093768.P18375671436660873666

/-! ## A093768.P2323041265080811907

`A052174(A114327(n)+n)`
-/

namespace A093768.P2323041265080811907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (A114327 n + (n : ℤ)).toNat

end

end A093768.P2323041265080811907

/-! ## A093768.P12207801059910335128

`A052174(∑[A198954(n)-1])`
-/

namespace A093768.P12207801059910335128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093768.P12207801059910335128

/-! ## A093768.P16798515560967686757

`A052174(A038722(n+1)-1)`
-/

namespace A093768.P16798515560967686757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (A038722 (n + 1) - 1).toNat

end

end A093768.P16798515560967686757

/-! ## A093768.P17426016053115117846

`A052174(∑[2*n]%A014132(n+1))`
-/

namespace A093768.P17426016053115117846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052174 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014132 (n + 1))).toNat

end

end A093768.P17426016053115117846

/-!
# A093769: Hook products of all partitions of 7.

The programs for A093769, there is no canonical definition to state claims against.
-/

/-! ## A093769.P12517465261495655478

`A093784(n+30)`
-/

namespace A093769.P12517465261495655478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (n + 30)

end

end A093769.P12517465261495655478

/-!
# A093770: Non-perfect powers k for which q = A051903(k)/A051904(k) is an integer, A051904(k) > 1.

The programs for A093770, there is no canonical definition to state claims against.
-/

/-! ## A093770.P7875670510735683277

`A394482(A062399(n+1))`
-/

namespace A093770.P7875670510735683277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394482 (A062399 (n + 1)).toNat

end

end A093770.P7875670510735683277

/-! ## A093770.P7480834035387025698

`A394482(A351870(n+1))`
-/

namespace A093770.P7480834035387025698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394482 (A351870 (n + 1)).toNat

end

end A093770.P7480834035387025698

/-! ## A093770.P14890687305854929836

`filter[A394482(n+1), A350070(#)]`
-/

namespace A093770.P14890687305854929836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A350070 (f1 j).toNat = 1) n)

end

end A093770.P14890687305854929836

/-! ## A093770.P12913465396843316736

`A394482(n+1)+A335520(A063895(n+1))`
-/

namespace A093770.P12913465396843316736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394482 (n + 1) + A335520 (A063895 (n + 1)).toNat

end

end A093770.P12913465396843316736

/-! ## A093770.P4138468645903835354

`A394482(A032555(n+1))`
-/

namespace A093770.P4138468645903835354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394482 (A032555 (n + 1)).toNat

end

end A093770.P4138468645903835354

/-!
# A093771: Perfect powers for which the exponent is a prime number: solutions to {A051409(x) is prime}.

The programs for A093771, the canonical program `A093771.P13699473905171494955` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093771 has offset 1).

The definition of A093771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093771.P1636672361565177621

`eq[2, A294336(n+1)]+1`
-/

namespace A093771.P1636672361565177621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P1636672361565177621

namespace A093771

/-- `eq[2, A294336(n+1)]+1` -/
def P1636672361565177621.Spec : Prop :=
  ∀ n, (P1636672361565177621.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P13699473905171494955

`eq[2, A089723(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A093771

/-- `eq[2, A089723(n+1)]+1` -/
def P13699473905171494955.Spec : Prop :=
  ∀ n, (P13699473905171494955.a n : ℤ) = A093771 (n + 1)

theorem P13699473905171494955.correct : P13699473905171494955.Spec := by
  intro n
  simp only [A093771, Nat.add_sub_cancel]

end A093771

/-! ## A093771.P6437603597868019001

`eq[2, A153152(A295920(n+1))]+1`
-/

namespace A093771.P6437603597868019001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A295920 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P6437603597868019001

namespace A093771

/-- `eq[2, A153152(A295920(n+1))]+1` -/
def P6437603597868019001.Spec : Prop :=
  ∀ n, (P6437603597868019001.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P16204245326765262418

`eq[A175069(n+1), A175070(n+1)]+1`
-/

namespace A093771.P16204245326765262418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093771.P16204245326765262418

namespace A093771

/-- `eq[A175069(n+1), A175070(n+1)]+1` -/
def P16204245326765262418.Spec : Prop :=
  ∀ n, (P16204245326765262418.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P11983414311272827946

`eq[2, A294338(n+1)]+1`
-/

namespace A093771.P11983414311272827946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P11983414311272827946

namespace A093771

/-- `eq[2, A294338(n+1)]+1` -/
def P11983414311272827946.Spec : Prop :=
  ∀ n, (P11983414311272827946.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P6976003534347473353

`eq[2, A316782(n+1)]+1`
-/

namespace A093771.P6976003534347473353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P6976003534347473353

namespace A093771

/-- `eq[2, A316782(n+1)]+1` -/
def P6976003534347473353.Spec : Prop :=
  ∀ n, (P6976003534347473353.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P12800063491598932165

`eq[2, A316789(n+1)]+1`
-/

namespace A093771.P12800063491598932165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P12800063491598932165

namespace A093771

/-- `eq[2, A316789(n+1)]+1` -/
def P12800063491598932165.Spec : Prop :=
  ∀ n, (P12800063491598932165.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P12011186620459950178

`eq[2, A316790(n+1)]+1`
-/

namespace A093771.P12011186620459950178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093771.P12011186620459950178

namespace A093771

/-- `eq[2, A316790(n+1)]+1` -/
def P12011186620459950178.Spec : Prop :=
  ∀ n, (P12011186620459950178.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P11101900683584620366

`lt[1, val(A295931(n+1)+1, 2)]+1`
-/

namespace A093771.P11101900683584620366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295931 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093771.P11101900683584620366

namespace A093771

/-- `lt[1, val(A295931(n+1)+1, 2)]+1` -/
def P11101900683584620366.Spec : Prop :=
  ∀ n, (P11101900683584620366.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P6566217221674543937

`eq[0, A007423(A253641(n))]`
-/

namespace A093771.P6566217221674543937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093771.P6566217221674543937

namespace A093771

/-- `eq[0, A007423(A253641(n))]` -/
def P6566217221674543937.Spec : Prop :=
  ∀ n, (P6566217221674543937.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P4943577181145884223

`eq[2, A089723(A028310(n))]`
-/

namespace A093771.P4943577181145884223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093771.P4943577181145884223

namespace A093771

/-- `eq[2, A089723(A028310(n))]` -/
def P4943577181145884223.Spec : Prop :=
  ∀ n, (P4943577181145884223.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P16196759758636667770

`lt[A316789(n+1), A295931(n+1)]+1`
-/

namespace A093771.P16196759758636667770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093771.P16196759758636667770

namespace A093771

/-- `lt[A316789(n+1), A295931(n+1)]+1` -/
def P16196759758636667770.Spec : Prop :=
  ∀ n, (P16196759758636667770.a n : ℤ) = A093771 (n + 1)

end A093771

/-! ## A093771.P406399627669512444

`eq[A008683(A253641(n)), A057428(n)]`
-/

namespace A093771.P406399627669512444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A253641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093771.P406399627669512444

namespace A093771

/-- `eq[A008683(A253641(n)), A057428(n)]` -/
def P406399627669512444.Spec : Prop :=
  ∀ n, (P406399627669512444.a n : ℤ) = A093771 (n + 1)

end A093771

/-!
# A093772: a(n) is the smallest integer at which the value of the "truncated Mertens function" (= A088004) equals n.

The programs for A093772, there is no canonical definition to state claims against.
-/

/-! ## A093772.P976671591971678110

`record[A055615(A117332(A117332(n+1)))]`
-/

namespace A093772.P976671591971678110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A117332 (A117332 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093772.P976671591971678110

/-! ## A093772.P9264928426042357782

`record[A055615(n+1)/A008835(A050049(n+1))]`
-/

namespace A093772.P9264928426042357782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A008835 (A050049 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093772.P9264928426042357782

/-! ## A093772.P12219619823969163197

`A030229(lt[A301337(n+1), A197409(n+1)])`
-/

namespace A093772.P12219619823969163197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093772.P12219619823969163197

/-! ## A093772.P13519524166706526756

`record[A071031(A329440(n+1))*A329445(n+1)]`
-/

namespace A093772.P13519524166706526756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071031 (A329440 (n + 1)).toNat * A329445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093772.P13519524166706526756

/-!
# A093773: a(n) is the smallest integer at which the value of the "truncated Mertens function" (= A088004) equals the n-th prime number.

The programs for A093773, there is no canonical definition to state claims against.
-/

/-! ## A093773.P1581441366004656461

`A093772(A000040(n+1))`
-/

namespace A093773.P1581441366004656461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093772 (A000040 (n + 1)).toNat

end

end A093773.P1581441366004656461

/-! ## A093773.P10019893097220052269

`A093772(p?[comp[n²]])`
-/

namespace A093773.P10019893097220052269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093772 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A093773.P10019893097220052269

/-! ## A093773.P8326337299698727179

`A093772(Δ[A007504(n)])`
-/

namespace A093773.P8326337299698727179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093772 (f1 (n + 1) - f1 n).toNat

end

end A093773.P8326337299698727179

/-! ## A093773.P15718017349502325070

`A093772(A030291(n+1))`
-/

namespace A093773.P15718017349502325070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093772 (A030291 (n + 1)).toNat

end

end A093773.P15718017349502325070

/-! ## A093773.P3051232590801316723

`A093772(A030475(n+1))`
-/

namespace A093773.P3051232590801316723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093772 (A030475 (n + 1)).toNat

end

end A093773.P3051232590801316723

/-!
# A093774: Smallest integers at which the value of truncated Mertens function equals n!.

The programs for A093774, there is no canonical definition to state claims against.
-/

/-! ## A093774.P9734730449428012457

`A385818(or(A042982(2*n+3), A371496(n)))`
-/

namespace A093774.P9734730449428012457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385818 (Int.lor (A042982 (2 * n + 3)) (A371496 n)).toNat

end

end A093774.P9734730449428012457

/-!
# A093776: Smallest integer at which the value of truncated Mertens function equals 2^n.

The programs for A093776, there is no canonical definition to state claims against.
-/

/-! ## A093776.P8557195440043174104

`A162716(A129284(n))`
-/

namespace A093776.P8557195440043174104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162716 (A129284 n).toNat

end

end A093776.P8557195440043174104

/-! ## A093776.P11586948624155202900

`filter[A025248(n+1), A011688(#)]`
-/

namespace A093776.P11586948624155202900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011688 (f1 j).toNat = 1) n)

end

end A093776.P11586948624155202900

/-!
# A093777: a(n) is the smallest prime which, if used to start a Euclid-Mullin sequence (like A000945), the resulting sequence contains the n consecutive primes 2, 3, ..., prime(n).

The programs for A093777, there is no canonical definition to state claims against.
-/

/-! ## A093777.P5472827267047130474

`A315626(2*a(n-1))+1` with `a(0)=2, a(1)=2`
-/

namespace A093777.P5472827267047130474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A315626 (2 * a (n - 1)).toNat + 1

end

end A093777.P5472827267047130474

/-!
# A093779: a(n) is the position of prime 3 in the Euclid-Mullin (EM) sequence of type A000945, if it were started with prime(n) instead of 2.

The programs for A093779, there is no canonical definition to state claims against.
-/

/-! ## A093779.P1572852495552002118

`A039701(n+1)+A001221(A146523(n))`
-/

namespace A093779.P1572852495552002118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (n + 1) + A001221 (A146523 n).toNat

end

end A093779.P1572852495552002118

/-! ## A093779.P14361791032826843899

`A179758(n+1)+A153284(A007455(n))`
-/

namespace A093779.P14361791032826843899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (n + 1) + A153284 (A007455 n).toNat

end

end A093779.P14361791032826843899

/-! ## A093779.P869698952339709381

`A179758(n+1)+A176040(A060818(n))`
-/

namespace A093779.P869698952339709381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (n + 1) + A176040 (A060818 n).toNat

end

end A093779.P869698952339709381

/-! ## A093779.P11517711923579092097

`A179758(n+1)+A176040(A128014(n))`
-/

namespace A093779.P11517711923579092097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179758 (n + 1) + A176040 (A128014 n).toNat

end

end A093779.P11517711923579092097

/-! ## A093779.P8574277617517719502

`A059126(A225367(n+1)-A039701(n+1))`
-/

namespace A093779.P8574277617517719502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A225367 (n + 1) - A039701 (n + 1)).toNat

end

end A093779.P8574277617517719502

/-!
# A093780: a(n) is the smallest prime used as initial value for Euclid-Mullin (EM) sequence (of variant A000945), such that in the corresponding EM-sequence the p=3 prime arises at the n-th position.

The programs for A093780, there is no canonical definition to state claims against.
-/

/-! ## A093780.P15607722000260788792

`p?[A069768(record[A321449(n)])]`
-/

namespace A093780.P15607722000260788792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093780.P15607722000260788792

/-! ## A093780.P5783186901835655424

`p?[∑[A142156(A001177(n+1))]]`
-/

namespace A093780.P5783186901835655424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142156 (A001177 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093780.P5783186901835655424

/-!
# A093782: a(n) is the smallest initial value (a prime) for the Euclid-Mullin (EM) sequence in which the p=5 prime emerges as n-th term, i.e., arises at the n-th position.

The programs for A093782, there is no canonical definition to state claims against.
-/

/-! ## A093782.P500765963401011189

`A212493(A192914(n)+1)`
-/

namespace A093782.P500765963401011189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212493 (A192914 n + 1).toNat

end

end A093782.P500765963401011189

/-!
# A093783: Sum of digits of n in Roman numeral representation.

The programs for A093783, there is no canonical definition to state claims against.
-/

/-! ## A093783.P11598982683909353830

`∑{digits}[A061493(n+1), A003587(#)]`
-/

namespace A093783.P11598982683909353830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003587 x).sum

end

end A093783.P11598982683909353830

/-! ## A093783.P17664908321430949259

`A010139(A153056(n))+n`
-/

namespace A093783.P17664908321430949259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 (A153056 n).toNat + (n : ℤ)

end

end A093783.P17664908321430949259

/-! ## A093783.P11592351348676508711

`A330025(A005897(n+2))+2+n`
-/

namespace A093783.P11592351348676508711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A005897 (n + 2)).toNat + 2 + (n : ℤ)

end

end A093783.P11592351348676508711

/-! ## A093783.P12371557004913535756

`A127391(A339087(2*n+3))+n+1`
-/

namespace A093783.P12371557004913535756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 (A339087 (2 * n + 3)).toNat + (n + 1 : ℤ)

end

end A093783.P12371557004913535756

/-! ## A093783.P8142138420063087176

`gcd(3, A295665(C(n+1, 3)+n²+2))+n`
-/

namespace A093783.P8142138420063087176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A295665 (Nat.choose (n + 1) 3 + n ^ 2 + 2)) + n

end

end A093783.P8142138420063087176

/-!
# A093785: Numbers that are divisible by every digit in their Roman numeral representation.

The programs for A093785, there is no canonical definition to state claims against.
-/

/-! ## A093785.P7719514164313790999

`10*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A093785.P7719514164313790999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  10 * a (n - 4)

end

end A093785.P7719514164313790999

/-! ## A093785.P5073003207313062888

`a(n-1)+a(n-and(2, n)!)` with `a(0)=1`
-/

namespace A093785.P5073003207313062888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - Nat.factorial (Nat.land 2 n))

end

end A093785.P5073003207313062888

/-! ## A093785.P16298039622202656132

`a(n-sqrt(2^and(2, n)))+a(n-1)` with `a(0)=1`
-/

namespace A093785.P16298039622202656132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 ^ Nat.land 2 n : ℝ))).toNat + a (n - 1)

end

end A093785.P16298039622202656132

/-! ## A093785.P16250937207943251674

`a(n-1)+a(n-gcd(2, ∑[n+1]))` with `a(0)=1`
-/

namespace A093785.P16250937207943251674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093785.P16250937207943251674

/-! ## A093785.P7726836267827244830

`a(n-1)+a(n-a(and(2, n)/2))` with `a(0)=1`
-/

namespace A093785.P7726836267827244830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - a (SequenceMachineLib.roundAway ((Nat.land 2 n : ℚ) / 2)).toNat)

end

end A093785.P7726836267827244830

/-!
# A093786: Hook products of all partitions of 8.

The programs for A093786, there is no canonical definition to state claims against.
-/

/-! ## A093786.P651483712346946815

`A093784(n+45)`
-/

namespace A093786.P651483712346946815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (n + 45)

end

end A093786.P651483712346946815

/-!
# A093787: Hook products of all partitions of 9.

The programs for A093787, there is no canonical definition to state claims against.
-/

/-! ## A093787.P15561164018967416997

`A093784(n+67)`
-/

namespace A093787.P15561164018967416997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (n + 67)

end

end A093787.P15561164018967416997

/-! ## A093787.P9889976211566261602

`A000010(A349178(p?[floor(n/2)]))`
-/

namespace A093787.P9889976211566261602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A349178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093787.P9889976211566261602

/-!
# A093788: The Roman numerals, with "i" replaced by "1", "v" replaced by "5", "x" replaced by 10, etc.

The programs for A093788, there is no canonical definition to state claims against.
-/

/-! ## A093788.P10415432080110633712

`A056967(A180105(n+1))`
-/

namespace A093788.P10415432080110633712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A180105 (n + 1)).toNat

end

end A093788.P10415432080110633712

/-! ## A093788.P5844863659546062769

`A222229(A061493(n+1)%A090058(2*(n+2)))`
-/

namespace A093788.P5844863659546062769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (Int.tmod (A061493 (n + 1)) (A090058 (2 * (n + 2)))).toNat

end

end A093788.P5844863659546062769

/-! ## A093788.P4748246246105148326

`A222229(A061493(n+1))*A327401(A027423(n))`
-/

namespace A093788.P4748246246105148326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A061493 (n + 1)).toNat * A327401 (A027423 n).toNat

end

end A093788.P4748246246105148326

/-! ## A093788.P2068179412113844827

`A222229(A061493(n+1))+A092197(A180105(n+1))`
-/

namespace A093788.P2068179412113844827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A061493 (n + 1)).toNat + A092197 (A180105 (n + 1)).toNat

end

end A093788.P2068179412113844827

/-!
# A093789: Hook products of all partitions of 10.

The programs for A093789, there is no canonical definition to state claims against.
-/

/-! ## A093789.P6188252360814525032

`A093784(n+97)`
-/

namespace A093789.P6188252360814525032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (n + 97)

end

end A093789.P6188252360814525032

/-!
# A093792: Hook products of all partitions of 13.

The programs for A093792, there is no canonical definition to state claims against.
-/

/-! ## A093792.P12673150594058060058

`A093784(272+n)`
-/

namespace A093792.P12673150594058060058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093784 (272 + n)

end

end A093792.P12673150594058060058

/-!
# A093793: Numbers n such that 5^n+4^(n-1) is prime.

The programs for A093793, there is no canonical definition to state claims against.
-/

/-! ## A093793.P5554079211203661340

`A290979(A135919(n+1))`
-/

namespace A093793.P5554079211203661340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290979 (A135919 (n + 1)).toNat

end

end A093793.P5554079211203661340

/-!
# A093794: Numbers n such that 8^n+7^(n-1) is prime.

The programs for A093794, there is no canonical definition to state claims against.
-/

/-! ## A093794.P7800444379454098950

`∑[record[A246928(A215928(n))]]`
-/

namespace A093794.P7800444379454098950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (A215928 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093794.P7800444379454098950

/-! ## A093794.P10551981080372143260

`∑[record[A246928(A000129(n+1))]]`
-/

namespace A093794.P10551981080372143260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (A000129 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093794.P10551981080372143260

/-!
# A093795: Numbers k such that 9^k + 8^(k-1) is prime.

The programs for A093795, there is no canonical definition to state claims against.
-/

/-! ## A093795.P15834400309205331269

`A304740(A165428(n+1))+n`
-/

namespace A093795.P15834400309205331269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304740 (A165428 (n + 1)).toNat + (n : ℤ)

end

end A093795.P15834400309205331269

/-!
# A093797: In the sequence of prime powers (A000961), replace perfect powers with their repeating factors.

The programs for A093797, there is no canonical definition to state claims against.
-/

/-! ## A093797.P3831041842419263347

`A025473(∑[A011558(A036885(n+1))])`
-/

namespace A093797.P3831041842419263347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A036885 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093797.P3831041842419263347

/-!
# A093798: 

The programs for A093798, there is no canonical definition to state claims against.
-/

/-! ## A093798.P3011180495191507975

`A097256(2*A020522(n))`
-/

namespace A093798.P3011180495191507975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 (2 * A020522 n).toNat

end

end A093798.P3011180495191507975

/-!
# A093799: a(1) = 1; a(n+1) is the smallest triangular number such that the greatest common divisor gcd(a(n+1), a(n)) is a triangular number itself.

The programs for A093799, there is no canonical definition to state claims against.
-/

/-! ## A093799.P1553075870164821788

`A105340(∑[A304720(4*n+5)]%A129603(3*n+4))`
-/

namespace A093799.P1553075870164821788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304720 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105340 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A129603 (3 * n + 4))).toNat

end

end A093799.P1553075870164821788

/-! ## A093799.P13126093792389845249

`A000217(∑[A304720(4*n+5)]^A059117(n)!)`
-/

namespace A093799.P13126093792389845249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304720 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.factorial (A059117 n).toNat).toNat

end

end A093799.P13126093792389845249

/-! ## A093799.P7429889797357015176

`eq[A132813(n), A365381(A119323(n+1))]`
-/

namespace A093799.P7429889797357015176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365381 (A119323 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093799.P7429889797357015176

/-! ## A093799.P14636296042057829461

`A057944(∑[∑[A002823(n+3)%8]])`
-/

namespace A093799.P14636296042057829461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002823 (n + 3)) 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093799.P14636296042057829461

/-! ## A093799.P7257958988451709579

`A057944(or(A005449(n), A318403(n)))`
-/

namespace A093799.P7257958988451709579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (Int.lor (A005449 n) (A318403 n)).toNat

end

end A093799.P7257958988451709579

